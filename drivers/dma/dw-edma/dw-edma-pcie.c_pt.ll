; ModuleID = '/llk/IR_all_yes/drivers/dma/dw-edma/dw-edma-pcie.c_pt.bc'
source_filename = "../drivers/dma/dw-edma/dw-edma-pcie.c"
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
%struct.dw_edma_pcie_data = type { %struct.dw_edma_block, [8 x %struct.dw_edma_block], [8 x %struct.dw_edma_block], [8 x %struct.dw_edma_block], [8 x %struct.dw_edma_block], i32, i8, i16, i16 }
%struct.dw_edma_block = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dw_edma_core_ops = type { ptr }
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
%struct.dw_edma_chip = type { ptr, i32, i32, ptr }
%struct.dw_edma = type { [20 x i8], %struct.dma_device, i16, %struct.dma_device, i16, %struct.dw_edma_region, [8 x %struct.dw_edma_region], [8 x %struct.dw_edma_region], [8 x %struct.dw_edma_region], [8 x %struct.dw_edma_region], ptr, i32, i32, ptr, ptr, %struct.raw_spinlock, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dw_edma_region = type { i32, ptr, i32 }

@__initcall__kmod_dw_edma_pcie__275_375_dw_edma_pcie_driver_init6 = internal global ptr @dw_edma_pcie_driver_init, section ".initcall6.init", align 4
@dw_edma_pcie_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @dw_edma_pcie_id_table, ptr @dw_edma_pcie_probe, ptr @dw_edma_pcie_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_dw_edma_pcie_driver_exit = internal global ptr @dw_edma_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file276 = internal constant [51 x i8] c"dw_edma_pcie.file=drivers/dma/dw-edma/dw-edma-pcie\00", section ".modinfo", align 1
@__UNIQUE_ID_license277 = internal constant [28 x i8] c"dw_edma_pcie.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description278 = internal constant [62 x i8] c"dw_edma_pcie.description=Synopsys DesignWare eDMA PCIe driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author279 = internal constant [69 x i8] c"dw_edma_pcie.author=Gustavo Pimentel <gustavo.pimentel@synopsys.com>\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dw_edma_pcie\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dw-edma-pcie\00", [19 x i8] zeroinitializer }, align 32
@dw_edma_pcie_id_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5827, i32 60890, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @snps_edda_data to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snps_edda_data = internal constant { %struct.dw_edma_pcie_data, [104 x i8] } { %struct.dw_edma_pcie_data { %struct.dw_edma_block { i32 0, i32 4096, i32 8192 }, [8 x %struct.dw_edma_block] [%struct.dw_edma_block { i32 2, i32 0, i32 2048 }, %struct.dw_edma_block { i32 2, i32 2097152, i32 2048 }, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer], [8 x %struct.dw_edma_block] [%struct.dw_edma_block { i32 2, i32 4194304, i32 2048 }, %struct.dw_edma_block { i32 2, i32 6291456, i32 2048 }, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer], [8 x %struct.dw_edma_block] [%struct.dw_edma_block { i32 2, i32 8388608, i32 2048 }, %struct.dw_edma_block { i32 2, i32 9437184, i32 2048 }, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer], [8 x %struct.dw_edma_block] [%struct.dw_edma_block { i32 2, i32 10485760, i32 2048 }, %struct.dw_edma_block { i32 2, i32 11534336, i32 2048 }, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer, %struct.dw_edma_block zeroinitializer], i32 1, i8 1, i16 2, i16 2 }, [104 x i8] zeroinitializer }, align 32
@dw_edma_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 158, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enabling device failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dw_edma_pcie_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/dma/dw-edma/dw-edma-pcie.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw_edma_pcie_probe._entry_ptr = internal global ptr @dw_edma_pcie_probe._entry, section ".printk_index", align 4
@dw_edma_pcie_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 182, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"eDMA BAR I/O remapping failed\0A\00", [33 x i8] zeroinitializer }, align 32
@dw_edma_pcie_probe._entry_ptr.9 = internal global ptr @dw_edma_pcie_probe._entry.7, section ".printk_index", align 4
@dw_edma_pcie_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 191, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DMA mask 64 set failed\0A\00", [40 x i8] zeroinitializer }, align 32
@dw_edma_pcie_probe._entry_ptr.12 = internal global ptr @dw_edma_pcie_probe._entry.10, section ".printk_index", align 4
@dw_edma_pcie_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 209, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"fail to alloc IRQ vector (number of IRQs=%u)\0A\00", [50 x i8] zeroinitializer }, align 32
@dw_edma_pcie_probe._entry_ptr.15 = internal global ptr @dw_edma_pcie_probe._entry.13, section ".printk_index", align 4
@dw_edma_pcie_core_ops = internal constant { %struct.dw_edma_core_ops, [28 x i8] } { %struct.dw_edma_core_ops { ptr @dw_edma_pcie_irq_vector }, [28 x i8] zeroinitializer }, align 32
@dw_edma_pcie_probe.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.16, i8 0, i8 71, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Version:\09eDMA Port Logic (0x%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@dw_edma_pcie_probe.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.17, i8 0, i8 72, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Version:\09eDMA Unroll (0x%x)\0A\00", [35 x i8] zeroinitializer }, align 32
@dw_edma_pcie_probe.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.18, i8 0, i8 72, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Version:\09HDMA Compatible (0x%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@dw_edma_pcie_probe.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.19, i8 0, i8 73, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Version:\09Unknown (0x%x)\0A\00", [39 x i8] zeroinitializer }, align 32
@dw_edma_pcie_probe.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.20, i8 0, i8 74, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Registers:\09BAR=%u, off=0x%.8lx, sz=0x%zx bytes, addr(v=%p, p=%pa)\0A\00", [61 x i8] zeroinitializer }, align 32
@dw_edma_pcie_probe.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.21, i8 0, i8 75, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"L. List:\09WRITE CH%.2u, BAR=%u, off=0x%.8lx, sz=0x%zx bytes, addr(v=%p, p=%pa)\0A\00", [49 x i8] zeroinitializer }, align 32
@dw_edma_pcie_probe.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.22, i8 0, i8 77, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Data:\09WRITE CH%.2u, BAR=%u, off=0x%.8lx, sz=0x%zx bytes, addr(v=%p, p=%pa)\0A\00", [52 x i8] zeroinitializer }, align 32
@dw_edma_pcie_probe.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.23, i8 0, i8 78, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"L. List:\09READ CH%.2u, BAR=%u, off=0x%.8lx, sz=0x%zx bytes, addr(v=%p, p=%pa)\0A\00", [50 x i8] zeroinitializer }, align 32
@dw_edma_pcie_probe.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.24, i8 0, i8 80, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Data:\09READ CH%.2u, BAR=%u, off=0x%.8lx, sz=0x%zx bytes, addr(v=%p, p=%pa)\0A\00", [53 x i8] zeroinitializer }, align 32
@dw_edma_pcie_probe.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.25, i8 0, i8 80, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Nr. IRQs:\09%u\0A\00", [18 x i8] zeroinitializer }, align 32
@dw_edma_pcie_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 327, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"enable interrupt failed\0A\00", [39 x i8] zeroinitializer }, align 32
@dw_edma_pcie_probe._entry_ptr.28 = internal global ptr @dw_edma_pcie_probe._entry.26, section ".printk_index", align 4
@dw_edma_pcie_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 338, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"eDMA probe failed\0A\00", [45 x i8] zeroinitializer }, align 32
@dw_edma_pcie_probe._entry_ptr.31 = internal global ptr @dw_edma_pcie_probe._entry.29, section ".printk_index", align 4
@dw_edma_pcie_get_vsec_dma_data.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 0, i8 29, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dw_edma_pcie_get_vsec_dma_data\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Detected PCIe Vendor-Specific Extended Capability DMA\0A\00", [41 x i8] zeroinitializer }, align 32
@dw_edma_pcie_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 356, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"can't remove device properly: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dw_edma_pcie_remove\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dw_edma_pcie_remove._entry_ptr = internal global ptr @dw_edma_pcie_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"dw_edma_pcie_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 368, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 375, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 369, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"dw_edma_pcie_id_table\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 362, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"snps_edda_data\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 55, i32 39 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 158, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 182, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 191, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 208, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [22 x i8] c"dw_edma_pcie_core_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 98, i32 38 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 286, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 288, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 290, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 292, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 294, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 300, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 305, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 312, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 317, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 323, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 327, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 338, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 119, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [38 x i8] c"../drivers/dma/dw-edma/dw-edma-pcie.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 356, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author279, ptr @__UNIQUE_ID_description278, ptr @__UNIQUE_ID_file276, ptr @__UNIQUE_ID_license277, ptr @__exitcall_dw_edma_pcie_driver_exit, ptr @__initcall__kmod_dw_edma_pcie__275_375_dw_edma_pcie_driver_init6, ptr @dw_edma_pcie_driver_exit, ptr @dw_edma_pcie_probe._entry, ptr @dw_edma_pcie_probe._entry.10, ptr @dw_edma_pcie_probe._entry.13, ptr @dw_edma_pcie_probe._entry.26, ptr @dw_edma_pcie_probe._entry.29, ptr @dw_edma_pcie_probe._entry.7, ptr @dw_edma_pcie_probe._entry_ptr, ptr @dw_edma_pcie_probe._entry_ptr.12, ptr @dw_edma_pcie_probe._entry_ptr.15, ptr @dw_edma_pcie_probe._entry_ptr.28, ptr @dw_edma_pcie_probe._entry_ptr.31, ptr @dw_edma_pcie_probe._entry_ptr.9, ptr @dw_edma_pcie_remove._entry, ptr @dw_edma_pcie_remove._entry_ptr, ptr @dw_edma_pcie_driver, ptr @.str, ptr @.str.1, ptr @dw_edma_pcie_id_table, ptr @snps_edda_data, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @dw_edma_pcie_core_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_edma_pcie_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_edma_pcie_id_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snps_edda_data to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_edma_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_edma_pcie_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_edma_pcie_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_edma_pcie_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_edma_pcie_core_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_edma_pcie_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_edma_pcie_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_edma_pcie_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_edma_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @dw_edma_pcie_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_edma_pcie_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @dw_edma_pcie_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_edma_pcie_probe(ptr noundef %pdev, ptr nocapture noundef readonly %pid) #2 align 64 {
entry:
  %vsec_data = alloca %struct.dw_edma_pcie_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %pid, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 408, ptr nonnull %vsec_data) #6
  %2 = call ptr @memset(ptr %vsec_data, i32 255, i32 408)
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup534

