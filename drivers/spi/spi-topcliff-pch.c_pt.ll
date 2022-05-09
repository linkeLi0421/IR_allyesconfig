; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-topcliff-pch.c_pt.bc'
source_filename = "../drivers/spi/spi-topcliff-pch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.70 = type { ptr }
%struct.pch_spi_board_data = type { ptr, i8, i32 }
%struct.pch_pd_dev_save = type { i32, [2 x ptr], ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }
%struct.pch_spi_data = type { ptr, i32, ptr, %struct.work_struct, %struct.wait_queue_head, i8, i8, %struct.spinlock, %struct.list_head, i8, i32, i8, i32, i32, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i32, %struct.pch_spi_dma_ctrl, i32, i8, i32 }
%struct.pch_spi_dma_ctrl = type { ptr, ptr, %struct.pch_dma_slave, %struct.pch_dma_slave, ptr, ptr, ptr, ptr, %struct.scatterlist, %struct.scatterlist, i32, ptr, ptr, i32, i32 }
%struct.pch_dma_slave = type { ptr, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_spi_topcliff_pch__284_1689_pch_spi_init6 = internal global ptr @pch_spi_init, section ".initcall6.init", align 4
@pch_spi_pcidev_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @pch_spi_pcidev_id, ptr @pch_spi_probe, ptr @pch_spi_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pch_spi_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@pch_spi_pd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pch_spi_pd_probe, ptr @pch_spi_pd_remove, ptr null, ptr @pch_spi_pd_suspend, ptr @pch_spi_pd_resume, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pch_spi_exit = internal global ptr @pch_spi_exit, section ".exitcall.exit", align 4
@__param_str_use_dma = internal constant [25 x i8] c"spi_topcliff_pch.use_dma\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@use_dma = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_use_dma = internal constant %struct.kernel_param { ptr @__param_str_use_dma, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @use_dma } }, section "__param", align 4
@__UNIQUE_ID_use_dmatype285 = internal constant [38 x i8] c"spi_topcliff_pch.parmtype=use_dma:int\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma286 = internal constant [85 x i8] c"spi_topcliff_pch.parm=use_dma:to use DMA for data transfers pass 1 else 0; default 1\00", section ".modinfo", align 1
@__UNIQUE_ID_file287 = internal constant [51 x i8] c"spi_topcliff_pch.file=drivers/spi/spi-topcliff-pch\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [29 x i8] c"spi_topcliff_pch.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [87 x i8] c"spi_topcliff_pch.description=Intel EG20T PCH/LAPIS Semiconductor ML7xxx IOH SPI Driver\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi_topcliff_pch\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pch_spi\00", [24 x i8] zeroinitializer }, align 32
@pch_spi_pcidev_id = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 34838, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4315, i32 32812, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4315, i32 32783, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4315, i32 34838, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pch_spi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pch_spi_suspend, ptr @pch_spi_resume, ptr @pch_spi_suspend, ptr @pch_spi_resume, ptr @pch_spi_suspend, ptr @pch_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pch_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1565, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s request_region failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pch_spi_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/spi/spi-topcliff-pch.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pch_spi_probe._entry_ptr = internal global ptr @pch_spi_probe._entry, section ".printk_index", align 4
@pch_spi_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1576, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s pci_enable_device failed\0A\00", [35 x i8] zeroinitializer }, align 32
@pch_spi_probe._entry_ptr.9 = internal global ptr @pch_spi_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pch-spi\00", [24 x i8] zeroinitializer }, align 32
@pch_spi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1583, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"platform_device_alloc failed\0A\00", [34 x i8] zeroinitializer }, align 32
@pch_spi_probe._entry_ptr.13 = internal global ptr @pch_spi_probe._entry.11, section ".printk_index", align 4
@pch_spi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1594, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"platform_device_add_data failed\0A\00", [63 x i8] zeroinitializer }, align 32
@pch_spi_probe._entry_ptr.16 = internal global ptr @pch_spi_probe._entry.14, section ".printk_index", align 4
@pch_spi_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1601, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"platform_device_add failed\0A\00", [36 x i8] zeroinitializer }, align 32
@pch_spi_probe._entry_ptr.19 = internal global ptr @pch_spi_probe._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pch_spi_remove.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 1, i8 -105, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pch_spi_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s ENTRY:pdev=%p\0A\00", [46 x i8] zeroinitializer }, align 32
@pch_spi_suspend.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 1, i8 -101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pch_spi_suspend\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s ENTRY\0A\00", [22 x i8] zeroinitializer }, align 32
@pch_spi_resume.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.23, i8 1, i8 -98, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pch_spi_resume\00", [17 x i8] zeroinitializer }, align 32
@pch_spi_pd_probe.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 1, i8 75, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pch_spi_pd_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s:debug\0A\00", [22 x i8] zeroinitializer }, align 32
@pch_spi_pd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.4, i32 1332, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"spi_alloc_master[%d] failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@pch_spi_pd_probe._entry_ptr = internal global ptr @pch_spi_pd_probe._entry, section ".printk_index", align 4
@pch_spi_pd_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.4, i32 1346, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s pci_iomap failed\0A\00", [43 x i8] zeroinitializer }, align 32
@pch_spi_pd_probe._entry_ptr.30 = internal global ptr @pch_spi_pd_probe._entry.28, section ".printk_index", align 4
@pch_spi_pd_probe.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.31, i8 1, i8 82, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[ch%d] remap_addr=%p\0A\00", [42 x i8] zeroinitializer }, align 32
@pch_spi_pd_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@pch_spi_pd_probe.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&data->work)\00", [33 x i8] zeroinitializer }, align 32
@pch_spi_pd_probe.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->wait\00", [20 x i8] zeroinitializer }, align 32
@pch_spi_pd_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.25, ptr @.str.4, i32 1376, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s fail(retval=%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@pch_spi_pd_probe._entry_ptr.39 = internal global ptr @pch_spi_pd_probe._entry.37, section ".printk_index", align 4
@pch_spi_pd_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.25, ptr @.str.4, i32 1384, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s request_irq failed\0A\00", [41 x i8] zeroinitializer }, align 32
@pch_spi_pd_probe._entry_ptr.42 = internal global ptr @pch_spi_pd_probe._entry.40, section ".printk_index", align 4
@pch_spi_pd_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.25, ptr @.str.4, i32 1392, ptr @.str.45, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Use DMA for data transfers\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pch_spi_pd_probe._entry_ptr.46 = internal global ptr @pch_spi_pd_probe._entry.43, section ".printk_index", align 4
@pch_spi_pd_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.25, ptr @.str.4, i32 1401, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s spi_register_master FAILED\0A\00", [33 x i8] zeroinitializer }, align 32
@pch_spi_pd_probe._entry_ptr.49 = internal global ptr @pch_spi_pd_probe._entry.47, section ".printk_index", align 4
@pch_spi_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 468, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s Tx and Rx buffer NULL\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pch_spi_transfer\00", [47 x i8] zeroinitializer }, align 32
@pch_spi_transfer._entry_ptr = internal global ptr @pch_spi_transfer._entry, section ".printk_index", align 4
@pch_spi_transfer._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.4, i32 475, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s Transfer length invalid\0A\00", [36 x i8] zeroinitializer }, align 32
@pch_spi_transfer._entry_ptr.54 = internal global ptr @pch_spi_transfer._entry.52, section ".printk_index", align 4
@pch_spi_transfer.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.4, ptr @.str.55, i8 0, i8 120, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s Tx/Rx buffer valid. Transfer length valid\0A\00", [50 x i8] zeroinitializer }, align 32
@pch_spi_transfer._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.51, ptr @.str.4, i32 488, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s status = STATUS_EXITING.\0A\00", [35 x i8] zeroinitializer }, align 32
@pch_spi_transfer._entry_ptr.58 = internal global ptr @pch_spi_transfer._entry.56, section ".printk_index", align 4
@pch_spi_transfer._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.51, ptr @.str.4, i32 495, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s suspend; returning EINVAL\0A\00", [34 x i8] zeroinitializer }, align 32
@pch_spi_transfer._entry_ptr.61 = internal global ptr @pch_spi_transfer._entry.59, section ".printk_index", align 4
@pch_spi_transfer.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.4, ptr @.str.62, i8 0, i8 125, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - pmsg->status =%d\0A\00", [41 x i8] zeroinitializer }, align 32
@pch_spi_transfer.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.4, ptr @.str.63, i8 0, i8 127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - Invoked list_add_tail\0A\00", [36 x i8] zeroinitializer }, align 32
@pch_spi_transfer.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.4, ptr @.str.64, i8 0, i8 -128, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - Invoked queue work\0A\00", [39 x i8] zeroinitializer }, align 32
@pch_spi_transfer.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.4, ptr @.str.65, i8 0, i8 -127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s RETURN=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@pch_spi_transfer.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.4, ptr @.str.65, i8 0, i8 -126, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@pch_spi_process_messages.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.4, ptr @.str.67, i8 1, i8 27, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pch_spi_process_messages\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s data initialized\0A\00", [43 x i8] zeroinitializer }, align 32
@pch_spi_process_messages.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.4, ptr @.str.68, i8 1, i8 28, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s suspend/remove initiated, flushing queue\0A\00", [51 x i8] zeroinitializer }, align 32
@pch_spi_process_messages.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.4, ptr @.str.69, i8 1, i8 33, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s Set data->bcurrent_msg_processing= true\0A\00", [52 x i8] zeroinitializer }, align 32
@pch_spi_process_messages.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.4, ptr @.str.70, i8 1, i8 41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s :Getting 1st transfer message\0A\00", [62 x i8] zeroinitializer }, align 32
@pch_spi_process_messages.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.4, ptr @.str.71, i8 1, i8 42, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s :Getting next transfer message\0A\00", [61 x i8] zeroinitializer }, align 32
@pch_spi_process_messages.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.4, ptr @.str.72, i8 1, i8 53, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:data->current_msg->actual_length=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@pch_spi_select_chip.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.4, ptr @.str.74, i8 0, i8 -124, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pch_spi_select_chip\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s : different slave\0A\00", [42 x i8] zeroinitializer }, align 32
@pch_spi_select_chip.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.4, ptr @.str.75, i8 0, i8 -121, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s :Invoking pch_spi_setup_transfer\0A\00", [59 x i8] zeroinitializer }, align 32
@pch_spi_setup_transfer.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.4, ptr @.str.77, i8 0, i8 105, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pch_spi_setup_transfer\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s SPBRR content =%x setting baud rate=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@pch_spi_request_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 878, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ERROR: dma_request_channel FAILS(Tx)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pch_spi_request_dma\00", [44 x i8] zeroinitializer }, align 32
@pch_spi_request_dma._entry_ptr = internal global ptr @pch_spi_request_dma._entry, section ".printk_index", align 4
@pch_spi_request_dma._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.4, i32 893, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ERROR: dma_request_channel FAILS(Rx)\0A\00", [58 x i8] zeroinitializer }, align 32
@pch_spi_request_dma._entry_ptr.82 = internal global ptr @pch_spi_request_dma._entry.80, section ".printk_index", align 4
@pch_spi_handle_dma.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.4, ptr @.str.84, i8 0, i8 -22, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pch_spi_handle_dma\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s:setting baud rate\0A\00", [42 x i8] zeroinitializer }, align 32
@pch_spi_handle_dma.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.4, ptr @.str.85, i8 0, i8 -19, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s:set bits per word\0A\00", [42 x i8] zeroinitializer }, align 32
@pch_spi_handle_dma.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.4, ptr @.str.86, i8 0, i8 -8, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s num=%d size=%d rem=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@pch_spi_handle_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.83, ptr @.str.4, i32 1042, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:dmaengine_prep_slave_sg Failed\0A\00", [61 x i8] zeroinitializer }, align 32
@pch_spi_handle_dma._entry_ptr = internal global ptr @pch_spi_handle_dma._entry, section ".printk_index", align 4
@pch_spi_handle_dma._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.83, ptr @.str.4, i32 1104, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pch_spi_handle_dma._entry_ptr.89 = internal global ptr @pch_spi_handle_dma._entry.88, section ".printk_index", align 4
@pch_spi_handle_dma.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.4, ptr @.str.90, i8 1, i8 22, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:Pulling down SSN low - writing 0x2 to SSNXCR\0A\00", [47 x i8] zeroinitializer }, align 32
@pch_spi_start_transfer.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.4, ptr @.str.92, i8 0, i8 -59, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pch_spi_start_transfer\00", [41 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:waiting for transfer to get over\0A\00", [59 x i8] zeroinitializer }, align 32
@pch_spi_start_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.4, i32 794, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s wait-event timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@pch_spi_start_transfer._entry_ptr = internal global ptr @pch_spi_start_transfer._entry, section ".printk_index", align 4
@pch_spi_set_tx.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.4, ptr @.str.84, i8 0, i8 -118, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pch_spi_set_tx\00", [17 x i8] zeroinitializer }, align 32
@pch_spi_set_tx.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.4, ptr @.str.85, i8 0, i8 -116, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@pch_spi_set_tx.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.4, ptr @.str.95, i8 0, i8 -101, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\0A%s:Pulling down SSN low - writing 0x2 to SSNXCR\0A\00", [46 x i8] zeroinitializer }, align 32
@pch_spi_set_ir.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.4, ptr @.str.92, i8 0, i8 -79, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pch_spi_set_ir\00", [17 x i8] zeroinitializer }, align 32
@pch_spi_nomore_transfer.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.4, ptr @.str.98, i8 0, i8 -96, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pch_spi_nomore_transfer\00", [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s called\0A\00", [21 x i8] zeroinitializer }, align 32
@pch_spi_nomore_transfer.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.4, ptr @.str.99, i8 0, i8 -95, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:Invoking callback of SPI core\0A\00", [62 x i8] zeroinitializer }, align 32
@pch_spi_nomore_transfer.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.4, ptr @.str.100, i8 0, i8 -93, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:data->bcurrent_msg_processing = false\0A\00", [54 x i8] zeroinitializer }, align 32
@pch_spi_nomore_transfer.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.4, ptr @.str.101, i8 0, i8 -89, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s:Invoke queue_work\0A\00", [42 x i8] zeroinitializer }, align 32
@pch_spi_nomore_transfer.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.4, ptr @.str.68, i8 0, i8 -88, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@pch_spi_get_resources.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.4, ptr @.str.23, i8 1, i8 61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pch_spi_get_resources\00", [42 x i8] zeroinitializer }, align 32
@pch_spi_get_resources.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.4, ptr @.str.103, i8 1, i8 62, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s pch_spi_reset invoked successfully\0A\00", [57 x i8] zeroinitializer }, align 32
@pch_spi_get_resources.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.4, ptr @.str.104, i8 1, i8 63, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s data->irq_reg_sts=true\0A\00", [37 x i8] zeroinitializer }, align 32
@pch_spi_handler.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.4, ptr @.str.106, i8 0, i8 86, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pch_spi_handler\00", [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s returning due to suspend\0A\00", [35 x i8] zeroinitializer }, align 32
@pch_spi_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.4, i32 357, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s Over run error\0A\00", [45 x i8] zeroinitializer }, align 32
@pch_spi_handler._entry_ptr = internal global ptr @pch_spi_handler._entry, section ".printk_index", align 4
@pch_spi_handler.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.4, ptr @.str.108, i8 0, i8 94, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s EXIT return value=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@pch_spi_free_resources.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.4, ptr @.str.23, i8 1, i8 59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pch_spi_free_resources\00", [41 x i8] zeroinitializer }, align 32
@pch_spi_pd_remove.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.4, ptr @.str.111, i8 1, i8 101, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pch_spi_pd_remove\00", [46 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s:[ch%d] irq=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@pch_spi_pd_remove.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.4, ptr @.str.112, i8 1, i8 104, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s :queue not empty\0A\00", [43 x i8] zeroinitializer }, align 32
@pch_spi_pd_suspend.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.4, ptr @.str.23, i8 1, i8 111, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pch_spi_pd_suspend\00", [45 x i8] zeroinitializer }, align 32
@pch_spi_pd_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.113, ptr @.str.4, i32 1473, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s pci_get_drvdata returned NULL\0A\00", [62 x i8] zeroinitializer }, align 32
@pch_spi_pd_suspend._entry_ptr = internal global ptr @pch_spi_pd_suspend._entry, section ".printk_index", align 4
@pch_spi_pd_suspend.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.4, ptr @.str.115, i8 1, i8 117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s free_irq invoked successfully.\0A\00", [61 x i8] zeroinitializer }, align 32
@pch_spi_pd_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.116, ptr @.str.4, i32 1509, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pch_spi_pd_resume\00", [46 x i8] zeroinitializer }, align 32
@pch_spi_pd_resume._entry_ptr = internal global ptr @pch_spi_pd_resume._entry, section ".printk_index", align 4
@pch_spi_pd_resume._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.116, ptr @.str.4, i32 1519, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pch_spi_pd_resume._entry_ptr.118 = internal global ptr @pch_spi_pd_resume._entry.117, section ".printk_index", align 4
@___asan_gen_.119 = private unnamed_addr constant [22 x i8] c"pch_spi_pcidev_driver\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1666, i32 26 }
@___asan_gen_.122 = private unnamed_addr constant [18 x i8] c"pch_spi_pd_driver\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1535, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant [8 x i8] c"use_dma\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 103, i32 12 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1681, i32 8 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1667, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant [18 x i8] c"pch_spi_pcidev_id\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 208, i32 35 }
@___asan_gen_.137 = private unnamed_addr constant [15 x i8] c"pch_spi_pm_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1664, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1565, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1576, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1581, i32 34 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1583, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1593, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1601, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1630, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1645, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1656, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1326, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1331, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1346, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1352, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1370, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1371, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1372, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1376, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1383, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1392, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1400, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 467, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 474, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 480, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 488, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 495, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 502, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 510, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 513, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 518, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1132, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1137, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1157, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1186, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1193, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1235, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 531, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 540, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 421, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 877, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 892, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 938, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 948, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 994, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1041, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1103, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1113, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 787, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 793, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 555, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 621, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 708, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 640, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 646, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 654, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 669, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1270, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1274, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1277, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 346, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 357, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 377, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1262, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1427, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1439, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1469, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1472, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1494, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1508, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.474 = private constant [34 x i8] c"../drivers/spi/spi-topcliff-pch.c\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1518, i32 4 }
@llvm.compiler.used = appending global [152 x ptr] [ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_license288, ptr @__UNIQUE_ID_use_dma286, ptr @__UNIQUE_ID_use_dmatype285, ptr @__exitcall_pch_spi_exit, ptr @__initcall__kmod_spi_topcliff_pch__284_1689_pch_spi_init6, ptr @__param_use_dma, ptr @pch_spi_exit, ptr @pch_spi_handle_dma._entry, ptr @pch_spi_handle_dma._entry.88, ptr @pch_spi_handle_dma._entry_ptr, ptr @pch_spi_handle_dma._entry_ptr.89, ptr @pch_spi_handler._entry, ptr @pch_spi_handler._entry_ptr, ptr @pch_spi_pd_probe._entry, ptr @pch_spi_pd_probe._entry.28, ptr @pch_spi_pd_probe._entry.37, ptr @pch_spi_pd_probe._entry.40, ptr @pch_spi_pd_probe._entry.43, ptr @pch_spi_pd_probe._entry.47, ptr @pch_spi_pd_probe._entry_ptr, ptr @pch_spi_pd_probe._entry_ptr.30, ptr @pch_spi_pd_probe._entry_ptr.39, ptr @pch_spi_pd_probe._entry_ptr.42, ptr @pch_spi_pd_probe._entry_ptr.46, ptr @pch_spi_pd_probe._entry_ptr.49, ptr @pch_spi_pd_resume._entry, ptr @pch_spi_pd_resume._entry.117, ptr @pch_spi_pd_resume._entry_ptr, ptr @pch_spi_pd_resume._entry_ptr.118, ptr @pch_spi_pd_suspend._entry, ptr @pch_spi_pd_suspend._entry_ptr, ptr @pch_spi_probe._entry, ptr @pch_spi_probe._entry.11, ptr @pch_spi_probe._entry.14, ptr @pch_spi_probe._entry.17, ptr @pch_spi_probe._entry.7, ptr @pch_spi_probe._entry_ptr, ptr @pch_spi_probe._entry_ptr.13, ptr @pch_spi_probe._entry_ptr.16, ptr @pch_spi_probe._entry_ptr.19, ptr @pch_spi_probe._entry_ptr.9, ptr @pch_spi_request_dma._entry, ptr @pch_spi_request_dma._entry.80, ptr @pch_spi_request_dma._entry_ptr, ptr @pch_spi_request_dma._entry_ptr.82, ptr @pch_spi_start_transfer._entry, ptr @pch_spi_start_transfer._entry_ptr, ptr @pch_spi_transfer._entry, ptr @pch_spi_transfer._entry.52, ptr @pch_spi_transfer._entry.56, ptr @pch_spi_transfer._entry.59, ptr @pch_spi_transfer._entry_ptr, ptr @pch_spi_transfer._entry_ptr.54, ptr @pch_spi_transfer._entry_ptr.58, ptr @pch_spi_transfer._entry_ptr.61, ptr @pch_spi_pcidev_driver, ptr @pch_spi_pd_driver, ptr @use_dma, ptr @.str, ptr @.str.1, ptr @pch_spi_pcidev_id, ptr @pch_spi_pm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @pch_spi_pd_probe.__key, ptr @.str.32, ptr @pch_spi_pd_probe.__key.33, ptr @.str.34, ptr @pch_spi_pd_probe.__key.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116], section "llvm.metadata"
@0 = internal global [119 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_pcidev_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_pd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_dma to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_pcidev_id to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_pd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_pd_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_pd_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_pd_probe.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_pd_probe.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_pd_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_pd_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_pd_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_pd_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_transfer._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_transfer._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_transfer._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_request_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_request_dma._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_handle_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_handle_dma._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_start_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_pd_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_pd_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_spi_pd_resume._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_spi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pch_spi_pd_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @pch_spi_pcidev_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @pch_spi_pd_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pch_spi_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @pch_spi_pcidev_driver) #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @pch_spi_pd_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_spi_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i95 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #12
  %tobool3.not = icmp eq ptr %call7.i.i95, null
  br i1 %tobool3.not, label %if.end.err_no_mem_crit_edge, label %if.end5

if.end.err_no_mem_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_no_mem

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #13
  br label %pci_request_regions

if.end9:                                          ; preds = %if.end5
  %2 = ptrtoint ptr %call7.i.i95 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %call7.i.i95, align 8
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %num = getelementptr inbounds %struct.pch_spi_board_data, ptr %call7.i.i95, i32 0, i32 2
  %5 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num, align 8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %call7.i.i, align 8
  %board_dat13 = getelementptr inbounds %struct.pch_pd_dev_save, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %board_dat13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i95, ptr %board_dat13, align 4
  %call14 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond.preheader, label %do.end19

