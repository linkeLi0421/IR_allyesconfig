; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-orion.c_pt.bc'
source_filename = "../drivers/spi/spi-orion.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.orion_spi_dev = type { i32, i32, i32, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.orion_spi = type { ptr, ptr, ptr, ptr, ptr, ptr, [8 x %struct.orion_child_options] }
%struct.orion_child_options = type { %struct.orion_direct_acc }
%struct.orion_direct_acc = type { ptr, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__UNIQUE_ID_alias238 = internal constant [35 x i8] c"spi_orion.alias=platform:orion_spi\00", section ".modinfo", align 1
@__initcall__kmod_spi_orion__239_863_orion_spi_driver_init6 = internal global ptr @orion_spi_driver_init, section ".initcall6.init", align 4
@orion_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @orion_spi_probe, ptr @orion_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @orion_spi_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @orion_spi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_orion_spi_driver_exit = internal global ptr @orion_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description240 = internal constant [39 x i8] c"spi_orion.description=Orion SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [51 x i8] c"spi_orion.author=Shadi Ammouri <shadi@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [37 x i8] c"spi_orion.file=drivers/spi/spi-orion\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [22 x i8] c"spi_orion.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"orion_spi\00", [22 x i8] zeroinitializer }, align 32
@orion_spi_of_match_table = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @orion_spi_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_370_spi_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-375-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_375_spi_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_380_spi_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-390-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_xp_spi_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-xp-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_xp_spi_dev_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@orion_spi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @orion_spi_runtime_suspend, ptr @orion_spi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@orion_spi_probe.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -92, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi_orion\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"orion_spi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/spi/spi-orion.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"master allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cell-index\00", [21 x i8] zeroinitializer }, align 32
@orion_spi_dev_data = internal constant { %struct.orion_spi_dev, [40 x i8] } { %struct.orion_spi_dev { i32 0, i32 0, i32 4, i32 30, i32 31, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"marvell,armada-370-spi\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@orion_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 747, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%pOF has no valid 'reg' property (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@orion_spi_probe._entry_ptr = internal global ptr @orion_spi_probe._entry, section ".printk_index", align 4
@orion_spi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 777, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CS%d configured for direct access\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@orion_spi_probe._entry_ptr.15 = internal global ptr @orion_spi_probe._entry.12, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@orion_spi_write_read_8bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 415, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TXS timed out\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"orion_spi_write_read_8bit\00", [38 x i8] zeroinitializer }, align 32
@orion_spi_write_read_8bit._entry_ptr = internal global ptr @orion_spi_write_read_8bit._entry, section ".printk_index", align 4
@orion_spi_write_read_16bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 439, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"SPI_CS_WORD is only supported for 8 bit words\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"orion_spi_write_read_16bit\00", [37 x i8] zeroinitializer }, align 32
@orion_spi_write_read_16bit._entry_ptr = internal global ptr @orion_spi_write_read_16bit._entry, section ".printk_index", align 4
@orion_spi_write_read_16bit._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.19, ptr @.str.3, i32 457, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@orion_spi_write_read_16bit._entry_ptr.21 = internal global ptr @orion_spi_write_read_16bit._entry.20, section ".printk_index", align 4
@armada_370_spi_dev_data = internal constant { %struct.orion_spi_dev, [40 x i8] } { %struct.orion_spi_dev { i32 1, i32 50000000, i32 4, i32 1920, i32 223, i8 0 }, [40 x i8] zeroinitializer }, align 32
@armada_375_spi_dev_data = internal constant { %struct.orion_spi_dev, [40 x i8] } { %struct.orion_spi_dev { i32 1, i32 0, i32 15, i32 1920, i32 223, i8 0 }, [40 x i8] zeroinitializer }, align 32
@armada_380_spi_dev_data = internal constant { %struct.orion_spi_dev, [40 x i8] } { %struct.orion_spi_dev { i32 1, i32 50000000, i32 0, i32 1920, i32 223, i8 1 }, [40 x i8] zeroinitializer }, align 32
@armada_xp_spi_dev_data = internal constant { %struct.orion_spi_dev, [40 x i8] } { %struct.orion_spi_dev { i32 1, i32 50000000, i32 0, i32 1920, i32 223, i8 0 }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 16]
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"orion_spi_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 853, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 855, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [25 x i8] c"orion_spi_of_match_table\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 615, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"orion_spi_pm_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 847, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 657, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 666, i32 48 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"orion_spi_dev_data\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 578, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 703, i32 42 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 721, i32 6 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 743, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 745, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 777, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 415, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 439, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 457, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [24 x i8] c"armada_370_spi_dev_data\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 585, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant [24 x i8] c"armada_375_spi_dev_data\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 600, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant [24 x i8] c"armada_380_spi_dev_data\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 607, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant [23 x i8] c"armada_xp_spi_dev_data\00", align 1
@___asan_gen_.113 = private constant [27 x i8] c"../drivers/spi/spi-orion.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 593, i32 35 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_alias238, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_orion_spi_driver_exit, ptr @__initcall__kmod_spi_orion__239_863_orion_spi_driver_init6, ptr @orion_spi_driver_exit, ptr @orion_spi_probe._entry, ptr @orion_spi_probe._entry.12, ptr @orion_spi_probe._entry_ptr, ptr @orion_spi_probe._entry_ptr.15, ptr @orion_spi_write_read_16bit._entry, ptr @orion_spi_write_read_16bit._entry.20, ptr @orion_spi_write_read_16bit._entry_ptr, ptr @orion_spi_write_read_16bit._entry_ptr.21, ptr @orion_spi_write_read_8bit._entry, ptr @orion_spi_write_read_8bit._entry_ptr, ptr @orion_spi_driver, ptr @.str, ptr @orion_spi_of_match_table, ptr @orion_spi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @orion_spi_dev_data, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @armada_370_spi_dev_data, ptr @armada_375_spi_dev_data, ptr @armada_380_spi_dev_data, ptr @armada_xp_spi_dev_data], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_spi_of_match_table to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_spi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_spi_dev_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_spi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_spi_write_read_8bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_spi_write_read_16bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_spi_write_read_16bit._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_spi_dev_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_375_spi_dev_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_380_spi_dev_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_xp_spi_dev_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @orion_spi_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @orion_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @orion_spi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cell_index = alloca i32, align 4
  %cs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 88, i1 noundef zeroext false) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @orion_spi_probe.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@orion_spi_probe, %cleanup157)) #6
          to label %if.then5 [label %cleanup157], !srcloc !77

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @orion_spi_probe.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.4) #6
  br label %cleanup157

