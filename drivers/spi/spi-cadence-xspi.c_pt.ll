; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-cadence-xspi.c_pt.bc'
source_filename = "../drivers/spi/spi-cadence-xspi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.cdns_xspi_dev = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.completion, %struct.completion, %struct.completion, i8, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_mem_op = type { %struct.anon.71, %struct.anon.72, %struct.anon.73, %struct.anon.74 }
%struct.anon.71 = type { i8, i8, i8, i16 }
%struct.anon.72 = type { i8, i8, i8, i64 }
%struct.anon.73 = type { i8, i8, i8 }
%struct.anon.74 = type { i8, i8, i32, i32, %union.anon.75 }
%union.anon.75 = type { ptr }

@__initcall__kmod_spi_cadence_xspi__354_635_cdns_xspi_platform_driver_init6 = internal global ptr @cdns_xspi_platform_driver_init, section ".initcall6.init", align 4
@cdns_xspi_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdns_xspi_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdns_xspi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cdns_xspi_platform_driver_exit = internal global ptr @cdns_xspi_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description355 = internal constant [60 x i8] c"spi_cadence_xspi.description=Cadence XSPI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file356 = internal constant [51 x i8] c"spi_cadence_xspi.file=drivers/spi/spi-cadence-xspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license357 = internal constant [32 x i8] c"spi_cadence_xspi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias358 = internal constant [45 x i8] c"spi_cadence_xspi.alias=platform:cadence-xspi\00", section ".modinfo", align 1
@__UNIQUE_ID_author359 = internal constant [61 x i8] c"spi_cadence_xspi.author=Konrad Kociolek <konrad@cadence.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author360 = internal constant [59 x i8] c"spi_cadence_xspi.author=Jayshri Pawar <jpawar@cadence.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author361 = internal constant [66 x i8] c"spi_cadence_xspi.author=Parshuram Thombare <pthombar@cadence.com>\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cadence-xspi\00", [19 x i8] zeroinitializer }, align 32
@cdns_xspi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,xspi-nor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cadence_xspi_mem_ops = internal constant { %struct.spi_controller_mem_ops, [60 x i8] } { %struct.spi_controller_mem_ops { ptr @cdns_xspi_adjust_mem_op_size, ptr null, ptr @cdns_xspi_mem_op_execute, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"io\00", [29 x i8] zeroinitializer }, align 32
@cdns_xspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 562, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to remap controller base address\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cdns_xspi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/spi/spi-cadence-xspi.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_xspi_probe._entry_ptr = internal global ptr @cdns_xspi_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdma\00", [27 x i8] zeroinitializer }, align 32
@cdns_xspi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 569, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to remap SDMA address\0A\00", [34 x i8] zeroinitializer }, align 32
@cdns_xspi_probe._entry_ptr.10 = internal global ptr @cdns_xspi_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aux\00", [28 x i8] zeroinitializer }, align 32
@cdns_xspi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 576, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to remap AUX address\0A\00", [35 x i8] zeroinitializer }, align 32
@cdns_xspi_probe._entry_ptr.14 = internal global ptr @cdns_xspi_probe._entry.12, section ".printk_index", align 4
@cdns_xspi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 582, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to get IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@cdns_xspi_probe._entry_ptr.17 = internal global ptr @cdns_xspi_probe._entry.15, section ".printk_index", align 4
@cdns_xspi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 589, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cdns_xspi_probe._entry_ptr.20 = internal global ptr @cdns_xspi_probe._entry.18, section ".printk_index", align 4
@cdns_xspi_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 597, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize controller\0A\00", [63 x i8] zeroinitializer }, align 32
@cdns_xspi_probe._entry_ptr.23 = internal global ptr @cdns_xspi_probe._entry.21, section ".printk_index", align 4
@cdns_xspi_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 605, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register SPI master\0A\00", [33 x i8] zeroinitializer }, align 32
@cdns_xspi_probe._entry_ptr.26 = internal global ptr @cdns_xspi_probe._entry.24, section ".printk_index", align 4
@cdns_xspi_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 609, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Successfully registered SPI master\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cdns_xspi_probe._entry_ptr.30 = internal global ptr @cdns_xspi_probe._entry.27, section ".printk_index", align 4
@cdns_xspi_check_command_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 261, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Incorrect DQS pulses detected\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cdns_xspi_check_command_status\00", [33 x i8] zeroinitializer }, align 32
@cdns_xspi_check_command_status._entry_ptr = internal global ptr @cdns_xspi_check_command_status._entry, section ".printk_index", align 4
@cdns_xspi_check_command_status._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.4, i32 266, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CRC error received\0A\00", [44 x i8] zeroinitializer }, align 32
@cdns_xspi_check_command_status._entry_ptr.35 = internal global ptr @cdns_xspi_check_command_status._entry.33, section ".printk_index", align 4
@cdns_xspi_check_command_status._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.4, i32 271, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error resp on system DMA interface\0A\00", [60 x i8] zeroinitializer }, align 32
@cdns_xspi_check_command_status._entry_ptr.38 = internal global ptr @cdns_xspi_check_command_status._entry.36, section ".printk_index", align 4
@cdns_xspi_check_command_status._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.4, i32 276, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid command sequence detected\0A\00", [61 x i8] zeroinitializer }, align 32
@cdns_xspi_check_command_status._entry_ptr.41 = internal global ptr @cdns_xspi_check_command_status._entry.39, section ".printk_index", align 4
@cdns_xspi_check_command_status._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.4, i32 281, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Fatal err - command not completed\0A\00", [61 x i8] zeroinitializer }, align 32
@cdns_xspi_check_command_status._entry_ptr.44 = internal global ptr @cdns_xspi_check_command_status._entry.42, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@cdns_xspi_of_get_plat_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 495, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't get memory chip select\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cdns_xspi_of_get_plat_data\00", [37 x i8] zeroinitializer }, align 32
@cdns_xspi_of_get_plat_data._entry_ptr = internal global ptr @cdns_xspi_of_get_plat_data._entry, section ".printk_index", align 4
@cdns_xspi_of_get_plat_data._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.4, i32 499, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"reg (cs) parameter value too large\0A\00", [60 x i8] zeroinitializer }, align 32
@cdns_xspi_of_get_plat_data._entry_ptr.51 = internal global ptr @cdns_xspi_of_get_plat_data._entry.49, section ".printk_index", align 4
@cdns_xspi_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 457, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Slave DMA transaction error\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cdns_xspi_irq_handler\00", [42 x i8] zeroinitializer }, align 32
@cdns_xspi_irq_handler._entry_ptr = internal global ptr @cdns_xspi_irq_handler._entry, section ".printk_index", align 4
@cdns_xspi_print_phy_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 512, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PHY configuration\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cdns_xspi_print_phy_config\00", [37 x i8] zeroinitializer }, align 32
@cdns_xspi_print_phy_config._entry_ptr = internal global ptr @cdns_xspi_print_phy_config._entry, section ".printk_index", align 4
@cdns_xspi_print_phy_config._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.4, i32 514, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"   * xspi_dll_phy_ctrl: %08x\0A\00", [34 x i8] zeroinitializer }, align 32
@cdns_xspi_print_phy_config._entry_ptr.58 = internal global ptr @cdns_xspi_print_phy_config._entry.56, section ".printk_index", align 4
@cdns_xspi_print_phy_config._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.4, i32 516, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"   * phy_dq_timing: %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@cdns_xspi_print_phy_config._entry_ptr.61 = internal global ptr @cdns_xspi_print_phy_config._entry.59, section ".printk_index", align 4
@cdns_xspi_print_phy_config._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.4, i32 518, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"   * phy_dqs_timing: %08x\0A\00", [37 x i8] zeroinitializer }, align 32
@cdns_xspi_print_phy_config._entry_ptr.64 = internal global ptr @cdns_xspi_print_phy_config._entry.62, section ".printk_index", align 4
@cdns_xspi_print_phy_config._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.55, ptr @.str.4, i32 520, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"   * phy_gate_loopback_ctrl: %08x\0A\00", [61 x i8] zeroinitializer }, align 32
@cdns_xspi_print_phy_config._entry_ptr.67 = internal global ptr @cdns_xspi_print_phy_config._entry.65, section ".printk_index", align 4
@cdns_xspi_print_phy_config._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.55, ptr @.str.4, i32 522, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"   * phy_dll_slave_ctrl: %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@cdns_xspi_print_phy_config._entry_ptr.70 = internal global ptr @cdns_xspi_print_phy_config._entry.68, section ".printk_index", align 4
@cdns_xspi_controller_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.4, i32 312, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Incorrect XSPI magic number: %x, expected: %x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cdns_xspi_controller_init\00", [38 x i8] zeroinitializer }, align 32
@cdns_xspi_controller_init._entry_ptr = internal global ptr @cdns_xspi_controller_init._entry, section ".printk_index", align 4
@___asan_gen_.73 = private unnamed_addr constant [26 x i8] c"cdns_xspi_platform_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 626, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 630, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"cdns_xspi_of_match\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 615, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant [21 x i8] c"cadence_xspi_mem_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 438, i32 44 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 560, i32 66 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 562, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 566, i32 59 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 569, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 574, i32 67 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 576, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 582, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 589, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 597, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 605, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 609, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 260, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 265, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 270, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 275, i32 5 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 281, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 87, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 494, i32 40 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 495, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 499, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 456, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 512, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 513, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 515, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 517, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 519, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 521, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.269 = private constant [34 x i8] c"../drivers/spi/spi-cadence-xspi.c\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 310, i32 3 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_alias358, ptr @__UNIQUE_ID_author359, ptr @__UNIQUE_ID_author360, ptr @__UNIQUE_ID_author361, ptr @__UNIQUE_ID_description355, ptr @__UNIQUE_ID_file356, ptr @__UNIQUE_ID_license357, ptr @__exitcall_cdns_xspi_platform_driver_exit, ptr @__initcall__kmod_spi_cadence_xspi__354_635_cdns_xspi_platform_driver_init6, ptr @cdns_xspi_check_command_status._entry, ptr @cdns_xspi_check_command_status._entry.33, ptr @cdns_xspi_check_command_status._entry.36, ptr @cdns_xspi_check_command_status._entry.39, ptr @cdns_xspi_check_command_status._entry.42, ptr @cdns_xspi_check_command_status._entry_ptr, ptr @cdns_xspi_check_command_status._entry_ptr.35, ptr @cdns_xspi_check_command_status._entry_ptr.38, ptr @cdns_xspi_check_command_status._entry_ptr.41, ptr @cdns_xspi_check_command_status._entry_ptr.44, ptr @cdns_xspi_controller_init._entry, ptr @cdns_xspi_controller_init._entry_ptr, ptr @cdns_xspi_irq_handler._entry, ptr @cdns_xspi_irq_handler._entry_ptr, ptr @cdns_xspi_of_get_plat_data._entry, ptr @cdns_xspi_of_get_plat_data._entry.49, ptr @cdns_xspi_of_get_plat_data._entry_ptr, ptr @cdns_xspi_of_get_plat_data._entry_ptr.51, ptr @cdns_xspi_platform_driver_exit, ptr @cdns_xspi_print_phy_config._entry, ptr @cdns_xspi_print_phy_config._entry.56, ptr @cdns_xspi_print_phy_config._entry.59, ptr @cdns_xspi_print_phy_config._entry.62, ptr @cdns_xspi_print_phy_config._entry.65, ptr @cdns_xspi_print_phy_config._entry.68, ptr @cdns_xspi_print_phy_config._entry_ptr, ptr @cdns_xspi_print_phy_config._entry_ptr.58, ptr @cdns_xspi_print_phy_config._entry_ptr.61, ptr @cdns_xspi_print_phy_config._entry_ptr.64, ptr @cdns_xspi_print_phy_config._entry_ptr.67, ptr @cdns_xspi_print_phy_config._entry_ptr.70, ptr @cdns_xspi_probe._entry, ptr @cdns_xspi_probe._entry.12, ptr @cdns_xspi_probe._entry.15, ptr @cdns_xspi_probe._entry.18, ptr @cdns_xspi_probe._entry.21, ptr @cdns_xspi_probe._entry.24, ptr @cdns_xspi_probe._entry.27, ptr @cdns_xspi_probe._entry.8, ptr @cdns_xspi_probe._entry_ptr, ptr @cdns_xspi_probe._entry_ptr.10, ptr @cdns_xspi_probe._entry_ptr.14, ptr @cdns_xspi_probe._entry_ptr.17, ptr @cdns_xspi_probe._entry_ptr.20, ptr @cdns_xspi_probe._entry_ptr.23, ptr @cdns_xspi_probe._entry_ptr.26, ptr @cdns_xspi_probe._entry_ptr.30, ptr @cdns_xspi_platform_driver, ptr @.str, ptr @cdns_xspi_of_match, ptr @cadence_xspi_mem_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @init_completion.__key, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_xspi_mem_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_check_command_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_check_command_status._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_check_command_status._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_check_command_status._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_check_command_status._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_of_get_plat_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_of_get_plat_data._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_print_phy_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_print_phy_config._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_print_phy_config._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_print_phy_config._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_print_phy_config._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_print_phy_config._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_xspi_controller_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_xspi_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_xspi_platform_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdns_xspi_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns_xspi_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_xspi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cs.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev1, i32 noundef 216, i1 noundef zeroext false) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 28435, ptr %mode_bits, align 8
  %mem_ops = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 53
  %1 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cadence_xspi_mem_ops, ptr %mem_ops, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %of_node4 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %4 = ptrtoint ptr %of_node4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %of_node4, align 8
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %bus_num, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i139 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i139 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i139, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pdev, ptr %8, align 4
  %dev8 = getelementptr inbounds %struct.cdns_xspi_dev, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %dev8, align 4
  %cur_cs = getelementptr inbounds %struct.cdns_xspi_dev, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %cur_cs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cur_cs, align 4
  %cmd_complete = getelementptr inbounds %struct.cdns_xspi_dev, ptr %8, i32 0, i32 8
  %12 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %cmd_complete, align 4
  %wait.i = getelementptr inbounds %struct.cdns_xspi_dev, ptr %8, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #7
  %auto_cmd_complete = getelementptr inbounds %struct.cdns_xspi_dev, ptr %8, i32 0, i32 9
  %13 = ptrtoint ptr %auto_cmd_complete to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %auto_cmd_complete, align 4
  %wait.i140 = getelementptr inbounds %struct.cdns_xspi_dev, ptr %8, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i140, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #7
  %sdma_complete = getelementptr inbounds %struct.cdns_xspi_dev, ptr %8, i32 0, i32 10
  %14 = ptrtoint ptr %sdma_complete to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %sdma_complete, align 4
  %wait.i141 = getelementptr inbounds %struct.cdns_xspi_dev, ptr %8, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i141, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #7
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs.i) #7
  %17 = ptrtoint ptr %cs.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %cs.i, align 4, !annotation !146
  %call.i142 = tail call ptr @of_get_next_child(ptr noundef %16, ptr noundef null) #7
  %cmp.not26.i = icmp eq ptr %call.i142, null
  br i1 %cmp.not26.i, label %if.end.if.end12_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %node_child.027.i = phi ptr [ %call13.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i142, %if.end.for.body.i_crit_edge ]
  %call1.i = call zeroext i1 @of_device_is_available(ptr noundef nonnull %node_child.027.i) #7
  br i1 %call1.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node_child.027.i, ptr noundef nonnull @.str.46, ptr noundef nonnull %cs.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.end.i.cdns_xspi_of_get_plat_data.exit_crit_edge

