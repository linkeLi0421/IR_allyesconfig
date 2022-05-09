; ModuleID = '/llk/IR_all_yes/drivers/mtd/spi-nor/controllers/aspeed-smc.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/controllers/aspeed-smc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_nor_controller_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.aspeed_smc_info = type { i32, i8, i8, i8, i8, ptr }
%struct.spi_nor_hwcaps = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.aspeed_smc_controller = type { ptr, %struct.mutex, ptr, ptr, ptr, i32, [0 x ptr] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.aspeed_smc_chip = type { i32, ptr, ptr, ptr, i32, [3 x i32], i32, %struct.spi_nor }
%struct.spi_nor = type { %struct.mtd_info, %struct.mutex, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i32, ptr, ptr, ptr, %struct.anon.80, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.anon.80 = type { ptr, ptr }

@__initcall__kmod_aspeed_smc__242_906_aspeed_smc_driver_init6 = internal global ptr @aspeed_smc_driver_init, section ".initcall6.init", align 4
@aspeed_smc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aspeed_smc_probe, ptr @aspeed_smc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_smc_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aspeed_smc_driver_exit = internal global ptr @aspeed_smc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description243 = internal constant [62 x i8] c"aspeed_smc.description=ASPEED Static Memory Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [50 x i8] c"aspeed_smc.author=Cedric Le Goater <clg@kaod.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [59 x i8] c"aspeed_smc.file=drivers/mtd/spi-nor/controllers/aspeed-smc\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [26 x i8] c"aspeed_smc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aspeed-smc\00", [21 x i8] zeroinitializer }, align 32
@aspeed_smc_matches = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-fmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fmc_2400_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spi_2400_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-fmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fmc_2500_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spi_2500_info }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@aspeed_smc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&controller->mutex\00", [45 x i8] zeroinitializer }, align 32
@aspeed_smc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 892, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Aspeed SMC probe failed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aspeed_smc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/mtd/spi-nor/controllers/aspeed-smc.c\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_smc_probe._entry_ptr = internal global ptr @aspeed_smc_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jedec,spi-nor\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@aspeed_smc_setup_flash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 784, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't not read chip select.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aspeed_smc_setup_flash\00", [41 x i8] zeroinitializer }, align 32
@aspeed_smc_setup_flash._entry_ptr = internal global ptr @aspeed_smc_setup_flash._entry, section ".printk_index", align 4
@aspeed_smc_setup_flash._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.4, i32 790, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Chip select %d out of range.\0A\00", [34 x i8] zeroinitializer }, align 32
@aspeed_smc_setup_flash._entry_ptr.13 = internal global ptr @aspeed_smc_setup_flash._entry.11, section ".printk_index", align 4
@aspeed_smc_setup_flash._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.4, i32 797, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Chip select %d already in use by %s\0A\00", [59 x i8] zeroinitializer }, align 32
@aspeed_smc_setup_flash._entry_ptr.16 = internal global ptr @aspeed_smc_setup_flash._entry.14, section ".printk_index", align 4
@aspeed_smc_controller_ops = internal constant { %struct.spi_nor_controller_ops, [36 x i8] } { %struct.spi_nor_controller_ops { ptr @aspeed_smc_prep, ptr @aspeed_smc_unprep, ptr @aspeed_smc_read_reg, ptr @aspeed_smc_write_reg, ptr @aspeed_smc_read_user, ptr @aspeed_smc_write_user, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@aspeed_smc_chip_check_config.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aspeed_smc\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"aspeed_smc_chip_check_config\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"config write is not set ! @%p: 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@aspeed_smc_send_cmd_addr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unexpected address width %u, defaulting to 3\0A\00", [50 x i8] zeroinitializer }, align 32
@aspeed_smc_chip_setup_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 668, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CE%d window closed\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"aspeed_smc_chip_setup_init\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@aspeed_smc_chip_setup_init._entry_ptr = internal global ptr @aspeed_smc_chip_setup_init._entry, section ".printk_index", align 4
@aspeed_smc_chip_setup_init.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.23, ptr @.str.4, ptr @.str.25, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"control register: %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@aspeed_smc_chip_setup_init.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.23, ptr @.str.4, ptr @.str.26, i8 0, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"control register changed to: %08x\0A\00", [61 x i8] zeroinitializer }, align 32
@aspeed_smc_chip_setup_init.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.23, ptr @.str.4, ptr @.str.27, i8 0, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"default control register: %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@aspeed_smc_chip_setup_finish.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"aspeed_smc_chip_setup_finish\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"write control register: %08x\0A\00", [34 x i8] zeroinitializer }, align 32
@aspeed_smc_chip_setup_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.4, i32 738, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported SPI read mode\0A\00", [37 x i8] zeroinitializer }, align 32
@aspeed_smc_chip_setup_finish._entry_ptr = internal global ptr @aspeed_smc_chip_setup_finish._entry, section ".printk_index", align 4
@aspeed_smc_chip_setup_finish.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.28, ptr @.str.4, ptr @.str.31, i8 0, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"base control register: %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@spi_2400_info = internal constant { %struct.aspeed_smc_info, [20 x i8] } { %struct.aspeed_smc_info { i32 67108864, i8 1, i8 0, i8 0, i8 4, ptr @aspeed_smc_chip_set_4b_spi_2400 }, [20 x i8] zeroinitializer }, align 32
@spi_2500_info = internal constant { %struct.aspeed_smc_info, [20 x i8] } { %struct.aspeed_smc_info { i32 134217728, i8 2, i8 0, i8 16, i8 16, ptr @aspeed_smc_chip_set_4b }, [20 x i8] zeroinitializer }, align 32
@aspeed_smc_chip_set_segment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 556, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"CE%d window resized to %dMB (AST2500 HW quirk)\00", [49 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"aspeed_smc_chip_set_segment\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@aspeed_smc_chip_set_segment._entry_ptr = internal global ptr @aspeed_smc_chip_set_segment._entry, section ".printk_index", align 4
@aspeed_smc_chip_set_segment._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.4, i32 591, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CE%d window too small for chip %dMB\00", [60 x i8] zeroinitializer }, align 32
@aspeed_smc_chip_set_segment._entry_ptr.37 = internal global ptr @aspeed_smc_chip_set_segment._entry.35, section ".printk_index", align 4
@chip_set_segment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 490, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CE%d window resized to %dMB\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"chip_set_segment\00", [47 x i8] zeroinitializer }, align 32
@chip_set_segment._entry_ptr = internal global ptr @chip_set_segment._entry, section ".printk_index", align 4
@chip_set_segment._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.4, i32 503, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CE%d window invalid\00", [44 x i8] zeroinitializer }, align 32
@chip_set_segment._entry_ptr.42 = internal global ptr @chip_set_segment._entry.40, section ".printk_index", align 4
@chip_set_segment._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.4, i32 511, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CE%d window [ 0x%.8x - 0x%.8x ] %dMB\00", [59 x i8] zeroinitializer }, align 32
@chip_set_segment._entry_ptr.45 = internal global ptr @chip_set_segment._entry.43, section ".printk_index", align 4
@fmc_2400_info = internal constant { %struct.aspeed_smc_info, [20 x i8] } { %struct.aspeed_smc_info { i32 67108864, i8 5, i8 1, i8 16, i8 16, ptr @aspeed_smc_chip_set_4b }, [20 x i8] zeroinitializer }, align 32
@fmc_2500_info = internal constant { %struct.aspeed_smc_info, [20 x i8] } { %struct.aspeed_smc_info { i32 268435456, i8 3, i8 1, i8 16, i8 16, ptr @aspeed_smc_chip_set_4b }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"aspeed_smc_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 897, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 901, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"aspeed_smc_matches\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 421, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 875, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 892, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 779, i32 39 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 782, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 784, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 789, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 796, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant [26 x i8] c"aspeed_smc_controller_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 750, i32 44 }
@___asan_gen_.110 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 464, i32 31 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 271, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 355, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 668, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 679, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 683, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 701, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 725, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 738, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 745, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [14 x i8] c"spi_2400_info\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 56, i32 37 }
@___asan_gen_.163 = private unnamed_addr constant [14 x i8] c"spi_2500_info\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 74, i32 37 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 554, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 589, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 489, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 503, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 510, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [14 x i8] c"fmc_2400_info\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 47, i32 37 }
@___asan_gen_.208 = private unnamed_addr constant [14 x i8] c"fmc_2500_info\00", align 1
@___asan_gen_.209 = private constant [48 x i8] c"../drivers/mtd/spi-nor/controllers/aspeed-smc.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 65, i32 37 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_aspeed_smc_driver_exit, ptr @__initcall__kmod_aspeed_smc__242_906_aspeed_smc_driver_init6, ptr @aspeed_smc_chip_set_segment._entry, ptr @aspeed_smc_chip_set_segment._entry.35, ptr @aspeed_smc_chip_set_segment._entry_ptr, ptr @aspeed_smc_chip_set_segment._entry_ptr.37, ptr @aspeed_smc_chip_setup_finish._entry, ptr @aspeed_smc_chip_setup_finish._entry_ptr, ptr @aspeed_smc_chip_setup_init._entry, ptr @aspeed_smc_chip_setup_init._entry_ptr, ptr @aspeed_smc_driver_exit, ptr @aspeed_smc_probe._entry, ptr @aspeed_smc_probe._entry_ptr, ptr @aspeed_smc_setup_flash._entry, ptr @aspeed_smc_setup_flash._entry.11, ptr @aspeed_smc_setup_flash._entry.14, ptr @aspeed_smc_setup_flash._entry_ptr, ptr @aspeed_smc_setup_flash._entry_ptr.13, ptr @aspeed_smc_setup_flash._entry_ptr.16, ptr @chip_set_segment._entry, ptr @chip_set_segment._entry.40, ptr @chip_set_segment._entry.43, ptr @chip_set_segment._entry_ptr, ptr @chip_set_segment._entry_ptr.42, ptr @chip_set_segment._entry_ptr.45, ptr @aspeed_smc_driver, ptr @.str, ptr @aspeed_smc_matches, ptr @aspeed_smc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @aspeed_smc_controller_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @spi_2400_info, ptr @spi_2500_info, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @fmc_2400_info, ptr @fmc_2500_info], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_smc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_smc_matches to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_smc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_smc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_smc_setup_flash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_smc_setup_flash._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_smc_setup_flash._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_smc_controller_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_smc_chip_setup_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_smc_chip_setup_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_2400_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_2500_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_smc_chip_set_segment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_smc_chip_set_segment._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_set_segment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_set_segment._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_set_segment._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_2400_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_2500_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_smc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_smc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_smc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_smc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_smc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %hwcaps.i = alloca %struct.spi_nor_hwcaps, align 4
  %cs.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_device(ptr noundef nonnull @aspeed_smc_matches, ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %nce = getelementptr inbounds %struct.aspeed_smc_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nce to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nce, align 4
  %conv = zext i8 %5 to i32
  %6 = shl nuw nsw i32 %conv, 2
  %spec.select.i87 = add nuw nsw i32 %6, 112
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %spec.select.i87, i32 noundef 3520) #7
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %info12 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %info12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %info12, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call.i, align 4
  %mutex = getelementptr inbounds %struct.aspeed_smc_controller, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @aspeed_smc_probe.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call14 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call15 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call14) #7
  %regs = getelementptr inbounds %struct.aspeed_smc_controller, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call15, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %call22 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #7
  %call23 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call22) #7
  %ahb_base = getelementptr inbounds %struct.aspeed_smc_controller, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %ahb_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call23, ptr %ahb_base, align 4
  %cmp.i73 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %end.i = getelementptr inbounds %struct.resource, ptr %call22, i32 0, i32 1
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i, align 4
  %16 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call22, align 4
  %sub.i = add i32 %15, 1
  %add.i = sub i32 %sub.i, %17
  %ahb_window_size = getelementptr inbounds %struct.aspeed_smc_controller, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %ahb_window_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i, ptr %ahb_window_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwcaps.i) #7
  %19 = ptrtoint ptr %hwcaps.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 65539, ptr %hwcaps.i, align 4
  %20 = ptrtoint ptr %info12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info12, align 4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs.i) #7
  %24 = ptrtoint ptr %cs.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %cs.i, align 4, !annotation !122
  %call.i74 = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #7
  %cmp.not134.i = icmp eq ptr %call.i74, null
  br i1 %cmp.not134.i, label %if.end29.if.then60.i_crit_edge, label %for.body.lr.ph.i

