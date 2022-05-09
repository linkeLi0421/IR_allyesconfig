; ModuleID = '/llk/IR_all_yes/drivers/mfd/timberdale.c_pt.bc'
source_filename = "../drivers/mfd/timberdale.c"
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.xspi_platform_data = type { i16, i8, ptr, i8 }
%struct.spi_board_info = type { [32 x i8], ptr, ptr, ptr, i32, i32, i16, i16, i32 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.tsc2007_platform_data = type { i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.mc33880_platform_data = type { i32 }
%struct.max7301_platform_data = type { i32, i32 }
%struct.xiic_i2c_platform_data = type { i8, ptr }
%struct.timbgpio_platform_data = type { i32, i32, i32 }
%struct.timb_video_platform_data = type { i32, i32, %struct.anon.94 }
%struct.anon.94 = type { ptr, ptr }
%struct.timb_radio_platform_data = type { i32, ptr, ptr }
%struct.ks8842_platform_data = type { [6 x i8], i32, i32 }
%struct.timb_dma_platform_data_channel = type { i8, i32, i32, i32 }
%struct.ocores_i2c_platform_data = type { i32, i32, i32, i32, i8, i8, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.timberdale_device = type { i32, ptr, %struct.anon.91 }
%struct.anon.91 = type { i32, i32, i32 }
%struct.msix_entry = type { i32, i16 }

@__initcall__kmod_timberdale__319_854_timberdale_pci_driver_init6 = internal global ptr @timberdale_pci_driver_init, section ".initcall6.init", align 4
@timberdale_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @timberdale_pci_tbl, ptr @timb_probe, ptr @timb_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_timberdale_pci_driver_exit = internal global ptr @timberdale_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author320 = internal constant [61 x i8] c"timberdale.author=Mocean Laboratories <info@mocean-labs.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_version321 = internal constant [23 x i8] c"timberdale.version=0.3\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timberdale\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.3\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file322 = internal constant [39 x i8] c"timberdale.file=drivers/mfd/timberdale\00", section ".modinfo", align 1
@__UNIQUE_ID_license323 = internal constant [26 x i8] c"timberdale.license=GPL v2\00", section ".modinfo", align 1
@timberdale_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4334, i32 41251, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@timb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 660, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No resource\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timb_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/mfd/timberdale.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@timb_probe._entry_ptr = internal global ptr @timb_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timb-ctl\00", [23 x i8] zeroinitializer }, align 32
@timb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 667, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request ctl mem\0A\00", [37 x i8] zeroinitializer }, align 32
@timb_probe._entry_ptr.11 = internal global ptr @timb_probe._entry.9, section ".printk_index", align 4
@timb_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 673, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ioremap failed for ctl mem\0A\00", [36 x i8] zeroinitializer }, align 32
@timb_probe._entry_ptr.14 = internal global ptr @timb_probe._entry.12, section ".printk_index", align 4
@timb_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 685, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"The driver supports an older version of the FPGA, please update the driver to support %d.%d\0A\00", [35 x i8] zeroinitializer }, align 32
@timb_probe._entry_ptr.17 = internal global ptr @timb_probe._entry.15, section ".printk_index", align 4
@timb_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 693, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"The FPGA image is too old (%d.%d), please upgrade the FPGA to at least: %d.%d\0A\00", [49 x i8] zeroinitializer }, align 32
@timb_probe._entry_ptr.20 = internal global ptr @timb_probe._entry.18, section ".printk_index", align 4
@timb_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 709, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MSI-X init failed: %d, expected entries: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@timb_probe._entry_ptr.23 = internal global ptr @timb_probe._entry.21, section ".printk_index", align 4
@dev_attr_fw_ver = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fw_ver_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@timberdale_i2c_board_info = internal global { [1 x %struct.i2c_board_info], [40 x i8] } { [1 x %struct.i2c_board_info] [%struct.i2c_board_info { [20 x i8] c"tsc2007\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 72, ptr null, ptr @timberdale_tsc2007_platform_data, ptr null, ptr null, ptr null, ptr null, i32 0, i32 7 }], [40 x i8] zeroinitializer }, align 32
@timberdale_xspi_platform_data = internal global { %struct.xspi_platform_data, [20 x i8] } { %struct.xspi_platform_data { i16 3, i8 0, ptr null, i8 0 }, [20 x i8] zeroinitializer }, align 32
@timberdale_spi_8bit_board_info = internal global { [1 x %struct.spi_board_info], [36 x i8] } { [1 x %struct.spi_board_info] [%struct.spi_board_info { [32 x i8] c"mc33880\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @timberdale_mc33880_platform_data, ptr null, ptr null, i32 0, i32 4000, i16 0, i16 1, i32 1 }], [36 x i8] zeroinitializer }, align 32
@timberdale_spi_16bit_board_info = internal global { [1 x %struct.spi_board_info], [36 x i8] } { [1 x %struct.spi_board_info] [%struct.spi_board_info { [32 x i8] c"max7301\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @timberdale_max7301_platform_data, ptr null, ptr null, i32 0, i32 26000, i16 0, i16 2, i32 0 }], [36 x i8] zeroinitializer }, align 32
@timberdale_cells_bar0_cfg0 = internal constant { [8 x %struct.mfd_cell], [160 x i8] } { [8 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.40, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timb_dma_platform_data, i32 516, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_dma_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.41, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_uart_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.42, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_xiic_platform_data, i32 8, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_xiic_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.43, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_gpio_platform_data, i32 12, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_gpio_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.44, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_video_platform_data, i32 16, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @timberdale_video_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.45, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_radio_platform_data, i32 12, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_radio_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.46, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_xspi_platform_data, i32 12, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_spi_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.47, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_ks8842_platform_data, i32 16, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_eth_resources, i8 0, i8 0, ptr null, i32 0 }], [160 x i8] zeroinitializer }, align 32
@timberdale_cells_bar0_cfg1 = internal constant { [10 x %struct.mfd_cell], [208 x i8] } { [10 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.40, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timb_dma_platform_data, i32 516, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_dma_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.41, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_uart_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.49, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_uartlite_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.42, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_xiic_platform_data, i32 8, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_xiic_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.43, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_gpio_platform_data, i32 12, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_gpio_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.50, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 3, ptr @timberdale_mlogicore_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.44, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_video_platform_data, i32 16, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @timberdale_video_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.45, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_radio_platform_data, i32 12, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_radio_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.46, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_xspi_platform_data, i32 12, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_spi_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.47, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_ks8842_platform_data, i32 16, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_eth_resources, i8 0, i8 0, ptr null, i32 0 }], [208 x i8] zeroinitializer }, align 32
@timberdale_cells_bar0_cfg2 = internal constant { [7 x %struct.mfd_cell], [152 x i8] } { [7 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.40, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timb_dma_platform_data, i32 516, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_dma_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.41, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_uart_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.42, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_xiic_platform_data, i32 8, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_xiic_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.43, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_gpio_platform_data, i32 12, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_gpio_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.44, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_video_platform_data, i32 16, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @timberdale_video_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.45, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_radio_platform_data, i32 12, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_radio_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.46, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_xspi_platform_data, i32 12, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_spi_resources, i8 0, i8 0, ptr null, i32 0 }], [152 x i8] zeroinitializer }, align 32
@timberdale_cells_bar0_cfg3 = internal constant { [8 x %struct.mfd_cell], [160 x i8] } { [8 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.40, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timb_dma_platform_data, i32 516, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_dma_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.41, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_uart_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.51, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_ocores_platform_data, i32 24, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_ocores_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.43, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_gpio_platform_data, i32 12, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_gpio_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.44, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_video_platform_data, i32 16, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @timberdale_video_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.45, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_radio_platform_data, i32 12, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_radio_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.46, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_xspi_platform_data, i32 12, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_spi_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.47, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @timberdale_ks8842_platform_data, i32 16, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_eth_resources, i8 0, i8 0, ptr null, i32 0 }], [160 x i8] zeroinitializer }, align 32
@timb_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 768, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unknown IP setup: %d.%d.%d\0A\00", [36 x i8] zeroinitializer }, align 32
@timb_probe._entry_ptr.26 = internal global ptr @timb_probe._entry.24, section ".printk_index", align 4
@timb_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 774, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mfd_add_devices failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@timb_probe._entry_ptr.29 = internal global ptr @timb_probe._entry.27, section ".printk_index", align 4
@timberdale_cells_bar1 = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.52, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_sdhc_resources, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@timb_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 782, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@timb_probe._entry_ptr.31 = internal global ptr @timb_probe._entry.30, section ".printk_index", align 4
@timberdale_cells_bar2 = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.52, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @timberdale_sdhc_resources, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@timb_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 793, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@timb_probe._entry_ptr.33 = internal global ptr @timb_probe._entry.32, section ".printk_index", align 4
@timb_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.4, ptr @.str.5, i32 802, ptr @.str.36, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Found Timberdale Card. Rev: %d.%d, HW config: 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@timb_probe._entry_ptr.37 = internal global ptr @timb_probe._entry.34, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fw_ver\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d.%d.%d\0A\00", [22 x i8] zeroinitializer }, align 32
@timberdale_tsc2007_platform_data = internal global { %struct.tsc2007_platform_data, [56 x i8] } { %struct.tsc2007_platform_data { i16 2003, i16 100, i16 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@timberdale_mc33880_platform_data = internal constant { %struct.mc33880_platform_data, [28 x i8] } { %struct.mc33880_platform_data { i32 100 }, [28 x i8] zeroinitializer }, align 32
@timberdale_max7301_platform_data = internal constant { %struct.max7301_platform_data, [24 x i8] } { %struct.max7301_platform_data { i32 200, i32 0 }, [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timb-dma\00", [23 x i8] zeroinitializer }, align 32
@timberdale_dma_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 16777216, i32 20971519, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 5, i32 5, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timb-uart\00", [22 x i8] zeroinitializer }, align 32
@timberdale_uart_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 5120, i32 6143, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 4, i32 4, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xiic-i2c\00", [23 x i8] zeroinitializer }, align 32
@timberdale_xiic_platform_data = internal global { %struct.xiic_i2c_platform_data, [24 x i8] } { %struct.xiic_i2c_platform_data { i8 1, ptr @timberdale_i2c_board_info }, [24 x i8] zeroinitializer }, align 32
@timberdale_xiic_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 6144, i32 6655, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 3, i32 3, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timb-gpio\00", [22 x i8] zeroinitializer }, align 32
@timberdale_gpio_platform_data = internal global { %struct.timbgpio_platform_data, [20 x i8] } { %struct.timbgpio_platform_data { i32 0, i32 16, i32 200 }, [20 x i8] zeroinitializer }, align 32
@timberdale_gpio_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 1024, i32 2047, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 2, i32 2, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timb-video\00", [21 x i8] zeroinitializer }, align 32
@timberdale_video_platform_data = internal global { %struct.timb_video_platform_data, [16 x i8] } { %struct.timb_video_platform_data { i32 4, i32 0, %struct.anon.94 { ptr null, ptr @timberdale_adv7180_i2c_board_info } }, [16 x i8] zeroinitializer }, align 32
@timberdale_video_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 196608, i32 229375, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timb-radio\00", [21 x i8] zeroinitializer }, align 32
@timberdale_radio_platform_data = internal global { %struct.timb_radio_platform_data, [20 x i8] } { %struct.timb_radio_platform_data { i32 0, ptr @timberdale_tef6868_i2c_board_info, ptr @timberdale_saa7706_i2c_board_info }, [20 x i8] zeroinitializer }, align 32
@timberdale_radio_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 384, i32 387, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 15, i32 15, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xilinx_spi\00", [21 x i8] zeroinitializer }, align 32
@timberdale_spi_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 128, i32 255, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 11, i32 11, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ks8842\00", [25 x i8] zeroinitializer }, align 32
@timberdale_ks8842_platform_data = internal global { %struct.ks8842_platform_data, [16 x i8] } { %struct.ks8842_platform_data { [6 x i8] zeroinitializer, i32 8, i32 9 }, [16 x i8] zeroinitializer }, align 32
@timberdale_eth_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 768, i32 1023, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 10, i32 10, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@timb_dma_platform_data = internal global { { i32, <{ [10 x %struct.timb_dma_platform_data_channel], [22 x %struct.timb_dma_platform_data_channel] }> }, [156 x i8] } { { i32, <{ [10 x %struct.timb_dma_platform_data_channel], [22 x %struct.timb_dma_platform_data_channel] }> } { i32 10, <{ [10 x %struct.timb_dma_platform_data_channel], [22 x %struct.timb_dma_platform_data_channel] }> <{ [10 x %struct.timb_dma_platform_data_channel] [%struct.timb_dma_platform_data_channel { i8 1, i32 0, i32 2, i32 1 }, %struct.timb_dma_platform_data_channel { i8 0, i32 0, i32 2, i32 1 }, %struct.timb_dma_platform_data_channel { i8 1, i32 0, i32 2, i32 1 }, %struct.timb_dma_platform_data_channel { i8 0, i32 0, i32 2, i32 1 }, %struct.timb_dma_platform_data_channel { i8 1, i32 1440, i32 2, i32 16 }, %struct.timb_dma_platform_data_channel zeroinitializer, %struct.timb_dma_platform_data_channel { i8 1, i32 0, i32 0, i32 0 }, %struct.timb_dma_platform_data_channel zeroinitializer, %struct.timb_dma_platform_data_channel { i8 1, i32 0, i32 2, i32 1 }, %struct.timb_dma_platform_data_channel { i8 0, i32 0, i32 2, i32 1 }], [22 x %struct.timb_dma_platform_data_channel] zeroinitializer }> }, [156 x i8] zeroinitializer }, align 32
@timberdale_adv7180_i2c_board_info = internal global { %struct.i2c_board_info, [40 x i8] } { %struct.i2c_board_info { [20 x i8] c"adv7180\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 33, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 9 }, [40 x i8] zeroinitializer }, align 32
@timberdale_tef6868_i2c_board_info = internal global { %struct.i2c_board_info, [40 x i8] } { %struct.i2c_board_info { [20 x i8] c"tef6862\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 96, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@timberdale_saa7706_i2c_board_info = internal global { %struct.i2c_board_info, [40 x i8] } { %struct.i2c_board_info { [20 x i8] c"saa7706h\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 28, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uartlite\00", [23 x i8] zeroinitializer }, align 32
@timberdale_uartlite_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 256, i32 271, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 12, i32 12, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"timb-mlogicore\00", [17 x i8] zeroinitializer }, align 32
@timberdale_mlogicore_resources = internal constant { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 262144, i32 278527, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 13, i32 13, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 14, i32 14, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ocores-i2c\00", [21 x i8] zeroinitializer }, align 32
@timberdale_ocores_platform_data = internal global { %struct.ocores_i2c_platform_data, [40 x i8] } { %struct.ocores_i2c_platform_data { i32 2, i32 0, i32 62500, i32 0, i8 0, i8 1, ptr @timberdale_i2c_board_info }, [40 x i8] zeroinitializer }, align 32
@timberdale_ocores_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 0, i32 31, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 3, i32 3, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdhci\00", [26 x i8] zeroinitializer }, align 32
@timberdale_sdhc_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 0, i32 255, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 8, i32 8, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"timberdale_pci_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 847, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 857, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c"timberdale_pci_tbl\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 841, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 660, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 666, i32 7 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 667, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 673, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 683, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 690, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 707, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"dev_attr_fw_ver\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [26 x i8] c"timberdale_i2c_board_info\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 58, i32 30 }
@___asan_gen_.126 = private unnamed_addr constant [30 x i8] c"timberdale_xspi_platform_data\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 134, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant [31 x i8] c"timberdale_spi_8bit_board_info\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 124, i32 30 }
@___asan_gen_.132 = private unnamed_addr constant [32 x i8] c"timberdale_spi_16bit_board_info\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 114, i32 30 }
@___asan_gen_.135 = private unnamed_addr constant [27 x i8] c"timberdale_cells_bar0_cfg0\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 365, i32 30 }
@___asan_gen_.138 = private unnamed_addr constant [27 x i8] c"timberdale_cells_bar0_cfg1\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 422, i32 30 }
@___asan_gen_.141 = private unnamed_addr constant [27 x i8] c"timberdale_cells_bar0_cfg2\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 489, i32 30 }
@___asan_gen_.144 = private unnamed_addr constant [27 x i8] c"timberdale_cells_bar0_cfg3\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 539, i32 30 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 767, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 774, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [22 x i8] c"timberdale_cells_bar1\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 610, i32 30 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 782, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [22 x i8] c"timberdale_cells_bar2\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 618, i32 30 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 793, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 800, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 635, i32 8 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 631, i32 22 }
@___asan_gen_.186 = private unnamed_addr constant [33 x i8] c"timberdale_tsc2007_platform_data\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 53, i32 37 }
@___asan_gen_.189 = private unnamed_addr constant [33 x i8] c"timberdale_mc33880_platform_data\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 110, i32 43 }
@___asan_gen_.192 = private unnamed_addr constant [33 x i8] c"timberdale_max7301_platform_data\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 106, i32 43 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 367, i32 11 }
@___asan_gen_.198 = private unnamed_addr constant [25 x i8] c"timberdale_dma_resources\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 352, i32 30 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 374, i32 11 }
@___asan_gen_.204 = private unnamed_addr constant [26 x i8] c"timberdale_uart_resources\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 211, i32 30 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 379, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant [30 x i8] c"timberdale_xiic_platform_data\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 67, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant [26 x i8] c"timberdale_xiic_resources\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 80, i32 30 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 386, i32 11 }
@___asan_gen_.219 = private unnamed_addr constant [30 x i8] c"timberdale_gpio_platform_data\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 174, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [26 x i8] c"timberdale_gpio_resources\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 180, i32 30 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 393, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant [31 x i8] c"timberdale_video_platform_data\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 244, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [27 x i8] c"timberdale_video_resources\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 281, i32 30 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 400, i32 11 }
@___asan_gen_.237 = private unnamed_addr constant [31 x i8] c"timberdale_radio_platform_data\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 275, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [27 x i8] c"timberdale_radio_resources\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 253, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 407, i32 11 }
@___asan_gen_.246 = private unnamed_addr constant [25 x i8] c"timberdale_spi_resources\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 141, i32 30 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 414, i32 11 }
@___asan_gen_.252 = private unnamed_addr constant [32 x i8] c"timberdale_ks8842_platform_data\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 155, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [25 x i8] c"timberdale_eth_resources\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 160, i32 30 }
@___asan_gen_.258 = private unnamed_addr constant [23 x i8] c"timb_dma_platform_data\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 293, i32 38 }
@___asan_gen_.261 = private unnamed_addr constant [34 x i8] c"timberdale_adv7180_i2c_board_info\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 237, i32 30 }
@___asan_gen_.264 = private unnamed_addr constant [34 x i8] c"timberdale_tef6868_i2c_board_info\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 266, i32 30 }
@___asan_gen_.267 = private unnamed_addr constant [34 x i8] c"timberdale_saa7706_i2c_board_info\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 270, i32 30 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 436, i32 11 }
@___asan_gen_.273 = private unnamed_addr constant [30 x i8] c"timberdale_uartlite_resources\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 224, i32 30 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 455, i32 11 }
@___asan_gen_.279 = private unnamed_addr constant [31 x i8] c"timberdale_mlogicore_resources\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 193, i32 30 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 553, i32 11 }
@___asan_gen_.285 = private unnamed_addr constant [32 x i8] c"timberdale_ocores_platform_data\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 73, i32 1 }
@___asan_gen_.288 = private unnamed_addr constant [28 x i8] c"timberdale_ocores_resources\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 93, i32 30 }
@___asan_gen_.291 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 612, i32 11 }
@___asan_gen_.294 = private unnamed_addr constant [26 x i8] c"timberdale_sdhc_resources\00", align 1
@___asan_gen_.295 = private constant [28 x i8] c"../drivers/mfd/timberdale.c\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 596, i32 30 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_file322, ptr @__UNIQUE_ID_license323, ptr @__UNIQUE_ID_version321, ptr @__exitcall_timberdale_pci_driver_exit, ptr @__initcall__kmod_timberdale__319_854_timberdale_pci_driver_init6, ptr @__modver_attr, ptr @timb_probe._entry, ptr @timb_probe._entry.12, ptr @timb_probe._entry.15, ptr @timb_probe._entry.18, ptr @timb_probe._entry.21, ptr @timb_probe._entry.24, ptr @timb_probe._entry.27, ptr @timb_probe._entry.30, ptr @timb_probe._entry.32, ptr @timb_probe._entry.34, ptr @timb_probe._entry.9, ptr @timb_probe._entry_ptr, ptr @timb_probe._entry_ptr.11, ptr @timb_probe._entry_ptr.14, ptr @timb_probe._entry_ptr.17, ptr @timb_probe._entry_ptr.20, ptr @timb_probe._entry_ptr.23, ptr @timb_probe._entry_ptr.26, ptr @timb_probe._entry_ptr.29, ptr @timb_probe._entry_ptr.31, ptr @timb_probe._entry_ptr.33, ptr @timb_probe._entry_ptr.37, ptr @timberdale_pci_driver_exit, ptr @timberdale_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @timberdale_pci_tbl, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @dev_attr_fw_ver, ptr @timberdale_i2c_board_info, ptr @timberdale_xspi_platform_data, ptr @timberdale_spi_8bit_board_info, ptr @timberdale_spi_16bit_board_info, ptr @timberdale_cells_bar0_cfg0, ptr @timberdale_cells_bar0_cfg1, ptr @timberdale_cells_bar0_cfg2, ptr @timberdale_cells_bar0_cfg3, ptr @.str.25, ptr @.str.28, ptr @timberdale_cells_bar1, ptr @timberdale_cells_bar2, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @timberdale_tsc2007_platform_data, ptr @timberdale_mc33880_platform_data, ptr @timberdale_max7301_platform_data, ptr @.str.40, ptr @timberdale_dma_resources, ptr @.str.41, ptr @timberdale_uart_resources, ptr @.str.42, ptr @timberdale_xiic_platform_data, ptr @timberdale_xiic_resources, ptr @.str.43, ptr @timberdale_gpio_platform_data, ptr @timberdale_gpio_resources, ptr @.str.44, ptr @timberdale_video_platform_data, ptr @timberdale_video_resources, ptr @.str.45, ptr @timberdale_radio_platform_data, ptr @timberdale_radio_resources, ptr @.str.46, ptr @timberdale_spi_resources, ptr @.str.47, ptr @timberdale_ks8842_platform_data, ptr @timberdale_eth_resources, ptr @timb_dma_platform_data, ptr @timberdale_adv7180_i2c_board_info, ptr @timberdale_tef6868_i2c_board_info, ptr @timberdale_saa7706_i2c_board_info, ptr @.str.49, ptr @timberdale_uartlite_resources, ptr @.str.50, ptr @timberdale_mlogicore_resources, ptr @.str.51, ptr @timberdale_ocores_platform_data, ptr @timberdale_ocores_resources, ptr @.str.52, ptr @timberdale_sdhc_resources], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timb_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timb_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timb_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timb_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_ver to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_i2c_board_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_xspi_platform_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_spi_8bit_board_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_spi_16bit_board_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_cells_bar0_cfg0 to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_cells_bar0_cfg1 to i32), i32 880, i32 1088, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_cells_bar0_cfg2 to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_cells_bar0_cfg3 to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timb_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timb_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_cells_bar1 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timb_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_cells_bar2 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timb_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timb_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_tsc2007_platform_data to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_mc33880_platform_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_max7301_platform_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_dma_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_uart_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_xiic_platform_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_xiic_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_gpio_platform_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_gpio_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_video_platform_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_video_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_radio_platform_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_radio_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_spi_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_ks8842_platform_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_eth_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timb_dma_platform_data to i32), i32 516, i32 672, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_adv7180_i2c_board_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_tef6868_i2c_board_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_saa7706_i2c_board_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_uartlite_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_mlogicore_resources to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_ocores_platform_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_ocores_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timberdale_sdhc_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @timberdale_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @timberdale_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @timberdale_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @timberdale_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timb_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pci_enable_device(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_enable_crit_edge

if.end.err_enable_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_enable

if.end4:                                          ; preds = %if.end
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.3) #12
  br label %err_start

if.end8:                                          ; preds = %if.end4
  %add = add i32 %3, 2048
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %call7.i.i, align 8
  %call10 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %add, i32 noundef 256, ptr noundef nonnull @.str.8, i32 noundef 0) #8
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.10) #12
  br label %err_start

if.end17:                                         ; preds = %if.end8
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call7.i.i, align 8
  %call19 = tail call ptr @ioremap(i32 noundef %6, i32 noundef 256) #8
  %ctl_membase = getelementptr inbounds %struct.timberdale_device, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %ctl_membase to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call19, ptr %ctl_membase, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.13) #12
  br label %err_ioremap

if.end27:                                         ; preds = %if.end17
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call19) #8, !srcloc !175
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  %fw = getelementptr inbounds %struct.timberdale_device, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fw, align 8
  %11 = ptrtoint ptr %ctl_membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctl_membase, align 4
  %add.ptr31 = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #8, !srcloc !175
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  %minor = getelementptr inbounds %struct.timberdale_device, ptr %call7.i.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %minor, align 4
  %16 = ptrtoint ptr %ctl_membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctl_membase, align 4
  %add.ptr35 = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #8, !srcloc !175
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  %config = getelementptr inbounds %struct.timberdale_device, ptr %call7.i.i, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %config, align 8
  %21 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp = icmp ugt i32 %22, 3
  br i1 %cmp, label %do.end43, label %if.end49

do.end43:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %23 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %minor, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.16, i32 noundef %22, i32 noundef %24) #12
  br label %err_config

if.end49:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp52.not = icmp eq i32 %22, 3
  br i1 %cmp52.not, label %lor.lhs.false, label %if.end49.do.end59_crit_edge

if.end49.do.end59_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

lor.lhs.false:                                    ; preds = %if.end49
  %25 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %26)
  %cmp55 = icmp ult i32 %26, 8
  br i1 %cmp55, label %lor.lhs.false.do.end59_crit_edge, label %if.end65

lor.lhs.false.do.end59_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

do.end59:                                         ; preds = %lor.lhs.false.do.end59_crit_edge, %if.end49.do.end59_crit_edge
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %27 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %minor, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev60, ptr noundef nonnull @.str.19, i32 noundef %22, i32 noundef %28, i32 noundef 3, i32 noundef 8) #12
  br label %err_config