if.end:                                           ; preds = %entry
  %3 = inttoptr i32 %1 to ptr
  %4 = call ptr @memcpy(ptr %vsec_data, ptr %3, i32 408)
  call fastcc void @dw_edma_pcie_get_vsec_dma_data(ptr noundef %pdev, ptr noundef nonnull %vsec_data)
  %5 = ptrtoint ptr %vsec_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vsec_data, align 4
  %shl = shl nuw i32 1, %6
  %wr_ch_cnt = getelementptr inbounds %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 7
  %7 = ptrtoint ptr %wr_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %wr_ch_cnt, align 2
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp783.not = icmp eq i16 %8, 0
  br i1 %cmp783.not, label %if.end.for.cond10.preheader_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.cond10.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.body.for.cond10.preheader_crit_edge, %if.end.for.cond10.preheader_crit_edge
  %mask.0.lcssa = phi i32 [ %shl, %if.end.for.cond10.preheader_crit_edge ], [ %or9, %for.body.for.cond10.preheader_crit_edge ]
  %rd_ch_cnt = getelementptr inbounds %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 8
  %9 = ptrtoint ptr %rd_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %rd_ch_cnt, align 4
  %conv11 = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp12787.not = icmp eq i16 %10, 0
  br i1 %cmp12787.not, label %for.cond10.preheader.for.end25_crit_edge, label %for.cond10.preheader.for.body14_crit_edge

