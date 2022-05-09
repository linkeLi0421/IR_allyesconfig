; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-npcm-fiu.c_pt.bc'
source_filename = "../drivers/spi/spi-npcm-fiu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fiu_data = type { ptr, i32 }
%struct.npcm_fiu_info = type { ptr, i32, i32, i32 }
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
%struct.npcm_fiu_spi = type { [4 x %struct.npcm_fiu_chip], ptr, %struct.spi_mem_op, ptr, ptr, i32, ptr, ptr, i8 }
%struct.npcm_fiu_chip = type { ptr, ptr, i32, i32 }
%struct.spi_mem_op = type { %struct.anon.71, %struct.anon.72, %struct.anon.73, %struct.anon.74 }
%struct.anon.71 = type { i8, i8, i8, i16 }
%struct.anon.72 = type { i8, i8, i8, i64 }
%struct.anon.73 = type { i8, i8, i8 }
%struct.anon.74 = type { i8, i8, i32, i32, %union.anon.75 }
%union.anon.75 = type { ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_mem_dirmap_desc = type { ptr, %struct.spi_mem_dirmap_info, i32, ptr }
%struct.spi_mem_dirmap_info = type { %struct.spi_mem_op, i64, i64 }

@__initcall__kmod_spi_npcm_fiu__231_764_npcm_fiu_driver_init6 = internal global ptr @npcm_fiu_driver_init, section ".initcall6.init", align 4
@npcm_fiu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @npcm_fiu_probe, ptr @npcm_fiu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr @platform_bus_type, ptr null, ptr null, i8 0, i32 0, ptr @npcm_fiu_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_npcm_fiu_driver_exit = internal global ptr @npcm_fiu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description232 = internal constant [76 x i8] c"spi_npcm_fiu.description=Nuvoton FLASH Interface Unit SPI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [60 x i8] c"spi_npcm_fiu.author=Tomer Maimon <tomer.maimon@nuvoton.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [43 x i8] c"spi_npcm_fiu.file=drivers/spi/spi-npcm-fiu\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [28 x i8] c"spi_npcm_fiu.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NPCM-FIU\00", [23 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@npcm_fiu_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,npcm750-fiu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @npxm7xx_fiu_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@npcm_fiu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 690, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No compatible OF match\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"npcm_fiu_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/spi/spi-npcm-fiu.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@npcm_fiu_probe._entry_ptr = internal global ptr @npcm_fiu_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fiu\00", [28 x i8] zeroinitializer }, align 32
@npcm_fiu_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 697, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid platform device id: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@npcm_fiu_probe._entry_ptr.9 = internal global ptr @npcm_fiu_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@npcm_fiu_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@npcm_mtd_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 128, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"spi_npcm_fiu:712:(&npcm_mtd_regmap_config)->lock\00", [47 x i8] zeroinitializer }, align 32
@npcm_fiu_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 714, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to create regmap\0A\00", [39 x i8] zeroinitializer }, align 32
@npcm_fiu_probe._entry_ptr.14 = internal global ptr @npcm_fiu_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nuvoton,spix-mode\00", [46 x i8] zeroinitializer }, align 32
@npcm_fiu_mem_ops = internal constant { %struct.spi_controller_mem_ops, [60 x i8] } { %struct.spi_controller_mem_ops { ptr null, ptr null, ptr @npcm_fiu_exec_op, ptr null, ptr @npcm_fiu_dirmap_create, ptr null, ptr @npcm_fiu_direct_read, ptr @npcm_fiu_direct_write, ptr null }, [60 x i8] zeroinitializer }, align 32
@npcm_fiu_exec_op.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 -122, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_npcm_fiu\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"npcm_fiu_exec_op\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cmd:%#x mode:%d.%d.%d.%d addr:%#llx len:%#x\0A\00", [51 x i8] zeroinitializer }, align 32
@npcm_fiu_exec_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 545, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed setting %lu frequency, stay at %lu frequency\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@npcm_fiu_exec_op._entry_ptr = internal global ptr @npcm_fiu_exec_op._entry, section ".printk_index", align 4
@npcm_fiu_dirmap_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 593, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Reserved memory not defined, direct read disabled\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"npcm_fiu_dirmap_create\00", [41 x i8] zeroinitializer }, align 32
@npcm_fiu_dirmap_create._entry_ptr = internal global ptr @npcm_fiu_dirmap_create._entry, section ".printk_index", align 4
@npcm_fiu_dirmap_create._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 611, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Error mapping memory region, direct read disabled\0A\00", [45 x i8] zeroinitializer }, align 32
@npcm_fiu_dirmap_create._entry_ptr.26 = internal global ptr @npcm_fiu_dirmap_create._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nuvoton,npcm750-fiu\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nuvoton,npcm750-gcr\00", [44 x i8] zeroinitializer }, align 32
@npcm_fiu_dirmap_create._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str.3, i32 621, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Didn't find nuvoton,npcm750-gcr, direct read disabled\0A\00", [41 x i8] zeroinitializer }, align 32
@npcm_fiu_dirmap_create._entry_ptr.31 = internal global ptr @npcm_fiu_dirmap_create._entry.29, section ".printk_index", align 4
@npxm7xx_fiu_data = internal constant { %struct.fiu_data, [24 x i8] } { %struct.fiu_data { ptr @npxm7xx_fiu_info, i32 3 }, [24 x i8] zeroinitializer }, align 32
@npxm7xx_fiu_info = internal constant { [3 x %struct.npcm_fiu_info], [48 x i8] } { [3 x %struct.npcm_fiu_info] [%struct.npcm_fiu_info { ptr @.str.32, i32 0, i32 134217728, i32 2 }, %struct.npcm_fiu_info { ptr @.str.33, i32 1, i32 134217728, i32 4 }, %struct.npcm_fiu_info { ptr @.str.34, i32 2, i32 16777216, i32 2 }], [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FIU0\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FIU3\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FIUX\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"npcm_fiu_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 755, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 757, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"npcm_fiu_dt_ids\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 666, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 690, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 695, i32 37 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 697, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 706, i32 59 }
@___asan_gen_.74 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [23 x i8] c"npcm_mtd_regmap_config\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 238, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 711, i32 16 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 714, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 719, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 725, i32 13 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"npcm_fiu_mem_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 659, i32 44 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 533, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 544, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 593, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 611, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 617, i32 49 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 619, i32 39 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 621, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"npxm7xx_fiu_data\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 212, i32 30 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"npxm7xx_fiu_info\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 204, i32 35 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 205, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 207, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private constant [30 x i8] c"../drivers/spi/spi-npcm-fiu.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 209, i32 11 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_npcm_fiu_driver_exit, ptr @__initcall__kmod_spi_npcm_fiu__231_764_npcm_fiu_driver_init6, ptr @npcm_fiu_dirmap_create._entry, ptr @npcm_fiu_dirmap_create._entry.24, ptr @npcm_fiu_dirmap_create._entry.29, ptr @npcm_fiu_dirmap_create._entry_ptr, ptr @npcm_fiu_dirmap_create._entry_ptr.26, ptr @npcm_fiu_dirmap_create._entry_ptr.31, ptr @npcm_fiu_driver_exit, ptr @npcm_fiu_exec_op._entry, ptr @npcm_fiu_exec_op._entry_ptr, ptr @npcm_fiu_probe._entry, ptr @npcm_fiu_probe._entry.12, ptr @npcm_fiu_probe._entry.7, ptr @npcm_fiu_probe._entry_ptr, ptr @npcm_fiu_probe._entry_ptr.14, ptr @npcm_fiu_probe._entry_ptr.9, ptr @npcm_fiu_driver, ptr @.str, ptr @npcm_fiu_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @npcm_fiu_probe._key, ptr @npcm_mtd_regmap_config, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @npcm_fiu_mem_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @npxm7xx_fiu_data, ptr @npxm7xx_fiu_info, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_fiu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_fiu_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_fiu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_fiu_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_fiu_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_mtd_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_fiu_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_fiu_mem_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_fiu_exec_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_fiu_dirmap_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_fiu_dirmap_create._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_fiu_dirmap_create._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npxm7xx_fiu_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npxm7xx_fiu_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_fiu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @npcm_fiu_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @npcm_fiu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @npcm_fiu_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_fiu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev1, i32 noundef 144, i1 noundef zeroext false) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @of_match_device(ptr noundef nonnull @npcm_fiu_dt_ids, ptr noundef %dev1) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call3, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %lor.lhs.false.do.end_crit_edge, label %if.end7

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call9 = tail call i32 @of_alias_get_id(ptr noundef %5, ptr noundef nonnull @.str.6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end7.do.end15_crit_edge, label %lor.lhs.false10

if.end7.do.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

lor.lhs.false10:                                  ; preds = %if.end7
  %fiu_max = getelementptr inbounds %struct.fiu_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %fiu_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fiu_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %7)
  %cmp11.not = icmp slt i32 %call9, %7
  br i1 %cmp11.not, label %if.end16, label %lor.lhs.false10.do.end15_crit_edge

lor.lhs.false10.do.end15_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.end15:                                         ; preds = %lor.lhs.false10.do.end15_crit_edge, %if.end7.do.end15_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call9) #9
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false10
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr %struct.npcm_fiu_info, ptr %9, i32 %call9
  %info = getelementptr inbounds %struct.npcm_fiu_spi, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx, ptr %info, align 8
  %driver_data.i.i110 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i110 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %driver_data.i.i110, align 4
  %dev17 = getelementptr inbounds %struct.npcm_fiu_spi, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev1, ptr %dev17, align 4
  %call18 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.10) #6
  %call19 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call18) #6
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %call24 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call19, ptr noundef nonnull @npcm_mtd_regmap_config, ptr noundef nonnull @npcm_fiu_probe._key, ptr noundef nonnull @.str.11) #6
  %regmap = getelementptr inbounds %struct.npcm_fiu_spi, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call24, ptr %regmap, align 4
  %cmp.i111 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %call34 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.15) #6
  %res_mem = getelementptr inbounds %struct.npcm_fiu_spi, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %res_mem to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call34, ptr %res_mem, align 8
  %call35 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.npcm_fiu_spi, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call35, ptr %clk, align 8
  %cmp.i112 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end33
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %call.i113 = tail call ptr @of_find_property(ptr noundef %22, ptr noundef nonnull @.str.16, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i113, null
  %spix_mode = getelementptr inbounds %struct.npcm_fiu_spi, ptr %1, i32 0, i32 8
  %frombool = zext i1 %tobool.i to i8
  %23 = ptrtoint ptr %spix_mode to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool, ptr %spix_mode, align 4
  %24 = ptrtoint ptr %driver_data.i.i110 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %1, ptr %driver_data.i.i110, align 4
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk, align 8
  %call.i115 = tail call i32 @clk_prepare(ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool.not.i = icmp eq i32 %call.i115, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end41.clk_prepare_enable.exit_crit_edge

if.end41.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end41
  %call1.i = tail call i32 @clk_enable(ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %26) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end41.clk_prepare_enable.exit_crit_edge
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3840, ptr %mode_bits, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %28 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @npcm_fiu_setup, ptr %setup, align 4
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %bus_num, align 8
  %mem_ops = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 53
  %30 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @npcm_fiu_mem_ops, ptr %mem_ops, align 4
  %31 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %info, align 8
  %max_cs = getelementptr inbounds %struct.npcm_fiu_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %max_cs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_cs, align 4
  %conv = trunc i32 %34 to i16
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %35 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv, ptr %num_chipselect, align 2
  %36 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node, align 8
  %of_node49 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %38 = ptrtoint ptr %of_node49 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %of_node49, align 8
  %call50 = tail call i32 @devm_spi_register_controller(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %clk_prepare_enable.exit.cleanup_crit_edge, label %if.then52

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then52:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %40) #6
  tail call void @clk_unprepare(ptr noundef %40) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %clk_prepare_enable.exit.cleanup_crit_edge, %if.then38, %do.end30, %if.then21, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end15 ], [ %13, %if.then21 ], [ %17, %do.end30 ], [ %20, %if.then38 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call50, %if.then52 ], [ 0, %clk_prepare_enable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_fiu_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.npcm_fiu_spi, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_fiu_setup(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %4 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_select, align 4
  %idxprom = zext i8 %5 to i32
  %fiu2 = getelementptr [4 x %struct.npcm_fiu_chip], ptr %3, i32 0, i32 %idxprom, i32 1
  %6 = ptrtoint ptr %fiu2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %fiu2, align 4
  %7 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %7 to i32
  %chipselect = getelementptr [4 x %struct.npcm_fiu_chip], ptr %3, i32 0, i32 %idxprom, i32 3
  %8 = ptrtoint ptr %chipselect to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %chipselect, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %9 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_speed_hz, align 8
  %clkrate = getelementptr [4 x %struct.npcm_fiu_chip], ptr %3, i32 0, i32 %idxprom, i32 2
  %11 = ptrtoint ptr %clkrate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %clkrate, align 4
  %clk = getelementptr inbounds %struct.npcm_fiu_spi, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 8
  %call4 = tail call i32 @clk_get_rate(ptr noundef %13) #6
  %clkrate5 = getelementptr inbounds %struct.npcm_fiu_spi, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %clkrate5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call4, ptr %clkrate5, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_fiu_exec_op(ptr nocapture noundef readonly %mem, ptr noundef readonly %op) #2 align 64 {
entry:
  %buf_addr = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_select, align 4
  %idxprom = zext i8 %7 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @npcm_fiu_exec_op.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@npcm_fiu_exec_op, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !93

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.npcm_fiu_spi, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %10 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %opcode, align 4
  %conv = zext i16 %11 to i32
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %12 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buswidth, align 1
  %conv8 = zext i8 %13 to i32
  %buswidth9 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %buswidth9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buswidth9, align 1
  %conv10 = zext i8 %15 to i32
  %buswidth11 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %buswidth11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buswidth11, align 1
  %conv12 = zext i8 %17 to i32
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 4
  %conv14 = zext i8 %19 to i32
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %val, align 8
  %nbytes = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbytes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @npcm_fiu_exec_op.__UNIQUE_ID_ddebug230, ptr noundef %9, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14, i64 noundef %21, i32 noundef %23) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %spix_mode = getelementptr inbounds %struct.npcm_fiu_spi, ptr %5, i32 0, i32 8
  %24 = ptrtoint ptr %spix_mode to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %spix_mode, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool17.not = icmp eq i8 %25, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %addr19 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %26 = ptrtoint ptr %addr19 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %addr19, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %27)
  %cmp = icmp ugt i8 %27, 4
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end24

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  %clkrate = getelementptr inbounds %struct.npcm_fiu_spi, ptr %5, i32 0, i32 5
  %28 = ptrtoint ptr %clkrate to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clkrate, align 8
  %clkrate25 = getelementptr [4 x %struct.npcm_fiu_chip], ptr %5, i32 0, i32 %idxprom, i32 2
  %30 = ptrtoint ptr %clkrate25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clkrate25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp26.not = icmp eq i32 %29, %31
  br i1 %cmp26.not, label %if.end24.if.end43_crit_edge, label %if.then28

if.end24.if.end43_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then28:                                        ; preds = %if.end24
  %clk = getelementptr inbounds %struct.npcm_fiu_spi, ptr %5, i32 0, i32 7
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 8
  %call30 = tail call i32 @clk_set_rate(ptr noundef %33, i32 noundef %31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end36, label %if.else

do.end36:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %dev37 = getelementptr inbounds %struct.npcm_fiu_spi, ptr %5, i32 0, i32 6
  %34 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev37, align 4
  %36 = ptrtoint ptr %clkrate25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %clkrate25, align 4
  %38 = ptrtoint ptr %clkrate to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %clkrate, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.20, i32 noundef %37, i32 noundef %39) #9
  br label %if.end43

if.else:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %clkrate25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %clkrate25, align 4
  %42 = ptrtoint ptr %clkrate to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %clkrate, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.else, %do.end36, %if.end24.if.end43_crit_edge
  %ret.0 = phi i32 [ %call30, %do.end36 ], [ %call30, %if.else ], [ 0, %if.end24.if.end43_crit_edge ]
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp45 = icmp eq i32 %44, 1
  %45 = ptrtoint ptr %addr19 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %addr19, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool50.not = icmp eq i8 %46, 0
  br i1 %cmp45, label %if.then47, label %if.else63

if.then47:                                        ; preds = %if.end43
  %buf53 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %47 = ptrtoint ptr %buf53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buf53, align 4
  br i1 %tobool50.not, label %if.then51, label %if.else60

if.then51:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %val55 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %val55 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %val55, align 8
  %conv56 = trunc i64 %50 to i32
  %nbytes58 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %nbytes58 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nbytes58, align 4
  %call59 = tail call fastcc i32 @npcm_fiu_uma_read(ptr noundef %mem, ptr noundef %op, i32 noundef %conv56, i1 noundef zeroext false, ptr noundef %48, i32 noundef %52)
  br label %cleanup

if.else60:                                        ; preds = %if.then47
  %nbytes.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nbytes.i, align 4
  %val.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %if.end6.i.do.body.i_crit_edge, %if.else60
  %i.0.i = phi i32 [ 0, %if.else60 ], [ %add7.i, %if.end6.i.do.body.i_crit_edge ]
  %currlen.0.i = phi i32 [ %54, %if.else60 ], [ %sub.i, %if.end6.i.do.body.i_crit_edge ]
  %55 = ptrtoint ptr %val.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %val.i, align 8
  %conv.i = trunc i64 %56 to i32
  %add.i = add i32 %i.0.i, %conv.i
  %57 = tail call i32 @llvm.smin.i32(i32 %currlen.0.i, i32 16) #6
  %add.ptr.i = getelementptr i8, ptr %48, i32 %i.0.i
  %call.i = tail call fastcc i32 @npcm_fiu_uma_read(ptr noundef %mem, ptr noundef %op, i32 noundef %add.i, i1 noundef zeroext true, ptr noundef %add.ptr.i, i32 noundef %57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %do.body.i
  %add7.i = add i32 %57, %i.0.i
  %sub.i = add i32 %currlen.0.i, -16
  %cmp8.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp8.i, label %if.end6.i.do.body.i_crit_edge, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i.do.body.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.else63:                                        ; preds = %if.end43
  br i1 %tobool50.not, label %land.lhs.true, label %if.else63.land.lhs.true80_crit_edge

if.else63.land.lhs.true80_crit_edge:              ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true80

land.lhs.true:                                    ; preds = %if.else63
  %nbytes68 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %58 = ptrtoint ptr %nbytes68 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nbytes68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool69.not = icmp eq i32 %59, 0
  br i1 %tobool69.not, label %if.then70, label %land.lhs.true.if.end75_crit_edge

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then70:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %opcode72 = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %60 = ptrtoint ptr %opcode72 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %opcode72, align 4
  %conv73 = trunc i16 %61 to i8
  %call74 = tail call fastcc i32 @npcm_fiu_uma_write(ptr noundef %mem, ptr noundef %op, i8 noundef zeroext %conv73, i1 noundef zeroext false, ptr noundef null, i32 noundef 0)
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %land.lhs.true.if.end75_crit_edge
  %ret.1.ph = phi i32 [ %call74, %if.then70 ], [ %ret.0, %land.lhs.true.if.end75_crit_edge ]
  %62 = ptrtoint ptr %addr19 to i32
  call void @__asan_load1_noabort(i32 %62)
  %.pr = load i8, ptr %addr19, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool79.not = icmp eq i8 %.pr, 0
  br i1 %tobool79.not, label %if.end75.land.lhs.true107_crit_edge, label %if.end75.land.lhs.true80_crit_edge

if.end75.land.lhs.true80_crit_edge:               ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true80

if.end75.land.lhs.true107_crit_edge:              ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true107

land.lhs.true80:                                  ; preds = %if.end75.land.lhs.true80_crit_edge, %if.else63.land.lhs.true80_crit_edge
  %ret.1202 = phi i32 [ %ret.1.ph, %if.end75.land.lhs.true80_crit_edge ], [ %ret.0, %if.else63.land.lhs.true80_crit_edge ]
  %63 = phi i8 [ %.pr, %if.end75.land.lhs.true80_crit_edge ], [ %46, %if.else63.land.lhs.true80_crit_edge ]
  %nbytes82 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %64 = ptrtoint ptr %nbytes82 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nbytes82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool83.not = icmp eq i32 %65, 0
  br i1 %tobool83.not, label %for.body.preheader, label %land.lhs.true80.if.end103_crit_edge

land.lhs.true80.if.end103_crit_edge:              ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

for.body.preheader:                               ; preds = %land.lhs.true80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_addr) #6
  %conv91 = zext i8 %63 to i32
  %val87 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %66 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %buf_addr, align 4
  %67 = ptrtoint ptr %val87 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %val87, align 8
  %conv88 = trunc i64 %68 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0216.in = phi i32 [ %i.0216, %for.body.for.body_crit_edge ], [ %conv91, %for.body.preheader ]
  %addr85.0215 = phi i32 [ %shr, %for.body.for.body_crit_edge ], [ %conv88, %for.body.preheader ]
  %i.0216 = add nsw i32 %i.0216.in, -1
  %conv94 = trunc i32 %addr85.0215 to i8
  %arrayidx95 = getelementptr [4 x i8], ptr %buf_addr, i32 0, i32 %i.0216
  %69 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv94, ptr %arrayidx95, align 1
  %shr = lshr i32 %addr85.0215, 8
  %cmp92 = icmp ugt i32 %i.0216.in, 1
  br i1 %cmp92, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %opcode97 = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %70 = ptrtoint ptr %opcode97 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %opcode97, align 4
  %conv98 = trunc i16 %71 to i8
  %call102 = call fastcc i32 @npcm_fiu_uma_write(ptr noundef %mem, ptr noundef %op, i8 noundef zeroext %conv98, i1 noundef zeroext false, ptr noundef nonnull %buf_addr, i32 noundef %conv91)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_addr) #6
  br label %if.end103

