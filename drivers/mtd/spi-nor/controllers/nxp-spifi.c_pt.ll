; ModuleID = '/llk/IR_all_yes/drivers/mtd/spi-nor/controllers/nxp-spifi.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/controllers/nxp-spifi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_nor_controller_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_nor_hwcaps = type { i32 }
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
%struct.nxp_spifi = type { ptr, ptr, ptr, ptr, ptr, %struct.spi_nor, i8, i32 }
%struct.spi_nor = type { %struct.mtd_info, %struct.mutex, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i32, ptr, ptr, ptr, %struct.anon.80, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.anon.80 = type { ptr, ptr }

@__initcall__kmod_nxp_spifi__236_479_nxp_spifi_driver_init6 = internal global ptr @nxp_spifi_driver_init, section ".initcall6.init", align 4
@nxp_spifi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @nxp_spifi_probe, ptr @nxp_spifi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nxp_spifi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_nxp_spifi_driver_exit = internal global ptr @nxp_spifi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [53 x i8] c"nxp_spifi.description=NXP SPI Flash Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [55 x i8] c"nxp_spifi.author=Joachim Eastwood <manabian@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [57 x i8] c"nxp_spifi.file=drivers/mtd/spi-nor/controllers/nxp-spifi\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [25 x i8] c"nxp_spifi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nxp-spifi\00", [22 x i8] zeroinitializer }, align 32
@nxp_spifi_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,lpc1773-spifi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spifi\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flash\00", [26 x i8] zeroinitializer }, align 32
@nxp_spifi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 400, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spifi clock not found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nxp_spifi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/mtd/spi-nor/controllers/nxp-spifi.c\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nxp_spifi_probe._entry_ptr = internal global ptr @nxp_spifi_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@nxp_spifi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 406, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg clock not found\0A\00", [43 x i8] zeroinitializer }, align 32
@nxp_spifi_probe._entry_ptr.11 = internal global ptr @nxp_spifi_probe._entry.9, section ".printk_index", align 4
@nxp_spifi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 412, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to enable reg clock\0A\00", [36 x i8] zeroinitializer }, align 32
@nxp_spifi_probe._entry_ptr.14 = internal global ptr @nxp_spifi_probe._entry.12, section ".printk_index", align 4
@nxp_spifi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 418, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to enable spifi clock\0A\00", [34 x i8] zeroinitializer }, align 32
@nxp_spifi_probe._entry_ptr.17 = internal global ptr @nxp_spifi_probe._entry.15, section ".printk_index", align 4
@nxp_spifi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 433, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"no SPI flash device to configure\0A\00", [62 x i8] zeroinitializer }, align 32
@nxp_spifi_probe._entry_ptr.20 = internal global ptr @nxp_spifi_probe._entry.18, section ".printk_index", align 4
@nxp_spifi_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 441, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to setup flash chip\0A\00", [36 x i8] zeroinitializer }, align 32
@nxp_spifi_probe._entry_ptr.23 = internal global ptr @nxp_spifi_probe._entry.21, section ".printk_index", align 4
@nxp_spifi_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 86, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"state reset timed out\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nxp_spifi_reset\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nxp_spifi_reset._entry_ptr = internal global ptr @nxp_spifi_reset._entry, section ".printk_index", align 4
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi-rx-bus-width\00", [47 x i8] zeroinitializer }, align 32
@nxp_spifi_setup_flash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 303, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported rx-bus-width\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nxp_spifi_setup_flash\00", [42 x i8] zeroinitializer }, align 32
@nxp_spifi_setup_flash._entry_ptr = internal global ptr @nxp_spifi_setup_flash._entry, section ".printk_index", align 4
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi-cpha\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi-cpol\00", [23 x i8] zeroinitializer }, align 32
@nxp_spifi_setup_flash._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.29, ptr @.str.5, i32 337, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"only mode 0 and 3 supported\0A\00", [35 x i8] zeroinitializer }, align 32
@nxp_spifi_setup_flash._entry_ptr.34 = internal global ptr @nxp_spifi_setup_flash._entry.32, section ".printk_index", align 4
@nxp_spifi_controller_ops = internal constant { %struct.spi_nor_controller_ops, [36 x i8] } { %struct.spi_nor_controller_ops { ptr null, ptr null, ptr @nxp_spifi_read_reg, ptr @nxp_spifi_write_reg, ptr @nxp_spifi_read, ptr @nxp_spifi_write, ptr @nxp_spifi_erase }, [36 x i8] zeroinitializer }, align 32
@nxp_spifi_setup_flash._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.29, ptr @.str.5, i32 361, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"device scan failed\0A\00", [44 x i8] zeroinitializer }, align 32
@nxp_spifi_setup_flash._entry_ptr.37 = internal global ptr @nxp_spifi_setup_flash._entry.35, section ".printk_index", align 4
@nxp_spifi_setup_flash._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.29, ptr @.str.5, i32 367, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"memory command setup failed\0A\00", [35 x i8] zeroinitializer }, align 32
@nxp_spifi_setup_flash._entry_ptr.40 = internal global ptr @nxp_spifi_setup_flash._entry.38, section ".printk_index", align 4
@nxp_spifi_setup_flash._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.29, ptr @.str.5, i32 373, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtd device parse failed\0A\00", [39 x i8] zeroinitializer }, align 32
@nxp_spifi_setup_flash._entry_ptr.43 = internal global ptr @nxp_spifi_setup_flash._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@nxp_spifi_set_memory_mode_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 100, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to enter command mode\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nxp_spifi_set_memory_mode_off\00", [34 x i8] zeroinitializer }, align 32
@nxp_spifi_set_memory_mode_off._entry_ptr = internal global ptr @nxp_spifi_set_memory_mode_off._entry, section ".printk_index", align 4
@nxp_spifi_wait_for_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 72, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"command timed out\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nxp_spifi_wait_for_cmd\00", [41 x i8] zeroinitializer }, align 32
@nxp_spifi_wait_for_cmd._entry_ptr = internal global ptr @nxp_spifi_wait_for_cmd._entry, section ".printk_index", align 4
@nxp_spifi_set_memory_mode_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.5, i32 119, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to enter memory mode\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nxp_spifi_set_memory_mode_on\00", [35 x i8] zeroinitializer }, align 32
@nxp_spifi_set_memory_mode_on._entry_ptr = internal global ptr @nxp_spifi_set_memory_mode_on._entry, section ".printk_index", align 4
@nxp_spifi_setup_memory_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.5, i32 250, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported SPI read mode\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nxp_spifi_setup_memory_cmd\00", [37 x i8] zeroinitializer }, align 32
@nxp_spifi_setup_memory_cmd._entry_ptr = internal global ptr @nxp_spifi_setup_memory_cmd._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 65793, i64 65794, i64 65796]
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"nxp_spifi_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 471, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 475, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"nxp_spifi_match\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 465, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 390, i32 63 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 394, i32 66 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 400, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 404, i32 44 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 406, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 412, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 418, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 433, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 441, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 86, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 292, i32 32 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 303, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 308, i32 27 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 311, i32 27 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 337, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [25 x i8] c"nxp_spifi_controller_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 272, i32 44 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 361, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 367, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 373, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 464, i32 31 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 100, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 72, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 119, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private constant [47 x i8] c"../drivers/mtd/spi-nor/controllers/nxp-spifi.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 250, i32 3 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_nxp_spifi_driver_exit, ptr @__initcall__kmod_nxp_spifi__236_479_nxp_spifi_driver_init6, ptr @nxp_spifi_driver_exit, ptr @nxp_spifi_probe._entry, ptr @nxp_spifi_probe._entry.12, ptr @nxp_spifi_probe._entry.15, ptr @nxp_spifi_probe._entry.18, ptr @nxp_spifi_probe._entry.21, ptr @nxp_spifi_probe._entry.9, ptr @nxp_spifi_probe._entry_ptr, ptr @nxp_spifi_probe._entry_ptr.11, ptr @nxp_spifi_probe._entry_ptr.14, ptr @nxp_spifi_probe._entry_ptr.17, ptr @nxp_spifi_probe._entry_ptr.20, ptr @nxp_spifi_probe._entry_ptr.23, ptr @nxp_spifi_reset._entry, ptr @nxp_spifi_reset._entry_ptr, ptr @nxp_spifi_set_memory_mode_off._entry, ptr @nxp_spifi_set_memory_mode_off._entry_ptr, ptr @nxp_spifi_set_memory_mode_on._entry, ptr @nxp_spifi_set_memory_mode_on._entry_ptr, ptr @nxp_spifi_setup_flash._entry, ptr @nxp_spifi_setup_flash._entry.32, ptr @nxp_spifi_setup_flash._entry.35, ptr @nxp_spifi_setup_flash._entry.38, ptr @nxp_spifi_setup_flash._entry.41, ptr @nxp_spifi_setup_flash._entry_ptr, ptr @nxp_spifi_setup_flash._entry_ptr.34, ptr @nxp_spifi_setup_flash._entry_ptr.37, ptr @nxp_spifi_setup_flash._entry_ptr.40, ptr @nxp_spifi_setup_flash._entry_ptr.43, ptr @nxp_spifi_setup_memory_cmd._entry, ptr @nxp_spifi_setup_memory_cmd._entry_ptr, ptr @nxp_spifi_wait_for_cmd._entry, ptr @nxp_spifi_wait_for_cmd._entry_ptr, ptr @nxp_spifi_driver, ptr @.str, ptr @nxp_spifi_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @nxp_spifi_controller_ops, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_setup_flash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_setup_flash._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_controller_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_setup_flash._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_setup_flash._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_setup_flash._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_set_memory_mode_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_wait_for_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_set_memory_mode_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_spifi_setup_memory_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_spifi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @nxp_spifi_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nxp_spifi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @nxp_spifi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_spifi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %hwcaps.i = alloca %struct.spi_nor_hwcaps, align 4
  %property.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1616, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #6
  %io_base = getelementptr inbounds %struct.nxp_spifi, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %io_base, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #6
  %flash_base = getelementptr inbounds %struct.nxp_spifi, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %flash_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %flash_base, align 8
  %cmp.i130 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %clk_spifi = getelementptr inbounds %struct.nxp_spifi, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %clk_spifi to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call16, ptr %clk_spifi, align 4
  %cmp.i131 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  %5 = ptrtoint ptr %clk_spifi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk_spifi, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %call25 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #6
  %clk_reg = getelementptr inbounds %struct.nxp_spifi, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %clk_reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call25, ptr %clk_reg, align 8
  %cmp.i132 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %do.end31, label %if.end35

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  %9 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_reg, align 8
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end23
  %call.i133 = tail call i32 @clk_prepare(ptr noundef %call25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool.not.i = icmp eq i32 %call.i133, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end35.do.end42_crit_edge

if.end35.do.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

if.end.i:                                         ; preds = %if.end35
  %call1.i = tail call i32 @clk_enable(ptr noundef %call25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end44, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call25) #6
  br label %do.end42

do.end42:                                         ; preds = %if.then3.i, %if.end35.do.end42_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i133, %if.end35.do.end42_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end44:                                         ; preds = %if.end.i
  %12 = ptrtoint ptr %clk_spifi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_spifi, align 4
  %call.i134 = tail call i32 @clk_prepare(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool.not.i135 = icmp eq i32 %call.i134, 0
  br i1 %tobool.not.i135, label %if.end.i138, label %if.end44.do.end51_crit_edge

if.end44.do.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51

if.end.i138:                                      ; preds = %if.end44
  %call1.i136 = tail call i32 @clk_enable(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i136)
  %tobool2.not.i137 = icmp eq i32 %call1.i136, 0
  br i1 %tobool2.not.i137, label %if.end53, label %if.then3.i139

if.then3.i139:                                    ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %13) #6
  br label %do.end51

do.end51:                                         ; preds = %if.then3.i139, %if.end44.do.end51_crit_edge
  %retval.0.i140.ph = phi i32 [ %call1.i136, %if.then3.i139 ], [ %call.i134, %if.end44.do.end51_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %dis_clk_reg

if.end53:                                         ; preds = %if.end.i138
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %call.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call56 = tail call fastcc i32 @nxp_spifi_reset(ptr noundef nonnull %call.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base, align 4
  %add.ptr65 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 0) #6, !srcloc !117
  %call66 = tail call fastcc i32 @nxp_spifi_reset(ptr noundef nonnull %call.i)
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %call68 = tail call ptr @of_get_next_available_child(ptr noundef %21, ptr noundef null) #6
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %do.end73, label %if.end75

do.end73:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %dis_clks

if.end75:                                         ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwcaps.i) #6
  %22 = ptrtoint ptr %hwcaps.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 65539, ptr %hwcaps.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %property.i) #6
  %23 = ptrtoint ptr %property.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %property.i, align 4, !annotation !119
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call68, ptr noundef nonnull @.str.27, ptr noundef nonnull %property.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i142 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i142, label %if.then.i, label %if.end75.if.end.i143_crit_edge