for.cond10.preheader.for.body14_crit_edge:        ; preds = %for.cond10.preheader
  br label %for.body14

for.cond10.preheader.for.end25_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end25

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0785 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %mask.0784 = phi i32 [ %or9, %for.body.for.body_crit_edge ], [ %shl, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 1, i32 %i.0785
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %shl5 = shl nuw i32 1, %12
  %or = or i32 %shl5, %mask.0784
  %arrayidx6 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 3, i32 %i.0785
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx6, align 4
  %shl8 = shl nuw i32 1, %14
  %or9 = or i32 %or, %shl8
  %inc = add nuw nsw i32 %i.0785, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.cond10.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.cond10.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond10.preheader

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.cond10.preheader.for.body14_crit_edge
  %i.1789 = phi i32 [ %inc24, %for.body14.for.body14_crit_edge ], [ 0, %for.cond10.preheader.for.body14_crit_edge ]
  %mask.1788 = phi i32 [ %or22, %for.body14.for.body14_crit_edge ], [ %mask.0.lcssa, %for.cond10.preheader.for.body14_crit_edge ]
  %arrayidx15 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 2, i32 %i.1789
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx15, align 4
  %shl17 = shl nuw i32 1, %16
  %or18 = or i32 %shl17, %mask.1788
  %arrayidx19 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 4, i32 %i.1789
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx19, align 4
  %shl21 = shl nuw i32 1, %18
  %or22 = or i32 %or18, %shl21
  %inc24 = add nuw nsw i32 %i.1789, 1
  %exitcond809.not = icmp eq i32 %inc24, %conv11
  br i1 %exitcond809.not, label %for.body14.for.end25_crit_edge, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14

for.body14.for.end25_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end25

for.end25:                                        ; preds = %for.body14.for.end25_crit_edge, %for.cond10.preheader.for.end25_crit_edge
  %mask.1.lcssa = phi i32 [ %mask.0.lcssa, %for.cond10.preheader.for.end25_crit_edge ], [ %or22, %for.body14.for.end25_crit_edge ]
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %19 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.end25.pci_name.exit_crit_edge

for.end25.pci_name.exit_crit_edge:                ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %for.end25.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %22, %if.end.i.i ], [ %20, %for.end25.pci_name.exit_crit_edge ]
  %call27 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef %mask.1.lcssa, ptr noundef %retval.0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end34, label %do.end32

do.end32:                                         ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %cleanup534

if.end34:                                         ; preds = %pci_name.exit
  tail call void @pci_set_master(ptr noundef %pdev) #6
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup534

if.end43:                                         ; preds = %if.end34
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef -1) #6
  %call.i764 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #6
  %tobool45.not = icmp eq ptr %call.i764, null
  br i1 %tobool45.not, label %if.end43.cleanup534_crit_edge, label %if.end47

if.end43.cleanup534_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup534

if.end47:                                         ; preds = %if.end43
  %call.i765 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1220, i32 noundef 3520) #6
  %tobool49.not = icmp eq ptr %call.i765, null
  br i1 %tobool49.not, label %if.end47.cleanup534_crit_edge, label %if.end51

if.end47.cleanup534_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup534

if.end51:                                         ; preds = %if.end47
  %irqs = getelementptr inbounds %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 6
  %23 = ptrtoint ptr %irqs to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %irqs, align 4
  %conv52 = zext i8 %24 to i32
  %call.i766 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef 1, i32 noundef %conv52, i32 noundef 6, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i766)
  %cmp54 = icmp slt i32 %call.i766, 1
  br i1 %cmp54, label %do.end59, label %if.end61

do.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call.i766) #9
  br label %cleanup534

if.end61:                                         ; preds = %if.end51
  %dw62 = getelementptr inbounds %struct.dw_edma_chip, ptr %call.i764, i32 0, i32 3
  %25 = ptrtoint ptr %dw62 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i765, ptr %dw62, align 4
  %26 = ptrtoint ptr %call.i764 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev1, ptr %call.i764, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %27 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %devfn, align 4
  %id = getelementptr inbounds %struct.dw_edma_chip, ptr %call.i764, i32 0, i32 1
  %29 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %id, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  %irq64 = getelementptr inbounds %struct.dw_edma_chip, ptr %call.i764, i32 0, i32 2
  %32 = ptrtoint ptr %irq64 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %irq64, align 4
  %mf = getelementptr inbounds %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 5
  %33 = ptrtoint ptr %mf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mf, align 4
  %mf65 = getelementptr inbounds %struct.dw_edma, ptr %call.i765, i32 0, i32 12
  %35 = ptrtoint ptr %mf65 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %mf65, align 4
  %nr_irqs66 = getelementptr inbounds %struct.dw_edma, ptr %call.i765, i32 0, i32 11
  %36 = ptrtoint ptr %nr_irqs66 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i766, ptr %nr_irqs66, align 4
  %ops = getelementptr inbounds %struct.dw_edma, ptr %call.i765, i32 0, i32 14
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @dw_edma_pcie_core_ops, ptr %ops, align 4
  %38 = ptrtoint ptr %wr_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %wr_ch_cnt, align 2
  %wr_ch_cnt68 = getelementptr inbounds %struct.dw_edma, ptr %call.i765, i32 0, i32 2
  %40 = ptrtoint ptr %wr_ch_cnt68 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %wr_ch_cnt68, align 4
  %41 = ptrtoint ptr %rd_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %rd_ch_cnt, align 4
  %rd_ch_cnt70 = getelementptr inbounds %struct.dw_edma, ptr %call.i765, i32 0, i32 4
  %43 = ptrtoint ptr %rd_ch_cnt70 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %rd_ch_cnt70, align 4
  %call71 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #6
  %44 = ptrtoint ptr %vsec_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vsec_data, align 4
  %arrayidx74 = getelementptr ptr, ptr %call71, i32 %45
  %46 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx74, align 4
  %rg_region = getelementptr inbounds %struct.dw_edma, ptr %call.i765, i32 0, i32 5
  %vaddr = getelementptr inbounds %struct.dw_edma, ptr %call.i765, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %vaddr, align 4
  %tobool77.not = icmp eq ptr %47, null
  br i1 %tobool77.not, label %if.end61.cleanup534_crit_edge, label %if.end79