for.cond.preheader:                               ; preds = %if.end9
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp104 = icmp sgt i32 %9, 0
  br i1 %cmp104, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br label %for.body

do.end19:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3) #13
  br label %pci_enable_device

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call23 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.10, i32 noundef %i.0105) #9
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end28, label %if.end30

do.end28:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.12) #13
  br label %err_platform_device

if.end30:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.pch_pd_dev_save, ptr %call7.i.i, i32 0, i32 1, i32 %i.0105
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call23, ptr %arrayidx, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %call23, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev31, ptr %parent, align 8
  %call33 = tail call i32 @platform_device_add_data(ptr noundef nonnull %call23, ptr noundef nonnull %call7.i.i95, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.15) #13
  tail call void @platform_device_put(ptr noundef nonnull %call23) #9
  br label %err_platform_device

if.end40:                                         ; preds = %if.end30
  %call41 = tail call i32 @platform_device_add(ptr noundef nonnull %call23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %for.inc, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.18) #13
  tail call void @platform_device_put(ptr noundef nonnull %call23) #9
  br label %err_platform_device

for.inc:                                          ; preds = %if.end40
  %inc = add nuw nsw i32 %i.0105, 1
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num, align 8
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_platform_device:                              ; preds = %do.end46, %do.end38, %do.end28
  %retval1.0 = phi i32 [ %call33, %do.end38 ], [ %call41, %do.end46 ], [ -12, %do.end28 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0105)
  %cmp49107.not = icmp eq i32 %i.0105, 0
  br i1 %cmp49107.not, label %err_platform_device.while.end_crit_edge, label %err_platform_device.while.body_crit_edge

err_platform_device.while.body_crit_edge:         ; preds = %err_platform_device
  br label %while.body

err_platform_device.while.end_crit_edge:          ; preds = %err_platform_device
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_platform_device.while.body_crit_edge
  %dec108.in = phi i32 [ %dec108, %while.body.while.body_crit_edge ], [ %i.0105, %err_platform_device.while.body_crit_edge ]
  %dec108 = add nsw i32 %dec108.in, -1
  %arrayidx51 = getelementptr %struct.pch_pd_dev_save, ptr %call7.i.i, i32 0, i32 1, i32 %dec108
  %15 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx51, align 4
  tail call void @platform_device_unregister(ptr noundef %16) #9
  %cmp49 = icmp sgt i32 %dec108.in, 1
  br i1 %cmp49, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %err_platform_device.while.end_crit_edge
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  br label %pci_enable_device

pci_enable_device:                                ; preds = %while.end, %do.end19
  %retval1.1 = phi i32 [ %call14, %do.end19 ], [ %retval1.0, %while.end ]
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  br label %pci_request_regions

pci_request_regions:                              ; preds = %pci_enable_device, %do.end
  %retval1.2 = phi i32 [ %call6, %do.end ], [ %retval1.1, %pci_enable_device ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i95) #9
  br label %err_no_mem

err_no_mem:                                       ; preds = %pci_request_regions, %if.end.err_no_mem_crit_edge
  %retval1.3 = phi i32 [ %retval1.2, %pci_request_regions ], [ -12, %if.end.err_no_mem_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_no_mem, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.3, %err_no_mem ], [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_spi_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_remove.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_remove, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !290

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_remove.__UNIQUE_ID_ddebug281, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, ptr noundef %pdev) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15 = icmp sgt i32 %3, 0
  br i1 %cmp15, label %do.end.for.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pch_pd_dev_save, ptr %1, i32 0, i32 1, i32 %i.016
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @platform_device_unregister(ptr noundef %5) #9
  %inc = add nuw nsw i32 %i.016, 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  %board_dat = getelementptr inbounds %struct.pch_pd_dev_save, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %board_dat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %board_dat, align 4
  tail call void @kfree(ptr noundef %9) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_spi_suspend(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_suspend.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_suspend, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !290

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_suspend.__UNIQUE_ID_ddebug282, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %board_dat = getelementptr inbounds %struct.pch_pd_dev_save, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %board_dat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board_dat, align 4
  %suspend_sts = getelementptr inbounds %struct.pch_spi_board_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %suspend_sts to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %suspend_sts, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_spi_resume(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_resume.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_resume, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !290

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_resume.__UNIQUE_ID_ddebug283, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %board_dat = getelementptr inbounds %struct.pch_pd_dev_save, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %board_dat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board_dat, align 4
  %suspend_sts = getelementptr inbounds %struct.pch_spi_board_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %suspend_sts to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %suspend_sts, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_spi_pd_probe(ptr noundef %plat_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %plat_dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %plat_dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_pd_probe.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_pd_probe, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !290

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_pd_probe.__UNIQUE_ID_ddebug275, ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev6, i32 noundef 356, i1 noundef zeroext false) #9
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %do.end12, label %if.end14

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %id = getelementptr inbounds %struct.platform_device, ptr %plat_dev, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %5) #13
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %master16 = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %master16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %master16, align 4
  %driver_data.i.i186 = getelementptr inbounds %struct.platform_device, ptr %plat_dev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i186 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %driver_data.i.i186, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %11, i32 0, i32 47, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 8
  %id18 = getelementptr inbounds %struct.platform_device, ptr %plat_dev, i32 0, i32 1
  %14 = ptrtoint ptr %id18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id18, align 4
  %mul = shl i32 %15, 5
  %add = add i32 %mul, %13
  %io_base_addr = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %io_base_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %io_base_addr, align 4
  %17 = load ptr, ptr %1, align 4
  %call20 = tail call ptr @pci_iomap(ptr noundef %17, i32 noundef 1, i32 noundef 0) #9
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call20, ptr %7, align 4
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.25) #13
  br label %spi_controller_put.exit

if.end28:                                         ; preds = %if.end14
  %19 = ptrtoint ptr %id18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id18, align 4
  %mul30 = shl i32 %20, 5
  %add.ptr = getelementptr i8, ptr %call20, i32 %mul30
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %7, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_pd_probe.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_pd_probe, %do.end52)) #9
          to label %if.then46 [label %do.end52], !srcloc !290

if.then46:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %id18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id18, align 4
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_pd_probe.__UNIQUE_ID_ddebug276, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %23, ptr noundef %25) #9
  br label %do.end52

do.end52:                                         ; preds = %if.then46, %if.end28
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 255, ptr %num_chipselect, align 2
  %transfer = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 22
  %27 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @pch_spi_transfer, ptr %transfer, align 4
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 11, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %29 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 32896, ptr %bits_per_word_mask, align 8
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %30 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 5000000, ptr %max_speed_hz, align 8
  %board_dat53 = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 20
  %31 = ptrtoint ptr %board_dat53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %1, ptr %board_dat53, align 4
  %plat_dev54 = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 21
  %32 = ptrtoint ptr %plat_dev54 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %plat_dev, ptr %plat_dev54, align 4
  %n_curnt_chip = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 16
  %33 = ptrtoint ptr %n_curnt_chip to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %n_curnt_chip, align 4
  %status = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 9
  %34 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %status, align 4
  %35 = ptrtoint ptr %id18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id18, align 4
  %ch = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 22
  %37 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ch, align 4
  %38 = load i32, ptr @use_dma, align 4
  %use_dma = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 24
  %39 = ptrtoint ptr %use_dma to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %use_dma, align 4
  %queue = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 8
  %40 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %queue, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.32, ptr noundef nonnull @pch_spi_pd_probe.__key, i16 noundef signext 3) #9
  %work = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 3
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %42 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.34, ptr noundef nonnull @pch_spi_pd_probe.__key.33, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry65 = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %entry65 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %entry65, ptr %entry65, align 4
  %prev.i187 = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 3, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i187 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %entry65, ptr %prev.i187, align 4
  %func = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 3, i32 2
  %45 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @pch_spi_process_messages, ptr %func, align 4
  %wait = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.36, ptr noundef nonnull @pch_spi_pd_probe.__key.35) #9
  tail call fastcc void @pch_spi_get_resources(ptr noundef %1, ptr noundef %7)
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 46
  %48 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq, align 4
  %call.i188 = tail call i32 @request_threaded_irq(i32 noundef %49, ptr noundef nonnull @pch_spi_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool82.not = icmp eq i32 %call.i188, 0
  br i1 %tobool82.not, label %if.end88, label %do.end86

do.end86:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.25) #13
  br label %err_request_irq

if.end88:                                         ; preds = %do.end52
  %irq_reg_sts = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 25
  %50 = ptrtoint ptr %irq_reg_sts to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %irq_reg_sts, align 4
  %51 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %driver_data.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #9, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %56 = or i32 %55, 33554432
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %driver_data.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %56) #9, !srcloc !294
  %61 = load i32, ptr @use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool89.not = icmp eq i32 %61, 0
  br i1 %tobool89.not, label %if.end88.if.end99_crit_edge, label %do.end93

if.end88.if.end99_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

do.end93:                                         ; preds = %if.end88
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.44) #13
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %tx_buf_dma.i = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 23, i32 13
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef %tx_buf_dma.i, i32 noundef 3264, i32 noundef 0) #9
  %tx_buf_virt.i = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 23, i32 11
  %64 = ptrtoint ptr %tx_buf_virt.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i.i, ptr %tx_buf_virt.i, align 4
  %tobool.not.i = icmp ne ptr %call.i.i, null
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %rx_buf_dma.i = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 23, i32 14
  %call.i16.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev4.i, i32 noundef 4096, ptr noundef %rx_buf_dma.i, i32 noundef 3264, i32 noundef 0) #9
  %rx_buf_virt.i = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 23, i32 12
  %67 = ptrtoint ptr %rx_buf_virt.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i16.i, ptr %rx_buf_virt.i, align 4
  %tobool7.not.i = icmp ne ptr %call.i16.i, null
  %68 = select i1 %tobool7.not.i, i1 %tobool.not.i, i1 false
  br i1 %68, label %do.end93.if.end99_crit_edge, label %do.end93.err_spi_register_master_crit_edge

do.end93.err_spi_register_master_crit_edge:       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_spi_register_master

do.end93.if.end99_crit_edge:                      ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.end99:                                         ; preds = %do.end93.if.end99_crit_edge, %if.end88.if.end99_crit_edge
  %call100 = tail call i32 @spi_register_controller(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp.not = icmp eq i32 %call100, 0
  br i1 %cmp.not, label %if.end99.cleanup_crit_edge, label %do.end104

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end104:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.25) #13
  br label %err_spi_register_master

err_spi_register_master:                          ; preds = %do.end104, %do.end93.err_spi_register_master_crit_edge
  %ret.0 = phi i32 [ -12, %do.end93.err_spi_register_master_crit_edge ], [ %call100, %do.end104 ]
  %tx_buf_dma.i189 = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 23, i32 13
  %69 = ptrtoint ptr %tx_buf_dma.i189 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tx_buf_dma.i189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i190 = icmp eq i32 %70, 0
  br i1 %tobool.not.i190, label %err_spi_register_master.if.end.i_crit_edge, label %if.then.i

err_spi_register_master.if.end.i_crit_edge:       ; preds = %err_spi_register_master
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %err_spi_register_master
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %dev.i191 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %tx_buf_virt.i192 = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 23, i32 11
  %73 = ptrtoint ptr %tx_buf_virt.i192 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tx_buf_virt.i192, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i191, i32 noundef 4096, ptr noundef %74, i32 noundef %70, i32 noundef 0) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %err_spi_register_master.if.end.i_crit_edge
  %rx_buf_dma.i193 = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 23, i32 14
  %75 = ptrtoint ptr %rx_buf_dma.i193 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rx_buf_dma.i193, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool3.not.i = icmp eq i32 %76, 0
  br i1 %tobool3.not.i, label %if.end.i.pch_free_dma_buf.exit_crit_edge, label %if.then4.i

if.end.i.pch_free_dma_buf.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_free_dma_buf.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  %rx_buf_virt.i194 = getelementptr inbounds %struct.pch_spi_data, ptr %7, i32 0, i32 23, i32 12
  %79 = ptrtoint ptr %rx_buf_virt.i194 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rx_buf_virt.i194, align 4
  tail call void @dma_free_attrs(ptr noundef %dev6.i, i32 noundef 4096, ptr noundef %80, i32 noundef %76, i32 noundef 0) #9
  br label %pch_free_dma_buf.exit

pch_free_dma_buf.exit:                            ; preds = %if.then4.i, %if.end.i.pch_free_dma_buf.exit_crit_edge
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %irq108 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 46
  %83 = ptrtoint ptr %irq108 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %irq108, align 4
  %call109 = tail call ptr @free_irq(i32 noundef %84, ptr noundef %7) #9
  br label %err_request_irq

err_request_irq:                                  ; preds = %pch_free_dma_buf.exit, %do.end86
  %ret.1 = phi i32 [ %call.i188, %do.end86 ], [ %ret.0, %pch_free_dma_buf.exit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_free_resources.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_pd_probe, %pch_spi_free_resources.exit)) #9
          to label %if.then.i196 [label %pch_spi_free_resources.exit], !srcloc !290

if.then.i196:                                     ; preds = %err_request_irq
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %dev.i195 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_free_resources.__UNIQUE_ID_ddebug271, ptr noundef %dev.i195, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.109) #9
  br label %pch_spi_free_resources.exit

pch_spi_free_resources.exit:                      ; preds = %if.then.i196, %err_request_irq
  %call4.i = tail call zeroext i1 @flush_work(ptr noundef %work) #9
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %89 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %7, align 4
  tail call void @pci_iounmap(ptr noundef %88, ptr noundef %90) #9
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %pch_spi_free_resources.exit, %do.end26
  %ret.3 = phi i32 [ %ret.1, %pch_spi_free_resources.exit ], [ -12, %do.end26 ]
  tail call void @put_device(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end99.cleanup_crit_edge, %do.end12
  %retval.0 = phi i32 [ %ret.3, %spi_controller_put.exit ], [ -12, %do.end12 ], [ 0, %if.end99.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_spi_pd_remove(ptr noundef %plat_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %plat_dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %plat_dev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_pd_remove.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_pd_remove, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !290

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %plat_dev, i32 0, i32 3
  %id = getelementptr inbounds %struct.platform_device, ptr %plat_dev, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_pd_remove.__UNIQUE_ID_ddebug277, ptr noundef %dev, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.110, i32 noundef %5, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = load i32, ptr @use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %do.end.if.end9_crit_edge, label %if.then8

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %do.end
  %tx_buf_dma.i = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 23, i32 13
  %11 = ptrtoint ptr %tx_buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_buf_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.then8.if.end.i_crit_edge, label %if.then.i

if.then8.if.end.i_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %tx_buf_virt.i = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 23, i32 11
  %15 = ptrtoint ptr %tx_buf_virt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_buf_virt.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef %16, i32 noundef %12, i32 noundef 0) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then8.if.end.i_crit_edge
  %rx_buf_dma.i = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 23, i32 14
  %17 = ptrtoint ptr %rx_buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_buf_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool3.not.i = icmp eq i32 %18, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end9_crit_edge, label %if.then4.i

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %rx_buf_virt.i = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 23, i32 12
  %21 = ptrtoint ptr %rx_buf_virt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_buf_virt.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev6.i, i32 noundef 4096, ptr noundef %22, i32 noundef %18, i32 noundef 0) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then4.i, %if.end.i.if.end9_crit_edge, %do.end.if.end9_crit_edge
  %lock = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 7
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %status = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 9
  %23 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %status, align 4
  %queue = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not97 = icmp eq ptr %25, %queue
  br i1 %cmp.i.not97, label %if.end9.while.end_crit_edge, label %if.end9.land.rhs_crit_edge

if.end9.land.rhs_crit_edge:                       ; preds = %if.end9
  br label %land.rhs

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs:                                         ; preds = %do.end42.land.rhs_crit_edge, %if.end9.land.rhs_crit_edge
  %count.099 = phi i32 [ %dec, %do.end42.land.rhs_crit_edge ], [ 500, %if.end9.land.rhs_crit_edge ]
  %flags.098 = phi i32 [ %call53, %do.end42.land.rhs_crit_edge ], [ %call14, %if.end9.land.rhs_crit_edge ]
  %dec = add nsw i32 %count.099, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool22.not = icmp eq i32 %dec, 0
  br i1 %tobool22.not, label %land.rhs.while.end_crit_edge, label %do.body23

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.body23:                                        ; preds = %land.rhs
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_pd_remove.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_pd_remove, %do.end42)) #9
          to label %if.then37 [label %do.end42], !srcloc !290

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_pd_remove.__UNIQUE_ID_ddebug278, ptr noundef %dev39, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.110) #9
  br label %do.end42

do.end42:                                         ; preds = %if.then37, %do.body23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.098) #9
  tail call void @msleep(i32 noundef 10) #9
  %call53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %28 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %29, %queue
  br i1 %cmp.i.not, label %do.end42.while.end_crit_edge, label %do.end42.land.rhs_crit_edge

do.end42.land.rhs_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

do.end42.while.end_crit_edge:                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end42.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end9.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call14, %if.end9.while.end_crit_edge ], [ %call53, %do.end42.while.end_crit_edge ], [ %flags.098, %land.rhs.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0.lcssa) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_free_resources.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_pd_remove, %pch_spi_free_resources.exit)) #9
          to label %if.then.i94 [label %pch_spi_free_resources.exit], !srcloc !290

if.then.i94:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %dev.i93 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_free_resources.__UNIQUE_ID_ddebug271, ptr noundef %dev.i93, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.109) #9
  br label %pch_spi_free_resources.exit

pch_spi_free_resources.exit:                      ; preds = %if.then.i94, %while.end
  %work.i = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 3
  %call4.i = tail call zeroext i1 @flush_work(ptr noundef %work.i) #9
  %irq_reg_sts = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 25
  %32 = ptrtoint ptr %irq_reg_sts to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %irq_reg_sts, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool59.not = icmp eq i8 %33, 0
  br i1 %tobool59.not, label %pch_spi_free_resources.exit.if.end65_crit_edge, label %if.then60

pch_spi_free_resources.exit.if.end65_crit_edge:   ; preds = %pch_spi_free_resources.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then60:                                        ; preds = %pch_spi_free_resources.exit
  call void @__sanitizer_cov_trace_pc() #11
  %master = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 2
  %34 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %41 = and i32 %40, -2031617
  %42 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %41) #9, !srcloc !294
  %46 = ptrtoint ptr %irq_reg_sts to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %irq_reg_sts, align 4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %irq63 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 46
  %49 = ptrtoint ptr %irq63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq63, align 4
  %call64 = tail call ptr @free_irq(i32 noundef %50, ptr noundef %3) #9
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %pch_spi_free_resources.exit.if.end65_crit_edge
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  tail call void @pci_iounmap(ptr noundef %52, ptr noundef %54) #9
  %master67 = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 2
  %55 = ptrtoint ptr %master67 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %master67, align 4
  tail call void @spi_unregister_controller(ptr noundef %56) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_spi_pd_suspend(ptr noundef %pd_dev, [1 x i32] %state.coerce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pd_dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pd_dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pd_dev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_pd_suspend.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_pd_suspend, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !290

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_pd_suspend.__UNIQUE_ID_ddebug279, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.113) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %do.end11, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end
  %bcurrent_msg_processing = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 6
  br label %while.body

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.113) #13
  br label %cleanup

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.cond.preheader
  %dec61 = phi i8 [ -2, %while.cond.preheader ], [ %dec, %if.end17.while.body_crit_edge ]
  %4 = ptrtoint ptr %bcurrent_msg_processing to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bcurrent_msg_processing, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool15.not = icmp eq i8 %5, 0
  br i1 %tobool15.not, label %while.body.while.end_crit_edge, label %if.end17

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end17:                                         ; preds = %while.body
  tail call void @msleep(i32 noundef 10) #9
  %dec = add i8 %dec61, -1
  %cmp.not = icmp eq i8 %dec, 0
  br i1 %cmp.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %while.body.while.end_crit_edge
  %irq_reg_sts = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %irq_reg_sts to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %irq_reg_sts, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool18.not = icmp eq i8 %7, 0
  br i1 %tobool18.not, label %while.end.cleanup_crit_edge, label %if.then19

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %master = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %15 = and i32 %14, -2031617
  %16 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %15) #9, !srcloc !294
  %20 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i58 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i.i58, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #9, !srcloc !294
  %26 = ptrtoint ptr %driver_data.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i.i58, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %29, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #9, !srcloc !294
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 46
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  %call21 = tail call ptr @free_irq(i32 noundef %33, ptr noundef %3) #9
  %34 = ptrtoint ptr %irq_reg_sts to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %irq_reg_sts, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_pd_suspend.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_pd_suspend, %cleanup)) #9
          to label %if.then37 [label %cleanup], !srcloc !290

if.then37:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_pd_suspend.__UNIQUE_ID_ddebug280, ptr noundef %dev, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.113) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.then19, %while.end.cleanup_crit_edge, %do.end11
  %retval.0 = phi i32 [ -14, %do.end11 ], [ 0, %if.then37 ], [ 0, %while.end.cleanup_crit_edge ], [ 0, %if.then19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_spi_pd_resume(ptr noundef %pd_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pd_dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pd_dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pd_dev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.116) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_reg_sts = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %irq_reg_sts to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_reg_sts, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @pch_spi_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.116) #13
  br label %cleanup

if.end12:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %master = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #9, !srcloc !294
  %16 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #9, !srcloc !294
  %20 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %27 = or i32 %26, 33554432
  %28 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %27) #9, !srcloc !294
  %32 = ptrtoint ptr %irq_reg_sts to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %irq_reg_sts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end10 ], [ -14, %do.end ], [ 0, %if.end12 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_spi_transfer(ptr noundef %pspi, ptr noundef %pmsg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %pspi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %4 = ptrtoint ptr %pmsg to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn229 = load ptr, ptr %pmsg, align 4
  %cmp9.not230 = icmp eq ptr %.pn229, %pmsg
  br i1 %cmp9.not230, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn231 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn229, %entry.for.body_crit_edge ]
  %transfer.0 = getelementptr i8, ptr %.pn231, i32 -84
  %5 = ptrtoint ptr %transfer.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transfer.0, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %rx_buf = getelementptr i8, ptr %.pn231, i32 -80
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_buf, align 4
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %land.lhs.true.do.body152_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.do.body152_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body152

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %len = getelementptr i8, ptr %.pn231, i32 -76
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool15.not = icmp eq i32 %10, 0
  br i1 %tobool15.not, label %if.end.do.body152_crit_edge, label %do.body22

if.end.do.body152_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body152

do.body22:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_transfer.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_transfer, %for.inc)) #9
          to label %if.then30 [label %for.inc], !srcloc !290