if.end75.if.end.i143_crit_edge:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i143

if.then.i:                                        ; preds = %if.end75
  %24 = ptrtoint ptr %property.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %property.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %if.then.i.do.end81_crit_edge [
    i32 1, label %if.then.i.if.end.i143_crit_edge
    i32 2, label %sw.bb.i
    i32 4, label %sw.bb2.i
  ]

if.then.i.if.end.i143_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i143

if.then.i.do.end81_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i143

sw.bb2.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i143

if.end.i143:                                      ; preds = %sw.bb2.i, %sw.bb.i, %if.then.i.if.end.i143_crit_edge, %if.end75.if.end.i143_crit_edge
  %mode.0.i = phi i16 [ 0, %if.end75.if.end.i143_crit_edge ], [ 2048, %sw.bb2.i ], [ 1024, %sw.bb.i ], [ 0, %if.then.i.if.end.i143_crit_edge ]
  %call6.i = call ptr @of_find_property(ptr noundef nonnull %call68, ptr noundef nonnull @.str.30, ptr noundef null) #6
  %tobool7.not.i = icmp ne ptr %call6.i, null
  %27 = zext i1 %tobool7.not.i to i16
  %spec.select.i = or i16 %mode.0.i, %27
  %call13.i = call ptr @of_find_property(ptr noundef nonnull %call68, ptr noundef nonnull @.str.31, ptr noundef null) #6
  %tobool14.not.i = icmp eq ptr %call13.i, null
  %28 = or i16 %spec.select.i, 2
  %mode.2.i = select i1 %tobool14.not.i, i16 %spec.select.i, i16 %28
  %conv20.i = zext i16 %mode.2.i to i32
  %and.i = and i32 %conv20.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool21.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool21.not.i, label %if.else.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %hwcaps.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hwcaps.i, align 4
  %or24.i = or i32 %30, 8
  store i32 %or24.i, ptr %hwcaps.i, align 4
  br label %if.end35.i