if.end61.cleanup534_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup534

if.end79:                                         ; preds = %if.end61
  %off = getelementptr inbounds %struct.dw_edma_block, ptr %vsec_data, i32 0, i32 1
  %49 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %off, align 4
  %add.ptr = getelementptr i8, ptr %47, i32 %50
  %51 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr, ptr %vaddr, align 4
  %arrayidx85 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %45
  %52 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx85, align 8
  %add = add i32 %53, %50
  %54 = ptrtoint ptr %rg_region to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add, ptr %rg_region, align 4
  %sz = getelementptr inbounds %struct.dw_edma_block, ptr %vsec_data, i32 0, i32 2
  %55 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sz, align 4
  %sz93 = getelementptr inbounds %struct.dw_edma, ptr %call.i765, i32 0, i32 5, i32 2
  %57 = ptrtoint ptr %sz93 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %sz93, align 4
  %58 = ptrtoint ptr %wr_ch_cnt68 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %wr_ch_cnt68, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp97793.not = icmp eq i16 %59, 0
  br i1 %cmp97793.not, label %if.end79.for.cond154.preheader_crit_edge, label %if.end79.for.body99_crit_edge

if.end79.for.body99_crit_edge:                    ; preds = %if.end79
  br label %for.body99

if.end79.for.cond154.preheader_crit_edge:         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond154.preheader

for.cond154.preheader:                            ; preds = %if.end134.for.cond154.preheader_crit_edge, %if.end79.for.cond154.preheader_crit_edge
  %60 = ptrtoint ptr %rd_ch_cnt70 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %rd_ch_cnt70, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp157796.not = icmp eq i16 %61, 0
  br i1 %cmp157796.not, label %for.cond154.preheader.for.end220_crit_edge, label %for.cond154.preheader.for.body159_crit_edge

for.cond154.preheader.for.body159_crit_edge:      ; preds = %for.cond154.preheader
  br label %for.body159

for.cond154.preheader.for.end220_crit_edge:       ; preds = %for.cond154.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end220

for.body99:                                       ; preds = %if.end134.for.body99_crit_edge, %if.end79.for.body99_crit_edge
  %i.2794 = phi i32 [ %inc152, %if.end134.for.body99_crit_edge ], [ 0, %if.end79.for.body99_crit_edge ]
  %arrayidx101 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 8, i32 %i.2794
  %arrayidx103 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 1, i32 %i.2794
  %call106 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #6
  %62 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx103, align 4
  %arrayidx108 = getelementptr ptr, ptr %call106, i32 %63
  %64 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx108, align 4
  %vaddr109 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 6, i32 %i.2794, i32 1
  %66 = ptrtoint ptr %vaddr109 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %vaddr109, align 4
  %tobool111.not = icmp eq ptr %65, null
  br i1 %tobool111.not, label %for.body99.cleanup534_crit_edge, label %if.end113

for.body99.cleanup534_crit_edge:                  ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup534

if.end113:                                        ; preds = %for.body99
  %arrayidx105 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 3, i32 %i.2794
  %arrayidx100 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 6, i32 %i.2794
  %off114 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 1, i32 %i.2794, i32 1
  %67 = ptrtoint ptr %off114 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %off114, align 4
  %add.ptr116 = getelementptr i8, ptr %65, i32 %68
  %69 = ptrtoint ptr %vaddr109 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr116, ptr %vaddr109, align 4
  %arrayidx119 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %63
  %70 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx119, align 8
  %add124 = add i32 %71, %68
  %72 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add124, ptr %arrayidx100, align 4
  %sz125 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 1, i32 %i.2794, i32 2
  %73 = ptrtoint ptr %sz125 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sz125, align 4
  %sz126 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 6, i32 %i.2794, i32 2
  %75 = ptrtoint ptr %sz126 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %sz126, align 4
  %call127 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #6
  %76 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx105, align 4
  %arrayidx129 = getelementptr ptr, ptr %call127, i32 %77
  %78 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx129, align 4
  %vaddr130 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 8, i32 %i.2794, i32 1
  %80 = ptrtoint ptr %vaddr130 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %vaddr130, align 4
  %tobool132.not = icmp eq ptr %79, null
  br i1 %tobool132.not, label %if.end113.cleanup534_crit_edge, label %if.end134

if.end113.cleanup534_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup534

if.end134:                                        ; preds = %if.end113
  %off135 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 3, i32 %i.2794, i32 1
  %81 = ptrtoint ptr %off135 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %off135, align 4
  %add.ptr137 = getelementptr i8, ptr %79, i32 %82
  %83 = ptrtoint ptr %vaddr130 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %add.ptr137, ptr %vaddr130, align 4
  %arrayidx140 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %77
  %84 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx140, align 8
  %add145 = add i32 %85, %82
  %86 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add145, ptr %arrayidx101, align 4
  %sz146 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 3, i32 %i.2794, i32 2
  %87 = ptrtoint ptr %sz146 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sz146, align 4
  %sz147 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 8, i32 %i.2794, i32 2
  %89 = ptrtoint ptr %sz147 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %sz147, align 4
  %inc152 = add nuw nsw i32 %i.2794, 1
  %90 = ptrtoint ptr %wr_ch_cnt68 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %wr_ch_cnt68, align 4
  %conv96 = zext i16 %91 to i32
  %cmp97 = icmp ult i32 %inc152, %conv96
  br i1 %cmp97, label %if.end134.for.body99_crit_edge, label %if.end134.for.cond154.preheader_crit_edge

if.end134.for.cond154.preheader_crit_edge:        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond154.preheader

if.end134.for.body99_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body99