if.end29.if.then60.i_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60.i

for.body.lr.ph.i:                                 ; preds = %if.end29
  %nce.i = getelementptr inbounds %struct.aspeed_smc_info, ptr %21, i32 0, i32 1
  %ctl0.i = getelementptr inbounds %struct.aspeed_smc_info, ptr %21, i32 0, i32 4
  br label %for.body.i.outer

for.body.i.outer:                                 ; preds = %for.inc.i.thread.for.body.i.outer_crit_edge, %for.body.lr.ph.i
  %tobool59.not.i = phi i1 [ true, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ false, %for.body.lr.ph.i ]
  %ret.0137.i.ph = phi i32 [ 0, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ -19, %for.body.lr.ph.i ]
  %child.0135.i.ph = phi ptr [ %call58.i76, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ %call.i74, %for.body.lr.ph.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.outer
  %child.0135.i = phi ptr [ %call58.i, %for.inc.i.for.body.i_crit_edge ], [ %child.0135.i.ph, %for.body.i.outer ]
  %call3.i = call i32 @of_device_is_compatible(ptr noundef nonnull %child.0135.i, ptr noundef nonnull @.str.7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0135.i, ptr noundef nonnull @.str.8, ptr noundef nonnull %cs.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool5.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool5.not.i, label %if.end7.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.9) #10
  br label %if.then60.i

if.end7.i:                                        ; preds = %if.end.i
  %25 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cs.i, align 4
  %27 = ptrtoint ptr %nce.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nce.i, align 4
  %conv.i = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv.i)
  %cmp8.not.i = icmp ult i32 %26, %conv.i
  br i1 %cmp8.not.i, label %if.end14.i, label %do.end13.i

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.12, i32 noundef %26) #10
  br label %if.then60.i

if.end14.i:                                       ; preds = %if.end7.i
  %arrayidx.i = getelementptr %struct.aspeed_smc_controller, ptr %call.i, i32 0, i32 6, i32 %26
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %tobool15.not.i = icmp eq ptr %30, null
  br i1 %tobool15.not.i, label %if.end25.i, label %do.end19.i

do.end19.i:                                       ; preds = %if.end14.i
  %dev23.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %30, i32 0, i32 7, i32 2
  %31 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev23.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end19.i.dev_name.exit.i_crit_edge

do.end19.i.dev_name.exit.i_crit_edge:             ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end19.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %36, %if.end.i.i ], [ %34, %do.end19.i.dev_name.exit.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.15, i32 noundef %26, ptr noundef %retval.0.i.i) #10
  br label %if.then60.i

if.end25.i:                                       ; preds = %if.end14.i
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %38, i32 noundef 1624, i32 noundef 3520) #7
  %tobool28.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool28.not.i, label %if.end25.i.if.then60.i_crit_edge, label %if.end30.i

if.end25.i.if.then60.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60.i

if.end30.i:                                       ; preds = %if.end25.i
  %controller31.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %call.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %controller31.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %controller31.i, align 4
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %42 = ptrtoint ptr %ctl0.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ctl0.i, align 1
  %conv32.i = zext i8 %43 to i32
  %add.ptr.i = getelementptr i8, ptr %41, i32 %conv32.i
  %44 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cs.i, align 4
  %mul.i = shl i32 %45, 2
  %add.ptr33.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %ctl.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %call.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %ctl.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr33.i, ptr %ctl.i, align 8
  %47 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %45, ptr %call.i.i, align 8
  %nor35.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %call.i.i, i32 0, i32 7
  %dev37.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %call.i.i, i32 0, i32 7, i32 2
  %48 = ptrtoint ptr %dev37.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %23, ptr %dev37.i, align 4
  %priv.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %call.i.i, i32 0, i32 7, i32 23
  %49 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i.i, ptr %priv.i, align 8
  %of_node.i.i.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %call.i.i, i32 0, i32 7, i32 0, i32 56, i32 27
  %50 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %child.0135.i, ptr %of_node.i.i.i, align 8
  %name.i.i.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %call.i.i, i32 0, i32 7, i32 0, i32 13
  %51 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end30.i.spi_nor_set_flash_node.exit.i_crit_edge

if.end30.i.spi_nor_set_flash_node.exit.i_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_nor_set_flash_node.exit.i

if.then.i.i.i:                                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i107.i = call i32 @of_property_read_string(ptr noundef nonnull %child.0135.i, ptr noundef nonnull @.str.17, ptr noundef %name.i.i.i) #7
  br label %spi_nor_set_flash_node.exit.i