if.end103:                                        ; preds = %for.end, %land.lhs.true80.if.end103_crit_edge
  %ret.2.ph = phi i32 [ %call102, %for.end ], [ %ret.1202, %land.lhs.true80.if.end103_crit_edge ]
  %72 = ptrtoint ptr %addr19 to i32
  call void @__asan_load1_noabort(i32 %72)
  %.pr203 = load i8, ptr %addr19, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr203)
  %tobool106.not = icmp eq i8 %.pr203, 0
  br i1 %tobool106.not, label %if.end103.land.lhs.true107_crit_edge, label %if.end103.land.lhs.true125_crit_edge

if.end103.land.lhs.true125_crit_edge:             ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true125

if.end103.land.lhs.true107_crit_edge:             ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true107

land.lhs.true107:                                 ; preds = %if.end103.land.lhs.true107_crit_edge, %if.end75.land.lhs.true107_crit_edge
  %ret.2206 = phi i32 [ %ret.2.ph, %if.end103.land.lhs.true107_crit_edge ], [ %ret.1.ph, %if.end75.land.lhs.true107_crit_edge ]
  %nbytes109 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %73 = ptrtoint ptr %nbytes109 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nbytes109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool110.not = icmp eq i32 %74, 0
  br i1 %tobool110.not, label %land.lhs.true107.if.end120_crit_edge, label %if.then111