if.then30:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_transfer.__UNIQUE_ID_ddebug243, ptr noundef %pspi, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.51) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %do.body22
  %11 = ptrtoint ptr %.pn231 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn231, align 4
  %cmp9.not = icmp eq ptr %.pn, %pmsg
  br i1 %cmp9.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  %status = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp42 = icmp eq i8 %13, 2
  br i1 %cmp42, label %do.end47, label %if.end49

do.end47:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %pspi, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.51) #13
  br label %do.body133

if.end49:                                         ; preds = %for.end
  %board_dat = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 20
  %14 = ptrtoint ptr %board_dat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %board_dat, align 4
  %suspend_sts = getelementptr inbounds %struct.pch_spi_board_data, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %suspend_sts to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %suspend_sts, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool50.not = icmp eq i8 %17, 0
  br i1 %tobool50.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %pspi, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.51) #13
  br label %do.body133

if.end56:                                         ; preds = %if.end49
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %pmsg, i32 0, i32 6
  %18 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %actual_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_transfer.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_transfer, %do.end76)) #9
          to label %if.then71 [label %do.end76], !srcloc !290

if.then71:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %status73 = getelementptr inbounds %struct.spi_message, ptr %pmsg, i32 0, i32 7
  %19 = ptrtoint ptr %status73 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status73, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_transfer.__UNIQUE_ID_ddebug244, ptr noundef %pspi, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.51, i32 noundef %20) #9
  br label %do.end76

do.end76:                                         ; preds = %if.then71, %if.end56
  %status77 = getelementptr inbounds %struct.spi_message, ptr %pmsg, i32 0, i32 7
  %21 = ptrtoint ptr %status77 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -115, ptr %status77, align 4
  %call87 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %queue = getelementptr inbounds %struct.spi_message, ptr %pmsg, i32 0, i32 8
  %queue92 = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %23, ptr noundef %queue92) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end76.list_add_tail.exit_crit_edge

do.end76.list_add_tail.exit_crit_edge:            ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %queue, ptr %prev.i, align 4
  %25 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %queue92, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.spi_message, ptr %pmsg, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %queue, ptr %23, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end76.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call87) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_transfer.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_transfer, %do.end112)) #9
          to label %if.then108 [label %do.end112], !srcloc !290

if.then108:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_transfer.__UNIQUE_ID_ddebug245, ptr noundef %pspi, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.51) #9
  br label %do.end112

do.end112:                                        ; preds = %if.then108, %list_add_tail.exit
  %work = getelementptr inbounds %struct.pch_spi_data, ptr %3, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i222 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %work) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_transfer.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_transfer, %do.body133)) #9
          to label %if.then128 [label %do.body133], !srcloc !290

if.then128:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_transfer.__UNIQUE_ID_ddebug246, ptr noundef %pspi, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.51) #9
  br label %do.body133

do.body133:                                       ; preds = %if.then128, %do.end112, %do.end54, %do.end47
  %retval1.0 = phi i32 [ -108, %do.end47 ], [ -22, %do.end54 ], [ 0, %if.then128 ], [ 0, %do.end112 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_transfer.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_transfer, %cleanup)) #9
          to label %if.then147 [label %cleanup], !srcloc !290

if.then147:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_transfer.__UNIQUE_ID_ddebug247, ptr noundef %pspi, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.51, i32 noundef %retval1.0) #9
  br label %cleanup

do.body152:                                       ; preds = %if.end.do.body152_crit_edge, %land.lhs.true.do.body152_crit_edge
  %.str.50.sink = phi ptr [ @.str.50, %land.lhs.true.do.body152_crit_edge ], [ @.str.53, %if.end.do.body152_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %pspi, ptr noundef nonnull %.str.50.sink, ptr noundef nonnull @.str.51) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_transfer.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_transfer, %do.end170)) #9
          to label %if.then166 [label %do.end170], !srcloc !290

if.then166:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_transfer.__UNIQUE_ID_ddebug248, ptr noundef %pspi, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.51, i32 noundef -22) #9
  br label %do.end170

do.end170:                                        ; preds = %if.then166, %do.body152
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end170, %if.then147, %do.body133
  %retval.0 = phi i32 [ -22, %do.end170 ], [ %retval1.0, %if.then147 ], [ %retval1.0, %do.body133 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_spi_process_messages(ptr noundef %pwork) #3 align 64 {
entry:
  %mask.i = alloca %struct.dma_cap_mask_t, align 4
  %bpw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bpw) #9
  %0 = ptrtoint ptr %bpw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bpw, align 4, !annotation !295
  %add.ptr = getelementptr i8, ptr %pwork, i32 -12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_process_messages.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_process_messages, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !290

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %master = getelementptr i8, ptr %pwork, i32 -4
  %1 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %master, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_process_messages.__UNIQUE_ID_ddebug265, ptr noundef %2, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %pwork, i32 100
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %board_dat = getelementptr i8, ptr %pwork, i32 196
  %3 = ptrtoint ptr %board_dat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %board_dat, align 4
  %suspend_sts = getelementptr inbounds %struct.pch_spi_board_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %suspend_sts to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %suspend_sts, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %do.end.do.body10_crit_edge

do.end.do.body10_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

lor.lhs.false:                                    ; preds = %do.end
  %status = getelementptr i8, ptr %pwork, i32 152
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp = icmp eq i8 %8, 2
  br i1 %cmp, label %lor.lhs.false.do.body10_crit_edge, label %if.end60

lor.lhs.false.do.body10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

do.body10:                                        ; preds = %lor.lhs.false.do.body10_crit_edge, %do.end.do.body10_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_process_messages.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_process_messages, %do.end29)) #9
          to label %if.then24 [label %do.end29], !srcloc !290

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %master25 = getelementptr i8, ptr %pwork, i32 -4
  %9 = ptrtoint ptr %master25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_process_messages.__UNIQUE_ID_ddebug266, ptr noundef %10, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66) #9
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %do.body10
  %queue = getelementptr i8, ptr %pwork, i32 144
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queue, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %cmp42.not394 = icmp eq ptr %14, %12
  br i1 %cmp42.not394, label %do.end29.for.end_crit_edge, label %do.end29.for.body_crit_edge

do.end29.for.body_crit_edge:                      ; preds = %do.end29
  br label %for.body

do.end29.for.end_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %do.end29.for.body_crit_edge
  %.pn.in395 = phi ptr [ %.pn397, %list_del_init.exit.for.body_crit_edge ], [ %14, %do.end29.for.body_crit_edge ]
  %15 = ptrtoint ptr %.pn.in395 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn397 = load ptr, ptr %.pn.in395, align 4
  %status46 = getelementptr i8, ptr %.pn.in395, i32 -4
  %16 = ptrtoint ptr %status46 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -5, ptr %status46, align 4
  %complete = getelementptr i8, ptr %.pn.in395, i32 -20
  %17 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %complete, align 4
  %tobool47.not = icmp eq ptr %18, null
  br i1 %tobool47.not, label %for.body.if.end52_crit_edge, label %if.then48

for.body.if.end52_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then48:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %19 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %complete, align 4
  %context = getelementptr i8, ptr %.pn.in395, i32 -16
  %21 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %context, align 4
  tail call void %20(ptr noundef %22) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %for.body.if.end52_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in395) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end52.list_del_init.exit_crit_edge

if.end52.list_del_init.exit_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in395, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %.pn.in395 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %.pn.in395, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end52.list_del_init.exit_crit_edge
  %29 = ptrtoint ptr %.pn.in395 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %.pn.in395, ptr %.pn.in395, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in395, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.pn.in395, ptr %prev.i3.i, align 4
  %31 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %queue, align 4
  %cmp42.not = icmp eq ptr %.pn397, %32
  br i1 %cmp42.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %do.end29.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup251

if.end60:                                         ; preds = %lor.lhs.false
  %bcurrent_msg_processing = getelementptr i8, ptr %pwork, i32 97
  %33 = ptrtoint ptr %bcurrent_msg_processing to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %bcurrent_msg_processing, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_process_messages.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_process_messages, %do.end80)) #9
          to label %if.then75 [label %do.end80], !srcloc !290

if.then75:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %master76 = getelementptr i8, ptr %pwork, i32 -4
  %34 = ptrtoint ptr %master76 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %master76, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_process_messages.__UNIQUE_ID_ddebug267, ptr noundef %35, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.66) #9
  br label %do.end80

do.end80:                                         ; preds = %if.then75, %if.end60
  %queue82 = getelementptr i8, ptr %pwork, i32 144
  %36 = ptrtoint ptr %queue82 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %queue82, align 4
  %add.ptr85 = getelementptr i8, ptr %37, i32 -36
  %current_msg = getelementptr i8, ptr %pwork, i32 188
  %38 = ptrtoint ptr %current_msg to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr85, ptr %current_msg, align 4
  %call.i.i355 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %37) #9
  br i1 %call.i.i355, label %if.end.i.i358, label %do.end80.list_del_init.exit360_crit_edge

do.end80.list_del_init.exit360_crit_edge:         ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit360

if.end.i.i358:                                    ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i356 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i356 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i356, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %37, align 4
  %prev1.i.i.i357 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i357 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i357, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del_init.exit360

list_del_init.exit360:                            ; preds = %if.end.i.i358, %do.end80.list_del_init.exit360_crit_edge
  %45 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %37, ptr %37, align 4
  %prev.i3.i359 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i3.i359 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %37, ptr %prev.i3.i359, align 4
  %47 = ptrtoint ptr %current_msg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %current_msg, align 4
  %status89 = getelementptr inbounds %struct.spi_message, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %status89 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %status89, align 4
  %50 = load ptr, ptr %current_msg, align 4
  %spi = getelementptr inbounds %struct.spi_message, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %spi, align 4
  %current_chip.i = getelementptr i8, ptr %pwork, i32 184
  %53 = ptrtoint ptr %current_chip.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %current_chip.i, align 4
  %cmp.not.i = icmp eq ptr %54, null
  br i1 %cmp.not.i, label %list_del_init.exit360.if.end11.i_crit_edge, label %if.then.i

list_del_init.exit360.if.end11.i_crit_edge:       ; preds = %list_del_init.exit360
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then.i:                                        ; preds = %list_del_init.exit360
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %52, i32 0, i32 4
  %55 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %chip_select.i, align 4
  %n_curnt_chip.i = getelementptr i8, ptr %pwork, i32 180
  %57 = ptrtoint ptr %n_curnt_chip.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %n_curnt_chip.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %58)
  %cmp2.not.i = icmp eq i8 %56, %58
  br i1 %cmp2.not.i, label %if.then.i.if.end11.i_crit_edge, label %do.body.i

if.then.i.if.end11.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_select_chip.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_process_messages, %if.end11.i)) #9
          to label %if.then8.i [label %if.end11.i], !srcloc !290

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_select_chip.__UNIQUE_ID_ddebug249, ptr noundef %52, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %do.body.i, %if.then.i.if.end11.i_crit_edge, %list_del_init.exit360.if.end11.i_crit_edge
  %59 = ptrtoint ptr %current_chip.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %52, ptr %current_chip.i, align 4
  %chip_select14.i = getelementptr inbounds %struct.spi_device, ptr %52, i32 0, i32 4
  %60 = ptrtoint ptr %chip_select14.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %chip_select14.i, align 4
  %n_curnt_chip15.i = getelementptr i8, ptr %pwork, i32 180
  %62 = ptrtoint ptr %n_curnt_chip15.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %n_curnt_chip15.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_select_chip.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_process_messages, %pch_spi_select_chip.exit)) #9
          to label %if.then30.i [label %pch_spi_select_chip.exit], !srcloc !290

if.then30.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_select_chip.__UNIQUE_ID_ddebug250, ptr noundef %52, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.73) #9
  br label %pch_spi_select_chip.exit

pch_spi_select_chip.exit:                         ; preds = %if.then30.i, %if.end11.i
  tail call fastcc void @pch_spi_setup_transfer(ptr noundef %52) #9
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %use_dma = getelementptr i8, ptr %pwork, i32 332
  %63 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool92.not = icmp eq i32 %64, 0
  br i1 %tobool92.not, label %pch_spi_select_chip.exit.if.end97_crit_edge, label %if.then93

pch_spi_select_chip.exit.if.end97_crit_edge:      ; preds = %pch_spi_select_chip.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then93:                                        ; preds = %pch_spi_select_chip.exit
  %65 = ptrtoint ptr %current_msg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %current_msg, align 4
  %spi95 = getelementptr inbounds %struct.spi_message, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %spi95 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %spi95, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %bits_per_word, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %70)
  %cmp.i = icmp ne i8 %70, 8
  %..i = zext i1 %cmp.i to i32
  %71 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %mask.i, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask.i) #9
  %72 = ptrtoint ptr %board_dat to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %board_dat, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus.i, align 8
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 6
  %78 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %devfn.i, align 4
  %and.i = and i32 %79, 248
  %call.i = call ptr @pci_get_slot(ptr noundef %77, i32 noundef %and.i) #9
  %param_tx.i = getelementptr i8, ptr %pwork, i32 216
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44
  %80 = ptrtoint ptr %param_tx.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %dev.i, ptr %param_tx.i, align 4
  %ch.i = getelementptr i8, ptr %pwork, i32 204
  %81 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ch.i, align 4
  %mul.i = shl i32 %82, 1
  %chan_id.i = getelementptr i8, ptr %pwork, i32 220
  %83 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %mul.i, ptr %chan_id.i, align 4
  %io_base_addr.i = getelementptr i8, ptr %pwork, i32 -8
  %84 = ptrtoint ptr %io_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %io_base_addr.i, align 4
  %add.i = add i32 %85, 12
  %tx_reg.i = getelementptr i8, ptr %pwork, i32 224
  %86 = ptrtoint ptr %tx_reg.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add.i, ptr %tx_reg.i, align 4
  %width6.i = getelementptr i8, ptr %pwork, i32 232
  %87 = ptrtoint ptr %width6.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %..i, ptr %width6.i, align 4
  %call7.i = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i, ptr noundef nonnull @pch_spi_filter, ptr noundef %param_tx.i, ptr noundef null) #9
  %tobool.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end10.i

do.end.i:                                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  %master.i = getelementptr i8, ptr %pwork, i32 -4
  %88 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %master.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.78) #13
  %90 = ptrtoint ptr %use_dma to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %use_dma, align 4
  br label %pch_spi_request_dma.exit

if.end10.i:                                       ; preds = %if.then93
  %chan_tx.i = getelementptr i8, ptr %pwork, i32 256
  %91 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call7.i, ptr %chan_tx.i, align 4
  %param_rx.i = getelementptr i8, ptr %pwork, i32 236
  %92 = ptrtoint ptr %param_rx.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %dev.i, ptr %param_rx.i, align 4
  %93 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ch.i, align 4
  %mul14.i = shl i32 %94, 1
  %add15.i = or i32 %mul14.i, 1
  %chan_id16.i = getelementptr i8, ptr %pwork, i32 240
  %95 = ptrtoint ptr %chan_id16.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add15.i, ptr %chan_id16.i, align 4
  %96 = ptrtoint ptr %io_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %io_base_addr.i, align 4
  %add18.i = add i32 %97, 16
  %rx_reg.i = getelementptr i8, ptr %pwork, i32 248
  %98 = ptrtoint ptr %rx_reg.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add18.i, ptr %rx_reg.i, align 4
  %width19.i = getelementptr i8, ptr %pwork, i32 252
  %99 = ptrtoint ptr %width19.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %..i, ptr %width19.i, align 4
  %call20.i = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i, ptr noundef nonnull @pch_spi_filter, ptr noundef %param_rx.i, ptr noundef null) #9
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %do.end25.i, label %if.end31.i

do.end25.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %master26.i = getelementptr i8, ptr %pwork, i32 -4
  %100 = ptrtoint ptr %master26.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %master26.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.81) #13
  %102 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %chan_tx.i, align 4
  call void @dma_release_channel(ptr noundef %103) #9
  %104 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %chan_tx.i, align 4
  %105 = ptrtoint ptr %use_dma to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %use_dma, align 4
  br label %pch_spi_request_dma.exit

if.end31.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %chan_rx.i = getelementptr i8, ptr %pwork, i32 260
  %106 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call20.i, ptr %chan_rx.i, align 4
  br label %pch_spi_request_dma.exit

pch_spi_request_dma.exit:                         ; preds = %if.end31.i, %do.end25.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #9
  br label %if.end97

if.end97:                                         ; preds = %pch_spi_request_dma.exit, %pch_spi_select_chip.exit.if.end97_crit_edge
  %master98 = getelementptr i8, ptr %pwork, i32 -4
  %107 = ptrtoint ptr %master98 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %master98, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %108, i32 0, i32 8
  %109 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %driver_data.i.i.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %add.ptr.i = getelementptr i8, ptr %112, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !294
  %cur_trans = getelementptr i8, ptr %pwork, i32 192
  %save_total_len = getelementptr i8, ptr %pwork, i32 340
  %bpw_len.i = getelementptr i8, ptr %pwork, i32 156
  %rx_buf_virt13.i = getelementptr i8, ptr %pwork, i32 320
  %pkt_rx_buff14.i = getelementptr i8, ptr %pwork, i32 176
  %pkt_tx_buff = getelementptr i8, ptr %pwork, i32 172
  br label %do.body99

do.body99:                                        ; preds = %do.cond241.do.body99_crit_edge, %if.end97
  call void @_raw_spin_lock(ptr noundef %lock) #9
  %113 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cur_trans, align 4
  %cmp101 = icmp eq ptr %114, null
  br i1 %cmp101, label %if.then103, label %if.else

if.then103:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %current_msg to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %current_msg, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %add.ptr108 = getelementptr i8, ptr %118, i32 -84
  %119 = ptrtoint ptr %cur_trans to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %add.ptr108, ptr %cur_trans, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_process_messages.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_process_messages, %if.end156)) #9
          to label %if.then124 [label %if.end156], !srcloc !290

if.then124:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %master98 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %master98, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_process_messages.__UNIQUE_ID_ddebug268, ptr noundef %121, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.66) #9
  br label %if.end156

if.else:                                          ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  %transfer_list = getelementptr inbounds %struct.spi_transfer, ptr %114, i32 0, i32 18
  %122 = ptrtoint ptr %transfer_list to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %transfer_list, align 4
  %add.ptr134 = getelementptr i8, ptr %123, i32 -84
  %124 = ptrtoint ptr %cur_trans to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %add.ptr134, ptr %cur_trans, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_process_messages.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_process_messages, %if.end156)) #9
          to label %if.then150 [label %if.end156], !srcloc !290

if.then150:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %master98 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %master98, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_process_messages.__UNIQUE_ID_ddebug269, ptr noundef %126, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.66) #9
  br label %if.end156

if.end156:                                        ; preds = %if.then150, %if.else, %if.then124, %if.then103
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  %127 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cur_trans, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool159.not = icmp eq i32 %130, 0
  br i1 %tobool159.not, label %if.end156.out_crit_edge, label %if.end161

if.end156.out_crit_edge:                          ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end161:                                        ; preds = %if.end156
  %131 = ptrtoint ptr %save_total_len to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %save_total_len, align 4
  %132 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool167.not = icmp eq i32 %133, 0
  br i1 %tobool167.not, label %if.else192, label %if.then168

if.then168:                                       ; preds = %if.end161
  %sub = add i32 %130, -1
  %div338 = lshr i32 %sub, 12
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %128, i32 0, i32 1
  %134 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rx_buf, align 4
  br label %for.body173

for.body173:                                      ; preds = %pch_spi_copy_rx_data_for_dma.exit.for.body173_crit_edge, %if.then168
  %i.0392 = phi i32 [ 0, %if.then168 ], [ %inc, %pch_spi_copy_rx_data_for_dma.exit.for.body173_crit_edge ]
  call fastcc void @pch_spi_handle_dma(ptr noundef %add.ptr, ptr noundef nonnull %bpw)
  %call174 = call fastcc i32 @pch_spi_start_transfer(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %cleanup, label %if.end186

if.end186:                                        ; preds = %for.body173
  %136 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cur_trans, align 4
  %rx_buf1.i = getelementptr inbounds %struct.spi_transfer, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %rx_buf1.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rx_buf1.i, align 4
  %tobool.not.i361 = icmp eq ptr %139, null
  br i1 %tobool.not.i361, label %if.end186.pch_spi_copy_rx_data_for_dma.exit_crit_edge, label %if.end.i

if.end186.pch_spi_copy_rx_data_for_dma.exit_crit_edge: ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_spi_copy_rx_data_for_dma.exit

if.end.i:                                         ; preds = %if.end186
  %140 = ptrtoint ptr %bpw to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %bpw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %141)
  %cmp.i362 = icmp eq i32 %141, 8
  %142 = ptrtoint ptr %bpw_len.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %bpw_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp548.not.i = icmp eq i32 %143, 0
  br i1 %cmp.i362, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  br i1 %cmp548.not.i, label %if.then2.i.cleanup.sink.split.i_crit_edge, label %for.body.preheader.i

if.then2.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

for.body.preheader.i:                             ; preds = %if.then2.i
  %144 = ptrtoint ptr %rx_buf_virt13.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rx_buf_virt13.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %rx_dma_buf.051.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %145, %for.body.preheader.i ]
  %rx_buf.050.i = phi ptr [ %incdec.ptr7.i, %for.body.i.for.body.i_crit_edge ], [ %139, %for.body.preheader.i ]
  %j.049.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %incdec.ptr.i = getelementptr i8, ptr %rx_dma_buf.051.i, i32 1
  %146 = ptrtoint ptr %rx_dma_buf.051.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %rx_dma_buf.051.i, align 1
  %incdec.ptr7.i = getelementptr i8, ptr %rx_buf.050.i, i32 1
  %148 = ptrtoint ptr %rx_buf.050.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %rx_buf.050.i, align 1
  %inc.i = add nuw i32 %j.049.i, 1
  %149 = ptrtoint ptr %bpw_len.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %bpw_len.i, align 4
  %cmp5.i = icmp ult i32 %inc.i, %150
  br i1 %cmp5.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup.sink.split.i_crit_edge

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.else.i:                                        ; preds = %if.end.i
  br i1 %cmp548.not.i, label %if.else.i.cleanup.sink.split.i_crit_edge, label %for.body18.preheader.i

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