spi_nor_set_flash_node.exit.i:                    ; preds = %if.then.i.i.i, %if.end30.i.spi_nor_set_flash_node.exit.i_crit_edge
  %controller_ops.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %call.i.i, i32 0, i32 7, i32 20
  %53 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @aspeed_smc_controller_ops, ptr %controller_ops.i, align 8
  %call38.i = call fastcc i32 @aspeed_smc_chip_setup_init(ptr noundef nonnull %call.i.i, ptr noundef %call22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %spi_nor_set_flash_node.exit.i.if.then60.i_crit_edge

spi_nor_set_flash_node.exit.i.if.then60.i_crit_edge: ; preds = %spi_nor_set_flash_node.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60.i

if.end41.i:                                       ; preds = %spi_nor_set_flash_node.exit.i
  %call42.i = call i32 @spi_nor_scan(ptr noundef %nor35.i, ptr noundef null, ptr noundef nonnull %hwcaps.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.end41.i.if.then60.i_crit_edge

if.end41.i.if.then60.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60.i

if.end45.i:                                       ; preds = %if.end41.i
  %call46.i = call fastcc i32 @aspeed_smc_chip_setup_finish(ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.end45.i.if.then60.i_crit_edge

if.end45.i.if.then60.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60.i

if.end49.i:                                       ; preds = %if.end45.i
  %call50.i = call i32 @mtd_device_parse_register(ptr noundef %nor35.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %for.inc.i.thread, label %if.end49.i.if.then60.i_crit_edge

if.end49.i.if.then60.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60.i

for.inc.i:                                        ; preds = %for.body.i
  %call58.i = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.0135.i) #7
  %cmp.not.i = icmp eq ptr %call58.i, null
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %if.end49.i
  %54 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cs.i, align 4
  %arrayidx55.i = getelementptr %struct.aspeed_smc_controller, ptr %call.i, i32 0, i32 6, i32 %55
  %56 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i.i, ptr %arrayidx55.i, align 4
  %call58.i76 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.0135.i) #7
  %cmp.not.i77 = icmp eq ptr %call58.i76, null
  br i1 %cmp.not.i77, label %for.inc.i.thread.aspeed_smc_setup_flash.exit.thread_crit_edge, label %for.inc.i.thread.for.body.i.outer_crit_edge

for.inc.i.thread.for.body.i.outer_crit_edge:      ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.outer

for.inc.i.thread.aspeed_smc_setup_flash.exit.thread_crit_edge: ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_smc_setup_flash.exit.thread

for.end.i:                                        ; preds = %for.inc.i
  br i1 %tobool59.not.i, label %for.end.i.aspeed_smc_setup_flash.exit.thread_crit_edge, label %for.end.i.if.then60.i_crit_edge

for.end.i.if.then60.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60.i

for.end.i.aspeed_smc_setup_flash.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_smc_setup_flash.exit.thread

if.then60.i:                                      ; preds = %for.end.i.if.then60.i_crit_edge, %if.end49.i.if.then60.i_crit_edge, %if.end45.i.if.then60.i_crit_edge, %if.end41.i.if.then60.i_crit_edge, %spi_nor_set_flash_node.exit.i.if.then60.i_crit_edge, %if.end25.i.if.then60.i_crit_edge, %dev_name.exit.i, %do.end13.i, %do.end.i, %if.end29.if.then60.i_crit_edge
  %child.0126.i = phi ptr [ null, %for.end.i.if.then60.i_crit_edge ], [ %child.0135.i, %dev_name.exit.i ], [ %child.0135.i, %do.end13.i ], [ %child.0135.i, %do.end.i ], [ null, %if.end29.if.then60.i_crit_edge ], [ %child.0135.i, %if.end25.i.if.then60.i_crit_edge ], [ %child.0135.i, %spi_nor_set_flash_node.exit.i.if.then60.i_crit_edge ], [ %child.0135.i, %if.end41.i.if.then60.i_crit_edge ], [ %child.0135.i, %if.end45.i.if.then60.i_crit_edge ], [ %child.0135.i, %if.end49.i.if.then60.i_crit_edge ]
  %ret.2116.i = phi i32 [ %ret.0137.i.ph, %for.end.i.if.then60.i_crit_edge ], [ -16, %dev_name.exit.i ], [ -34, %do.end13.i ], [ %call.i.i.i, %do.end.i ], [ -19, %if.end29.if.then60.i_crit_edge ], [ %call50.i, %if.end49.i.if.then60.i_crit_edge ], [ %call46.i, %if.end45.i.if.then60.i_crit_edge ], [ %call42.i, %if.end41.i.if.then60.i_crit_edge ], [ %call38.i, %spi_nor_set_flash_node.exit.i.if.then60.i_crit_edge ], [ -12, %if.end25.i.if.then60.i_crit_edge ]
  call void @of_node_put(ptr noundef %child.0126.i) #7
  %57 = ptrtoint ptr %info12 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %info12, align 4
  %nce1.i.i = getelementptr inbounds %struct.aspeed_smc_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %nce1.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %nce1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp3.not.i.i = icmp eq i8 %60, 0
  br i1 %cmp3.not.i.i, label %aspeed_smc_setup_flash.exit.thread83, label %if.then60.i.for.body.i.i_crit_edge

if.then60.i.for.body.i.i_crit_edge:               ; preds = %if.then60.i
  br label %for.body.i.i

aspeed_smc_setup_flash.exit.thread83:             ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwcaps.i) #7
  br label %do.end36

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then60.i.for.body.i.i_crit_edge
  %n.04.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then60.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.aspeed_smc_controller, ptr %call.i, i32 0, i32 6, i32 %n.04.i.i
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i108.i = icmp eq ptr %62, null
  br i1 %tobool.not.i108.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %nor.i.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %62, i32 0, i32 7
  %call.i109.i = call i32 @mtd_device_unregister(ptr noundef %nor.i.i) #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %n.04.i.i, 1
  %63 = ptrtoint ptr %info12 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %info12, align 4
  %nce.i.i = getelementptr inbounds %struct.aspeed_smc_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %nce.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %nce.i.i, align 4
  %conv.i.i = zext i8 %66 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %aspeed_smc_setup_flash.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

aspeed_smc_setup_flash.exit.thread:               ; preds = %for.end.i.aspeed_smc_setup_flash.exit.thread_crit_edge, %for.inc.i.thread.aspeed_smc_setup_flash.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwcaps.i) #7
  br label %cleanup

aspeed_smc_setup_flash.exit:                      ; preds = %for.inc.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwcaps.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2116.i)
  %tobool32.not = icmp eq i32 %ret.2116.i, 0
  br i1 %tobool32.not, label %aspeed_smc_setup_flash.exit.cleanup_crit_edge, label %aspeed_smc_setup_flash.exit.do.end36_crit_edge

aspeed_smc_setup_flash.exit.do.end36_crit_edge:   ; preds = %aspeed_smc_setup_flash.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36

aspeed_smc_setup_flash.exit.cleanup_crit_edge:    ; preds = %aspeed_smc_setup_flash.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end36:                                         ; preds = %aspeed_smc_setup_flash.exit.do.end36_crit_edge, %aspeed_smc_setup_flash.exit.thread83
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %ret.2116.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %aspeed_smc_setup_flash.exit.cleanup_crit_edge, %aspeed_smc_setup_flash.exit.thread, %if.then26, %if.then18, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then18 ], [ %13, %if.then26 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %ret.2116.i, %do.end36 ], [ 0, %aspeed_smc_setup_flash.exit.cleanup_crit_edge ], [ 0, %aspeed_smc_setup_flash.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_smc_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %info.i = getelementptr inbounds %struct.aspeed_smc_controller, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info.i, align 4
  %nce1.i = getelementptr inbounds %struct.aspeed_smc_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nce1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nce1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp3.not.i = icmp eq i8 %5, 0
  br i1 %cmp3.not.i, label %entry.aspeed_smc_unregister.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.aspeed_smc_unregister.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_smc_unregister.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %n.04.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.aspeed_smc_controller, ptr %1, i32 0, i32 6, i32 %n.04.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %nor.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %7, i32 0, i32 7
  %call.i = tail call i32 @mtd_device_unregister(ptr noundef %nor.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %n.04.i, 1
  %8 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info.i, align 4
  %nce.i = getelementptr inbounds %struct.aspeed_smc_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %nce.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nce.i, align 4
  %conv.i = zext i8 %11 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.aspeed_smc_unregister.exit_crit_edge

for.inc.i.aspeed_smc_unregister.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_smc_unregister.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

aspeed_smc_unregister.exit:                       ; preds = %for.inc.i.aspeed_smc_unregister.exit_crit_edge, %entry.aspeed_smc_unregister.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_smc_chip_setup_init(ptr nocapture noundef %chip, ptr nocapture noundef readonly %res) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller1 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %controller1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller1, align 4
  %info2 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 4
  %regs.i = getelementptr inbounds %struct.aspeed_smc_controller, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !123
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %8 = ptrtoint ptr %controller1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %controller1, align 4
  %info.i.i = getelementptr inbounds %struct.aspeed_smc_controller, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info.i.i, align 4
  %we0.i.i = getelementptr inbounds %struct.aspeed_smc_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %we0.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %we0.i.i, align 2
  %conv.i.i = zext i8 %13 to i32
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chip, align 8
  %add.i.i = add i32 %15, %conv.i.i
  %shl.i.i = shl nuw i32 1, %add.i.i
  %or.i = or i32 %shl.i.i, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #7, !srcloc !126
  %hastype = getelementptr inbounds %struct.aspeed_smc_info, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %hastype to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hastype, align 1, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %controller1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %controller1, align 4
  %type2.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 6
  %23 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %type2.i, align 8
  %regs.i100 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %22, i32 0, i32 3
  %24 = ptrtoint ptr %regs.i100 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i100, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !123
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chip, align 8
  %mul.i = shl i32 %29, 1
  %shl.i = shl i32 3, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %27, %neg.i
  %30 = ptrtoint ptr %type2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type2.i, align 8
  %shl7.i = shl i32 %31, %mul.i
  %or.i101 = or i32 %and.i, %shl7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i101) #7
  %33 = ptrtoint ptr %regs.i100 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i100, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #7, !srcloc !126
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %35 = ptrtoint ptr %controller1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %controller1, align 4
  %info.i = getelementptr inbounds %struct.aspeed_smc_controller, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %info.i, align 4
  %nce.i = getelementptr inbounds %struct.aspeed_smc_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %nce.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %nce.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp.i = icmp ugt i8 %40, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.aspeed_smc_chip_base.exit_crit_edge

if.end.aspeed_smc_chip_base.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_smc_chip_base.exit

if.then.i:                                        ; preds = %if.end
  %regs.i103 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %36, i32 0, i32 3
  %41 = ptrtoint ptr %regs.i103 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i103, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 48
  %43 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %chip, align 8
  %mul.i104 = shl i32 %44, 2
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i104
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #7, !srcloc !123
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  %47 = shl i32 %46, 7
  %shl.i105 = and i32 %47, 2139095040
  %48 = lshr i32 %46, 1
  %shl7.i106 = and i32 %48, 2139095040
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i105, i32 %shl7.i106)
  %cmp8.not.i = icmp ult i32 %shl.i105, %shl7.i106
  br i1 %cmp8.not.i, label %if.end.i, label %aspeed_smc_chip_base.exit.thread