if.end7:                                          ; preds = %entry
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp8.not = icmp eq i32 %1, -1
  br i1 %cmp8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %1 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %bus_num, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %tobool13.not = icmp eq ptr %4, null
  br i1 %tobool13.not, label %if.end11.if.end23_crit_edge, label %if.then14

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then14:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cell_index) #6
  %5 = ptrtoint ptr %cell_index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %cell_index, align 4, !annotation !78
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.5, ptr noundef nonnull %cell_index, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool18.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool18.not, label %if.then19, label %if.then14.if.end22_crit_edge

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %cell_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cell_index, align 4
  %conv20 = trunc i32 %7 to i16
  %bus_num21 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %bus_num21 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv20, ptr %bus_num21, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then14.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cell_index) #6
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end11.if.end23_crit_edge
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4107, ptr %mode_bits, align 8
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 50
  %10 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @orion_spi_set_cs, ptr %set_cs, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %11 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @orion_spi_transfer_one, ptr %transfer_one, align 4
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 8, ptr %num_chipselect, align 2
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %13 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @orion_spi_setup, ptr %setup, align 4
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %14 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 32896, ptr %bits_per_word_mask, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %15 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %auto_runtime_pm, align 4
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %16 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 32, ptr %flags, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i260 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %driver_data.i.i260 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i260, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %20, align 4
  %dev27 = getelementptr inbounds %struct.orion_spi, ptr %20, i32 0, i32 5
  %22 = ptrtoint ptr %dev27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %dev27, align 4
  %call29 = call ptr @device_get_match_data(ptr noundef %dev) #6
  %tobool30.not = icmp eq ptr %call29, null
  %spec.select = select i1 %tobool30.not, ptr @orion_spi_dev_data, ptr %call29
  %devdata31 = getelementptr inbounds %struct.orion_spi, ptr %20, i32 0, i32 4
  %23 = ptrtoint ptr %devdata31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %spec.select, ptr %devdata31, align 4
  %call33 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.orion_spi, ptr %20, i32 0, i32 2
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call33, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call33 to i32
  br label %spi_controller_put.exit

if.end39:                                         ; preds = %if.end23
  %call.i261 = call i32 @clk_prepare(ptr noundef %call33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i261)
  %tobool.not.i = icmp eq i32 %call.i261, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end39.spi_controller_put.exit_crit_edge

if.end39.spi_controller_put.exit_crit_edge:       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_controller_put.exit

if.end.i:                                         ; preds = %if.end39
  %call1.i = call i32 @clk_enable(ptr noundef %call33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end44, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call33) #6
  br label %spi_controller_put.exit

if.end44:                                         ; preds = %if.end.i
  %call46 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #6
  %axi_clk = getelementptr inbounds %struct.orion_spi, ptr %20, i32 0, i32 3
  %26 = ptrtoint ptr %axi_clk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call46, ptr %axi_clk, align 4
  %cmp49 = icmp eq ptr %call46, inttoptr (i32 -517 to ptr)
  br i1 %cmp49, label %if.end44.out_rel_clk_crit_edge, label %if.end52

if.end44.out_rel_clk_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_rel_clk

if.end52:                                         ; preds = %if.end44
  %cmp.i263 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i263, label %if.end52.if.end58_crit_edge, label %if.then55

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then55:                                        ; preds = %if.end52
  %call.i264 = call i32 @clk_prepare(ptr noundef %call46) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %tobool.not.i265 = icmp eq i32 %call.i264, 0
  br i1 %tobool.not.i265, label %if.end.i268, label %if.then55.if.end58_crit_edge

if.then55.if.end58_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.end.i268:                                      ; preds = %if.then55
  %call1.i266 = call i32 @clk_enable(ptr noundef %call46) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i266)
  %tobool2.not.i267 = icmp eq i32 %call1.i266, 0
  br i1 %tobool2.not.i267, label %if.end.i268.if.end58_crit_edge, label %if.then3.i269

if.end.i268.if.end58_crit_edge:                   ; preds = %if.end.i268
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then3.i269:                                    ; preds = %if.end.i268
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call46) #6
  br label %if.end58

if.end58:                                         ; preds = %if.then3.i269, %if.end.i268.if.end58_crit_edge, %if.then55.if.end58_crit_edge, %if.end52.if.end58_crit_edge
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 4
  %call60 = call i32 @clk_get_rate(ptr noundef %28) #6
  %29 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node, align 8
  %call63 = call i32 @of_device_is_compatible(ptr noundef %30, ptr noundef nonnull @.str.7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.else, label %if.then65

if.then65:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %max_hz = getelementptr inbounds %struct.orion_spi_dev, ptr %spec.select, i32 0, i32 1
  %31 = ptrtoint ptr %max_hz to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_hz, align 4
  %min_divisor = getelementptr inbounds %struct.orion_spi_dev, ptr %spec.select, i32 0, i32 2
  %33 = ptrtoint ptr %min_divisor to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %min_divisor, align 4
  %add = add i32 %call60, -1
  %sub = add i32 %add, %34
  %div = udiv i32 %sub, %34
  %35 = call i32 @llvm.umin.i32(i32 %32, i32 %div)
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %36 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %max_speed_hz, align 8
  br label %if.end87

if.else:                                          ; preds = %if.end58
  %min_divisor74 = getelementptr inbounds %struct.orion_spi_dev, ptr %spec.select, i32 0, i32 2
  %37 = ptrtoint ptr %min_divisor74 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %min_divisor74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool75.not = icmp eq i32 %38, 0
  br i1 %tobool75.not, label %if.else83, label %if.then76

if.then76:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %add78 = add i32 %call60, -1
  %sub79 = add i32 %add78, %38
  %div81 = udiv i32 %sub79, %38
  %max_speed_hz82 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %39 = ptrtoint ptr %max_speed_hz82 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div81, ptr %max_speed_hz82, align 8
  br label %if.end87

if.else83:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %max_hz84 = getelementptr inbounds %struct.orion_spi_dev, ptr %spec.select, i32 0, i32 1
  %40 = ptrtoint ptr %max_hz84 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_hz84, align 4
  %max_speed_hz85 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %42 = ptrtoint ptr %max_speed_hz85 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %max_speed_hz85, align 8
  %.pre = add i32 %call60, -1
  br label %if.end87

if.end87:                                         ; preds = %if.else83, %if.then76, %if.then65
  %add88.pre-phi = phi i32 [ %add78, %if.then76 ], [ %.pre, %if.else83 ], [ %add, %if.then65 ]
  %max_divisor = getelementptr inbounds %struct.orion_spi_dev, ptr %spec.select, i32 0, i32 3
  %43 = ptrtoint ptr %max_divisor to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_divisor, align 4
  %sub89 = add i32 %add88.pre-phi, %44
  %div91 = udiv i32 %sub89, %44
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 8
  %45 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div91, ptr %min_speed_hz, align 4
  %call92 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call94 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call92) #6
  %base = getelementptr inbounds %struct.orion_spi, ptr %20, i32 0, i32 1
  %46 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call94, ptr %base, align 4
  %cmp.i272 = icmp ugt ptr %call94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i272, label %if.then97, label %if.end100