land.lhs.true107.if.end120_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120

if.then111:                                       ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #8
  %opcode113 = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %75 = ptrtoint ptr %opcode113 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %opcode113, align 4
  %conv114 = trunc i16 %76 to i8
  %buf116 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %77 = ptrtoint ptr %buf116 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buf116, align 4
  %call119 = tail call fastcc i32 @npcm_fiu_uma_write(ptr noundef %mem, ptr noundef %op, i8 noundef zeroext %conv114, i1 noundef zeroext false, ptr noundef %78, i32 noundef %74)
  br label %if.end120

if.end120:                                        ; preds = %if.then111, %land.lhs.true107.if.end120_crit_edge
  %ret.3.ph = phi i32 [ %ret.2206, %land.lhs.true107.if.end120_crit_edge ], [ %call119, %if.then111 ]
  %79 = ptrtoint ptr %addr19 to i32
  call void @__asan_load1_noabort(i32 %79)
  %.pr207 = load i8, ptr %addr19, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr207)
  %tobool124.not = icmp eq i8 %.pr207, 0
  br i1 %tobool124.not, label %if.end120.cleanup_crit_edge, label %if.end120.land.lhs.true125_crit_edge

if.end120.land.lhs.true125_crit_edge:             ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true125

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true125:                                 ; preds = %if.end120.land.lhs.true125_crit_edge, %if.end103.land.lhs.true125_crit_edge
  %ret.3210 = phi i32 [ %ret.3.ph, %if.end120.land.lhs.true125_crit_edge ], [ %ret.2.ph, %if.end103.land.lhs.true125_crit_edge ]
  %nbytes127 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %80 = ptrtoint ptr %nbytes127 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nbytes127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool128.not = icmp eq i32 %81, 0
  br i1 %tobool128.not, label %land.lhs.true125.cleanup_crit_edge, label %if.then129