if.else.i:                                        ; preds = %if.end.i143
  %and26.i = and i32 %conv20.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.else.i.if.end35.i_crit_edge, label %if.then28.i

if.else.i.if.end35.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

if.then28.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %hwcaps.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hwcaps.i, align 4
  %or31.i = or i32 %32, 128
  store i32 %or31.i, ptr %hwcaps.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then28.i, %if.else.i.if.end35.i_crit_edge, %if.then22.i
  %ctrl.0.i = phi i32 [ 1343161320, %if.then22.i ], [ 1074725864, %if.then28.i ], [ 1343161320, %if.else.i.if.end35.i_crit_edge ]
  %and37.i = and i32 %conv20.i, 3
  %33 = zext i32 %and37.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %and37.i, label %if.end35.i.do.end81_crit_edge [
    i32 0, label %if.end35.i.do.body48.i_crit_edge
    i32 3, label %sw.bb40.i
  ]

if.end35.i.do.body48.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48.i

if.end35.i.do.end81_crit_edge:                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

sw.bb40.i:                                        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  %or41.i = or i32 %ctrl.0.i, 8388608
  br label %do.body48.i

do.body48.i:                                      ; preds = %sw.bb40.i, %if.end35.i.do.body48.i_crit_edge
  %ctrl.1.i = phi i32 [ %or41.i, %sw.bb40.i ], [ %ctrl.0.i, %if.end35.i.do.body48.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  call void @arm_heavy_mb() #6
  %34 = call i32 @llvm.bswap.i32(i32 %ctrl.1.i) #6
  %35 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #6, !srcloc !117
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 8
  %nor.i = getelementptr inbounds %struct.nxp_spifi, ptr %call.i, i32 0, i32 5
  %dev52.i = getelementptr inbounds %struct.nxp_spifi, ptr %call.i, i32 0, i32 5, i32 2
  %39 = ptrtoint ptr %dev52.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %dev52.i, align 4
  %of_node.i.i.i = getelementptr inbounds %struct.nxp_spifi, ptr %call.i, i32 0, i32 5, i32 0, i32 56, i32 27
  %40 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call68, ptr %of_node.i.i.i, align 8
  %name.i.i.i = getelementptr inbounds %struct.nxp_spifi, ptr %call.i, i32 0, i32 5, i32 0, i32 13
  %41 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body48.i.spi_nor_set_flash_node.exit.i_crit_edge

do.body48.i.spi_nor_set_flash_node.exit.i_crit_edge: ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_nor_set_flash_node.exit.i

if.then.i.i.i:                                    ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i121.i = call i32 @of_property_read_string(ptr noundef nonnull %call68, ptr noundef nonnull @.str.44, ptr noundef %name.i.i.i) #6
  br label %spi_nor_set_flash_node.exit.i

spi_nor_set_flash_node.exit.i:                    ; preds = %if.then.i.i.i, %do.body48.i.spi_nor_set_flash_node.exit.i_crit_edge
  %priv.i = getelementptr inbounds %struct.nxp_spifi, ptr %call.i, i32 0, i32 5, i32 23
  %43 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %priv.i, align 8
  %controller_ops.i = getelementptr inbounds %struct.nxp_spifi, ptr %call.i, i32 0, i32 5, i32 20
  %44 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @nxp_spifi_controller_ops, ptr %controller_ops.i, align 8
  %memory_mode.i.i.i = getelementptr inbounds %struct.nxp_spifi, ptr %call.i, i32 0, i32 6
  %45 = ptrtoint ptr %memory_mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %memory_mode.i.i.i, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i.i125.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i.i125.i, label %spi_nor_set_flash_node.exit.i.if.end.i.i_crit_edge, label %if.end.i.i.i

spi_nor_set_flash_node.exit.i.if.end.i.i_crit_edge: ; preds = %spi_nor_set_flash_node.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %spi_nor_set_flash_node.exit.i
  %call.i.i126.i = call fastcc i32 @nxp_spifi_reset(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i126.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i126.i, 0
  br i1 %tobool1.not.i.i.i, label %if.else.i.i.i, label %nxp_spifi_set_memory_mode_off.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %memory_mode.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %memory_mode.i.i.i, align 8
  br label %if.end.i.i

nxp_spifi_set_memory_mode_off.exit.i.i:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.45) #9
  br label %nxp_spifi_read_reg.exit.i

if.end.i.i:                                       ; preds = %if.else.i.i.i, %spi_nor_set_flash_node.exit.i.if.end.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 100671647) #6, !srcloc !117
  %52 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %io_base, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %53, i32 20
  %54 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i.i) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %55 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_base, align 4
  %add.ptr5.i.1.i = getelementptr i8, ptr %56, i32 20
  %57 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i.1.i) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %58 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %io_base, align 4
  %add.ptr5.i.2.i = getelementptr i8, ptr %59, i32 20
  %60 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i.2.i) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %61 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io_base, align 4
  %add.ptr5.i.3.i = getelementptr i8, ptr %62, i32 20
  %63 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i.3.i) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %64 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %io_base, align 4
  %add.ptr5.i.4.i = getelementptr i8, ptr %65, i32 20
  %66 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i.4.i) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %67 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %io_base, align 4
  %add.ptr5.i.5.i = getelementptr i8, ptr %68, i32 20
  %69 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i.5.i) #6, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %call8.i.i = call fastcc i32 @nxp_spifi_wait_for_cmd(ptr noundef nonnull %call.i) #6
  br label %nxp_spifi_read_reg.exit.i

