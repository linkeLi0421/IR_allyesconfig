; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-ingenic.c_pt.bc'
source_filename = "../drivers/spi/spi-ingenic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.jz_soc_info = type { i32, %struct.reg_field, i8 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
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
%struct.ingenic_spi = type { ptr, ptr, ptr, ptr, ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }

@__initcall__kmod_spi_ingenic__244_478_spi_ingenic_driver_init6 = internal global ptr @spi_ingenic_driver_init, section ".initcall6.init", align 4
@spi_ingenic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spi_ingenic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spi_ingenic_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_spi_ingenic_driver_exit = internal global ptr @spi_ingenic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description245 = internal constant [67 x i8] c"spi_ingenic.description=SPI bus driver for the Ingenic JZ47xx SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [56 x i8] c"spi_ingenic.author=Artur Rojek <contact@artur-rojek.eu>\00", section ".modinfo", align 1
@__UNIQUE_ID_author247 = internal constant [56 x i8] c"spi_ingenic.author=Paul Cercueil <paul@crapouillou.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [41 x i8] c"spi_ingenic.file=drivers/spi/spi-ingenic\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [24 x i8] c"spi_ingenic.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi-ingenic\00", [20 x i8] zeroinitializer }, align 32
@spi_ingenic_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4750-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4750_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4780-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4780_soc_info }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@spi_ingenic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 387, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Missing platform data.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi_ingenic_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/spi/spi-ingenic.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spi_ingenic_probe._entry_ptr = internal global ptr @spi_ingenic_probe._entry, section ".printk_index", align 4
@spi_ingenic_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 393, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to allocate SPI controller.\0A\00", [60 x i8] zeroinitializer }, align 32
@spi_ingenic_probe._entry_ptr.8 = internal global ptr @spi_ingenic_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unable to get clock.\0A\00", [42 x i8] zeroinitializer }, align 32
@spi_ingenic_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@spi_ingenic_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 24, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"spi_ingenic:410:(&spi_ingenic_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@spi_ingenic_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 436, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA not available.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@spi_ingenic_probe._entry_ptr.14 = internal global ptr @spi_ingenic_probe._entry.11, section ".printk_index", align 4
@spi_ingenic_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 440, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to add action.\0A\00", [41 x i8] zeroinitializer }, align 32
@spi_ingenic_probe._entry_ptr.17 = internal global ptr @spi_ingenic_probe._entry.15, section ".printk_index", align 4
@spi_ingenic_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 446, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to register SPI controller.\0A\00", [60 x i8] zeroinitializer }, align 32
@spi_ingenic_probe._entry_ptr.20 = internal global ptr @spi_ingenic_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@spi_ingenic_can_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 334, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to get slave caps: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spi_ingenic_can_dma\00", [44 x i8] zeroinitializer }, align 32
@spi_ingenic_can_dma._entry_ptr = internal global ptr @spi_ingenic_can_dma._entry, section ".printk_index", align 4
@jz4750_soc_info = internal constant { %struct.jz_soc_info, [36 x i8] } { %struct.jz_soc_info { i32 131070, %struct.reg_field { i32 8, i32 4, i32 7, i32 0, i32 0 }, i8 0 }, [36 x i8] zeroinitializer }, align 32
@jz4780_soc_info = internal constant { %struct.jz_soc_info, [36 x i8] } { %struct.jz_soc_info { i32 -2, %struct.reg_field { i32 8, i32 3, i32 7, i32 0, i32 0 }, i8 1 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"spi_ingenic_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 470, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 472, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"spi_ingenic_of_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 463, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 387, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 393, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 403, i32 10 }
@___asan_gen_.61 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [26 x i8] c"spi_ingenic_regmap_config\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 369, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 410, i32 14 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 436, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 440, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 446, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 345, i32 48 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 349, i32 48 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 334, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"jz4750_soc_info\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 451, i32 33 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"jz4780_soc_info\00", align 1
@___asan_gen_.110 = private constant [29 x i8] c"../drivers/spi/spi-ingenic.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 457, i32 33 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_spi_ingenic_driver_exit, ptr @__initcall__kmod_spi_ingenic__244_478_spi_ingenic_driver_init6, ptr @spi_ingenic_can_dma._entry, ptr @spi_ingenic_can_dma._entry_ptr, ptr @spi_ingenic_driver_exit, ptr @spi_ingenic_probe._entry, ptr @spi_ingenic_probe._entry.11, ptr @spi_ingenic_probe._entry.15, ptr @spi_ingenic_probe._entry.18, ptr @spi_ingenic_probe._entry.6, ptr @spi_ingenic_probe._entry_ptr, ptr @spi_ingenic_probe._entry_ptr.14, ptr @spi_ingenic_probe._entry_ptr.17, ptr @spi_ingenic_probe._entry_ptr.20, ptr @spi_ingenic_probe._entry_ptr.8, ptr @spi_ingenic_driver, ptr @.str, ptr @spi_ingenic_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @spi_ingenic_probe._key, ptr @spi_ingenic_regmap_config, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @jz4750_soc_info, ptr @jz4780_soc_info], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_ingenic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_ingenic_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_ingenic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_ingenic_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_ingenic_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_ingenic_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_ingenic_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_ingenic_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_ingenic_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_ingenic_can_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4750_soc_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_soc_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_ingenic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @spi_ingenic_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spi_ingenic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @spi_ingenic_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_ingenic_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev1, i32 noundef 20, i1 noundef zeroext false) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %do.end7, label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %1, align 4
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.ingenic_spi, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call10 to i32
  %call16 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %4, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %mem_res = getelementptr inbounds %struct.ingenic_spi, ptr %1, i32 0, i32 2
  %call18 = tail call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef %mem_res) #6
  %cmp.i130 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %call23 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call18, ptr noundef nonnull @spi_ingenic_regmap_config, ptr noundef nonnull @spi_ingenic_probe._key, ptr noundef nonnull @.str.10) #6
  %map = getelementptr inbounds %struct.ingenic_spi, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call23, ptr %map, align 4
  %cmp.i131 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %flen_field = getelementptr inbounds %struct.jz_soc_info, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %flen_field to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %flen_field, align 4
  %9 = insertvalue [5 x i32] undef, i32 %.unpack, 0
  %.elt122 = getelementptr inbounds %struct.jz_soc_info, ptr %call, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %.elt122 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack123 = load i32, ptr %.elt122, align 4
  %11 = insertvalue [5 x i32] %9, i32 %.unpack123, 1
  %.elt124 = getelementptr inbounds %struct.jz_soc_info, ptr %call, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %.elt124 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack125 = load i32, ptr %.elt124, align 4
  %13 = insertvalue [5 x i32] %11, i32 %.unpack125, 2
  %.elt126 = getelementptr inbounds %struct.jz_soc_info, ptr %call, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %.elt126 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack127 = load i32, ptr %.elt126, align 4
  %15 = insertvalue [5 x i32] %13, i32 %.unpack127, 3
  %.elt128 = getelementptr inbounds %struct.jz_soc_info, ptr %call, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %.elt128 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack129 = load i32, ptr %.elt128, align 4
  %17 = insertvalue [5 x i32] %15, i32 %.unpack129, 4
  %call31 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %call23, [5 x i32] %17) #6
  %flen_field32 = getelementptr inbounds %struct.ingenic_spi, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %flen_field32 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call31, ptr %flen_field32, align 4
  %cmp.i132 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  %driver_data.i.i133 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i133 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i133, align 4
  %prepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 44
  %21 = ptrtoint ptr %prepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @spi_ingenic_prepare_hardware, ptr %prepare_transfer_hardware, align 8
  %unprepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 46
  %22 = ptrtoint ptr %unprepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @spi_ingenic_unprepare_hardware, ptr %unprepare_transfer_hardware, align 8
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %23 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @spi_ingenic_prepare_message, ptr %prepare_message, align 4
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 50
  %24 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @spi_ingenic_set_cs, ptr %set_cs, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %25 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @spi_ingenic_transfer_one, ptr %transfer_one, align 4
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 47, ptr %mode_bits, align 8
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 24, ptr %flags, align 4
  %max_dma_len = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 43
  %28 = ptrtoint ptr %max_dma_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 128, ptr %max_dma_len, align 4
  %29 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call, align 4
  %bits_per_word_mask39 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %31 = ptrtoint ptr %bits_per_word_mask39 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %bits_per_word_mask39, align 8
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 8
  %32 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 7200, ptr %min_speed_hz, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %33 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 54000000, ptr %max_speed_hz, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %34 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2, ptr %num_chipselect, align 2
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %35 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node, align 8
  %of_node42 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %37 = ptrtoint ptr %of_node42 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %of_node42, align 8
  %call.i.i = tail call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.21) #6
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = select i1 %cmp.i.i.i, ptr null, ptr %call.i.i
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 60
  %38 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %spec.select.i.i, ptr %dma_tx.i, align 8
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %if.end38.do.end48_crit_edge, label %if.end.i