if.then97:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %call94 to i32
  br label %out_rel_axi_clk

if.end100:                                        ; preds = %if.end87
  %48 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node, align 8
  %call103 = call ptr @of_get_next_available_child(ptr noundef %49, ptr noundef null) #6
  %cmp104.not283 = icmp eq ptr %call103, null
  br i1 %cmp104.not283, label %if.end100.for.end_crit_edge, label %if.end100.for.body_crit_edge

if.end100.for.body_crit_edge:                     ; preds = %if.end100
  br label %for.body

if.end100.for.end_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end100.for.body_crit_edge
  %np.0284 = phi ptr [ %call134, %for.inc.for.body_crit_edge ], [ %call103, %if.end100.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs) #6
  %50 = ptrtoint ptr %cs to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %cs, align 4, !annotation !78
  %call.i.i273 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.0284, ptr noundef nonnull @.str.8, ptr noundef nonnull %cs, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i273)
  %tobool107.not = icmp sgt i32 %call.i.i273, -1
  br i1 %tobool107.not, label %if.end113, label %do.end111

do.end111:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull %np.0284, i32 noundef %call.i.i273) #9
  br label %for.inc

if.end113:                                        ; preds = %for.body
  %51 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %of_node, align 8
  %53 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cs, align 4
  %add116 = add i32 %54, 1
  %call117 = call i32 @of_address_to_resource(ptr noundef %52, i32 noundef %add116, ptr noundef %call92) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %if.end113.for.inc_crit_edge

if.end113.for.inc_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end120:                                        ; preds = %if.end113
  %55 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cs, align 4
  %arrayidx = getelementptr %struct.orion_spi, ptr %20, i32 0, i32 6, i32 %56
  %57 = ptrtoint ptr %call92 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %call92, align 4
  %call122 = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %58, i32 noundef 4096) #6
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call122, ptr %arrayidx, align 4
  %tobool124.not = icmp eq ptr %call122, null
  br i1 %tobool124.not, label %cleanup, label %if.end126

if.end126:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  %size = getelementptr inbounds %struct.orion_direct_acc, ptr %arrayidx, i32 0, i32 1
  %60 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4096, ptr %size, align 4
  %61 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cs, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %62) #9
  br label %for.inc

cleanup:                                          ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %np.0284) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs) #6
  br label %out_rel_axi_clk

for.inc:                                          ; preds = %if.end126, %if.end113.for.inc_crit_edge, %do.end111
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs) #6
  %63 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %of_node, align 8
  %call134 = call ptr @of_get_next_available_child(ptr noundef %64, ptr noundef nonnull %np.0284) #6
  %cmp104.not = icmp eq ptr %call134, null
  br i1 %cmp104.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end100.for.end_crit_edge
  %call.i274 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #6
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 200) #6
  call void @pm_runtime_enable(ptr noundef %dev) #6
  call fastcc void @orion_spi_reset(ptr noundef %20)
  %65 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %of_node, align 8
  %of_node148 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %67 = ptrtoint ptr %of_node148 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %of_node148, align 8
  %call149 = call i32 @spi_register_controller(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %cmp150 = icmp slt i32 %call149, 0
  br i1 %cmp150, label %out_rel_pm, label %for.end.cleanup157_crit_edge

for.end.cleanup157_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup157

out_rel_pm:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %out_rel_axi_clk

out_rel_axi_clk:                                  ; preds = %out_rel_pm, %cleanup, %if.then97
  %status.2 = phi i32 [ %47, %if.then97 ], [ -12, %cleanup ], [ %call149, %out_rel_pm ]
  %68 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %axi_clk, align 4
  call void @clk_disable(ptr noundef %69) #6
  call void @clk_unprepare(ptr noundef %69) #6
  br label %out_rel_clk

out_rel_clk:                                      ; preds = %out_rel_axi_clk, %if.end44.out_rel_clk_crit_edge
  %status.3 = phi i32 [ %status.2, %out_rel_axi_clk ], [ -517, %if.end44.out_rel_clk_crit_edge ]
  %70 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %71) #6
  call void @clk_unprepare(ptr noundef %71) #6
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %out_rel_clk, %if.then3.i, %if.end39.spi_controller_put.exit_crit_edge, %if.then36
  %status.4 = phi i32 [ %25, %if.then36 ], [ %status.3, %out_rel_clk ], [ %call1.i, %if.then3.i ], [ %call.i261, %if.end39.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i) #6
  br label %cleanup157

