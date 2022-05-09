; ModuleID = '/llk/IR_all_yes/drivers/dma/hisi_dma.c_pt.bc'
source_filename = "../drivers/dma/hisi_dma.c"
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.hisi_dma_dev = type { ptr, ptr, %struct.dma_device, i32, i32, [0 x %struct.hisi_dma_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hisi_dma_chan = type { %struct.virt_dma_chan, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.75, i32 }
%union.anon.75 = type { ptr }
%struct.hisi_dma_desc = type { %struct.virt_dma_desc, %struct.hisi_dma_sqe }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.hisi_dma_sqe = type { i32, i32, i32, i32, i64, i64 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.hisi_dma_cqe = type { i32, i32, i16, i16, i16, i16 }

@__initcall__kmod_hisi_dma__260_589_hisi_dma_pci_driver_init6 = internal global ptr @hisi_dma_pci_driver_init, section ".initcall6.init", align 4
@hisi_dma_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @hisi_dma_pci_tbl, ptr @hisi_dma_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_hisi_dma_pci_driver_exit = internal global ptr @hisi_dma_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author261 = internal constant [52 x i8] c"hisi_dma.author=Zhou Wang <wangzhou1@hisilicon.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author262 = internal constant [53 x i8] c"hisi_dma.author=Zhenfa Qiu <qiuzhenfa@hisilicon.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description263 = internal constant [61 x i8] c"hisi_dma.description=HiSilicon Kunpeng DMA controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file264 = internal constant [35 x i8] c"hisi_dma.file=drivers/dma/hisi_dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license265 = internal constant [24 x i8] c"hisi_dma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hisi_dma\00", [23 x i8] zeroinitializer }, align 32
@hisi_dma_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 6629, i32 41250, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@hisi_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 512, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable device mem!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hisi_dma_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/hisi_dma.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hisi_dma_probe._entry_ptr = internal global ptr @hisi_dma_probe._entry, section ".printk_index", align 4
@hisi_dma_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 518, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to remap I/O region!\0A\00", [35 x i8] zeroinitializer }, align 32
@hisi_dma_probe._entry_ptr.8 = internal global ptr @hisi_dma_probe._entry.6, section ".printk_index", align 4
@hisi_dma_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 542, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate MSI vectors!\0A\00", [63 x i8] zeroinitializer }, align 32
@hisi_dma_probe._entry_ptr.11 = internal global ptr @hisi_dma_probe._entry.9, section ".printk_index", align 4
@hisi_dma_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 562, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable hw channel!\0A\00", [34 x i8] zeroinitializer }, align 32
@hisi_dma_probe._entry_ptr.14 = internal global ptr @hisi_dma_probe._entry.12, section ".printk_index", align 4
@hisi_dma_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 573, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register device!\0A\00", [36 x i8] zeroinitializer }, align 32
@hisi_dma_probe._entry_ptr.17 = internal global ptr @hisi_dma_probe._entry.15, section ".printk_index", align 4
@hisi_dma_reset_hw_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 197, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disable channel timeout!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hisi_dma_reset_hw_chan\00", [41 x i8] zeroinitializer }, align 32
@hisi_dma_reset_hw_chan._entry_ptr = internal global ptr @hisi_dma_reset_hw_chan._entry, section ".printk_index", align 4
@hisi_dma_reset_hw_chan._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 211, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reset channel timeout!\0A\00", [40 x i8] zeroinitializer }, align 32
@hisi_dma_reset_hw_chan._entry_ptr.22 = internal global ptr @hisi_dma_reset_hw_chan._entry.20, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hisi_dma_start_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 270, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no issued task!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hisi_dma_start_transfer\00", [40 x i8] zeroinitializer }, align 32
@hisi_dma_start_transfer._entry_ptr = internal global ptr @hisi_dma_start_transfer._entry, section ".printk_index", align 4
@hisi_dma_enable_hw_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 477, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fail to allocate qp memory!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hisi_dma_enable_hw_channels\00", [36 x i8] zeroinitializer }, align 32
@hisi_dma_enable_hw_channels._entry_ptr = internal global ptr @hisi_dma_enable_hw_channels._entry, section ".printk_index", align 4
@hisi_dma_enable_hw_channels._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fail to request qp irq!\0A\00", [39 x i8] zeroinitializer }, align 32
@hisi_dma_enable_hw_channels._entry_ptr.29 = internal global ptr @hisi_dma_enable_hw_channels._entry.27, section ".printk_index", align 4
@hisi_dma_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 443, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"task error!\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hisi_dma_irq\00", [19 x i8] zeroinitializer }, align 32
@hisi_dma_irq._entry_ptr = internal global ptr @hisi_dma_irq._entry, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.33, ptr @.str.34, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"hisi_dma_pci_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 583, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 589, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"hisi_dma_pci_tbl\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 578, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 512, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 518, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 542, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 562, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 573, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 197, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 211, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 270, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 477, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 483, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private constant [26 x i8] c"../drivers/dma/hisi_dma.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 443, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 101, i32 2 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author261, ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_description263, ptr @__UNIQUE_ID_file264, ptr @__UNIQUE_ID_license265, ptr @__exitcall_hisi_dma_pci_driver_exit, ptr @__initcall__kmod_hisi_dma__260_589_hisi_dma_pci_driver_init6, ptr @hisi_dma_enable_hw_channels._entry, ptr @hisi_dma_enable_hw_channels._entry.27, ptr @hisi_dma_enable_hw_channels._entry_ptr, ptr @hisi_dma_enable_hw_channels._entry_ptr.29, ptr @hisi_dma_irq._entry, ptr @hisi_dma_irq._entry_ptr, ptr @hisi_dma_pci_driver_exit, ptr @hisi_dma_probe._entry, ptr @hisi_dma_probe._entry.12, ptr @hisi_dma_probe._entry.15, ptr @hisi_dma_probe._entry.6, ptr @hisi_dma_probe._entry.9, ptr @hisi_dma_probe._entry_ptr, ptr @hisi_dma_probe._entry_ptr.11, ptr @hisi_dma_probe._entry_ptr.14, ptr @hisi_dma_probe._entry_ptr.17, ptr @hisi_dma_probe._entry_ptr.8, ptr @hisi_dma_reset_hw_chan._entry, ptr @hisi_dma_reset_hw_chan._entry.20, ptr @hisi_dma_reset_hw_chan._entry_ptr, ptr @hisi_dma_reset_hw_chan._entry_ptr.22, ptr @hisi_dma_start_transfer._entry, ptr @hisi_dma_start_transfer._entry_ptr, ptr @hisi_dma_pci_driver, ptr @.str, ptr @hisi_dma_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_dma_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_dma_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_dma_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_dma_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_dma_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_dma_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_dma_reset_hw_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_dma_reset_hw_chan._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_dma_start_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_dma_enable_hw_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_dma_enable_hw_channels._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_dma_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_dma_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @hisi_dma_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hisi_dma_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @hisi_dma_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_dma_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %if.end.pci_name.exit_crit_edge ]
  %call3 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 4, ptr noundef %retval.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %pci_name.exit.cleanup.sink.split_crit_edge

pci_name.exit.cleanup.sink.split_crit_edge:       ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end9:                                          ; preds = %pci_name.exit
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef -1) #7
  %call.i99 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 6980, i32 noundef 3520) #7
  %tobool17.not = icmp eq ptr %call.i99, null
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %call20 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #7
  %arrayidx = getelementptr ptr, ptr %call20, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr inbounds %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %base, align 4
  %7 = ptrtoint ptr %call.i99 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %call.i99, align 4
  %chan_num = getelementptr inbounds %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 3
  %8 = ptrtoint ptr %chan_num to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 30, ptr %chan_num, align 4
  %chan_depth = getelementptr inbounds %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 4
  %9 = ptrtoint ptr %chan_depth to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1024, ptr %chan_depth, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i99, ptr %driver_data.i.i, align 4
  tail call void @pci_set_master(ptr noundef %pdev) #7
  %call.i100 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef 30, i32 noundef 30, i32 noundef 2, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %cmp = icmp slt i32 %call.i100, 0
  br i1 %cmp, label %if.end19.cleanup.sink.split_crit_edge, label %if.end27