land.lhs.true125.cleanup_crit_edge:               ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then129:                                       ; preds = %land.lhs.true125
  %82 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mem, align 4
  %master.i = getelementptr inbounds %struct.spi_device, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 8
  %86 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %driver_data.i.i.i, align 4
  %buf.i192 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %88 = ptrtoint ptr %buf.i192 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %buf.i192, align 4
  %div57.i = lshr i32 %81, 4
  %rem.i = and i32 %81, 15
  %regmap.i = getelementptr inbounds %struct.npcm_fiu_spi, ptr %87, i32 0, i32 4
  %90 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap.i, align 4
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %83, i32 0, i32 4
  %92 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %chip_select.i, align 4
  %conv.i194 = zext i8 %93 to i32
  %shl.i = shl nuw nsw i32 %conv.i194, 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 12, i32 noundef 768, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %94 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap.i, align 4
  %call.i58.i = tail call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef 12, i32 noundef 65536, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %opcode.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %96 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %opcode.i, align 4
  %conv9.i = trunc i16 %97 to i8
  %call10.i = tail call fastcc i32 @npcm_fiu_uma_write(ptr noundef %mem, ptr noundef %op, i8 noundef zeroext %conv9.i, i1 noundef zeroext true, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i195 = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i195, label %for.cond.preheader.i, label %if.then129.cleanup_crit_edge

if.then129.cleanup_crit_edge:                     ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.then129
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %81)
  %cmp61.not.i = icmp ult i32 %81, 16
  br i1 %cmp61.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div57.i, i32 1) #6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end16.i.for.body.i_crit_edge, %for.body.preheader.i
  %idx.063.i = phi i32 [ %inc.i, %if.end16.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %data.062.i = phi ptr [ %add.ptr.i196, %if.end16.i.for.body.i_crit_edge ], [ %89, %for.body.preheader.i ]
  %98 = ptrtoint ptr %data.062.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %data.062.i, align 1
  %arrayidx12.i = getelementptr i8, ptr %data.062.i, i32 1
  %call13.i = tail call fastcc i32 @npcm_fiu_uma_write(ptr noundef %mem, ptr noundef %op, i8 noundef zeroext %99, i1 noundef zeroext false, ptr noundef %arrayidx12.i, i32 noundef 15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16.i:                                       ; preds = %for.body.i
  %add.ptr.i196 = getelementptr i8, ptr %data.062.i, i32 16
  %inc.i = add nuw nsw i32 %idx.063.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %if.end16.i.for.end.i_crit_edge, label %if.end16.i.for.body.i_crit_edge

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end16.i.for.end.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end16.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %data.0.lcssa.i = phi ptr [ %89, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add.ptr.i196, %if.end16.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp17.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp17.not.i, label %for.end.i.if.end26.i_crit_edge, label %if.then19.i

for.end.i.if.end26.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then19.i:                                      ; preds = %for.end.i
  %100 = ptrtoint ptr %data.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %data.0.lcssa.i, align 1
  %arrayidx21.i = getelementptr i8, ptr %data.0.lcssa.i, i32 1
  %sub.i197 = add nsw i32 %rem.i, -1
  %call22.i = tail call fastcc i32 @npcm_fiu_uma_write(ptr noundef %mem, ptr noundef %op, i8 noundef zeroext %101, i1 noundef zeroext false, ptr noundef %arrayidx21.i, i32 noundef %sub.i197) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then19.i.if.end26.i_crit_edge, label %if.then19.i.cleanup_crit_edge

if.then19.i.cleanup_crit_edge:                    ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19.i.if.end26.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then19.i.if.end26.i_crit_edge, %for.end.i.if.end26.i_crit_edge
  %102 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap.i, align 4
  %call.i59.i = tail call i32 @regmap_update_bits_base(ptr noundef %103, i32 noundef 12, i32 noundef 65536, i32 noundef 65536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end26.i, %if.then19.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.then129.cleanup_crit_edge, %land.lhs.true125.cleanup_crit_edge, %if.end120.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %if.then51, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %lor.lhs.false.cleanup_crit_edge ], [ -524, %do.end.cleanup_crit_edge ], [ %call59, %if.then51 ], [ %ret.3210, %land.lhs.true125.cleanup_crit_edge ], [ %ret.3.ph, %if.end120.cleanup_crit_edge ], [ 0, %if.end26.i ], [ %call10.i, %if.then129.cleanup_crit_edge ], [ %call22.i, %if.then19.i.cleanup_crit_edge ], [ 0, %if.end6.i.cleanup_crit_edge ], [ %call.i, %do.body.i.cleanup_crit_edge ], [ %call13.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_fiu_dirmap_create(ptr nocapture noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %chip_select, align 4
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr [4 x %struct.npcm_fiu_chip], ptr %7, i32 0, i32 %idxprom
  %res_mem = getelementptr inbounds %struct.npcm_fiu_spi, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %res_mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %res_mem, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.npcm_fiu_spi, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.22) #9
  %nodirmap = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 2
  %14 = ptrtoint ptr %nodirmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %nodirmap, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %spix_mode = getelementptr inbounds %struct.npcm_fiu_spi, ptr %7, i32 0, i32 8
  %15 = ptrtoint ptr %spix_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %spix_mode, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool4.not = icmp eq i8 %16, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %dir = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp = icmp eq i32 %18, 2
  br i1 %cmp, label %if.then5, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %nodirmap6 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 2
  %19 = ptrtoint ptr %nodirmap6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %nodirmap6, align 8
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %21, null
  br i1 %tobool8.not, label %if.then9, label %if.end7.if.end29_crit_edge

if.end7.if.end29_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then9:                                         ; preds = %if.end7
  %dev10 = getelementptr inbounds %struct.npcm_fiu_spi, ptr %7, i32 0, i32 6
  %22 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev10, align 4
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %11, align 4
  %info12 = getelementptr inbounds %struct.npcm_fiu_spi, ptr %7, i32 0, i32 1
  %26 = ptrtoint ptr %info12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info12, align 8
  %max_map_size = getelementptr inbounds %struct.npcm_fiu_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %max_map_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_map_size, align 4
  %mul = mul i32 %29, %idxprom
  %add = add i32 %mul, %25
  %length = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %length, align 8
  %conv17 = trunc i64 %31 to i32
  %call18 = tail call ptr @devm_ioremap(ptr noundef %23, i32 noundef %add, i32 noundef %conv17) #6
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call18, ptr %arrayidx, align 4
  %tobool21.not = icmp eq ptr %call18, null
  br i1 %tobool21.not, label %do.end25, label %if.then9.if.end29_crit_edge

if.then9.if.end29_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.end25:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.25) #9
  %nodirmap27 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 2
  %35 = ptrtoint ptr %nodirmap27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %nodirmap27, align 8
  br label %cleanup

if.end29:                                         ; preds = %if.then9.if.end29_crit_edge, %if.end7.if.end29_crit_edge
  %dev30 = getelementptr inbounds %struct.npcm_fiu_spi, ptr %7, i32 0, i32 6
  %36 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev30, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node, align 8
  %call31 = tail call i32 @of_device_is_compatible(ptr noundef %39, ptr noundef nonnull @.str.27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end29.if.end44_crit_edge, label %if.then33

if.end29.if.end44_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then33:                                        ; preds = %if.end29
  %call34 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.28) #6
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.30) #9
  %nodirmap41 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 2
  %42 = ptrtoint ptr %nodirmap41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %nodirmap41, align 8
  br label %cleanup

if.end42:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call34, i32 noundef 156, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %if.end29.if.end44_crit_edge
  %info45 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1
  %dir48 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %dir48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dir48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp49 = icmp eq i32 %44, 1
  br i1 %cmp49, label %if.then51, label %if.else58

if.then51:                                        ; preds = %if.end44
  %45 = ptrtoint ptr %spix_mode to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %spix_mode, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool53.not = icmp eq i8 %46, 0
  br i1 %tobool53.not, label %if.then54, label %if.else

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @npcm_fiu_set_drd(ptr noundef %7, ptr noundef %info45)
  br label %cleanup

if.else:                                          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i = getelementptr inbounds %struct.npcm_fiu_spi, ptr %7, i32 0, i32 4
  %47 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i, align 4
  %call.i88 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 0, i32 noundef 50331648) #6
  %49 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 0, i32 noundef 768, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %51 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i, align 4
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 0, i32 noundef 12288, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

if.else58:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i89 = getelementptr inbounds %struct.npcm_fiu_spi, ptr %7, i32 0, i32 4
  %53 = ptrtoint ptr %regmap.i89 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap.i89, align 4
  %call.i90 = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 4, i32 noundef 50331648) #6
  %55 = ptrtoint ptr %regmap.i89 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i89, align 4
  %call.i.i91 = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 4, i32 noundef 3072, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %57 = ptrtoint ptr %regmap.i89 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i89, align 4
  %call.i7.i92 = tail call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 4, i32 noundef 768, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else58, %if.else, %if.then54, %do.end39, %do.end25, %if.then5, %do.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_fiu_direct_read(ptr nocapture noundef readonly %desc, i64 noundef %offs, i32 noundef returned %len, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %chip_select, align 4
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr [4 x %struct.npcm_fiu_chip], ptr %7, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %idx.ext = trunc i64 %offs to i32
  %add.ptr = getelementptr i8, ptr %11, i32 %idx.ext
  %spix_mode = getelementptr inbounds %struct.npcm_fiu_spi, ptr %7, i32 0, i32 8
  %12 = ptrtoint ptr %spix_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %spix_mode, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp66.not = icmp eq i32 %len, 0
  br i1 %cmp66.not, label %for.cond.preheader.if.end46_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end46_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.067 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %i.067
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %add.ptr6 = getelementptr i8, ptr %buf, i32 %i.067
  %15 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %add.ptr6, align 1
  %inc = add nuw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.if.end46_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end46_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.else:                                          ; preds = %entry
  %info = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1
  %addr = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 0, i32 1
  %buswidth = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buswidth, align 1
  %addr7 = getelementptr inbounds %struct.npcm_fiu_spi, ptr %7, i32 0, i32 2, i32 1
  %buswidth8 = getelementptr inbounds %struct.npcm_fiu_spi, ptr %7, i32 0, i32 2, i32 1, i32 1
  %18 = ptrtoint ptr %buswidth8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buswidth8, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp10.not = icmp eq i8 %17, %19
  br i1 %cmp10.not, label %lor.lhs.false, label %if.else.if.then43_crit_edge

if.else.if.then43_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.else
  %dummy = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dummy, align 8
  %dummy16 = getelementptr inbounds %struct.npcm_fiu_spi, ptr %7, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %dummy16 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dummy16, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp19.not = icmp eq i8 %21, %23
  br i1 %cmp19.not, label %lor.lhs.false21, label %lor.lhs.false.if.then43_crit_edge

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

lor.lhs.false21:                                  ; preds = %lor.lhs.false
  %opcode = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 0, i32 0, i32 3
  %24 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %opcode, align 4
  %opcode27 = getelementptr inbounds %struct.npcm_fiu_spi, ptr %7, i32 0, i32 2, i32 0, i32 3
  %26 = ptrtoint ptr %opcode27 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %opcode27, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp29.not = icmp eq i16 %25, %27
  br i1 %cmp29.not, label %lor.lhs.false31, label %lor.lhs.false21.if.then43_crit_edge

lor.lhs.false21.if.then43_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

lor.lhs.false31:                                  ; preds = %lor.lhs.false21
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %addr, align 8
  %30 = ptrtoint ptr %addr7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %addr7, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp41.not = icmp eq i8 %29, %31
  br i1 %cmp41.not, label %lor.lhs.false31.if.end_crit_edge, label %lor.lhs.false31.if.then43_crit_edge

lor.lhs.false31.if.then43_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

lor.lhs.false31.if.end_crit_edge:                 ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then43:                                        ; preds = %lor.lhs.false31.if.then43_crit_edge, %lor.lhs.false21.if.then43_crit_edge, %lor.lhs.false.if.then43_crit_edge, %if.else.if.then43_crit_edge
  tail call fastcc void @npcm_fiu_set_drd(ptr noundef %7, ptr noundef %info)
  br label %if.end

if.end:                                           ; preds = %if.then43, %lor.lhs.false31.if.end_crit_edge
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %len) #6
  br label %if.end46

