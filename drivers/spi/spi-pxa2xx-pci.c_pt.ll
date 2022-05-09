; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-pxa2xx-pci.c_pt.bc'
source_filename = "../drivers/spi/spi-pxa2xx-pci.c"
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
%struct.pxa_spi_info = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr }
%struct.dw_dma_slave = type { ptr, i8, i8, i8, i8, i8, i8 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.pxa2xx_spi_controller = type { i16, i8, i8, i8, ptr, ptr, ptr, %struct.ssp_device }
%struct.ssp_device = type { ptr, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.70 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_spi_pxa2xx_pci__238_316_pxa2xx_spi_pci_driver_init6 = internal global ptr @pxa2xx_spi_pci_driver_init, section ".initcall6.init", align 4
@pxa2xx_spi_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @pxa2xx_spi_pci_devices, ptr @pxa2xx_spi_pci_probe, ptr @pxa2xx_spi_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pxa2xx_spi_pci_driver_exit = internal global ptr @pxa2xx_spi_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [74 x i8] c"spi_pxa2xx_pci.description=CE4100/LPSS PCI-SPI glue code for PXA's driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [47 x i8] c"spi_pxa2xx_pci.file=drivers/spi/spi-pxa2xx-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [30 x i8] c"spi_pxa2xx_pci.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [72 x i8] c"spi_pxa2xx_pci.author=Sebastian Andrzej Siewior <bigeasy@linutronix.de>\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi_pxa2xx_pci\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pxa2xx_spi_pci\00", [17 x i8] zeroinitializer }, align 32
@pxa2xx_spi_pci_devices = internal constant { [12 x %struct.pci_device_id], [96 x i8] } { [12 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 2357, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 3854, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 4500, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 8846, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 32902, i32 8848, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 8876, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 11882, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 40037, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 40038, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 32902, i32 40165, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 40166, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PXA2xx SPI\00", [21 x i8] zeroinitializer }, align 32
@spi_info_configs = internal global { [9 x %struct.pxa_spi_info], [92 x i8] } { [9 x %struct.pxa_spi_info] [%struct.pxa_spi_info { i32 10, i32 -1, i32 1, i32 50000000, ptr null, ptr null, ptr null, i32 0, ptr null }, %struct.pxa_spi_info { i32 12, i32 0, i32 0, i32 0, ptr null, ptr @byt_tx_param, ptr @byt_rx_param, i32 0, ptr @lpss_spi_setup }, %struct.pxa_spi_info { i32 9, i32 0, i32 0, i32 25000000, ptr null, ptr null, ptr null, i32 0, ptr @mrfld_spi_setup }, %struct.pxa_spi_info { i32 13, i32 0, i32 0, i32 0, ptr null, ptr @bsw0_tx_param, ptr @bsw0_rx_param, i32 0, ptr @lpss_spi_setup }, %struct.pxa_spi_info { i32 13, i32 1, i32 0, i32 0, ptr null, ptr @bsw1_tx_param, ptr @bsw1_rx_param, i32 0, ptr @lpss_spi_setup }, %struct.pxa_spi_info { i32 13, i32 2, i32 0, i32 0, ptr null, ptr @bsw2_tx_param, ptr @bsw2_rx_param, i32 0, ptr @lpss_spi_setup }, %struct.pxa_spi_info { i32 1, i32 -1, i32 -1, i32 3686400, ptr null, ptr null, ptr null, i32 0, ptr null }, %struct.pxa_spi_info { i32 11, i32 0, i32 0, i32 0, ptr null, ptr @lpt0_tx_param, ptr @lpt0_rx_param, i32 0, ptr @lpss_spi_setup }, %struct.pxa_spi_info { i32 11, i32 1, i32 0, i32 0, ptr null, ptr @lpt1_tx_param, ptr @lpt1_rx_param, i32 0, ptr @lpss_spi_setup }], [92 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxa2xx-spi.%d\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pxa2xx-spi\00", [21 x i8] zeroinitializer }, align 32
@byt_tx_param = internal global { %struct.dw_dma_slave, [20 x i8] } zeroinitializer, align 32
@byt_rx_param = internal global { %struct.dw_dma_slave, [20 x i8] } { %struct.dw_dma_slave { ptr null, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@bsw0_tx_param = internal global { %struct.dw_dma_slave, [20 x i8] } zeroinitializer, align 32
@bsw0_rx_param = internal global { %struct.dw_dma_slave, [20 x i8] } { %struct.dw_dma_slave { ptr null, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@bsw1_tx_param = internal global { %struct.dw_dma_slave, [20 x i8] } { %struct.dw_dma_slave { ptr null, i8 0, i8 6, i8 0, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@bsw1_rx_param = internal global { %struct.dw_dma_slave, [20 x i8] } { %struct.dw_dma_slave { ptr null, i8 7, i8 0, i8 0, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@bsw2_tx_param = internal global { %struct.dw_dma_slave, [20 x i8] } { %struct.dw_dma_slave { ptr null, i8 0, i8 8, i8 0, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@bsw2_rx_param = internal global { %struct.dw_dma_slave, [20 x i8] } { %struct.dw_dma_slave { ptr null, i8 9, i8 0, i8 0, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@lpt0_tx_param = internal global { %struct.dw_dma_slave, [20 x i8] } { %struct.dw_dma_slave { ptr null, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@lpt0_rx_param = internal global { %struct.dw_dma_slave, [20 x i8] } { %struct.dw_dma_slave { ptr null, i8 3, i8 0, i8 0, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@lpt1_tx_param = internal global { %struct.dw_dma_slave, [20 x i8] } zeroinitializer, align 32
@lpt1_rx_param = internal global { %struct.dw_dma_slave, [20 x i8] } { %struct.dw_dma_slave { ptr null, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@mrfld3_tx_param = internal global { %struct.dw_dma_slave, [20 x i8] } { %struct.dw_dma_slave { ptr null, i8 0, i8 15, i8 0, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@mrfld3_rx_param = internal global { %struct.dw_dma_slave, [20 x i8] } { %struct.dw_dma_slave { ptr null, i8 14, i8 0, i8 0, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@mrfld5_tx_param = internal global { %struct.dw_dma_slave, [20 x i8] } { %struct.dw_dma_slave { ptr null, i8 0, i8 13, i8 0, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@mrfld5_rx_param = internal global { %struct.dw_dma_slave, [20 x i8] } { %struct.dw_dma_slave { ptr null, i8 12, i8 0, i8 0, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@mrfld6_tx_param = internal global { %struct.dw_dma_slave, [20 x i8] } { %struct.dw_dma_slave { ptr null, i8 0, i8 11, i8 0, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@mrfld6_rx_param = internal global { %struct.dw_dma_slave, [20 x i8] } { %struct.dw_dma_slave { ptr null, i8 10, i8 0, i8 0, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@switch.table.mrfld_spi_setup = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 5, i32 6], [20 x i8] zeroinitializer }, align 32
@switch.table.mrfld_spi_setup.5 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 4, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.mrfld_spi_setup.6 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @mrfld3_tx_param, ptr @mrfld5_tx_param, ptr @mrfld6_tx_param], [20 x i8] zeroinitializer }, align 32
@switch.table.mrfld_spi_setup.7 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @mrfld3_rx_param, ptr @mrfld5_rx_param, ptr @mrfld6_rx_param], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [22 x i8] c"pxa2xx_spi_pci_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 309, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 316, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 310, i32 20 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"pxa2xx_spi_pci_devices\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 293, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 224, i32 40 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"spi_info_configs\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 147, i32 28 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 257, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 266, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"byt_tx_param\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 46, i32 28 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"byt_rx_param\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 47, i32 28 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"bsw0_tx_param\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 56, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"bsw0_rx_param\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 57, i32 28 }
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"bsw1_tx_param\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 58, i32 28 }
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"bsw1_rx_param\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 59, i32 28 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"bsw2_tx_param\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 60, i32 28 }
@___asan_gen_.53 = private unnamed_addr constant [14 x i8] c"bsw2_rx_param\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 61, i32 28 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"lpt0_tx_param\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 65, i32 28 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"lpt0_rx_param\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 66, i32 28 }
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"lpt1_tx_param\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 63, i32 28 }
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"lpt1_rx_param\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 64, i32 28 }
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"mrfld3_tx_param\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 49, i32 28 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"mrfld3_rx_param\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 50, i32 28 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"mrfld5_tx_param\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 51, i32 28 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"mrfld5_rx_param\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 52, i32 28 }
@___asan_gen_.80 = private unnamed_addr constant [16 x i8] c"mrfld6_tx_param\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 53, i32 28 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"mrfld6_rx_param\00", align 1
@___asan_gen_.84 = private constant [32 x i8] c"../drivers/spi/spi-pxa2xx-pci.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 54, i32 28 }
@___asan_gen_.86 = private unnamed_addr constant [29 x i8] c"switch.table.mrfld_spi_setup\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [31 x i8] c"switch.table.mrfld_spi_setup.5\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [31 x i8] c"switch.table.mrfld_spi_setup.6\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [31 x i8] c"switch.table.mrfld_spi_setup.7\00", align 1
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_pxa2xx_spi_pci_driver_exit, ptr @__initcall__kmod_spi_pxa2xx_pci__238_316_pxa2xx_spi_pci_driver_init6, ptr @pxa2xx_spi_pci_driver_exit, ptr @pxa2xx_spi_pci_driver, ptr @.str, ptr @.str.1, ptr @pxa2xx_spi_pci_devices, ptr @.str.2, ptr @spi_info_configs, ptr @.str.3, ptr @.str.4, ptr @byt_tx_param, ptr @byt_rx_param, ptr @bsw0_tx_param, ptr @bsw0_rx_param, ptr @bsw1_tx_param, ptr @bsw1_rx_param, ptr @bsw2_tx_param, ptr @bsw2_rx_param, ptr @lpt0_tx_param, ptr @lpt0_rx_param, ptr @lpt1_tx_param, ptr @lpt1_rx_param, ptr @mrfld3_tx_param, ptr @mrfld3_rx_param, ptr @mrfld5_tx_param, ptr @mrfld5_rx_param, ptr @mrfld6_tx_param, ptr @mrfld6_rx_param, ptr @switch.table.mrfld_spi_setup, ptr @switch.table.mrfld_spi_setup.5, ptr @switch.table.mrfld_spi_setup.6, ptr @switch.table.mrfld_spi_setup.7], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_pci_devices to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_info_configs to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byt_tx_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byt_rx_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsw0_tx_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsw0_rx_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsw1_tx_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsw1_rx_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsw2_tx_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsw2_rx_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpt0_tx_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpt0_rx_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpt1_tx_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpt1_rx_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrfld3_tx_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrfld3_rx_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrfld5_tx_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrfld5_rx_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrfld6_tx_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrfld6_rx_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mrfld_spi_setup to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mrfld_spi_setup.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mrfld_spi_setup.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mrfld_spi_setup.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_spi_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pxa2xx_spi_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pxa2xx_spi_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @pxa2xx_spi_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_spi_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %pi = alloca %struct.platform_device_info, align 8
  %spi_pdata = alloca %struct.pxa2xx_spi_controller, align 4
  %buf = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pi) #6
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %spi_pdata) #6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buf) #6
  %0 = call ptr @memset(ptr %buf, i32 255, i32 40)
  %call = tail call i32 @pcim_enable_device(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pcim_iomap_regions(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull @.str.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [9 x %struct.pxa_spi_info], ptr @spi_info_configs, i32 0, i32 %2
  %setup = getelementptr [9 x %struct.pxa_spi_info], ptr @spi_info_configs, i32 0, i32 %2, i32 8
  %3 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %setup, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %if.end4.if.end12_crit_edge, label %if.then6

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then6:                                         ; preds = %if.end4
  %call8 = tail call i32 %4(ptr noundef %dev, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then6.if.end12_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %5 = getelementptr inbounds i8, ptr %spi_pdata, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 64)
  %num_chipselect = getelementptr [9 x %struct.pxa_spi_info], ptr @spi_info_configs, i32 0, i32 %2, i32 2
  %7 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_chipselect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.end12.cond.end_crit_edge, label %cond.false

if.end12.cond.end_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %9 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %devfn, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end12.cond.end_crit_edge
  %cond = phi i32 [ %10, %cond.false ], [ %8, %if.end12.cond.end_crit_edge ]
  %conv = trunc i32 %cond to i16
  %11 = ptrtoint ptr %spi_pdata to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %spi_pdata, align 4
  %dma_filter = getelementptr [9 x %struct.pxa_spi_info], ptr @spi_info_configs, i32 0, i32 %2, i32 4
  %12 = ptrtoint ptr %dma_filter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_filter, align 4
  %dma_filter15 = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %spi_pdata, i32 0, i32 4
  %14 = ptrtoint ptr %dma_filter15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %dma_filter15, align 4
  %tx_param = getelementptr [9 x %struct.pxa_spi_info], ptr @spi_info_configs, i32 0, i32 %2, i32 5
  %15 = ptrtoint ptr %tx_param to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_param, align 4
  %tx_param16 = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %spi_pdata, i32 0, i32 5
  %17 = ptrtoint ptr %tx_param16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %tx_param16, align 4
  %rx_param = getelementptr [9 x %struct.pxa_spi_info], ptr @spi_info_configs, i32 0, i32 %2, i32 6
  %18 = ptrtoint ptr %rx_param to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_param, align 4
  %rx_param17 = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %spi_pdata, i32 0, i32 6
  %20 = ptrtoint ptr %rx_param17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %rx_param17, align 4
  %tobool19.not = icmp ne ptr %19, null
  %tobool21 = icmp ne ptr %16, null
  %spec.select133 = select i1 %tobool19.not, i1 %tobool21, i1 false
  %conv22 = zext i1 %spec.select133 to i8
  %enable_dma = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %spi_pdata, i32 0, i32 1
  %21 = ptrtoint ptr %enable_dma to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv22, ptr %enable_dma, align 2
  %dma_burst_size = getelementptr [9 x %struct.pxa_spi_info], ptr @spi_info_configs, i32 0, i32 %2, i32 7
  %22 = ptrtoint ptr %dma_burst_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_burst_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool23.not = icmp eq i32 %23, 0
  %phi.cast = trunc i32 %23 to i8
  %spec.select = select i1 %tobool23.not, i8 1, i8 %phi.cast
  %dma_burst_size30 = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %spi_pdata, i32 0, i32 2
  %24 = ptrtoint ptr %dma_burst_size30 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %spec.select, ptr %dma_burst_size30, align 1
  %ssp31 = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %spi_pdata, i32 0, i32 7
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %25 = ptrtoint ptr %ssp31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev32, ptr %ssp31, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %26 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %resource, align 8
  %phys_base = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %spi_pdata, i32 0, i32 7, i32 4
  %28 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %phys_base, align 4
  %call35 = tail call ptr @pcim_iomap_table(ptr noundef %dev) #6
  %29 = ptrtoint ptr %call35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call35, align 4
  %mmio_base = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %spi_pdata, i32 0, i32 7, i32 3
  %31 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %mmio_base, align 4
  %port_id = getelementptr [9 x %struct.pxa_spi_info], ptr @spi_info_configs, i32 0, i32 %2, i32 1
  %32 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp37 = icmp sgt i32 %33, -1
  br i1 %cmp37, label %cond.end.cond.end43_crit_edge, label %cond.false41

cond.end.cond.end43_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end43

cond.false41:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %devfn42 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %34 = ptrtoint ptr %devfn42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %devfn42, align 4
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.end.cond.end43_crit_edge
  %cond44 = phi i32 [ %35, %cond.false41 ], [ %33, %cond.end.cond.end43_crit_edge ]
  %port_id45 = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %spi_pdata, i32 0, i32 7, i32 6
  %36 = ptrtoint ptr %port_id45 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond44, ptr %port_id45, align 4
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  %type46 = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %spi_pdata, i32 0, i32 7, i32 7
  %39 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %type46, align 4
  tail call void @pci_set_master(ptr noundef %dev) #6
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %dev, i32 noundef 1, i32 noundef 1, i32 noundef 7, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp48 = icmp slt i32 %call.i, 0
  br i1 %cmp48, label %cond.end43.cleanup_crit_edge, label %if.end51

cond.end43.cleanup_crit_edge:                     ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %cond.end43
  %call52 = tail call i32 @pci_irq_vector(ptr noundef %dev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %spi_pdata, i32 0, i32 7, i32 9
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call52, ptr %irq, align 4
  %41 = ptrtoint ptr %port_id45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port_id45, align 4
  %call54 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 40, ptr noundef nonnull @.str.3, i32 noundef %42)
  %max_clk_rate = getelementptr [9 x %struct.pxa_spi_info], ptr @spi_info_configs, i32 0, i32 %2, i32 3
  %43 = ptrtoint ptr %max_clk_rate to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_clk_rate, align 4
  %call57 = call ptr @clk_register_fixed_rate(ptr noundef %dev32, ptr noundef nonnull %buf, ptr noundef null, i32 noundef 0, i32 noundef %44) #6
  %clk = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %spi_pdata, i32 0, i32 7, i32 2
  %45 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call57, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %call57 to i32
  br label %cleanup

if.end63:                                         ; preds = %if.end51
  %47 = getelementptr inbounds i8, ptr %pi, i32 8
  %48 = call ptr @memset(ptr %47, i32 0, i32 48)
  %fwnode = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 28
  %49 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fwnode, align 4
  %fwnode65 = getelementptr inbounds %struct.platform_device_info, ptr %pi, i32 0, i32 1
  %51 = ptrtoint ptr %fwnode65 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %fwnode65, align 4
  %52 = ptrtoint ptr %pi to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %dev32, ptr %pi, align 8
  %name = getelementptr inbounds %struct.platform_device_info, ptr %pi, i32 0, i32 3
  %53 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.4, ptr %name, align 4
  %54 = ptrtoint ptr %port_id45 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port_id45, align 4
  %id = getelementptr inbounds %struct.platform_device_info, ptr %pi, i32 0, i32 4
  %56 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %id, align 8
  %data = getelementptr inbounds %struct.platform_device_info, ptr %pi, i32 0, i32 7
  %57 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %spi_pdata, ptr %data, align 4
  %size_data = getelementptr inbounds %struct.platform_device_info, ptr %pi, i32 0, i32 8
  %58 = ptrtoint ptr %size_data to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 68, ptr %size_data, align 8
  %call68 = call ptr @platform_device_register_full(ptr noundef nonnull %pi) #6
  %cmp.i132 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %clk, align 4
  call void @clk_unregister(ptr noundef %60) #6
  %61 = ptrtoint ptr %call68 to i32
  br label %cleanup

if.end73:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call68, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.then70, %if.then60, %cond.end43.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %46, %if.then60 ], [ %61, %if.then70 ], [ 0, %if.end73 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call8, %if.then6.cleanup_crit_edge ], [ %call.i, %cond.end43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %spi_pdata) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pi) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa2xx_spi_pci_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  tail call void @platform_device_unregister(ptr noundef %1) #6
  %clk = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %3, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_unregister(ptr noundef %5) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpss_spi_setup(ptr nocapture noundef readonly %dev, ptr nocapture noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_chipselect = getelementptr inbounds %struct.pxa_spi_info, ptr %c, i32 0, i32 2
  %0 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %num_chipselect, align 4
  %max_clk_rate = getelementptr inbounds %struct.pxa_spi_info, ptr %c, i32 0, i32 3
  %1 = ptrtoint ptr %max_clk_rate to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 50000000, ptr %max_clk_rate, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devfn, align 4
  %and = and i32 %5, 248
  %call = tail call ptr @pci_get_slot(ptr noundef %3, i32 noundef %and) #6
  %tx_param = getelementptr inbounds %struct.pxa_spi_info, ptr %c, i32 0, i32 5
  %6 = ptrtoint ptr %tx_param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_param, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 44
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev3, ptr %7, align 4
  %m_master = getelementptr inbounds %struct.dw_dma_slave, ptr %7, i32 0, i32 3
  %9 = ptrtoint ptr %m_master to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %m_master, align 2
  %p_master = getelementptr inbounds %struct.dw_dma_slave, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %p_master to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %p_master, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_param = getelementptr inbounds %struct.pxa_spi_info, ptr %c, i32 0, i32 6
  %11 = ptrtoint ptr %rx_param to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_param, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.end.if.end13_crit_edge, label %if.then6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 44
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev9, ptr %12, align 4
  %m_master11 = getelementptr inbounds %struct.dw_dma_slave, ptr %12, i32 0, i32 3
  %14 = ptrtoint ptr %m_master11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %m_master11, align 2
  %p_master12 = getelementptr inbounds %struct.dw_dma_slave, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %p_master12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %p_master12, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.end.if.end13_crit_edge
  %dma_filter = getelementptr inbounds %struct.pxa_spi_info, ptr %c, i32 0, i32 4
  %16 = ptrtoint ptr %dma_filter to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @lpss_dma_filter, ptr %dma_filter, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrfld_spi_setup(ptr nocapture noundef readonly %dev, ptr nocapture noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %call = tail call ptr @pci_get_slot(ptr noundef %1, i32 noundef 168) #6
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devfn, align 4
  %and = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %4 = icmp ult i32 %and, 3
  br i1 %4, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.mrfld_spi_setup, i32 0, i32 %and
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep37 = getelementptr inbounds [3 x i32], ptr @switch.table.mrfld_spi_setup.5, i32 0, i32 %and
  %6 = ptrtoint ptr %switch.gep37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load38 = load i32, ptr %switch.gep37, align 4
  %switch.gep39 = getelementptr inbounds [3 x ptr], ptr @switch.table.mrfld_spi_setup.6, i32 0, i32 %and
  %7 = ptrtoint ptr %switch.gep39 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load40 = load ptr, ptr %switch.gep39, align 4
  %switch.gep41 = getelementptr inbounds [3 x ptr], ptr @switch.table.mrfld_spi_setup.7, i32 0, i32 %and
  %8 = ptrtoint ptr %switch.gep41 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load42 = load ptr, ptr %switch.gep41, align 4
  %port_id7 = getelementptr inbounds %struct.pxa_spi_info, ptr %c, i32 0, i32 1
  %9 = ptrtoint ptr %port_id7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %switch.load, ptr %port_id7, align 4
  %num_chipselect8 = getelementptr inbounds %struct.pxa_spi_info, ptr %c, i32 0, i32 2
  %10 = ptrtoint ptr %num_chipselect8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %switch.load38, ptr %num_chipselect8, align 4
  %tx_param9 = getelementptr inbounds %struct.pxa_spi_info, ptr %c, i32 0, i32 5
  %11 = ptrtoint ptr %tx_param9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %switch.load40, ptr %tx_param9, align 4
  %rx_param10 = getelementptr inbounds %struct.pxa_spi_info, ptr %c, i32 0, i32 6
  %12 = ptrtoint ptr %rx_param10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %switch.load42, ptr %rx_param10, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 44
  %13 = ptrtoint ptr %switch.load40 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev12, ptr %switch.load40, align 4
  %14 = ptrtoint ptr %switch.load42 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev12, ptr %switch.load42, align 4
  %dma_filter = getelementptr inbounds %struct.pxa_spi_info, ptr %c, i32 0, i32 4
  %15 = ptrtoint ptr %dma_filter to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @lpss_dma_filter, ptr %dma_filter, align 4
  %dma_burst_size = getelementptr inbounds %struct.pxa_spi_info, ptr %c, i32 0, i32 7
  %16 = ptrtoint ptr %dma_burst_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %dma_burst_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lpss_dma_filter(ptr nocapture noundef %chan, ptr noundef %param) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %6 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %param, ptr %private, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_spi_pxa2xx_pci__238_316_pxa2xx_spi_pci_driver_init6, !1, !"__initcall__kmod_spi_pxa2xx_pci__238_316_pxa2xx_spi_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 316, i32 1}
!2 = !{ptr @__exitcall_pxa2xx_spi_pci_driver_exit, !1, !"__exitcall_pxa2xx_spi_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 318, i32 1}
!5 = !{ptr @__UNIQUE_ID_file240, !6, !"__UNIQUE_ID_file240", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 319, i32 1}
!7 = !{ptr @__UNIQUE_ID_license241, !6, !"__UNIQUE_ID_license241", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author242, !9, !"__UNIQUE_ID_author242", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 320, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 310, i32 20}
!13 = !{ptr @pxa2xx_spi_pci_driver, !14, !"pxa2xx_spi_pci_driver", i1 false, i1 false}
!14 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 309, i32 26}
!15 = !{ptr @pxa2xx_spi_pci_devices, !16, !"pxa2xx_spi_pci_devices", i1 false, i1 false}
!16 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 293, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 224, i32 40}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 257, i32 29}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 266, i32 12}
!23 = !{ptr @spi_info_configs, !24, !"spi_info_configs", i1 false, i1 false}
!24 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 147, i32 28}
!25 = !{ptr @byt_tx_param, !26, !"byt_tx_param", i1 false, i1 false}
!26 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 46, i32 28}
!27 = !{ptr @byt_rx_param, !28, !"byt_rx_param", i1 false, i1 false}
!28 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 47, i32 28}
!29 = !{ptr @mrfld3_tx_param, !30, !"mrfld3_tx_param", i1 false, i1 false}
!30 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 49, i32 28}
!31 = !{ptr @mrfld3_rx_param, !32, !"mrfld3_rx_param", i1 false, i1 false}
!32 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 50, i32 28}
!33 = !{ptr @mrfld5_tx_param, !34, !"mrfld5_tx_param", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 51, i32 28}
!35 = !{ptr @mrfld5_rx_param, !36, !"mrfld5_rx_param", i1 false, i1 false}
!36 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 52, i32 28}
!37 = !{ptr @mrfld6_tx_param, !38, !"mrfld6_tx_param", i1 false, i1 false}
!38 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 53, i32 28}
!39 = !{ptr @mrfld6_rx_param, !40, !"mrfld6_rx_param", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 54, i32 28}
!41 = !{ptr @bsw0_tx_param, !42, !"bsw0_tx_param", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 56, i32 28}
!43 = !{ptr @bsw0_rx_param, !44, !"bsw0_rx_param", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 57, i32 28}
!45 = !{ptr @bsw1_tx_param, !46, !"bsw1_tx_param", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 58, i32 28}
!47 = !{ptr @bsw1_rx_param, !48, !"bsw1_rx_param", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 59, i32 28}
!49 = !{ptr @bsw2_tx_param, !50, !"bsw2_tx_param", i1 false, i1 false}
!50 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 60, i32 28}
!51 = !{ptr @bsw2_rx_param, !52, !"bsw2_rx_param", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 61, i32 28}
!53 = !{ptr @lpt0_tx_param, !54, !"lpt0_tx_param", i1 false, i1 false}
!54 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 65, i32 28}
!55 = !{ptr @lpt0_rx_param, !56, !"lpt0_rx_param", i1 false, i1 false}
!56 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 66, i32 28}
!57 = !{ptr @lpt1_tx_param, !58, !"lpt1_tx_param", i1 false, i1 false}
!58 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 63, i32 28}
!59 = !{ptr @lpt1_rx_param, !60, !"lpt1_rx_param", i1 false, i1 false}
!60 = !{!"../drivers/spi/spi-pxa2xx-pci.c", i32 64, i32 28}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