if.end19.cleanup.sink.split_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.end19
  %dma_dev28 = getelementptr inbounds %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 2
  %cap_mask = getelementptr inbounds %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 2, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #7
  %device_free_chan_resources = getelementptr inbounds %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 2, i32 29
  %11 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @hisi_dma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 2, i32 30
  %12 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @hisi_dma_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_tx_status = getelementptr inbounds %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 2, i32 49
  %13 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @hisi_dma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 2, i32 50
  %14 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @hisi_dma_issue_pending, ptr %device_issue_pending, align 4
  %device_terminate_all = getelementptr inbounds %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 2, i32 47
  %15 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @hisi_dma_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 2, i32 48
  %16 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @hisi_dma_synchronize, ptr %device_synchronize, align 4
  %directions = getelementptr inbounds %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 2, i32 21
  %17 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %directions, align 4
  %dev29 = getelementptr inbounds %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 2, i32 15
  %18 = ptrtoint ptr %dev29 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev1, ptr %dev29, align 4
  %channels = getelementptr inbounds %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 2, i32 3, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %channels, ptr %prev.i, align 4
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 8572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !83
  %23 = ptrtoint ptr %chan_depth to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chan_depth, align 4
  %mul.i.i = shl i32 %24, 5
  %mul2.i.i = shl i32 %24, 4
  %25 = ptrtoint ptr %call.i99 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i99, align 4
  %dev3.i.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chan_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp28.not.i.i = icmp eq i32 %28, 0
  br i1 %cmp28.not.i.i, label %if.end27.if.end36_crit_edge, label %if.end27.for.body.i.i_crit_edge

if.end27.for.body.i.i_crit_edge:                  ; preds = %if.end27
  br label %for.body.i.i

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.cond.i.i:                                     ; preds = %if.end.i.i102
  %inc.i.i = add nuw i32 %i.029.i.i, 1
  %29 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chan_num, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %30
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %if.end.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end27.for.body.i.i_crit_edge
  %i.029.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end27.for.body.i.i_crit_edge ]
  %sq_dma.i.i = getelementptr %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 5, i32 %i.029.i.i, i32 4
  %call.i.i.i = tail call ptr @dmam_alloc_attrs(ptr noundef %dev3.i.i, i32 noundef %mul.i.i, ptr noundef %sq_dma.i.i, i32 noundef 3264, i32 noundef 0) #7
  %sq.i.i = getelementptr %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 5, i32 %i.029.i.i, i32 2
  %31 = ptrtoint ptr %sq.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i.i, ptr %sq.i.i, align 4
  %tobool.not.i.i101 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i101, label %for.body.i.i.hisi_dma_enable_hw_channels.exit_crit_edge, label %if.end.i.i102

for.body.i.i.hisi_dma_enable_hw_channels.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_dma_enable_hw_channels.exit

if.end.i.i102:                                    ; preds = %for.body.i.i
  %cq_dma.i.i = getelementptr %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 5, i32 %i.029.i.i, i32 5
  %call.i27.i.i = tail call ptr @dmam_alloc_attrs(ptr noundef %dev3.i.i, i32 noundef %mul2.i.i, ptr noundef %cq_dma.i.i, i32 noundef 3264, i32 noundef 0) #7
  %cq.i.i = getelementptr %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 5, i32 %i.029.i.i, i32 3
  %32 = ptrtoint ptr %cq.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i27.i.i, ptr %cq.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %call.i27.i.i, null
  br i1 %tobool8.not.i.i, label %if.end.i.i102.hisi_dma_enable_hw_channels.exit_crit_edge, label %for.cond.i.i

if.end.i.i102.hisi_dma_enable_hw_channels.exit_crit_edge: ; preds = %if.end.i.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_dma_enable_hw_channels.exit

if.end.i:                                         ; preds = %for.cond.i.i
  %33 = ptrtoint ptr %call.i99 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i99, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp12.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp12.not.i.i, label %if.end.i.if.end36_crit_edge, label %if.end.i.for.body.i23.i_crit_edge

if.end.i.for.body.i23.i_crit_edge:                ; preds = %if.end.i
  br label %for.body.i23.i

if.end.i.if.end36_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.cond.i20.i:                                   ; preds = %for.body.i23.i
  %inc.i18.i = add nuw i32 %i.013.i.i, 1
  %35 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chan_num, align 4
  %cmp.i19.i = icmp ult i32 %inc.i18.i, %36
  br i1 %cmp.i19.i, label %for.cond.i20.i.for.body.i23.i_crit_edge, label %if.end9.i