nxp_spifi_read_reg.exit.i:                        ; preds = %if.end.i.i, %nxp_spifi_set_memory_mode_off.exit.i.i
  %call58.i = call i32 @spi_nor_scan(ptr noundef %nor.i, ptr noundef null, ptr noundef nonnull %hwcaps.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end65.i, label %nxp_spifi_read_reg.exit.i.do.end81_crit_edge

nxp_spifi_read_reg.exit.i.do.end81_crit_edge:     ; preds = %nxp_spifi_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

if.end65.i:                                       ; preds = %nxp_spifi_read_reg.exit.i
  %read_proto.i.i = getelementptr inbounds %struct.nxp_spifi, ptr %call.i, i32 0, i32 5, i32 13
  %70 = ptrtoint ptr %read_proto.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %read_proto.i.i, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %71, label %do.end.i.i [
    i32 65793, label %if.end65.i.sw.epilog.i.i_crit_edge
    i32 65794, label %if.end65.i.sw.bb1.i.i_crit_edge
    i32 65796, label %if.end65.i.sw.bb1.i.i_crit_edge153
  ]

if.end65.i.sw.bb1.i.i_crit_edge153:               ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i.i

if.end65.i.sw.bb1.i.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i.i

if.end65.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.end65.i.sw.bb1.i.i_crit_edge, %if.end65.i.sw.bb1.i.i_crit_edge153
  br label %sw.epilog.i.i

do.end.i.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.51) #9
  br label %do.end81

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %if.end65.i.sw.epilog.i.i_crit_edge
  %.sink.i.i = phi i32 [ 524288, %sw.bb1.i.i ], [ 0, %if.end65.i.sw.epilog.i.i_crit_edge ]
  %mcmd2.i.i = getelementptr inbounds %struct.nxp_spifi, ptr %call.i, i32 0, i32 7
  %75 = ptrtoint ptr %mcmd2.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %.sink.i.i, ptr %mcmd2.i.i, align 4
  %addr_width.i.i = getelementptr inbounds %struct.nxp_spifi, ptr %call.i, i32 0, i32 5, i32 8
  %76 = ptrtoint ptr %addr_width.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %addr_width.i.i, align 4
  %78 = add i8 %77, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %78)
  %79 = icmp ult i8 %78, -4
  br i1 %79, label %sw.epilog.i.i.do.end81_crit_edge, label %if.end73.i

sw.epilog.i.i.do.end81_crit_edge:                 ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