if.end65:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 128) #11
  %tobool67.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool67.not, label %if.end65.err_config_crit_edge, label %for.body.preheader

if.end65.err_config_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_config

for.body.preheader:                               ; preds = %if.end65
  %entry72 = getelementptr %struct.msix_entry, ptr %call7.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %entry72 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %entry72, align 4
  %entry72.1 = getelementptr %struct.msix_entry, ptr %call7.i.i.i, i32 1, i32 1
  %31 = ptrtoint ptr %entry72.1 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %entry72.1, align 4
  %entry72.2 = getelementptr %struct.msix_entry, ptr %call7.i.i.i, i32 2, i32 1
  %32 = ptrtoint ptr %entry72.2 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 2, ptr %entry72.2, align 4
  %entry72.3 = getelementptr %struct.msix_entry, ptr %call7.i.i.i, i32 3, i32 1
  %33 = ptrtoint ptr %entry72.3 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 3, ptr %entry72.3, align 4
  %entry72.4 = getelementptr %struct.msix_entry, ptr %call7.i.i.i, i32 4, i32 1
  %34 = ptrtoint ptr %entry72.4 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 4, ptr %entry72.4, align 4
  %entry72.5 = getelementptr %struct.msix_entry, ptr %call7.i.i.i, i32 5, i32 1
  %35 = ptrtoint ptr %entry72.5 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 5, ptr %entry72.5, align 4
  %entry72.6 = getelementptr %struct.msix_entry, ptr %call7.i.i.i, i32 6, i32 1
  %36 = ptrtoint ptr %entry72.6 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 6, ptr %entry72.6, align 4
  %entry72.7 = getelementptr %struct.msix_entry, ptr %call7.i.i.i, i32 7, i32 1
  %37 = ptrtoint ptr %entry72.7 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 7, ptr %entry72.7, align 4
  %entry72.8 = getelementptr %struct.msix_entry, ptr %call7.i.i.i, i32 8, i32 1
  %38 = ptrtoint ptr %entry72.8 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 8, ptr %entry72.8, align 4
  %entry72.9 = getelementptr %struct.msix_entry, ptr %call7.i.i.i, i32 9, i32 1
  %39 = ptrtoint ptr %entry72.9 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 9, ptr %entry72.9, align 4
  %entry72.10 = getelementptr %struct.msix_entry, ptr %call7.i.i.i, i32 10, i32 1
  %40 = ptrtoint ptr %entry72.10 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 10, ptr %entry72.10, align 4
  %entry72.11 = getelementptr %struct.msix_entry, ptr %call7.i.i.i, i32 11, i32 1
  %41 = ptrtoint ptr %entry72.11 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 11, ptr %entry72.11, align 4
  %entry72.12 = getelementptr %struct.msix_entry, ptr %call7.i.i.i, i32 12, i32 1
  %42 = ptrtoint ptr %entry72.12 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 12, ptr %entry72.12, align 4
  %entry72.13 = getelementptr %struct.msix_entry, ptr %call7.i.i.i, i32 13, i32 1
  %43 = ptrtoint ptr %entry72.13 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 13, ptr %entry72.13, align 4
  %entry72.14 = getelementptr %struct.msix_entry, ptr %call7.i.i.i, i32 14, i32 1
  %44 = ptrtoint ptr %entry72.14 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 14, ptr %entry72.14, align 4
  %entry72.15 = getelementptr %struct.msix_entry, ptr %call7.i.i.i, i32 15, i32 1
  %45 = ptrtoint ptr %entry72.15 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 15, ptr %entry72.15, align 4
  %call.i = tail call i32 @pci_enable_msix_range(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef 16, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool74.not = icmp sgt i32 %call.i, -1
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br i1 %tobool74.not, label %if.end80, label %do.end78

do.end78:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev81, ptr noundef nonnull @.str.22, i32 noundef %call.i, i32 noundef 16) #12
  br label %err_msix