for.body159:                                      ; preds = %if.end198.for.body159_crit_edge, %for.cond154.preheader.for.body159_crit_edge
  %i.3797 = phi i32 [ %inc219, %if.end198.for.body159_crit_edge ], [ 0, %for.cond154.preheader.for.body159_crit_edge ]
  %arrayidx163 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 9, i32 %i.3797
  %arrayidx166 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 2, i32 %i.3797
  %call170 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #6
  %92 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx166, align 4
  %arrayidx172 = getelementptr ptr, ptr %call170, i32 %93
  %94 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx172, align 4
  %vaddr173 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 7, i32 %i.3797, i32 1
  %96 = ptrtoint ptr %vaddr173 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %vaddr173, align 4
  %tobool175.not = icmp eq ptr %95, null
  br i1 %tobool175.not, label %for.body159.cleanup534_crit_edge, label %if.end177

for.body159.cleanup534_crit_edge:                 ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup534

if.end177:                                        ; preds = %for.body159
  %arrayidx169 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 4, i32 %i.3797
  %arrayidx161 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 7, i32 %i.3797
  %off178 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 2, i32 %i.3797, i32 1
  %97 = ptrtoint ptr %off178 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %off178, align 4
  %add.ptr180 = getelementptr i8, ptr %95, i32 %98
  %99 = ptrtoint ptr %vaddr173 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %add.ptr180, ptr %vaddr173, align 4
  %arrayidx183 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %93
  %100 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx183, align 8
  %add188 = add i32 %101, %98
  %102 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add188, ptr %arrayidx161, align 4
  %sz189 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 2, i32 %i.3797, i32 2
  %103 = ptrtoint ptr %sz189 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sz189, align 4
  %sz190 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 7, i32 %i.3797, i32 2
  %105 = ptrtoint ptr %sz190 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %sz190, align 4
  %call191 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #6
  %106 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx169, align 4
  %arrayidx193 = getelementptr ptr, ptr %call191, i32 %107
  %108 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx193, align 4
  %vaddr194 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 9, i32 %i.3797, i32 1
  %110 = ptrtoint ptr %vaddr194 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %109, ptr %vaddr194, align 4
  %tobool196.not = icmp eq ptr %109, null
  br i1 %tobool196.not, label %if.end177.cleanup534_crit_edge, label %if.end198

if.end177.cleanup534_crit_edge:                   ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup534

if.end198:                                        ; preds = %if.end177
  %off199 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 4, i32 %i.3797, i32 1
  %111 = ptrtoint ptr %off199 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %off199, align 4
  %add.ptr201 = getelementptr i8, ptr %109, i32 %112
  %113 = ptrtoint ptr %vaddr194 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %add.ptr201, ptr %vaddr194, align 4
  %arrayidx204 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %107
  %114 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx204, align 8
  %add209 = add i32 %115, %112
  %116 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %add209, ptr %arrayidx163, align 4
  %sz210 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 4, i32 %i.3797, i32 2
  %117 = ptrtoint ptr %sz210 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %sz210, align 4
  %sz211 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 9, i32 %i.3797, i32 2
  %119 = ptrtoint ptr %sz211 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %sz211, align 4
  %inc219 = add nuw nsw i32 %i.3797, 1
  %120 = ptrtoint ptr %rd_ch_cnt70 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %rd_ch_cnt70, align 4
  %conv156 = zext i16 %121 to i32
  %cmp157 = icmp ult i32 %inc219, %conv156
  br i1 %cmp157, label %if.end198.for.body159_crit_edge, label %if.end198.for.end220_crit_edge

if.end198.for.end220_crit_edge:                   ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end220

if.end198.for.body159_crit_edge:                  ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body159

for.end220:                                       ; preds = %if.end198.for.end220_crit_edge, %for.cond154.preheader.for.end220_crit_edge
  %122 = ptrtoint ptr %mf65 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mf65, align 4
  %124 = zext i32 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values)
  switch i32 %123, label %do.body287 [
    i32 0, label %do.body225
    i32 1, label %do.body241
    i32 5, label %do.body266
  ]

do.body225:                                       ; preds = %for.end220
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_edma_pcie_probe, %do.body310)) #6
          to label %if.then231 [label %do.body310], !srcloc !98

if.then231:                                       ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %mf65 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mf65, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_edma_pcie_probe.__UNIQUE_ID_ddebug265, ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %126) #6
  br label %do.body310

do.body241:                                       ; preds = %for.end220
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_edma_pcie_probe, %do.body310)) #6
          to label %if.then255 [label %do.body310], !srcloc !98

if.then255:                                       ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #8
  %127 = ptrtoint ptr %mf65 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %mf65, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_edma_pcie_probe.__UNIQUE_ID_ddebug266, ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %128) #6
  br label %do.body310

do.body266:                                       ; preds = %for.end220
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_edma_pcie_probe, %do.body310)) #6
          to label %if.then280 [label %do.body310], !srcloc !98

if.then280:                                       ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #8
  %129 = ptrtoint ptr %mf65 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %mf65, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_edma_pcie_probe.__UNIQUE_ID_ddebug267, ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %130) #6
  br label %do.body310

do.body287:                                       ; preds = %for.end220
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_edma_pcie_probe, %do.body310)) #6
          to label %if.then301 [label %do.body310], !srcloc !98

if.then301:                                       ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #8
  %131 = ptrtoint ptr %mf65 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %mf65, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_edma_pcie_probe.__UNIQUE_ID_ddebug268, ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %132) #6
  br label %do.body310

do.body310:                                       ; preds = %if.then301, %do.body287, %if.then280, %do.body266, %if.then255, %do.body241, %if.then231, %do.body225
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_edma_pcie_probe, %do.end338)) #6
          to label %if.then324 [label %do.end338], !srcloc !98

if.then324:                                       ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #8
  %133 = ptrtoint ptr %vsec_data to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %vsec_data, align 4
  %135 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %off, align 4
  %137 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %sz, align 4
  %139 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %vaddr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_edma_pcie_probe.__UNIQUE_ID_ddebug269, ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %134, i32 noundef %136, i32 noundef %138, ptr noundef %140, ptr noundef %rg_region) #6
  br label %do.end338