if.end73.i:                                       ; preds = %sw.epilog.i.i
  %conv.i.i = zext i8 %77 to i32
  %read_opcode.i.i = getelementptr inbounds %struct.nxp_spifi, ptr %call.i, i32 0, i32 5, i32 10
  %80 = ptrtoint ptr %read_opcode.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %read_opcode.i.i, align 2
  %conv11.i.i = zext i8 %81 to i32
  %shl.i.i = shl nuw i32 %conv11.i.i, 24
  %read_dummy.i.i = getelementptr inbounds %struct.nxp_spifi, ptr %call.i, i32 0, i32 5, i32 11
  %82 = ptrtoint ptr %read_dummy.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %read_dummy.i.i, align 1
  %84 = lshr i8 %83, 3
  %div.i.i = zext i8 %84 to i32
  %shl14.i.i = shl nuw nsw i32 %div.i.i, 16
  %or.i.i = or i32 %shl14.i.i, %shl.i.i
  %add.i.i = shl nuw nsw i32 %conv.i.i, 21
  %shl18.i.i = add nuw nsw i32 %add.i.i, 2097152
  %or19.i.i = or i32 %shl18.i.i, %.sink.i.i
  %or21.i.i = or i32 %or.i.i, %or19.i.i
  %85 = ptrtoint ptr %mcmd2.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or21.i.i, ptr %mcmd2.i.i, align 4
  %call75.i = call i32 @mtd_device_parse_register(ptr noundef %nor.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %nxp_spifi_setup_flash.exit.thread, label %if.end73.i.do.end81_crit_edge

if.end73.i.do.end81_crit_edge:                    ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

nxp_spifi_setup_flash.exit.thread:                ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwcaps.i) #6
  call void @of_node_put(ptr noundef nonnull %call68) #6
  br label %cleanup

do.end81:                                         ; preds = %if.end73.i.do.end81_crit_edge, %sw.epilog.i.i.do.end81_crit_edge, %do.end.i.i, %nxp_spifi_read_reg.exit.i.do.end81_crit_edge, %if.end35.i.do.end81_crit_edge, %if.then.i.do.end81_crit_edge
  %.str.42.sink.i = phi ptr [ @.str.28, %if.then.i.do.end81_crit_edge ], [ @.str.33, %if.end35.i.do.end81_crit_edge ], [ @.str.36, %nxp_spifi_read_reg.exit.i.do.end81_crit_edge ], [ @.str.39, %do.end.i.i ], [ @.str.39, %sw.epilog.i.i.do.end81_crit_edge ], [ @.str.42, %if.end73.i.do.end81_crit_edge ]
  %retval.0.ph.i = phi i32 [ -22, %if.then.i.do.end81_crit_edge ], [ -22, %if.end35.i.do.end81_crit_edge ], [ %call58.i, %nxp_spifi_read_reg.exit.i.do.end81_crit_edge ], [ -22, %do.end.i.i ], [ -22, %sw.epilog.i.i.do.end81_crit_edge ], [ %call75.i, %if.end73.i.do.end81_crit_edge ]
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull %.str.42.sink.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwcaps.i) #6
  call void @of_node_put(ptr noundef nonnull %call68) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %dis_clks

dis_clks:                                         ; preds = %do.end81, %do.end73
  %ret.0 = phi i32 [ %retval.0.ph.i, %do.end81 ], [ -19, %do.end73 ]
  %88 = ptrtoint ptr %clk_spifi to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %clk_spifi, align 4
  call void @clk_disable(ptr noundef %89) #6
  call void @clk_unprepare(ptr noundef %89) #6
  br label %dis_clk_reg

dis_clk_reg:                                      ; preds = %dis_clks, %do.end51
  %ret.1 = phi i32 [ %retval.0.i140.ph, %do.end51 ], [ %ret.0, %dis_clks ]
  %90 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %clk_reg, align 8
  call void @clk_disable(ptr noundef %91) #6
  call void @clk_unprepare(ptr noundef %91) #6
  br label %cleanup

cleanup:                                          ; preds = %dis_clk_reg, %nxp_spifi_setup_flash.exit.thread, %do.end42, %do.end31, %do.end, %if.then11, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %3, %if.then11 ], [ %7, %do.end ], [ %11, %do.end31 ], [ %retval.0.i.ph, %do.end42 ], [ %ret.1, %dis_clk_reg ], [ -12, %entry.cleanup_crit_edge ], [ 0, %nxp_spifi_setup_flash.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_spifi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nor = getelementptr inbounds %struct.nxp_spifi, ptr %1, i32 0, i32 5
  %call1 = tail call i32 @mtd_device_unregister(ptr noundef %nor) #6
  %clk_spifi = getelementptr inbounds %struct.nxp_spifi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk_spifi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_spifi, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %clk_reg = getelementptr inbounds %struct.nxp_spifi, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_reg, align 8
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nxp_spifi_reset(ptr nocapture noundef readonly %spifi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %io_base = getelementptr inbounds %struct.nxp_spifi, ptr %spifi, i32 0, i32 3
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 268435456) #6, !srcloc !117
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 30000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 84) #6
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 4
  %add.ptr1254 = getelementptr i8, ptr %3, i32 28
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1254) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  %5 = and i8 %4, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not55 = icmp eq i8 %5, 0
  br i1 %tobool.not55, label %entry.if.end43_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

land.lhs.true:                                    ; preds = %if.then32.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call18 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then32

if.then32:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 4
  %add.ptr12 = getelementptr i8, ptr %7, i32 28
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  %9 = and i8 %8, 16
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then32.if.end43_crit_edge, label %if.then32.land.lhs.true_crit_edge

if.then32.land.lhs.true_crit_edge:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then32.if.end43_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

for.end:                                          ; preds = %land.lhs.true
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base, align 4
  %add.ptr26 = getelementptr i8, ptr %11, i32 28
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  %.pre = and i8 %12, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pre)
  %tobool37.not = icmp eq i8 %.pre, 0
  br i1 %tobool37.not, label %for.end.if.end43_crit_edge, label %do.end42

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.end42:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %spifi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spifi, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.24) #9
  br label %if.end43