if.end80:                                         ; preds = %for.body.preheader
  %call82 = tail call i32 @device_create_file(ptr noundef %dev81, ptr noundef nonnull @dev_attr_fw_ver) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end80.err_create_file_crit_edge

if.end80.err_create_file_crit_edge:               ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_create_file

if.end85:                                         ; preds = %if.end80
  %46 = ptrtoint ptr %ctl_membase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctl_membase, align 4
  %add.ptr87 = getelementptr i8, ptr %47, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 16777216) #8, !srcloc !178
  %48 = load i32, ptr getelementptr inbounds ([1 x %struct.i2c_board_info], ptr @timberdale_i2c_board_info, i32 0, i32 0, i32 10), align 4
  %arrayidx93 = getelementptr %struct.msix_entry, ptr %call7.i.i.i, i32 %48
  %49 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx93, align 8
  store i32 %50, ptr getelementptr inbounds ([1 x %struct.i2c_board_info], ptr @timberdale_i2c_board_info, i32 0, i32 0, i32 10), align 4
  %51 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %config, align 8
  %and = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool101.not = icmp eq i32 %and, 0
  %storemerge303 = select i1 %tobool101.not, i8 16, i8 8
  %storemerge = select i1 %tobool101.not, ptr @timberdale_spi_16bit_board_info, ptr @timberdale_spi_8bit_board_info
  store i8 %storemerge303, ptr getelementptr inbounds (%struct.xspi_platform_data, ptr @timberdale_xspi_platform_data, i32 0, i32 1), align 2
  store ptr %storemerge, ptr getelementptr inbounds (%struct.xspi_platform_data, ptr @timberdale_xspi_platform_data, i32 0, i32 2), align 4
  store i8 1, ptr getelementptr inbounds (%struct.xspi_platform_data, ptr @timberdale_xspi_platform_data, i32 0, i32 3), align 4
  %conv107 = and i32 %52, 15
  %53 = zext i32 %conv107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv107, label %do.end138 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb115
    i32 2, label %sw.bb122
    i32 3, label %sw.bb129
  ]