for.body18.preheader.i:                           ; preds = %if.else.i
  %151 = ptrtoint ptr %rx_buf_virt13.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %rx_buf_virt13.i, align 4
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.body18.preheader.i
  %rx_dma_sbuf.047.i = phi ptr [ %incdec.ptr19.i, %for.body18.i.for.body18.i_crit_edge ], [ %152, %for.body18.preheader.i ]
  %rx_sbuf.046.i = phi ptr [ %incdec.ptr20.i, %for.body18.i.for.body18.i_crit_edge ], [ %139, %for.body18.preheader.i ]
  %j.145.i = phi i32 [ %inc22.i, %for.body18.i.for.body18.i_crit_edge ], [ 0, %for.body18.preheader.i ]
  %incdec.ptr19.i = getelementptr i16, ptr %rx_dma_sbuf.047.i, i32 1
  %153 = ptrtoint ptr %rx_dma_sbuf.047.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %rx_dma_sbuf.047.i, align 2
  %incdec.ptr20.i = getelementptr i16, ptr %rx_sbuf.046.i, i32 1
  %155 = ptrtoint ptr %rx_sbuf.046.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %rx_sbuf.046.i, align 2
  %inc22.i = add nuw i32 %j.145.i, 1
  %156 = ptrtoint ptr %bpw_len.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %bpw_len.i, align 4
  %cmp16.i = icmp ult i32 %inc22.i, %157
  br i1 %cmp16.i, label %for.body18.i.for.body18.i_crit_edge, label %for.body18.i.cleanup.sink.split.i_crit_edge

for.body18.i.cleanup.sink.split.i_crit_edge:      ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18.i

cleanup.sink.split.i:                             ; preds = %for.body18.i.cleanup.sink.split.i_crit_edge, %if.else.i.cleanup.sink.split.i_crit_edge, %for.body.i.cleanup.sink.split.i_crit_edge, %if.then2.i.cleanup.sink.split.i_crit_edge
  %rx_buf.0.lcssa.sink.i = phi ptr [ %139, %if.then2.i.cleanup.sink.split.i_crit_edge ], [ %139, %if.else.i.cleanup.sink.split.i_crit_edge ], [ %incdec.ptr7.i, %for.body.i.cleanup.sink.split.i_crit_edge ], [ %incdec.ptr20.i, %for.body18.i.cleanup.sink.split.i_crit_edge ]
  %158 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cur_trans, align 4
  %rx_buf9.i = getelementptr inbounds %struct.spi_transfer, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %rx_buf9.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %rx_buf.0.lcssa.sink.i, ptr %rx_buf9.i, align 4
  br label %pch_spi_copy_rx_data_for_dma.exit

pch_spi_copy_rx_data_for_dma.exit:                ; preds = %cleanup.sink.split.i, %if.end186.pch_spi_copy_rx_data_for_dma.exit_crit_edge
  %inc = add nuw nsw i32 %i.0392, 1
  %exitcond = icmp eq i32 %i.0392, %div338
  br i1 %exitcond, label %cleanup.thread, label %pch_spi_copy_rx_data_for_dma.exit.for.body173_crit_edge

pch_spi_copy_rx_data_for_dma.exit.for.body173_crit_edge: ; preds = %pch_spi_copy_rx_data_for_dma.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body173

cleanup.thread:                                   ; preds = %pch_spi_copy_rx_data_for_dma.exit
  call void @__sanitizer_cov_trace_pc() #11
  %161 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %cur_trans, align 4
  %rx_buf190 = getelementptr inbounds %struct.spi_transfer, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %rx_buf190 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %135, ptr %rx_buf190, align 4
  br label %if.end195

cleanup:                                          ; preds = %for.body173
  call void @__sanitizer_cov_trace_pc() #11
  %transfer_complete = getelementptr i8, ptr %pwork, i32 96
  %164 = ptrtoint ptr %transfer_complete to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 1, ptr %transfer_complete, align 4
  %165 = ptrtoint ptr %current_msg to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %current_msg, align 4
  %status178 = getelementptr inbounds %struct.spi_message, ptr %166, i32 0, i32 7
  %167 = ptrtoint ptr %status178 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 -5, ptr %status178, align 4
  %168 = load ptr, ptr %current_msg, align 4
  %complete180 = getelementptr inbounds %struct.spi_message, ptr %168, i32 0, i32 3
  %169 = ptrtoint ptr %complete180 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %complete180, align 4
  %context182 = getelementptr inbounds %struct.spi_message, ptr %168, i32 0, i32 4
  %171 = ptrtoint ptr %context182 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %context182, align 4
  call void %170(ptr noundef %172) #9
  %173 = ptrtoint ptr %bcurrent_msg_processing to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %bcurrent_msg_processing, align 1
  %174 = ptrtoint ptr %current_msg to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %current_msg, align 4
  %175 = ptrtoint ptr %cur_trans to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %cur_trans, align 4
  br label %out

if.else192:                                       ; preds = %if.end161
  call fastcc void @pch_spi_set_tx(ptr noundef %add.ptr, ptr noundef nonnull %bpw)
  call fastcc void @pch_spi_set_ir(ptr noundef %add.ptr)
  %176 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %cur_trans, align 4
  %rx_buf1.i364 = getelementptr inbounds %struct.spi_transfer, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %rx_buf1.i364 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %rx_buf1.i364, align 4
  %tobool.not.i365 = icmp eq ptr %179, null
  br i1 %tobool.not.i365, label %if.else192.pch_spi_copy_rx_data.exit_crit_edge, label %if.end.i368

if.else192.pch_spi_copy_rx_data.exit_crit_edge:   ; preds = %if.else192
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_spi_copy_rx_data.exit

if.end.i368:                                      ; preds = %if.else192
  %180 = ptrtoint ptr %bpw to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %bpw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %181)
  %cmp.i366 = icmp eq i32 %181, 8
  %182 = ptrtoint ptr %bpw_len.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %bpw_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp538.not.i = icmp eq i32 %183, 0
  br i1 %cmp.i366, label %for.cond.preheader.i, label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %if.end.i368
  br i1 %cmp538.not.i, label %for.cond9.preheader.i.pch_spi_copy_rx_data.exit_crit_edge, label %for.cond9.preheader.i.for.body13.i_crit_edge

for.cond9.preheader.i.for.body13.i_crit_edge:     ; preds = %for.cond9.preheader.i
  br label %for.body13.i

for.cond9.preheader.i.pch_spi_copy_rx_data.exit_crit_edge: ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_spi_copy_rx_data.exit

for.cond.preheader.i:                             ; preds = %if.end.i368
  br i1 %cmp538.not.i, label %for.cond.preheader.i.pch_spi_copy_rx_data.exit_crit_edge, label %for.cond.preheader.i.for.body.i372_crit_edge

for.cond.preheader.i.for.body.i372_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i372

for.cond.preheader.i.pch_spi_copy_rx_data.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_spi_copy_rx_data.exit

for.body.i372:                                    ; preds = %for.body.i372.for.body.i372_crit_edge, %for.cond.preheader.i.for.body.i372_crit_edge
  %rx_buf.040.i = phi ptr [ %incdec.ptr.i369, %for.body.i372.for.body.i372_crit_edge ], [ %179, %for.cond.preheader.i.for.body.i372_crit_edge ]
  %j.039.i = phi i32 [ %inc.i370, %for.body.i372.for.body.i372_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i372_crit_edge ]
  %184 = ptrtoint ptr %pkt_rx_buff14.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pkt_rx_buff14.i, align 4
  %arrayidx.i = getelementptr i16, ptr %185, i32 %j.039.i
  %186 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %arrayidx.i, align 2
  %conv6.i = trunc i16 %187 to i8
  %incdec.ptr.i369 = getelementptr i8, ptr %rx_buf.040.i, i32 1
  %188 = ptrtoint ptr %rx_buf.040.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv6.i, ptr %rx_buf.040.i, align 1
  %inc.i370 = add nuw i32 %j.039.i, 1
  %189 = ptrtoint ptr %bpw_len.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %bpw_len.i, align 4
  %cmp5.i371 = icmp ult i32 %inc.i370, %190
  br i1 %cmp5.i371, label %for.body.i372.for.body.i372_crit_edge, label %for.body.i372.pch_spi_copy_rx_data.exit_crit_edge

for.body.i372.pch_spi_copy_rx_data.exit_crit_edge: ; preds = %for.body.i372
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_spi_copy_rx_data.exit

for.body.i372.for.body.i372_crit_edge:            ; preds = %for.body.i372
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i372

for.body13.i:                                     ; preds = %for.body13.i.for.body13.i_crit_edge, %for.cond9.preheader.i.for.body13.i_crit_edge
  %rx_sbuf.037.i = phi ptr [ %incdec.ptr16.i, %for.body13.i.for.body13.i_crit_edge ], [ %179, %for.cond9.preheader.i.for.body13.i_crit_edge ]
  %j.136.i = phi i32 [ %inc18.i, %for.body13.i.for.body13.i_crit_edge ], [ 0, %for.cond9.preheader.i.for.body13.i_crit_edge ]
  %191 = ptrtoint ptr %pkt_rx_buff14.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %pkt_rx_buff14.i, align 4
  %arrayidx15.i = getelementptr i16, ptr %192, i32 %j.136.i
  %193 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %arrayidx15.i, align 2
  %incdec.ptr16.i = getelementptr i16, ptr %rx_sbuf.037.i, i32 1
  %195 = ptrtoint ptr %rx_sbuf.037.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %194, ptr %rx_sbuf.037.i, align 2
  %inc18.i = add nuw i32 %j.136.i, 1
  %196 = ptrtoint ptr %bpw_len.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %bpw_len.i, align 4
  %cmp11.i = icmp ult i32 %inc18.i, %197
  br i1 %cmp11.i, label %for.body13.i.for.body13.i_crit_edge, label %for.body13.i.pch_spi_copy_rx_data.exit_crit_edge

for.body13.i.pch_spi_copy_rx_data.exit_crit_edge: ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_spi_copy_rx_data.exit

for.body13.i.for.body13.i_crit_edge:              ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body13.i

pch_spi_copy_rx_data.exit:                        ; preds = %for.body13.i.pch_spi_copy_rx_data.exit_crit_edge, %for.body.i372.pch_spi_copy_rx_data.exit_crit_edge, %for.cond.preheader.i.pch_spi_copy_rx_data.exit_crit_edge, %for.cond9.preheader.i.pch_spi_copy_rx_data.exit_crit_edge, %if.else192.pch_spi_copy_rx_data.exit_crit_edge
  %198 = ptrtoint ptr %pkt_rx_buff14.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pkt_rx_buff14.i, align 4
  call void @kfree(ptr noundef %199) #9
  %200 = ptrtoint ptr %pkt_rx_buff14.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %pkt_rx_buff14.i, align 4
  %201 = ptrtoint ptr %pkt_tx_buff to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %pkt_tx_buff, align 4
  call void @kfree(ptr noundef %202) #9
  %203 = ptrtoint ptr %pkt_tx_buff to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr null, ptr %pkt_tx_buff, align 4
  br label %if.end195

if.end195:                                        ; preds = %pch_spi_copy_rx_data.exit, %cleanup.thread
  %204 = ptrtoint ptr %save_total_len to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %save_total_len, align 4
  %206 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cur_trans, align 4
  %len198 = getelementptr inbounds %struct.spi_transfer, ptr %207, i32 0, i32 2
  %208 = ptrtoint ptr %len198 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %205, ptr %len198, align 4
  %209 = load ptr, ptr %cur_trans, align 4
  %len200 = getelementptr inbounds %struct.spi_transfer, ptr %209, i32 0, i32 2
  %210 = ptrtoint ptr %len200 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %len200, align 4
  %212 = ptrtoint ptr %current_msg to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %current_msg, align 4
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %213, i32 0, i32 6
  %214 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %actual_length, align 4
  %add202 = add i32 %215, %211
  store i32 %add202, ptr %actual_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_process_messages.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_process_messages, %do.end224)) #9
          to label %if.then217 [label %do.end224], !srcloc !290

if.then217:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #11
  %216 = ptrtoint ptr %master98 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %master98, align 4
  %218 = ptrtoint ptr %current_msg to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %current_msg, align 4
  %actual_length221 = getelementptr inbounds %struct.spi_message, ptr %219, i32 0, i32 6
  %220 = ptrtoint ptr %actual_length221 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %actual_length221, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_process_messages.__UNIQUE_ID_ddebug270, ptr noundef %217, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.66, i32 noundef %221) #9
  br label %do.end224

do.end224:                                        ; preds = %if.then217, %if.end195
  %222 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cur_trans, align 4
  %delay.i = getelementptr inbounds %struct.spi_transfer, ptr %223, i32 0, i32 9
  %call.i373 = call i32 @spi_delay_exec(ptr noundef %delay.i, ptr noundef %223) #9
  call void @_raw_spin_lock(ptr noundef %lock) #9
  %224 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %cur_trans, align 4
  %transfer_list229 = getelementptr inbounds %struct.spi_transfer, ptr %225, i32 0, i32 18
  %226 = ptrtoint ptr %transfer_list229 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %transfer_list229, align 4
  %228 = ptrtoint ptr %current_msg to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %current_msg, align 4
  %cmp233 = icmp eq ptr %227, %229
  br i1 %cmp233, label %if.then235, label %do.end224.do.cond241_crit_edge

do.end224.do.cond241_crit_edge:                   ; preds = %do.end224
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond241

if.then235:                                       ; preds = %do.end224
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @pch_spi_nomore_transfer(ptr noundef %add.ptr)
  br label %do.cond241

do.cond241:                                       ; preds = %if.then235, %do.end224.do.cond241_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  %230 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %cur_trans, align 4
  %cmp243.not = icmp eq ptr %231, null
  br i1 %cmp243.not, label %do.cond241.out_crit_edge, label %do.cond241.do.body99_crit_edge

do.cond241.do.body99_crit_edge:                   ; preds = %do.cond241
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body99

do.cond241.out_crit_edge:                         ; preds = %do.cond241
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %do.cond241.out_crit_edge, %cleanup, %if.end156.out_crit_edge
  %232 = ptrtoint ptr %master98 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %master98, align 4
  %driver_data.i.i.i374 = getelementptr inbounds %struct.device, ptr %233, i32 0, i32 8
  %234 = ptrtoint ptr %driver_data.i.i.i374 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %driver_data.i.i.i374, align 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %235, align 4
  %add.ptr.i375 = getelementptr i8, ptr %237, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i375, i32 50331648) #9, !srcloc !294
  %238 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool248.not = icmp eq i32 %239, 0
  br i1 %tobool248.not, label %out.cleanup251_crit_edge, label %if.then249

out.cleanup251_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup251

if.then249:                                       ; preds = %out
  %chan_tx.i376 = getelementptr i8, ptr %pwork, i32 256
  %240 = ptrtoint ptr %chan_tx.i376 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %chan_tx.i376, align 4
  %tobool.not.i377 = icmp eq ptr %241, null
  br i1 %tobool.not.i377, label %if.then249.if.end.i380_crit_edge, label %if.then.i378

if.then249.if.end.i380_crit_edge:                 ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i380

if.then.i378:                                     ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %241) #9
  %242 = ptrtoint ptr %chan_tx.i376 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr null, ptr %chan_tx.i376, align 4
  br label %if.end.i380

if.end.i380:                                      ; preds = %if.then.i378, %if.then249.if.end.i380_crit_edge
  %chan_rx.i379 = getelementptr i8, ptr %pwork, i32 260
  %243 = ptrtoint ptr %chan_rx.i379 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %chan_rx.i379, align 4
  %tobool4.not.i = icmp eq ptr %244, null
  br i1 %tobool4.not.i, label %if.end.i380.cleanup251_crit_edge, label %if.then5.i

if.end.i380.cleanup251_crit_edge:                 ; preds = %if.end.i380
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup251

if.then5.i:                                       ; preds = %if.end.i380
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %244) #9
  %245 = ptrtoint ptr %chan_rx.i379 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr null, ptr %chan_rx.i379, align 4
  br label %cleanup251

cleanup251:                                       ; preds = %if.then5.i, %if.end.i380.cleanup251_crit_edge, %out.cleanup251_crit_edge, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bpw) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_spi_get_resources(ptr nocapture noundef readonly %board_dat, ptr nocapture noundef readonly %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_get_resources.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_get_resources, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !290

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %board_dat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_dat, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_get_resources.__UNIQUE_ID_ddebug272, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.102) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %master = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #9, !srcloc !294
  %8 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #9, !srcloc !294
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_get_resources.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_get_resources, %do.body23)) #9
          to label %if.then18 [label %do.body23], !srcloc !290

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %board_dat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %board_dat, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_get_resources.__UNIQUE_ID_ddebug273, ptr noundef %dev20, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.102) #9
  br label %do.body23

do.body23:                                        ; preds = %if.then18, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_get_resources.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_get_resources, %do.end41)) #9
          to label %if.then37 [label %do.end41], !srcloc !290

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %board_dat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %board_dat, align 4
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_get_resources.__UNIQUE_ID_ddebug274, ptr noundef %dev39, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.102) #9
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_spi_handler(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %board_dat1 = getelementptr inbounds %struct.pch_spi_data, ptr %dev_id, i32 0, i32 20
  %0 = ptrtoint ptr %board_dat1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_dat1, align 4
  %suspend_sts = getelementptr inbounds %struct.pch_spi_board_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %suspend_sts to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspend_sts, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_handler.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_handler, %cleanup)) #9
          to label %if.then6 [label %cleanup], !srcloc !290

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_handler.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !291
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end7.if.end25_crit_edge, label %do.end14

if.end7.if.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.end14:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.105) #13
  %current_msg = getelementptr inbounds %struct.pch_spi_data, ptr %dev_id, i32 0, i32 18
  %12 = ptrtoint ptr %current_msg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %current_msg, align 4
  %complete = getelementptr inbounds %struct.spi_message, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %complete, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %do.end14.if.end25_crit_edge, label %if.then18

do.end14.if.end25_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then18:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  %transfer_complete = getelementptr inbounds %struct.pch_spi_data, ptr %dev_id, i32 0, i32 5
  %16 = ptrtoint ptr %transfer_complete to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %transfer_complete, align 4
  %status = getelementptr inbounds %struct.spi_message, ptr %13, i32 0, i32 7
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -5, ptr %status, align 4
  %18 = ptrtoint ptr %current_msg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %current_msg, align 4
  %complete21 = getelementptr inbounds %struct.spi_message, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %complete21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %complete21, align 4
  %context = getelementptr inbounds %struct.spi_message, ptr %19, i32 0, i32 4
  %22 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %context, align 4
  tail call void %21(ptr noundef %23) #9
  %bcurrent_msg_processing = getelementptr inbounds %struct.pch_spi_data, ptr %dev_id, i32 0, i32 6
  %24 = ptrtoint ptr %bcurrent_msg_processing to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %bcurrent_msg_processing, align 1
  %25 = ptrtoint ptr %current_msg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %current_msg, align 4
  %cur_trans = getelementptr inbounds %struct.pch_spi_data, ptr %dev_id, i32 0, i32 19
  %26 = ptrtoint ptr %cur_trans to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %cur_trans, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %do.end14.if.end25_crit_edge, %if.end7.if.end25_crit_edge
  %use_dma = getelementptr inbounds %struct.pch_spi_data, ptr %dev_id, i32 0, i32 24
  %27 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool26.not = icmp eq i32 %28, 0
  br i1 %tobool26.not, label %if.end28, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  %and29 = and i32 %9, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.do.body33_crit_edge, label %if.then31

if.end28.do.body33_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

if.then31:                                        ; preds = %if.end28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #9, !srcloc !294
  %transfer_active.i = getelementptr inbounds %struct.pch_spi_data, ptr %dev_id, i32 0, i32 11
  %29 = ptrtoint ptr %transfer_active.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %transfer_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.then31.do.body33_crit_edge, label %if.then.i

if.then31.do.body33_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

if.then.i:                                        ; preds = %if.then31
  %rx_index1.i = getelementptr inbounds %struct.pch_spi_data, ptr %dev_id, i32 0, i32 13
  %31 = ptrtoint ptr %rx_index1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_index1.i, align 4
  %tx_index2.i = getelementptr inbounds %struct.pch_spi_data, ptr %dev_id, i32 0, i32 12
  %33 = ptrtoint ptr %tx_index2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_index2.i, align 4
  %bpw_len3.i = getelementptr inbounds %struct.pch_spi_data, ptr %dev_id, i32 0, i32 10
  %35 = ptrtoint ptr %bpw_len3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bpw_len3.i, align 4
  %pkt_rx_buff.i = getelementptr inbounds %struct.pch_spi_data, ptr %dev_id, i32 0, i32 15
  %37 = ptrtoint ptr %pkt_rx_buff.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pkt_rx_buff.i, align 4
  %pkt_tx_buff4.i = getelementptr inbounds %struct.pch_spi_data, ptr %dev_id, i32 0, i32 14
  %39 = ptrtoint ptr %pkt_tx_buff4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pkt_tx_buff4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %7, i32 16
  %add.ptr6.i = getelementptr i8, ptr %7, i32 12
  %and.i = lshr i32 %9, 11
  %shr.i = and i32 %and.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp68.not.i = icmp eq i32 %shr.i, 0
  br i1 %cmp68.not.i, label %if.then.i.for.end.i_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %read_cnt.071.i = phi i32 [ %inc13.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %rx_index.070.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %32, %if.then.i.for.body.i_crit_edge ]
  %tx_index.069.i = phi i32 [ %tx_index.1.i, %for.inc.i.for.body.i_crit_edge ], [ %34, %if.then.i.for.body.i_crit_edge ]
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #9, !srcloc !291
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %conv.i = trunc i32 %42 to i16
  %inc.i = add i32 %rx_index.070.i, 1
  %arrayidx.i = getelementptr i16, ptr %38, i32 %rx_index.070.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_index.069.i, i32 %36)
  %cmp7.i = icmp ult i32 %tx_index.069.i, %36
  br i1 %cmp7.i, label %if.then9.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc10.i = add nuw i32 %tx_index.069.i, 1
  %arrayidx11.i = getelementptr i16, ptr %40, i32 %tx_index.069.i
  %44 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx11.i, align 2
  %conv12.i = zext i16 %45 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %46 = tail call i32 @llvm.bswap.i32(i32 %conv12.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %46) #9, !srcloc !294
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %for.body.i.for.inc.i_crit_edge
  %tx_index.1.i = phi i32 [ %inc10.i, %if.then9.i ], [ %tx_index.069.i, %for.body.i.for.inc.i_crit_edge ]
  %inc13.i = add nuw nsw i32 %read_cnt.071.i, 1
  %exitcond.not.i = icmp eq i32 %inc13.i, %shr.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %tx_index.0.lcssa.i = phi i32 [ %34, %if.then.i.for.end.i_crit_edge ], [ %tx_index.1.i, %for.inc.i.for.end.i_crit_edge ]
  %rx_index.0.lcssa.i = phi i32 [ %32, %if.then.i.for.end.i_crit_edge ], [ %inc.i, %for.inc.i.for.end.i_crit_edge ]
  %sub.i = sub i32 %36, %rx_index.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub.i)
  %cmp14.i = icmp ult i32 %sub.i, 17
  br i1 %cmp14.i, label %if.then16.i, label %for.end.i.if.end22.i_crit_edge