for.cond.i20.i.for.body.i23.i_crit_edge:          ; preds = %for.cond.i20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i23.i

for.body.i23.i:                                   ; preds = %for.cond.i20.i.for.body.i23.i_crit_edge, %if.end.i.for.body.i23.i_crit_edge
  %i.013.i.i = phi i32 [ %inc.i18.i, %for.cond.i20.i.for.body.i23.i_crit_edge ], [ 0, %if.end.i.for.body.i23.i_crit_edge ]
  %call.i.i = tail call i32 @pci_irq_vector(ptr noundef %34, i32 noundef %i.013.i.i) #7
  %arrayidx.i.i = getelementptr %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 5, i32 %i.013.i.i
  %call.i.i21.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev.i.i, i32 noundef %call.i.i, ptr noundef nonnull @hisi_dma_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %arrayidx.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21.i)
  %tobool.not.i22.i = icmp eq i32 %call.i.i21.i, 0
  br i1 %tobool.not.i22.i, label %for.cond.i20.i, label %for.body.i23.i.hisi_dma_enable_hw_channels.exit_crit_edge

for.body.i23.i.hisi_dma_enable_hw_channels.exit_crit_edge: ; preds = %for.body.i23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_dma_enable_hw_channels.exit

if.end9.i:                                        ; preds = %for.cond.i20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp23.not.i.i = icmp eq i32 %36, 0
  br i1 %cmp23.not.i.i, label %if.end9.i.if.end36_crit_edge, label %if.end9.i.for.body.i29.i_crit_edge

if.end9.i.for.body.i29.i_crit_edge:               ; preds = %if.end9.i
  br label %for.body.i29.i

if.end9.i.if.end36_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.body.i29.i:                                   ; preds = %for.body.i29.i.for.body.i29.i_crit_edge, %if.end9.i.for.body.i29.i_crit_edge
  %i.024.i.i = phi i32 [ %inc.i27.i, %for.body.i29.i.for.body.i29.i_crit_edge ], [ 0, %if.end9.i.for.body.i29.i_crit_edge ]
  %arrayidx.i26.i = getelementptr %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 5, i32 %i.024.i.i
  %qp_num.i.i = getelementptr %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 5, i32 %i.024.i.i, i32 8
  %37 = ptrtoint ptr %qp_num.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %i.024.i.i, ptr %qp_num.i.i, align 4
  %hdma_dev3.i.i = getelementptr %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 5, i32 %i.024.i.i, i32 1
  %38 = ptrtoint ptr %hdma_dev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i99, ptr %hdma_dev3.i.i, align 4
  %desc_free.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx.i26.i, i32 0, i32 2
  %39 = ptrtoint ptr %desc_free.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @hisi_dma_desc_free, ptr %desc_free.i.i, align 4
  tail call void @vchan_init(ptr noundef %arrayidx.i26.i, ptr noundef %dma_dev28) #7
  %40 = ptrtoint ptr %chan_depth to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chan_depth, align 4
  %sub.i.i.i.i = add i32 %41, -1
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %sq_dma.i.i.i.i = getelementptr %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 5, i32 %i.024.i.i, i32 4
  %44 = ptrtoint ptr %sq_dma.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sq_dma.i.i.i.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #7
  %mul.i.i.i.i.i = shl i32 %i.024.i.i, 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %43, i32 %mul.i.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i.i.i, i32 %46) #7, !srcloc !83
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %43, i32 4
  %add.ptr1.i31.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %mul.i.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i31.i.i.i.i, i32 0) #7, !srcloc !83
  %cq_dma.i.i.i.i = getelementptr %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 5, i32 %i.024.i.i, i32 5
  %47 = ptrtoint ptr %cq_dma.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cq_dma.i.i.i.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  %add.ptr.i32.i.i.i.i = getelementptr i8, ptr %43, i32 16
  %add.ptr1.i34.i.i.i.i = getelementptr i8, ptr %add.ptr.i32.i.i.i.i, i32 %mul.i.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i34.i.i.i.i, i32 %49) #7, !srcloc !83
  %add.ptr.i35.i.i.i.i = getelementptr i8, ptr %43, i32 20
  %add.ptr1.i37.i.i.i.i = getelementptr i8, ptr %add.ptr.i35.i.i.i.i, i32 %mul.i.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i37.i.i.i.i, i32 0) #7, !srcloc !83
  %50 = tail call i32 @llvm.bswap.i32(i32 %sub.i.i.i.i) #7
  %add.ptr.i38.i.i.i.i = getelementptr i8, ptr %43, i32 8
  %add.ptr1.i40.i.i.i.i = getelementptr i8, ptr %add.ptr.i38.i.i.i.i, i32 %mul.i.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i40.i.i.i.i, i32 %50) #7, !srcloc !83
  %add.ptr.i41.i.i.i.i = getelementptr i8, ptr %43, i32 24
  %add.ptr1.i43.i.i.i.i = getelementptr i8, ptr %add.ptr.i41.i.i.i.i, i32 %mul.i.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i43.i.i.i.i, i32 %50) #7, !srcloc !83
  %add.ptr.i44.i.i.i.i = getelementptr i8, ptr %43, i32 12
  %add.ptr1.i46.i.i.i.i = getelementptr i8, ptr %add.ptr.i44.i.i.i.i, i32 %mul.i.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i46.i.i.i.i, i32 0) #7, !srcloc !83
  %add.ptr.i47.i.i.i.i = getelementptr i8, ptr %43, i32 28
  %add.ptr1.i49.i.i.i.i = getelementptr i8, ptr %add.ptr.i47.i.i.i.i, i32 %mul.i.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i49.i.i.i.i, i32 0) #7, !srcloc !83
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr.i.i5.i.i.i = getelementptr i8, ptr %52, i32 64
  %add.ptr1.i.i7.i.i.i = getelementptr i8, ptr %add.ptr.i.i5.i.i.i, i32 %mul.i.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i7.i.i.i, i32 -14745600) #7, !srcloc !83
  %add.ptr.i4.i.i.i.i = getelementptr i8, ptr %52, i32 68
  %add.ptr1.i6.i.i.i.i = getelementptr i8, ptr %add.ptr.i4.i.i.i.i, i32 %mul.i.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i6.i.i.i.i, i32 0) #7, !srcloc !83
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %54, i32 32
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i.i
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i.i) #7, !srcloc !84
  %56 = or i32 %55, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i.i, i32 %56) #7, !srcloc !83
  %inc.i27.i = add nuw i32 %i.024.i.i, 1
  %57 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chan_num, align 4
  %cmp.i28.i = icmp ult i32 %inc.i27.i, %58
  br i1 %cmp.i28.i, label %for.body.i29.i.for.body.i29.i_crit_edge, label %for.body.i29.i.if.end36_crit_edge