do.end338:                                        ; preds = %if.then324, %do.body310
  %141 = ptrtoint ptr %wr_ch_cnt68 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %wr_ch_cnt68, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %142)
  %cmp342799.not = icmp eq i16 %142, 0
  br i1 %cmp342799.not, label %do.end338.for.cond416.preheader_crit_edge, label %do.end338.do.body345_crit_edge

do.end338.do.body345_crit_edge:                   ; preds = %do.end338
  br label %do.body345

do.end338.for.cond416.preheader_crit_edge:        ; preds = %do.end338
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond416.preheader

for.cond416.preheader:                            ; preds = %for.inc413.for.cond416.preheader_crit_edge, %do.end338.for.cond416.preheader_crit_edge
  %143 = ptrtoint ptr %rd_ch_cnt70 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %rd_ch_cnt70, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %144)
  %cmp419804.not = icmp eq i16 %144, 0
  br i1 %cmp419804.not, label %for.cond416.preheader.do.body493_crit_edge, label %for.cond416.preheader.do.body422_crit_edge

for.cond416.preheader.do.body422_crit_edge:       ; preds = %for.cond416.preheader
  br label %do.body422

for.cond416.preheader.do.body493_crit_edge:       ; preds = %for.cond416.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body493

do.body345:                                       ; preds = %for.inc413.do.body345_crit_edge, %do.end338.do.body345_crit_edge
  %i.4800 = phi i32 [ %inc414, %for.inc413.do.body345_crit_edge ], [ 0, %do.end338.do.body345_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_edma_pcie_probe, %do.body379)) #6
          to label %if.then359 [label %do.body379], !srcloc !98

if.then359:                                       ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx362 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 1, i32 %i.4800
  %145 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx362, align 4
  %off366 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 1, i32 %i.4800, i32 1
  %147 = ptrtoint ptr %off366 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %off366, align 4
  %arrayidx368 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 6, i32 %i.4800
  %sz369 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 6, i32 %i.4800, i32 2
  %149 = ptrtoint ptr %sz369 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %sz369, align 4
  %vaddr372 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 6, i32 %i.4800, i32 1
  %151 = ptrtoint ptr %vaddr372 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %vaddr372, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_edma_pcie_probe.__UNIQUE_ID_ddebug270, ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %i.4800, i32 noundef %146, i32 noundef %148, i32 noundef %150, ptr noundef %152, ptr noundef %arrayidx368) #6
  br label %do.body379

do.body379:                                       ; preds = %if.then359, %do.body345
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_edma_pcie_probe, %for.inc413)) #6
          to label %if.then393 [label %for.inc413], !srcloc !98

if.then393:                                       ; preds = %do.body379
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx396 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 3, i32 %i.4800
  %153 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx396, align 4
  %off400 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 3, i32 %i.4800, i32 1
  %155 = ptrtoint ptr %off400 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %off400, align 4
  %arrayidx402 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 8, i32 %i.4800
  %sz403 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 8, i32 %i.4800, i32 2
  %157 = ptrtoint ptr %sz403 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %sz403, align 4
  %vaddr406 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 8, i32 %i.4800, i32 1
  %159 = ptrtoint ptr %vaddr406 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %vaddr406, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_edma_pcie_probe.__UNIQUE_ID_ddebug271, ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %i.4800, i32 noundef %154, i32 noundef %156, i32 noundef %158, ptr noundef %160, ptr noundef %arrayidx402) #6
  br label %for.inc413

for.inc413:                                       ; preds = %if.then393, %do.body379
  %inc414 = add nuw nsw i32 %i.4800, 1
  %161 = ptrtoint ptr %wr_ch_cnt68 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %wr_ch_cnt68, align 4
  %conv341 = zext i16 %162 to i32
  %cmp342 = icmp ult i32 %inc414, %conv341
  br i1 %cmp342, label %for.inc413.do.body345_crit_edge, label %for.inc413.for.cond416.preheader_crit_edge

for.inc413.for.cond416.preheader_crit_edge:       ; preds = %for.inc413
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond416.preheader

for.inc413.do.body345_crit_edge:                  ; preds = %for.inc413
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body345

do.body422:                                       ; preds = %for.inc490.do.body422_crit_edge, %for.cond416.preheader.do.body422_crit_edge
  %i.5805 = phi i32 [ %inc491, %for.inc490.do.body422_crit_edge ], [ 0, %for.cond416.preheader.do.body422_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_edma_pcie_probe, %do.body456)) #6
          to label %if.then436 [label %do.body456], !srcloc !98

if.then436:                                       ; preds = %do.body422
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx439 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 2, i32 %i.5805
  %163 = ptrtoint ptr %arrayidx439 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx439, align 4
  %off443 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 2, i32 %i.5805, i32 1
  %165 = ptrtoint ptr %off443 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %off443, align 4
  %arrayidx445 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 7, i32 %i.5805
  %sz446 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 7, i32 %i.5805, i32 2
  %167 = ptrtoint ptr %sz446 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %sz446, align 4
  %vaddr449 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 7, i32 %i.5805, i32 1
  %169 = ptrtoint ptr %vaddr449 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %vaddr449, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_edma_pcie_probe.__UNIQUE_ID_ddebug272, ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %i.5805, i32 noundef %164, i32 noundef %166, i32 noundef %168, ptr noundef %170, ptr noundef %arrayidx445) #6
  br label %do.body456

do.body456:                                       ; preds = %if.then436, %do.body422
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_edma_pcie_probe, %for.inc490)) #6
          to label %if.then470 [label %for.inc490], !srcloc !98

if.then470:                                       ; preds = %do.body456
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx473 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 4, i32 %i.5805
  %171 = ptrtoint ptr %arrayidx473 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx473, align 4
  %off477 = getelementptr %struct.dw_edma_pcie_data, ptr %vsec_data, i32 0, i32 4, i32 %i.5805, i32 1
  %173 = ptrtoint ptr %off477 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %off477, align 4
  %arrayidx479 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 9, i32 %i.5805
  %sz480 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 9, i32 %i.5805, i32 2
  %175 = ptrtoint ptr %sz480 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %sz480, align 4
  %vaddr483 = getelementptr %struct.dw_edma, ptr %call.i765, i32 0, i32 9, i32 %i.5805, i32 1
  %177 = ptrtoint ptr %vaddr483 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %vaddr483, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_edma_pcie_probe.__UNIQUE_ID_ddebug273, ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %i.5805, i32 noundef %172, i32 noundef %174, i32 noundef %176, ptr noundef %178, ptr noundef %arrayidx479) #6
  br label %for.inc490