if.end.i.cdns_xspi_of_get_plat_data.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_xspi_of_get_plat_data.exit

if.else.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %19)
  %cmp5.i = icmp ugt i32 %19, 7
  br i1 %cmp5.i, label %if.else.i.cdns_xspi_of_get_plat_data.exit_crit_edge, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.else.i.cdns_xspi_of_get_plat_data.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_xspi_of_get_plat_data.exit

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %call13.i = call ptr @of_get_next_child(ptr noundef %16, ptr noundef nonnull %node_child.027.i) #7
  %cmp.not.i = icmp eq ptr %call13.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.end12_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end12_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

cdns_xspi_of_get_plat_data.exit:                  ; preds = %if.else.i.cdns_xspi_of_get_plat_data.exit_crit_edge, %if.end.i.cdns_xspi_of_get_plat_data.exit_crit_edge
  %.str.50.sink.i = phi ptr [ @.str.47, %if.end.i.cdns_xspi_of_get_plat_data.exit_crit_edge ], [ @.str.50, %if.else.i.cdns_xspi_of_get_plat_data.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.50.sink.i) #10
  call void @of_node_put(ptr noundef nonnull %node_child.027.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #7
  br label %cleanup

if.end12:                                         ; preds = %for.inc.i.if.end12_crit_edge, %if.end.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #7
  %call13 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #7
  %iobase = getelementptr inbounds %struct.cdns_xspi_dev, ptr %8, i32 0, i32 2
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call13, ptr %iobase, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  %21 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iobase, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %call20 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.7) #7
  %call21 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call20) #7
  %sdmabase = getelementptr inbounds %struct.cdns_xspi_dev, ptr %8, i32 0, i32 4
  %24 = ptrtoint ptr %sdmabase to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call21, ptr %sdmabase, align 4
  %cmp.i143 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #10
  %25 = ptrtoint ptr %sdmabase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdmabase, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end19
  %end.i = getelementptr inbounds %struct.resource, ptr %call20, i32 0, i32 1
  %28 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.i, align 4
  %30 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call20, align 4
  %sub.i = add i32 %29, 1
  %add.i = sub i32 %sub.i, %31
  %sdmasize = getelementptr inbounds %struct.cdns_xspi_dev, ptr %8, i32 0, i32 7
  %32 = ptrtoint ptr %sdmasize to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add.i, ptr %sdmasize, align 4
  %call32 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.11) #7
  %auxbase = getelementptr inbounds %struct.cdns_xspi_dev, ptr %8, i32 0, i32 3
  %33 = ptrtoint ptr %auxbase to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call32, ptr %auxbase, align 4
  %cmp.i144 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %do.end38, label %if.end41

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #10
  %34 = ptrtoint ptr %auxbase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %auxbase, align 4
  %36 = ptrtoint ptr %35 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end30
  %call42 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.cdns_xspi_dev, ptr %8, i32 0, i32 5
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call42, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp = icmp slt i32 %call42, 0
  br i1 %cmp, label %do.end47, label %if.end48

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end48:                                         ; preds = %if.end41
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 8
  %call.i145 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call42, ptr noundef nonnull @cdns_xspi_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %39, ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool51.not = icmp eq i32 %call.i145, 0
  br i1 %tobool51.not, label %if.end57, label %do.end55

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %41) #10
  br label %cleanup