cleanup157:                                       ; preds = %spi_controller_put.exit, %for.end.cleanup157_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ %status.4, %spi_controller_put.exit ], [ -12, %if.then5 ], [ %call149, %for.end.cleanup157_crit_edge ], [ -12, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_spi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i8 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i8, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  %axi_clk = getelementptr inbounds %struct.orion_spi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %axi_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %clk = getelementptr inbounds %struct.orion_spi, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  tail call void @spi_unregister_controller(ptr noundef %1) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @orion_spi_set_cs(ptr nocapture noundef readonly %spi, i1 noundef zeroext %enable) #2 align 64 {
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
  %base.i = getelementptr inbounds %struct.orion_spi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %7 = and i32 %6, -486539265
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %9 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv, 2
  %and4 = and i32 %shl, 28
  %not.enable = xor i1 %enable, true
  %or5 = zext i1 %not.enable to i32
  %or = or i32 %8, %or5
  %spec.select = or i32 %or, %and4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %11) #6, !srcloc !82
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_spi_transfer_one(ptr nocapture noundef readnone %master, ptr noundef %spi, ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @orion_spi_setup_transfer(ptr noundef %spi, ptr noundef %t)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %2 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_select.i, align 4
  %conv.i = zext i8 %3 to i32
  %bits_per_word.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %4 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bits_per_word.i, align 1
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %6 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx.i = getelementptr %struct.orion_spi, ptr %9, i32 0, i32 6, i32 %conv.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then1.if.end15.i_crit_edge, label %land.lhs.true.i

if.then1.if.end15.i_crit_edge:                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.then1
  %12 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %t, align 4
  %tobool3.not.i = icmp ne ptr %13, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %cmp.i = icmp eq i8 %5, 8
  %or.cond.i = select i1 %tobool3.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.end15.i_crit_edge

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %14 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode.i, align 8
  %and.i = and i32 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp7.i = icmp eq i32 %and.i, 0
  br i1 %cmp7.i, label %if.then.i, label %land.lhs.true6.i.if.then18.i_crit_edge

land.lhs.true6.i.if.then18.i_crit_edge:           ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  %div1.i = lshr i32 %1, 2
  %rem9.i = and i32 %1, 3
  tail call void @__raw_writesl(ptr noundef nonnull %11, ptr noundef nonnull %13, i32 noundef %div1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem9.i)
  %tobool11.not.i = icmp eq i32 %rem9.i, 0
  br i1 %tobool11.not.i, label %if.then.i.cleanup_crit_edge, label %if.then12.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %t, align 4
  %arrayidx14.i = getelementptr i32, ptr %17, i32 %div1.i
  tail call void @__raw_writesb(ptr noundef nonnull %11, ptr noundef %arrayidx14.i, i32 noundef %rem9.i) #6
  br label %cleanup

if.end15.i:                                       ; preds = %land.lhs.true.i.if.end15.i_crit_edge, %if.then1.if.end15.i_crit_edge
  %18 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.end15.i.cleanup_crit_edge [
    i8 8, label %if.end15.i.if.then18.i_crit_edge
    i8 16, label %if.then30.i
  ]

if.end15.i.if.then18.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18.i:                                      ; preds = %if.end15.i.if.then18.i_crit_edge, %land.lhs.true6.i.if.then18.i_crit_edge
  %19 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %21 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_buf.i, align 4
  %mode.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %word_delay.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 11
  br label %do.body.i

do.body.i:                                        ; preds = %if.end24.i.do.body.i_crit_edge, %if.then18.i
  %tx.0.i = phi ptr [ %20, %if.then18.i ], [ %tx.1.i, %if.end24.i.do.body.i_crit_edge ]
  %rx.0.i = phi ptr [ %22, %if.then18.i ], [ %rx.1.i, %if.end24.i.do.body.i_crit_edge ]
  %count.0.i = phi i32 [ %1, %if.then18.i ], [ %dec.i, %if.end24.i.do.body.i_crit_edge ]
  %23 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode.i.i, align 8
  %and.i.i = and i32 %24, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %25 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i.i.i, align 4
  br i1 %tobool.not.i.i, label %do.body.i.if.end.i.i_crit_edge, label %if.then.i.i

do.body.i.if.end.i.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %base.i.i.i.i = getelementptr inbounds %struct.orion_spi, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i.i.i, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %32 = and i32 %31, -486539265
  %33 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %chip_select.i, align 4
  %conv.i.i.i = zext i8 %34 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 2
  %and4.i.i.i = and i32 %shl.i.i.i, 28
  %35 = or i32 %32, 16777216
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  %spec.select.i.i.i = or i32 %and4.i.i.i, %36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %37) #6, !srcloc !82
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %do.body.i.if.end.i.i_crit_edge
  %base.i.i.i = getelementptr inbounds %struct.orion_spi, ptr %28, i32 0, i32 1
  %38 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %39, i32 8
  %add.ptr.i57.i.i = getelementptr i8, ptr %39, i32 12
  %add.ptr.i59.i.i = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i.i, i32 0) #6, !srcloc !82
  %tobool6.not.i.i = icmp eq ptr %tx.0.i, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool6.not.i.i, label %do.body11.i.i, label %do.body8.i.i

do.body8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i.i = getelementptr i8, ptr %tx.0.i, i32 1
  %40 = ptrtoint ptr %tx.0.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tx.0.i, align 1
  %conv.i.i = zext i8 %41 to i32
  %42 = shl nuw i32 %conv.i.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %42) #6, !srcloc !82
  br label %if.end14.i.i

do.body11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #6, !srcloc !82
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %do.body11.i.i, %do.body8.i.i
  %tx.1.i = phi ptr [ null, %do.body11.i.i ], [ %incdec.ptr.i.i, %do.body8.i.i ]
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %if.end14.i.i
  %i.04.i.i.i = phi i32 [ 0, %if.end14.i.i ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %43 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %44, i32 16
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end24.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #6
  %inc.i.i.i = add nuw nsw i32 %i.04.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 2000
  br i1 %exitcond.not.i.i.i, label %if.then17.i.i, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

if.then17.i.i:                                    ; preds = %if.end.i.i.i
  br i1 %tobool.not.i.i, label %if.then17.i.i.orion_spi_write_read_8bit.exit.i_crit_edge, label %if.then19.i.i

if.then17.i.i.orion_spi_write_read_8bit.exit.i_crit_edge: ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %orion_spi_write_read_8bit.exit.i

if.then19.i.i:                                    ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i62.i.i = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %driver_data.i.i.i62.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver_data.i.i.i62.i.i, align 4
  %base.i.i63.i.i = getelementptr inbounds %struct.orion_spi, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %base.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i63.i.i, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %54 = and i32 %53, -486539265
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #6
  %56 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %chip_select.i, align 4
  %conv.i65.i.i = zext i8 %57 to i32
  %shl.i66.i.i = shl nuw nsw i32 %conv.i65.i.i, 2
  %and4.i67.i.i = and i32 %shl.i66.i.i, 28
  %spec.select.i68.i.i = or i32 %and4.i67.i.i, %55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %58 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i68.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %58) #6, !srcloc !82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 858992) #6
  br label %orion_spi_write_read_8bit.exit.i