for.end.i.if.end22.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then16.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %48 = and i32 %47, -192513
  %49 = or i32 %48, 61440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %49) #9, !srcloc !294
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then16.i, %for.end.i.if.end22.i_crit_edge
  %50 = ptrtoint ptr %tx_index2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %tx_index.0.lcssa.i, ptr %tx_index2.i, align 4
  %51 = ptrtoint ptr %rx_index1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %rx_index.0.lcssa.i, ptr %rx_index1.i, align 4
  %and25.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp ne i32 %and25.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_index.0.lcssa.i, i32 %36)
  %cmp28.i = icmp eq i32 %tx_index.0.lcssa.i, %36
  %or.cond.i = select i1 %tobool26.not.i, i1 %cmp28.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %rx_index.0.lcssa.i, i32 %tx_index.0.lcssa.i)
  %cmp30.i = icmp eq i32 %rx_index.0.lcssa.i, %tx_index.0.lcssa.i
  %or.cond67.i = select i1 %or.cond.i, i1 %cmp30.i, i1 false
  br i1 %or.cond67.i, label %if.then32.i, label %if.end22.i.do.body33_crit_edge

if.end22.i.do.body33_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

if.then32.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %master.i = getelementptr inbounds %struct.pch_spi_data, ptr %dev_id, i32 0, i32 2
  %52 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %59 = and i32 %58, -2031617
  %60 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %59) #9, !srcloc !294
  %transfer_complete.i = getelementptr inbounds %struct.pch_spi_data, ptr %dev_id, i32 0, i32 5
  %64 = ptrtoint ptr %transfer_complete.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %transfer_complete.i, align 4
  %65 = ptrtoint ptr %transfer_active.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %transfer_active.i, align 4
  %wait.i = getelementptr inbounds %struct.pch_spi_data, ptr %dev_id, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %do.body33

do.body33:                                        ; preds = %if.then32.i, %if.end22.i.do.body33_crit_edge, %if.then31.do.body33_crit_edge, %if.end28.do.body33_crit_edge
  %ret.0 = phi i32 [ 0, %if.end28.do.body33_crit_edge ], [ 1, %if.then31.do.body33_crit_edge ], [ 1, %if.end22.i.do.body33_crit_edge ], [ 1, %if.then32.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_handler.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_handler, %cleanup)) #9
          to label %if.then47 [label %cleanup], !srcloc !290

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_handler.__UNIQUE_ID_ddebug241, ptr noundef %dev49, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.105, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %do.body33, %if.end25.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.end25.cleanup_crit_edge ], [ %ret.0, %if.then47 ], [ 0, %do.body ], [ %ret.0, %do.body33 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_spi_handle_dma(ptr noundef %data, ptr nocapture noundef %bpw) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23
  %cur_trans = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_trans, align 4
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %do.body

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_handle_dma.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_handle_dma, %do.body8)) #9
          to label %if.then6 [label %do.body8], !srcloc !290

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %master = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_handle_dma.__UNIQUE_ID_ddebug261, ptr noundef %5, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83) #9
  br label %do.body8

do.body8:                                         ; preds = %if.then6, %do.body
  %lock = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 7
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %master16 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %master16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master16, align 4
  %8 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_trans, align 4
  %speed_hz18 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %speed_hz18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed_hz18, align 4
  %mul.i = shl i32 %11, 1
  %div.i = udiv i32 50000000, %mul.i
  %12 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 1023) #9
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %18 = and i32 %17, 16580607
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  %or.i.i = or i32 %19, %12
  %20 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %24) #9, !srcloc !294
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #9
  br label %if.end20

if.end20:                                         ; preds = %do.body8, %entry.if.end20_crit_edge
  %25 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur_trans, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool23.not = icmp eq i8 %28, 0
  br i1 %tobool23.not, label %if.end20.if.else_crit_edge, label %land.lhs.true

if.end20.if.else_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end20
  %current_msg = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 18
  %29 = ptrtoint ptr %current_msg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %current_msg, align 4
  %spi = getelementptr inbounds %struct.spi_message, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %spi, align 4
  %bits_per_word24 = getelementptr inbounds %struct.spi_device, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %bits_per_word24 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bits_per_word24, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %28)
  %cmp29.not = icmp eq i8 %34, %28
  br i1 %cmp29.not, label %land.lhs.true.if.else_crit_edge, label %do.body32

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

do.body32:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_handle_dma.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_handle_dma, %do.body53)) #9
          to label %if.then46 [label %do.body53], !srcloc !290

if.then46:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  %master47 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %35 = ptrtoint ptr %master47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %master47, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_handle_dma.__UNIQUE_ID_ddebug262, ptr noundef %36, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.83) #9
  br label %do.body53

do.body53:                                        ; preds = %if.then46, %do.body32
  %lock59 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 7
  %call61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock59) #9
  %master66 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %37 = ptrtoint ptr %master66 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %master66, align 4
  %39 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur_trans, align 4
  %bits_per_word68 = getelementptr inbounds %struct.spi_transfer, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %bits_per_word68 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bits_per_word68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %42)
  %cmp.i = icmp eq i8 %42, 8
  %driver_data.i.i.i.i.i633 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 8
  %43 = ptrtoint ptr %driver_data.i.i.i.i.i633 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i.i.i.i633, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %add.ptr.i.i.i634 = getelementptr i8, ptr %46, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i634) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %48 = and i32 %47, -262145
  %49 = ptrtoint ptr %driver_data.i.i.i.i.i633 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver_data.i.i.i.i.i633, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %add.ptr.i5.i.i635 = getelementptr i8, ptr %52, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i635, i32 %48) #9, !srcloc !294
  br label %pch_spi_set_bits_per_word.exit

if.else.i:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %53 = or i32 %47, 262144
  %54 = ptrtoint ptr %driver_data.i.i.i.i.i633 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i.i.i.i633, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %add.ptr.i5.i5.i = getelementptr i8, ptr %57, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i5.i, i32 %53) #9, !srcloc !294
  br label %pch_spi_set_bits_per_word.exit

pch_spi_set_bits_per_word.exit:                   ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock59, i32 noundef %call61) #9
  %58 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cur_trans, align 4
  %bits_per_word71 = getelementptr inbounds %struct.spi_transfer, ptr %59, i32 0, i32 8
  br label %if.end77

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end20.if.else_crit_edge
  %current_msg73 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 18
  %60 = ptrtoint ptr %current_msg73 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %current_msg73, align 4
  %spi74 = getelementptr inbounds %struct.spi_message, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %spi74 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %spi74, align 4
  %bits_per_word75 = getelementptr inbounds %struct.spi_device, ptr %63, i32 0, i32 5
  br label %if.end77

if.end77:                                         ; preds = %if.else, %pch_spi_set_bits_per_word.exit
  %storemerge.in.in = phi ptr [ %bits_per_word75, %if.else ], [ %bits_per_word71, %pch_spi_set_bits_per_word.exit ]
  %64 = ptrtoint ptr %storemerge.in.in to i32
  call void @__asan_load1_noabort(i32 %64)
  %storemerge.in = load i8, ptr %storemerge.in.in, align 1
  %storemerge = zext i8 %storemerge.in to i32
  %65 = ptrtoint ptr %bpw to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %storemerge, ptr %bpw, align 4
  %66 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cur_trans, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len, align 4
  %div623 = lshr i32 %storemerge, 3
  %div79 = udiv i32 %69, %div623
  %bpw_len = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 10
  %70 = ptrtoint ptr %bpw_len to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div79, ptr %bpw_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %div79)
  %cmp81 = icmp ugt i32 %div79, 4096
  br i1 %cmp81, label %if.then83, label %if.end77.if.end87_crit_edge

if.end77.if.end87_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then83:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %bpw_len to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 4096, ptr %bpw_len, align 4
  %72 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len, align 4
  %sub = add i32 %73, -4096
  store i32 %sub, ptr %len, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then83, %if.end77.if.end87_crit_edge
  %74 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cur_trans, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %cmp90.not = icmp eq ptr %77, null
  br i1 %cmp90.not, label %if.end117thread-pre-split, label %if.then92

if.then92:                                        ; preds = %if.end87
  %78 = ptrtoint ptr %bpw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bpw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %79)
  %cmp93 = icmp eq i32 %79, 8
  %80 = ptrtoint ptr %bpw_len to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bpw_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp99775.not = icmp eq i32 %81, 0
  br i1 %cmp93, label %if.then95, label %if.else102

if.then95:                                        ; preds = %if.then92
  br i1 %cmp99775.not, label %if.then95.do.body138_crit_edge, label %for.body.preheader

if.then95.do.body138_crit_edge:                   ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body138

for.body.preheader:                               ; preds = %if.then95
  %tx_buf_virt = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 11
  %82 = ptrtoint ptr %tx_buf_virt to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tx_buf_virt, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %tx_buf.0778 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %77, %for.body.preheader ]
  %tx_dma_buf.0777 = phi ptr [ %incdec.ptr101, %for.body.for.body_crit_edge ], [ %83, %for.body.preheader ]
  %i.0776 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %incdec.ptr = getelementptr i8, ptr %tx_buf.0778, i32 1
  %84 = ptrtoint ptr %tx_buf.0778 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %tx_buf.0778, align 1
  %incdec.ptr101 = getelementptr i8, ptr %tx_dma_buf.0777, i32 1
  %86 = ptrtoint ptr %tx_dma_buf.0777 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %tx_dma_buf.0777, align 1
  %inc = add nuw i32 %i.0776, 1
  %87 = ptrtoint ptr %bpw_len to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bpw_len, align 4
  %cmp99 = icmp ult i32 %inc, %88
  br i1 %cmp99, label %for.body.for.body_crit_edge, label %for.body.if.end117_crit_edge

for.body.if.end117_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.else102:                                       ; preds = %if.then92
  br i1 %cmp99775.not, label %if.else102.do.body138_crit_edge, label %for.body110.preheader

if.else102.do.body138_crit_edge:                  ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body138

for.body110.preheader:                            ; preds = %if.else102
  %tx_buf_virt105 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 11
  %89 = ptrtoint ptr %tx_buf_virt105 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tx_buf_virt105, align 4
  br label %for.body110

for.body110:                                      ; preds = %for.body110.for.body110_crit_edge, %for.body110.preheader
  %tx_sbuf.0774 = phi ptr [ %incdec.ptr111, %for.body110.for.body110_crit_edge ], [ %77, %for.body110.preheader ]
  %tx_dma_sbuf.0773 = phi ptr [ %incdec.ptr112, %for.body110.for.body110_crit_edge ], [ %90, %for.body110.preheader ]
  %i.1772 = phi i32 [ %inc114, %for.body110.for.body110_crit_edge ], [ 0, %for.body110.preheader ]
  %incdec.ptr111 = getelementptr i16, ptr %tx_sbuf.0774, i32 1
  %91 = ptrtoint ptr %tx_sbuf.0774 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %tx_sbuf.0774, align 2
  %incdec.ptr112 = getelementptr i16, ptr %tx_dma_sbuf.0773, i32 1
  %93 = ptrtoint ptr %tx_dma_sbuf.0773 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %tx_dma_sbuf.0773, align 2
  %inc114 = add nuw i32 %i.1772, 1
  %94 = ptrtoint ptr %bpw_len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bpw_len, align 4
  %cmp108 = icmp ult i32 %inc114, %95
  br i1 %cmp108, label %for.body110.for.body110_crit_edge, label %for.body110.if.end117_crit_edge

for.body110.if.end117_crit_edge:                  ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

for.body110.for.body110_crit_edge:                ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body110

if.end117thread-pre-split:                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %bpw_len to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pr = load i32, ptr %bpw_len, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.end117thread-pre-split, %for.body110.if.end117_crit_edge, %for.body.if.end117_crit_edge
  %97 = phi i32 [ %.pr, %if.end117thread-pre-split ], [ %88, %for.body.if.end117_crit_edge ], [ %95, %for.body110.if.end117_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %97)
  %cmp119 = icmp ugt i32 %97, 12
  br i1 %cmp119, label %if.then121, label %if.end117.do.body138_crit_edge

if.end117.do.body138_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body138

if.then121:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  %.frozen = freeze i32 %97
  %div127 = udiv i32 %.frozen, 12
  %98 = mul i32 %div127, 12
  %rem123.decomposed = sub i32 %.frozen, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem123.decomposed)
  %tobool124.not = icmp eq i32 %rem123.decomposed, 0
  %rem.0 = select i1 %tobool124.not, i32 12, i32 %rem123.decomposed
  %not.tobool124.not = xor i1 %tobool124.not, true
  %add = zext i1 %not.tobool124.not to i32
  %num.0 = add nuw nsw i32 %div127, %add
  br label %do.body138

do.body138:                                       ; preds = %if.then121, %if.end117.do.body138_crit_edge, %if.else102.do.body138_crit_edge, %if.then95.do.body138_crit_edge
  %rem.1 = phi i32 [ %rem.0, %if.then121 ], [ %97, %if.end117.do.body138_crit_edge ], [ 0, %if.then95.do.body138_crit_edge ], [ 0, %if.else102.do.body138_crit_edge ]
  %size.0 = phi i32 [ 12, %if.then121 ], [ %97, %if.end117.do.body138_crit_edge ], [ 0, %if.then95.do.body138_crit_edge ], [ 0, %if.else102.do.body138_crit_edge ]
  %num.1 = phi i32 [ %num.0, %if.then121 ], [ 1, %if.end117.do.body138_crit_edge ], [ 1, %if.then95.do.body138_crit_edge ], [ 1, %if.else102.do.body138_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_handle_dma.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_handle_dma, %do.body159)) #9
          to label %if.then152 [label %do.body159], !srcloc !290

if.then152:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #11
  %master153 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %99 = ptrtoint ptr %master153 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %master153, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_handle_dma.__UNIQUE_ID_ddebug263, ptr noundef %100, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.83, i32 noundef %num.1, i32 noundef %size.0, i32 noundef %rem.1) #9
  br label %do.body159

do.body159:                                       ; preds = %if.then152, %do.body138
  %lock165 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 7
  %call167 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock165) #9
  %master172 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %101 = ptrtoint ptr %master172 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %master172, align 4
  %sub173 = shl nuw nsw i32 %size.0, 20
  %or = add nsw i32 %sub173, -917504
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %102, i32 0, i32 8
  %103 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #9, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %108 = and i32 %107, -65281
  %109 = tail call i32 @llvm.bswap.i32(i32 %108)
  %or.i = or i32 %109, %or
  %110 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %114 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %114) #9, !srcloc !294
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock165, i32 noundef %call167) #9
  %115 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.1, i32 20) #9
  %116 = extractvalue { i32, i1 } %115, 1
  br i1 %116, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !296

kmalloc_array.exit.thread:                        ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #11
  %sg_rx_p747 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 7
  %117 = ptrtoint ptr %sg_rx_p747 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %sg_rx_p747, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %do.body159
  %118 = extractvalue { i32, i1 } %115, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %118, i32 noundef 2592) #14
  %sg_rx_p = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 7
  %119 = ptrtoint ptr %sg_rx_p to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call8.i, ptr %sg_rx_p, align 4
  %tobool177.not = icmp eq ptr %call8.i, null
  br i1 %tobool177.not, label %if.end7.i.cleanup_crit_edge, label %for.body185.lr.ph

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body185.lr.ph:                                ; preds = %if.end7.i
  tail call void @sg_init_table(ptr noundef nonnull %call8.i, i32 noundef %num.1) #9
  %120 = ptrtoint ptr %sg_rx_p to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sg_rx_p, align 4
  %sub186 = add nsw i32 %num.1, -2
  %sub199 = add nsw i32 %num.1, -1
  %rx_buf_virt226 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 12
  %rx_buf_dma = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 14
  %sub203 = add nsw i32 %num.1, -2
  %mul204 = mul i32 %sub203, %size.0
  %add205 = add i32 %mul204, %rem.1
  %mul = mul nuw i32 %sub186, %size.0
  br label %for.body185

for.body185:                                      ; preds = %if.end235.for.body185_crit_edge, %for.body185.lr.ph
  %sg.0783 = phi ptr [ %121, %for.body185.lr.ph ], [ %incdec.ptr240, %if.end235.for.body185_crit_edge ]
  %i.2781 = phi i32 [ 0, %for.body185.lr.ph ], [ %inc239, %if.end235.for.body185_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2781, i32 %sub186)
  %cmp187 = icmp eq i32 %i.2781, %sub186
  br i1 %cmp187, label %if.then189, label %if.else198

if.then189:                                       ; preds = %for.body185
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.0783, i32 0, i32 1
  %122 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %mul, ptr %offset, align 4
  %123 = ptrtoint ptr %bpw to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %bpw, align 4
  %div191 = sdiv i32 %124, 8
  %mul192 = mul i32 %div191, %mul
  store i32 %mul192, ptr %offset, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %125 = load ptr, ptr @mem_map, align 4
  %126 = ptrtoint ptr %rx_buf_virt226 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rx_buf_virt226, align 4
  %128 = ptrtoint ptr %127 to i32
  %sub194 = add i32 %128, 1073741824
  %shr = lshr i32 %sub194, 12
  %add.ptr = getelementptr %struct.page, ptr %125, i32 %shr
  %129 = ptrtoint ptr %sg.0783 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sg.0783, align 4
  %131 = ptrtoint ptr %add.ptr to i32
  %and2.i.i = and i32 %131, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !297

do.body5.i.i:                                     ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !298
  unreachable

do.body11.i.i:                                    ; preds = %if.then189
  %and.i.i.i = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !297

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !299
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = and i32 %130, 3
  %or.i.i637 = or i32 %and.i.i, %131
  %132 = ptrtoint ptr %sg.0783 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or.i.i637, ptr %sg.0783, align 4
  %133 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %mul192, ptr %offset, align 4
  br label %if.end235

if.else198:                                       ; preds = %for.body185
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2781, i32 %sub199)
  %cmp200 = icmp eq i32 %i.2781, %sub199
  br i1 %cmp200, label %if.then202, label %if.else219

if.then202:                                       ; preds = %if.else198
  %offset206 = getelementptr inbounds %struct.scatterlist, ptr %sg.0783, i32 0, i32 1
  %134 = ptrtoint ptr %offset206 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %add205, ptr %offset206, align 4
  %135 = ptrtoint ptr %bpw to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %bpw, align 4
  %div208 = sdiv i32 %136, 8
  %mul209 = mul i32 %div208, %add205
  store i32 %mul209, ptr %offset206, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %137 = load ptr, ptr @mem_map, align 4
  %138 = ptrtoint ptr %rx_buf_virt226 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rx_buf_virt226, align 4
  %140 = ptrtoint ptr %139 to i32
  %sub212 = add i32 %140, 1073741824
  %shr213 = lshr i32 %sub212, 12
  %add.ptr216 = getelementptr %struct.page, ptr %137, i32 %shr213
  %141 = ptrtoint ptr %sg.0783 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %sg.0783, align 4
  %143 = ptrtoint ptr %add.ptr216 to i32
  %and2.i.i638 = and i32 %143, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i638)
  %tobool.not.i.i639 = icmp eq i32 %and2.i.i638, 0
  br i1 %tobool.not.i.i639, label %do.body11.i.i643, label %do.body5.i.i640, !prof !297

do.body5.i.i640:                                  ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !298
  unreachable

do.body11.i.i643:                                 ; preds = %if.then202
  %and.i.i.i641 = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i641)
  %tobool.i.not.i.i642 = icmp eq i32 %and.i.i.i641, 0
  br i1 %tobool.i.not.i.i642, label %sg_set_page.exit649, label %do.body19.i.i644, !prof !297

do.body19.i.i644:                                 ; preds = %do.body11.i.i643
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !299
  unreachable

sg_set_page.exit649:                              ; preds = %do.body11.i.i643
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i645 = and i32 %142, 3
  %or.i.i646 = or i32 %and.i.i645, %143
  %144 = ptrtoint ptr %sg.0783 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %or.i.i646, ptr %sg.0783, align 4
  %145 = ptrtoint ptr %offset206 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %mul209, ptr %offset206, align 4
  br label %if.end235

if.else219:                                       ; preds = %if.else198
  %mul220 = mul nuw i32 %i.2781, %size.0
  %offset221 = getelementptr inbounds %struct.scatterlist, ptr %sg.0783, i32 0, i32 1
  %146 = ptrtoint ptr %offset221 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %mul220, ptr %offset221, align 4
  %147 = ptrtoint ptr %bpw to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %bpw, align 4
  %div223 = sdiv i32 %148, 8
  %mul224 = mul i32 %div223, %mul220
  store i32 %mul224, ptr %offset221, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %149 = load ptr, ptr @mem_map, align 4
  %150 = ptrtoint ptr %rx_buf_virt226 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %rx_buf_virt226, align 4
  %152 = ptrtoint ptr %151 to i32
  %sub227 = add i32 %152, 1073741824
  %shr228 = lshr i32 %sub227, 12
  %add.ptr231 = getelementptr %struct.page, ptr %149, i32 %shr228
  %153 = ptrtoint ptr %sg.0783 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %sg.0783, align 4
  %155 = ptrtoint ptr %add.ptr231 to i32
  %and2.i.i650 = and i32 %155, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i650)
  %tobool.not.i.i651 = icmp eq i32 %and2.i.i650, 0
  br i1 %tobool.not.i.i651, label %do.body11.i.i655, label %do.body5.i.i652, !prof !297

do.body5.i.i652:                                  ; preds = %if.else219
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !298
  unreachable

do.body11.i.i655:                                 ; preds = %if.else219
  %and.i.i.i653 = and i32 %154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i653)
  %tobool.i.not.i.i654 = icmp eq i32 %and.i.i.i653, 0
  br i1 %tobool.i.not.i.i654, label %sg_set_page.exit661, label %do.body19.i.i656, !prof !297

do.body19.i.i656:                                 ; preds = %do.body11.i.i655
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !299
  unreachable

sg_set_page.exit661:                              ; preds = %do.body11.i.i655
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i657 = and i32 %154, 3
  %or.i.i658 = or i32 %and.i.i657, %155
  %156 = ptrtoint ptr %sg.0783 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %or.i.i658, ptr %sg.0783, align 4
  %157 = ptrtoint ptr %offset221 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %mul224, ptr %offset221, align 4
  br label %if.end235