sw.bb:                                            ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %call7.i.i.i, align 8
  %call114 = tail call i32 @mfd_add_devices(ptr noundef %dev81, i32 noundef -1, ptr noundef nonnull @timberdale_cells_bar0_cfg0, i32 noundef 8, ptr noundef %resource, i32 noundef %55, ptr noundef null) #8
  br label %sw.epilog

sw.bb115:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call7.i.i.i, align 8
  %call121 = tail call i32 @mfd_add_devices(ptr noundef %dev81, i32 noundef -1, ptr noundef nonnull @timberdale_cells_bar0_cfg1, i32 noundef 10, ptr noundef %resource, i32 noundef %57, ptr noundef null) #8
  br label %sw.epilog

sw.bb122:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %call7.i.i.i, align 8
  %call128 = tail call i32 @mfd_add_devices(ptr noundef %dev81, i32 noundef -1, ptr noundef nonnull @timberdale_cells_bar0_cfg2, i32 noundef 7, ptr noundef %resource, i32 noundef %59, ptr noundef null) #8
  br label %sw.epilog

sw.bb129:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %call7.i.i.i, align 8
  %call135 = tail call i32 @mfd_add_devices(ptr noundef %dev81, i32 noundef -1, ptr noundef nonnull @timberdale_cells_bar0_cfg3, i32 noundef 8, ptr noundef %resource, i32 noundef %61, ptr noundef null) #8
  br label %sw.epilog