if.end38.do.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

if.end.i:                                         ; preds = %if.end38
  %call.i12.i = tail call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.22) #6
  %cmp.i.i13.i = icmp ugt ptr %call.i12.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i14.i = select i1 %cmp.i.i13.i, ptr null, ptr %call.i12.i
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 61
  %39 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %spec.select.i14.i, ptr %dma_rx.i, align 4
  %tobool4.not.i = icmp eq ptr %spec.select.i14.i, null
  br i1 %tobool4.not.i, label %if.end.i.do.end48_crit_edge, label %spi_ingenic_request_dma.exit

if.end.i.do.end48_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

spi_ingenic_request_dma.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %can_dma.i = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 24
  %40 = ptrtoint ptr %can_dma.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @spi_ingenic_can_dma, ptr %can_dma.i, align 4
  br label %if.end49

do.end48:                                         ; preds = %if.end.i.do.end48_crit_edge, %if.end38.do.end48_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  br label %if.end49

if.end49:                                         ; preds = %do.end48, %spi_ingenic_request_dma.exit
  %call.i134 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @spi_ingenic_release_dma, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool.not.i135 = icmp eq i32 %call.i134, 0
  br i1 %tobool.not.i135, label %if.end56, label %if.then.i

if.then.i:                                        ; preds = %if.end49
  %41 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma_tx.i, align 8
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_release_channel(ptr noundef nonnull %42) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %dma_rx.i.i = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 61
  %43 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dma_rx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %44, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.end55_crit_edge, label %if.then3.i.i

if.end.i.i.do.end55_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end55

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_release_channel(ptr noundef nonnull %44) #6
  br label %do.end55