aspeed_smc_chip_base.exit.thread:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %ahb_base109 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 3
  %49 = ptrtoint ptr %ahb_base109 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %ahb_base109, align 4
  br label %do.end

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %res, align 4
  %sub.i = sub i32 %shl.i105, %51
  br label %aspeed_smc_chip_base.exit

aspeed_smc_chip_base.exit:                        ; preds = %if.end.i, %if.end.aspeed_smc_chip_base.exit_crit_edge
  %offset.0.i = phi i32 [ %sub.i, %if.end.i ], [ 0, %if.end.aspeed_smc_chip_base.exit_crit_edge ]
  %ahb_base.i = getelementptr inbounds %struct.aspeed_smc_controller, ptr %36, i32 0, i32 4
  %52 = ptrtoint ptr %ahb_base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ahb_base.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %53, i32 %offset.0.i
  %ahb_base = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 3
  %54 = ptrtoint ptr %ahb_base to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr15.i, ptr %ahb_base, align 4
  %tobool4.not = icmp eq ptr %add.ptr15.i, null
  br i1 %tobool4.not, label %aspeed_smc_chip_base.exit.do.end_crit_edge, label %if.end6

aspeed_smc_chip_base.exit.do.end_crit_edge:       ; preds = %aspeed_smc_chip_base.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %aspeed_smc_chip_base.exit.do.end_crit_edge, %aspeed_smc_chip_base.exit.thread
  %dev = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 7, i32 2
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %57 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chip, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.22, i32 noundef %58) #10
  br label %cleanup

if.end6:                                          ; preds = %aspeed_smc_chip_base.exit
  %ctl = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 2
  %59 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctl, align 8
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #7, !srcloc !123
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_smc_chip_setup_init.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_smc_chip_setup_init, %if.then15)) #7
          to label %do.end19 [label %if.then15], !srcloc !132

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_smc_chip_setup_init.__UNIQUE_ID_ddebug237, ptr noundef %64, ptr noundef nonnull @.str.25, i32 noundef %62) #7
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %if.end6
  %and = and i32 %62, -1895813328
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %62)
  %cmp.not = icmp eq i32 %and, %62
  br i1 %cmp.not, label %do.end19.if.end38_crit_edge, label %do.body21

do.end19.if.end38_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

do.body21:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_smc_chip_setup_init.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_smc_chip_setup_init, %if.then33)) #7
          to label %if.end38 [label %if.then33], !srcloc !132

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_smc_chip_setup_init.__UNIQUE_ID_ddebug238, ptr noundef %66, ptr noundef nonnull @.str.26, i32 noundef %and) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %do.body21, %do.end19.if.end38_crit_edge
  %ctl_val = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 5
  %67 = ptrtoint ptr %ctl_val to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and, ptr %ctl_val, align 4
  %and39 = and i32 %62, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %cmp40 = icmp eq i32 %and39, 0
  %spec.select = select i1 %cmp40, i32 %62, i32 %and
  %68 = getelementptr %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 5, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %spec.select, ptr %68, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_smc_chip_setup_init.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_smc_chip_setup_init, %if.then61)) #7
          to label %cleanup [label %if.then61], !srcloc !132

if.then61:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %68, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_smc_chip_setup_init.__UNIQUE_ID_ddebug239, ptr noundef %71, ptr noundef nonnull @.str.27, i32 noundef %73) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %if.end38, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then61 ], [ 0, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_smc_chip_setup_finish(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller1 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %controller1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller1, align 4
  %addr_width = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %addr_width to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp eq i8 %3, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %info2 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info2, align 4
  %set_4b = getelementptr inbounds %struct.aspeed_smc_info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %set_4b to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_4b, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %chip) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %controller1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %controller1, align 4
  %size2.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 7, i32 0, i32 2
  %10 = ptrtoint ptr %size2.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size2.i, align 8
  %conv.i = trunc i64 %11 to i32
  %info.i = getelementptr inbounds %struct.aspeed_smc_controller, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %conv.i) #7
  %cmp7.i = icmp eq ptr %13, @spi_2400_info
  br i1 %cmp7.i, label %if.end.out.i_crit_edge, label %if.end10.i

if.end.out.i_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end10.i:                                       ; preds = %if.end
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chip, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp11.i = icmp eq i32 %18, 0
  %cmp14.i = icmp eq ptr %13, @spi_2500_info
  %or.cond.i = and i1 %cmp14.i, %cmp11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %16)
  %cmp17.i = icmp eq i32 %16, 134217728
  %or.cond103.i = select i1 %or.cond.i, i1 %cmp17.i, i1 false
  br i1 %or.cond103.i, label %if.then19.i, label %if.end10.i.if.end22.i_crit_edge

if.end10.i.if.end22.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then19.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 7, i32 2
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef 120) #10
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %if.end10.i.if.end22.i_crit_edge
  %size.1.i = phi i32 [ 125829120, %if.then19.i ], [ %16, %if.end10.i.if.end22.i_crit_edge ]
  %regs.i.i = getelementptr inbounds %struct.aspeed_smc_controller, ptr %9, i32 0, i32 3
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 48
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %24 = shl i32 %23, 15
  %shl.i.i = and i32 %24, 2139095040
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chip, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.end22.i.if.end30.i_crit_edge, label %if.then24.i

if.end22.i.if.end30.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 48
  %sub.i = shl i32 %26, 2
  %mul.i = add i32 %sub.i, -4
  %add.ptr26.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  %30 = shl i32 %29, 23
  %shl.i = and i32 %30, 2139095040
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then24.i, %if.end22.i.if.end30.i_crit_edge
  %start.0.i = phi i32 [ %shl.i, %if.then24.i ], [ %shl.i.i, %if.end22.i.if.end30.i_crit_edge ]
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chip, align 8
  %call32.i = tail call fastcc i32 @chip_set_segment(ptr noundef %chip, i32 noundef %32, i32 noundef %start.0.i, i32 noundef %size.1.i) #7
  %ahb_base.i = getelementptr inbounds %struct.aspeed_smc_controller, ptr %9, i32 0, i32 4
  %33 = ptrtoint ptr %ahb_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ahb_base.i, align 4
  %sub33.i = sub nsw i32 %start.0.i, %shl.i.i
  %add.ptr34.i = getelementptr i8, ptr %34, i32 %sub33.i
  %ahb_base35.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 3
  %35 = ptrtoint ptr %ahb_base35.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr34.i, ptr %ahb_base35.i, align 4
  %36 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chip, align 8
  %38 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info.i, align 4
  %nce.i = getelementptr inbounds %struct.aspeed_smc_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %nce.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %nce.i, align 4
  %conv38.i = zext i8 %41 to i32
  %sub39.i = add nsw i32 %conv38.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %sub39.i)
  %cmp40.i = icmp slt i32 %37, %sub39.i
  br i1 %cmp40.i, label %if.then42.i, label %if.end30.i.out.i_crit_edge