if.end57:                                         ; preds = %if.end48
  call fastcc void @cdns_xspi_print_phy_config(ptr noundef %8)
  %call58 = call fastcc i32 @cdns_xspi_controller_init(ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end64, label %do.end63

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end64:                                         ; preds = %if.end57
  %hw_num_banks = getelementptr inbounds %struct.cdns_xspi_dev, ptr %8, i32 0, i32 14
  %42 = ptrtoint ptr %hw_num_banks to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %hw_num_banks, align 4
  %conv = zext i8 %43 to i32
  %shl = shl nuw i32 1, %conv
  %conv65 = trunc i32 %shl to i16
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %44 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv65, ptr %num_chipselect, align 2
  %call66 = call i32 @devm_spi_register_controller(ptr noundef %dev1, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %do.end75, label %do.end71

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #10
  br label %cleanup

do.end75:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.28) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end75, %do.end71, %do.end63, %do.end55, %do.end47, %do.end38, %do.end27, %do.end, %cdns_xspi_of_get_plat_data.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %do.end ], [ %27, %do.end27 ], [ %36, %do.end38 ], [ -6, %do.end47 ], [ %call.i145, %do.end55 ], [ %call58, %do.end63 ], [ %call66, %do.end71 ], [ 0, %do.end75 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %cdns_xspi_of_get_plat_data.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_xspi_irq_handler(i32 noundef %this_irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.cdns_xspi_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 272
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !147
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #7, !srcloc !150
  %and = and i32 %3, 14680064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then:                                          ; preds = %entry
  %and4 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %do.end9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end9:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.cdns_xspi_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.52) #10
  %sdma_error = getelementptr inbounds %struct.cdns_xspi_dev, ptr %dev, i32 0, i32 11
  %8 = ptrtoint ptr %sdma_error to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %sdma_error, align 4
  %sdma_complete = getelementptr inbounds %struct.cdns_xspi_dev, ptr %dev, i32 0, i32 10
  tail call void @complete(ptr noundef %sdma_complete) #7
  br label %if.end

if.end:                                           ; preds = %do.end9, %if.then.if.end_crit_edge
  %and11 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.if.end15_crit_edge, label %if.then13

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sdma_complete14 = getelementptr inbounds %struct.cdns_xspi_dev, ptr %dev, i32 0, i32 10
  tail call void @complete(ptr noundef %sdma_complete14) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end.if.end15_crit_edge
  %and16 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_complete = getelementptr inbounds %struct.cdns_xspi_dev, ptr %dev, i32 0, i32 8
  tail call void @complete(ptr noundef %cmd_complete) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge, %entry.if.end20_crit_edge
  %result.0 = phi i32 [ 0, %entry.if.end20_crit_edge ], [ 1, %if.then18 ], [ 1, %if.end15.if.end20_crit_edge ]
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase, align 4
  %add.ptr24 = getelementptr i8, ptr %10, i32 288
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool28.not = icmp eq i32 %11, 0
  br i1 %tobool28.not, label %if.end20.if.end35_crit_edge, label %do.body30

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.body30:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase, align 4
  %add.ptr34 = getelementptr i8, ptr %13, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %11) #7, !srcloc !150
  %auto_cmd_complete = getelementptr inbounds %struct.cdns_xspi_dev, ptr %dev, i32 0, i32 9
  tail call void @complete(ptr noundef %auto_cmd_complete) #7
  br label %if.end35