do.end55:                                         ; preds = %if.then3.i.i, %if.end.i.i.do.end55_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end56:                                         ; preds = %if.end49
  %call57 = tail call i32 @devm_spi_register_controller(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end56.cleanup_crit_edge, label %do.end62

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %if.end56.cleanup_crit_edge, %do.end55, %if.then35, %if.then26, %if.then20, %if.then13, %do.end7, %do.end
  %retval.0 = phi i32 [ %call16, %if.then13 ], [ %5, %if.then20 ], [ %7, %if.then26 ], [ %19, %if.then35 ], [ %call.i134, %do.end55 ], [ -12, %do.end7 ], [ -22, %do.end ], [ %call57, %do.end62 ], [ 0, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_ingenic_prepare_hardware(ptr nocapture noundef readonly %ctlr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.ingenic_spi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %map = getelementptr inbounds %struct.ingenic_spi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 4, i32 noundef 128) #6
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 8, i32 noundef 0) #6
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 12, i32 noundef 0) #6
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %call.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 4, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_ingenic_unprepare_hardware(ptr nocapture noundef readonly %ctlr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %map = getelementptr inbounds %struct.ingenic_spi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 4, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %clk = getelementptr inbounds %struct.ingenic_spi, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_ingenic_prepare_message(ptr nocapture noundef readonly %ctlr, ptr nocapture noundef readonly %message) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %5 to i32
  %shl = shl i32 1073741824, %conv
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %has_trendian = getelementptr inbounds %struct.jz_soc_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %has_trendian to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_trendian, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %shl, 3
  %mode = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 8
  %and = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool3.not, i32 0, i32 655360
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or6 = or i32 %shl, 33554435
  %mode7 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %mode7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode7, align 8
  %and8 = shl i32 %13, 22
  %14 = and i32 %and8, 33554432
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then
  %ssicr0_mask.0 = phi i32 [ 656448, %if.then ], [ 1088, %if.else ]
  %ssicr1_mask.0 = phi i32 [ %or, %if.then ], [ %or6, %if.else ]
  %ssicr0.0 = phi i32 [ %spec.select, %if.then ], [ 0, %if.else ]
  %ssicr1.0 = phi i32 [ 0, %if.then ], [ %14, %if.else ]
  %mode14 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %mode14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode14, align 8
  %and15 = shl i32 %16, 5
  %17 = and i32 %and15, 1024
  %18 = or i32 %17, %ssicr0.0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool21.not = icmp eq i8 %5, 0
  %or23 = or i32 %18, 64
  %ssicr0.2 = select i1 %tobool21.not, i32 %18, i32 %or23
  %and26 = shl i32 %16, 1
  %19 = and i32 %and26, 2
  %20 = or i32 %19, %ssicr1.0
  %and32 = lshr i32 %16, 1
  %21 = and i32 %and32, 1
  %22 = or i32 %20, %21
  %and38 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %or41 = select i1 %tobool39.not, i32 0, i32 %shl
  %ssicr1.3 = or i32 %22, %or41
  %map = getelementptr inbounds %struct.ingenic_spi, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 4, i32 noundef %ssicr0_mask.0, i32 noundef %ssicr0.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %25 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map, align 4
  %call.i67 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 8, i32 noundef %ssicr1_mask.0, i32 noundef %ssicr1.3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_ingenic_set_cs(ptr nocapture noundef readonly %spi, i1 noundef zeroext %disable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %map = getelementptr inbounds %struct.ingenic_spi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  br i1 %disable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 8, i32 noundef 8388608, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 12, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call4 = tail call fastcc i32 @spi_ingenic_wait(ptr noundef %3, i32 noundef 128, i1 noundef zeroext true)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 8, i32 noundef 8388608, i32 noundef 8388608, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %map7 = getelementptr inbounds %struct.ingenic_spi, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %map7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map7, align 4
  %call.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 4, i32 noundef 6, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_ingenic_transfer_one(ptr noundef %ctlr, ptr noundef %spi, ptr noundef %xfer) #2 align 64 {
entry:
  %val.i72 = alloca i32, align 4
  %val.i51 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %2 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bits_per_word1 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %4 = ptrtoint ptr %bits_per_word1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bits_per_word1, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond.in = phi i8 [ %5, %cond.false ], [ %3, %entry.cond.end_crit_edge ]
  %cond = zext i8 %cond.in to i32
  %can_dma3 = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 24
  %6 = ptrtoint ptr %can_dma3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %can_dma3, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %cond.end.land.end_crit_edge, label %land.rhs

cond.end.land.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call zeroext i1 %7(ptr noundef %ctlr, ptr noundef %spi, ptr noundef %xfer) #6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.land.end_crit_edge
  %8 = phi i1 [ false, %cond.end.land.end_crit_edge ], [ %call6, %land.rhs ]
  %clk.i = getelementptr inbounds %struct.ingenic_spi, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %10) #6
  %speed_hz1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %11 = ptrtoint ptr %speed_hz1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed_hz1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %cond.false.i, label %land.end.cond.end.i_crit_edge

land.end.cond.end.i_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  %max_speed_hz.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %13 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_speed_hz.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %land.end.cond.end.i_crit_edge
  %cond.i = phi i32 [ %14, %cond.false.i ], [ %12, %land.end.cond.end.i_crit_edge ]
  %15 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool3.not.i = icmp eq i8 %16, 0
  br i1 %tobool3.not.i, label %cond.false5.i, label %cond.end.i.spi_ingenic_prepare_transfer.exit_crit_edge

cond.end.i.spi_ingenic_prepare_transfer.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_ingenic_prepare_transfer.exit

cond.false5.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %bits_per_word6.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %17 = ptrtoint ptr %bits_per_word6.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bits_per_word6.i, align 1
  br label %spi_ingenic_prepare_transfer.exit

spi_ingenic_prepare_transfer.exit:                ; preds = %cond.false5.i, %cond.end.i.spi_ingenic_prepare_transfer.exit_crit_edge
  %cond9.in.i = phi i8 [ %18, %cond.false5.i ], [ %16, %cond.end.i.spi_ingenic_prepare_transfer.exit_crit_edge ]
  %mul.i = shl i32 %cond.i, 1
  %div.i = udiv i32 %call.i, %mul.i
  %19 = tail call i32 @llvm.umax.i32(i32 %div.i, i32 1) #6
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 256) #6
  %cond9.i = zext i8 %cond9.in.i to i32
  %sub.i = add nsw i32 %20, -1
  %map.i = getelementptr inbounds %struct.ingenic_spi, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map.i, align 4
  %call22.i = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 24, i32 noundef %sub.i) #6
  %flen_field.i = getelementptr inbounds %struct.ingenic_spi, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %flen_field.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %flen_field.i, align 4
  %sub23.i = add nsw i32 %cond9.i, -2
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %24, i32 noundef -1, i32 noundef %sub23.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %cur_msg_mapped = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 38
  %25 = ptrtoint ptr %cur_msg_mapped to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cur_msg_mapped, align 2, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool8.not = icmp eq i8 %26, 0
  %.not = xor i1 %8, true
  %brmerge = select i1 %tobool8.not, i1 true, i1 %.not
  br i1 %brmerge, label %if.end, label %if.then

if.then:                                          ; preds = %spi_ingenic_prepare_transfer.exit
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 61
  %27 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_rx.i, align 4
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6
  %call.i43 = tail call fastcc ptr @spi_ingenic_prepare_dma(ptr noundef %ctlr, ptr noundef %28, ptr noundef %rx_sg.i, i32 noundef 2, i32 noundef %cond) #6
  %cmp.i.i = icmp ugt ptr %call.i43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %call.i43 to i32
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 60
  %30 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_tx.i, align 8
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5
  %call3.i = tail call fastcc ptr @spi_ingenic_prepare_dma(ptr noundef %ctlr, ptr noundef %31, ptr noundef %tx_sg.i, i32 noundef 1, i32 noundef %cond) #6
  %cmp.i25.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  %32 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_rx.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  br i1 %cmp.i25.i, label %if.then5.i, label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 47
  %36 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.then5.i.dmaengine_terminate_async.exit.i_crit_edge, label %if.then.i.i

if.then5.i.dmaengine_terminate_async.exit.i_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_terminate_async.exit.i

if.then.i.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i44 = tail call i32 %37(ptr noundef %33) #6
  br label %dmaengine_terminate_async.exit.i

dmaengine_terminate_async.exit.i:                 ; preds = %if.then.i.i, %if.then5.i.dmaengine_terminate_async.exit.i_crit_edge
  %flags.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i43, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %39, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %dmaengine_terminate_async.exit.i.dmaengine_desc_free.exit.i_crit_edge, label %if.end.i.i

dmaengine_terminate_async.exit.i.dmaengine_desc_free.exit.i_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_desc_free.exit.i

if.end.i.i:                                       ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %desc_free.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i43, i32 0, i32 5
  %40 = ptrtoint ptr %desc_free.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc_free.i.i, align 4
  %call1.i.i = tail call i32 %41(ptr noundef %call.i43) #6
  br label %dmaengine_desc_free.exit.i

dmaengine_desc_free.exit.i:                       ; preds = %if.end.i.i, %dmaengine_terminate_async.exit.i.dmaengine_desc_free.exit.i_crit_edge
  %42 = ptrtoint ptr %call3.i to i32
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 50
  %43 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device_issue_pending.i.i, align 4
  tail call void %44(ptr noundef %33) #6
  %45 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dma_tx.i, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %device_issue_pending.i26.i = getelementptr inbounds %struct.dma_device, ptr %48, i32 0, i32 50
  %49 = ptrtoint ptr %device_issue_pending.i26.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device_issue_pending.i26.i, align 4
  tail call void %50(ptr noundef %46) #6
  br label %cleanup