do.end138:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fw, align 8
  %64 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %minor, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev81, ptr noundef nonnull @.str.25, i32 noundef %63, i32 noundef %65, i32 noundef %conv107) #12
  br label %err_mfd

sw.epilog:                                        ; preds = %sw.bb129, %sw.bb122, %sw.bb115, %sw.bb
  %err.0 = phi i32 [ %call135, %sw.bb129 ], [ %call128, %sw.bb122 ], [ %call121, %sw.bb115 ], [ %call114, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool145.not = icmp eq i32 %err.0, 0
  br i1 %tobool145.not, label %if.end151, label %do.end149

do.end149:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev81, ptr noundef nonnull @.str.28, i32 noundef %err.0) #12
  br label %err_mfd

if.end151:                                        ; preds = %sw.epilog
  %arrayidx154 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1
  %66 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %call7.i.i.i, align 8
  %call157 = tail call i32 @mfd_add_devices(ptr noundef %dev81, i32 noundef 0, ptr noundef nonnull @timberdale_cells_bar1, i32 noundef 1, ptr noundef %arrayidx154, i32 noundef %67, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end164, label %if.end151.err_mfd2_crit_edge

if.end151.err_mfd2_crit_edge:                     ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mfd2

if.end164:                                        ; preds = %if.end151
  %68 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %config, align 8
  %and167 = and i32 %69, 15
  %70 = zext i32 %and167 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %and167, label %if.end164.if.end190_crit_edge [
    i32 0, label %if.end164.if.then176_crit_edge
    i32 3, label %if.end164.if.then176_crit_edge305
  ]

if.end164.if.then176_crit_edge305:                ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then176

if.end164.if.then176_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then176

if.end164.if.end190_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end190

if.then176:                                       ; preds = %if.end164.if.then176_crit_edge, %if.end164.if.then176_crit_edge305
  %arrayidx179 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2
  %71 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %call7.i.i.i, align 8
  %call182 = tail call i32 @mfd_add_devices(ptr noundef %dev81, i32 noundef 1, ptr noundef nonnull @timberdale_cells_bar2, i32 noundef 1, ptr noundef %arrayidx179, i32 noundef %72, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.then176.if.end190_crit_edge, label %if.then176.err_mfd2_crit_edge

if.then176.err_mfd2_crit_edge:                    ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mfd2

if.then176.if.end190_crit_edge:                   ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end190

if.end190:                                        ; preds = %if.then176.if.end190_crit_edge, %if.end164.if.end190_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  %73 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fw, align 8
  %75 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %minor, align 4
  %77 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %config, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev81, ptr noundef nonnull @.str.35, i32 noundef %74, i32 noundef %76, i32 noundef %78) #12
  br label %cleanup

err_mfd2:                                         ; preds = %if.then176.err_mfd2_crit_edge, %if.end151.err_mfd2_crit_edge
  %call182.sink = phi i32 [ %call157, %if.end151.err_mfd2_crit_edge ], [ %call182, %if.then176.err_mfd2_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev81, ptr noundef nonnull @.str.28, i32 noundef %call182.sink) #12
  tail call void @mfd_remove_devices(ptr noundef %dev81) #8
  br label %err_mfd

err_mfd:                                          ; preds = %err_mfd2, %do.end149, %do.end138
  tail call void @device_remove_file(ptr noundef %dev81, ptr noundef nonnull @dev_attr_fw_ver) #8
  br label %err_create_file

err_create_file:                                  ; preds = %err_mfd, %if.end80.err_create_file_crit_edge
  tail call void @pci_disable_msix(ptr noundef %dev) #8
  br label %err_msix

err_msix:                                         ; preds = %err_create_file, %do.end78
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %err_config

err_config:                                       ; preds = %err_msix, %if.end65.err_config_crit_edge, %do.end59, %do.end43
  %79 = ptrtoint ptr %ctl_membase to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctl_membase, align 4
  tail call void @iounmap(ptr noundef %80) #8
  br label %err_ioremap

err_ioremap:                                      ; preds = %err_config, %do.end25
  %81 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %call7.i.i, align 8
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %82, i32 noundef 256) #8
  br label %err_start