if.end43:                                         ; preds = %do.end42, %for.end.if.end43_crit_edge, %if.then32.if.end43_crit_edge, %entry.if.end43_crit_edge
  %cond = phi i32 [ -110, %do.end42 ], [ 0, %for.end.if.end43_crit_edge ], [ 0, %entry.if.end43_crit_edge ], [ 0, %if.then32.if.end43_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_spifi_read_reg(ptr nocapture noundef readonly %nor, i8 noundef zeroext %opcode, ptr nocapture noundef writeonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %memory_mode.i = getelementptr inbounds %struct.nxp_spifi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %memory_mode.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %memory_mode.i, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call fastcc i32 @nxp_spifi_reset(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %nxp_spifi_set_memory_mode_off.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %memory_mode.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %memory_mode.i, align 8
  br label %if.end

nxp_spifi_set_memory_mode_off.exit:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.45) #9
  br label %cleanup

if.end:                                           ; preds = %if.else.i, %entry.if.end_crit_edge
  %and = and i32 %len, 16383
  %conv = zext i8 %opcode to i32
  %shl = shl nuw i32 %conv, 24
  %or = or i32 %and, %shl
  %or2 = or i32 %or, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or2)
  %io_base = getelementptr inbounds %struct.nxp_spifi, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #6, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool3.not18 = icmp eq i32 %len, 0
  br i1 %tobool3.not18, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %buf.addr.020 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %buf, %if.end.while.body_crit_edge ]
  %len.addr.019 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %len, %if.end.while.body_crit_edge ]
  %dec = add i32 %len.addr.019, -1
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base, align 4
  %add.ptr5 = getelementptr i8, ptr %11, i32 20
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %incdec.ptr = getelementptr i8, ptr %buf.addr.020, i32 1
  %13 = ptrtoint ptr %buf.addr.020 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %buf.addr.020, align 1
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %call8 = tail call fastcc i32 @nxp_spifi_wait_for_cmd(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %nxp_spifi_set_memory_mode_off.exit
  %retval.0 = phi i32 [ %call8, %while.end ], [ %call.i, %nxp_spifi_set_memory_mode_off.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_spifi_write_reg(ptr nocapture noundef readonly %nor, i8 noundef zeroext %opcode, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %memory_mode.i = getelementptr inbounds %struct.nxp_spifi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %memory_mode.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %memory_mode.i, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call fastcc i32 @nxp_spifi_reset(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %nxp_spifi_set_memory_mode_off.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %memory_mode.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %memory_mode.i, align 8
  br label %if.end

nxp_spifi_set_memory_mode_off.exit:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.45) #9
  br label %cleanup

if.end:                                           ; preds = %if.else.i, %entry.if.end_crit_edge
  %and = and i32 %len, 16383
  %conv = zext i8 %opcode to i32
  %shl = shl nuw i32 %conv, 24
  %or = or i32 %and, %shl
  %or3 = or i32 %or, 2129920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %io_base = getelementptr inbounds %struct.nxp_spifi, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #6, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool4.not20 = icmp eq i32 %len, 0
  br i1 %tobool4.not20, label %if.end.while.end_crit_edge, label %if.end.do.body5_crit_edge

if.end.do.body5_crit_edge:                        ; preds = %if.end
  br label %do.body5

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body5:                                         ; preds = %do.body5.do.body5_crit_edge, %if.end.do.body5_crit_edge
  %len.addr.022 = phi i32 [ %dec, %do.body5.do.body5_crit_edge ], [ %len, %if.end.do.body5_crit_edge ]
  %buf.addr.021 = phi ptr [ %incdec.ptr, %do.body5.do.body5_crit_edge ], [ %buf, %if.end.do.body5_crit_edge ]
  %dec = add i32 %len.addr.022, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %incdec.ptr = getelementptr i8, ptr %buf.addr.021, i32 1
  %10 = ptrtoint ptr %buf.addr.021 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf.addr.021, align 1
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base, align 4
  %add.ptr9 = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 %11) #6, !srcloc !130
  %tobool4.not = icmp eq i32 %dec, 0
  br i1 %tobool4.not, label %do.body5.while.end_crit_edge, label %do.body5.do.body5_crit_edge

do.body5.do.body5_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

do.body5.while.end_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.body5.while.end_crit_edge, %if.end.while.end_crit_edge
  %call10 = tail call fastcc i32 @nxp_spifi_wait_for_cmd(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %nxp_spifi_set_memory_mode_off.exit
  %retval.0 = phi i32 [ %call10, %while.end ], [ %call.i, %nxp_spifi_set_memory_mode_off.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_spifi_read(ptr nocapture noundef readonly %nor, i64 noundef %from, i32 noundef %len, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %memory_mode.i = getelementptr inbounds %struct.nxp_spifi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %memory_mode.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %memory_mode.i, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %do.body.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  tail call void @arm_heavy_mb() #6
  %mcmd.i = getelementptr inbounds %struct.nxp_spifi, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %mcmd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mcmd.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  %io_base.i = getelementptr inbounds %struct.nxp_spifi, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #6, !srcloc !117
  %call.i = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call.i, 30000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 117) #6
  %9 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base.i, align 4
  %add.ptr1462.i = getelementptr i8, ptr %10, i32 28
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1462.i) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool17.not63.i = icmp eq i8 %12, 0
  br i1 %tobool17.not63.i, label %do.body.i.land.lhs.true.i_crit_edge, label %do.body.i.for.end.i_crit_edge

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.body.i.land.lhs.true.i_crit_edge:              ; preds = %do.body.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then35.i.land.lhs.true.i_crit_edge, %do.body.i.land.lhs.true.i_crit_edge
  %call21.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call21.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call21.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then25.i, label %if.then35.i

if.then25.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_base.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %14, i32 28
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr29.i) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  br label %for.end.i

if.then35.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %16 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %17, i32 28
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14.i) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  %19 = and i8 %18, 1
  %tobool17.not.i = icmp eq i8 %19, 0
  br i1 %tobool17.not.i, label %if.then35.i.land.lhs.true.i_crit_edge, label %if.then35.i.for.end.i_crit_edge

if.then35.i.for.end.i_crit_edge:                  ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.then35.i.land.lhs.true.i_crit_edge:            ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %if.then35.i.for.end.i_crit_edge, %if.then25.i, %do.body.i.for.end.i_crit_edge
  %stat.0.i = phi i8 [ %15, %if.then25.i ], [ %11, %do.body.i.for.end.i_crit_edge ], [ %18, %if.then35.i.for.end.i_crit_edge ]
  %20 = and i8 %stat.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool40.not.i = icmp eq i8 %20, 0
  br i1 %tobool40.not.i, label %nxp_spifi_set_memory_mode_on.exit, label %if.else.i

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %memory_mode.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %memory_mode.i, align 8
  br label %if.end

nxp_spifi_set_memory_mode_on.exit:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.49) #9
  br label %cleanup