if.end:                                           ; preds = %spi_ingenic_prepare_transfer.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %cond.in)
  %cmp = icmp ugt i8 %cond.in, 16
  br i1 %cmp, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %51 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len.i, align 4
  %div63.i = lshr i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %52)
  %cmp.i = icmp ult i32 %52, 512
  %div63..i = select i1 %cmp.i, i32 %div63.i, i32 128
  %53 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xfer, align 4
  %rx_buf2.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %55 = ptrtoint ptr %rx_buf2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_buf2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %57 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %val.i, align 4, !annotation !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div63..i)
  %cmp364.not.i = icmp eq i32 %div63..i, 0
  br i1 %cmp364.not.i, label %if.then14.for.cond8.preheader.i_crit_edge, label %for.body.lr.ph.i

if.then14.for.cond8.preheader.i_crit_edge:        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond8.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.then14
  %tobool.not.i45 = icmp eq ptr %54, null
  br label %for.body.i

for.cond8.preheader.i:                            ; preds = %cond.end6.i.for.cond8.preheader.i_crit_edge, %if.then14.for.cond8.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %cmp967.not.i = icmp ult i32 %52, 4
  br i1 %cmp967.not.i, label %for.cond8.preheader.i.spi_ingenic_tx32.exit_crit_edge, label %for.body10.lr.ph.i

for.cond8.preheader.i.spi_ingenic_tx32.exit_crit_edge: ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_ingenic_tx32.exit

for.body10.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %tobool15.not.i = icmp eq ptr %56, null
  %sub.i47 = sub nsw i32 %div63.i, %div63..i
  %tobool21.not.i = icmp eq ptr %54, null
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div63.i, i32 1) #6
  br label %for.body10.i

for.body.i:                                       ; preds = %cond.end6.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.065.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cond.end6.i.for.body.i_crit_edge ]
  br i1 %tobool.not.i45, label %for.body.i.cond.end6.i_crit_edge, label %cond.true4.i

for.body.i.cond.end6.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end6.i

cond.true4.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr i32, ptr %54, i32 %i.065.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 4
  br label %cond.end6.i

cond.end6.i:                                      ; preds = %cond.true4.i, %for.body.i.cond.end6.i_crit_edge
  %cond7.i = phi i32 [ %59, %cond.true4.i ], [ 0, %for.body.i.cond.end6.i_crit_edge ]
  %60 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %cond7.i, ptr %val.i, align 4
  %61 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %map.i, align 4
  %call.i48 = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 0, i32 noundef %cond7.i) #6
  %inc.i = add nuw nsw i32 %i.065.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div63..i
  br i1 %exitcond.not.i, label %cond.end6.i.for.cond8.preheader.i_crit_edge, label %cond.end6.i.for.body.i_crit_edge

cond.end6.i.for.body.i_crit_edge:                 ; preds = %cond.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cond.end6.i.for.cond8.preheader.i_crit_edge:      ; preds = %cond.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond8.preheader.i

for.body10.i:                                     ; preds = %for.inc30.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %i.168.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc31.i, %for.inc30.i.for.body10.i_crit_edge ]
  %call11.i = call fastcc i32 @spi_ingenic_wait(ptr noundef %1, i32 noundef 16, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end.i49, label %for.body10.i.spi_ingenic_tx32.exit_crit_edge

for.body10.i.spi_ingenic_tx32.exit_crit_edge:     ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_ingenic_tx32.exit

if.end.i49:                                       ; preds = %for.body10.i
  %63 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map.i, align 4
  %call14.i = call i32 @regmap_read(ptr noundef %64, i32 noundef 0, ptr noundef nonnull %val.i) #6
  br i1 %tobool15.not.i, label %if.end.i49.if.end18.i_crit_edge, label %if.then16.i

if.end.i49.if.end18.i_crit_edge:                  ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val.i, align 4
  %arrayidx17.i = getelementptr i32, ptr %56, i32 %i.168.i
  %67 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx17.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end.i49.if.end18.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.168.i, i32 %sub.i47)
  %cmp19.i = icmp ult i32 %i.168.i, %sub.i47
  br i1 %cmp19.i, label %if.then20.i, label %if.end18.i.for.inc30.i_crit_edge

if.end18.i.for.inc30.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc30.i

if.then20.i:                                      ; preds = %if.end18.i
  br i1 %tobool21.not.i, label %if.then20.i.cond.end25.i_crit_edge, label %cond.true22.i

if.then20.i.cond.end25.i_crit_edge:               ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end25.i

cond.true22.i:                                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add nuw nsw i32 %i.168.i, %div63..i
  %arrayidx23.i = getelementptr i32, ptr %54, i32 %add.i
  %68 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx23.i, align 4
  br label %cond.end25.i

cond.end25.i:                                     ; preds = %cond.true22.i, %if.then20.i.cond.end25.i_crit_edge
  %cond26.i = phi i32 [ %69, %cond.true22.i ], [ 0, %if.then20.i.cond.end25.i_crit_edge ]
  %70 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %cond26.i, ptr %val.i, align 4
  %71 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %map.i, align 4
  %call28.i = call i32 @regmap_write(ptr noundef %72, i32 noundef 0, i32 noundef %cond26.i) #6
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %cond.end25.i, %if.end18.i.for.inc30.i_crit_edge
  %inc31.i = add nuw nsw i32 %i.168.i, 1
  %exitcond72.not.i = icmp eq i32 %inc31.i, %umax.i
  br i1 %exitcond72.not.i, label %for.inc30.i.spi_ingenic_tx32.exit_crit_edge, label %for.inc30.i.for.body10.i_crit_edge

for.inc30.i.for.body10.i_crit_edge:               ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10.i

for.inc30.i.spi_ingenic_tx32.exit_crit_edge:      ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_ingenic_tx32.exit

spi_ingenic_tx32.exit:                            ; preds = %for.inc30.i.spi_ingenic_tx32.exit_crit_edge, %for.body10.i.spi_ingenic_tx32.exit_crit_edge, %for.cond8.preheader.i.spi_ingenic_tx32.exit_crit_edge
  %retval.0.i50 = phi i32 [ 0, %for.cond8.preheader.i.spi_ingenic_tx32.exit_crit_edge ], [ %call11.i, %for.body10.i.spi_ingenic_tx32.exit_crit_edge ], [ 0, %for.inc30.i.spi_ingenic_tx32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %cond.in)
  %cmp17 = icmp ugt i8 %cond.in, 8
  %len.i52 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %73 = ptrtoint ptr %len.i52 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i52, align 4
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %div67.i = lshr i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %74)
  %cmp.i53 = icmp ult i32 %74, 256
  %div67..i = select i1 %cmp.i53, i32 %div67.i, i32 128
  %75 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %xfer, align 4
  %rx_buf2.i54 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %77 = ptrtoint ptr %rx_buf2.i54 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rx_buf2.i54, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i51) #6
  %79 = ptrtoint ptr %val.i51 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %val.i51, align 4, !annotation !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div67..i)
  %cmp368.not.i = icmp eq i32 %div67..i, 0
  br i1 %cmp368.not.i, label %if.then19.for.cond8.preheader.i58_crit_edge, label %for.body.lr.ph.i57