for.body.i29.i.if.end36_crit_edge:                ; preds = %for.body.i29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.body.i29.i.for.body.i29.i_crit_edge:          ; preds = %for.body.i29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i29.i

hisi_dma_enable_hw_channels.exit:                 ; preds = %for.body.i23.i.hisi_dma_enable_hw_channels.exit_crit_edge, %if.end.i.i102.hisi_dma_enable_hw_channels.exit_crit_edge, %for.body.i.i.hisi_dma_enable_hw_channels.exit_crit_edge
  %.str.28.sink.i = phi ptr [ @.str.28, %for.body.i23.i.hisi_dma_enable_hw_channels.exit_crit_edge ], [ @.str.25, %if.end.i.i102.hisi_dma_enable_hw_channels.exit_crit_edge ], [ @.str.25, %for.body.i.i.hisi_dma_enable_hw_channels.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i.i21.i, %for.body.i23.i.hisi_dma_enable_hw_channels.exit_crit_edge ], [ -12, %if.end.i.i102.hisi_dma_enable_hw_channels.exit_crit_edge ], [ -12, %for.body.i.i.hisi_dma_enable_hw_channels.exit_crit_edge ]
  %59 = ptrtoint ptr %call.i99 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i99, align 4
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull %.str.28.sink.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i)
  %cmp31 = icmp slt i32 %retval.0.ph.i, 0
  br i1 %cmp31, label %hisi_dma_enable_hw_channels.exit.cleanup.sink.split_crit_edge, label %hisi_dma_enable_hw_channels.exit.if.end36_crit_edge

hisi_dma_enable_hw_channels.exit.if.end36_crit_edge: ; preds = %hisi_dma_enable_hw_channels.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

hisi_dma_enable_hw_channels.exit.cleanup.sink.split_crit_edge: ; preds = %hisi_dma_enable_hw_channels.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end36:                                         ; preds = %hisi_dma_enable_hw_channels.exit.if.end36_crit_edge, %for.body.i29.i.if.end36_crit_edge, %if.end9.i.if.end36_crit_edge, %if.end.i.if.end36_crit_edge, %if.end27.if.end36_crit_edge
  %call.i103 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @hisi_dma_disable_hw_channels, ptr noundef %call.i99) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool.not.i = icmp eq i32 %call.i103, 0
  br i1 %tobool.not.i, label %if.end40, label %if.then.i104

if.then.i104:                                     ; preds = %if.end36
  %61 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %chan_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp6.not.i.i.i = icmp eq i32 %62, 0
  br i1 %cmp6.not.i.i.i, label %if.then.i104.cleanup_crit_edge, label %if.then.i104.for.body.i.i.i_crit_edge

if.then.i104.for.body.i.i.i_crit_edge:            ; preds = %if.then.i104
  br label %for.body.i.i.i

if.then.i104.cleanup_crit_edge:                   ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then.i104.for.body.i.i.i_crit_edge
  %i.07.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.i104.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 5, i32 %i.07.i.i.i
  tail call fastcc void @hisi_dma_reset_hw_chan(ptr noundef %arrayidx.i.i.i.i) #7
  %task.i.i.i = getelementptr %struct.hisi_dma_dev, ptr %call.i99, i32 0, i32 5, i32 %i.07.i.i.i, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %task.i.i.i) #7
  %inc.i.i.i = add nuw i32 %i.07.i.i.i, 1
  %63 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %chan_num, align 4
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %64
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.cleanup_crit_edge

for.body.i.i.i.cleanup_crit_edge:                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

