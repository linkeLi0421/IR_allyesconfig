; ModuleID = '/llk/IR_all_yes/arch/arm/mach-cns3xxx/cns3420vb.c_pt.bc'
source_filename = "../arch/arm/mach-cns3xxx/cns3420vb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.map_desc = type { i32, i32, i32, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.physmap_flash_data = type { i32, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }
%struct.usb_ehci_pdata = type { i32, i8, ptr, ptr, ptr, ptr }
%struct.usb_ohci_pdata = type { i8, i32, ptr, ptr, ptr }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cavium Networks CNS3420 Validation Board\00", [55 x i8] zeroinitializer }, align 32
@__mach_desc_CNS3420VB = internal constant %struct.machine_desc { i32 2776, ptr @.str, i32 256, ptr null, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cns3420_map_io, ptr null, ptr @cns3xxx_init_irq, ptr @cns3xxx_timer_init, ptr @cns3420_init, ptr @cns3xxx_pcie_init_late, ptr null, ptr @cns3xxx_restart }, section ".arch.info.init", align 4
@cns3420_io_desc = internal global [1 x %struct.map_desc] [%struct.map_desc { i32 -83877888, i32 491520, i32 4096, i32 0 }], section ".init.data", align 4
@cns3420_early_serial_setup.cns3420_serial_port = internal global { %struct.uart_port, [88 x i8] } { %struct.uart_port { %struct.spinlock zeroinitializer, i32 0, ptr inttoptr (i32 -83877888 to ptr), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 45, i32 0, i32 24000000, i32 16, i8 0, i8 2, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 402653184, i32 0, i32 0, i32 0, i32 0, i32 4, ptr null, i32 0, i32 0, i32 0, i32 2013265920, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, [88 x i8] zeroinitializer }, align 32
@cns3420_pdevs = internal global [3 x ptr] [ptr @cns3420_nor_pdev, ptr @cns3xxx_usb_ehci_device, ptr @cns3xxx_usb_ohci_device], section ".init.data", align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@cns3420_nor_pdev = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.1, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cns3420_nor_pdata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 1, ptr @cns3420_nor_res, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@cns3xxx_usb_ehci_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.7, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cns3xxx_usb_ehci_pdata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr @cns3xxx_usb_ehci_dma_mask, i64 4294967295, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @cns3xxx_usb_ehci_resources, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@cns3xxx_usb_ohci_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.8, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cns3xxx_usb_ohci_pdata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr @cns3xxx_usb_ohci_dma_mask, i64 4294967295, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @cns3xxx_usb_ohci_resources, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"physmap-flash\00", [18 x i8] zeroinitializer }, align 32
@cns3420_nor_pdata = internal global { %struct.physmap_flash_data, [60 x i8] } { %struct.physmap_flash_data { i32 2, ptr null, ptr null, ptr null, i32 5, i32 0, ptr null, ptr @cns3420_nor_partitions, ptr null }, [60 x i8] zeroinitializer }, align 32
@cns3420_nor_res = internal global { %struct.resource, [32 x i8] } { %struct.resource { i32 268435456, i32 402653183, ptr null, i32 536, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@cns3420_nor_partitions = internal global { [5 x %struct.mtd_partition], [56 x i8] } { [5 x %struct.mtd_partition] [%struct.mtd_partition { ptr @.str.2, ptr null, i64 262144, i64 0, i32 1024, i32 0, ptr null }, %struct.mtd_partition { ptr @.str.3, ptr null, i64 4980736, i64 -1, i32 0, i32 0, ptr null }, %struct.mtd_partition { ptr @.str.4, ptr null, i64 117440512, i64 -1, i32 0, i32 0, ptr null }, %struct.mtd_partition { ptr @.str.5, ptr null, i64 11403264, i64 -1, i32 0, i32 0, ptr null }, %struct.mtd_partition { ptr @.str.6, ptr null, i64 0, i64 -1, i32 0, i32 0, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uboot\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"filesystem\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"filesystem2\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ubootenv\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ehci-platform\00", [18 x i8] zeroinitializer }, align 32
@cns3xxx_usb_ehci_pdata = internal global { %struct.usb_ehci_pdata, [40 x i8] } { %struct.usb_ehci_pdata { i32 0, i8 0, ptr @csn3xxx_usb_power_on, ptr @csn3xxx_usb_power_off, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cns3xxx_usb_ehci_dma_mask = internal global { i64, [24 x i8] } { i64 4294967295, [24 x i8] zeroinitializer }, align 32
@cns3xxx_usb_ehci_resources = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 -2113929216, i32 -2097152001, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 64, i32 0, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@usb_pwr_ref = external dso_local global %struct.atomic_t, align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ohci-platform\00", [18 x i8] zeroinitializer }, align 32
@cns3xxx_usb_ohci_pdata = internal global { %struct.usb_ohci_pdata, [44 x i8] } { %struct.usb_ohci_pdata { i8 0, i32 1, ptr @csn3xxx_usb_power_on, ptr @csn3xxx_usb_power_off, ptr null }, [44 x i8] zeroinitializer }, align 32
@cns3xxx_usb_ohci_dma_mask = internal global { i64, [24 x i8] } { i64 4294967295, [24 x i8] zeroinitializer }, align 32
@cns3xxx_usb_ohci_resources = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 -2013265920, i32 -1996488705, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 91, i32 0, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 244, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"cns3420_serial_port\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 92, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"cns3420_nor_pdev\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 76, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"cns3xxx_usb_ehci_device\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 164, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant [24 x i8] c"cns3xxx_usb_ohci_device\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 195, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 77, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"cns3420_nor_pdata\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 64, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"cns3420_nor_res\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 70, i32 24 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"cns3420_nor_partitions\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 39, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 41, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 46, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 50, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 54, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 58, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 165, i32 19 }
@___asan_gen_.54 = private unnamed_addr constant [23 x i8] c"cns3xxx_usb_ehci_pdata\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 159, i32 30 }
@___asan_gen_.57 = private unnamed_addr constant [26 x i8] c"cns3xxx_usb_ehci_dma_mask\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 124, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant [27 x i8] c"cns3xxx_usb_ehci_resources\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 112, i32 24 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 196, i32 19 }
@___asan_gen_.66 = private unnamed_addr constant [23 x i8] c"cns3xxx_usb_ohci_pdata\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 189, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant [26 x i8] c"cns3xxx_usb_ohci_dma_mask\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 187, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [27 x i8] c"cns3xxx_usb_ohci_resources\00", align 1
@___asan_gen_.73 = private constant [37 x i8] c"../arch/arm/mach-cns3xxx/cns3420vb.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 175, i32 24 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__mach_desc_CNS3420VB, ptr @.str, ptr @cns3420_early_serial_setup.cns3420_serial_port, ptr @cns3420_nor_pdev, ptr @cns3xxx_usb_ehci_device, ptr @cns3xxx_usb_ohci_device, ptr @.str.1, ptr @cns3420_nor_pdata, ptr @cns3420_nor_res, ptr @cns3420_nor_partitions, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @cns3xxx_usb_ehci_pdata, ptr @cns3xxx_usb_ehci_dma_mask, ptr @cns3xxx_usb_ehci_resources, ptr @.str.8, ptr @cns3xxx_usb_ohci_pdata, ptr @cns3xxx_usb_ohci_dma_mask, ptr @cns3xxx_usb_ohci_resources], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3420_early_serial_setup.cns3420_serial_port to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3420_nor_pdev to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_usb_ehci_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_usb_ohci_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3420_nor_pdata to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3420_nor_res to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3420_nor_partitions to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_usb_ehci_pdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_usb_ehci_dma_mask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_usb_ehci_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_usb_ohci_pdata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_usb_ohci_dma_mask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cns3xxx_usb_ohci_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cns3420_map_io() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cns3xxx_map_io() #8
  tail call void @iotable_init(ptr noundef nonnull @cns3420_io_desc, i32 noundef 1) #5
  %call.i = tail call i32 @early_serial_setup(ptr noundef nonnull @cns3420_early_serial_setup.cns3420_serial_port) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @cns3xxx_init_irq() #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cns3xxx_timer_init() #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cns3420_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cns3xxx_l2x0_init() #8
  %call = tail call i32 @platform_add_devices(ptr noundef nonnull @cns3420_pdevs, i32 noundef 3) #5
  tail call void @cns3xxx_ahci_init() #8
  tail call void @cns3xxx_sdhci_init() #8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @cns3xxx_power_off, ptr @pm_power_off, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @cns3xxx_pcie_init_late() #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cns3xxx_restart(i32 noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @cns3xxx_map_io() local_unnamed_addr #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @early_serial_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @cns3xxx_l2x0_init() local_unnamed_addr #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_add_devices(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @cns3xxx_ahci_init() local_unnamed_addr #1 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @cns3xxx_sdhci_init() local_unnamed_addr #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cns3xxx_power_off() #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csn3xxx_usb_power_on(ptr nocapture noundef readnone %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @usb_pwr_ref, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @llvm.prefetch.p0(ptr nonnull @usb_pwr_ref, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @usb_pwr_ref, ptr nonnull @usb_pwr_ref, i32 1, ptr nonnull elementtype(i32) @usb_pwr_ref) #5, !srcloc !59
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @cns3xxx_pwr_power_up(i32 noundef 8) #5
  tail call void @cns3xxx_pwr_clk_en(i32 noundef 65536) #5
  tail call void @cns3xxx_pwr_soft_rst(i32 noundef 65536) #5
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -83886076 to ptr)) #5, !srcloc !61
  %or = or i32 %1, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -83886076 to ptr), i32 %or) #5, !srcloc !62
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csn3xxx_usb_power_off(ptr nocapture noundef readnone %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @usb_pwr_ref, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr nonnull @usb_pwr_ref, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @usb_pwr_ref, ptr nonnull @usb_pwr_ref, i32 1, ptr nonnull elementtype(i32) @usb_pwr_ref) #5, !srcloc !64
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @cns3xxx_pwr_clk_dis(i32 noundef 65536) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cns3xxx_pwr_power_up(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cns3xxx_pwr_clk_en(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cns3xxx_pwr_soft_rst(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cns3xxx_pwr_clk_dis(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 244, i32 1}
!2 = !{ptr @__mach_desc_CNS3420VB, !1, !"__mach_desc_CNS3420VB", i1 false, i1 false}
!3 = !{ptr @cns3420_io_desc, !4, !"cns3420_io_desc", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 227, i32 24}
!5 = !{ptr @cns3420_early_serial_setup.cns3420_serial_port, !6, !"cns3420_serial_port", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 92, i32 26}
!7 = !{ptr @cns3420_pdevs, !8, !"cns3420_pdevs", i1 false, i1 false}
!8 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 209, i32 32}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 77, i32 10}
!11 = !{ptr @cns3420_nor_pdev, !12, !"cns3420_nor_pdev", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 76, i32 31}
!13 = !{ptr @cns3420_nor_pdata, !14, !"cns3420_nor_pdata", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 64, i32 34}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 41, i32 12}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 46, i32 12}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 50, i32 12}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 54, i32 12}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 58, i32 12}
!25 = !{ptr @cns3420_nor_partitions, !26, !"cns3420_nor_partitions", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 39, i32 29}
!27 = !{ptr @cns3420_nor_res, !28, !"cns3420_nor_res", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 70, i32 24}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 165, i32 19}
!31 = !{ptr @cns3xxx_usb_ehci_device, !32, !"cns3xxx_usb_ehci_device", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 164, i32 31}
!33 = !{ptr @cns3xxx_usb_ehci_pdata, !34, !"cns3xxx_usb_ehci_pdata", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 159, i32 30}
!35 = !{ptr @cns3xxx_usb_ehci_dma_mask, !36, !"cns3xxx_usb_ehci_dma_mask", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 124, i32 12}
!37 = !{ptr @cns3xxx_usb_ehci_resources, !38, !"cns3xxx_usb_ehci_resources", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 112, i32 24}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 196, i32 19}
!41 = !{ptr @cns3xxx_usb_ohci_device, !42, !"cns3xxx_usb_ohci_device", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 195, i32 31}
!43 = !{ptr @cns3xxx_usb_ohci_pdata, !44, !"cns3xxx_usb_ohci_pdata", i1 false, i1 false}
!44 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 189, i32 30}
!45 = !{ptr @cns3xxx_usb_ohci_dma_mask, !46, !"cns3xxx_usb_ohci_dma_mask", i1 false, i1 false}
!46 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 187, i32 12}
!47 = !{ptr @cns3xxx_usb_ohci_resources, !48, !"cns3xxx_usb_ohci_resources", i1 false, i1 false}
!48 = !{!"../arch/arm/mach-cns3xxx/cns3420vb.c", i32 175, i32 24}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2148311924}
!59 = !{i64 2148227233, i64 2148227265, i64 2148227294, i64 2148227328, i64 2148227359, i64 2148227382}
!60 = !{i64 2148312153}
!61 = !{i64 1250590}
!62 = !{i64 1250172}
!63 = !{i64 2148314965}
!64 = !{i64 2148229698, i64 2148229730, i64 2148229759, i64 2148229793, i64 2148229824, i64 2148229847}
!65 = !{i64 2148315194}