if.end24.i.i:                                     ; preds = %for.body.i.i.i
  %tobool27.not.i.i = icmp eq ptr %rx.0.i, null
  br i1 %tobool27.not.i.i, label %if.end24.i.i.if.end33.i.i_crit_edge, label %if.then28.i.i

if.end24.i.i.if.end33.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i.i

if.then28.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57.i.i) #6, !srcloc !79
  %61 = lshr i32 %60, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %conv31.i.i = trunc i32 %61 to i8
  %incdec.ptr32.i.i = getelementptr i8, ptr %rx.0.i, i32 1
  %62 = ptrtoint ptr %rx.0.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv31.i.i, ptr %rx.0.i, align 1
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then28.i.i, %if.end24.i.i.if.end33.i.i_crit_edge
  %rx.1.i = phi ptr [ null, %if.end24.i.i.if.end33.i.i_crit_edge ], [ %incdec.ptr32.i.i, %if.then28.i.i ]
  br i1 %tobool.not.i.i, label %if.end33.i.i.if.end24.i_crit_edge, label %if.then35.i.i

if.end33.i.i.if.end24.i_crit_edge:                ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.then35.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i70.i.i = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %driver_data.i.i.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %driver_data.i.i.i70.i.i, align 4
  %base.i.i71.i.i = getelementptr inbounds %struct.orion_spi, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %base.i.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i71.i.i, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %70 = and i32 %69, -486539265
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #6
  %72 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %chip_select.i, align 4
  %conv.i73.i.i = zext i8 %73 to i32
  %shl.i74.i.i = shl nuw nsw i32 %conv.i73.i.i, 2
  %and4.i75.i.i = and i32 %shl.i74.i.i, 28
  %spec.select.i76.i.i = or i32 %and4.i75.i.i, %71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %74 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i76.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %74) #6, !srcloc !82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 858992) #6
  br label %if.end24.i

orion_spi_write_read_8bit.exit.i:                 ; preds = %if.then19.i.i, %if.then17.i.i.orion_spi_write_read_8bit.exit.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end24.i:                                       ; preds = %if.then35.i.i, %if.end33.i.i.if.end24.i_crit_edge
  %dec.i = add i32 %count.0.i, -1
  %call25.i = tail call i32 @spi_delay_exec(ptr noundef %word_delay.i, ptr noundef %t) #6
  %tobool26.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.cleanup_crit_edge, label %if.end24.i.do.body.i_crit_edge

if.end24.i.do.body.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end24.i.cleanup_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then30.i:                                      ; preds = %if.end15.i
  %76 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %t, align 4
  %rx_buf34.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %78 = ptrtoint ptr %rx_buf34.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rx_buf34.i, align 4
  %mode.i2.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %word_delay41.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 11
  br label %do.body35.i

do.body35.i:                                      ; preds = %if.end40.i.do.body35.i_crit_edge, %if.then30.i
  %tx31.0.i = phi ptr [ %77, %if.then30.i ], [ %tx31.1.i, %if.end40.i.do.body35.i_crit_edge ]
  %rx33.0.i = phi ptr [ %79, %if.then30.i ], [ %rx33.1.i, %if.end40.i.do.body35.i_crit_edge ]
  %count.2.i = phi i32 [ %1, %if.then30.i ], [ %sub.i, %if.end40.i.do.body35.i_crit_edge ]
  %80 = ptrtoint ptr %mode.i2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mode.i2.i, align 8
  %and.i3.i = and i32 %81, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i4.i = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not.i4.i, label %if.end.i10.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end.i10.i:                                     ; preds = %do.body35.i
  %82 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i6.i = getelementptr inbounds %struct.device, ptr %83, i32 0, i32 8
  %84 = ptrtoint ptr %driver_data.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %driver_data.i.i.i6.i, align 4
  %base.i.i7.i = getelementptr inbounds %struct.orion_spi, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %base.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i.i7.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %87, i32 8
  %add.ptr.i55.i.i = getelementptr i8, ptr %87, i32 12
  %add.ptr.i57.i9.i = getelementptr i8, ptr %87, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i9.i, i32 0) #6, !srcloc !82
  %tobool8.not.i.i = icmp eq ptr %tx31.0.i, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool8.not.i.i, label %do.body13.i.i, label %do.body10.i.i

do.body10.i.i:                                    ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i11.i = getelementptr i16, ptr %tx31.0.i, i32 1
  %88 = ptrtoint ptr %tx31.0.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %tx31.0.i, align 1
  %90 = tail call i16 @llvm.bswap.i16(i16 %89) #6
  %conv.i12.i = zext i16 %90 to i32
  %91 = tail call i32 @llvm.bswap.i32(i32 %conv.i12.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8.i, i32 %91) #6, !srcloc !82
  br label %if.end16.i.i

do.body13.i.i:                                    ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8.i, i32 0) #6, !srcloc !82
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %do.body13.i.i, %do.body10.i.i
  %tx31.1.i = phi ptr [ null, %do.body13.i.i ], [ %incdec.ptr.i11.i, %do.body10.i.i ]
  br label %for.body.i.i16.i

for.body.i.i16.i:                                 ; preds = %if.end.i.i19.i.for.body.i.i16.i_crit_edge, %if.end16.i.i
  %i.04.i.i13.i = phi i32 [ 0, %if.end16.i.i ], [ %inc.i.i17.i, %if.end.i.i19.i.for.body.i.i16.i_crit_edge ]
  %92 = ptrtoint ptr %base.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i.i7.i, align 4
  %add.ptr.i.i.i14.i = getelementptr i8, ptr %93, i32 16
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i14.i) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i.i15.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i.i15.i, label %if.end.i.i19.i, label %if.end24.i20.i