if.end30.i.out.i_crit_edge:                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.then42.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add nsw i32 %37, 1
  %add44.i = add i32 %call32.i, %start.0.i
  %call45.i = tail call fastcc i32 @chip_set_segment(ptr noundef %chip, i32 noundef %add.i, i32 noundef %add44.i, i32 noundef 0) #7
  br label %out.i

out.i:                                            ; preds = %if.then42.i, %if.end30.i.out.i_crit_edge, %if.end.out.i_crit_edge
  %size.2.i = phi i32 [ %16, %if.end.out.i_crit_edge ], [ %call32.i, %if.then42.i ], [ %call32.i, %if.end30.i.out.i_crit_edge ]
  %conv47.i = zext i32 %size.2.i to i64
  %42 = ptrtoint ptr %size2.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %size2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %conv47.i)
  %cmp51.i = icmp ugt i64 %43, %conv47.i
  br i1 %cmp51.i, label %do.end56.i, label %out.i.aspeed_smc_chip_set_segment.exit_crit_edge

out.i.aspeed_smc_chip_set_segment.exit_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_smc_chip_set_segment.exit

do.end56.i:                                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev58.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 7, i32 2
  %44 = ptrtoint ptr %dev58.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev58.i, align 4
  %46 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chip, align 8
  %conv63.i = trunc i64 %43 to i32
  %shr64.i = lshr i32 %conv63.i, 20
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.36, i32 noundef %47, i32 noundef %shr64.i) #10
  br label %aspeed_smc_chip_set_segment.exit

aspeed_smc_chip_set_segment.exit:                 ; preds = %do.end56.i, %out.i.aspeed_smc_chip_set_segment.exit_crit_edge
  %ahb_window_size = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 4
  %48 = ptrtoint ptr %ahb_window_size to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %size.2.i, ptr %ahb_window_size, align 8
  %ctl_val = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 5
  %49 = ptrtoint ptr %ctl_val to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ctl_val, align 4
  %program_opcode = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 7, i32 12
  %51 = ptrtoint ptr %program_opcode to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %program_opcode, align 8
  %conv6 = zext i8 %52 to i32
  %shl = shl nuw nsw i32 %conv6, 16
  %or = or i32 %50, %shl
  %or7 = or i32 %or, 2
  %arrayidx9 = getelementptr %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 5, i32 2
  %53 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or7, ptr %arrayidx9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_smc_chip_setup_finish.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_smc_chip_setup_finish, %if.then14)) #7
          to label %do.end [label %if.then14], !srcloc !132

if.then14:                                        ; preds = %aspeed_smc_chip_set_segment.exit
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %56 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_smc_chip_setup_finish.__UNIQUE_ID_ddebug240, ptr noundef %55, ptr noundef nonnull @.str.29, i32 noundef %57) #7
  br label %do.end

do.end:                                           ; preds = %if.then14, %aspeed_smc_chip_set_segment.exit
  %read_proto = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 7, i32 13
  %58 = ptrtoint ptr %read_proto to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %read_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65793, i32 %59)
  %cmp19 = icmp eq i32 %59, 65793
  br i1 %cmp19, label %if.then21, label %do.end31

if.then21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %read_dummy = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 7, i32 11
  %60 = ptrtoint ptr %read_dummy to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %read_dummy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp24 = icmp ne i8 %61, 0
  %. = zext i1 %cmp24 to i32
  %62 = lshr i8 %61, 3
  %div = zext i8 %62 to i32
  %63 = shl nuw nsw i32 %div, 12
  %shl38 = and i32 %63, 16384
  %and43 = shl nuw nsw i32 %div, 6
  %shl44 = and i32 %and43, 192
  %arrayidx48 = getelementptr %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 5, i32 1
  %64 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx48, align 4
  %or45 = or i32 %65, %.
  %or46 = or i32 %or45, %shl44
  %or49 = or i32 %or46, %shl38
  store i32 %or49, ptr %arrayidx48, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_smc_chip_setup_finish.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_smc_chip_setup_finish, %if.then62)) #7
          to label %cleanup [label %if.then62], !srcloc !132