if.end40:                                         ; preds = %if.end36
  %call41 = tail call i32 @dmaenginem_async_device_register(ptr noundef %dma_dev28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end40.cleanup.sink.split_crit_edge, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40.cleanup.sink.split_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end40.cleanup.sink.split_crit_edge, %hisi_dma_enable_hw_channels.exit.cleanup.sink.split_crit_edge, %if.end19.cleanup.sink.split_crit_edge, %pci_name.exit.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.16.sink = phi ptr [ @.str.1, %entry.cleanup.sink.split_crit_edge ], [ @.str.7, %pci_name.exit.cleanup.sink.split_crit_edge ], [ @.str.10, %if.end19.cleanup.sink.split_crit_edge ], [ @.str.13, %hisi_dma_enable_hw_channels.exit.cleanup.sink.split_crit_edge ], [ @.str.16, %if.end40.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call3, %pci_name.exit.cleanup.sink.split_crit_edge ], [ %call.i100, %if.end19.cleanup.sink.split_crit_edge ], [ %retval.0.ph.i, %hisi_dma_enable_hw_channels.exit.cleanup.sink.split_crit_edge ], [ %call41, %if.end40.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.16.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end40.cleanup_crit_edge, %for.body.i.i.i.cleanup_crit_edge, %if.then.i104.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end14.cleanup_crit_edge ], [ %call41, %if.end40.cleanup_crit_edge ], [ %call.i, %if.end9.cleanup_crit_edge ], [ %call.i103, %if.then.i104.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ %call.i103, %for.body.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hisi_dma_free_chan_resources(ptr noundef %c) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdma_dev1 = getelementptr inbounds %struct.hisi_dma_chan, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %hdma_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdma_dev1, align 4
  tail call fastcc void @hisi_dma_reset_hw_chan(ptr noundef %c)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #7
  %2 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %3 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head.i, ptr %head.i, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %head.i, ptr %2, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %5 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %6, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %entry.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

entry.list_splice_tail_init.exit.i.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %6, ptr %8, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %head.i, ptr %10, align 4
  store ptr %10, ptr %2, align 4
  %14 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %entry.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5
  %15 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %16, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i12.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %16, ptr %18, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %head.i, ptr %20, align 4
  store ptr %20, ptr %2, align 4
  %24 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
  %25 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %26, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %2, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i18.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %26, ptr %28, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %head.i, ptr %30, align 4
  store ptr %30, ptr %2, align 4
  %34 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 7
  %35 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %36, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 7, i32 1
  %39 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i24.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %36, ptr %38, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %head.i, ptr %40, align 4
  store ptr %40, ptr %2, align 4
  %44 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8
  %45 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %46, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %2, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8, i32 1
  %49 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i30.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %46, ptr %48, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %head.i, ptr %50, align 4
  store ptr %50, ptr %2, align 4
  %54 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %55 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %55)
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
  %56 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %57, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %58 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %58)
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
  call void @vchan_dma_desc_free_list(ptr noundef %c, ptr noundef nonnull %head.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #7
  %sq = getelementptr inbounds %struct.hisi_dma_chan, ptr %c, i32 0, i32 2
  %59 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sq, align 4
  %chan_depth = getelementptr inbounds %struct.hisi_dma_dev, ptr %1, i32 0, i32 4
  %61 = ptrtoint ptr %chan_depth to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %chan_depth, align 4
  %mul = shl i32 %62, 5
  %63 = call ptr @memset(ptr %60, i32 0, i32 %mul)
  %cq = getelementptr inbounds %struct.hisi_dma_chan, ptr %c, i32 0, i32 3
  %64 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cq, align 4
  %66 = load i32, ptr %chan_depth, align 4
  %mul3 = shl i32 %66, 4
  %67 = call ptr @memset(ptr %65, i32 0, i32 %mul3)
  %sq_tail = getelementptr inbounds %struct.hisi_dma_chan, ptr %c, i32 0, i32 6
  %68 = ptrtoint ptr %sq_tail to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %sq_tail, align 4
  %cq_head = getelementptr inbounds %struct.hisi_dma_chan, ptr %c, i32 0, i32 7
  %69 = ptrtoint ptr %cq_head to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %cq_head, align 4
  %status = getelementptr inbounds %struct.hisi_dma_chan, ptr %c, i32 0, i32 9
  %70 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %status, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hisi_dma_prep_dma_memcpy(ptr noundef %c, i32 noundef %dst, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2304, i32 noundef 152) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.bswap.i32(i32 %len)
  %length = getelementptr inbounds %struct.hisi_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %length, align 4
  %conv = zext i32 %src to i64
  %3 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %src_addr = getelementptr inbounds %struct.hisi_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %src_addr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %src_addr, align 8
  %conv3 = zext i32 %dst to i64
  %5 = tail call i64 @llvm.bswap.i64(i64 %conv3)
  %dst_addr = getelementptr inbounds %struct.hisi_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %dst_addr, align 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %c) #7
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %13, ptr noundef %desc_allocated.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.vchan_tx_prep.exit_crit_edge

if.end.vchan_tx_prep.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %node.i, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i, align 8
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %node.i, ptr %13, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_dma_tx_status(ptr nocapture noundef readonly %c, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !85
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
  br i1 %or.cond.i.i, label %if.then.i.i.dma_cookie_status.exit_crit_edge, label %if.then.i.i.if.end8.i.i_crit_edge

if.then.i.i.if.end8.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.then.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_cookie_status.exit

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.dma_cookie_status.exit_crit_edge, label %if.else.i.i.if.end8.i.i_crit_edge

if.else.i.i.if.end8.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.else.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_cookie_status.exit

if.end8.i.i:                                      ; preds = %if.else.i.i.if.end8.i.i_crit_edge, %if.then.i.i.if.end8.i.i_crit_edge
  br label %dma_cookie_status.exit

dma_cookie_status.exit:                           ; preds = %if.end8.i.i, %if.else.i.i.dma_cookie_status.exit_crit_edge, %if.then.i.i.dma_cookie_status.exit_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end8.i.i ], [ 0, %if.then.i.i.dma_cookie_status.exit_crit_edge ], [ 0, %if.else.i.i.dma_cookie_status.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hisi_dma_issue_pending(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
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
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5, i32 1
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %vchan_issue_pending.exit
  %sq.i = getelementptr inbounds %struct.hisi_dma_chan, ptr %c, i32 0, i32 2
  %12 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sq.i, align 4
  %sq_tail.i = getelementptr inbounds %struct.hisi_dma_chan, ptr %c, i32 0, i32 6
  %14 = ptrtoint ptr %sq_tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sq_tail.i, align 4
  %hdma_dev1.i = getelementptr inbounds %struct.hisi_dma_chan, ptr %c, i32 0, i32 1
  %16 = ptrtoint ptr %hdma_dev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdma_dev1.i, align 4
  %18 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i.i = icmp eq ptr %19, %desc_issued.i
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 -108
  %tobool.not48.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i = or i1 %cmp.not.i.i, %tobool.not48.i
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23) #10
  %desc2.i = getelementptr inbounds %struct.hisi_dma_chan, ptr %c, i32 0, i32 10
  %22 = ptrtoint ptr %desc2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %desc2.i, align 4
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %add.ptr.i = getelementptr %struct.hisi_dma_sqe, ptr %13, i32 %15
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %19, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  %prev.i.i13 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i13, align 4
  %desc4.i = getelementptr inbounds %struct.hisi_dma_chan, ptr %c, i32 0, i32 10
  %31 = ptrtoint ptr %desc4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i.i, ptr %desc4.i, align 4
  %sqe5.i = getelementptr i8, ptr %19, i32 12
  %32 = call ptr @memcpy(ptr %add.ptr.i, ptr %sqe5.i, i32 32)
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 67174400, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %sq_tail.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sq_tail.i, align 4
  %add.i = add i32 %35, 1
  %chan_depth.i = getelementptr inbounds %struct.hisi_dma_dev, ptr %17, i32 0, i32 4
  %36 = ptrtoint ptr %chan_depth.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chan_depth.i, align 4
  %rem.i = urem i32 %add.i, %37
  store i32 %rem.i, ptr %sq_tail.i, align 4
  %base.i = getelementptr inbounds %struct.hisi_dma_dev, ptr %17, i32 0, i32 1
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %qp_num.i = getelementptr inbounds %struct.hisi_dma_chan, ptr %c, i32 0, i32 8
  %40 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %qp_num.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %rem.i) #7
  %add.ptr.i47.i = getelementptr i8, ptr %39, i32 12
  %mul.i.i = shl i32 %41, 8
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i47.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %42) #7, !srcloc !83
  br label %if.end