if.then19.for.cond8.preheader.i58_crit_edge:      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond8.preheader.i58

for.body.lr.ph.i57:                               ; preds = %if.then19
  %tobool.not.i55 = icmp eq ptr %76, null
  br label %for.body.i61

for.cond8.preheader.i58:                          ; preds = %cond.end6.i68.for.cond8.preheader.i58_crit_edge, %if.then19.for.cond8.preheader.i58_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp971.not.i = icmp ult i32 %74, 2
  br i1 %cmp971.not.i, label %for.cond8.preheader.i58.spi_ingenic_tx16.exit_crit_edge, label %for.body11.lr.ph.i

for.cond8.preheader.i58.spi_ingenic_tx16.exit_crit_edge: ; preds = %for.cond8.preheader.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_ingenic_tx16.exit

for.body11.lr.ph.i:                               ; preds = %for.cond8.preheader.i58
  %tobool16.not.i = icmp eq ptr %78, null
  %sub.i59 = sub nsw i32 %div67.i, %div67..i
  %tobool24.not.i = icmp eq ptr %76, null
  %umax.i60 = tail call i32 @llvm.umax.i32(i32 %div67.i, i32 1) #6
  br label %for.body11.i

for.body.i61:                                     ; preds = %cond.end6.i68.for.body.i61_crit_edge, %for.body.lr.ph.i57
  %i.069.i = phi i32 [ 0, %for.body.lr.ph.i57 ], [ %inc.i66, %cond.end6.i68.for.body.i61_crit_edge ]
  br i1 %tobool.not.i55, label %for.body.i61.cond.end6.i68_crit_edge, label %cond.true4.i63

for.body.i61.cond.end6.i68_crit_edge:             ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end6.i68

cond.true4.i63:                                   ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i62 = getelementptr i16, ptr %76, i32 %i.069.i
  %80 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx.i62, align 2
  %conv.i = zext i16 %81 to i32
  br label %cond.end6.i68

cond.end6.i68:                                    ; preds = %cond.true4.i63, %for.body.i61.cond.end6.i68_crit_edge
  %cond7.i64 = phi i32 [ %conv.i, %cond.true4.i63 ], [ 0, %for.body.i61.cond.end6.i68_crit_edge ]
  %82 = ptrtoint ptr %val.i51 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %cond7.i64, ptr %val.i51, align 4
  %83 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %map.i, align 4
  %call.i65 = tail call i32 @regmap_write(ptr noundef %84, i32 noundef 0, i32 noundef %cond7.i64) #6
  %inc.i66 = add nuw nsw i32 %i.069.i, 1
  %exitcond.not.i67 = icmp eq i32 %inc.i66, %div67..i
  br i1 %exitcond.not.i67, label %cond.end6.i68.for.cond8.preheader.i58_crit_edge, label %cond.end6.i68.for.body.i61_crit_edge

cond.end6.i68.for.body.i61_crit_edge:             ; preds = %cond.end6.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i61

cond.end6.i68.for.cond8.preheader.i58_crit_edge:  ; preds = %cond.end6.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond8.preheader.i58

for.body11.i:                                     ; preds = %for.inc34.i.for.body11.i_crit_edge, %for.body11.lr.ph.i
  %i.172.i = phi i32 [ 0, %for.body11.lr.ph.i ], [ %inc35.i, %for.inc34.i.for.body11.i_crit_edge ]
  %call12.i = call fastcc i32 @spi_ingenic_wait(ptr noundef %1, i32 noundef 16, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end.i69, label %for.body11.i.spi_ingenic_tx16.exit_crit_edge

for.body11.i.spi_ingenic_tx16.exit_crit_edge:     ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_ingenic_tx16.exit

if.end.i69:                                       ; preds = %for.body11.i
  %85 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %map.i, align 4
  %call15.i = call i32 @regmap_read(ptr noundef %86, i32 noundef 0, ptr noundef nonnull %val.i51) #6
  br i1 %tobool16.not.i, label %if.end.i69.if.end20.i_crit_edge, label %if.then17.i

if.end.i69.if.end20.i_crit_edge:                  ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %val.i51 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %val.i51, align 4
  %conv18.i = trunc i32 %88 to i16
  %arrayidx19.i = getelementptr i16, ptr %78, i32 %i.172.i
  %89 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv18.i, ptr %arrayidx19.i, align 2
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end.i69.if.end20.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.172.i, i32 %sub.i59)
  %cmp21.i = icmp ult i32 %i.172.i, %sub.i59
  br i1 %cmp21.i, label %if.then23.i, label %if.end20.i.for.inc34.i_crit_edge

if.end20.i.for.inc34.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc34.i

if.then23.i:                                      ; preds = %if.end20.i
  br i1 %tobool24.not.i, label %if.then23.i.cond.end29.i_crit_edge, label %cond.true25.i

if.then23.i.cond.end29.i_crit_edge:               ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end29.i

cond.true25.i:                                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i70 = add nuw i32 %i.172.i, %div67..i
  %arrayidx26.i = getelementptr i16, ptr %76, i32 %add.i70
  %90 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx26.i, align 2
  %conv27.i = zext i16 %91 to i32
  br label %cond.end29.i

cond.end29.i:                                     ; preds = %cond.true25.i, %if.then23.i.cond.end29.i_crit_edge
  %cond30.i = phi i32 [ %conv27.i, %cond.true25.i ], [ 0, %if.then23.i.cond.end29.i_crit_edge ]
  %92 = ptrtoint ptr %val.i51 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %cond30.i, ptr %val.i51, align 4
  %93 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %map.i, align 4
  %call32.i = call i32 @regmap_write(ptr noundef %94, i32 noundef 0, i32 noundef %cond30.i) #6
  br label %for.inc34.i

for.inc34.i:                                      ; preds = %cond.end29.i, %if.end20.i.for.inc34.i_crit_edge
  %inc35.i = add nuw nsw i32 %i.172.i, 1
  %exitcond76.not.i = icmp eq i32 %inc35.i, %umax.i60
  br i1 %exitcond76.not.i, label %for.inc34.i.spi_ingenic_tx16.exit_crit_edge, label %for.inc34.i.for.body11.i_crit_edge

for.inc34.i.for.body11.i_crit_edge:               ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11.i