if.end235:                                        ; preds = %sg_set_page.exit661, %sg_set_page.exit649, %sg_set_page.exit
  %size.0.sink796 = phi i32 [ %size.0, %sg_set_page.exit649 ], [ %size.0, %sg_set_page.exit661 ], [ %rem.1, %sg_set_page.exit ]
  %length.i648 = getelementptr inbounds %struct.scatterlist, ptr %sg.0783, i32 0, i32 2
  %158 = ptrtoint ptr %length.i648 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %size.0.sink796, ptr %length.i648, align 4
  %dma_length218 = getelementptr inbounds %struct.scatterlist, ptr %sg.0783, i32 0, i32 4
  %159 = ptrtoint ptr %dma_length218 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %size.0.sink796, ptr %dma_length218, align 4
  %160 = ptrtoint ptr %rx_buf_dma to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %rx_buf_dma, align 4
  %offset236 = getelementptr inbounds %struct.scatterlist, ptr %sg.0783, i32 0, i32 1
  %162 = ptrtoint ptr %offset236 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %offset236, align 4
  %add237 = add i32 %163, %161
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0783, i32 0, i32 3
  %164 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %add237, ptr %dma_address, align 4
  %inc239 = add nuw nsw i32 %i.2781, 1
  %incdec.ptr240 = getelementptr %struct.scatterlist, ptr %sg.0783, i32 1
  %exitcond.not = icmp eq i32 %inc239, %num.1
  br i1 %exitcond.not, label %for.end241, label %if.end235.for.body185_crit_edge

if.end235.for.body185_crit_edge:                  ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body185

for.end241:                                       ; preds = %if.end235
  %165 = ptrtoint ptr %sg_rx_p to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %sg_rx_p, align 4
  %chan_rx = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 5
  %167 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %chan_rx, align 4
  %tobool.not.i = icmp eq ptr %168, null
  br i1 %tobool.not.i, label %for.end241.do.end248_crit_edge, label %lor.lhs.false.i

for.end241.do.end248_crit_edge:                   ; preds = %for.end241
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end248

lor.lhs.false.i:                                  ; preds = %for.end241
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  %tobool1.not.i = icmp eq ptr %170, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end248_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end248_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end248

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %170, i32 0, i32 39
  %171 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %172, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end248_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.do.end248_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end248

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %172(ptr noundef nonnull %168, ptr noundef %166, i32 noundef %num.1, i32 noundef 2, i32 noundef 3, ptr noundef null) #9
  %tobool244.not = icmp eq ptr %call.i, null
  br i1 %tobool244.not, label %dmaengine_prep_slave_sg.exit.do.end248_crit_edge, label %if.end251

dmaengine_prep_slave_sg.exit.do.end248_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end248

do.end248:                                        ; preds = %dmaengine_prep_slave_sg.exit.do.end248_crit_edge, %lor.lhs.false2.i.do.end248_crit_edge, %lor.lhs.false.i.do.end248_crit_edge, %for.end241.do.end248_crit_edge
  %173 = ptrtoint ptr %master172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %master172, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %174, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.83) #13
  br label %cleanup

if.end251:                                        ; preds = %dmaengine_prep_slave_sg.exit
  %175 = ptrtoint ptr %master172 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %master172, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %176, ptr noundef %166, i32 noundef %num.1, i32 noundef 2) #9
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %177 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @pch_dma_rx_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %178 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %data, ptr %callback_param, align 4
  %nent = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 10
  %179 = ptrtoint ptr %nent to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %num.1, ptr %nent, align 4
  %desc_rx254 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 1
  %180 = ptrtoint ptr %desc_rx254 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %call.i, ptr %desc_rx254, align 4
  %181 = ptrtoint ptr %bpw_len to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %bpw_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %182)
  %cmp256 = icmp ugt i32 %182, 16
  br i1 %cmp256, label %if.then258, label %if.end251.if.end281_crit_edge

if.end251.if.end281_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end281

if.then258:                                       ; preds = %if.end251
  %.frozen803 = freeze i32 %182
  %div265 = udiv i32 %.frozen803, 12
  %183 = mul i32 %div265, 12
  %rem260.decomposed = sub i32 %.frozen803, %183
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem260.decomposed)
  %cmp261 = icmp ugt i32 %rem260.decomposed, 4
  br i1 %cmp261, label %if.then263, label %if.else270

if.then263:                                       ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #11
  %add266 = add nuw nsw i32 %div265, 1
  %sub269 = add nsw i32 %rem260.decomposed, -4
  br label %if.end281

if.else270:                                       ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #11
  %sub276 = add nuw nsw i32 %rem260.decomposed, 8
  br label %if.end281

if.end281:                                        ; preds = %if.else270, %if.then263, %if.end251.if.end281_crit_edge
  %head.0 = phi i32 [ 4, %if.else270 ], [ 4, %if.then263 ], [ 0, %if.end251.if.end281_crit_edge ]
  %rem.3 = phi i32 [ %sub276, %if.else270 ], [ %sub269, %if.then263 ], [ %182, %if.end251.if.end281_crit_edge ]
  %size.1 = phi i32 [ 12, %if.else270 ], [ 12, %if.then263 ], [ %182, %if.end251.if.end281_crit_edge ]
  %num.3 = phi i32 [ %div265, %if.else270 ], [ %add266, %if.then263 ], [ 1, %if.end251.if.end281_crit_edge ]
  %184 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.3, i32 20) #9
  %185 = extractvalue { i32, i1 } %184, 1
  br i1 %185, label %kmalloc_array.exit696.thread, label %if.end7.i694, !prof !296

kmalloc_array.exit696.thread:                     ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #11
  %sg_tx_p758 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 6
  %186 = ptrtoint ptr %sg_tx_p758 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr null, ptr %sg_tx_p758, align 4
  br label %cleanup

if.end7.i694:                                     ; preds = %if.end281
  %187 = extractvalue { i32, i1 } %184, 0
  %call8.i693 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %187, i32 noundef 2592) #14
  %sg_tx_p = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 6
  %188 = ptrtoint ptr %sg_tx_p to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %call8.i693, ptr %sg_tx_p, align 4
  %tobool284.not = icmp eq ptr %call8.i693, null
  br i1 %tobool284.not, label %if.end7.i694.cleanup_crit_edge, label %for.body292.lr.ph

if.end7.i694.cleanup_crit_edge:                   ; preds = %if.end7.i694
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body292.lr.ph:                                ; preds = %if.end7.i694
  tail call void @sg_init_table(ptr noundef nonnull %call8.i693, i32 noundef %num.3) #9
  %189 = ptrtoint ptr %sg_tx_p to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %sg_tx_p, align 4
  %sub308 = add nsw i32 %num.3, -1
  %tx_buf_virt335 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 11
  %add303 = add nuw nsw i32 %size.1, %head.0
  %tx_buf_dma = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 13
  %mul312 = mul i32 %sub308, %size.1
  %add313 = add i32 %mul312, %head.0
  br label %for.body292

for.body292:                                      ; preds = %if.end344.for.body292_crit_edge, %for.body292.lr.ph
  %sg.1788 = phi ptr [ %190, %for.body292.lr.ph ], [ %incdec.ptr350, %if.end344.for.body292_crit_edge ]
  %i.3786 = phi i32 [ 0, %for.body292.lr.ph ], [ %inc349, %if.end344.for.body292_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3786)
  %cmp293 = icmp eq i32 %i.3786, 0
  br i1 %cmp293, label %if.then295, label %if.else307

if.then295:                                       ; preds = %for.body292
  %offset296 = getelementptr inbounds %struct.scatterlist, ptr %sg.1788, i32 0, i32 1
  %191 = ptrtoint ptr %offset296 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 0, ptr %offset296, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %192 = load ptr, ptr @mem_map, align 4
  %193 = ptrtoint ptr %tx_buf_virt335 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %tx_buf_virt335, align 4
  %195 = ptrtoint ptr %194 to i32
  %sub298 = add i32 %195, 1073741824
  %shr299 = lshr i32 %sub298, 12
  %add.ptr302 = getelementptr %struct.page, ptr %192, i32 %shr299
  %196 = ptrtoint ptr %sg.1788 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %sg.1788, align 4
  %198 = ptrtoint ptr %add.ptr302 to i32
  %and2.i.i697 = and i32 %198, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i697)
  %tobool.not.i.i698 = icmp eq i32 %and2.i.i697, 0
  br i1 %tobool.not.i.i698, label %do.body11.i.i702, label %do.body5.i.i699, !prof !297

do.body5.i.i699:                                  ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !298
  unreachable

do.body11.i.i702:                                 ; preds = %if.then295
  %and.i.i.i700 = and i32 %197, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i700)
  %tobool.i.not.i.i701 = icmp eq i32 %and.i.i.i700, 0
  br i1 %tobool.i.not.i.i701, label %sg_set_page.exit708, label %do.body19.i.i703, !prof !297

do.body19.i.i703:                                 ; preds = %do.body11.i.i702
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !299
  unreachable

sg_set_page.exit708:                              ; preds = %do.body11.i.i702
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i704 = and i32 %197, 3
  %or.i.i705 = or i32 %and.i.i704, %198
  %199 = ptrtoint ptr %sg.1788 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %or.i.i705, ptr %sg.1788, align 4
  %200 = ptrtoint ptr %offset296 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %offset296, align 4
  br label %if.end344

if.else307:                                       ; preds = %for.body292
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3786, i32 %sub308)
  %cmp309 = icmp eq i32 %i.3786, %sub308
  br i1 %cmp309, label %if.then311, label %if.else327

if.then311:                                       ; preds = %if.else307
  %offset314 = getelementptr inbounds %struct.scatterlist, ptr %sg.1788, i32 0, i32 1
  %201 = ptrtoint ptr %offset314 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %add313, ptr %offset314, align 4
  %202 = ptrtoint ptr %bpw to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %bpw, align 4
  %div316 = sdiv i32 %203, 8
  %mul317 = mul i32 %div316, %add313
  store i32 %mul317, ptr %offset314, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %204 = load ptr, ptr @mem_map, align 4
  %205 = ptrtoint ptr %tx_buf_virt335 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %tx_buf_virt335, align 4
  %207 = ptrtoint ptr %206 to i32
  %sub320 = add i32 %207, 1073741824
  %shr321 = lshr i32 %sub320, 12
  %add.ptr324 = getelementptr %struct.page, ptr %204, i32 %shr321
  %208 = ptrtoint ptr %sg.1788 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %sg.1788, align 4
  %210 = ptrtoint ptr %add.ptr324 to i32
  %and2.i.i709 = and i32 %210, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i709)
  %tobool.not.i.i710 = icmp eq i32 %and2.i.i709, 0
  br i1 %tobool.not.i.i710, label %do.body11.i.i714, label %do.body5.i.i711, !prof !297

do.body5.i.i711:                                  ; preds = %if.then311
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !298
  unreachable

do.body11.i.i714:                                 ; preds = %if.then311
  %and.i.i.i712 = and i32 %209, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i712)
  %tobool.i.not.i.i713 = icmp eq i32 %and.i.i.i712, 0
  br i1 %tobool.i.not.i.i713, label %sg_set_page.exit720, label %do.body19.i.i715, !prof !297

do.body19.i.i715:                                 ; preds = %do.body11.i.i714
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !299
  unreachable

sg_set_page.exit720:                              ; preds = %do.body11.i.i714
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i716 = and i32 %209, 3
  %or.i.i717 = or i32 %and.i.i716, %210
  %211 = ptrtoint ptr %sg.1788 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %or.i.i717, ptr %sg.1788, align 4
  %212 = ptrtoint ptr %offset314 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %mul317, ptr %offset314, align 4
  br label %if.end344

if.else327:                                       ; preds = %if.else307
  %mul328 = mul i32 %i.3786, %size.1
  %add329 = add i32 %mul328, %head.0
  %offset330 = getelementptr inbounds %struct.scatterlist, ptr %sg.1788, i32 0, i32 1
  %213 = ptrtoint ptr %offset330 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %add329, ptr %offset330, align 4
  %214 = ptrtoint ptr %bpw to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %bpw, align 4
  %div332 = sdiv i32 %215, 8
  %mul333 = mul i32 %div332, %add329
  store i32 %mul333, ptr %offset330, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %216 = load ptr, ptr @mem_map, align 4
  %217 = ptrtoint ptr %tx_buf_virt335 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %tx_buf_virt335, align 4
  %219 = ptrtoint ptr %218 to i32
  %sub336 = add i32 %219, 1073741824
  %shr337 = lshr i32 %sub336, 12
  %add.ptr340 = getelementptr %struct.page, ptr %216, i32 %shr337
  %220 = ptrtoint ptr %sg.1788 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %sg.1788, align 4
  %222 = ptrtoint ptr %add.ptr340 to i32
  %and2.i.i721 = and i32 %222, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i721)
  %tobool.not.i.i722 = icmp eq i32 %and2.i.i721, 0
  br i1 %tobool.not.i.i722, label %do.body11.i.i726, label %do.body5.i.i723, !prof !297

do.body5.i.i723:                                  ; preds = %if.else327
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !298
  unreachable

do.body11.i.i726:                                 ; preds = %if.else327
  %and.i.i.i724 = and i32 %221, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i724)
  %tobool.i.not.i.i725 = icmp eq i32 %and.i.i.i724, 0
  br i1 %tobool.i.not.i.i725, label %sg_set_page.exit732, label %do.body19.i.i727, !prof !297

do.body19.i.i727:                                 ; preds = %do.body11.i.i726
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !299
  unreachable

sg_set_page.exit732:                              ; preds = %do.body11.i.i726
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i728 = and i32 %221, 3
  %or.i.i729 = or i32 %and.i.i728, %222
  %223 = ptrtoint ptr %sg.1788 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %or.i.i729, ptr %sg.1788, align 4
  %224 = ptrtoint ptr %offset330 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %mul333, ptr %offset330, align 4
  br label %if.end344

if.end344:                                        ; preds = %sg_set_page.exit732, %sg_set_page.exit720, %sg_set_page.exit708
  %rem.3.sink797 = phi i32 [ %rem.3, %sg_set_page.exit720 ], [ %size.1, %sg_set_page.exit732 ], [ %add303, %sg_set_page.exit708 ]
  %length.i719 = getelementptr inbounds %struct.scatterlist, ptr %sg.1788, i32 0, i32 2
  %225 = ptrtoint ptr %length.i719 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %rem.3.sink797, ptr %length.i719, align 4
  %dma_length326 = getelementptr inbounds %struct.scatterlist, ptr %sg.1788, i32 0, i32 4
  %226 = ptrtoint ptr %dma_length326 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %rem.3.sink797, ptr %dma_length326, align 4
  %227 = ptrtoint ptr %tx_buf_dma to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %tx_buf_dma, align 4
  %offset345 = getelementptr inbounds %struct.scatterlist, ptr %sg.1788, i32 0, i32 1
  %229 = ptrtoint ptr %offset345 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %offset345, align 4
  %add346 = add i32 %230, %228
  %dma_address347 = getelementptr inbounds %struct.scatterlist, ptr %sg.1788, i32 0, i32 3
  %231 = ptrtoint ptr %dma_address347 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %add346, ptr %dma_address347, align 4
  %inc349 = add nuw nsw i32 %i.3786, 1
  %incdec.ptr350 = getelementptr %struct.scatterlist, ptr %sg.1788, i32 1
  %exitcond792.not = icmp eq i32 %inc349, %num.3
  br i1 %exitcond792.not, label %for.end351, label %if.end344.for.body292_crit_edge

if.end344.for.body292_crit_edge:                  ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body292

for.end351:                                       ; preds = %if.end344
  %232 = ptrtoint ptr %sg_tx_p to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %sg_tx_p, align 4
  %chan_tx = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 4
  %234 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %chan_tx, align 4
  %tobool.not.i733 = icmp eq ptr %235, null
  br i1 %tobool.not.i733, label %for.end351.do.end358_crit_edge, label %lor.lhs.false.i735

for.end351.do.end358_crit_edge:                   ; preds = %for.end351
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end358

lor.lhs.false.i735:                               ; preds = %for.end351
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %235, align 4
  %tobool1.not.i734 = icmp eq ptr %237, null
  br i1 %tobool1.not.i734, label %lor.lhs.false.i735.do.end358_crit_edge, label %lor.lhs.false2.i738

lor.lhs.false.i735.do.end358_crit_edge:           ; preds = %lor.lhs.false.i735
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end358

lor.lhs.false2.i738:                              ; preds = %lor.lhs.false.i735
  %device_prep_slave_sg.i736 = getelementptr inbounds %struct.dma_device, ptr %237, i32 0, i32 39
  %238 = ptrtoint ptr %device_prep_slave_sg.i736 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %device_prep_slave_sg.i736, align 4
  %tobool4.not.i737 = icmp eq ptr %239, null
  br i1 %tobool4.not.i737, label %lor.lhs.false2.i738.do.end358_crit_edge, label %dmaengine_prep_slave_sg.exit742

lor.lhs.false2.i738.do.end358_crit_edge:          ; preds = %lor.lhs.false2.i738
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end358

dmaengine_prep_slave_sg.exit742:                  ; preds = %lor.lhs.false2.i738
  %call.i739 = tail call ptr %239(ptr noundef nonnull %235, ptr noundef %233, i32 noundef %num.3, i32 noundef 1, i32 noundef 3, ptr noundef null) #9
  %tobool354.not = icmp eq ptr %call.i739, null
  br i1 %tobool354.not, label %dmaengine_prep_slave_sg.exit742.do.end358_crit_edge, label %if.end361

dmaengine_prep_slave_sg.exit742.do.end358_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit742
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end358

do.end358:                                        ; preds = %dmaengine_prep_slave_sg.exit742.do.end358_crit_edge, %lor.lhs.false2.i738.do.end358_crit_edge, %lor.lhs.false.i735.do.end358_crit_edge, %for.end351.do.end358_crit_edge
  %240 = ptrtoint ptr %master172 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %master172, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %241, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.83) #13
  br label %cleanup

if.end361:                                        ; preds = %dmaengine_prep_slave_sg.exit742
  %242 = ptrtoint ptr %master172 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %master172, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %243, ptr noundef %233, i32 noundef %num.3, i32 noundef 1) #9
  %callback364 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i739, i32 0, i32 6
  %244 = ptrtoint ptr %callback364 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr null, ptr %callback364, align 4
  %callback_param365 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i739, i32 0, i32 8
  %245 = ptrtoint ptr %callback_param365 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %data, ptr %callback_param365, align 4
  %246 = ptrtoint ptr %nent to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %num.3, ptr %nent, align 4
  %247 = ptrtoint ptr %dma1 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %call.i739, ptr %dma1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_handle_dma.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_handle_dma, %do.body389)) #9
          to label %if.then382 [label %do.body389], !srcloc !290

if.then382:                                       ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #11
  %248 = ptrtoint ptr %master172 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %master172, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_handle_dma.__UNIQUE_ID_ddebug264, ptr noundef %249, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.83) #9
  br label %do.body389

do.body389:                                       ; preds = %if.then382, %if.end361
  %call397 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock165) #9
  %250 = ptrtoint ptr %master172 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %master172, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %251, i32 0, i32 8
  %252 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %driver_data.i.i.i, align 4
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %253, align 4
  %add.ptr.i = getelementptr i8, ptr %255, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #9, !srcloc !294
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %256 = ptrtoint ptr %tx_submit to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %tx_submit, align 4
  %call403 = tail call i32 %257(ptr noundef nonnull %call.i) #9
  %tx_submit404 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i739, i32 0, i32 4
  %258 = ptrtoint ptr %tx_submit404 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %tx_submit404, align 4
  %call405 = tail call i32 %259(ptr noundef nonnull %call.i739) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock165, i32 noundef %call397) #9
  %transfer_complete = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 5
  %260 = ptrtoint ptr %transfer_complete to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 0, ptr %transfer_complete, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body389, %do.end358, %if.end7.i694.cleanup_crit_edge, %kmalloc_array.exit696.thread, %do.end248, %if.end7.i.cleanup_crit_edge, %kmalloc_array.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pch_spi_start_transfer(ptr noundef %data) unnamed_addr #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %master = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %7 = and i32 %6, -18808833
  %8 = or i32 %7, 16777216
  %9 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %8) #9, !srcloc !294
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_start_transfer.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_start_transfer, %do.end15)) #9
          to label %if.then [label %do.end15], !srcloc !290

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_start_transfer.__UNIQUE_ID_ddebug260, ptr noundef %14, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91) #9
  br label %do.end15

do.end15:                                         ; preds = %if.then, %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 791) #9
  %transfer_complete = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 5
  %15 = ptrtoint ptr %transfer_complete to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %transfer_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool23.not = icmp eq i8 %16, 0
  br i1 %tobool23.not, label %if.then37, label %do.end15.if.end78_crit_edge

do.end15.if.end78_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then37:                                        ; preds = %do.end15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %17 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %wait = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 4
  %call40170 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %18 = ptrtoint ptr %transfer_complete to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %transfer_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool43.not171.not = icmp eq i8 %19, 0
  br i1 %tobool43.not171.not, label %if.then37.if.end62_crit_edge, label %if.end69.thread

if.then37.if.end62_crit_edge:                     ; preds = %if.then37
  br label %if.end62

if.end69.thread:                                  ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end78

if.end62:                                         ; preds = %cleanup.if.end62_crit_edge, %if.then37.if.end62_crit_edge
  %__ret38.1174 = phi i32 [ %__ret38.1, %cleanup.if.end62_crit_edge ], [ 20, %if.then37.if.end62_crit_edge ]
  %call40173 = phi i32 [ %call40, %cleanup.if.end62_crit_edge ], [ %call40170, %if.then37.if.end62_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40173)
  %tobool63.not = icmp eq i32 %call40173, 0
  br i1 %tobool63.not, label %cleanup, label %if.end69.thread164

if.end69.thread164:                               ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end78

cleanup:                                          ; preds = %if.end62
  %call66 = call i32 @schedule_timeout(i32 noundef %__ret38.1174) #9
  %call40 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %20 = ptrtoint ptr %transfer_complete to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %transfer_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool43.not = icmp eq i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool48.not = icmp eq i32 %call66, 0
  %spec.store.select110 = select i1 %tobool48.not, i32 1, i32 %call66
  %__ret38.1 = select i1 %tobool43.not, i32 %call66, i32 %spec.store.select110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret38.1)
  %tobool55.not = icmp eq i32 %__ret38.1, 0
  %not.tobool43.not = xor i1 %tobool43.not, true
  %22 = select i1 %not.tobool43.not, i1 true, i1 %tobool55.not
  br i1 %22, label %if.end69, label %cleanup.if.end62_crit_edge

cleanup.if.end62_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end69:                                         ; preds = %cleanup
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret38.1)
  %tobool71.not = icmp eq i32 %__ret38.1, 0
  br i1 %tobool71.not, label %do.end75, label %if.end69.if.end78_crit_edge

if.end69.if.end78_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

do.end75:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.91) #13
  br label %if.end78