for.inc490:                                       ; preds = %if.then470, %do.body456
  %inc491 = add nuw nsw i32 %i.5805, 1
  %179 = ptrtoint ptr %rd_ch_cnt70 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %rd_ch_cnt70, align 4
  %conv418 = zext i16 %180 to i32
  %cmp419 = icmp ult i32 %inc491, %conv418
  br i1 %cmp419, label %for.inc490.do.body422_crit_edge, label %for.inc490.do.body493_crit_edge

for.inc490.do.body493_crit_edge:                  ; preds = %for.inc490
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body493

for.inc490.do.body422_crit_edge:                  ; preds = %for.inc490
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body422

do.body493:                                       ; preds = %for.inc490.do.body493_crit_edge, %for.cond416.preheader.do.body493_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_edma_pcie_probe, %do.end512)) #6
          to label %if.then507 [label %do.end512], !srcloc !98

if.then507:                                       ; preds = %do.body493
  call void @__sanitizer_cov_trace_pc() #8
  %181 = ptrtoint ptr %nr_irqs66 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %nr_irqs66, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_edma_pcie_probe.__UNIQUE_ID_ddebug274, ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %182) #6
  br label %do.end512

do.end512:                                        ; preds = %if.then507, %do.body493
  %msi_enabled.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %183 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_loadN_noabort(i32 %183, i32 5)
  %bf.load.i = load i40, ptr %msi_enabled.i, align 1
  %184 = and i40 %bf.load.i, 201326592
  %.not = icmp eq i40 %184, 0
  br i1 %.not, label %do.end517, label %if.end519

do.end517:                                        ; preds = %do.end512
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #9
  br label %cleanup534

if.end519:                                        ; preds = %do.end512
  %185 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i766, i32 24) #6
  %186 = extractvalue { i32, i1 } %185, 1
  br i1 %186, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !99

devm_kcalloc.exit.thread:                         ; preds = %if.end519
  call void @__sanitizer_cov_trace_pc() #8
  %irq521780 = getelementptr inbounds %struct.dw_edma, ptr %call.i765, i32 0, i32 10
  %187 = ptrtoint ptr %irq521780 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr null, ptr %irq521780, align 4
  br label %cleanup534

devm_kcalloc.exit:                                ; preds = %if.end519
  %188 = extractvalue { i32, i1 } %185, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %188, i32 noundef 3520) #6
  %irq521 = getelementptr inbounds %struct.dw_edma, ptr %call.i765, i32 0, i32 10
  %189 = ptrtoint ptr %irq521 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call5.i.i, ptr %irq521, align 4
  %tobool523.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool523.not, label %devm_kcalloc.exit.cleanup534_crit_edge, label %if.end525

devm_kcalloc.exit.cleanup534_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup534

if.end525:                                        ; preds = %devm_kcalloc.exit
  %call526 = tail call i32 @dw_edma_probe(ptr noundef nonnull %call.i764) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call526)
  %tobool527.not = icmp eq i32 %call526, 0
  br i1 %tobool527.not, label %if.end533, label %do.end531

do.end531:                                        ; preds = %if.end525
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30) #9
  br label %cleanup534

if.end533:                                        ; preds = %if.end525
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %190 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %call.i764, ptr %driver_data.i.i, align 4
  br label %cleanup534

cleanup534:                                       ; preds = %if.end533, %do.end531, %devm_kcalloc.exit.cleanup534_crit_edge, %devm_kcalloc.exit.thread, %do.end517, %if.end177.cleanup534_crit_edge, %for.body159.cleanup534_crit_edge, %if.end113.cleanup534_crit_edge, %for.body99.cleanup534_crit_edge, %if.end61.cleanup534_crit_edge, %do.end59, %if.end47.cleanup534_crit_edge, %if.end43.cleanup534_crit_edge, %do.end41, %do.end32, %do.end
  %retval.4 = phi i32 [ %call, %do.end ], [ %call27, %do.end32 ], [ %call.i, %do.end41 ], [ -1, %do.end59 ], [ %call526, %do.end531 ], [ 0, %if.end533 ], [ -1, %do.end517 ], [ -12, %if.end43.cleanup534_crit_edge ], [ -12, %if.end47.cleanup534_crit_edge ], [ -12, %if.end61.cleanup534_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup534_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %if.end177.cleanup534_crit_edge ], [ -12, %for.body159.cleanup534_crit_edge ], [ -12, %if.end113.cleanup534_crit_edge ], [ -12, %for.body99.cleanup534_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 408, ptr nonnull %vsec_data) #6
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_edma_pcie_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @dw_edma_remove(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_edma_pcie_get_vsec_dma_data(ptr noundef %pdev, ptr nocapture noundef %pdata) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !100
  %call = tail call zeroext i16 @pci_find_vsec_capability(ptr noundef %pdev, i16 noundef zeroext 5827, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %call to i32
  %add = add nuw nsw i32 %conv, 4
  %call1 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add, ptr noundef nonnull %val) #6
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = and i32 %2, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %3)
  %4 = icmp eq i32 %3, 25165824
  br i1 %4, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_edma_pcie_get_vsec_dma_data.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_edma_pcie_get_vsec_dma_data, %do.end)) #6
          to label %if.then14 [label %do.end], !srcloc !98

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_edma_pcie_get_vsec_dma_data.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.33) #6
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %add17 = add nuw nsw i32 %conv, 8
  %call18 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add17, ptr noundef nonnull %val) #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and35 = and i32 %6, 7
  %7 = zext i32 %and35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %and35, label %do.end.cleanup_crit_edge [
    i32 0, label %do.end.if.end45_crit_edge
    i32 1, label %do.end.if.end45_crit_edge168
    i32 5, label %do.end.if.end45_crit_edge169
  ]