if.end46:                                         ; preds = %if.end, %for.body.if.end46_crit_edge, %for.cond.preheader.if.end46_crit_edge
  ret i32 %len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_fiu_direct_write(ptr nocapture noundef readonly %desc, i64 noundef %offs, i32 noundef returned %len, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %chip_select, align 4
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr [4 x %struct.npcm_fiu_chip], ptr %7, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %idx.ext = trunc i64 %offs to i32
  %add.ptr = getelementptr i8, ptr %11, i32 %idx.ext
  %spix_mode = getelementptr inbounds %struct.npcm_fiu_spi, ptr %7, i32 0, i32 8
  %12 = ptrtoint ptr %spix_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %spix_mode, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp15.not = icmp eq i32 %len, 0
  br i1 %cmp15.not, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add.ptr4 = getelementptr i8, ptr %buf, i32 %i.016
  %14 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr4, align 1
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %i.016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 %15) #6, !srcloc !98
  %inc = add nuw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %len) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  ret i32 %len
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @npcm_fiu_uma_read(ptr nocapture noundef readonly %mem, ptr nocapture noundef readonly %op, i32 noundef %addr, i1 noundef zeroext %is_address_size, ptr nocapture noundef writeonly %data, i32 noundef %data_size) unnamed_addr #2 align 64 {
entry:
  %data_reg = alloca [4 x i32], align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data_reg) #6
  %6 = call ptr @memset(ptr %data_reg, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val, align 4, !annotation !99
  %regmap = getelementptr inbounds %struct.npcm_fiu_spi, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12, i32 noundef 768, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %14 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %opcode, align 4
  %conv4 = zext i16 %15 to i32
  %call.i226 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 16, i32 noundef 255, i32 noundef %conv4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br i1 %is_address_size, label %cond.false15, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.false15:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %16 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buswidth, align 1
  %conv18 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  %18 = tail call i32 @llvm.ctlz.i32(i32 %conv18, i1 true) #6, !range !100
  %sub.i.op.i = xor i32 %18, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %addr22 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %buswidth23 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %buswidth23 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %buswidth23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i227 = icmp eq i8 %20, 0
  %conv42 = zext i8 %20 to i32
  %21 = tail call i32 @llvm.ctlz.i32(i32 %conv42, i1 true) #6, !range !100
  %sub.i.op.i228 = shl nuw nsw i32 %21, 2
  %sub.i.op.i228.op = xor i32 %sub.i.op.i228, 124
  %shl46 = select i1 %tobool.not.i.i227, i32 -4, i32 %sub.i.op.i228.op
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %buswidth48 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %buswidth48 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buswidth48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i230 = icmp eq i8 %23, 0
  %conv67 = zext i8 %23 to i32
  %24 = tail call i32 @llvm.ctlz.i32(i32 %conv67, i1 true) #6, !range !100
  %sub.i.op.i231 = shl nuw nsw i32 %24, 6
  %sub.i.op.i231.op = xor i32 %sub.i.op.i231, 1984
  %shl71 = select i1 %tobool.not.i.i230, i32 -1088, i32 %sub.i.op.i231.op
  %data73 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %25 = ptrtoint ptr %data73 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data73, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i233 = icmp eq i8 %26, 0
  %conv93 = zext i8 %26 to i32
  %27 = tail call i32 @llvm.ctlz.i32(i32 %conv93, i1 true) #6, !range !100
  %sub.i.op.i234 = shl nuw nsw i32 %27, 8
  %sub.i.op.i234.op = xor i32 %sub.i.op.i234, 6912
  %shl97 = select i1 %tobool.not.i.i233, i32 -1280, i32 %sub.i.op.i234.op
  %28 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dummy, align 8
  %conv100 = zext i8 %29 to i32
  %shl101 = shl nuw nsw i32 %conv100, 21
  %30 = ptrtoint ptr %addr22 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %addr22, align 8
  %conv105 = zext i8 %31 to i32
  %shl106 = shl nuw nsw i32 %conv105, 11
  %or = or i32 %sub.i, %shl46
  %or47 = or i32 %or, %shl71
  %or72 = or i32 %or47, %shl97
  %or98 = or i32 %or72, %shl101
  %or102 = or i32 %or98, %shl106
  %or107 = or i32 %or102, 1024
  br label %if.end

if.end:                                           ; preds = %cond.false15, %entry.if.end_crit_edge
  %.sink256 = phi i32 [ %addr, %cond.false15 ], [ 0, %entry.if.end_crit_edge ]
  %uma_cfg.0 = phi i32 [ %or107, %cond.false15 ], [ 1024, %entry.if.end_crit_edge ]
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call111 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 20, i32 noundef %.sink256) #6
  %shl112 = shl i32 %data_size, 24
  %or113 = or i32 %uma_cfg.0, %shl112
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call115 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 8, i32 noundef %or113) #6
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call.i236 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 12, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %call118 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call118, 150000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %if.end
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call131 = call i32 @regmap_read(ptr noundef %39, i32 noundef 12, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %lor.lhs.false, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.cond
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val, align 4
  %and = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool133.not = icmp eq i32 %and, 0
  br i1 %tobool133.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call137 = call i64 @ktime_get() #6
  %cmp3.i = icmp sgt i64 %call137, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call143 = call i32 @regmap_read(ptr noundef %43, i32 noundef 12, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool148.not = icmp eq i32 %call143, 0
  br i1 %tobool148.not, label %for.end.lor.rhs_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val, align 4
  %and149 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end160, label %lor.rhs.cleanup_crit_edge

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end160:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_size)
  %tobool161.not = icmp eq i32 %data_size, 0
  br i1 %tobool161.not, label %if.end160.cleanup_crit_edge, label %for.cond163.preheader

if.end160.cleanup_crit_edge:                      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond163.preheader:                            ; preds = %if.end160
  %sub165 = add i32 %data_size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub165)
  %cmp166248.not = icmp ult i32 %sub165, 4
  br i1 %cmp166248.not, label %for.cond163.preheader.for.end171_crit_edge, label %for.body.preheader