if.end.i.i19.i:                                   ; preds = %for.body.i.i16.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748) #6
  %inc.i.i17.i = add nuw nsw i32 %i.04.i.i13.i, 1
  %exitcond.not.i.i18.i = icmp eq i32 %inc.i.i17.i, 2000
  br i1 %exitcond.not.i.i18.i, label %do.end22.i.i, label %if.end.i.i19.i.for.body.i.i16.i_crit_edge

if.end.i.i19.i.for.body.i.i16.i_crit_edge:        ; preds = %if.end.i.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i16.i

do.end22.i.i:                                     ; preds = %if.end.i.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end24.i20.i:                                   ; preds = %for.body.i.i16.i
  %tobool27.not.i21.i = icmp eq ptr %rx33.0.i, null
  br i1 %tobool27.not.i21.i, label %if.end24.i20.i.if.end40.i_crit_edge, label %do.body29.i.i

if.end24.i20.i.if.end40.i_crit_edge:              ; preds = %if.end24.i20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

do.body29.i.i:                                    ; preds = %if.end24.i20.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr31.i.i = getelementptr i16, ptr %rx33.0.i, i32 1
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55.i.i) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %97 = lshr i32 %96, 16
  %98 = trunc i32 %97 to i16
  %99 = ptrtoint ptr %rx33.0.i to i32
  call void @__asan_storeN_noabort(i32 %99, i32 2)
  store i16 %98, ptr %rx33.0.i, align 1
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.body29.i.i, %if.end24.i20.i.if.end40.i_crit_edge
  %rx33.1.i = phi ptr [ null, %if.end24.i20.i.if.end40.i_crit_edge ], [ %incdec.ptr31.i.i, %do.body29.i.i ]
  %sub.i = add i32 %count.2.i, -2
  %call42.i = tail call i32 @spi_delay_exec(ptr noundef %word_delay41.i, ptr noundef %t) #6
  %tobool44.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool44.not.i, label %if.end40.i.cleanup_crit_edge, label %if.end40.i.do.body35.i_crit_edge

if.end40.i.do.body35.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35.i

if.end40.i.cleanup_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end40.i.cleanup_crit_edge, %do.end22.i.i, %do.end.i.i, %if.end24.i.cleanup_crit_edge, %orion_spi_write_read_8bit.exit.i, %if.end15.i.cleanup_crit_edge, %if.then12.i, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_spi_setup(ptr nocapture noundef readonly %spi) #2 align 64 {
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
  %dev1 = getelementptr inbounds %struct.orion_spi, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %call2 = tail call i32 @orion_spi_runtime_resume(ptr noundef %5)
  %call3 = tail call fastcc i32 @orion_spi_setup_transfer(ptr noundef %spi, ptr noundef null)
  %driver_data.i.i7 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i7, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %axi_clk.i = getelementptr inbounds %struct.orion_spi, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %axi_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %axi_clk.i, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  %clk.i = getelementptr inbounds %struct.orion_spi, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @orion_spi_reset(ptr nocapture noundef readonly %orion_spi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.orion_spi, ptr %orion_spi, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #6, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !82
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @orion_spi_setup_transfer(ptr nocapture noundef readonly %spi, ptr noundef readonly %t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %0 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_speed_hz, align 8
  %bits_per_word1 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %2 = ptrtoint ptr %bits_per_word1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bits_per_word1, align 1
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %cmp.not = icmp eq ptr %t, null
  br i1 %cmp.not, label %entry.if.end13_crit_edge, label %land.lhs.true6

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true6:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %8 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool.not, i32 %1, i32 %9
  %bits_per_word7 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %10 = ptrtoint ptr %bits_per_word7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bits_per_word7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  %spec.select42 = select i1 %tobool9.not, i8 %3, i8 %11
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true6, %entry.if.end13_crit_edge
  %speed.062 = phi i32 [ %spec.select, %land.lhs.true6 ], [ %1, %entry.if.end13_crit_edge ]
  %bits_per_word.0.in = phi i8 [ %spec.select42, %land.lhs.true6 ], [ %3, %entry.if.end13_crit_edge ]
  %base.i.i = getelementptr inbounds %struct.orion_spi, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %15 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode.i, align 8
  %and4.i = shl i32 %16, 10
  %17 = and i32 %and4.i, 2048
  %and6.i = shl i32 %16, 12
  %18 = and i32 %and6.i, 4096
  %and12.i = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %19 = and i32 %14, -7864321
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  %.masked.i = or i32 %17, %20
  %and16.i = or i32 %.masked.i, %18
  %masksel.i = select i1 %tobool13.not.i, i32 0, i32 24576
  %reg.2.i = or i32 %and16.i, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %reg.2.i) #6
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %21) #6, !srcloc !82
  %devdata = getelementptr inbounds %struct.orion_spi, ptr %7, i32 0, i32 4
  %24 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %devdata, align 4
  %is_errata_50mhz_ac = getelementptr inbounds %struct.orion_spi_dev, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %is_errata_50mhz_ac to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_errata_50mhz_ac, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool14.not = icmp eq i8 %27, 0
  br i1 %tobool14.not, label %if.end13.if.end16_crit_edge, label %if.then15

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  %28 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %master, align 4
  %driver_data.i.i.i44 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %driver_data.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i.i44, align 4
  %base.i.i45 = getelementptr inbounds %struct.orion_spi, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %base.i.i45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i45, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %33, i32 24
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i46) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %clk.i = getelementptr inbounds %struct.orion_spi, ptr %31, i32 0, i32 2
  %35 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk.i, align 4
  %call4.i = tail call i32 @clk_get_rate(ptr noundef %36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000000, i32 %call4.i)
  %cmp.i = icmp eq i32 %call4.i, 250000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000000, i32 %speed.062)
  %cmp5.i = icmp eq i32 %speed.062, 50000000
  %or.cond.i = and i1 %cmp5.i, %cmp.i
  br i1 %or.cond.i, label %land.lhs.true6.i, label %if.then15.if.else.i_crit_edge