err_start:                                        ; preds = %err_ioremap, %do.end15, %do.end
  tail call void @pci_disable_device(ptr noundef %dev) #8
  br label %err_enable

err_enable:                                       ; preds = %err_start, %if.end.err_enable_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_enable, %if.end190, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %err_enable ], [ 0, %if.end190 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @timb_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void @mfd_remove_devices(ptr noundef %dev1) #8
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_fw_ver) #8
  %ctl_membase = getelementptr inbounds %struct.timberdale_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctl_membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_membase, align 4
  tail call void @iounmap(ptr noundef %3) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef 256) #8
  tail call void @pci_disable_msix(ptr noundef %dev) #8
  tail call void @pci_disable_device(ptr noundef %dev) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_ver_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fw = getelementptr inbounds %struct.timberdale_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw, align 4
  %minor = getelementptr inbounds %struct.timberdale_device, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %minor, align 4
  %config = getelementptr inbounds %struct.timberdale_device, ptr %1, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %config, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %3, i32 noundef %5, i32 noundef %7)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !64, !65, !66, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @__initcall__kmod_timberdale__319_854_timberdale_pci_driver_init6, !1, !"__initcall__kmod_timberdale__319_854_timberdale_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/timberdale.c", i32 854, i32 1}
!2 = !{ptr @__exitcall_timberdale_pci_driver_exit, !1, !"__exitcall_timberdale_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author320, !4, !"__UNIQUE_ID_author320", i1 false, i1 false}
!4 = !{!"../drivers/mfd/timberdale.c", i32 856, i32 1}
!5 = !{ptr @__UNIQUE_ID_version321, !6, !"__UNIQUE_ID_version321", i1 false, i1 false}
!6 = !{!"../drivers/mfd/timberdale.c", i32 857, i32 1}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__modver_attr, !6, !"__modver_attr", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_file322, !12, !"__UNIQUE_ID_file322", i1 false, i1 false}
!12 = !{!"../drivers/mfd/timberdale.c", i32 858, i32 1}
!13 = !{ptr @__UNIQUE_ID_license323, !12, !"__UNIQUE_ID_license323", i1 false, i1 false}
!14 = !{ptr @timberdale_pci_driver, !15, !"timberdale_pci_driver", i1 false, i1 false}
!15 = !{!"../drivers/mfd/timberdale.c", i32 847, i32 26}
!16 = !{ptr @timberdale_pci_tbl, !17, !"timberdale_pci_tbl", i1 false, i1 false}
!17 = !{!"../drivers/mfd/timberdale.c", i32 841, i32 35}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/timberdale.c", i32 660, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @timb_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @timb_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mfd/timberdale.c", i32 666, i32 7}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mfd/timberdale.c", i32 667, i32 3}
!30 = !{ptr @timb_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @timb_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mfd/timberdale.c", i32 673, i32 3}
!34 = !{ptr @timb_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @timb_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/timberdale.c", i32 683, i32 3}
!38 = !{ptr @timb_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @timb_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mfd/timberdale.c", i32 690, i32 3}
!42 = !{ptr @timb_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @timb_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mfd/timberdale.c", i32 707, i32 3}
!46 = !{ptr @timb_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @timb_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mfd/timberdale.c", i32 767, i32 3}
!50 = !{ptr @timb_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @timb_probe._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mfd/timberdale.c", i32 774, i32 3}
!54 = !{ptr @timb_probe._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @timb_probe._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @timb_probe._entry.30, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../drivers/mfd/timberdale.c", i32 782, i32 3}
!58 = !{ptr @timb_probe._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @timb_probe._entry.32, !60, !"_entry", i1 false, i1 false}
!60 = !{!"../drivers/mfd/timberdale.c", i32 793, i32 4}
!61 = !{ptr @timb_probe._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mfd/timberdale.c", i32 800, i32 2}
!64 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @timb_probe._entry.34, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @timb_probe._entry_ptr.37, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mfd/timberdale.c", i32 635, i32 8}
!69 = !{ptr @dev_attr_fw_ver, !68, !"dev_attr_fw_ver", i1 false, i1 false}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mfd/timberdale.c", i32 631, i32 22}
!72 = !{ptr @timberdale_i2c_board_info, !73, !"timberdale_i2c_board_info", i1 false, i1 false}
!73 = !{!"../drivers/mfd/timberdale.c", i32 58, i32 30}
!74 = !{ptr @timberdale_tsc2007_platform_data, !75, !"timberdale_tsc2007_platform_data", i1 false, i1 false}
!75 = !{!"../drivers/mfd/timberdale.c", i32 53, i32 37}
!76 = !{ptr @timberdale_xspi_platform_data, !77, !"timberdale_xspi_platform_data", i1 false, i1 false}
!77 = !{!"../drivers/mfd/timberdale.c", i32 134, i32 34}
!78 = !{ptr @timberdale_spi_8bit_board_info, !79, !"timberdale_spi_8bit_board_info", i1 false, i1 false}
!79 = !{!"../drivers/mfd/timberdale.c", i32 124, i32 30}
!80 = !{ptr @timberdale_mc33880_platform_data, !81, !"timberdale_mc33880_platform_data", i1 false, i1 false}
!81 = !{!"../drivers/mfd/timberdale.c", i32 110, i32 43}
!82 = !{ptr @timberdale_spi_16bit_board_info, !83, !"timberdale_spi_16bit_board_info", i1 false, i1 false}
!83 = !{!"../drivers/mfd/timberdale.c", i32 114, i32 30}
!84 = !{ptr @timberdale_max7301_platform_data, !85, !"timberdale_max7301_platform_data", i1 false, i1 false}
!85 = !{!"../drivers/mfd/timberdale.c", i32 106, i32 43}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mfd/timberdale.c", i32 367, i32 11}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mfd/timberdale.c", i32 374, i32 11}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mfd/timberdale.c", i32 379, i32 11}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mfd/timberdale.c", i32 386, i32 11}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mfd/timberdale.c", i32 393, i32 11}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mfd/timberdale.c", i32 400, i32 11}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mfd/timberdale.c", i32 407, i32 11}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mfd/timberdale.c", i32 414, i32 11}
!102 = !{ptr @timberdale_cells_bar0_cfg0, !103, !"timberdale_cells_bar0_cfg0", i1 false, i1 false}
!103 = !{!"../drivers/mfd/timberdale.c", i32 365, i32 30}
!104 = !{ptr @timb_dma_platform_data, !105, !"timb_dma_platform_data", i1 false, i1 false}
!105 = !{!"../drivers/mfd/timberdale.c", i32 293, i32 38}
!106 = !{ptr @timberdale_dma_resources, !107, !"timberdale_dma_resources", i1 false, i1 false}
!107 = !{!"../drivers/mfd/timberdale.c", i32 352, i32 30}
!108 = !{ptr @timberdale_uart_resources, !109, !"timberdale_uart_resources", i1 false, i1 false}
!109 = !{!"../drivers/mfd/timberdale.c", i32 211, i32 30}
!110 = !{ptr @timberdale_xiic_platform_data, !111, !"timberdale_xiic_platform_data", i1 false, i1 false}
!111 = !{!"../drivers/mfd/timberdale.c", i32 67, i32 1}
!112 = !{ptr @timberdale_xiic_resources, !113, !"timberdale_xiic_resources", i1 false, i1 false}
!113 = !{!"../drivers/mfd/timberdale.c", i32 80, i32 30}
!114 = !{ptr @timberdale_gpio_platform_data, !115, !"timberdale_gpio_platform_data", i1 false, i1 false}
!115 = !{!"../drivers/mfd/timberdale.c", i32 174, i32 2}
!116 = !{ptr @timberdale_gpio_resources, !117, !"timberdale_gpio_resources", i1 false, i1 false}
!117 = !{!"../drivers/mfd/timberdale.c", i32 180, i32 30}
!118 = !{ptr @timberdale_video_platform_data, !119, !"timberdale_video_platform_data", i1 false, i1 false}
!119 = !{!"../drivers/mfd/timberdale.c", i32 244, i32 2}
!120 = !{ptr @timberdale_adv7180_i2c_board_info, !121, !"timberdale_adv7180_i2c_board_info", i1 false, i1 false}
!121 = !{!"../drivers/mfd/timberdale.c", i32 237, i32 30}
!122 = !{ptr @timberdale_video_resources, !123, !"timberdale_video_resources", i1 false, i1 false}
!123 = !{!"../drivers/mfd/timberdale.c", i32 281, i32 30}
!124 = !{ptr @timberdale_radio_platform_data, !125, !"timberdale_radio_platform_data", i1 false, i1 false}
!125 = !{!"../drivers/mfd/timberdale.c", i32 275, i32 2}
!126 = !{ptr @timberdale_tef6868_i2c_board_info, !127, !"timberdale_tef6868_i2c_board_info", i1 false, i1 false}
!127 = !{!"../drivers/mfd/timberdale.c", i32 266, i32 30}
!128 = !{ptr @timberdale_saa7706_i2c_board_info, !129, !"timberdale_saa7706_i2c_board_info", i1 false, i1 false}
!129 = !{!"../drivers/mfd/timberdale.c", i32 270, i32 30}
!130 = !{ptr @timberdale_radio_resources, !131, !"timberdale_radio_resources", i1 false, i1 false}
!131 = !{!"../drivers/mfd/timberdale.c", i32 253, i32 1}
!132 = !{ptr @timberdale_spi_resources, !133, !"timberdale_spi_resources", i1 false, i1 false}
!133 = !{!"../drivers/mfd/timberdale.c", i32 141, i32 30}
!134 = !{ptr @timberdale_ks8842_platform_data, !135, !"timberdale_ks8842_platform_data", i1 false, i1 false}
!135 = !{!"../drivers/mfd/timberdale.c", i32 155, i32 2}
!136 = !{ptr @timberdale_eth_resources, !137, !"timberdale_eth_resources", i1 false, i1 false}
!137 = !{!"../drivers/mfd/timberdale.c", i32 160, i32 30}
!138 = !{ptr @.str.49, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mfd/timberdale.c", i32 436, i32 11}
!140 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mfd/timberdale.c", i32 455, i32 11}
!142 = !{ptr @timberdale_cells_bar0_cfg1, !143, !"timberdale_cells_bar0_cfg1", i1 false, i1 false}
!143 = !{!"../drivers/mfd/timberdale.c", i32 422, i32 30}
!144 = !{ptr @timberdale_uartlite_resources, !145, !"timberdale_uartlite_resources", i1 false, i1 false}
!145 = !{!"../drivers/mfd/timberdale.c", i32 224, i32 30}
!146 = !{ptr @timberdale_mlogicore_resources, !147, !"timberdale_mlogicore_resources", i1 false, i1 false}
!147 = !{!"../drivers/mfd/timberdale.c", i32 193, i32 30}
!148 = !{ptr @timberdale_cells_bar0_cfg2, !149, !"timberdale_cells_bar0_cfg2", i1 false, i1 false}
!149 = !{!"../drivers/mfd/timberdale.c", i32 489, i32 30}
!150 = !{ptr @.str.51, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mfd/timberdale.c", i32 553, i32 11}
!152 = !{ptr @timberdale_cells_bar0_cfg3, !153, !"timberdale_cells_bar0_cfg3", i1 false, i1 false}
!153 = !{!"../drivers/mfd/timberdale.c", i32 539, i32 30}
!154 = !{ptr @timberdale_ocores_platform_data, !155, !"timberdale_ocores_platform_data", i1 false, i1 false}
!155 = !{!"../drivers/mfd/timberdale.c", i32 73, i32 1}
!156 = !{ptr @timberdale_ocores_resources, !157, !"timberdale_ocores_resources", i1 false, i1 false}
!157 = !{!"../drivers/mfd/timberdale.c", i32 93, i32 30}
!158 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mfd/timberdale.c", i32 612, i32 11}
!160 = !{ptr @timberdale_cells_bar1, !161, !"timberdale_cells_bar1", i1 false, i1 false}
!161 = !{!"../drivers/mfd/timberdale.c", i32 610, i32 30}
!162 = !{ptr @timberdale_sdhc_resources, !163, !"timberdale_sdhc_resources", i1 false, i1 false}
!163 = !{!"../drivers/mfd/timberdale.c", i32 596, i32 30}
!164 = !{ptr @timberdale_cells_bar2, !165, !"timberdale_cells_bar2", i1 false, i1 false}
!165 = !{!"../drivers/mfd/timberdale.c", i32 618, i32 30}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{i64 5000082}
!176 = !{i64 2152540431}
!177 = !{i64 2152541786}
!178 = !{i64 4999664}