if.end:                                           ; preds = %if.else.i, %entry.if.end_crit_edge
  %flash_base = getelementptr inbounds %struct.nxp_spifi, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %flash_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %flash_base, align 8
  %idx.ext = trunc i64 %from to i32
  %add.ptr = getelementptr i8, ptr %25, i32 %idx.ext
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %len) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nxp_spifi_set_memory_mode_on.exit
  %retval.0 = phi i32 [ %len, %if.end ], [ -110, %nxp_spifi_set_memory_mode_on.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_spifi_write(ptr nocapture noundef readonly %nor, i64 noundef %to, i32 noundef %len, ptr nocapture noundef readonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %memory_mode.i = getelementptr inbounds %struct.nxp_spifi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %memory_mode.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %memory_mode.i, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i:                                         ; preds = %entry
  %call.i = tail call fastcc i32 @nxp_spifi_reset(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %nxp_spifi_set_memory_mode_off.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %memory_mode.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %memory_mode.i, align 8
  br label %do.body

nxp_spifi_set_memory_mode_off.exit:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.45) #9
  br label %cleanup

do.body:                                          ; preds = %if.else.i, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  %conv = trunc i64 %to to i32
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %io_base = getelementptr inbounds %struct.nxp_spifi, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #6, !srcloc !117
  %and = and i32 %len, 16383
  %program_opcode = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 12
  %10 = ptrtoint ptr %program_opcode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %program_opcode, align 8
  %conv2 = zext i8 %11 to i32
  %shl = shl nuw i32 %conv2, 24
  %or = or i32 %shl, %and
  %addr_width = getelementptr inbounds %struct.nxp_spifi, ptr %1, i32 0, i32 5, i32 8
  %12 = ptrtoint ptr %addr_width to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %addr_width, align 4
  %conv5 = zext i8 %13 to i32
  %add = shl nuw nsw i32 %conv5, 21
  %shl6 = add nuw nsw i32 %add, 2097152
  %or3 = or i32 %or, %shl6
  %or7 = or i32 %or3, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %15 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base, align 4
  %add.ptr12 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %14) #6, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp41.not = icmp eq i32 %len, 0
  br i1 %cmp41.not, label %do.body.for.end_crit_edge, label %do.body.do.body14_crit_edge

do.body.do.body14_crit_edge:                      ; preds = %do.body
  br label %do.body14

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body14:                                        ; preds = %do.body14.do.body14_crit_edge, %do.body.do.body14_crit_edge
  %i.042 = phi i32 [ %inc, %do.body14.do.body14_crit_edge ], [ 0, %do.body.do.body14_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  tail call void @arm_heavy_mb() #6
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.042
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %19 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base, align 4
  %add.ptr18 = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18, i8 %18) #6, !srcloc !130
  %inc = add nuw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %do.body14.for.end_crit_edge, label %do.body14.do.body14_crit_edge

do.body14.do.body14_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14

do.body14.for.end_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %do.body14.for.end_crit_edge, %do.body.for.end_crit_edge
  %call19 = tail call fastcc i32 @nxp_spifi_wait_for_cmd(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  %len.call19 = select i1 %tobool20.not, i32 %len, i32 %call19
  br label %cleanup

cleanup:                                          ; preds = %for.end, %nxp_spifi_set_memory_mode_off.exit
  %retval.0 = phi i32 [ %call.i, %nxp_spifi_set_memory_mode_off.exit ], [ %len.call19, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_spifi_erase(ptr nocapture noundef readonly %nor, i64 noundef %offs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %memory_mode.i = getelementptr inbounds %struct.nxp_spifi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %memory_mode.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %memory_mode.i, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i:                                         ; preds = %entry
  %call.i = tail call fastcc i32 @nxp_spifi_reset(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %nxp_spifi_set_memory_mode_off.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %memory_mode.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %memory_mode.i, align 8
  br label %do.body

nxp_spifi_set_memory_mode_off.exit:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.45) #9
  br label %cleanup

do.body:                                          ; preds = %if.else.i, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  tail call void @arm_heavy_mb() #6
  %conv = trunc i64 %offs to i32
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %io_base = getelementptr inbounds %struct.nxp_spifi, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #6, !srcloc !117
  %erase_opcode = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 9
  %10 = ptrtoint ptr %erase_opcode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %erase_opcode, align 1
  %conv1 = zext i8 %11 to i32
  %shl = shl nuw i32 %conv1, 24
  %addr_width = getelementptr inbounds %struct.nxp_spifi, ptr %1, i32 0, i32 5, i32 8
  %12 = ptrtoint ptr %addr_width to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %addr_width, align 4
  %conv3 = zext i8 %13 to i32
  %add = shl nuw nsw i32 %conv3, 21
  %shl4 = add nuw nsw i32 %add, 2097152
  %or5 = or i32 %shl4, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %or5)
  %15 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base, align 4
  %add.ptr10 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %14) #6, !srcloc !117
  %call11 = tail call fastcc i32 @nxp_spifi_wait_for_cmd(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %do.body, %nxp_spifi_set_memory_mode_off.exit
  %retval.0 = phi i32 [ %call11, %do.body ], [ %call.i, %nxp_spifi_set_memory_mode_off.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nxp_spifi_wait_for_cmd(ptr nocapture noundef readonly %spifi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 30000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 70) #6
  %io_base = getelementptr inbounds %struct.nxp_spifi, ptr %spifi, i32 0, i32 3
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr49 = getelementptr i8, ptr %1, i32 28
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr49) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  %3 = and i8 %2, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not50 = icmp eq i8 %3, 0
  br i1 %tobool.not50, label %entry.if.end38_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true:                                    ; preds = %if.then27.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then27

if.then27:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 28
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  %7 = and i8 %6, 2
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then27.if.end38_crit_edge, label %if.then27.land.lhs.true_crit_edge

if.then27.land.lhs.true_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then27.if.end38_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

for.end:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base, align 4
  %add.ptr21 = getelementptr i8, ptr %9, i32 28
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr21) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  %.pre = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pre)
  %tobool32.not = icmp eq i8 %.pre, 0
  br i1 %tobool32.not, label %for.end.if.end38_crit_edge, label %do.end37

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.end37:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %spifi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spifi, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.47) #9
  br label %if.end38