for.inc34.i.spi_ingenic_tx16.exit_crit_edge:      ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_ingenic_tx16.exit

spi_ingenic_tx16.exit:                            ; preds = %for.inc34.i.spi_ingenic_tx16.exit_crit_edge, %for.body11.i.spi_ingenic_tx16.exit_crit_edge, %for.cond8.preheader.i58.spi_ingenic_tx16.exit_crit_edge
  %retval.0.i71 = phi i32 [ 0, %for.cond8.preheader.i58.spi_ingenic_tx16.exit_crit_edge ], [ %call12.i, %for.body11.i.spi_ingenic_tx16.exit_crit_edge ], [ 0, %for.inc34.i.spi_ingenic_tx16.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i51) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %95 = tail call i32 @llvm.umin.i32(i32 %74, i32 128) #6
  %96 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %xfer, align 4
  %rx_buf2.i74 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %98 = ptrtoint ptr %rx_buf2.i74 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rx_buf2.i74, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i72) #6
  %100 = ptrtoint ptr %val.i72 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %val.i72, align 4, !annotation !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp369.not.i = icmp eq i32 %95, 0
  br i1 %cmp369.not.i, label %if.end21.for.cond8.preheader.i78_crit_edge, label %for.body.lr.ph.i77

if.end21.for.cond8.preheader.i78_crit_edge:       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond8.preheader.i78

for.body.lr.ph.i77:                               ; preds = %if.end21
  %tobool.not.i75 = icmp eq ptr %97, null
  br label %for.body.i84

for.cond8.preheader.i78:                          ; preds = %cond.end6.i92.for.cond8.preheader.i78_crit_edge, %if.end21.for.cond8.preheader.i78_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp972.not.i = icmp eq i32 %74, 0
  br i1 %cmp972.not.i, label %for.cond8.preheader.i78.spi_ingenic_tx8.exit_crit_edge, label %for.body11.lr.ph.i83

for.cond8.preheader.i78.spi_ingenic_tx8.exit_crit_edge: ; preds = %for.cond8.preheader.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_ingenic_tx8.exit

for.body11.lr.ph.i83:                             ; preds = %for.cond8.preheader.i78
  %tobool16.not.i80 = icmp eq ptr %99, null
  %sub.i81 = sub i32 %74, %95
  %tobool24.not.i82 = icmp eq ptr %97, null
  br label %for.body11.i95

for.body.i84:                                     ; preds = %cond.end6.i92.for.body.i84_crit_edge, %for.body.lr.ph.i77
  %i.070.i = phi i32 [ 0, %for.body.lr.ph.i77 ], [ %inc.i90, %cond.end6.i92.for.body.i84_crit_edge ]
  br i1 %tobool.not.i75, label %for.body.i84.cond.end6.i92_crit_edge, label %cond.true4.i87

for.body.i84.cond.end6.i92_crit_edge:             ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end6.i92

cond.true4.i87:                                   ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i85 = getelementptr i8, ptr %97, i32 %i.070.i
  %101 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i85, align 1
  %conv.i86 = zext i8 %102 to i32
  br label %cond.end6.i92

cond.end6.i92:                                    ; preds = %cond.true4.i87, %for.body.i84.cond.end6.i92_crit_edge
  %cond7.i88 = phi i32 [ %conv.i86, %cond.true4.i87 ], [ 0, %for.body.i84.cond.end6.i92_crit_edge ]
  %103 = ptrtoint ptr %val.i72 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %cond7.i88, ptr %val.i72, align 4
  %104 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %map.i, align 4
  %call.i89 = tail call i32 @regmap_write(ptr noundef %105, i32 noundef 0, i32 noundef %cond7.i88) #6
  %inc.i90 = add nuw nsw i32 %i.070.i, 1
  %exitcond.not.i91 = icmp eq i32 %inc.i90, %95
  br i1 %exitcond.not.i91, label %cond.end6.i92.for.cond8.preheader.i78_crit_edge, label %cond.end6.i92.for.body.i84_crit_edge

cond.end6.i92.for.body.i84_crit_edge:             ; preds = %cond.end6.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i84

cond.end6.i92.for.cond8.preheader.i78_crit_edge:  ; preds = %cond.end6.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond8.preheader.i78

for.body11.i95:                                   ; preds = %for.inc34.i112.for.body11.i95_crit_edge, %for.body11.lr.ph.i83
  %i.173.i = phi i32 [ 0, %for.body11.lr.ph.i83 ], [ %inc35.i111, %for.inc34.i112.for.body11.i95_crit_edge ]
  %call12.i93 = call fastcc i32 @spi_ingenic_wait(ptr noundef %1, i32 noundef 16, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i93)
  %tobool13.not.i94 = icmp eq i32 %call12.i93, 0
  br i1 %tobool13.not.i94, label %if.end.i97, label %for.body11.i95.spi_ingenic_tx8.exit_crit_edge

for.body11.i95.spi_ingenic_tx8.exit_crit_edge:    ; preds = %for.body11.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_ingenic_tx8.exit

if.end.i97:                                       ; preds = %for.body11.i95
  %106 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %map.i, align 4
  %call15.i96 = call i32 @regmap_read(ptr noundef %107, i32 noundef 0, ptr noundef nonnull %val.i72) #6
  br i1 %tobool16.not.i80, label %if.end.i97.if.end20.i102_crit_edge, label %if.then17.i100

if.end.i97.if.end20.i102_crit_edge:               ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i102

if.then17.i100:                                   ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %val.i72 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val.i72, align 4
  %conv18.i98 = trunc i32 %109 to i8
  %arrayidx19.i99 = getelementptr i8, ptr %99, i32 %i.173.i
  %110 = ptrtoint ptr %arrayidx19.i99 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv18.i98, ptr %arrayidx19.i99, align 1
  br label %if.end20.i102

if.end20.i102:                                    ; preds = %if.then17.i100, %if.end.i97.if.end20.i102_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.173.i, i32 %sub.i81)
  %cmp21.i101 = icmp ult i32 %i.173.i, %sub.i81
  br i1 %cmp21.i101, label %if.then23.i103, label %if.end20.i102.for.inc34.i112_crit_edge

if.end20.i102.for.inc34.i112_crit_edge:           ; preds = %if.end20.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc34.i112

if.then23.i103:                                   ; preds = %if.end20.i102
  br i1 %tobool24.not.i82, label %if.then23.i103.cond.end29.i110_crit_edge, label %cond.true25.i107

if.then23.i103.cond.end29.i110_crit_edge:         ; preds = %if.then23.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end29.i110

cond.true25.i107:                                 ; preds = %if.then23.i103
  call void @__sanitizer_cov_trace_pc() #8
  %add.i104 = add i32 %i.173.i, %95
  %arrayidx26.i105 = getelementptr i8, ptr %97, i32 %add.i104
  %111 = ptrtoint ptr %arrayidx26.i105 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx26.i105, align 1
  %conv27.i106 = zext i8 %112 to i32
  br label %cond.end29.i110