if.end78:                                         ; preds = %do.end75, %if.end69.if.end78_crit_edge, %if.end69.thread164, %if.end69.thread, %do.end15.if.end78_crit_edge
  %__ret.1163 = phi i32 [ 0, %do.end75 ], [ %__ret38.1, %if.end69.if.end78_crit_edge ], [ %call40173, %if.end69.thread164 ], [ 20, %do.end15.if.end78_crit_edge ], [ 20, %if.end69.thread ]
  %dma1 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23
  %25 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %master, align 4
  %sg_rx_p = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 7
  %27 = ptrtoint ptr %sg_rx_p to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sg_rx_p, align 4
  %nent = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 10
  %29 = ptrtoint ptr %nent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nent, align 4
  call void @dma_sync_sg_for_cpu(ptr noundef %26, ptr noundef %28, i32 noundef %30, i32 noundef 2) #9
  %31 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %master, align 4
  %sg_tx_p = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 6
  %33 = ptrtoint ptr %sg_tx_p to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sg_tx_p, align 4
  %35 = ptrtoint ptr %nent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nent, align 4
  call void @dma_sync_sg_for_cpu(ptr noundef %32, ptr noundef %34, i32 noundef %36, i32 noundef 2) #9
  %tx_buf_virt = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 11
  %37 = ptrtoint ptr %tx_buf_virt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_buf_virt, align 4
  %39 = call ptr @memset(ptr %38, i32 0, i32 4096)
  %desc_rx = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 23, i32 1
  %40 = ptrtoint ptr %desc_rx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc_rx, align 4
  %flags.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i, align 4
  %or.i146 = or i32 %43, 2
  store i32 %or.i146, ptr %flags.i, align 4
  %44 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma1, align 4
  %flags.i147 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i147 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i147, align 4
  %or.i148 = or i32 %47, 2
  store i32 %or.i148, ptr %flags.i147, align 4
  %48 = ptrtoint ptr %sg_tx_p to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sg_tx_p, align 4
  call void @kfree(ptr noundef %49) #9
  %50 = ptrtoint ptr %sg_rx_p to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sg_rx_p, align 4
  call void @kfree(ptr noundef %51) #9
  %call96 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %52 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i149 = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %driver_data.i.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i.i.i149, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %59 = and i32 %58, -18874113
  %60 = ptrtoint ptr %driver_data.i.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %driver_data.i.i.i.i149, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %59) #9, !srcloc !294
  %64 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %master, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %driver_data.i.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %add.ptr.i = getelementptr i8, ptr %69, i32 8
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %71 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver_data.i.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %add.ptr.i152 = getelementptr i8, ptr %74, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152, i32 %70) #9, !srcloc !294
  %75 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %76, i32 0, i32 8
  %77 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #9, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %82 = or i32 %81, 1
  %83 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %82) #9, !srcloc !294
  %87 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #9, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %92 = and i32 %91, -2
  %93 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %92) #9, !srcloc !294
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call96) #9
  ret i32 %__ret.1163
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_spi_set_tx(ptr nocapture noundef %data, ptr nocapture noundef %bpw) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_trans = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_trans, align 4
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_set_tx.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_set_tx, %do.end)) #9
          to label %if.then6 [label %do.end], !srcloc !290

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %master = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_set_tx.__UNIQUE_ID_ddebug251, ptr noundef %5, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.94) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %master7 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %master7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master7, align 4
  %8 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_trans, align 4
  %speed_hz9 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %speed_hz9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed_hz9, align 4
  %mul.i = shl i32 %11, 1
  %div.i = udiv i32 50000000, %mul.i
  %12 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 1023) #9
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %18 = and i32 %17, 16580607
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  %or.i.i = or i32 %19, %12
  %20 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %24) #9, !srcloc !294
  br label %if.end10

if.end10:                                         ; preds = %do.end, %entry.if.end10_crit_edge
  %25 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur_trans, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool12.not = icmp eq i8 %28, 0
  br i1 %tobool12.not, label %if.end10.if.else_crit_edge, label %land.lhs.true

if.end10.if.else_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end10
  %current_msg = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 18
  %29 = ptrtoint ptr %current_msg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %current_msg, align 4
  %spi = getelementptr inbounds %struct.spi_message, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %spi, align 4
  %bits_per_word13 = getelementptr inbounds %struct.spi_device, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %bits_per_word13 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bits_per_word13, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %28)
  %cmp.not = icmp eq i8 %34, %28
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %do.body20

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

do.body20:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_set_tx.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_set_tx, %do.end39)) #9
          to label %if.then34 [label %do.end39], !srcloc !290

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %master35 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %35 = ptrtoint ptr %master35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %master35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_set_tx.__UNIQUE_ID_ddebug252, ptr noundef %36, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.94) #9
  br label %do.end39

do.end39:                                         ; preds = %if.then34, %do.body20
  %master40 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %37 = ptrtoint ptr %master40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %master40, align 4
  %39 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur_trans, align 4
  %bits_per_word42 = getelementptr inbounds %struct.spi_transfer, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %bits_per_word42 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bits_per_word42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %42)
  %cmp.i = icmp eq i8 %42, 8
  %driver_data.i.i.i.i.i244 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 8
  %43 = ptrtoint ptr %driver_data.i.i.i.i.i244 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i.i.i.i244, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %add.ptr.i.i.i245 = getelementptr i8, ptr %46, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i245) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  %48 = and i32 %47, -262145
  %49 = ptrtoint ptr %driver_data.i.i.i.i.i244 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver_data.i.i.i.i.i244, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %add.ptr.i5.i.i246 = getelementptr i8, ptr %52, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i246, i32 %48) #9, !srcloc !294
  br label %pch_spi_set_bits_per_word.exit

if.else.i:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  %53 = or i32 %47, 262144
  %54 = ptrtoint ptr %driver_data.i.i.i.i.i244 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i.i.i.i244, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %add.ptr.i5.i5.i = getelementptr i8, ptr %57, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i5.i, i32 %53) #9, !srcloc !294
  br label %pch_spi_set_bits_per_word.exit

pch_spi_set_bits_per_word.exit:                   ; preds = %if.else.i, %if.then.i
  %58 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cur_trans, align 4
  %bits_per_word44 = getelementptr inbounds %struct.spi_transfer, ptr %59, i32 0, i32 8
  br label %if.end50

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end10.if.else_crit_edge
  %current_msg46 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 18
  %60 = ptrtoint ptr %current_msg46 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %current_msg46, align 4
  %spi47 = getelementptr inbounds %struct.spi_message, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %spi47 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %spi47, align 4
  %bits_per_word48 = getelementptr inbounds %struct.spi_device, ptr %63, i32 0, i32 5
  br label %if.end50

if.end50:                                         ; preds = %if.else, %pch_spi_set_bits_per_word.exit
  %storemerge.in.in = phi ptr [ %bits_per_word48, %if.else ], [ %bits_per_word44, %pch_spi_set_bits_per_word.exit ]
  %64 = ptrtoint ptr %storemerge.in.in to i32
  call void @__asan_load1_noabort(i32 %64)
  %storemerge.in = load i8, ptr %storemerge.in.in, align 1
  %storemerge = zext i8 %storemerge.in to i32
  %65 = ptrtoint ptr %bpw to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %storemerge, ptr %bpw, align 4
  %tx_index = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 12
  %66 = ptrtoint ptr %tx_index to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %tx_index, align 4
  %rx_index = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 13
  %67 = ptrtoint ptr %rx_index to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %rx_index, align 4
  %68 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur_trans, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len, align 4
  %72 = load i32, ptr %bpw, align 4
  %div = sdiv i32 %72, 8
  %div52 = udiv i32 %71, %div
  %bpw_len = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 10
  %73 = ptrtoint ptr %bpw_len to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %div52, ptr %bpw_len, align 4
  %74 = load i32, ptr %len, align 4
  %mul = shl i32 %74, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #14
  %pkt_tx_buff292 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 14
  %75 = ptrtoint ptr %pkt_tx_buff292 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call9.i.i, ptr %pkt_tx_buff292, align 4
  %cmp57.not293 = icmp eq ptr %call9.i.i, null
  br i1 %cmp57.not293, label %if.end50.if.end67_crit_edge, label %if.end8.i.i273

if.end50.if.end67_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.end8.i.i273:                                   ; preds = %if.end50
  %call9.i.i272 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #14
  %pkt_rx_buff = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 15
  %76 = ptrtoint ptr %pkt_rx_buff to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call9.i.i272, ptr %pkt_rx_buff, align 4
  %tobool62.not = icmp eq ptr %call9.i.i272, null
  br i1 %tobool62.not, label %if.then63, label %if.end8.i.i273.if.end67_crit_edge

if.end8.i.i273.if.end67_crit_edge:                ; preds = %if.end8.i.i273
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then63:                                        ; preds = %if.end8.i.i273
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %pkt_tx_buff292 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pkt_tx_buff292, align 4
  tail call void @kfree(ptr noundef %78) #9
  %79 = ptrtoint ptr %pkt_tx_buff292 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %pkt_tx_buff292, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %if.end8.i.i273.if.end67_crit_edge, %if.end50.if.end67_crit_edge
  %pkt_rx_buff68 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 15
  %80 = ptrtoint ptr %pkt_rx_buff68 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pkt_rx_buff68, align 4
  %tobool69.not = icmp eq ptr %81, null
  br i1 %tobool69.not, label %if.then70, label %if.end95

if.then70:                                        ; preds = %if.end67
  %queue = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 8
  %82 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %queue, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %cmp81.not317 = icmp eq ptr %85, %83
  br i1 %cmp81.not317, label %if.then70.cleanup_crit_edge, label %if.then70.for.body_crit_edge

if.then70.for.body_crit_edge:                     ; preds = %if.then70
  br label %for.body

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %if.then70.for.body_crit_edge
  %.pn.in318 = phi ptr [ %.pn320, %list_del_init.exit.for.body_crit_edge ], [ %85, %if.then70.for.body_crit_edge ]
  %86 = ptrtoint ptr %.pn.in318 to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pn320 = load ptr, ptr %.pn.in318, align 4
  %status = getelementptr i8, ptr %.pn.in318, i32 -4
  %87 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -12, ptr %status, align 4
  %complete = getelementptr i8, ptr %.pn.in318, i32 -20
  %88 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %complete, align 4
  %tobool85.not = icmp eq ptr %89, null
  br i1 %tobool85.not, label %for.body.if.end88_crit_edge, label %if.then86

for.body.if.end88_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then86:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %context = getelementptr i8, ptr %.pn.in318, i32 -16
  %90 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %context, align 4
  tail call void %89(ptr noundef %91) #9
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %for.body.if.end88_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in318) #9
  br i1 %call.i.i, label %if.end.i.i276, label %if.end88.list_del_init.exit_crit_edge

if.end88.list_del_init.exit_crit_edge:            ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i276:                                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in318, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i.i, align 4
  %94 = ptrtoint ptr %.pn.in318 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %.pn.in318, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev1.i.i.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %95, ptr %93, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i276, %if.end88.list_del_init.exit_crit_edge
  %98 = ptrtoint ptr %.pn.in318 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %.pn.in318, ptr %.pn.in318, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in318, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %.pn.in318, ptr %prev.i3.i, align 4
  %100 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %queue, align 4
  %cmp81.not = icmp eq ptr %.pn320, %101
  br i1 %cmp81.not, label %list_del_init.exit.cleanup_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end95:                                         ; preds = %if.end67
  %102 = ptrtoint ptr %cur_trans to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cur_trans, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %cmp98.not = icmp eq ptr %105, null
  br i1 %cmp98.not, label %if.end95.if.end130_crit_edge, label %if.then100

if.end95.if.end130_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

if.then100:                                       ; preds = %if.end95
  %106 = ptrtoint ptr %bpw to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bpw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %107)
  %cmp101 = icmp eq i32 %107, 8
  %108 = ptrtoint ptr %bpw_len to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bpw_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp108311.not = icmp eq i32 %109, 0
  br i1 %cmp101, label %for.cond106.preheader, label %for.cond118.preheader

for.cond118.preheader:                            ; preds = %if.then100
  br i1 %cmp108311.not, label %for.cond118.preheader.if.end130_crit_edge, label %for.cond118.preheader.for.body122_crit_edge

for.cond118.preheader.for.body122_crit_edge:      ; preds = %for.cond118.preheader
  br label %for.body122

for.cond118.preheader.if.end130_crit_edge:        ; preds = %for.cond118.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

for.cond106.preheader:                            ; preds = %if.then100
  br i1 %cmp108311.not, label %for.cond106.preheader.if.end130_crit_edge, label %for.cond106.preheader.for.body110_crit_edge

for.cond106.preheader.for.body110_crit_edge:      ; preds = %for.cond106.preheader
  br label %for.body110

for.cond106.preheader.if.end130_crit_edge:        ; preds = %for.cond106.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

for.body110:                                      ; preds = %for.body110.for.body110_crit_edge, %for.cond106.preheader.for.body110_crit_edge
  %j.0313 = phi i32 [ %inc, %for.body110.for.body110_crit_edge ], [ 0, %for.cond106.preheader.for.body110_crit_edge ]
  %tx_buf.0312 = phi ptr [ %incdec.ptr, %for.body110.for.body110_crit_edge ], [ %105, %for.cond106.preheader.for.body110_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %tx_buf.0312, i32 1
  %110 = ptrtoint ptr %tx_buf.0312 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %tx_buf.0312, align 1
  %conv111 = zext i8 %111 to i16
  %112 = ptrtoint ptr %pkt_tx_buff292 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pkt_tx_buff292, align 4
  %arrayidx = getelementptr i16, ptr %113, i32 %j.0313
  %114 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv111, ptr %arrayidx, align 2
  %inc = add nuw i32 %j.0313, 1
  %115 = ptrtoint ptr %bpw_len to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bpw_len, align 4
  %cmp108 = icmp ult i32 %inc, %116
  br i1 %cmp108, label %for.body110.for.body110_crit_edge, label %for.body110.if.end130_crit_edge

for.body110.if.end130_crit_edge:                  ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

for.body110.for.body110_crit_edge:                ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body110

for.body122:                                      ; preds = %for.body122.for.body122_crit_edge, %for.cond118.preheader.for.body122_crit_edge
  %j.1310 = phi i32 [ %inc127, %for.body122.for.body122_crit_edge ], [ 0, %for.cond118.preheader.for.body122_crit_edge ]
  %tx_sbuf.0309 = phi ptr [ %incdec.ptr123, %for.body122.for.body122_crit_edge ], [ %105, %for.cond118.preheader.for.body122_crit_edge ]
  %incdec.ptr123 = getelementptr i16, ptr %tx_sbuf.0309, i32 1
  %117 = ptrtoint ptr %tx_sbuf.0309 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %tx_sbuf.0309, align 2
  %119 = ptrtoint ptr %pkt_tx_buff292 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pkt_tx_buff292, align 4
  %arrayidx125 = getelementptr i16, ptr %120, i32 %j.1310
  %121 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %118, ptr %arrayidx125, align 2
  %inc127 = add nuw i32 %j.1310, 1
  %122 = ptrtoint ptr %bpw_len to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %bpw_len, align 4
  %cmp120 = icmp ult i32 %inc127, %123
  br i1 %cmp120, label %for.body122.for.body122_crit_edge, label %for.body122.if.end130_crit_edge

for.body122.if.end130_crit_edge:                  ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

for.body122.for.body122_crit_edge:                ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body122

if.end130:                                        ; preds = %for.body122.if.end130_crit_edge, %for.body110.if.end130_crit_edge, %for.cond106.preheader.if.end130_crit_edge, %for.cond118.preheader.if.end130_crit_edge, %if.end95.if.end130_crit_edge
  %124 = ptrtoint ptr %bpw_len to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %bpw_len, align 4
  %126 = tail call i32 @llvm.umin.i32(i32 %125, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_set_tx.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_set_tx, %do.end155)) #9
          to label %if.then150 [label %do.end155], !srcloc !290

if.then150:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  %master151 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %127 = ptrtoint ptr %master151 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %master151, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_set_tx.__UNIQUE_ID_ddebug253, ptr noundef %128, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94) #9
  br label %do.end155

do.end155:                                        ; preds = %if.then150, %if.end130
  %master156 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %129 = ptrtoint ptr %master156 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %master156, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %130, i32 0, i32 8
  %131 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %driver_data.i.i.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %add.ptr.i = getelementptr i8, ptr %134, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #9, !srcloc !294
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp158314.not = icmp eq i32 %126, 0
  br i1 %cmp158314.not, label %do.end155.for.end167_crit_edge, label %do.end155.for.body160_crit_edge

do.end155.for.body160_crit_edge:                  ; preds = %do.end155
  br label %for.body160

do.end155.for.end167_crit_edge:                   ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end167

for.body160:                                      ; preds = %for.body160.for.body160_crit_edge, %do.end155.for.body160_crit_edge
  %j.2315 = phi i32 [ %inc166, %for.body160.for.body160_crit_edge ], [ 0, %do.end155.for.body160_crit_edge ]
  %135 = ptrtoint ptr %master156 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %master156, align 4
  %137 = ptrtoint ptr %pkt_tx_buff292 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pkt_tx_buff292, align 4
  %arrayidx163 = getelementptr i16, ptr %138, i32 %j.2315
  %139 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %arrayidx163, align 2
  %conv164 = zext i16 %140 to i32
  %driver_data.i.i.i277 = getelementptr inbounds %struct.device, ptr %136, i32 0, i32 8
  %141 = ptrtoint ptr %driver_data.i.i.i277 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %driver_data.i.i.i277, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %add.ptr.i278 = getelementptr i8, ptr %144, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %145 = tail call i32 @llvm.bswap.i32(i32 %conv164) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i278, i32 %145) #9, !srcloc !294
  %inc166 = add nuw nsw i32 %j.2315, 1
  %exitcond.not = icmp eq i32 %inc166, %126
  br i1 %exitcond.not, label %for.body160.for.end167_crit_edge, label %for.body160.for.body160_crit_edge

for.body160.for.body160_crit_edge:                ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body160

for.body160.for.end167_crit_edge:                 ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end167

for.end167:                                       ; preds = %for.body160.for.end167_crit_edge, %do.end155.for.end167_crit_edge
  %146 = ptrtoint ptr %tx_index to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %126, ptr %tx_index, align 4
  %transfer_complete = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 5
  %147 = ptrtoint ptr %transfer_complete to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %transfer_complete, align 4
  %transfer_active = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 11
  %148 = ptrtoint ptr %transfer_active to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 1, ptr %transfer_active, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end167, %list_del_init.exit.cleanup_crit_edge, %if.then70.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_spi_set_ir(ptr noundef %data) unnamed_addr #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bpw_len = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %bpw_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bpw_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp ugt i32 %1, 16
  %master = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %9 = and i32 %8, -18870273
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = or i32 %9, 17723392
  %11 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %10) #9, !srcloc !294
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %15 = or i32 %9, 17625088
  %16 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %15) #9, !srcloc !294
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_set_ir.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_set_ir, %do.end)) #9
          to label %if.then5 [label %do.end], !srcloc !290

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %master6 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %20 = ptrtoint ptr %master6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_set_ir.__UNIQUE_ID_ddebug259, ptr noundef %21, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.96) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 711) #9
  %transfer_complete = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 5
  %22 = ptrtoint ptr %transfer_complete to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %transfer_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool13.not = icmp eq i8 %23, 0
  br i1 %tobool13.not, label %if.then14, label %do.end.if.end26_crit_edge

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then14:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %24 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %wait = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 4
  %call1659 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %25 = ptrtoint ptr %transfer_complete to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %transfer_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool18.not60 = icmp eq i8 %26, 0
  br i1 %tobool18.not60, label %if.then14.if.end20_crit_edge, label %if.then14.for.end_crit_edge

if.then14.for.end_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  br label %if.end20

if.end20:                                         ; preds = %cleanup.if.end20_crit_edge, %if.then14.if.end20_crit_edge
  %call1661 = phi i32 [ %call16, %cleanup.if.end20_crit_edge ], [ %call1659, %if.then14.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1661)
  %tobool21.not = icmp eq i32 %call1661, 0
  br i1 %tobool21.not, label %cleanup, label %if.end20.__out_crit_edge

if.end20.__out_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out

cleanup:                                          ; preds = %if.end20
  call void @schedule() #9
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %27 = ptrtoint ptr %transfer_complete to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %transfer_complete, align 4
  %tobool18.not = icmp eq i8 %28, 0
  br i1 %tobool18.not, label %cleanup.if.end20_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.if.end20_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then14.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %for.end, %if.end20.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end26

if.end26:                                         ; preds = %__out, %do.end.if.end26_crit_edge
  %master28 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %29 = ptrtoint ptr %master28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %master28, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 8
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %36 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %add.ptr.i49 = getelementptr i8, ptr %39, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %35) #9, !srcloc !294
  %40 = ptrtoint ptr %master28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %master28, align 4
  %driver_data.i.i.i.i50 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %driver_data.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver_data.i.i.i.i50, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #9, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %47 = and i32 %46, -18808833
  %48 = ptrtoint ptr %driver_data.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver_data.i.i.i.i50, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %47) #9, !srcloc !294
  %52 = ptrtoint ptr %master28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %master28, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %59 = or i32 %58, 1
  %60 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %59) #9, !srcloc !294
  %64 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #9, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %69 = and i32 %68, -2
  %70 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %69) #9, !srcloc !294
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_spi_nomore_transfer(ptr noundef %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_nomore_transfer.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_nomore_transfer, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !290

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %master = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_nomore_transfer.__UNIQUE_ID_ddebug254, ptr noundef %1, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.97) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %current_msg = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 18
  %2 = ptrtoint ptr %current_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_msg, align 4
  %status = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %status, align 4
  %5 = load ptr, ptr %current_msg, align 4
  %complete = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %complete, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %do.end.if.end31_crit_edge, label %do.body8

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.body8:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_nomore_transfer.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_nomore_transfer, %do.end27)) #9
          to label %if.then22 [label %do.end27], !srcloc !290

if.then22:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %master23 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %master23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_nomore_transfer.__UNIQUE_ID_ddebug255, ptr noundef %9, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.97) #9
  br label %do.end27

do.end27:                                         ; preds = %if.then22, %do.body8
  %10 = ptrtoint ptr %current_msg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_msg, align 4
  %complete29 = getelementptr inbounds %struct.spi_message, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %complete29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %complete29, align 4
  %context = getelementptr inbounds %struct.spi_message, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %context, align 4
  tail call void %13(ptr noundef %15) #9
  br label %if.end31

if.end31:                                         ; preds = %do.end27, %do.end.if.end31_crit_edge
  %bcurrent_msg_processing = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 6
  %16 = ptrtoint ptr %bcurrent_msg_processing to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %bcurrent_msg_processing, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_nomore_transfer.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_nomore_transfer, %do.end51)) #9
          to label %if.then46 [label %do.end51], !srcloc !290