if.end35:                                         ; preds = %do.body30, %if.end20.if.end35_crit_edge
  %result.1 = phi i32 [ 1, %do.body30 ], [ %result.0, %if.end20.if.end35_crit_edge ]
  ret i32 %result.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_xspi_print_phy_config(ptr nocapture noundef readonly %cdns_xspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cdns_xspi_dev, ptr %cdns_xspi, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.54) #10
  %iobase = getelementptr inbounds %struct.cdns_xspi_dev, ptr %cdns_xspi, i32 0, i32 2
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4148
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !147
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.57, i32 noundef %5) #10
  %auxbase = getelementptr inbounds %struct.cdns_xspi_dev, ptr %cdns_xspi, i32 0, i32 3
  %6 = ptrtoint ptr %auxbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %auxbase, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !147
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.60, i32 noundef %9) #10
  %10 = ptrtoint ptr %auxbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %auxbase, align 4
  %add.ptr21 = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #7, !srcloc !147
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.63, i32 noundef %13) #10
  %14 = ptrtoint ptr %auxbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %auxbase, align 4
  %add.ptr31 = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #7, !srcloc !147
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.66, i32 noundef %17) #10
  %18 = ptrtoint ptr %auxbase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %auxbase, align 4
  %add.ptr41 = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7, !srcloc !147
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.69, i32 noundef %21) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_xspi_controller_init(ptr nocapture noundef %cdns_xspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.cdns_xspi_dev, ptr %cdns_xspi, i32 0, i32 2
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3840
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  %3 = and i32 %2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 8805, i32 %3)
  %cmp.not = icmp eq i32 %3, 8805
  br i1 %cmp.not, label %if.end, label %do.end19

do.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shr = lshr exact i32 %4, 16
  %dev = getelementptr inbounds %struct.cdns_xspi_dev, ptr %cdns_xspi, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.71, i32 noundef %shr, i32 noundef 25890) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase, align 4
  %add.ptr24 = getelementptr i8, ptr %8, i32 3844
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %10 = trunc i32 %9 to i8
  %conv46 = and i8 %10, 3
  %hw_num_banks = getelementptr inbounds %struct.cdns_xspi_dev, ptr %cdns_xspi, i32 0, i32 14
  %11 = ptrtoint ptr %hw_num_banks to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv46, ptr %hw_num_banks, align 4
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 276
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  %15 = and i32 %14, -57473
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase, align 4
  %add.ptr3.i = getelementptr i8, ptr %17, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %15) #7, !srcloc !150
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end19
  %retval.0 = phi i32 [ -5, %do.end19 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cdns_xspi_adjust_mem_op_size(ptr nocapture noundef readonly %mem, ptr nocapture noundef %op) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %nbytes = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbytes, align 4
  %sdmasize = getelementptr inbounds %struct.cdns_xspi_dev, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %sdmasize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sdmasize, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %7, i32 %9)
  %11 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %nbytes, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_xspi_mem_op_execute(ptr nocapture noundef readonly %mem, ptr nocapture noundef readonly %op) #2 align 64 {
entry:
  %cmd_regs.i.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %dir1.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %dir1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dir1.i, align 4
  %cur_cs.i = getelementptr inbounds %struct.cdns_xspi_dev, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %cur_cs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_cs.i, align 4
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chip_select.i, align 4
  %conv.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %9, %conv.i
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %cur_cs.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i, ptr %cur_cs.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.i = icmp ne i32 %7, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd_regs.i.i) #7
  %13 = getelementptr inbounds [6 x i32], ptr %cmd_regs.i.i, i32 0, i32 1
  %14 = getelementptr inbounds [6 x i32], ptr %cmd_regs.i.i, i32 0, i32 2
  %15 = getelementptr inbounds [6 x i32], ptr %cmd_regs.i.i, i32 0, i32 3
  %16 = getelementptr inbounds [6 x i32], ptr %cmd_regs.i.i, i32 0, i32 4
  %call.i.i.i = tail call i64 @ktime_get() #7
  %add.i.i.i.i = add i64 %call.i.i.i, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 238) #7
  %iobase.i.i.i = getelementptr inbounds %struct.cdns_xspi_dev, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr36.i.i.i = getelementptr i8, ptr %18, i32 256
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i.i.i) #7, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp938.i.i.i = icmp sgt i32 %19, -1
  br i1 %cmp938.i.i.i, label %if.end.i.do.body.i.i_crit_edge, label %if.end.i.land.lhs.true.i.i.i_crit_edge