cond.end29.i110:                                  ; preds = %cond.true25.i107, %if.then23.i103.cond.end29.i110_crit_edge
  %cond30.i108 = phi i32 [ %conv27.i106, %cond.true25.i107 ], [ 0, %if.then23.i103.cond.end29.i110_crit_edge ]
  %113 = ptrtoint ptr %val.i72 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %cond30.i108, ptr %val.i72, align 4
  %114 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %map.i, align 4
  %call32.i109 = call i32 @regmap_write(ptr noundef %115, i32 noundef 0, i32 noundef %cond30.i108) #6
  br label %for.inc34.i112

for.inc34.i112:                                   ; preds = %cond.end29.i110, %if.end20.i102.for.inc34.i112_crit_edge
  %inc35.i111 = add nuw i32 %i.173.i, 1
  %exitcond77.not.i = icmp eq i32 %inc35.i111, %74
  br i1 %exitcond77.not.i, label %for.inc34.i112.spi_ingenic_tx8.exit_crit_edge, label %for.inc34.i112.for.body11.i95_crit_edge

for.inc34.i112.for.body11.i95_crit_edge:          ; preds = %for.inc34.i112
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11.i95

for.inc34.i112.spi_ingenic_tx8.exit_crit_edge:    ; preds = %for.inc34.i112
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_ingenic_tx8.exit

spi_ingenic_tx8.exit:                             ; preds = %for.inc34.i112.spi_ingenic_tx8.exit_crit_edge, %for.body11.i95.spi_ingenic_tx8.exit_crit_edge, %for.cond8.preheader.i78.spi_ingenic_tx8.exit_crit_edge
  %retval.0.i113 = phi i32 [ 0, %for.cond8.preheader.i78.spi_ingenic_tx8.exit_crit_edge ], [ %call12.i93, %for.body11.i95.spi_ingenic_tx8.exit_crit_edge ], [ 0, %for.inc34.i112.spi_ingenic_tx8.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i72) #6
  br label %cleanup