do.end31:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev33 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 7, i32 2
  %66 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.then62:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %70 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx48, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_smc_chip_setup_finish.__UNIQUE_ID_ddebug241, ptr noundef %69, ptr noundef nonnull @.str.31, i32 noundef %71) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %do.end31, %if.then21
  %retval.0 = phi i32 [ -22, %do.end31 ], [ 0, %if.then62 ], [ 0, %if.then21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_smc_prep(ptr nocapture noundef readonly %nor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %controller = getelementptr inbounds %struct.aspeed_smc_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller, align 4
  %mutex = getelementptr inbounds %struct.aspeed_smc_controller, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_smc_unprep(ptr nocapture noundef readonly %nor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %controller = getelementptr inbounds %struct.aspeed_smc_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller, align 4
  %mutex = getelementptr inbounds %struct.aspeed_smc_controller, ptr %3, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_smc_read_reg(ptr nocapture noundef readonly %nor, i8 noundef zeroext %opcode, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %opcode.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opcode.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %opcode, ptr %opcode.addr, align 1
  %priv = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %ctl_val.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %ctl_val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctl_val.i, align 4
  tail call fastcc void @aspeed_smc_chip_check_config(ptr noundef %2) #7
  %or.i = or i32 %4, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %ctl1.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl1.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !126
  %and.i = and i32 %or.i, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %9 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl1.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !126
  %ahb_base = getelementptr inbounds %struct.aspeed_smc_chip, ptr %2, i32 0, i32 3
  %11 = ptrtoint ptr %ahb_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ahb_base, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = ptrtoint ptr %opcode.addr to i32
  %15 = or i32 %13, %14
  %16 = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %if.then.i, label %entry.aspeed_smc_write_to_ahb.exit_crit_edge

entry.aspeed_smc_write_to_ahb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_smc_write_to_ahb.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__raw_writesl(ptr noundef %12, ptr noundef nonnull %opcode.addr, i32 noundef 0) #7
  br label %aspeed_smc_write_to_ahb.exit

aspeed_smc_write_to_ahb.exit:                     ; preds = %if.then.i, %entry.aspeed_smc_write_to_ahb.exit_crit_edge
  call void @__raw_writesb(ptr noundef %12, ptr noundef nonnull %opcode.addr, i32 noundef 1) #7
  %18 = ptrtoint ptr %ahb_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ahb_base, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = ptrtoint ptr %buf to i32
  %22 = or i32 %20, %21
  %23 = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %if.then.i6, label %aspeed_smc_write_to_ahb.exit.aspeed_smc_read_from_ahb.exit_crit_edge

aspeed_smc_write_to_ahb.exit.aspeed_smc_read_from_ahb.exit_crit_edge: ; preds = %aspeed_smc_write_to_ahb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_smc_read_from_ahb.exit

if.then.i6:                                       ; preds = %aspeed_smc_write_to_ahb.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = lshr i32 %len, 2
  call void @__raw_readsl(ptr noundef %19, ptr noundef %buf, i32 noundef %shr.i) #7
  %and3.i = and i32 %len, -4
  %sub.i = and i32 %len, 3
  br label %aspeed_smc_read_from_ahb.exit

aspeed_smc_read_from_ahb.exit:                    ; preds = %if.then.i6, %aspeed_smc_write_to_ahb.exit.aspeed_smc_read_from_ahb.exit_crit_edge
  %len.addr.0.i = phi i32 [ %sub.i, %if.then.i6 ], [ %len, %aspeed_smc_write_to_ahb.exit.aspeed_smc_read_from_ahb.exit_crit_edge ]
  %offset.0.i = phi i32 [ %and3.i, %if.then.i6 ], [ 0, %aspeed_smc_write_to_ahb.exit.aspeed_smc_read_from_ahb.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %offset.0.i
  call void @__raw_readsb(ptr noundef %19, ptr noundef %add.ptr.i, i32 noundef %len.addr.0.i) #7
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %arrayidx.i = getelementptr %struct.aspeed_smc_chip, ptr %26, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %or1.i = or i32 %28, 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  call void @arm_heavy_mb() #7
  %29 = call i32 @llvm.bswap.i32(i32 %or1.i) #7
  %ctl3.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %26, i32 0, i32 2
  %30 = ptrtoint ptr %ctl3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctl3.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #7, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  call void @arm_heavy_mb() #7
  %32 = call i32 @llvm.bswap.i32(i32 %28) #7
  %33 = ptrtoint ptr %ctl3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctl3.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #7, !srcloc !126
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_smc_write_reg(ptr nocapture noundef readonly %nor, i8 noundef zeroext %opcode, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %opcode.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opcode.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %opcode, ptr %opcode.addr, align 1
  %priv = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %ctl_val.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %ctl_val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctl_val.i, align 4
  tail call fastcc void @aspeed_smc_chip_check_config(ptr noundef %2) #7
  %or.i = or i32 %4, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %ctl1.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl1.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !126
  %and.i = and i32 %or.i, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %9 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl1.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !126
  %ahb_base = getelementptr inbounds %struct.aspeed_smc_chip, ptr %2, i32 0, i32 3
  %11 = ptrtoint ptr %ahb_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ahb_base, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = ptrtoint ptr %opcode.addr to i32
  %15 = or i32 %13, %14
  %16 = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %if.then.i, label %entry.aspeed_smc_write_to_ahb.exit_crit_edge

entry.aspeed_smc_write_to_ahb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_smc_write_to_ahb.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__raw_writesl(ptr noundef %12, ptr noundef nonnull %opcode.addr, i32 noundef 0) #7
  br label %aspeed_smc_write_to_ahb.exit

aspeed_smc_write_to_ahb.exit:                     ; preds = %if.then.i, %entry.aspeed_smc_write_to_ahb.exit_crit_edge
  call void @__raw_writesb(ptr noundef %12, ptr noundef nonnull %opcode.addr, i32 noundef 1) #7
  %18 = ptrtoint ptr %ahb_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ahb_base, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = ptrtoint ptr %buf to i32
  %22 = or i32 %20, %21
  %23 = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %if.then.i6, label %aspeed_smc_write_to_ahb.exit.aspeed_smc_write_to_ahb.exit7_crit_edge

aspeed_smc_write_to_ahb.exit.aspeed_smc_write_to_ahb.exit7_crit_edge: ; preds = %aspeed_smc_write_to_ahb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_smc_write_to_ahb.exit7

if.then.i6:                                       ; preds = %aspeed_smc_write_to_ahb.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = lshr i32 %len, 2
  call void @__raw_writesl(ptr noundef %19, ptr noundef %buf, i32 noundef %shr.i) #7
  %and3.i = and i32 %len, -4
  %sub.i = and i32 %len, 3
  br label %aspeed_smc_write_to_ahb.exit7

aspeed_smc_write_to_ahb.exit7:                    ; preds = %if.then.i6, %aspeed_smc_write_to_ahb.exit.aspeed_smc_write_to_ahb.exit7_crit_edge
  %len.addr.0.i = phi i32 [ %sub.i, %if.then.i6 ], [ %len, %aspeed_smc_write_to_ahb.exit.aspeed_smc_write_to_ahb.exit7_crit_edge ]
  %offset.0.i = phi i32 [ %and3.i, %if.then.i6 ], [ 0, %aspeed_smc_write_to_ahb.exit.aspeed_smc_write_to_ahb.exit7_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %offset.0.i
  call void @__raw_writesb(ptr noundef %19, ptr noundef %add.ptr.i, i32 noundef %len.addr.0.i) #7
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %arrayidx.i = getelementptr %struct.aspeed_smc_chip, ptr %26, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %or1.i = or i32 %28, 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  call void @arm_heavy_mb() #7
  %29 = call i32 @llvm.bswap.i32(i32 %or1.i) #7
  %ctl3.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %26, i32 0, i32 2
  %30 = ptrtoint ptr %ctl3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctl3.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #7, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  call void @arm_heavy_mb() #7
  %32 = call i32 @llvm.bswap.i32(i32 %28) #7
  %33 = ptrtoint ptr %ctl3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctl3.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #7, !srcloc !126
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_smc_read_user(ptr nocapture noundef readonly %nor, i64 noundef %from, i32 noundef returned %len, ptr noundef %read_buf) #2 align 64 {
entry:
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #7
  %2 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %dummy, align 1
  %ctl_val.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %ctl_val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctl_val.i, align 4
  tail call fastcc void @aspeed_smc_chip_check_config(ptr noundef %1) #7
  %or.i = or i32 %4, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %ctl1.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl1.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !126
  %and.i = and i32 %or.i, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %9 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl1.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !126
  %read_opcode = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 10
  %11 = ptrtoint ptr %read_opcode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %read_opcode, align 2
  %conv = trunc i64 %from to i32
  tail call fastcc void @aspeed_smc_send_cmd_addr(ptr noundef %nor, i8 noundef zeroext %12, i32 noundef %conv)
  %read_dummy = getelementptr inbounds %struct.aspeed_smc_chip, ptr %1, i32 0, i32 7, i32 11
  %13 = ptrtoint ptr %read_dummy to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %read_dummy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %14)
  %cmp17.not = icmp ult i8 %14, 8
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ahb_base = getelementptr inbounds %struct.aspeed_smc_chip, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %dummy to i32
  br label %for.body

for.body:                                         ; preds = %aspeed_smc_write_to_ahb.exit.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %aspeed_smc_write_to_ahb.exit.for.body_crit_edge ]
  %16 = ptrtoint ptr %ahb_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ahb_base, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = or i32 %18, %15
  %20 = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %if.then.i, label %for.body.aspeed_smc_write_to_ahb.exit_crit_edge

for.body.aspeed_smc_write_to_ahb.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_smc_write_to_ahb.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__raw_writesl(ptr noundef %17, ptr noundef nonnull %dummy, i32 noundef 0) #7
  br label %aspeed_smc_write_to_ahb.exit

aspeed_smc_write_to_ahb.exit:                     ; preds = %if.then.i, %for.body.aspeed_smc_write_to_ahb.exit_crit_edge
  call void @__raw_writesb(ptr noundef %17, ptr noundef nonnull %dummy, i32 noundef 1) #7
  %inc = add nuw nsw i32 %i.018, 1
  %22 = ptrtoint ptr %read_dummy to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %read_dummy, align 1
  %24 = lshr i8 %23, 3
  %div = zext i8 %24 to i32
  %cmp = icmp ult i32 %inc, %div
  br i1 %cmp, label %aspeed_smc_write_to_ahb.exit.for.body_crit_edge, label %aspeed_smc_write_to_ahb.exit.for.end_crit_edge

aspeed_smc_write_to_ahb.exit.for.end_crit_edge:   ; preds = %aspeed_smc_write_to_ahb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

aspeed_smc_write_to_ahb.exit.for.body_crit_edge:  ; preds = %aspeed_smc_write_to_ahb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %aspeed_smc_write_to_ahb.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %ahb_base4 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %ahb_base4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ahb_base4, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = ptrtoint ptr %read_buf to i32
  %29 = or i32 %27, %28
  %30 = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %if.then.i14, label %for.end.aspeed_smc_read_from_ahb.exit_crit_edge

for.end.aspeed_smc_read_from_ahb.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_smc_read_from_ahb.exit

if.then.i14:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = lshr i32 %len, 2
  call void @__raw_readsl(ptr noundef %26, ptr noundef %read_buf, i32 noundef %shr.i) #7
  %and3.i = and i32 %len, -4
  %sub.i = and i32 %len, 3
  br label %aspeed_smc_read_from_ahb.exit

aspeed_smc_read_from_ahb.exit:                    ; preds = %if.then.i14, %for.end.aspeed_smc_read_from_ahb.exit_crit_edge
  %len.addr.0.i = phi i32 [ %sub.i, %if.then.i14 ], [ %len, %for.end.aspeed_smc_read_from_ahb.exit_crit_edge ]
  %offset.0.i = phi i32 [ %and3.i, %if.then.i14 ], [ 0, %for.end.aspeed_smc_read_from_ahb.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %read_buf, i32 %offset.0.i
  call void @__raw_readsb(ptr noundef %26, ptr noundef %add.ptr.i, i32 noundef %len.addr.0.i) #7
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 8
  %arrayidx.i = getelementptr %struct.aspeed_smc_chip, ptr %33, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %or1.i = or i32 %35, 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  call void @arm_heavy_mb() #7
  %36 = call i32 @llvm.bswap.i32(i32 %or1.i) #7
  %ctl3.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %33, i32 0, i32 2
  %37 = ptrtoint ptr %ctl3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctl3.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #7, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  call void @arm_heavy_mb() #7
  %39 = call i32 @llvm.bswap.i32(i32 %35) #7
  %40 = ptrtoint ptr %ctl3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctl3.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #7, !srcloc !126
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #7
  ret i32 %len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_smc_write_user(ptr nocapture noundef readonly %nor, i64 noundef %to, i32 noundef returned %len, ptr noundef %write_buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ctl_val.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ctl_val.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctl_val.i, align 4
  tail call fastcc void @aspeed_smc_chip_check_config(ptr noundef %1) #7
  %or.i = or i32 %3, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %ctl1.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctl1.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #7, !srcloc !126
  %and.i = and i32 %or.i, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %8 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctl1.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !126
  %program_opcode = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 12
  %10 = ptrtoint ptr %program_opcode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %program_opcode, align 8
  %conv = trunc i64 %to to i32
  tail call fastcc void @aspeed_smc_send_cmd_addr(ptr noundef %nor, i8 noundef zeroext %11, i32 noundef %conv)
  %ahb_base = getelementptr inbounds %struct.aspeed_smc_chip, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %ahb_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ahb_base, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = ptrtoint ptr %write_buf to i32
  %16 = or i32 %14, %15
  %17 = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %if.then.i, label %entry.aspeed_smc_write_to_ahb.exit_crit_edge

entry.aspeed_smc_write_to_ahb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_smc_write_to_ahb.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = lshr i32 %len, 2
  tail call void @__raw_writesl(ptr noundef %13, ptr noundef %write_buf, i32 noundef %shr.i) #7
  %and3.i = and i32 %len, -4
  %sub.i = and i32 %len, 3
  br label %aspeed_smc_write_to_ahb.exit

aspeed_smc_write_to_ahb.exit:                     ; preds = %if.then.i, %entry.aspeed_smc_write_to_ahb.exit_crit_edge
  %len.addr.0.i = phi i32 [ %sub.i, %if.then.i ], [ %len, %entry.aspeed_smc_write_to_ahb.exit_crit_edge ]
  %offset.0.i = phi i32 [ %and3.i, %if.then.i ], [ 0, %entry.aspeed_smc_write_to_ahb.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %write_buf, i32 %offset.0.i
  tail call void @__raw_writesb(ptr noundef %13, ptr noundef %add.ptr.i, i32 noundef %len.addr.0.i) #7
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 8
  %arrayidx.i = getelementptr %struct.aspeed_smc_chip, ptr %20, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %or1.i = or i32 %22, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #7
  %ctl3.i = getelementptr inbounds %struct.aspeed_smc_chip, ptr %20, i32 0, i32 2
  %24 = ptrtoint ptr %ctl3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctl3.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  %27 = ptrtoint ptr %ctl3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctl3.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #7, !srcloc !126
  ret i32 %len
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_smc_chip_check_config(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller1 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %controller1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller1, align 4
  %regs = getelementptr inbounds %struct.aspeed_smc_controller, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !123
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %6 = ptrtoint ptr %controller1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %controller1, align 4
  %info.i = getelementptr inbounds %struct.aspeed_smc_controller, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info.i, align 4
  %we0.i = getelementptr inbounds %struct.aspeed_smc_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %we0.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %we0.i, align 2
  %conv.i = zext i8 %11 to i32
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chip, align 8
  %add.i = add i32 %13, %conv.i
  %shl.i = shl nuw i32 1, %add.i
  %and = and i32 %shl.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_smc_chip_check_config.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_smc_chip_check_config, %if.then9)) #7
          to label %do.end [label %if.then9], !srcloc !132

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_smc_chip_check_config.__UNIQUE_ID_ddebug236, ptr noundef %15, ptr noundef nonnull @.str.20, ptr noundef %17, i32 noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %18 = ptrtoint ptr %controller1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %controller1, align 4
  %info.i29 = getelementptr inbounds %struct.aspeed_smc_controller, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %info.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info.i29, align 4
  %we0.i30 = getelementptr inbounds %struct.aspeed_smc_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %we0.i30 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %we0.i30, align 2
  %conv.i31 = zext i8 %23 to i32
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chip, align 8
  %add.i32 = add i32 %25, %conv.i31
  %shl.i33 = shl nuw i32 1, %add.i32
  %or = or i32 %shl.i33, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %or)
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #7, !srcloc !126
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_smc_send_cmd_addr(ptr nocapture noundef readonly %nor, i8 noundef zeroext %cmd, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  %cmd.addr = alloca i8, align 1
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %cmd, ptr %cmd.addr, align 1
  %priv = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #7
  %addr_width = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %3 = ptrtoint ptr %addr_width to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr_width, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %land.end [
    i8 3, label %entry.sw.bb_crit_edge
    i8 4, label %sw.bb37
  ]

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

land.end:                                         ; preds = %entry
  %.b50 = load i1, ptr @aspeed_smc_send_cmd_addr.__already_done, align 1
  br i1 %.b50, label %land.end.sw.bb_crit_edge, label %if.then, !prof !141

land.end.sw.bb_crit_edge:                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @aspeed_smc_send_cmd_addr.__already_done, align 1
  %conv16 = zext i8 %4 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef %conv16) #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.then, %land.end.sw.bb_crit_edge, %entry.sw.bb_crit_edge
  %and = and i32 %addr, 16777215
  %6 = ptrtoint ptr %cmd.addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd.addr, align 1
  %conv36 = zext i8 %7 to i32
  %shl = shl nuw i32 %conv36, 24
  %or = or i32 %shl, %and
  %8 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %temp, align 4
  %ahb_base = getelementptr inbounds %struct.aspeed_smc_chip, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %ahb_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ahb_base, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %if.then.i, label %sw.bb.aspeed_smc_write_to_ahb.exit_crit_edge

sw.bb.aspeed_smc_write_to_ahb.exit_crit_edge:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_smc_write_to_ahb.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  call void @__raw_writesl(ptr noundef %10, ptr noundef nonnull %temp, i32 noundef 1) #7
  br label %aspeed_smc_write_to_ahb.exit

aspeed_smc_write_to_ahb.exit:                     ; preds = %if.then.i, %sw.bb.aspeed_smc_write_to_ahb.exit_crit_edge
  %len.addr.0.i = phi i32 [ 0, %if.then.i ], [ 4, %sw.bb.aspeed_smc_write_to_ahb.exit_crit_edge ]
  %offset.0.i = phi i32 [ 4, %if.then.i ], [ 0, %sw.bb.aspeed_smc_write_to_ahb.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %temp, i32 %offset.0.i
  call void @__raw_writesb(ptr noundef %10, ptr noundef %add.ptr.i, i32 noundef %len.addr.0.i) #7
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  %14 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %addr, ptr %temp, align 4
  %ahb_base38 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %2, i32 0, i32 3
  %15 = ptrtoint ptr %ahb_base38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ahb_base38, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = ptrtoint ptr %cmd.addr to i32
  %19 = or i32 %17, %18
  %20 = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %if.then.i51, label %sw.bb37.aspeed_smc_write_to_ahb.exit55_crit_edge

sw.bb37.aspeed_smc_write_to_ahb.exit55_crit_edge: ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_smc_write_to_ahb.exit55

if.then.i51:                                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  call void @__raw_writesl(ptr noundef %16, ptr noundef nonnull %cmd.addr, i32 noundef 0) #7
  br label %aspeed_smc_write_to_ahb.exit55

aspeed_smc_write_to_ahb.exit55:                   ; preds = %if.then.i51, %sw.bb37.aspeed_smc_write_to_ahb.exit55_crit_edge
  call void @__raw_writesb(ptr noundef %16, ptr noundef nonnull %cmd.addr, i32 noundef 1) #7
  %22 = ptrtoint ptr %ahb_base38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ahb_base38, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %if.then.i56, label %aspeed_smc_write_to_ahb.exit55.aspeed_smc_write_to_ahb.exit60_crit_edge

aspeed_smc_write_to_ahb.exit55.aspeed_smc_write_to_ahb.exit60_crit_edge: ; preds = %aspeed_smc_write_to_ahb.exit55
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_smc_write_to_ahb.exit60

if.then.i56:                                      ; preds = %aspeed_smc_write_to_ahb.exit55
  call void @__sanitizer_cov_trace_pc() #9
  call void @__raw_writesl(ptr noundef %23, ptr noundef nonnull %temp, i32 noundef 1) #7
  br label %aspeed_smc_write_to_ahb.exit60

aspeed_smc_write_to_ahb.exit60:                   ; preds = %if.then.i56, %aspeed_smc_write_to_ahb.exit55.aspeed_smc_write_to_ahb.exit60_crit_edge
  %len.addr.0.i57 = phi i32 [ 0, %if.then.i56 ], [ 4, %aspeed_smc_write_to_ahb.exit55.aspeed_smc_write_to_ahb.exit60_crit_edge ]
  %offset.0.i58 = phi i32 [ 4, %if.then.i56 ], [ 0, %aspeed_smc_write_to_ahb.exit55.aspeed_smc_write_to_ahb.exit60_crit_edge ]
  %add.ptr.i59 = getelementptr i8, ptr %temp, i32 %offset.0.i58
  call void @__raw_writesb(ptr noundef %23, ptr noundef %add.ptr.i59, i32 noundef %len.addr.0.i57) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %aspeed_smc_write_to_ahb.exit60, %aspeed_smc_write_to_ahb.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chip_set_segment(ptr nocapture noundef readonly %chip, i32 noundef %cs, i32 noundef %start, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller1 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %controller1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller1, align 4
  %regs.i = getelementptr inbounds %struct.aspeed_smc_controller, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %5 = shl i32 %4, 15
  %shl.i = and i32 %5, 2139095040
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 48
  %mul = shl i32 %cs, 2
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !123
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  %10 = lshr i32 %9, 1
  %shl = and i32 %10, 2139095040
  %sub = sub i32 %shl, %start
  %size.addr.0 = select i1 %tobool.not, i32 %sub, i32 %size
  %add = add i32 %size.addr.0, %start
  %ahb_window_size = getelementptr inbounds %struct.aspeed_smc_controller, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %ahb_window_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ahb_window_size, align 4
  %add5 = add i32 %12, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add5)
  %cmp = icmp ugt i32 %add, %add5
  br i1 %cmp, label %if.then6, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub9 = sub i32 %add5, %start
  %dev = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %shr10 = lshr i32 %sub9, 20
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.38, i32 noundef %cs, i32 noundef %shr10) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %entry.if.end11_crit_edge
  %add12.pre-phi = phi i32 [ %add5, %if.then6 ], [ %add, %entry.if.end11_crit_edge ]
  %size.addr.1 = phi i32 [ %sub9, %if.then6 ], [ %size.addr.0, %entry.if.end11_crit_edge ]
  %15 = lshr i32 %start, 7
  %shl15 = and i32 %15, 16711680
  %16 = shl i32 %add12.pre-phi, 1
  %shl18 = and i32 %16, -16777216
  %or = or i32 %shl18, %shl15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %17) #7, !srcloc !126
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !123
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %19)
  %cmp27.not = icmp eq i32 %or, %19
  br i1 %cmp27.not, label %if.end11.do.end47_crit_edge, label %do.end31

if.end11.do.end47_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

do.end31:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %dev33 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.41, i32 noundef %cs) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %8) #7, !srcloc !126
  %22 = shl i32 %9, 7
  %shl39 = and i32 %22, 2139095040
  %sub43 = sub nsw i32 %shl, %shl39
  br label %do.end47

do.end47:                                         ; preds = %do.end31, %if.end11.do.end47_crit_edge
  %end.0 = phi i32 [ %shl, %do.end31 ], [ %add12.pre-phi, %if.end11.do.end47_crit_edge ]
  %size.addr.2 = phi i32 [ %sub43, %do.end31 ], [ %size.addr.1, %if.end11.do.end47_crit_edge ]
  %start.addr.0 = phi i32 [ %shl39, %do.end31 ], [ %start, %if.end11.do.end47_crit_edge ]
  %dev49 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 7, i32 2
  %23 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev49, align 4
  %shr50 = lshr i32 %size.addr.2, 20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.44, i32 noundef %cs, i32 noundef %start.addr.0, i32 noundef %end.0, i32 noundef %shr50) #10
  ret i32 %size.addr.2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @aspeed_smc_chip_set_4b_spi_2400(ptr nocapture noundef %chip) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl_val = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %ctl_val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctl_val, align 4
  %or = or i32 %1, 8192
  store i32 %or, ptr %ctl_val, align 4
  %arrayidx2 = getelementptr %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %or3 = or i32 %3, 8192
  store i32 %or3, ptr %arrayidx2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_smc_chip_set_4b(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller1 = getelementptr inbounds %struct.aspeed_smc_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %controller1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller1, align 4
  %regs = getelementptr inbounds %struct.aspeed_smc_controller, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !123
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip, align 8
  %shl = shl nuw i32 1, %7
  %or = or i32 %shl, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %8) #7, !srcloc !126
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !56, !57, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !85, !86, !88, !89, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !111}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__initcall__kmod_aspeed_smc__242_906_aspeed_smc_driver_init6, !1, !"__initcall__kmod_aspeed_smc__242_906_aspeed_smc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 906, i32 1}
!2 = !{ptr @__exitcall_aspeed_smc_driver_exit, !1, !"__exitcall_aspeed_smc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description243, !4, !"__UNIQUE_ID_description243", i1 false, i1 false}
!4 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 908, i32 1}
!5 = !{ptr @__UNIQUE_ID_author244, !6, !"__UNIQUE_ID_author244", i1 false, i1 false}
!6 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 909, i32 1}
!7 = !{ptr @__UNIQUE_ID_file245, !8, !"__UNIQUE_ID_file245", i1 false, i1 false}
!8 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 910, i32 1}
!9 = !{ptr @__UNIQUE_ID_license246, !8, !"__UNIQUE_ID_license246", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 901, i32 11}
!12 = !{ptr @aspeed_smc_driver, !13, !"aspeed_smc_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 897, i32 31}
!14 = !{ptr @aspeed_smc_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 875, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 892, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @aspeed_smc_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @aspeed_smc_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 779, i32 39}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 782, i32 37}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 784, i32 4}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @aspeed_smc_setup_flash._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @aspeed_smc_setup_flash._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 789, i32 4}
!36 = !{ptr @aspeed_smc_setup_flash._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @aspeed_smc_setup_flash._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 796, i32 4}
!40 = !{ptr @aspeed_smc_setup_flash._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @aspeed_smc_setup_flash._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!44 = !{ptr @aspeed_smc_controller_ops, !45, !"aspeed_smc_controller_ops", i1 false, i1 false}
!45 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 750, i32 44}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 271, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @aspeed_smc_chip_check_config.__UNIQUE_ID_ddebug236, !47, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 355, i32 3}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 668, i32 3}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @aspeed_smc_chip_setup_init._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @aspeed_smc_chip_setup_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 679, i32 2}
!62 = !{ptr @aspeed_smc_chip_setup_init.__UNIQUE_ID_ddebug237, !61, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 683, i32 3}
!65 = !{ptr @aspeed_smc_chip_setup_init.__UNIQUE_ID_ddebug238, !64, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 701, i32 2}
!68 = !{ptr @aspeed_smc_chip_setup_init.__UNIQUE_ID_ddebug239, !67, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 725, i32 2}
!71 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @aspeed_smc_chip_setup_finish.__UNIQUE_ID_ddebug240, !70, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 738, i32 3}
!75 = !{ptr @aspeed_smc_chip_setup_finish._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @aspeed_smc_chip_setup_finish._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 745, i32 2}
!79 = !{ptr @aspeed_smc_chip_setup_finish.__UNIQUE_ID_ddebug241, !78, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 554, i32 3}
!82 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @aspeed_smc_chip_set_segment._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @aspeed_smc_chip_set_segment._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 589, i32 3}
!88 = !{ptr @aspeed_smc_chip_set_segment._entry.35, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @aspeed_smc_chip_set_segment._entry_ptr.37, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @spi_2400_info, !91, !"spi_2400_info", i1 false, i1 false}
!91 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 56, i32 37}
!92 = !{ptr @spi_2500_info, !93, !"spi_2500_info", i1 false, i1 false}
!93 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 74, i32 37}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 489, i32 3}
!96 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @chip_set_segment._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @chip_set_segment._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 503, i32 3}
!101 = !{ptr @chip_set_segment._entry.40, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @chip_set_segment._entry_ptr.42, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 510, i32 2}
!105 = !{ptr @chip_set_segment._entry.43, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @chip_set_segment._entry_ptr.45, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @aspeed_smc_matches, !108, !"aspeed_smc_matches", i1 false, i1 false}
!108 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 421, i32 34}
!109 = !{ptr @fmc_2400_info, !110, !"fmc_2400_info", i1 false, i1 false}
!110 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 47, i32 37}
!111 = !{ptr @fmc_2500_info, !112, !"fmc_2500_info", i1 false, i1 false}
!112 = !{!"../drivers/mtd/spi-nor/controllers/aspeed-smc.c", i32 65, i32 37}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{!"auto-init"}
!123 = !{i64 4794697}
!124 = !{i64 2154567136}
!125 = !{i64 2154567359}
!126 = !{i64 4794279}
!127 = !{i8 0, i8 2}
!128 = !{i64 2154568049}
!129 = !{i64 2154568272}
!130 = !{i64 2154554403}
!131 = !{i64 2154571578}
!132 = !{i64 2148170439, i64 2148170444, i64 2148170457, i64 2148170501, i64 2148170535, i64 2148170556}
!133 = !{i64 2154555169}
!134 = !{i64 2154564788}
!135 = !{i64 2154550829}
!136 = !{i64 2154551284}
!137 = !{i64 2154551742}
!138 = !{i64 2154552118}
!139 = !{i64 2154547559}
!140 = !{i64 2154550359}
!141 = !{!"branch_weights", i32 2000, i32 1}
!142 = !{i64 2154555725}
!143 = !{i64 2154557736}
!144 = !{i64 2154558368}
!145 = !{i64 2154560158}
!146 = !{i64 2154568962}
!147 = !{i64 2154569185}