if.end.i.land.lhs.true.i.i.i_crit_edge:           ; preds = %if.end.i
  br label %land.lhs.true.i.i.i

if.end.i.do.body.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then23.i.i.i.land.lhs.true.i.i.i_crit_edge, %if.end.i.land.lhs.true.i.i.i_crit_edge
  %call12.i.i.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i.i.i, i64 %add.i.i.i.i)
  %cmp3.i.i.i.i = icmp sgt i64 %call12.i.i.i, %add.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %for.end.i.i.i, label %if.then23.i.i.i

if.then23.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %20 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 256
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !147
  %cmp9.i.i.i = icmp sgt i32 %22, -1
  br i1 %cmp9.i.i.i, label %if.then23.i.i.i.do.body.i.i_crit_edge, label %if.then23.i.i.i.land.lhs.true.i.i.i_crit_edge

if.then23.i.i.i.land.lhs.true.i.i.i_crit_edge:    ; preds = %if.then23.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i.i

if.then23.i.i.i.do.body.i.i_crit_edge:            ; preds = %if.then23.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

for.end.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %23 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr18.i.i.i = getelementptr i8, ptr %24, i32 256
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i.i) #7, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp27.i.i.i = icmp sgt i32 %25, -1
  br i1 %cmp27.i.i.i, label %for.end.i.i.i.do.body.i.i_crit_edge, label %for.end.i.i.i.cdns_xspi_mem_op.exit_crit_edge

for.end.i.i.i.cdns_xspi_mem_op.exit_crit_edge:    ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_xspi_mem_op.exit

for.end.i.i.i.do.body.i.i_crit_edge:              ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.end.i.i.i.do.body.i.i_crit_edge, %if.then23.i.i.i.do.body.i.i_crit_edge, %if.end.i.do.body.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 536870912) #7, !srcloc !150
  %28 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i950.i.i = getelementptr i8, ptr %29, i32 276
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i950.i.i) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  %31 = or i32 %30, 57472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %33, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 %31) #7, !srcloc !150
  %sdma_error.i.i = getelementptr inbounds %struct.cdns_xspi_dev, ptr %5, i32 0, i32 11
  %34 = ptrtoint ptr %sdma_error.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %sdma_error.i.i, align 4
  %35 = call ptr @memset(ptr %cmd_regs.i.i, i32 0, i32 24)
  %cond.i.i = zext i1 %cmp7.i to i32
  %val.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %val.i.i, align 8
  %38 = trunc i64 %37 to i32
  %shl69.i.i = shl i32 %38, 24
  %or.i.i = or i32 %shl69.i.i, %cond.i.i
  %39 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or.i.i, ptr %13, align 4
  %shr.i.i = lshr i64 %37, 8
  %40 = lshr i32 %38, 8
  %tr.sh.diff.i.i = trunc i64 %shr.i.i to i32
  %shl218.i.i = and i32 %tr.sh.diff.i.i, -16777216
  %or220.i.i = or i32 %shl218.i.i, %40
  %41 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or220.i.i, ptr %14, align 4
  %opcode.i.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %42 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %opcode.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %44 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %addr.i.i, align 8
  %shr231.i.i = lshr i64 %37, 40
  %46 = trunc i64 %shr231.i.i to i32
  %conv256.i.i = and i32 %46, 255
  %conv286.i.i = zext i16 %43 to i32
  %shl287.i.i = shl nuw i32 %conv286.i.i, 16
  %and288.i.i = and i32 %shl287.i.i, 16711680
  %or289.i.i = or i32 %and288.i.i, %conv256.i.i
  %conv318.i.i = zext i8 %45 to i32
  %shl319.i.i = shl i32 %conv318.i.i, 28
  %and320.i.i = and i32 %shl319.i.i, 1879048192
  %or321.i.i = or i32 %or289.i.i, %and320.i.i
  %47 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or321.i.i, ptr %15, align 4
  %buswidth.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %buswidth.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %buswidth.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i.i954.i.i = icmp eq i8 %49, 0
  %conv409.i.i = zext i8 %49 to i32
  %50 = tail call i32 @llvm.ctlz.i32(i32 %conv409.i.i, i1 true) #7, !range !163
  %sub.i.op.i955.i.i = and i32 %50, 3
  %sub.i.op.i955.i.i.op = xor i32 %sub.i.op.i955.i.i, 3
  %and414.i.i = select i1 %tobool.not.i.i954.i.i, i32 3, i32 %sub.i.op.i955.i.i.op
  %buswidth423.i.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %51 = ptrtoint ptr %buswidth423.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %buswidth423.i.i, align 1
  %conv505.i.i = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i.i963.i.i = icmp eq i8 %52, 0
  %53 = tail call i32 @llvm.ctlz.i32(i32 %conv505.i.i, i1 true) #7, !range !163
  %54 = ptrtoint ptr %cur_cs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cur_cs.i, align 4
  %sub.i.op.i964.i.i = shl nuw nsw i32 %53, 8
  %sub.i.op.i964.i.i.op = and i32 %sub.i.op.i964.i.i, 768
  %sub.i.op.i964.i.i.op.op = xor i32 %sub.i.op.i964.i.i.op, 768
  %and510.i.i = select i1 %tobool.not.i.i963.i.i, i32 768, i32 %sub.i.op.i964.i.i.op.op
  %or511.i.i = or i32 %and510.i.i, %and414.i.i
  %shl536.i.i = shl i32 %55, 12
  %and537.i.i = and i32 %shl536.i.i, 28672
  %or538.i.i = or i32 %or511.i.i, %and537.i.i
  %56 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or538.i.i, ptr %16, align 4
  call fastcc void @cdns_xspi_trigger_command(ptr noundef %5, ptr noundef nonnull %cmd_regs.i.i) #7
  br i1 %cmp7.i, label %if.then542.i.i, label %do.body.i.i.if.end838.i.i_crit_edge

do.body.i.i.if.end838.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end838.i.i