if.then15.if.else.i_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %if.then15
  %37 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mode.i, align 8
  %39 = and i32 %38, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %.not.i = icmp eq i32 %39, 3
  br i1 %.not.i, label %land.lhs.true6.i.orion_spi_50mhz_ac_timing_erratum.exit_crit_edge, label %land.lhs.true6.i.if.else.i_crit_edge

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true6.i.orion_spi_50mhz_ac_timing_erratum.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %orion_spi_50mhz_ac_timing_erratum.exit

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %if.then15.if.else.i_crit_edge
  br label %orion_spi_50mhz_ac_timing_erratum.exit

orion_spi_50mhz_ac_timing_erratum.exit:           ; preds = %if.else.i, %land.lhs.true6.i.orion_spi_50mhz_ac_timing_erratum.exit_crit_edge
  %.sink.i = phi i32 [ 64, %if.else.i ], [ 128, %land.lhs.true6.i.orion_spi_50mhz_ac_timing_erratum.exit_crit_edge ]
  %40 = and i32 %34, 1073741823
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #6
  %or.i = or i32 %.sink.i, %41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %42 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %43 = ptrtoint ptr %base.i.i45 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i45, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %44, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %42) #6, !srcloc !82
  br label %if.end16

if.end16:                                         ; preds = %orion_spi_50mhz_ac_timing_erratum.exit, %if.end13.if.end16_crit_edge
  %45 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %master, align 4
  %driver_data.i.i.i49 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %driver_data.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver_data.i.i.i49, align 4
  %devdata1.i = getelementptr inbounds %struct.orion_spi, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %devdata1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %devdata1.i, align 4
  %clk.i50 = getelementptr inbounds %struct.orion_spi, ptr %48, i32 0, i32 2
  %51 = ptrtoint ptr %clk.i50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk.i50, align 4
  %call2.i = tail call i32 @clk_get_rate(ptr noundef %52) #6
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp.i51 = icmp eq i32 %54, 1
  %add.i = add i32 %speed.062, -1
  %sub.i = add i32 %add.i, %call2.i
  %div.i = udiv i32 %sub.i, %speed.062
  br i1 %cmp.i51, label %if.then.i, label %if.else25.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div.i)
  %cmp3.i = icmp ult i32 %div.i, 16
  br i1 %cmp3.i, label %if.then.i.cleanup20.thread.i_crit_edge, label %if.else.i52

if.then.i.cleanup20.thread.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20.thread.i

if.else.i52:                                      ; preds = %if.then.i
  %55 = tail call i32 @llvm.ctlz.i32(i32 %div.i, i1 true) #6, !range !96
  %sub6.i = sub nsw i32 28, %55
  %shl.i = shl nuw nsw i32 1, %sub6.i
  %add7.i = add i32 %div.i, -1
  %sub8.i = add i32 %add7.i, %shl.i
  %sub9.i = sub i32 0, %shl.i
  %and.i = and i32 %sub8.i, %sub9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i82.i = icmp eq i32 %and.i, 0
  %56 = tail call i32 @llvm.ctlz.i32(i32 %and.i, i1 true) #6, !range !96
  %sub.i83.op.i = sub nsw i32 28, %56
  %sub11.i = select i1 %tobool.not.i82.i, i32 -4, i32 %sub.i83.op.i
  %shr.i = lshr i32 %and.i, %sub11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub11.i)
  %cmp12.i = icmp ugt i32 %sub11.i, 7
  br i1 %cmp12.i, label %if.else.i52.cleanup_crit_edge, label %if.else.i52.cleanup20.thread.i_crit_edge

if.else.i52.cleanup20.thread.i_crit_edge:         ; preds = %if.else.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20.thread.i

if.else.i52.cleanup_crit_edge:                    ; preds = %if.else.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup20.thread.i:                               ; preds = %if.else.i52.cleanup20.thread.i_crit_edge, %if.then.i.cleanup20.thread.i_crit_edge
  %spr.0.i = phi i32 [ %shr.i, %if.else.i52.cleanup20.thread.i_crit_edge ], [ %div.i, %if.then.i.cleanup20.thread.i_crit_edge ]
  %sppr.0.i = phi i32 [ %sub.i83.op.i, %if.else.i52.cleanup20.thread.i_crit_edge ], [ 0, %if.then.i.cleanup20.thread.i_crit_edge ]
  %and15.i = shl nuw nsw i32 %sppr.0.i, 5
  %shl16.i = and i32 %and15.i, 192
  %and17.i = shl nuw nsw i32 %sppr.0.i, 4
  %shl18.i = and i32 %and17.i, 16
  %or.i53 = or i32 %shl18.i, %spr.0.i
  %or19.i = or i32 %or.i53, %shl16.i
  br label %if.end20

if.else25.i:                                      ; preds = %if.end16
  %add30.i = add i32 %div.i, 1
  %div3180.i = and i32 %add30.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %div3180.i)
  %cmp32.i = icmp ugt i32 %div3180.i, 30
  br i1 %cmp32.i, label %if.else25.i.cleanup_crit_edge, label %if.end34.i

if.else25.i.cleanup_crit_edge:                    ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34.i:                                       ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = tail call i32 @llvm.umax.i32(i32 %div3180.i, i32 4) #6
  %div3881.i = lshr exact i32 %57, 1
  %add39.i = add nuw nsw i32 %div3881.i, 16
  br label %if.end20