if.end:                                           ; preds = %list_del.exit.i, %do.end.i, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_dma_terminate_all(ptr noundef %c) #2 align 64 {
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
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %hdma_dev = getelementptr inbounds %struct.hisi_dma_chan, ptr %c, i32 0, i32 1
  %3 = ptrtoint ptr %hdma_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdma_dev, align 4
  %qp_num = getelementptr inbounds %struct.hisi_dma_chan, ptr %c, i32 0, i32 8
  %5 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qp_num, align 4
  %base.i = getelementptr inbounds %struct.hisi_dma_dev, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 32
  %mul.i = shl i32 %6, 8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !84
  %10 = or i32 %9, 268435456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %10) #7, !srcloc !83
  %desc = getelementptr inbounds %struct.hisi_dma_chan, ptr %c, i32 0, i32 10
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan.i, align 4
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %12, i32 0, i32 2
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %14, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %14, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %16, ptr noundef %desc_terminated.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_add_tail.exit.i_crit_edge

if.then.list_add_tail.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %node.i, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %desc_terminated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %12, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %node.i, ptr %16, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then.list_add_tail.exit.i_crit_edge
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %14, i32 0, i32 9
  %21 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cyclic.i, align 4
  %cmp.i = icmp eq ptr %22, %12
  br i1 %cmp.i, label %if.then.i, label %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge

list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vchan_terminate_vdesc.exit

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %cyclic.i, align 4
  br label %vchan_terminate_vdesc.exit

vchan_terminate_vdesc.exit:                       ; preds = %if.then.i, %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge
  %24 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %desc, align 4
  br label %if.end

if.end:                                           ; preds = %vchan_terminate_vdesc.exit, %entry.if.end_crit_edge
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %25 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %26, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %if.end.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

if.end.list_splice_tail_init.exit.i_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i25 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i25, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %26, ptr %28, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %head, ptr %30, align 4
  store ptr %30, ptr %0, align 4
  %34 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %if.end.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5
  %35 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %36, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i12.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %36, ptr %38, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %head, ptr %40, align 4
  store ptr %40, ptr %0, align 4
  %44 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
  %45 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %46, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6, i32 1
  %49 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i18.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %46, ptr %48, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %head, ptr %50, align 4
  store ptr %50, ptr %0, align 4
  %54 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 7
  %55 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %56, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 7, i32 1
  %59 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i24.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %56, ptr %58, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %head, ptr %60, align 4
  store ptr %60, ptr %0, align 4
  %64 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i26 = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8
  %65 = ptrtoint ptr %desc_terminated.i26 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %desc_terminated.i26, align 4
  %cmp.i.not.i27.i = icmp eq ptr %66, %desc_terminated.i26
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8, i32 1
  %69 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %71 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i30.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %66, ptr %68, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %head, ptr %70, align 4
  store ptr %70, ptr %0, align 4
  %74 = ptrtoint ptr %desc_terminated.i26 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %desc_terminated.i26, ptr %desc_terminated.i26, align 4
  store ptr %desc_terminated.i26, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  call void @vchan_dma_desc_free_list(ptr noundef %c, ptr noundef nonnull %head) #7
  %75 = ptrtoint ptr %hdma_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hdma_dev, align 4
  %77 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %qp_num, align 4
  %base.i27 = getelementptr inbounds %struct.hisi_dma_dev, ptr %76, i32 0, i32 1
  %79 = ptrtoint ptr %base.i27 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i27, align 4
  %add.ptr.i28 = getelementptr i8, ptr %80, i32 32
  %mul.i29 = shl i32 %78, 8
  %add.ptr1.i30 = getelementptr i8, ptr %add.ptr.i28, i32 %mul.i29
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i30) #7, !srcloc !84
  %82 = and i32 %81, -268435457
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30, i32 %82) #7, !srcloc !83
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hisi_dma_synchronize(ptr noundef %c) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i) #7
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8
  %3 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %desc_terminated.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_synchronize.exit_crit_edge, label %if.then.i.i

entry.vchan_synchronize.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vchan_synchronize.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8, i32 1
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
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  call void @vchan_dma_desc_free_list(ptr noundef %c, ptr noundef nonnull %head.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hisi_dma_disable_hw_channels(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_num.i = getelementptr inbounds %struct.hisi_dma_dev, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %chan_num.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not.i = icmp eq i32 %1, 0
  br i1 %cmp6.not.i, label %entry.hisi_dma_disable_qps.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.hisi_dma_disable_qps.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_dma_disable_qps.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.hisi_dma_dev, ptr %data, i32 0, i32 5, i32 %i.07.i
  tail call fastcc void @hisi_dma_reset_hw_chan(ptr noundef %arrayidx.i.i) #7
  %task.i = getelementptr %struct.hisi_dma_dev, ptr %data, i32 0, i32 5, i32 %i.07.i, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %task.i) #7
  %inc.i = add nuw i32 %i.07.i, 1
  %2 = ptrtoint ptr %chan_num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %3
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.hisi_dma_disable_qps.exit_crit_edge

for.body.i.hisi_dma_disable_qps.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_dma_disable_qps.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

hisi_dma_disable_qps.exit:                        ; preds = %for.body.i.hisi_dma_disable_qps.exit_crit_edge, %entry.hisi_dma_disable_qps.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmaenginem_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hisi_dma_reset_hw_chan(ptr nocapture noundef readonly %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdma_dev1 = getelementptr inbounds %struct.hisi_dma_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %hdma_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdma_dev1, align 4
  %qp_num = getelementptr inbounds %struct.hisi_dma_chan, ptr %chan, i32 0, i32 8
  %2 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qp_num, align 4
  %base.i = getelementptr inbounds %struct.hisi_dma_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 32
  %mul.i = shl i32 %3, 8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !84
  %7 = or i32 %6, 268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %7) #7, !srcloc !83
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i255 = getelementptr i8, ptr %9, i32 32
  %add.ptr1.i257 = getelementptr i8, ptr %add.ptr.i255, i32 %mul.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i257) #7, !srcloc !84
  %11 = and i32 %10, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i257, i32 %11) #7, !srcloc !83
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 68
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 -14745600) #7, !srcloc !83
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 195) #7
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr289 = getelementptr i8, ptr %15, i32 48
  %add.ptr9290 = getelementptr i8, ptr %add.ptr289, i32 %mul.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9290) #7, !srcloc !84
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %and291 = and i32 %17, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and291)
  %cmp28.not292 = icmp eq i32 %and291, 1
  br i1 %cmp28.not292, label %entry.land.lhs.true_crit_edge, label %entry.do.end62_crit_edge