do.end.if.end45_crit_edge169:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

do.end.if.end45_crit_edge168:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

do.end.if.end45_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %do.end.if.end45_crit_edge, %do.end.if.end45_crit_edge168, %do.end.if.end45_crit_edge169
  %mf = getelementptr inbounds %struct.dw_edma_pcie_data, ptr %pdata, i32 0, i32 5
  %8 = ptrtoint ptr %mf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and35, ptr %mf, align 4
  %and62 = lshr i32 %6, 8
  %shr63 = and i32 %and62, 7
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr63, ptr %pdata, align 4
  %add65 = add nuw nsw i32 %conv, 12
  %call66 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add65, ptr noundef nonnull %val) #6
  %wr_ch_cnt = getelementptr inbounds %struct.dw_edma_pcie_data, ptr %pdata, i32 0, i32 7
  %10 = ptrtoint ptr %wr_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %wr_ch_cnt, align 2
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %conv85 = and i32 %13, 1023
  %conv87 = zext i16 %11 to i32
  %14 = call i32 @llvm.umin.i32(i32 %conv85, i32 %conv87)
  %conv93 = trunc i32 %14 to i16
  %15 = ptrtoint ptr %wr_ch_cnt to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv93, ptr %wr_ch_cnt, align 2
  %rd_ch_cnt = getelementptr inbounds %struct.dw_edma_pcie_data, ptr %pdata, i32 0, i32 8
  %16 = ptrtoint ptr %rd_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rd_ch_cnt, align 4
  %and111 = lshr i32 %13, 16
  %conv113 = and i32 %and111, 1023
  %conv115 = zext i16 %17 to i32
  %18 = call i32 @llvm.umin.i32(i32 %conv113, i32 %conv115)
  %conv125 = trunc i32 %18 to i16
  %19 = ptrtoint ptr %rd_ch_cnt to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv125, ptr %rd_ch_cnt, align 4
  %add128 = add nuw nsw i32 %conv, 20
  %call129 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add128, ptr noundef nonnull %val) #6
  %add132 = add nuw nsw i32 %conv, 16
  %call133 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add132, ptr noundef nonnull %val) #6
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %off137 = getelementptr inbounds %struct.dw_edma_block, ptr %pdata, i32 0, i32 1
  %22 = ptrtoint ptr %off137 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %off137, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_edma_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_vsec_capability(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_edma_pcie_irq_vector(ptr noundef %dev, i32 noundef %nr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %call = tail call i32 @pci_irq_vector(ptr noundef %add.ptr, i32 noundef %nr) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_edma_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !86, !87, !88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_dw_edma_pcie__275_375_dw_edma_pcie_driver_init6, !1, !"__initcall__kmod_dw_edma_pcie__275_375_dw_edma_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 375, i32 1}
!2 = !{ptr @__exitcall_dw_edma_pcie_driver_exit, !1, !"__exitcall_dw_edma_pcie_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file276, !4, !"__UNIQUE_ID_file276", i1 false, i1 false}
!4 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 377, i32 1}
!5 = !{ptr @__UNIQUE_ID_license277, !4, !"__UNIQUE_ID_license277", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description278, !7, !"__UNIQUE_ID_description278", i1 false, i1 false}
!7 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 378, i32 1}
!8 = !{ptr @__UNIQUE_ID_author279, !9, !"__UNIQUE_ID_author279", i1 false, i1 false}
!9 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 379, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 369, i32 11}
!13 = !{ptr @dw_edma_pcie_driver, !14, !"dw_edma_pcie_driver", i1 false, i1 false}
!14 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 368, i32 26}
!15 = !{ptr @dw_edma_pcie_id_table, !16, !"dw_edma_pcie_id_table", i1 false, i1 false}
!16 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 362, i32 35}
!17 = !{ptr @snps_edda_data, !18, !"snps_edda_data", i1 false, i1 false}
!18 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 55, i32 39}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 158, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dw_edma_pcie_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @dw_edma_pcie_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 182, i32 3}
!29 = !{ptr @dw_edma_pcie_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @dw_edma_pcie_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 191, i32 3}
!33 = !{ptr @dw_edma_pcie_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @dw_edma_pcie_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 208, i32 3}
!37 = !{ptr @dw_edma_pcie_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @dw_edma_pcie_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 286, i32 3}
!41 = !{ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug265, !40, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 288, i32 3}
!44 = !{ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug266, !43, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 290, i32 3}
!47 = !{ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug267, !46, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 292, i32 3}
!50 = !{ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug268, !49, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 294, i32 2}
!53 = !{ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug269, !52, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 300, i32 3}
!56 = !{ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug270, !55, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 305, i32 3}
!59 = !{ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug271, !58, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 312, i32 3}
!62 = !{ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug272, !61, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 317, i32 3}
!65 = !{ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug273, !64, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 323, i32 2}
!68 = !{ptr @dw_edma_pcie_probe.__UNIQUE_ID_ddebug274, !67, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 327, i32 3}
!71 = !{ptr @dw_edma_pcie_probe._entry.26, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @dw_edma_pcie_probe._entry_ptr.28, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 338, i32 3}
!75 = !{ptr @dw_edma_pcie_probe._entry.29, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @dw_edma_pcie_probe._entry_ptr.31, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 119, i32 2}
!79 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @dw_edma_pcie_get_vsec_dma_data.__UNIQUE_ID_ddebug240, !78, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!81 = !{ptr @dw_edma_pcie_core_ops, !82, !"dw_edma_pcie_core_ops", i1 false, i1 false}
!82 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 98, i32 38}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/dma/dw-edma/dw-edma-pcie.c", i32 356, i32 3}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @dw_edma_pcie_remove._entry, !84, !"_entry", i1 false, i1 false}
!88 = !{ptr @dw_edma_pcie_remove._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i64 2148700487, i64 2148700492, i64 2148700505, i64 2148700549, i64 2148700583, i64 2148700604}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{!"auto-init"}