if.end20:                                         ; preds = %if.end34.i, %cleanup20.thread.i
  %prescale.1.i = phi i32 [ %add39.i, %if.end34.i ], [ %or19.i, %cleanup20.thread.i ]
  %base.i.i54 = getelementptr inbounds %struct.orion_spi, ptr %48, i32 0, i32 1
  %58 = ptrtoint ptr %base.i.i54 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i.i54, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %59, i32 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55) #6, !srcloc !79
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %prescale_mask.i = getelementptr inbounds %struct.orion_spi_dev, ptr %50, i32 0, i32 4
  %62 = ptrtoint ptr %prescale_mask.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %prescale_mask.i, align 4
  %neg.i = xor i32 %63, -1
  %and45.i = and i32 %61, %neg.i
  %or46.i = or i32 %and45.i, %prescale.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %64 = tail call i32 @llvm.bswap.i32(i32 %or46.i) #6
  %65 = ptrtoint ptr %base.i.i54 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i.i54, align 4
  %add.ptr.i86.i = getelementptr i8, ptr %66, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86.i, i32 %64) #6, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bits_per_word.0.in)
  %cmp21 = icmp eq i8 %bits_per_word.0.in, 16
  %67 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %68, i32 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %70 = or i32 %69, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57, i32 %70) #6, !srcloc !82
  br label %cleanup

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %71 = and i32 %69, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57, i32 %71) #6, !srcloc !82
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then23, %if.else25.i.cleanup_crit_edge, %if.else.i52.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ 0, %if.then23 ], [ -22, %if.else25.i.cleanup_crit_edge ], [ -22, %if.else.i52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_spi_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %axi_clk = getelementptr inbounds %struct.orion_spi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %axi_clk, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.orion_spi, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call.i8 = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool.not.i9 = icmp eq i32 %call.i8, 0
  br i1 %tobool.not.i9, label %if.end.i12, label %if.end.clk_prepare_enable.exit15_crit_edge

if.end.clk_prepare_enable.exit15_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit15

if.end.i12:                                       ; preds = %if.end
  %call1.i10 = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool2.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool2.not.i11, label %if.end.i12.clk_prepare_enable.exit15_crit_edge, label %if.then3.i13

if.end.i12.clk_prepare_enable.exit15_crit_edge:   ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit15

if.then3.i13:                                     ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %clk_prepare_enable.exit15

clk_prepare_enable.exit15:                        ; preds = %if.then3.i13, %if.end.i12.clk_prepare_enable.exit15_crit_edge, %if.end.clk_prepare_enable.exit15_crit_edge
  %retval.0.i14 = phi i32 [ %call.i8, %if.end.clk_prepare_enable.exit15_crit_edge ], [ %call1.i10, %if.then3.i13 ], [ 0, %if.end.i12.clk_prepare_enable.exit15_crit_edge ]
  ret i32 %retval.0.i14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_spi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %axi_clk = getelementptr inbounds %struct.orion_spi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %axi_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %clk = getelementptr inbounds %struct.orion_spi, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !56, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__UNIQUE_ID_alias238, !1, !"__UNIQUE_ID_alias238", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-orion.c", i32 823, i32 1}
!2 = !{ptr @__initcall__kmod_spi_orion__239_863_orion_spi_driver_init6, !3, !"__initcall__kmod_spi_orion__239_863_orion_spi_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/spi/spi-orion.c", i32 863, i32 1}
!4 = !{ptr @__exitcall_orion_spi_driver_exit, !3, !"__exitcall_orion_spi_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description240, !6, !"__UNIQUE_ID_description240", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-orion.c", i32 865, i32 1}
!7 = !{ptr @__UNIQUE_ID_author241, !8, !"__UNIQUE_ID_author241", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-orion.c", i32 866, i32 1}
!9 = !{ptr @__UNIQUE_ID_file242, !10, !"__UNIQUE_ID_file242", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-orion.c", i32 867, i32 1}
!11 = !{ptr @__UNIQUE_ID_license243, !10, !"__UNIQUE_ID_license243", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-orion.c", i32 855, i32 11}
!14 = !{ptr @orion_spi_driver, !15, !"orion_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-orion.c", i32 853, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-orion.c", i32 657, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @orion_spi_probe.__UNIQUE_ID_ddebug235, !17, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-orion.c", i32 666, i32 48}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-orion.c", i32 703, i32 42}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-orion.c", i32 721, i32 6}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-orion.c", i32 743, i32 37}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-orion.c", i32 745, i32 4}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @orion_spi_probe._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @orion_spi_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-orion.c", i32 777, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @orion_spi_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @orion_spi_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-orion.c", i32 415, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @orion_spi_write_read_8bit._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @orion_spi_write_read_8bit._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/spi/spi-orion.c", i32 439, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @orion_spi_write_read_16bit._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @orion_spi_write_read_16bit._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @orion_spi_write_read_16bit._entry.20, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-orion.c", i32 457, i32 3}
!53 = !{ptr @orion_spi_write_read_16bit._entry_ptr.21, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @orion_spi_dev_data, !55, !"orion_spi_dev_data", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-orion.c", i32 578, i32 35}
!56 = !{ptr @orion_spi_of_match_table, !57, !"orion_spi_of_match_table", i1 false, i1 false}
!57 = !{!"../drivers/spi/spi-orion.c", i32 615, i32 34}
!58 = !{ptr @armada_370_spi_dev_data, !59, !"armada_370_spi_dev_data", i1 false, i1 false}
!59 = !{!"../drivers/spi/spi-orion.c", i32 585, i32 35}
!60 = !{ptr @armada_375_spi_dev_data, !61, !"armada_375_spi_dev_data", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-orion.c", i32 600, i32 35}
!62 = !{ptr @armada_380_spi_dev_data, !63, !"armada_380_spi_dev_data", i1 false, i1 false}
!63 = !{!"../drivers/spi/spi-orion.c", i32 607, i32 35}
!64 = !{ptr @armada_xp_spi_dev_data, !65, !"armada_xp_spi_dev_data", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-orion.c", i32 593, i32 35}
!66 = !{ptr @orion_spi_pm_ops, !67, !"orion_spi_pm_ops", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-orion.c", i32 847, i32 32}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 2148737093, i64 2148737098, i64 2148737111, i64 2148737155, i64 2148737189, i64 2148737210}
!78 = !{!"auto-init"}
!79 = !{i64 4218319}
!80 = !{i64 2154411659}
!81 = !{i64 2154411949}
!82 = !{i64 4217901}
!83 = !{i64 2154413858}
!84 = !{i64 2154412812}
!85 = !{i64 2154417271}
!86 = !{i64 2154420113}
!87 = !{i64 2154425828}
!88 = !{i64 2154406686}
!89 = !{i64 2154406891}
!90 = !{i64 2154426325}
!91 = !{i64 2154408844}
!92 = !{i64 2154409721}
!93 = !{i8 0, i8 2}
!94 = !{i64 2154410473}
!95 = !{i64 2154410877}
!96 = !{i32 0, i32 33}
!97 = !{i64 2154407865}
!98 = !{i64 2154408092}
!99 = !{i64 2154405901}