entry.do.end62_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then44.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call31 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call31, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call31, %add.i
  br i1 %cmp3.i, label %if.then34, label %if.then44

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr37 = getelementptr i8, ptr %19, i32 48
  %add.ptr39 = getelementptr i8, ptr %add.ptr37, i32 %mul.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #7, !srcloc !84
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  br label %do.end62

if.then44:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 48
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 %mul.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !84
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %and = and i32 %25, 15
  %cmp28.not = icmp eq i32 %and, 1
  br i1 %cmp28.not, label %if.then44.land.lhs.true_crit_edge, label %if.then44.do.end62_crit_edge

if.then44.do.end62_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

if.then44.land.lhs.true_crit_edge:                ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

do.end62:                                         ; preds = %if.then44.do.end62_crit_edge, %if.then34, %entry.do.end62_crit_edge
  %tmp.0 = phi i32 [ %21, %if.then34 ], [ %17, %entry.do.end62_crit_edge ], [ %25, %if.then44.do.end62_crit_edge ]
  %and64 = and i32 %tmp.0, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and64)
  %cmp66.not = icmp eq i32 %and64, 1
  br i1 %cmp66.not, label %do.end71, label %do.end62.if.end93_crit_edge

do.end62.if.end93_crit_edge:                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

do.end71:                                         ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 198, i32 noundef 9, ptr noundef null) #7
  br label %if.end93

if.end93:                                         ; preds = %do.end71, %do.end62.if.end93_crit_edge
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i260 = getelementptr i8, ptr %29, i32 36
  %add.ptr1.i262 = getelementptr i8, ptr %add.ptr.i260, i32 %mul.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i262) #7, !srcloc !84
  %31 = or i32 %30, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i262, i32 %31) #7, !srcloc !83
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i264 = getelementptr i8, ptr %33, i32 12
  %add.ptr1.i.i266 = getelementptr i8, ptr %add.ptr.i.i264, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i266, i32 0) #7, !srcloc !83
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %35, i32 28
  %add.ptr1.i6.i = getelementptr i8, ptr %add.ptr.i4.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i6.i, i32 0) #7, !srcloc !83
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr.i268 = getelementptr i8, ptr %37, i32 32
  %add.ptr1.i270 = getelementptr i8, ptr %add.ptr.i268, i32 %mul.i
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i270) #7, !srcloc !84
  %39 = and i32 %38, -268435457
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i270, i32 %39) #7, !srcloc !83
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr.i272 = getelementptr i8, ptr %41, i32 32
  %add.ptr1.i274 = getelementptr i8, ptr %add.ptr.i272, i32 %mul.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i274) #7, !srcloc !84
  %43 = or i32 %42, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i274, i32 %43) #7, !srcloc !83
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i276 = getelementptr i8, ptr %45, i32 64
  %add.ptr1.i.i278 = getelementptr i8, ptr %add.ptr.i.i276, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i278, i32 -14745600) #7, !srcloc !83
  %add.ptr.i4.i279 = getelementptr i8, ptr %45, i32 68
  %add.ptr1.i6.i280 = getelementptr i8, ptr %add.ptr.i4.i279, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i6.i280, i32 0) #7, !srcloc !83
  %call97 = tail call i64 @ktime_get() #7
  %add.i281 = add i64 %call97, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 209) #7
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr114293 = getelementptr i8, ptr %47, i32 48
  %add.ptr116294 = getelementptr i8, ptr %add.ptr114293, i32 %mul.i
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr116294) #7, !srcloc !84
  %49 = and i32 %48, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp137296 = icmp eq i32 %49, 0
  br i1 %cmp137296, label %if.end93.if.end214_crit_edge, label %if.end93.land.lhs.true141_crit_edge

if.end93.land.lhs.true141_crit_edge:              ; preds = %if.end93
  br label %land.lhs.true141

if.end93.if.end214_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

land.lhs.true141:                                 ; preds = %if.then155.land.lhs.true141_crit_edge, %if.end93.land.lhs.true141_crit_edge
  %call142 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call142, i64 %add.i281)
  %cmp3.i283 = icmp sgt i64 %call142, %add.i281
  br i1 %cmp3.i283, label %do.end175, label %if.then155

if.then155:                                       ; preds = %land.lhs.true141
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr114 = getelementptr i8, ptr %51, i32 48
  %add.ptr116 = getelementptr i8, ptr %add.ptr114, i32 %mul.i
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr116) #7, !srcloc !84
  %53 = and i32 %52, 251658240
  %cmp137 = icmp eq i32 %53, 0
  br i1 %cmp137, label %if.then155.if.end214_crit_edge, label %if.then155.land.lhs.true141_crit_edge

if.then155.land.lhs.true141_crit_edge:            ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true141

if.then155.if.end214_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

do.end175:                                        ; preds = %land.lhs.true141
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr148 = getelementptr i8, ptr %55, i32 48
  %add.ptr150 = getelementptr i8, ptr %add.ptr148, i32 %mul.i
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #7, !srcloc !84
  %57 = and i32 %56, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp179 = icmp eq i32 %57, 0
  br i1 %cmp179, label %do.end175.if.end214_crit_edge, label %do.end185

do.end175.if.end214_crit_edge:                    ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

do.end185:                                        ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %dev187 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev187, ptr noundef nonnull @.str.21) #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 212, i32 noundef 9, ptr noundef null) #7
  br label %if.end214