cleanup:                                          ; preds = %spi_ingenic_tx8.exit, %spi_ingenic_tx16.exit, %spi_ingenic_tx32.exit, %if.end10.i, %dmaengine_desc_free.exit.i, %if.then.i
  %retval.0 = phi i32 [ %retval.0.i50, %spi_ingenic_tx32.exit ], [ %retval.0.i71, %spi_ingenic_tx16.exit ], [ %retval.0.i113, %spi_ingenic_tx8.exit ], [ %29, %if.then.i ], [ %42, %dmaengine_desc_free.exit.i ], [ 1, %if.end10.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_ingenic_release_dma(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %data, i32 0, i32 60
  %0 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_tx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_release_channel(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %data, i32 0, i32 61
  %2 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_rx, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_release_channel(ptr noundef nonnull %3) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_ingenic_wait(ptr nocapture noundef readonly %priv, i32 noundef %mask, i1 noundef zeroext %condition) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !73
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 74) #6
  %map = getelementptr inbounds %struct.ingenic_spi, ptr %priv, i32 0, i32 3
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %call864 = call i32 @regmap_read(ptr noundef %2, i32 noundef 12, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call864)
  %tobool.not65 = icmp eq i32 %call864, 0
  br i1 %tobool.not65, label %entry.lor.lhs.false_crit_edge, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then26.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9 = icmp eq i32 %and, 0
  %cmp12 = xor i1 %tobool9, %condition
  br i1 %cmp12, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call17 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %call8 = call i32 @regmap_read(ptr noundef %6, i32 noundef 12, ptr noundef nonnull %val) #6
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then26.lor.lhs.false_crit_edge, label %if.then26.lor.end_crit_edge

if.then26.lor.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

if.then26.lor.lhs.false_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  %call23 = call i32 @regmap_read(ptr noundef %8, i32 noundef 12, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool28.not = icmp eq i32 %call23, 0
  br i1 %tobool28.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and29 = and i32 %10, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30 = icmp eq i32 %and29, 0
  %cmp37 = xor i1 %tobool30, %condition
  %phi.sel = select i1 %cmp37, i32 0, i32 -110
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %if.then26.lor.end_crit_edge, %entry.lor.end_crit_edge
  %tobool28.not55 = phi i32 [ %call23, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call864, %entry.lor.end_crit_edge ], [ %call8, %if.then26.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %tobool28.not55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @spi_ingenic_prepare_dma(ptr noundef %ctlr, ptr noundef %chan, ptr nocapture noundef readonly %sg, i32 noundef %dir, i32 noundef %bits) unnamed_addr #2 align 64 {
entry:
  %cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #6
  %2 = getelementptr inbounds i8, ptr %cfg, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 36)
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dir, ptr %cfg, align 4
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %mem_res = getelementptr inbounds %struct.ingenic_spi, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %mem_res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem_res, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %src_addr, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %10 = load i32, ptr %6, align 4
  %11 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bits)
  %cmp = icmp ugt i32 %bits, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  %12 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %src_addr_width, align 4
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bits)
  %cmp4 = icmp ugt i32 %bits, 8
  %src_addr_width6 = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  br i1 %cmp4, label %if.then5, label %if.else10

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %src_addr_width6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %src_addr_width6, align 4
  br label %if.end15

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %src_addr_width6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %src_addr_width6, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else10, %if.then5, %if.then
  %.sink65 = phi i32 [ 2, %if.then5 ], [ 1, %if.else10 ], [ 4, %if.then ]
  %dst_addr_width7 = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  %15 = ptrtoint ptr %dst_addr_width7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink65, ptr %dst_addr_width7, align 4
  %dst_maxburst8 = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 6
  %16 = ptrtoint ptr %dst_maxburst8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink65, ptr %dst_maxburst8, align 4
  %src_maxburst9 = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 5
  %17 = ptrtoint ptr %src_maxburst9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink65, ptr %src_maxburst9, align 4
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end15.if.then17_crit_edge, label %dmaengine_slave_config.exit

if.end15.if.then17_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

dmaengine_slave_config.exit:                      ; preds = %if.end15
  %call.i = call i32 %21(ptr noundef %chan, ptr noundef nonnull %cfg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end19, label %dmaengine_slave_config.exit.if.then17_crit_edge

dmaengine_slave_config.exit.if.then17_crit_edge:  ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.then17:                                        ; preds = %dmaengine_slave_config.exit.if.then17_crit_edge, %if.end15.if.then17_crit_edge
  %retval.0.i61 = phi i32 [ %call.i, %dmaengine_slave_config.exit.if.then17_crit_edge ], [ -38, %if.end15.if.then17_crit_edge ]
  %22 = inttoptr i32 %retval.0.i61 to ptr
  br label %cleanup

if.end19:                                         ; preds = %dmaengine_slave_config.exit
  %23 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sg, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %sg, i32 0, i32 1
  %25 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nents, align 4
  %tobool.not.i54 = icmp eq ptr %chan, null
  br i1 %tobool.not.i54, label %if.end19.cleanup_crit_edge, label %lor.lhs.false.i

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end19
  %27 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chan, align 4
  %tobool1.not.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 39
  %29 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %30, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i55 = call ptr %30(ptr noundef nonnull %chan, ptr noundef %24, i32 noundef %26, i32 noundef %dir, i32 noundef 1, ptr noundef null) #6
  %tobool21.not = icmp eq ptr %call.i55, null
  br i1 %tobool21.not, label %dmaengine_prep_slave_sg.exit.cleanup_crit_edge, label %if.end24

dmaengine_prep_slave_sg.exit.cleanup_crit_edge:   ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp25 = icmp eq i32 %dir, 2
  br i1 %cmp25, label %if.then26, label %if.end24.if.end27_crit_edge

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i55, i32 0, i32 6
  %31 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @spi_ingenic_finalize_transfer, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i55, i32 0, i32 8
  %32 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ctlr, ptr %callback_param, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i55, i32 0, i32 4
  %33 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_submit.i, align 4
  %call.i57 = call i32 %34(ptr noundef nonnull %call.i55) #6
  %35 = call i32 @llvm.smin.i32(i32 %call.i57, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i57)
  %tobool30.not = icmp sgt i32 %call.i57, -1
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.then31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then31:                                        ; preds = %if.end27
  %flags.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i55, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %37, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %if.then31.dmaengine_desc_free.exit_crit_edge, label %if.end.i58

if.then31.dmaengine_desc_free.exit_crit_edge:     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_desc_free.exit

if.end.i58:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i55, i32 0, i32 5
  %38 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %desc_free.i, align 4
  %call1.i = call i32 %39(ptr noundef nonnull %call.i55) #6
  br label %dmaengine_desc_free.exit

dmaengine_desc_free.exit:                         ; preds = %if.end.i58, %if.then31.dmaengine_desc_free.exit_crit_edge
  %40 = inttoptr i32 %35 to ptr
  br label %cleanup

cleanup:                                          ; preds = %dmaengine_desc_free.exit, %if.end27.cleanup_crit_edge, %dmaengine_prep_slave_sg.exit.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then17
  %retval.0 = phi ptr [ %22, %if.then17 ], [ %40, %dmaengine_desc_free.exit ], [ %call.i55, %if.end27.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %dmaengine_prep_slave_sg.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %lor.lhs.false2.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %lor.lhs.false.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #6
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_ingenic_finalize_transfer(ptr noundef %controller) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @spi_finalize_current_transfer(ptr noundef %controller) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @spi_ingenic_can_dma(ptr nocapture noundef readonly %ctlr, ptr noundef %spi, ptr nocapture noundef readonly %xfer) #2 align 64 {
entry:
  %caps = alloca %struct.dma_slave_caps, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %caps) #6
  %0 = call ptr @memset(ptr %caps, i32 255, i32 36)
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 60
  %1 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_tx, align 8
  %call = call i32 @dma_get_slave_caps(ptr noundef %2, ptr noundef nonnull %caps) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.23, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_sg_burst = getelementptr inbounds %struct.dma_slave_caps, ptr %caps, i32 0, i32 5
  %3 = ptrtoint ptr %max_sg_burst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_sg_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.rhs

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %mul = shl i32 %4, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %mul)
  %cmp = icmp ule i32 %6, %mul
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ true, %if.end.cleanup_crit_edge ], [ %cmp, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %caps) #6
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_slave_caps(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !55, !56, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_spi_ingenic__244_478_spi_ingenic_driver_init6, !1, !"__initcall__kmod_spi_ingenic__244_478_spi_ingenic_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-ingenic.c", i32 478, i32 1}
!2 = !{ptr @__exitcall_spi_ingenic_driver_exit, !1, !"__exitcall_spi_ingenic_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description245, !4, !"__UNIQUE_ID_description245", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-ingenic.c", i32 479, i32 1}
!5 = !{ptr @__UNIQUE_ID_author246, !6, !"__UNIQUE_ID_author246", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-ingenic.c", i32 480, i32 1}
!7 = !{ptr @__UNIQUE_ID_author247, !8, !"__UNIQUE_ID_author247", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-ingenic.c", i32 481, i32 1}
!9 = !{ptr @__UNIQUE_ID_file248, !10, !"__UNIQUE_ID_file248", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-ingenic.c", i32 482, i32 1}
!11 = !{ptr @__UNIQUE_ID_license249, !10, !"__UNIQUE_ID_license249", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-ingenic.c", i32 472, i32 11}
!14 = !{ptr @spi_ingenic_driver, !15, !"spi_ingenic_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-ingenic.c", i32 470, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-ingenic.c", i32 387, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @spi_ingenic_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @spi_ingenic_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-ingenic.c", i32 393, i32 3}
!26 = !{ptr @spi_ingenic_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @spi_ingenic_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-ingenic.c", i32 403, i32 10}
!30 = !{ptr @spi_ingenic_probe._key, !31, !"_key", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-ingenic.c", i32 410, i32 14}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-ingenic.c", i32 436, i32 3}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @spi_ingenic_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @spi_ingenic_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-ingenic.c", i32 440, i32 3}
!40 = !{ptr @spi_ingenic_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @spi_ingenic_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-ingenic.c", i32 446, i32 3}
!44 = !{ptr @spi_ingenic_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @spi_ingenic_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @spi_ingenic_regmap_config, !47, !"spi_ingenic_regmap_config", i1 false, i1 false}
!47 = !{!"../drivers/spi/spi-ingenic.c", i32 369, i32 35}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-ingenic.c", i32 345, i32 48}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/spi/spi-ingenic.c", i32 349, i32 48}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/spi/spi-ingenic.c", i32 334, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @spi_ingenic_can_dma._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @spi_ingenic_can_dma._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @spi_ingenic_of_match, !58, !"spi_ingenic_of_match", i1 false, i1 false}
!58 = !{!"../drivers/spi/spi-ingenic.c", i32 463, i32 34}
!59 = !{ptr @jz4750_soc_info, !60, !"jz4750_soc_info", i1 false, i1 false}
!60 = !{!"../drivers/spi/spi-ingenic.c", i32 451, i32 33}
!61 = !{ptr @jz4780_soc_info, !62, !"jz4780_soc_info", i1 false, i1 false}
!62 = !{!"../drivers/spi/spi-ingenic.c", i32 457, i32 33}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i8 0, i8 2}
!73 = !{!"auto-init"}