if.then542.i.i:                                   ; preds = %do.body.i.i
  %57 = ptrtoint ptr %cmd_regs.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %cmd_regs.i.i, align 4
  %58 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 127, ptr %13, align 4
  %data.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %nbytes568.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %59 = ptrtoint ptr %nbytes568.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nbytes568.i.i, align 4
  %shl591.i.i = shl i32 %60, 16
  %61 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %shl591.i.i, ptr %14, align 4
  %dummy.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %62 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %dummy.i.i, align 8
  %conv638.i.i = zext i8 %63 to i32
  %shr603.i.i = lshr i32 %60, 16
  %mul661.i.i = shl nuw nsw i32 %conv638.i.i, 23
  %and663.i.i = and i32 %mul661.i.i, 58720256
  %or664.i.i = or i32 %and663.i.i, %shr603.i.i
  %64 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or664.i.i, ptr %15, align 4
  %65 = ptrtoint ptr %cur_cs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cur_cs.i, align 4
  %shl691.i.i = shl i32 %66, 12
  %and692.i.i = and i32 %shl691.i.i, 28672
  %67 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.i972.i.i = icmp eq i8 %68, 0
  %conv783.i.i = zext i8 %68 to i32
  %69 = tail call i32 @llvm.ctlz.i32(i32 %conv783.i.i, i1 true) #7, !range !163
  %sub.i.op.i973.i.i = shl nuw nsw i32 %69, 8
  %sub.i.op.i973.i.i.op = and i32 %sub.i.op.i973.i.i, 768
  %sub.i.op.i973.i.i.op.op = xor i32 %sub.i.op.i973.i.i.op, 768
  %and788.i.i = select i1 %tobool.not.i.i972.i.i, i32 768, i32 %sub.i.op.i973.i.i.op.op
  %or789.i.i = or i32 %and788.i.i, %and692.i.i
  %70 = ptrtoint ptr %dir1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dir1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp823.not.i.i = icmp eq i32 %71, 1
  %shl826.i.i = select i1 %cmp823.not.i.i, i32 0, i32 16
  %or828.i.i = or i32 %or789.i.i, %shl826.i.i
  %72 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or828.i.i, ptr %16, align 4
  %buf.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %73 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buf.i.i, align 4
  %in_buffer.i.i = getelementptr inbounds %struct.cdns_xspi_dev, ptr %5, i32 0, i32 12
  %75 = ptrtoint ptr %in_buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %in_buffer.i.i, align 4
  %76 = load ptr, ptr %buf.i.i, align 4
  %out_buffer.i.i = getelementptr inbounds %struct.cdns_xspi_dev, ptr %5, i32 0, i32 13
  %77 = ptrtoint ptr %out_buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %out_buffer.i.i, align 4
  call fastcc void @cdns_xspi_trigger_command(ptr noundef %5, ptr noundef nonnull %cmd_regs.i.i) #7
  %sdma_complete.i.i = getelementptr inbounds %struct.cdns_xspi_dev, ptr %5, i32 0, i32 10
  tail call void @wait_for_completion(ptr noundef %sdma_complete.i.i) #7
  %78 = ptrtoint ptr %sdma_error.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %sdma_error.i.i, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool835.not.i.i = icmp eq i8 %79, 0
  %80 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %iobase.i.i.i, align 4
  br i1 %tobool835.not.i.i, label %if.end837.i.i, label %if.then836.i.i

if.then836.i.i:                                   ; preds = %if.then542.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i976.i.i = getelementptr i8, ptr %81, i32 276
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i976.i.i) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  %83 = and i32 %82, -57473
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %84 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr3.i977.i.i = getelementptr i8, ptr %85, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i977.i.i, i32 %83) #7, !srcloc !150
  br label %cdns_xspi_mem_op.exit

if.end837.i.i:                                    ; preds = %if.then542.i.i
  %add.ptr.i979.i.i = getelementptr i8, ptr %81, i32 576
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i979.i.i) #7, !srcloc !147
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  %88 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %89, i32 580
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  %91 = and i32 %90, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %trunc.not.i.i.i = icmp eq i32 %91, 0
  %sdmabase.i.i.i = getelementptr inbounds %struct.cdns_xspi_dev, ptr %5, i32 0, i32 4
  %92 = ptrtoint ptr %sdmabase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sdmabase.i.i.i, align 4
  br i1 %trunc.not.i.i.i, label %sw.bb.i.i.i, label %sw.bb23.i.i.i

sw.bb.i.i.i:                                      ; preds = %if.end837.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %in_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %in_buffer.i.i, align 4
  tail call void @__raw_readsb(ptr noundef %93, ptr noundef %95, i32 noundef %87) #7
  br label %if.end838.i.i

sw.bb23.i.i.i:                                    ; preds = %if.end837.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %out_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %out_buffer.i.i, align 4
  tail call void @__raw_writesb(ptr noundef %93, ptr noundef %97, i32 noundef %87) #7
  br label %if.end838.i.i

if.end838.i.i:                                    ; preds = %sw.bb23.i.i.i, %sw.bb.i.i.i, %do.body.i.i.if.end838.i.i_crit_edge
  %cmd_complete.i.i = getelementptr inbounds %struct.cdns_xspi_dev, ptr %5, i32 0, i32 8
  tail call void @wait_for_completion(ptr noundef %cmd_complete.i.i) #7
  %98 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i981.i.i = getelementptr i8, ptr %99, i32 276
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i981.i.i) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  %101 = and i32 %100, -57473
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %102 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr3.i982.i.i = getelementptr i8, ptr %103, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i982.i.i, i32 %101) #7, !srcloc !150
  %104 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %iobase.i.i.i, align 4
  %add.ptr.i984.i.i = getelementptr i8, ptr %105, i32 68
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i984.i.i) #7, !srcloc !147
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  %and.i.i.i = and i32 %107, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end838.i.i.cdns_xspi_check_command_status.exit.thread1008.i.i_crit_edge, label %if.then.i.i.i

if.end838.i.i.cdns_xspi_check_command_status.exit.thread1008.i.i_crit_edge: ; preds = %if.end838.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_xspi_check_command_status.exit.thread1008.i.i

if.then.i.i.i:                                    ; preds = %if.end838.i.i
  %and2.i.i.i = and i32 %107, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.then.i.i.i.cdns_xspi_check_command_status.exit.thread.i.i_crit_edge, label %if.then3.i.i.i

if.then.i.i.i.cdns_xspi_check_command_status.exit.thread.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_xspi_check_command_status.exit.thread.i.i

if.then3.i.i.i:                                   ; preds = %if.then.i.i.i
  %and4.i.i.i = and i32 %107, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.then3.i.i.i.if.end.i.i.i_crit_edge, label %do.end.i.i.i