for.cond163.preheader.for.end171_crit_edge:       ; preds = %for.cond163.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end171

for.body.preheader:                               ; preds = %for.cond163.preheader
  %div225 = lshr i32 %sub165, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0249 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %i.0249, 2
  %add169 = add i32 %mul, 48
  %arrayidx = getelementptr [4 x i32], ptr %data_reg, i32 0, i32 %i.0249
  %call170 = call i32 @regmap_read(ptr noundef %47, i32 noundef %add169, ptr noundef %arrayidx) #6
  %inc = add nuw nsw i32 %i.0249, 1
  %exitcond.not = icmp eq i32 %inc, %div225
  br i1 %exitcond.not, label %for.body.for.end171_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end171_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end171

for.end171:                                       ; preds = %for.body.for.end171_crit_edge, %for.cond163.preheader.for.end171_crit_edge
  %48 = call ptr @memcpy(ptr %data, ptr %data_reg, i32 %data_size)
  br label %cleanup

cleanup:                                          ; preds = %for.end171, %if.end160.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end171 ], [ 0, %if.end160.cleanup_crit_edge ], [ -110, %lor.rhs.cleanup_crit_edge ], [ %call143, %for.end.cleanup_crit_edge ], [ %call131, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data_reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @npcm_fiu_uma_write(ptr nocapture noundef readonly %mem, ptr nocapture noundef readonly %op, i8 noundef zeroext %cmd, i1 noundef zeroext %is_address_size, ptr nocapture noundef readonly %data, i32 noundef %data_size) unnamed_addr #2 align 64 {
entry:
  %data_reg = alloca [4 x i32], align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data_reg) #6
  %6 = call ptr @memset(ptr %data_reg, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val, align 4, !annotation !99
  %regmap = getelementptr inbounds %struct.npcm_fiu_spi, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12, i32 noundef 768, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %conv4 = zext i8 %cmd to i32
  %call.i182 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 16, i32 noundef 255, i32 noundef %conv4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_size)
  %tobool.not = icmp eq i32 %data_size, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %14 = call ptr @memcpy(ptr %data_reg, ptr %data, i32 %data_size)
  %sub = add i32 %data_size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp201.not = icmp ult i32 %sub, 4
  br i1 %cmp201.not, label %if.then.if.end_crit_edge, label %for.body.preheader

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.preheader:                               ; preds = %if.then
  %div181 = lshr i32 %sub, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0202 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %i.0202, 2
  %add8 = add i32 %mul, 32
  %arrayidx = getelementptr [4 x i32], ptr %data_reg, i32 0, i32 %i.0202
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef %add8, i32 noundef %18) #6
  %inc = add nuw nsw i32 %i.0202, 1
  %exitcond.not = icmp eq i32 %inc, %div181
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  br i1 %is_address_size, label %cond.false23, label %if.else