if.then46:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %master47 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %master47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master47, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_nomore_transfer.__UNIQUE_ID_ddebug256, ptr noundef %18, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.97) #9
  br label %do.end51

do.end51:                                         ; preds = %if.then46, %if.end31
  %19 = ptrtoint ptr %current_msg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %current_msg, align 4
  %cur_trans = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 19
  %20 = ptrtoint ptr %cur_trans to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %cur_trans, align 4
  %queue = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 8
  %21 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %22, %queue
  br i1 %cmp.i.not, label %do.end51.if.else_crit_edge, label %land.lhs.true

do.end51.if.else_crit_edge:                       ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %do.end51
  %board_dat = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 20
  %23 = ptrtoint ptr %board_dat to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %board_dat, align 4
  %suspend_sts = getelementptr inbounds %struct.pch_spi_board_data, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %suspend_sts to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %suspend_sts, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool54.not = icmp eq i8 %26, 0
  br i1 %tobool54.not, label %land.lhs.true55, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true55:                                  ; preds = %land.lhs.true
  %status56 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 9
  %27 = ptrtoint ptr %status56 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %status56, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp57.not = icmp eq i8 %28, 2
  br i1 %cmp57.not, label %land.lhs.true55.if.else_crit_edge, label %do.body60

land.lhs.true55.if.else_crit_edge:                ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

do.body60:                                        ; preds = %land.lhs.true55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_nomore_transfer.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_nomore_transfer, %do.end79)) #9
          to label %if.then74 [label %do.end79], !srcloc !290

if.then74:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  %master75 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %29 = ptrtoint ptr %master75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %master75, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_nomore_transfer.__UNIQUE_ID_ddebug257, ptr noundef %30, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.97) #9
  br label %do.end79

do.end79:                                         ; preds = %if.then74, %do.body60
  %work = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %31 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %work) #9
  br label %if.end139

if.else:                                          ; preds = %land.lhs.true55.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %do.end51.if.else_crit_edge
  %board_dat81 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 20
  %32 = ptrtoint ptr %board_dat81 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %board_dat81, align 4
  %suspend_sts82 = getelementptr inbounds %struct.pch_spi_board_data, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %suspend_sts82 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %suspend_sts82, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool84.not = icmp eq i8 %35, 0
  br i1 %tobool84.not, label %lor.lhs.false, label %if.else.do.body90_crit_edge

if.else.do.body90_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body90

lor.lhs.false:                                    ; preds = %if.else
  %status85 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 9
  %36 = ptrtoint ptr %status85 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %status85, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %37)
  %cmp87 = icmp eq i8 %37, 2
  br i1 %cmp87, label %lor.lhs.false.do.body90_crit_edge, label %lor.lhs.false.if.end139_crit_edge

lor.lhs.false.if.end139_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

lor.lhs.false.do.body90_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body90

do.body90:                                        ; preds = %lor.lhs.false.do.body90_crit_edge, %if.else.do.body90_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_nomore_transfer.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_nomore_transfer, %do.end109)) #9
          to label %if.then104 [label %do.end109], !srcloc !290

if.then104:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #11
  %master105 = getelementptr inbounds %struct.pch_spi_data, ptr %data, i32 0, i32 2
  %38 = ptrtoint ptr %master105 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %master105, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_nomore_transfer.__UNIQUE_ID_ddebug258, ptr noundef %39, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.97) #9
  br label %do.end109

do.end109:                                        ; preds = %if.then104, %do.body90
  %40 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %queue, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %cmp121.not186 = icmp eq ptr %43, %41
  br i1 %cmp121.not186, label %do.end109.if.end139_crit_edge, label %do.end109.for.body_crit_edge

do.end109.for.body_crit_edge:                     ; preds = %do.end109
  br label %for.body

do.end109.if.end139_crit_edge:                    ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %do.end109.for.body_crit_edge
  %.pn.in187 = phi ptr [ %.pn189, %list_del_init.exit.for.body_crit_edge ], [ %43, %do.end109.for.body_crit_edge ]
  %44 = ptrtoint ptr %.pn.in187 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn189 = load ptr, ptr %.pn.in187, align 4
  %status125 = getelementptr i8, ptr %.pn.in187, i32 -4
  %45 = ptrtoint ptr %status125 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -5, ptr %status125, align 4
  %complete126 = getelementptr i8, ptr %.pn.in187, i32 -20
  %46 = ptrtoint ptr %complete126 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %complete126, align 4
  %tobool127.not = icmp eq ptr %47, null
  br i1 %tobool127.not, label %for.body.if.end131_crit_edge, label %if.then128

for.body.if.end131_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131

if.then128:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %context130 = getelementptr i8, ptr %.pn.in187, i32 -16
  %48 = ptrtoint ptr %context130 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %context130, align 4
  tail call void %47(ptr noundef %49) #9
  br label %if.end131

if.end131:                                        ; preds = %if.then128, %for.body.if.end131_crit_edge
  %call.i.i179 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in187) #9
  br i1 %call.i.i179, label %if.end.i.i, label %if.end131.list_del_init.exit_crit_edge

if.end131.list_del_init.exit_crit_edge:           ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in187, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i, align 4
  %52 = ptrtoint ptr %.pn.in187 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %.pn.in187, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end131.list_del_init.exit_crit_edge
  %56 = ptrtoint ptr %.pn.in187 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %.pn.in187, ptr %.pn.in187, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in187, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %.pn.in187, ptr %prev.i3.i, align 4
  %58 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %queue, align 4
  %cmp121.not = icmp eq ptr %.pn189, %59
  br i1 %cmp121.not, label %list_del_init.exit.if.end139_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del_init.exit.if.end139_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

if.end139:                                        ; preds = %list_del_init.exit.if.end139_crit_edge, %do.end109.if.end139_crit_edge, %lor.lhs.false.if.end139_crit_edge, %do.end79
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_spi_setup_transfer(ptr noundef %spi) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_spi_setup_transfer.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_spi_setup_transfer, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !290

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !291
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %8 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_speed_hz, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_spi_setup_transfer.__UNIQUE_ID_ddebug242, ptr noundef %spi, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.76, i32 noundef %7, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %master5 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %10 = ptrtoint ptr %master5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master5, align 4
  %max_speed_hz6 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %12 = ptrtoint ptr %max_speed_hz6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_speed_hz6, align 8
  %mul.i = shl i32 %13, 1
  %div.i = udiv i32 50000000, %mul.i
  %14 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 1023) #9
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %20 = and i32 %19, 16580607
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  %or.i.i = or i32 %21, %14
  %22 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %26) #9, !srcloc !294
  %27 = ptrtoint ptr %master5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %master5, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %29 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %30)
  %cmp.i = icmp eq i8 %30, 8
  %driver_data.i.i.i.i.i39 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 8
  %31 = ptrtoint ptr %driver_data.i.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i.i.i.i39, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %add.ptr.i.i.i40 = getelementptr i8, ptr %34, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i40) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %36 = and i32 %35, -262145
  %37 = ptrtoint ptr %driver_data.i.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i.i.i.i39, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %add.ptr.i5.i.i41 = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i41, i32 %36) #9, !srcloc !294
  br label %pch_spi_set_bits_per_word.exit

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %41 = or i32 %35, 262144
  %42 = ptrtoint ptr %driver_data.i.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver_data.i.i.i.i.i39, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %add.ptr.i5.i5.i = getelementptr i8, ptr %45, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i5.i, i32 %41) #9, !srcloc !294
  br label %pch_spi_set_bits_per_word.exit

pch_spi_set_bits_per_word.exit:                   ; preds = %if.else.i, %if.then.i
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %46 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mode, align 8
  %and = shl i32 %47, 1
  %48 = and i32 %and, 16
  %and12 = shl i32 %47, 5
  %49 = and i32 %and12, 64
  %50 = or i32 %48, %49
  %51 = and i32 %and12, 32
  %52 = or i32 %50, %51
  %53 = ptrtoint ptr %master5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %master5, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #9, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %60 = and i32 %59, -1879048193
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %62 = or i32 %52, %61
  %or.i = xor i32 %62, 16
  %63 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %67 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %67) #9, !srcloc !294
  %68 = ptrtoint ptr %master5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %master5, align 4
  %driver_data.i.i.i.i.i42 = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %driver_data.i.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %driver_data.i.i.i.i.i42, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #9, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %75 = or i32 %74, 1
  %76 = ptrtoint ptr %driver_data.i.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %driver_data.i.i.i.i.i42, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %75) #9, !srcloc !294
  %80 = ptrtoint ptr %driver_data.i.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %driver_data.i.i.i.i.i42, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #9, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %85 = and i32 %84, -2
  %86 = ptrtoint ptr %driver_data.i.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %driver_data.i.i.i.i.i42, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %85) #9, !srcloc !294
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pch_spi_filter(ptr nocapture noundef %chan, ptr noundef %slave) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id, align 4
  %chan_id1 = getelementptr inbounds %struct.pch_dma_slave, ptr %slave, i32 0, i32 1
  %2 = ptrtoint ptr %chan_id1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_id1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave, align 4
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %cmp2 = icmp eq ptr %5, %9
  br i1 %cmp2, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %10 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %slave, ptr %private, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_dma_rx_complete(ptr noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_complete = getelementptr inbounds %struct.pch_spi_data, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %transfer_complete to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %transfer_complete, align 4
  %wait = getelementptr inbounds %struct.pch_spi_data, ptr %arg, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !60, !61, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !140, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !161, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !186, !187, !189, !190, !191, !193, !194, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !210, !212, !213, !215, !216, !218, !219, !220, !222, !223, !225, !226, !228, !229, !231, !233, !234, !236, !237, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !253, !254, !256, !257, !258, !260, !261, !263, !264, !266, !267, !268, !270, !271, !273, !274, !275, !277, !278, !279}
!llvm.module.flags = !{!281, !282, !283, !284, !285, !286, !287, !288}
!llvm.ident = !{!289}

!0 = !{ptr @__initcall__kmod_spi_topcliff_pch__284_1689_pch_spi_init6, !1, !"__initcall__kmod_spi_topcliff_pch__284_1689_pch_spi_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1689, i32 1}
!2 = !{ptr @__exitcall_pch_spi_exit, !3, !"__exitcall_pch_spi_exit", i1 false, i1 false}
!3 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1696, i32 1}
!4 = !{ptr @__param_use_dma, !5, !"__param_use_dma", i1 false, i1 false}
!5 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1698, i32 1}
!6 = !{ptr @__UNIQUE_ID_use_dmatype285, !5, !"__UNIQUE_ID_use_dmatype285", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_use_dma286, !8, !"__UNIQUE_ID_use_dma286", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1699, i32 1}
!9 = !{ptr @__UNIQUE_ID_file287, !10, !"__UNIQUE_ID_file287", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1702, i32 1}
!11 = !{ptr @__UNIQUE_ID_license288, !10, !"__UNIQUE_ID_license288", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_description289, !13, !"__UNIQUE_ID_description289", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1703, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1681, i32 8}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1667, i32 10}
!18 = !{ptr @pch_spi_pcidev_driver, !19, !"pch_spi_pcidev_driver", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1666, i32 26}
!20 = !{ptr @pch_spi_pcidev_id, !21, !"pch_spi_pcidev_id", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 208, i32 35}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1565, i32 3}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pch_spi_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @pch_spi_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1576, i32 3}
!32 = !{ptr @pch_spi_probe._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pch_spi_probe._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1581, i32 34}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1583, i32 4}
!38 = !{ptr @pch_spi_probe._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pch_spi_probe._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1593, i32 4}
!42 = !{ptr @pch_spi_probe._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pch_spi_probe._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1601, i32 4}
!46 = !{ptr @pch_spi_probe._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @pch_spi_probe._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1630, i32 2}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @pch_spi_remove.__UNIQUE_ID_ddebug281, !49, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!52 = !{ptr @pch_spi_pm_ops, !53, !"pch_spi_pm_ops", i1 false, i1 false}
!53 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1664, i32 8}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1645, i32 2}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @pch_spi_suspend.__UNIQUE_ID_ddebug282, !55, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1656, i32 2}
!60 = !{ptr @pch_spi_resume.__UNIQUE_ID_ddebug283, !59, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!61 = !{ptr @pch_spi_pd_driver, !62, !"pch_spi_pd_driver", i1 false, i1 false}
!62 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1535, i32 31}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1326, i32 2}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @pch_spi_pd_probe.__UNIQUE_ID_ddebug275, !64, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1331, i32 3}
!69 = !{ptr @pch_spi_pd_probe._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @pch_spi_pd_probe._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1346, i32 3}
!73 = !{ptr @pch_spi_pd_probe._entry.28, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @pch_spi_pd_probe._entry_ptr.30, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1352, i32 2}
!77 = !{ptr @pch_spi_pd_probe.__UNIQUE_ID_ddebug276, !76, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!78 = !{ptr @pch_spi_pd_probe.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1370, i32 2}
!80 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @pch_spi_pd_probe.__key.33, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1371, i32 2}
!83 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @pch_spi_pd_probe.__key.35, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1372, i32 2}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1376, i32 3}
!89 = !{ptr @pch_spi_pd_probe._entry.37, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @pch_spi_pd_probe._entry_ptr.39, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1383, i32 3}
!93 = !{ptr @pch_spi_pd_probe._entry.40, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @pch_spi_pd_probe._entry_ptr.42, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1392, i32 3}
!97 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @pch_spi_pd_probe._entry.43, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @pch_spi_pd_probe._entry_ptr.46, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1400, i32 3}
!102 = !{ptr @pch_spi_pd_probe._entry.47, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @pch_spi_pd_probe._entry_ptr.49, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 467, i32 4}
!106 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @pch_spi_transfer._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @pch_spi_transfer._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 474, i32 4}
!111 = !{ptr @pch_spi_transfer._entry.52, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @pch_spi_transfer._entry_ptr.54, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 480, i32 3}
!115 = !{ptr @pch_spi_transfer.__UNIQUE_ID_ddebug243, !114, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 488, i32 3}
!118 = !{ptr @pch_spi_transfer._entry.56, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @pch_spi_transfer._entry_ptr.58, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 495, i32 3}
!122 = !{ptr @pch_spi_transfer._entry.59, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @pch_spi_transfer._entry_ptr.61, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 502, i32 2}
!126 = !{ptr @pch_spi_transfer.__UNIQUE_ID_ddebug244, !125, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 510, i32 2}
!129 = !{ptr @pch_spi_transfer.__UNIQUE_ID_ddebug245, !128, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 513, i32 2}
!132 = !{ptr @pch_spi_transfer.__UNIQUE_ID_ddebug246, !131, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 518, i32 2}
!135 = !{ptr @pch_spi_transfer.__UNIQUE_ID_ddebug247, !134, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!136 = !{ptr @pch_spi_transfer.__UNIQUE_ID_ddebug248, !137, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!137 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 521, i32 2}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1132, i32 2}
!140 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @pch_spi_process_messages.__UNIQUE_ID_ddebug265, !139, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1137, i32 3}
!144 = !{ptr @pch_spi_process_messages.__UNIQUE_ID_ddebug266, !143, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1157, i32 2}
!147 = !{ptr @pch_spi_process_messages.__UNIQUE_ID_ddebug267, !146, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1186, i32 4}
!150 = !{ptr @pch_spi_process_messages.__UNIQUE_ID_ddebug268, !149, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1193, i32 4}
!153 = !{ptr @pch_spi_process_messages.__UNIQUE_ID_ddebug269, !152, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1235, i32 3}
!156 = !{ptr @pch_spi_process_messages.__UNIQUE_ID_ddebug270, !155, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!157 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 531, i32 4}
!159 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @pch_spi_select_chip.__UNIQUE_ID_ddebug249, !158, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!161 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 540, i32 2}
!163 = !{ptr @pch_spi_select_chip.__UNIQUE_ID_ddebug250, !162, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 421, i32 2}
!166 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @pch_spi_setup_transfer.__UNIQUE_ID_ddebug242, !165, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!168 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 877, i32 3}
!170 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @pch_spi_request_dma._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @pch_spi_request_dma._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 892, i32 3}
!175 = !{ptr @pch_spi_request_dma._entry.80, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @pch_spi_request_dma._entry_ptr.82, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 938, i32 3}
!179 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @pch_spi_handle_dma.__UNIQUE_ID_ddebug261, !178, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!181 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 948, i32 3}
!183 = !{ptr @pch_spi_handle_dma.__UNIQUE_ID_ddebug262, !182, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!184 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 994, i32 2}
!186 = !{ptr @pch_spi_handle_dma.__UNIQUE_ID_ddebug263, !185, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!187 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1041, i32 3}
!189 = !{ptr @pch_spi_handle_dma._entry, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @pch_spi_handle_dma._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @pch_spi_handle_dma._entry.88, !192, !"_entry", i1 false, i1 false}
!192 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1103, i32 3}
!193 = !{ptr @pch_spi_handle_dma._entry_ptr.89, !192, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1113, i32 2}
!196 = !{ptr @pch_spi_handle_dma.__UNIQUE_ID_ddebug264, !195, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 787, i32 2}
!199 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @pch_spi_start_transfer.__UNIQUE_ID_ddebug260, !198, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 793, i32 3}
!203 = !{ptr @pch_spi_start_transfer._entry, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @pch_spi_start_transfer._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.94, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 555, i32 3}
!207 = !{ptr @pch_spi_set_tx.__UNIQUE_ID_ddebug251, !206, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!208 = !{ptr @pch_spi_set_tx.__UNIQUE_ID_ddebug252, !209, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!209 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 562, i32 3}
!210 = !{ptr @.str.95, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 621, i32 2}
!212 = !{ptr @pch_spi_set_tx.__UNIQUE_ID_ddebug253, !211, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!213 = !{ptr @.str.96, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 708, i32 2}
!215 = !{ptr @pch_spi_set_ir.__UNIQUE_ID_ddebug259, !214, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!216 = !{ptr @.str.97, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 640, i32 2}
!218 = !{ptr @.str.98, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @pch_spi_nomore_transfer.__UNIQUE_ID_ddebug254, !217, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!220 = !{ptr @.str.99, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 646, i32 3}
!222 = !{ptr @pch_spi_nomore_transfer.__UNIQUE_ID_ddebug255, !221, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!223 = !{ptr @.str.100, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 654, i32 2}
!225 = !{ptr @pch_spi_nomore_transfer.__UNIQUE_ID_ddebug256, !224, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!226 = !{ptr @.str.101, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 669, i32 3}
!228 = !{ptr @pch_spi_nomore_transfer.__UNIQUE_ID_ddebug257, !227, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!229 = !{ptr @pch_spi_nomore_transfer.__UNIQUE_ID_ddebug258, !230, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!230 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 673, i32 3}
!231 = !{ptr @.str.102, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1270, i32 2}
!233 = !{ptr @pch_spi_get_resources.__UNIQUE_ID_ddebug272, !232, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!234 = !{ptr @.str.103, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1274, i32 2}
!236 = !{ptr @pch_spi_get_resources.__UNIQUE_ID_ddebug273, !235, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!237 = !{ptr @.str.104, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1277, i32 2}
!239 = !{ptr @pch_spi_get_resources.__UNIQUE_ID_ddebug274, !238, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!240 = !{ptr @.str.105, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 346, i32 3}
!242 = !{ptr @.str.106, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @pch_spi_handler.__UNIQUE_ID_ddebug240, !241, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!244 = !{ptr @.str.107, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 357, i32 3}
!246 = !{ptr @pch_spi_handler._entry, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @pch_spi_handler._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.108, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 377, i32 2}
!250 = !{ptr @pch_spi_handler.__UNIQUE_ID_ddebug241, !249, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!251 = !{ptr @.str.109, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1262, i32 2}
!253 = !{ptr @pch_spi_free_resources.__UNIQUE_ID_ddebug271, !252, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!254 = !{ptr @.str.110, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1427, i32 2}
!256 = !{ptr @.str.111, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @pch_spi_pd_remove.__UNIQUE_ID_ddebug277, !255, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!258 = !{ptr @.str.112, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1439, i32 3}
!260 = !{ptr @pch_spi_pd_remove.__UNIQUE_ID_ddebug278, !259, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!261 = !{ptr @.str.113, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1469, i32 2}
!263 = !{ptr @pch_spi_pd_suspend.__UNIQUE_ID_ddebug279, !262, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!264 = !{ptr @.str.114, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1472, i32 3}
!266 = !{ptr @pch_spi_pd_suspend._entry, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @pch_spi_pd_suspend._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.115, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1494, i32 3}
!270 = !{ptr @pch_spi_pd_suspend.__UNIQUE_ID_ddebug280, !269, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!271 = !{ptr @.str.116, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1508, i32 3}
!273 = !{ptr @pch_spi_pd_resume._entry, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @pch_spi_pd_resume._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @pch_spi_pd_resume._entry.117, !276, !"_entry", i1 false, i1 false}
!276 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 1518, i32 4}
!277 = !{ptr @pch_spi_pd_resume._entry_ptr.118, !276, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @__param_str_use_dma, !5, !"__param_str_use_dma", i1 false, i1 false}
!279 = !{ptr @use_dma, !280, !"use_dma", i1 false, i1 false}
!280 = !{!"../drivers/spi/spi-topcliff-pch.c", i32 103, i32 12}
!281 = !{i32 1, !"wchar_size", i32 2}
!282 = !{i32 1, !"min_enum_size", i32 4}
!283 = !{i32 8, !"branch-target-enforcement", i32 0}
!284 = !{i32 8, !"sign-return-address", i32 0}
!285 = !{i32 8, !"sign-return-address-all", i32 0}
!286 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!287 = !{i32 7, !"uwtable", i32 1}
!288 = !{i32 7, !"frame-pointer", i32 2}
!289 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!290 = !{i64 2148800837, i64 2148800842, i64 2148800855, i64 2148800899, i64 2148800933, i64 2148800954}
!291 = !{i64 5032222}
!292 = !{i64 2152572571}
!293 = !{i64 2152573926}
!294 = !{i64 5031804}
!295 = !{!"auto-init"}
!296 = !{!"branch_weights", i32 1, i32 2000}
!297 = !{!"branch_weights", i32 2000, i32 1}
!298 = !{i64 2154404702, i64 2154405194, i64 2154404739, i64 2154404795, i64 2154404829, i64 2154404853, i64 2154404894, i64 2154404915, i64 2154404943, i64 2154404977}
!299 = !{i64 2154406312, i64 2154406804, i64 2154406349, i64 2154406405, i64 2154406439, i64 2154406463, i64 2154406504, i64 2154406525, i64 2154406553, i64 2154406587}