if.then3.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i.i = getelementptr inbounds %struct.cdns_xspi_dev, ptr %5, i32 0, i32 1
  %108 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.31) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then3.i.i.i.if.end.i.i.i_crit_edge
  %ret.0.i.i.i = phi i32 [ -71, %do.end.i.i.i ], [ 0, %if.then3.i.i.i.if.end.i.i.i_crit_edge ]
  %and7.i.i.i = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %and7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end.i.i.i.if.end14.i.i.i_crit_edge, label %do.end12.i.i.i

if.end.i.i.i.if.end14.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i.i

do.end12.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev13.i.i.i = getelementptr inbounds %struct.cdns_xspi_dev, ptr %5, i32 0, i32 1
  %110 = ptrtoint ptr %dev13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev13.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.34) #10
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %do.end12.i.i.i, %if.end.i.i.i.if.end14.i.i.i_crit_edge
  %ret.1.i.i.i = phi i32 [ -71, %do.end12.i.i.i ], [ %ret.0.i.i.i, %if.end.i.i.i.if.end14.i.i.i_crit_edge ]
  %and15.i.i.i = and i32 %107, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %and15.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %if.end22.i.i.i, label %if.end22.i.thread.i.i

if.end22.i.i.i:                                   ; preds = %if.end14.i.i.i
  %and23.i.i.i = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and23.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %cdns_xspi_check_command_status.exit.i.i, label %if.end22.i.i.i.cdns_xspi_check_command_status.exit.thread1008.i.i_crit_edge

if.end22.i.i.i.cdns_xspi_check_command_status.exit.thread1008.i.i_crit_edge: ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_xspi_check_command_status.exit.thread1008.i.i

if.end22.i.thread.i.i:                            ; preds = %if.end14.i.i.i
  %dev21.i.i.i = getelementptr inbounds %struct.cdns_xspi_dev, ptr %5, i32 0, i32 1
  %112 = ptrtoint ptr %dev21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev21.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.37) #10
  %and23.i1012.i.i = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i1012.i.i)
  %tobool24.not.i1013.i.i = icmp eq i32 %and23.i1012.i.i, 0
  br i1 %tobool24.not.i1013.i.i, label %if.end22.i.thread.i.i.cdns_xspi_mem_op.exit_crit_edge, label %if.end22.i.thread.i.i.cdns_xspi_check_command_status.exit.thread1008.i.i_crit_edge

if.end22.i.thread.i.i.cdns_xspi_check_command_status.exit.thread1008.i.i_crit_edge: ; preds = %if.end22.i.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_xspi_check_command_status.exit.thread1008.i.i

if.end22.i.thread.i.i.cdns_xspi_mem_op.exit_crit_edge: ; preds = %if.end22.i.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_xspi_mem_op.exit

cdns_xspi_check_command_status.exit.thread1008.i.i: ; preds = %if.end22.i.thread.i.i.cdns_xspi_check_command_status.exit.thread1008.i.i_crit_edge, %if.end22.i.i.i.cdns_xspi_check_command_status.exit.thread1008.i.i_crit_edge, %if.end838.i.i.cdns_xspi_check_command_status.exit.thread1008.i.i_crit_edge
  %.str.40.sink.i.i.i = phi ptr [ @.str.40, %if.end22.i.i.i.cdns_xspi_check_command_status.exit.thread1008.i.i_crit_edge ], [ @.str.43, %if.end838.i.i.cdns_xspi_check_command_status.exit.thread1008.i.i_crit_edge ], [ @.str.40, %if.end22.i.thread.i.i.cdns_xspi_check_command_status.exit.thread1008.i.i_crit_edge ]
  %dev29.i.i.i = getelementptr inbounds %struct.cdns_xspi_dev, ptr %5, i32 0, i32 1
  %114 = ptrtoint ptr %dev29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev29.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull %.str.40.sink.i.i.i) #10
  br label %cdns_xspi_mem_op.exit

cdns_xspi_check_command_status.exit.i.i:          ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i.i)
  %tobool840.not.i.i = icmp eq i32 %ret.1.i.i.i, 0
  br i1 %tobool840.not.i.i, label %cdns_xspi_check_command_status.exit.i.i.cdns_xspi_check_command_status.exit.thread.i.i_crit_edge, label %cdns_xspi_check_command_status.exit.i.i.cdns_xspi_mem_op.exit_crit_edge

cdns_xspi_check_command_status.exit.i.i.cdns_xspi_mem_op.exit_crit_edge: ; preds = %cdns_xspi_check_command_status.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_xspi_mem_op.exit

cdns_xspi_check_command_status.exit.i.i.cdns_xspi_check_command_status.exit.thread.i.i_crit_edge: ; preds = %cdns_xspi_check_command_status.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_xspi_check_command_status.exit.thread.i.i

cdns_xspi_check_command_status.exit.thread.i.i:   ; preds = %cdns_xspi_check_command_status.exit.i.i.cdns_xspi_check_command_status.exit.thread.i.i_crit_edge, %if.then.i.i.i.cdns_xspi_check_command_status.exit.thread.i.i_crit_edge
  br label %cdns_xspi_mem_op.exit