if.end214:                                        ; preds = %do.end185, %do.end175.if.end214_crit_edge, %if.then155.if.end214_crit_edge, %if.end93.if.end214_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_dma_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdma_dev1 = getelementptr inbounds %struct.hisi_dma_chan, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %hdma_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdma_dev1, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %data, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %desc2 = getelementptr inbounds %struct.hisi_dma_chan, ptr %data, i32 0, i32 10
  %2 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc2, align 4
  %cq_head = getelementptr inbounds %struct.hisi_dma_chan, ptr %data, i32 0, i32 7
  %4 = ptrtoint ptr %cq_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cq_head, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %do.end14

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end14:                                         ; preds = %entry
  %cq = getelementptr inbounds %struct.hisi_dma_chan, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cq, align 4
  %w0 = getelementptr %struct.hisi_dma_cqe, ptr %7, i32 %5, i32 5
  %8 = ptrtoint ptr %w0 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %w0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %9)
  %cmp = icmp ult i16 %9, 2
  br i1 %cmp, label %if.then16, label %do.end22

if.then16:                                        ; preds = %do.end14
  %add = add i32 %5, 1
  %chan_depth = getelementptr inbounds %struct.hisi_dma_dev, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %chan_depth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan_depth, align 4
  %rem = urem i32 %add, %11
  %12 = ptrtoint ptr %cq_head to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %rem, ptr %cq_head, align 4
  %base = getelementptr inbounds %struct.hisi_dma_dev, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %qp_num = getelementptr inbounds %struct.hisi_dma_chan, ptr %data, i32 0, i32 8
  %15 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qp_num, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %rem) #7
  %add.ptr.i = getelementptr i8, ptr %14, i32 28
  %mul.i = shl i32 %16, 8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %17) #7, !srcloc !83
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan.i, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i.i = icmp slt i32 %21, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !87

do.body2.i.i:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #7, !srcloc !88
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then16
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %completed_cookie.i.i, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hisi_dma_irq, %do.end.i)) #7
          to label %if.then.i [label %do.end.i], !srcloc !89

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug238, ptr noundef %27, ptr noundef nonnull @.str.34, ptr noundef nonnull %3, i32 noundef %21) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %3, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %19, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %19, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %29, ptr noundef %desc_completed.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %node.i, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %3, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %node.i, ptr %29, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %19, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.if.end_crit_edge

list_add_tail.exit.i.if.end_crit_edge:            ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %19, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #7
  br label %if.end

do.end22:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #10
  br label %if.end

if.end:                                           ; preds = %do.end22, %if.then.i.i, %list_add_tail.exit.i.if.end_crit_edge
  %36 = ptrtoint ptr %desc2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %desc2, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end, %entry.if.end24_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hisi_dma_desc_free(ptr noundef %vd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %vd) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_hisi_dma__260_589_hisi_dma_pci_driver_init6, !1, !"__initcall__kmod_hisi_dma__260_589_hisi_dma_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/hisi_dma.c", i32 589, i32 1}
!2 = !{ptr @__exitcall_hisi_dma_pci_driver_exit, !1, !"__exitcall_hisi_dma_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author261, !4, !"__UNIQUE_ID_author261", i1 false, i1 false}
!4 = !{!"../drivers/dma/hisi_dma.c", i32 591, i32 1}
!5 = !{ptr @__UNIQUE_ID_author262, !6, !"__UNIQUE_ID_author262", i1 false, i1 false}
!6 = !{!"../drivers/dma/hisi_dma.c", i32 592, i32 1}
!7 = !{ptr @__UNIQUE_ID_description263, !8, !"__UNIQUE_ID_description263", i1 false, i1 false}
!8 = !{!"../drivers/dma/hisi_dma.c", i32 593, i32 1}
!9 = !{ptr @__UNIQUE_ID_file264, !10, !"__UNIQUE_ID_file264", i1 false, i1 false}
!10 = !{!"../drivers/dma/hisi_dma.c", i32 594, i32 1}
!11 = !{ptr @__UNIQUE_ID_license265, !10, !"__UNIQUE_ID_license265", i1 false, i1 false}
!12 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @hisi_dma_pci_driver, !14, !"hisi_dma_pci_driver", i1 false, i1 false}
!14 = !{!"../drivers/dma/hisi_dma.c", i32 583, i32 26}
!15 = !{ptr @hisi_dma_pci_tbl, !16, !"hisi_dma_pci_tbl", i1 false, i1 false}
!16 = !{!"../drivers/dma/hisi_dma.c", i32 578, i32 35}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/dma/hisi_dma.c", i32 512, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @hisi_dma_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @hisi_dma_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/dma/hisi_dma.c", i32 518, i32 3}
!27 = !{ptr @hisi_dma_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @hisi_dma_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/dma/hisi_dma.c", i32 542, i32 3}
!31 = !{ptr @hisi_dma_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @hisi_dma_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/hisi_dma.c", i32 562, i32 3}
!35 = !{ptr @hisi_dma_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @hisi_dma_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/hisi_dma.c", i32 573, i32 3}
!39 = !{ptr @hisi_dma_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @hisi_dma_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma/hisi_dma.c", i32 197, i32 3}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @hisi_dma_reset_hw_chan._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @hisi_dma_reset_hw_chan._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/dma/hisi_dma.c", i32 211, i32 3}
!48 = !{ptr @hisi_dma_reset_hw_chan._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @hisi_dma_reset_hw_chan._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/dma/hisi_dma.c", i32 270, i32 3}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @hisi_dma_start_transfer._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @hisi_dma_start_transfer._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/dma/hisi_dma.c", i32 477, i32 3}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @hisi_dma_enable_hw_channels._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @hisi_dma_enable_hw_channels._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/hisi_dma.c", i32 483, i32 3}
!62 = !{ptr @hisi_dma_enable_hw_channels._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @hisi_dma_enable_hw_channels._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/dma/hisi_dma.c", i32 443, i32 4}
!66 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @hisi_dma_irq._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @hisi_dma_irq._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!71 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug238, !70, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 6307796}
!84 = !{i64 6308214}
!85 = !{i64 2154569782}
!86 = !{i64 2154836651}
!87 = !{!"branch_weights", i32 1, i32 2000}
!88 = !{i64 2154568282, i64 2154568769, i64 2154568319, i64 2154568375, i64 2154568409, i64 2154568433, i64 2154568474, i64 2154568495, i64 2154568523, i64 2154568557}
!89 = !{i64 2148390429, i64 2148390434, i64 2148390447, i64 2148390491, i64 2148390525, i64 2148390546}