cond.false23:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %19 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %buswidth, align 1
  %conv26 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  %21 = tail call i32 @llvm.ctlz.i32(i32 %conv26, i1 true) #6, !range !100
  %sub.i.op.i = xor i32 %21, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1025, i32 %sub.i.op.i
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %buswidth30 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %buswidth30 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buswidth30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i183 = icmp eq i8 %23, 0
  %conv49 = zext i8 %23 to i32
  %24 = tail call i32 @llvm.ctlz.i32(i32 %conv49, i1 true) #6, !range !100
  %sub.i.op.i184 = shl nuw nsw i32 %24, 2
  %sub.i.op.i184.op = xor i32 %sub.i.op.i184, 124
  %shl53 = select i1 %tobool.not.i.i183, i32 -1028, i32 %sub.i.op.i184.op
  %data55 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %25 = ptrtoint ptr %data55 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data55, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i186 = icmp eq i8 %26, 0
  %conv75 = zext i8 %26 to i32
  %27 = tail call i32 @llvm.ctlz.i32(i32 %conv75, i1 true) #6, !range !100
  %sub.i.op.i187 = shl nuw nsw i32 %27, 4
  %sub.i.op.i187.op = xor i32 %sub.i.op.i187, 496
  %shl79 = select i1 %tobool.not.i.i186, i32 -1040, i32 %sub.i.op.i187.op
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %addr, align 8
  %conv82 = zext i8 %29 to i32
  %shl83 = shl nuw nsw i32 %conv82, 11
  %or = or i32 %sub.i, %shl53
  %or54 = or i32 %or, %shl79
  %or80 = or i32 %or54, %shl83
  %or84 = or i32 %or80, 1024
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %val87 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %val87 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %val87, align 8
  %conv88 = trunc i64 %33 to i32
  %call89 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 20, i32 noundef %conv88) #6
  br label %if.end92

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call91 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 20, i32 noundef 0) #6
  br label %if.end92

if.end92:                                         ; preds = %if.else, %cond.false23
  %uma_cfg.0 = phi i32 [ %or84, %cond.false23 ], [ 1024, %if.else ]
  %shl93 = shl i32 %data_size, 16
  %or94 = or i32 %uma_cfg.0, %shl93
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call96 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 8, i32 noundef %or94) #6
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call.i189 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 12, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %call99 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call99, 150000
  br label %for.cond111