cdns_xspi_mem_op.exit:                            ; preds = %cdns_xspi_check_command_status.exit.thread.i.i, %cdns_xspi_check_command_status.exit.i.i.cdns_xspi_mem_op.exit_crit_edge, %cdns_xspi_check_command_status.exit.thread1008.i.i, %if.end22.i.thread.i.i.cdns_xspi_mem_op.exit_crit_edge, %if.then836.i.i, %for.end.i.i.i.cdns_xspi_mem_op.exit_crit_edge
  %retval.0.i.i = phi i32 [ -5, %if.then836.i.i ], [ 0, %cdns_xspi_check_command_status.exit.thread.i.i ], [ -71, %cdns_xspi_check_command_status.exit.i.i.cdns_xspi_mem_op.exit_crit_edge ], [ -71, %cdns_xspi_check_command_status.exit.thread1008.i.i ], [ -5, %for.end.i.i.i.cdns_xspi_mem_op.exit_crit_edge ], [ -71, %if.end22.i.thread.i.i.cdns_xspi_mem_op.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd_regs.i.i) #7
  ret i32 %retval.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_xspi_trigger_command(ptr nocapture noundef readonly %cdns_xspi, ptr nocapture noundef readonly %cmd_regs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %arrayidx = getelementptr i32, ptr %cmd_regs, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %iobase = getelementptr inbounds %struct.cdns_xspi_dev, ptr %cdns_xspi, i32 0, i32 2
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  tail call void @arm_heavy_mb() #7
  %arrayidx3 = getelementptr i32, ptr %cmd_regs, i32 4
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %7) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %arrayidx8 = getelementptr i32, ptr %cmd_regs, i32 3
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase, align 4
  %add.ptr10 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %12) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @arm_heavy_mb() #7
  %arrayidx13 = getelementptr i32, ptr %cmd_regs, i32 2
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx13, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase, align 4
  %add.ptr15 = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %17) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void @arm_heavy_mb() #7
  %arrayidx18 = getelementptr i32, ptr %cmd_regs, i32 1
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx18, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iobase, align 4
  %add.ptr20 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %22) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %cmd_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd_regs, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #7, !srcloc !150
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__initcall__kmod_spi_cadence_xspi__354_635_cdns_xspi_platform_driver_init6, !1, !"__initcall__kmod_spi_cadence_xspi__354_635_cdns_xspi_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 635, i32 1}
!2 = !{ptr @__exitcall_cdns_xspi_platform_driver_exit, !1, !"__exitcall_cdns_xspi_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description355, !4, !"__UNIQUE_ID_description355", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 637, i32 1}
!5 = !{ptr @__UNIQUE_ID_file356, !6, !"__UNIQUE_ID_file356", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 638, i32 1}
!7 = !{ptr @__UNIQUE_ID_license357, !6, !"__UNIQUE_ID_license357", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias358, !9, !"__UNIQUE_ID_alias358", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 639, i32 1}
!10 = !{ptr @__UNIQUE_ID_author359, !11, !"__UNIQUE_ID_author359", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 640, i32 1}
!12 = !{ptr @__UNIQUE_ID_author360, !13, !"__UNIQUE_ID_author360", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 641, i32 1}
!14 = !{ptr @__UNIQUE_ID_author361, !15, !"__UNIQUE_ID_author361", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 642, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 630, i32 11}
!18 = !{ptr @cdns_xspi_platform_driver, !19, !"cdns_xspi_platform_driver", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 626, i32 31}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 560, i32 66}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 562, i32 3}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cdns_xspi_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @cdns_xspi_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 566, i32 59}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 569, i32 3}
!34 = !{ptr @cdns_xspi_probe._entry.8, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cdns_xspi_probe._entry_ptr.10, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 574, i32 67}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 576, i32 3}
!40 = !{ptr @cdns_xspi_probe._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @cdns_xspi_probe._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 582, i32 3}
!44 = !{ptr @cdns_xspi_probe._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @cdns_xspi_probe._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 589, i32 3}
!48 = !{ptr @cdns_xspi_probe._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @cdns_xspi_probe._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 597, i32 3}
!52 = !{ptr @cdns_xspi_probe._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @cdns_xspi_probe._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 605, i32 3}
!56 = !{ptr @cdns_xspi_probe._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @cdns_xspi_probe._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 609, i32 2}
!60 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @cdns_xspi_probe._entry.27, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @cdns_xspi_probe._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @cadence_xspi_mem_ops, !64, !"cadence_xspi_mem_ops", i1 false, i1 false}
!64 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 438, i32 44}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 260, i32 5}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @cdns_xspi_check_command_status._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @cdns_xspi_check_command_status._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 265, i32 5}
!72 = !{ptr @cdns_xspi_check_command_status._entry.33, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @cdns_xspi_check_command_status._entry_ptr.35, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 270, i32 5}
!76 = !{ptr @cdns_xspi_check_command_status._entry.36, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @cdns_xspi_check_command_status._entry_ptr.38, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 275, i32 5}
!80 = !{ptr @cdns_xspi_check_command_status._entry.39, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @cdns_xspi_check_command_status._entry_ptr.41, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 281, i32 3}
!84 = !{ptr @cdns_xspi_check_command_status._entry.42, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @cdns_xspi_check_command_status._entry_ptr.44, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @init_completion.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../include/linux/completion.h", i32 87, i32 2}
!88 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 494, i32 40}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 495, i32 4}
!93 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @cdns_xspi_of_get_plat_data._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @cdns_xspi_of_get_plat_data._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 499, i32 4}
!98 = !{ptr @cdns_xspi_of_get_plat_data._entry.49, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @cdns_xspi_of_get_plat_data._entry_ptr.51, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 456, i32 4}
!102 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @cdns_xspi_irq_handler._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @cdns_xspi_irq_handler._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 512, i32 2}
!107 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @cdns_xspi_print_phy_config._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @cdns_xspi_print_phy_config._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 513, i32 2}
!112 = !{ptr @cdns_xspi_print_phy_config._entry.56, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @cdns_xspi_print_phy_config._entry_ptr.58, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 515, i32 2}
!116 = !{ptr @cdns_xspi_print_phy_config._entry.59, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @cdns_xspi_print_phy_config._entry_ptr.61, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 517, i32 2}
!120 = !{ptr @cdns_xspi_print_phy_config._entry.62, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @cdns_xspi_print_phy_config._entry_ptr.64, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 519, i32 2}
!124 = !{ptr @cdns_xspi_print_phy_config._entry.65, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @cdns_xspi_print_phy_config._entry_ptr.67, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 521, i32 2}
!128 = !{ptr @cdns_xspi_print_phy_config._entry.68, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @cdns_xspi_print_phy_config._entry_ptr.70, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 310, i32 3}
!132 = !{ptr @.str.72, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @cdns_xspi_controller_init._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @cdns_xspi_controller_init._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @cdns_xspi_of_match, !136, !"cdns_xspi_of_match", i1 false, i1 false}
!136 = !{!"../drivers/spi/spi-cadence-xspi.c", i32 615, i32 34}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"auto-init"}
!147 = !{i64 4223353}
!148 = !{i64 2155403585}
!149 = !{i64 2155403822}
!150 = !{i64 4222935}
!151 = !{i64 2155406711}
!152 = !{i64 2155406948}
!153 = !{i64 2155414555}
!154 = !{i64 2155416805}
!155 = !{i64 2155419066}
!156 = !{i64 2155421409}
!157 = !{i64 2155423714}
!158 = !{i64 2154431883}
!159 = !{i64 2154478564}
!160 = !{i64 2154430018}
!161 = !{i64 2154431146}
!162 = !{i64 2154586781}
!163 = !{i32 0, i32 33}
!164 = !{i8 0, i8 2}
!165 = !{i64 2154519345}
!166 = !{i64 2154519874}
!167 = !{i64 2154420615}
!168 = !{i64 2154417648}
!169 = !{i64 2154418094}
!170 = !{i64 2154418540}
!171 = !{i64 2154418986}
!172 = !{i64 2154419432}
!173 = !{i64 2154419878}