if.end38:                                         ; preds = %do.end37, %for.end.if.end38_crit_edge, %if.then27.if.end38_crit_edge, %entry.if.end38_crit_edge
  %cond = phi i32 [ -110, %do.end37 ], [ 0, %for.end.if.end38_crit_edge ], [ 0, %entry.if.end38_crit_edge ], [ 0, %if.then27.if.end38_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !54, !56, !58, !59, !60, !61, !63, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__initcall__kmod_nxp_spifi__236_479_nxp_spifi_driver_init6, !1, !"__initcall__kmod_nxp_spifi__236_479_nxp_spifi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 479, i32 1}
!2 = !{ptr @__exitcall_nxp_spifi_driver_exit, !1, !"__exitcall_nxp_spifi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description237, !4, !"__UNIQUE_ID_description237", i1 false, i1 false}
!4 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 481, i32 1}
!5 = !{ptr @__UNIQUE_ID_author238, !6, !"__UNIQUE_ID_author238", i1 false, i1 false}
!6 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 482, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 483, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 475, i32 11}
!12 = !{ptr @nxp_spifi_driver, !13, !"nxp_spifi_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 471, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 390, i32 63}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 394, i32 66}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 400, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nxp_spifi_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @nxp_spifi_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 404, i32 44}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 406, i32 3}
!30 = !{ptr @nxp_spifi_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @nxp_spifi_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 412, i32 3}
!34 = !{ptr @nxp_spifi_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @nxp_spifi_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 418, i32 3}
!38 = !{ptr @nxp_spifi_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @nxp_spifi_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 433, i32 3}
!42 = !{ptr @nxp_spifi_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @nxp_spifi_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 441, i32 3}
!46 = !{ptr @nxp_spifi_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @nxp_spifi_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 86, i32 3}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @nxp_spifi_reset._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @nxp_spifi_reset._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 292, i32 32}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 303, i32 4}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @nxp_spifi_setup_flash._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @nxp_spifi_setup_flash._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 308, i32 27}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 311, i32 27}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 337, i32 3}
!67 = !{ptr @nxp_spifi_setup_flash._entry.32, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @nxp_spifi_setup_flash._entry_ptr.34, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 361, i32 3}
!71 = !{ptr @nxp_spifi_setup_flash._entry.35, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @nxp_spifi_setup_flash._entry_ptr.37, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 367, i32 3}
!75 = !{ptr @nxp_spifi_setup_flash._entry.38, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @nxp_spifi_setup_flash._entry_ptr.40, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 373, i32 3}
!79 = !{ptr @nxp_spifi_setup_flash._entry.41, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @nxp_spifi_setup_flash._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!83 = !{ptr @nxp_spifi_controller_ops, !84, !"nxp_spifi_controller_ops", i1 false, i1 false}
!84 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 272, i32 44}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 100, i32 3}
!87 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @nxp_spifi_set_memory_mode_off._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @nxp_spifi_set_memory_mode_off._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 72, i32 3}
!92 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @nxp_spifi_wait_for_cmd._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @nxp_spifi_wait_for_cmd._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 119, i32 3}
!97 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @nxp_spifi_set_memory_mode_on._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @nxp_spifi_set_memory_mode_on._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 250, i32 3}
!102 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @nxp_spifi_setup_memory_cmd._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @nxp_spifi_setup_memory_cmd._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @nxp_spifi_match, !106, !"nxp_spifi_match", i1 false, i1 false}
!106 = !{!"../drivers/mtd/spi-nor/controllers/nxp-spifi.c", i32 465, i32 34}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i64 2154606878}
!117 = !{i64 2038544}
!118 = !{i64 2154607275}
!119 = !{!"auto-init"}
!120 = !{i64 2154594798}
!121 = !{i8 0, i8 2}
!122 = !{i64 2154583997}
!123 = !{i64 2038742}
!124 = !{i64 2154584425}
!125 = !{i64 2154574470}
!126 = !{i64 2154576260}
!127 = !{i64 2154576502}
!128 = !{i64 2154584866}
!129 = !{i64 2154585274}
!130 = !{i64 2038347}
!131 = !{i64 2154580011}
!132 = !{i64 2154581738}
!133 = !{i64 2154581980}
!134 = !{i64 2154585621}
!135 = !{i64 2154586249}
!136 = !{i64 2154586657}
!137 = !{i64 2154586944}
!138 = !{i64 2154587470}
!139 = !{i64 2154572322}
!140 = !{i64 2154572564}