for.cond111:                                      ; preds = %land.lhs.true.for.cond111_crit_edge, %if.end92
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call113 = call i32 @regmap_read(ptr noundef %41, i32 noundef 12, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %lor.lhs.false, label %for.cond111.lor.end_crit_edge

for.cond111.lor.end_crit_edge:                    ; preds = %for.cond111
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.lhs.false:                                    ; preds = %for.cond111
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val, align 4
  %and = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool115.not = icmp eq i32 %and, 0
  br i1 %tobool115.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call119 = call i64 @ktime_get() #6
  %cmp3.i = icmp sgt i64 %call119, %add.i
  br i1 %cmp3.i, label %for.end131, label %land.lhs.true.for.cond111_crit_edge

land.lhs.true.for.cond111_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond111

for.end131:                                       ; preds = %land.lhs.true
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call125 = call i32 @regmap_read(ptr noundef %45, i32 noundef 12, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool132.not = icmp eq i32 %call125, 0
  br i1 %tobool132.not, label %for.end131.lor.rhs_crit_edge, label %for.end131.lor.end_crit_edge

for.end131.lor.end_crit_edge:                     ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

for.end131.lor.rhs_crit_edge:                     ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end131.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %46 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val, align 4
  %and133 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  %phi.sel = select i1 %tobool134.not, i32 0, i32 -110
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end131.lor.end_crit_edge, %for.cond111.lor.end_crit_edge
  %tobool132.not194 = phi i32 [ %call125, %for.end131.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call113, %for.cond111.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data_reg) #6
  ret i32 %tobool132.not194
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @npcm_fiu_set_drd(ptr nocapture noundef %fiu, ptr nocapture noundef readonly %op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.npcm_fiu_spi, ptr %fiu, i32 0, i32 4
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %buswidth = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buswidth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  %conv11 = zext i8 %3 to i32
  %4 = tail call i32 @llvm.ctlz.i32(i32 %conv11, i1 true) #6, !range !100
  %sub.i.op.i = shl nuw nsw i32 %4, 8
  %sub.i.op.i.op = xor i32 %sub.i.op.i, 7936
  %shl = select i1 %tobool.not.i.i, i32 -256, i32 %sub.i.op.i.op
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 768, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %5 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buswidth, align 1
  %buswidth18 = getelementptr inbounds %struct.npcm_fiu_spi, ptr %fiu, i32 0, i32 2, i32 1, i32 1
  %7 = ptrtoint ptr %buswidth18 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %buswidth18, align 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %10 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dummy, align 8
  %12 = load i8, ptr %buswidth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i93 = icmp eq i8 %12, 0
  %conv41 = zext i8 %12 to i32
  %13 = tail call i32 @llvm.ctlz.i32(i32 %conv41, i1 true) #6, !range !100
  %sub.i.op.i94 = xor i32 %13, 31
  %sub.i95 = select i1 %tobool.not.i.i93, i32 -1, i32 %sub.i.op.i94
  %conv20 = zext i8 %11 to i32
  %addr17 = getelementptr inbounds %struct.npcm_fiu_spi, ptr %fiu, i32 0, i32 2, i32 1
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %mul = mul nsw i32 %sub.i95, %conv20
  %div = sdiv i32 %mul, 8
  %shl45 = shl nsw i32 %div, 12
  %call.i96 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef 12288, i32 noundef %shl45, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %14 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dummy, align 8
  %dummy50 = getelementptr inbounds %struct.npcm_fiu_spi, ptr %fiu, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %dummy50 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %dummy50, align 8
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %19 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %opcode, align 4
  %conv53 = zext i16 %20 to i32
  %call.i97 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 0, i32 noundef 255, i32 noundef %conv53, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %21 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %opcode, align 4
  %opcode59 = getelementptr inbounds %struct.npcm_fiu_spi, ptr %fiu, i32 0, i32 2, i32 0, i32 3
  %23 = ptrtoint ptr %opcode59 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %opcode59, align 4
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %addr, align 8
  %conv63 = zext i8 %27 to i32
  %sub64 = shl nuw nsw i32 %conv63, 16
  %shl65 = add nsw i32 %sub64, -196608
  %call.i98 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 0, i32 noundef 196608, i32 noundef %shl65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %addr, align 8
  %30 = ptrtoint ptr %addr17 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %addr17, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !71, !72, !74, !76, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_spi_npcm_fiu__231_764_npcm_fiu_driver_init6, !1, !"__initcall__kmod_spi_npcm_fiu__231_764_npcm_fiu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 764, i32 1}
!2 = !{ptr @__exitcall_npcm_fiu_driver_exit, !1, !"__exitcall_npcm_fiu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description232, !4, !"__UNIQUE_ID_description232", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 766, i32 1}
!5 = !{ptr @__UNIQUE_ID_author233, !6, !"__UNIQUE_ID_author233", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 767, i32 1}
!7 = !{ptr @__UNIQUE_ID_file234, !8, !"__UNIQUE_ID_file234", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 768, i32 1}
!9 = !{ptr @__UNIQUE_ID_license235, !8, !"__UNIQUE_ID_license235", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 757, i32 11}
!12 = !{ptr @npcm_fiu_driver, !13, !"npcm_fiu_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 755, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 690, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @npcm_fiu_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @npcm_fiu_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 695, i32 37}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 697, i32 3}
!26 = !{ptr @npcm_fiu_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @npcm_fiu_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 706, i32 59}
!30 = !{ptr @npcm_fiu_probe._key, !31, !"_key", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 711, i32 16}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 714, i32 3}
!35 = !{ptr @npcm_fiu_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @npcm_fiu_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 719, i32 11}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 725, i32 13}
!41 = !{ptr @npcm_mtd_regmap_config, !42, !"npcm_mtd_regmap_config", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 238, i32 35}
!43 = !{ptr @npcm_fiu_mem_ops, !44, !"npcm_fiu_mem_ops", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 659, i32 44}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 533, i32 2}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @npcm_fiu_exec_op.__UNIQUE_ID_ddebug230, !46, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 544, i32 4}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @npcm_fiu_exec_op._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @npcm_fiu_exec_op._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 593, i32 3}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @npcm_fiu_dirmap_create._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @npcm_fiu_dirmap_create._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 611, i32 4}
!62 = !{ptr @npcm_fiu_dirmap_create._entry.24, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @npcm_fiu_dirmap_create._entry_ptr.26, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 617, i32 49}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 619, i32 39}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 621, i32 4}
!70 = !{ptr @npcm_fiu_dirmap_create._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @npcm_fiu_dirmap_create._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @npcm_fiu_dt_ids, !73, !"npcm_fiu_dt_ids", i1 false, i1 false}
!73 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 666, i32 34}
!74 = !{ptr @npxm7xx_fiu_data, !75, !"npxm7xx_fiu_data", i1 false, i1 false}
!75 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 212, i32 30}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 205, i32 11}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 207, i32 11}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 209, i32 11}
!82 = !{ptr @npxm7xx_fiu_info, !83, !"npxm7xx_fiu_info", i1 false, i1 false}
!83 = !{!"../drivers/spi/spi-npcm-fiu.c", i32 204, i32 35}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 2148711532, i64 2148711537, i64 2148711550, i64 2148711594, i64 2148711628, i64 2148711649}
!94 = !{i8 0, i8 2}
!95 = !{i64 4836023}
!96 = !{i64 2152375368}
!97 = !{i64 2152376973}
!98 = !{i64 4835628}
!99 = !{!"auto-init"}
!100 = !{i32 0, i32 33}
