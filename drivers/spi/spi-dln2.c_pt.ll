; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-dln2.c_pt.bc'
source_filename = "../drivers/spi/spi-dln2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.71 = type { i8, i8 }
%struct.anon.79 = type { i8, i8 }
%struct.anon.72 = type { i8 }
%struct.anon.73 = type { i16 }
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
%struct.dln2_spi = type { ptr, ptr, i8, ptr, i8, i32, i16, i8 }
%struct.dln2_platform_data = type { i16, i8 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.anon.75 = type { i8 }
%struct.anon.76 = type { i32 }
%struct.anon.77 = type { i8 }
%struct.anon.78 = type { i8, [36 x i8] }
%struct.anon.80 = type { i8, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.anon.89 = type <{ i8, i16, i8 }>
%struct.anon.84 = type { i8, i8 }
%struct.anon.83 = type { i8, i8 }
%struct.anon.81 = type <{ i8, i32 }>
%struct.anon.82 = type { i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.anon.85 = type <{ i8, i16, i8, [256 x i8] }>
%struct.anon.86 = type { i16, [256 x i8] }
%struct.anon.88 = type <{ i8, i16, i8, [256 x i8] }>
%struct.anon.90 = type { i16, [256 x i8] }

@__initcall__kmod_spi_dln2__237_878_spi_dln2_driver_init6 = internal global ptr @spi_dln2_driver_init, section ".initcall6.init", align 4
@spi_dln2_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dln2_spi_probe, ptr @dln2_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dln2_spi_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_spi_dln2_driver_exit = internal global ptr @spi_dln2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description238 = internal constant [69 x i8] c"spi_dln2.description=Driver for the Diolan DLN2 SPI master interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [60 x i8] c"spi_dln2.author=Laurentiu Palcu <laurentiu.palcu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [35 x i8] c"spi_dln2.file=drivers/spi/spi-dln2\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [24 x i8] c"spi_dln2.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias242 = internal constant [33 x i8] c"spi_dln2.alias=platform:dln2-spi\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dln2-spi\00", [23 x i8] zeroinitializer }, align 32
@dln2_spi_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dln2_spi_suspend, ptr @dln2_spi_resume, ptr @dln2_spi_suspend, ptr @dln2_spi_resume, ptr @dln2_spi_suspend, ptr @dln2_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dln2_spi_runtime_suspend, ptr @dln2_spi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@dln2_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 714, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to disable SPI module\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dln2_spi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/spi/spi-dln2.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dln2_spi_probe._entry_ptr = internal global ptr @dln2_spi_probe._entry, section ".printk_index", align 4
@dln2_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 720, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get number of CS pins\0A\00", [63 x i8] zeroinitializer }, align 32
@dln2_spi_probe._entry_ptr.8 = internal global ptr @dln2_spi_probe._entry.6, section ".printk_index", align 4
@dln2_spi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 728, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read bus min/max freqs\0A\00", [62 x i8] zeroinitializer }, align 32
@dln2_spi_probe._entry_ptr.11 = internal global ptr @dln2_spi_probe._entry.9, section ".printk_index", align 4
@dln2_spi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 735, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read supported frame sizes\0A\00", [58 x i8] zeroinitializer }, align 32
@dln2_spi_probe._entry_ptr.14 = internal global ptr @dln2_spi_probe._entry.12, section ".printk_index", align 4
@dln2_spi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 741, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to enable CS pins\0A\00", [38 x i8] zeroinitializer }, align 32
@dln2_spi_probe._entry_ptr.17 = internal global ptr @dln2_spi_probe._entry.15, section ".printk_index", align 4
@dln2_spi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 754, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable SPI module\0A\00", [35 x i8] zeroinitializer }, align 32
@dln2_spi_probe._entry_ptr.20 = internal global ptr @dln2_spi_probe._entry.18, section ".printk_index", align 4
@dln2_spi_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 766, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register master\0A\00", [37 x i8] zeroinitializer }, align 32
@dln2_spi_probe._entry_ptr.23 = internal global ptr @dln2_spi_probe._entry.21, section ".printk_index", align 4
@dln2_spi_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 777, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@dln2_spi_probe._entry_ptr.25 = internal global ptr @dln2_spi_probe._entry.24, section ".printk_index", align 4
@dln2_spi_get_cs_num.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 51, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi_dln2\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dln2_spi_get_cs_num\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cs_num = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@dln2_spi_get_speed_range.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 62, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dln2_spi_get_speed_range\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"freq_min = %d, freq_max = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@dln2_spi_get_supported_frame_sizes.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 86, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dln2_spi_get_supported_frame_sizes\00", [61 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bpw_mask = 0x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@dln2_spi_transfer_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 665, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot setup transfer\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dln2_spi_transfer_one\00", [42 x i8] zeroinitializer }, align 32
@dln2_spi_transfer_one._entry_ptr = internal global ptr @dln2_spi_transfer_one._entry, section ".printk_index", align 4
@dln2_spi_transfer_one._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 675, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"write/read failed!\0A\00", [44 x i8] zeroinitializer }, align 32
@dln2_spi_transfer_one._entry_ptr.37 = internal global ptr @dln2_spi_transfer_one._entry.35, section ".printk_index", align 4
@dln2_spi_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.38, ptr @.str.3, i32 792, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dln2_spi_remove\00", [16 x i8] zeroinitializer }, align 32
@dln2_spi_remove._entry_ptr = internal global ptr @dln2_spi_remove._entry, section ".printk_index", align 4
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"spi_dln2_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 870, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 872, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"dln2_spi_pm\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 864, i32 32 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 714, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 720, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 728, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 735, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 741, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 754, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 766, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 777, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 205, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 249, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 346, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 665, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 675, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [26 x i8] c"../drivers/spi/spi-dln2.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 792, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_spi_dln2_driver_exit, ptr @__initcall__kmod_spi_dln2__237_878_spi_dln2_driver_init6, ptr @dln2_spi_probe._entry, ptr @dln2_spi_probe._entry.12, ptr @dln2_spi_probe._entry.15, ptr @dln2_spi_probe._entry.18, ptr @dln2_spi_probe._entry.21, ptr @dln2_spi_probe._entry.24, ptr @dln2_spi_probe._entry.6, ptr @dln2_spi_probe._entry.9, ptr @dln2_spi_probe._entry_ptr, ptr @dln2_spi_probe._entry_ptr.11, ptr @dln2_spi_probe._entry_ptr.14, ptr @dln2_spi_probe._entry_ptr.17, ptr @dln2_spi_probe._entry_ptr.20, ptr @dln2_spi_probe._entry_ptr.23, ptr @dln2_spi_probe._entry_ptr.25, ptr @dln2_spi_probe._entry_ptr.8, ptr @dln2_spi_remove._entry, ptr @dln2_spi_remove._entry_ptr, ptr @dln2_spi_transfer_one._entry, ptr @dln2_spi_transfer_one._entry.35, ptr @dln2_spi_transfer_one._entry_ptr, ptr @dln2_spi_transfer_one._entry_ptr.37, ptr @spi_dln2_driver_exit, ptr @spi_dln2_driver, ptr @.str, ptr @dln2_spi_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_dln2_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_spi_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_spi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_spi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_spi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_spi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_spi_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_spi_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_spi_transfer_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_spi_transfer_one._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_spi_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_dln2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @spi_dln2_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spi_dln2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @spi_dln2_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %tx.i151 = alloca %struct.anon.71, align 1
  %tx.i.i = alloca %struct.anon.79, align 1
  %tx.i147 = alloca %struct.anon.72, align 1
  %rx.i = alloca %struct.anon.73, align 2
  %rx_len.i = alloca i32, align 4
  %tx.i = alloca %struct.anon.71, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 28, i1 noundef zeroext false) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @dev_fwnode(ptr noundef %dev) #6
  tail call void @device_set_node(ptr noundef nonnull %call.i, ptr noundef %call6) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i146 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i146 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i146, align 4
  %call9 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 272, i32 noundef 3264) #6
  %buf = getelementptr inbounds %struct.dln2_spi, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9, ptr %buf, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end.spi_controller_put.exit_crit_edge, label %if.end13

if.end.spi_controller_put.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_controller_put.exit

if.end13:                                         ; preds = %if.end
  %master14 = getelementptr inbounds %struct.dln2_spi, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %master14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %master14, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %4, align 4
  %port = getelementptr inbounds %struct.dln2_platform_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port, align 2
  %port16 = getelementptr inbounds %struct.dln2_spi, ptr %4, i32 0, i32 2
  %10 = ptrtoint ptr %port16 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %port16, align 4
  %cs = getelementptr inbounds %struct.dln2_spi, ptr %4, i32 0, i32 7
  %11 = ptrtoint ptr %cs to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %cs, align 2
  %mode = getelementptr inbounds %struct.dln2_spi, ptr %4, i32 0, i32 6
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 255, ptr %mode, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i) #6
  %13 = getelementptr inbounds %struct.anon.71, ptr %tx.i, i32 0, i32 1
  %14 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %9, ptr %tx.i, align 1
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %13, align 1
  %call.i.i = call i32 @dln2_transfer(ptr noundef %pdev, i16 noundef zeroext 530, ptr noundef nonnull %tx.i, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.end13.spi_controller_put.exit.sink.split_crit_edge, label %if.end20

if.end13.spi_controller_put.exit.sink.split_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_controller_put.exit.sink.split

if.end20:                                         ; preds = %if.end13
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tx.i147) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rx.i) #6
  %16 = ptrtoint ptr %rx.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %rx.i, align 2, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_len.i) #6
  %17 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %rx_len.i, align 4
  %18 = ptrtoint ptr %port16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port16, align 4
  %20 = ptrtoint ptr %tx.i147 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %tx.i147, align 1
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %4, align 4
  %call.i149 = call i32 @dln2_transfer(ptr noundef %22, i16 noundef zeroext 580, ptr noundef nonnull %tx.i147, i32 noundef 1, ptr noundef nonnull %rx.i, ptr noundef nonnull %rx_len.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %cmp.i = icmp slt i32 %call.i149, 0
  br i1 %cmp.i, label %if.end20.do.end26_crit_edge, label %if.end.i

if.end20.do.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

if.end.i:                                         ; preds = %if.end20
  %23 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp2.i = icmp ult i32 %24, 2
  br i1 %cmp2.i, label %if.end.i.do.end26_crit_edge, label %if.end4.i

if.end.i.do.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

if.end4.i:                                        ; preds = %if.end.i
  %25 = ptrtoint ptr %rx.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rx.i, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26) #6
  %28 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %num_chipselect, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_spi_get_cs_num.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dln2_spi_probe, %if.end28)) #6
          to label %if.then9.i [label %if.end28], !srcloc !89

if.then9.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %4, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num_chipselect, align 2
  %conv.i = zext i16 %32 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_spi_get_cs_num.__UNIQUE_ID_ddebug231, ptr noundef %dev.i, ptr noundef nonnull @.str.28, i32 noundef %conv.i) #6
  br label %if.end28

do.end26:                                         ; preds = %if.end.i.do.end26_crit_edge, %if.end20.do.end26_crit_edge
  %retval.0.i.ph = phi i32 [ -71, %if.end.i.do.end26_crit_edge ], [ %call.i149, %if.end20.do.end26_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_len.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rx.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx.i147) #6
  br label %spi_controller_put.exit.sink.split

if.end28:                                         ; preds = %if.then9.i, %if.end4.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_len.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rx.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx.i147) #6
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 8
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %call29 = call fastcc i32 @dln2_spi_get_speed_range(ptr noundef %4, ptr noundef %min_speed_hz, ptr noundef %max_speed_hz)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.spi_controller_put.exit.sink.split_crit_edge, label %if.end36

if.end28.spi_controller_put.exit.sink.split_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_controller_put.exit.sink.split

if.end36:                                         ; preds = %if.end28
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %call37 = call fastcc i32 @dln2_spi_get_supported_frame_sizes(ptr noundef %4, ptr noundef %bits_per_word_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.spi_controller_put.exit.sink.split_crit_edge, label %if.end44

if.end36.spi_controller_put.exit.sink.split_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_controller_put.exit.sink.split

if.end44:                                         ; preds = %if.end36
  %33 = ptrtoint ptr %master14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %master14, align 4
  %num_chipselect.i = getelementptr inbounds %struct.spi_controller, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %num_chipselect.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %num_chipselect.i, align 2
  %conv.i150 = zext i16 %36 to i32
  %sub1.i = sub nsw i32 32, %conv.i150
  %shr.i = lshr i32 -1, %sub1.i
  %conv2.i = trunc i32 %shr.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i.i) #6
  %37 = getelementptr inbounds %struct.anon.79, ptr %tx.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %port16 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %port16, align 4
  %40 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %tx.i.i, align 1
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv2.i, ptr %37, align 1
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %4, align 4
  %call.i.i.i = call i32 @dln2_transfer(ptr noundef %43, i16 noundef zeroext 568, ptr noundef nonnull %tx.i.i, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp46 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp46, label %if.end44.spi_controller_put.exit.sink.split_crit_edge, label %if.end52

if.end44.spi_controller_put.exit.sink.split_crit_edge: ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_controller_put.exit.sink.split

if.end52:                                         ; preds = %if.end44
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -1, ptr %bus_num, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %45 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %mode_bits, align 8
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %46 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @dln2_spi_prepare_message, ptr %prepare_message, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %47 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @dln2_spi_transfer_one, ptr %transfer_one, align 4
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %48 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %auto_runtime_pm, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i151) #6
  %49 = getelementptr inbounds %struct.anon.71, ptr %tx.i151, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %49, align 1, !annotation !88
  %51 = ptrtoint ptr %port16 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %port16, align 4
  %53 = ptrtoint ptr %tx.i151 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %tx.i151, align 1
  %54 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %4, align 4
  %call.i.i153 = call i32 @dln2_transfer(ptr noundef %55, i16 noundef zeroext 529, ptr noundef nonnull %tx.i151, i32 noundef 1, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i151) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i153)
  %cmp54 = icmp slt i32 %call.i.i153, 0
  br i1 %cmp54, label %if.end52.spi_controller_put.exit.sink.split_crit_edge, label %if.end60

if.end52.spi_controller_put.exit.sink.split_crit_edge: ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_controller_put.exit.sink.split

if.end60:                                         ; preds = %if.end52
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #6
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #6
  %call.i155 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  call void @pm_runtime_enable(ptr noundef %dev) #6
  %call67 = call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %do.end72, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end72:                                         ; preds = %if.end60
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %call.i156 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #6
  %call78 = call fastcc i32 @dln2_spi_enable(ptr noundef %4, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %do.end72.spi_controller_put.exit.sink.split_crit_edge, label %do.end72.spi_controller_put.exit_crit_edge

do.end72.spi_controller_put.exit_crit_edge:       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_controller_put.exit

do.end72.spi_controller_put.exit.sink.split_crit_edge: ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_controller_put.exit.sink.split

spi_controller_put.exit.sink.split:               ; preds = %do.end72.spi_controller_put.exit.sink.split_crit_edge, %if.end52.spi_controller_put.exit.sink.split_crit_edge, %if.end44.spi_controller_put.exit.sink.split_crit_edge, %if.end36.spi_controller_put.exit.sink.split_crit_edge, %if.end28.spi_controller_put.exit.sink.split_crit_edge, %do.end26, %if.end13.spi_controller_put.exit.sink.split_crit_edge
  %.str.1.sink = phi ptr [ @.str.7, %do.end26 ], [ @.str.1, %if.end13.spi_controller_put.exit.sink.split_crit_edge ], [ @.str.10, %if.end28.spi_controller_put.exit.sink.split_crit_edge ], [ @.str.13, %if.end36.spi_controller_put.exit.sink.split_crit_edge ], [ @.str.16, %if.end44.spi_controller_put.exit.sink.split_crit_edge ], [ @.str.19, %if.end52.spi_controller_put.exit.sink.split_crit_edge ], [ @.str.1, %do.end72.spi_controller_put.exit.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %retval.0.i.ph, %do.end26 ], [ %call.i.i, %if.end13.spi_controller_put.exit.sink.split_crit_edge ], [ %call29, %if.end28.spi_controller_put.exit.sink.split_crit_edge ], [ %call37, %if.end36.spi_controller_put.exit.sink.split_crit_edge ], [ %call.i.i.i, %if.end44.spi_controller_put.exit.sink.split_crit_edge ], [ %call.i.i153, %if.end52.spi_controller_put.exit.sink.split_crit_edge ], [ %call67, %do.end72.spi_controller_put.exit.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.1.sink) #9
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %spi_controller_put.exit.sink.split, %do.end72.spi_controller_put.exit_crit_edge, %if.end.spi_controller_put.exit_crit_edge
  %ret.0 = phi i32 [ %call67, %do.end72.spi_controller_put.exit_crit_edge ], [ -12, %if.end.spi_controller_put.exit_crit_edge ], [ %ret.0.ph, %spi_controller_put.exit.sink.split ]
  call void @put_device(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end60.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %spi_controller_put.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call67, %if.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_spi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  %tx.i = alloca %struct.anon.71, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i6 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i6, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i) #6
  %4 = getelementptr inbounds %struct.anon.71, ptr %tx.i, i32 0, i32 1
  %port.i = getelementptr inbounds %struct.dln2_spi, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port.i, align 4
  %7 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %tx.i, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %4, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %10, i16 noundef zeroext 530, ptr noundef nonnull %tx.i, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dln2_spi_enable(ptr nocapture noundef readonly %dln2, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %tx = alloca %struct.anon.71, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx) #6
  %0 = getelementptr inbounds %struct.anon.71, ptr %tx, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !88
  %port = getelementptr inbounds %struct.dln2_spi, ptr %dln2, i32 0, i32 2
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port, align 4
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %tx, align 1
  br i1 %enable, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %0, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %cmd.0 = phi i16 [ 530, %if.else ], [ 529, %entry.if.end_crit_edge ]
  %len.0 = phi i32 [ 2, %if.else ], [ 1, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dln2, align 4
  %call.i = call i32 @dln2_transfer(ptr noundef %7, i16 noundef zeroext %cmd.0, ptr noundef nonnull %tx, i32 noundef %len.0, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx) #6
  ret i32 %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dln2_spi_get_speed_range(ptr nocapture noundef readonly %dln2, ptr nocapture noundef %fmin, ptr nocapture noundef %fmax) unnamed_addr #2 align 64 {
entry:
  %tx.i19 = alloca %struct.anon.75, align 1
  %rx.i20 = alloca %struct.anon.76, align 4
  %rx_len.i21 = alloca i32, align 4
  %tx.i = alloca %struct.anon.75, align 1
  %rx.i = alloca %struct.anon.76, align 4
  %rx_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tx.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx.i) #6
  %0 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rx.i, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_len.i) #6
  %1 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %rx_len.i, align 4
  %port.i = getelementptr inbounds %struct.dln2_spi, ptr %dln2, i32 0, i32 2
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port.i, align 4
  %4 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %tx.i, align 1
  %5 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dln2, align 4
  %call.i = call i32 @dln2_transfer(ptr noundef %6, i16 noundef zeroext 581, ptr noundef nonnull %tx.i, i32 noundef 1, ptr noundef nonnull %rx.i, ptr noundef nonnull %rx_len.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.dln2_spi_get_speed.exit.thread_crit_edge, label %if.end.i

entry.dln2_spi_get_speed.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_get_speed.exit.thread

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp2.i = icmp ult i32 %8, 4
  br i1 %cmp2.i, label %if.end.i.dln2_spi_get_speed.exit.thread_crit_edge, label %if.end

if.end.i.dln2_spi_get_speed.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_get_speed.exit.thread

dln2_spi_get_speed.exit.thread:                   ; preds = %if.end.i.dln2_spi_get_speed.exit.thread_crit_edge, %entry.dln2_spi_get_speed.exit.thread_crit_edge
  %retval.0.i18.ph = phi i32 [ -71, %if.end.i.dln2_spi_get_speed.exit.thread_crit_edge ], [ %call.i, %entry.dln2_spi_get_speed.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_len.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %9 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx.i, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10) #6
  %12 = ptrtoint ptr %fmin to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %fmin, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_len.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tx.i19) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx.i20) #6
  %13 = ptrtoint ptr %rx.i20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %rx.i20, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_len.i21) #6
  %14 = ptrtoint ptr %rx_len.i21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %rx_len.i21, align 4
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port.i, align 4
  %17 = ptrtoint ptr %tx.i19 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tx.i19, align 1
  %18 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dln2, align 4
  %call.i23 = call i32 @dln2_transfer(ptr noundef %19, i16 noundef zeroext 582, ptr noundef nonnull %tx.i19, i32 noundef 1, ptr noundef nonnull %rx.i20, ptr noundef nonnull %rx_len.i21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp.i24 = icmp slt i32 %call.i23, 0
  br i1 %cmp.i24, label %if.end.dln2_spi_get_speed.exit29.thread_crit_edge, label %if.end.i26

if.end.dln2_spi_get_speed.exit29.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_get_speed.exit29.thread

if.end.i26:                                       ; preds = %if.end
  %20 = ptrtoint ptr %rx_len.i21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_len.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp2.i25 = icmp ult i32 %21, 4
  br i1 %cmp2.i25, label %if.end.i26.dln2_spi_get_speed.exit29.thread_crit_edge, label %do.body

if.end.i26.dln2_spi_get_speed.exit29.thread_crit_edge: ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_get_speed.exit29.thread

dln2_spi_get_speed.exit29.thread:                 ; preds = %if.end.i26.dln2_spi_get_speed.exit29.thread_crit_edge, %if.end.dln2_spi_get_speed.exit29.thread_crit_edge
  %retval.0.i28.ph = phi i32 [ -71, %if.end.i26.dln2_spi_get_speed.exit29.thread_crit_edge ], [ %call.i23, %if.end.dln2_spi_get_speed.exit29.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_len.i21) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx.i20) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx.i19) #6
  br label %cleanup

do.body:                                          ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %rx.i20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx.i20, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23) #6
  %25 = ptrtoint ptr %fmax to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %fmax, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_len.i21) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx.i20) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx.i19) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_spi_get_speed_range.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dln2_spi_get_speed_range, %cleanup)) #6
          to label %if.then9 [label %cleanup], !srcloc !89

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dln2, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %fmin to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fmin, align 4
  %30 = ptrtoint ptr %fmax to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fmax, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_spi_get_speed_range.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %29, i32 noundef %31) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %do.body, %dln2_spi_get_speed.exit29.thread, %dln2_spi_get_speed.exit.thread
  %retval.0 = phi i32 [ 0, %if.then9 ], [ %retval.0.i18.ph, %dln2_spi_get_speed.exit.thread ], [ %retval.0.i28.ph, %dln2_spi_get_speed.exit29.thread ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dln2_spi_get_supported_frame_sizes(ptr nocapture noundef readonly %dln2, ptr nocapture noundef %bpw_mask) unnamed_addr #2 align 64 {
entry:
  %tx = alloca %struct.anon.77, align 1
  %rx_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tx) #6
  %buf = getelementptr inbounds %struct.dln2_spi, ptr %dln2, i32 0, i32 3
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_len) #6
  %2 = ptrtoint ptr %rx_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 37, ptr %rx_len, align 4
  %port = getelementptr inbounds %struct.dln2_spi, ptr %dln2, i32 0, i32 2
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port, align 4
  %5 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %tx, align 1
  %6 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dln2, align 4
  %call = call i32 @dln2_transfer(ptr noundef %7, i16 noundef zeroext 579, ptr noundef nonnull %tx, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %rx_len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %9)
  %cmp2 = icmp ult i32 %9, 37
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %11)
  %cmp5 = icmp ugt i8 %11, 36
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %12 = ptrtoint ptr %bpw_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %bpw_mask, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp1138.not = icmp eq i8 %14, 0
  br i1 %cmp1138.not, label %if.end8.do.body_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.anon.78, ptr %1, i32 0, i32 1, i32 %i.039
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv13 = zext i8 %16 to i32
  %sub = add nsw i32 %conv13, -1
  %shl = shl nuw i32 1, %sub
  %17 = ptrtoint ptr %bpw_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bpw_mask, align 4
  %or = or i32 %shl, %18
  store i32 %or, ptr %bpw_mask, align 4
  %inc = add nuw nsw i32 %i.039, 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 1
  %conv10 = zext i8 %20 to i32
  %cmp11 = icmp ult i32 %inc, %conv10
  br i1 %cmp11, label %for.body.for.body_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %if.end8.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_spi_get_supported_frame_sizes.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dln2_spi_get_supported_frame_sizes, %cleanup)) #6
          to label %if.then18 [label %cleanup], !srcloc !89

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dln2, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %bpw_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bpw_mask, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_spi_get_supported_frame_sizes.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %24) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %do.body, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -71, %if.end.cleanup_crit_edge ], [ -71, %if.end4.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_len) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_spi_prepare_message(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %message) #2 align 64 {
entry:
  %tx.i.i = alloca %struct.anon.80, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %cs = getelementptr inbounds %struct.dln2_spi, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %cs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cs, align 2
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_select, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp.not = icmp eq i8 %5, %7
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i.i) #6
  %8 = getelementptr inbounds %struct.anon.80, ptr %tx.i.i, i32 0, i32 1
  %port.i.i = getelementptr inbounds %struct.dln2_spi, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %port.i.i, align 4
  %11 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %tx.i.i, align 1
  %neg.i.i = xor i8 %conv1.i, -1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %neg.i.i, ptr %8, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i.i.i = call i32 @dln2_transfer(ptr noundef %14, i16 noundef zeroext 550, ptr noundef nonnull %tx.i.i, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp6 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp6, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %chip_select, align 4
  %17 = ptrtoint ptr %cs to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %cs, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_spi_transfer_one(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %spi, ptr nocapture noundef readonly %xfer) #2 align 64 {
entry:
  %tx.i.i33 = alloca %struct.anon.89, align 1
  %rx_len.i95.i = alloca i32, align 4
  %rx_len.i.i34 = alloca i32, align 4
  %tx.i95.i = alloca %struct.anon.71, align 1
  %tx.i92.i = alloca %struct.anon.84, align 1
  %tx.i89.i = alloca %struct.anon.83, align 1
  %tx.i87.i = alloca %struct.anon.81, align 1
  %rx.i.i = alloca %struct.anon.82, align 4
  %rx_len.i.i = alloca i32, align 4
  %tx.i.i = alloca %struct.anon.71, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %2 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed_hz, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %4 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bits_per_word, align 1
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 8
  %conv = trunc i32 %7 to i8
  %speed1.i = getelementptr inbounds %struct.dln2_spi, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %speed1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp.not.i = icmp eq i32 %9, %3
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %mode2.i = getelementptr inbounds %struct.dln2_spi, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode2.i, align 4
  %12 = trunc i32 %7 to i16
  %13 = and i16 %12, 255
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp4.not.i = icmp eq i16 %11, %13
  br i1 %cmp4.not.i, label %lor.rhs.i, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %bpw6.i = getelementptr inbounds %struct.dln2_spi, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %bpw6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bpw6.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %5)
  %cmp9.not.i = icmp eq i8 %15, %5
  br i1 %cmp9.not.i, label %lor.rhs.i.if.end_crit_edge, label %lor.rhs.i.if.end.i_crit_edge

lor.rhs.i.if.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %lor.rhs.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i.i) #6
  %16 = getelementptr inbounds %struct.anon.71, ptr %tx.i.i, i32 0, i32 1
  %port.i.i = getelementptr inbounds %struct.dln2_spi, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port.i.i, align 4
  %19 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %tx.i.i, align 1
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %16, align 1
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i.i.i = call i32 @dln2_transfer(ptr noundef %22, i16 noundef zeroext 530, ptr noundef nonnull %tx.i.i, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp11.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp11.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end14.i

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end14.i:                                       ; preds = %if.end.i
  %23 = ptrtoint ptr %speed1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %speed1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %3)
  %cmp16.not.i = icmp eq i32 %24, %3
  br i1 %cmp16.not.i, label %if.end14.i.if.end25.i_crit_edge, label %if.then18.i

if.end14.i.if.end25.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %tx.i87.i) #6
  %25 = getelementptr inbounds %struct.anon.81, ptr %tx.i87.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx.i.i) #6
  %26 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %rx.i.i, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_len.i.i) #6
  %27 = ptrtoint ptr %rx_len.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %rx_len.i.i, align 4
  %28 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %port.i.i, align 4
  %30 = ptrtoint ptr %tx.i87.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %tx.i87.i, align 1
  %31 = call i32 @llvm.bswap.i32(i32 %3) #6
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %25, align 1
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %34, i16 noundef zeroext 536, ptr noundef nonnull %tx.i87.i, i32 noundef 5, ptr noundef nonnull %rx.i.i, ptr noundef nonnull %rx_len.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then18.i.dln2_spi_set_speed.exit.thread.i_crit_edge, label %if.end.i.i

if.then18.i.dln2_spi_set_speed.exit.thread.i_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_set_speed.exit.thread.i

if.end.i.i:                                       ; preds = %if.then18.i
  %35 = ptrtoint ptr %rx_len.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %cmp3.i.i = icmp ult i32 %36, 4
  br i1 %cmp3.i.i, label %if.end.i.i.dln2_spi_set_speed.exit.thread.i_crit_edge, label %if.end23.i

if.end.i.i.dln2_spi_set_speed.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_set_speed.exit.thread.i

dln2_spi_set_speed.exit.thread.i:                 ; preds = %if.end.i.i.dln2_spi_set_speed.exit.thread.i_crit_edge, %if.then18.i.dln2_spi_set_speed.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %if.then18.i.dln2_spi_set_speed.exit.thread.i_crit_edge ], [ -71, %if.end.i.i.dln2_spi_set_speed.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_len.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx.i.i) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %tx.i87.i) #6
  br label %cleanup.sink.split

if.end23.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_len.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx.i.i) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %tx.i87.i) #6
  %37 = ptrtoint ptr %speed1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %3, ptr %speed1.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end23.i, %if.end14.i.if.end25.i_crit_edge
  %mode26.i = getelementptr inbounds %struct.dln2_spi, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %mode26.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %mode26.i, align 4
  %40 = trunc i32 %7 to i16
  %41 = and i16 %40, 255
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %41)
  %cmp29.not.i = icmp eq i16 %39, %41
  br i1 %cmp29.not.i, label %if.end25.i.if.end41.i_crit_edge, label %if.then31.i

if.end25.i.if.end41.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.then31.i:                                      ; preds = %if.end25.i
  %42 = and i8 %conv, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i89.i) #6
  %43 = getelementptr inbounds %struct.anon.83, ptr %tx.i89.i, i32 0, i32 1
  %44 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %port.i.i, align 4
  %46 = ptrtoint ptr %tx.i89.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %tx.i89.i, align 1
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %42, ptr %43, align 1
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call.i.i91.i = call i32 @dln2_transfer(ptr noundef %49, i16 noundef zeroext 532, ptr noundef nonnull %tx.i89.i, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i89.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i91.i)
  %cmp35.i = icmp slt i32 %call.i.i91.i, 0
  br i1 %cmp35.i, label %if.then31.i.cleanup.sink.split_crit_edge, label %if.end38.i

if.then31.i.cleanup.sink.split_crit_edge:         ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end38.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %mode26.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %41, ptr %mode26.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end38.i, %if.end25.i.if.end41.i_crit_edge
  %bpw42.i = getelementptr inbounds %struct.dln2_spi, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %bpw42.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bpw42.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %5)
  %cmp45.not.i = icmp eq i8 %52, %5
  br i1 %cmp45.not.i, label %if.end41.i.dln2_spi_transfer_setup.exit_crit_edge, label %if.then47.i

if.end41.i.dln2_spi_transfer_setup.exit_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_transfer_setup.exit

if.then47.i:                                      ; preds = %if.end41.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i92.i) #6
  %53 = getelementptr inbounds %struct.anon.84, ptr %tx.i92.i, i32 0, i32 1
  %54 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %port.i.i, align 4
  %56 = ptrtoint ptr %tx.i92.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %tx.i92.i, align 1
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %5, ptr %53, align 1
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %call.i.i94.i = call i32 @dln2_transfer(ptr noundef %59, i16 noundef zeroext 534, ptr noundef nonnull %tx.i92.i, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i92.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i94.i)
  %cmp49.i = icmp slt i32 %call.i.i94.i, 0
  br i1 %cmp49.i, label %if.then47.i.cleanup.sink.split_crit_edge, label %if.end52.i

if.then47.i.cleanup.sink.split_crit_edge:         ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end52.i:                                       ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %bpw42.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %5, ptr %bpw42.i, align 4
  br label %dln2_spi_transfer_setup.exit

dln2_spi_transfer_setup.exit:                     ; preds = %if.end52.i, %if.end41.i.dln2_spi_transfer_setup.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i95.i) #6
  %61 = getelementptr inbounds %struct.anon.71, ptr %tx.i95.i, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %61, align 1, !annotation !88
  %63 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %port.i.i, align 4
  %65 = ptrtoint ptr %tx.i95.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %tx.i95.i, align 1
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %call.i.i97.i = call i32 @dln2_transfer(ptr noundef %67, i16 noundef zeroext 529, ptr noundef nonnull %tx.i95.i, i32 noundef 1, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i95.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i97.i)
  %cmp = icmp slt i32 %call.i.i97.i, 0
  br i1 %cmp, label %dln2_spi_transfer_setup.exit.cleanup.sink.split_crit_edge, label %dln2_spi_transfer_setup.exit.if.end_crit_edge

dln2_spi_transfer_setup.exit.if.end_crit_edge:    ; preds = %dln2_spi_transfer_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

dln2_spi_transfer_setup.exit.cleanup.sink.split_crit_edge: ; preds = %dln2_spi_transfer_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %dln2_spi_transfer_setup.exit.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 7
  %68 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load = load i8, ptr %cs_change, align 4
  %69 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not = icmp eq i8 %69, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %cur_msg.i = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 31
  %70 = ptrtoint ptr %cur_msg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cur_msg.i, align 4
  %72 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %transfer_list.i, align 4
  %cmp.i.i32 = icmp ne ptr %73, %71
  %spec.select = zext i1 %cmp.i.i32 to i8
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end.if.end5_crit_edge
  %attr.0 = phi i8 [ 0, %if.end.if.end5_crit_edge ], [ %spec.select, %land.lhs.true ]
  %74 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %xfer, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %76 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rx_buf, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %78 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len, align 4
  %conv6 = trunc i32 %79 to i16
  %tobool.not.i = icmp eq ptr %75, null
  %tobool5.not.i = icmp eq ptr %77, null
  %or.cond.i = or i1 %tobool.not.i, %tobool5.not.i
  %buf.i.i = getelementptr inbounds %struct.dln2_spi, ptr %1, i32 0, i32 3
  %port.i.i35 = getelementptr inbounds %struct.dln2_spi, ptr %1, i32 0, i32 2
  %bpw.i.i = getelementptr inbounds %struct.dln2_spi, ptr %1, i32 0, i32 4
  %80 = getelementptr inbounds %struct.anon.89, ptr %tx.i.i33, i32 0, i32 2
  %81 = getelementptr inbounds %struct.anon.89, ptr %tx.i.i33, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end29.i.do.body.i_crit_edge, %if.end5
  %remaining.0.i = phi i16 [ %conv6, %if.end5 ], [ %sub32.i, %if.end29.i.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %remaining.0.i)
  %cmp.i = icmp ugt i16 %remaining.0.i, 256
  %82 = call i16 @llvm.umin.i16(i16 %remaining.0.i, i16 256) #6
  %.attr.i = select i1 %cmp.i, i8 1, i8 %attr.0
  %sub.i = sub i16 %conv6, %remaining.0.i
  br i1 %or.cond.i, label %if.else10.i, label %if.then6.i

if.then6.i:                                       ; preds = %do.body.i
  %conv7.i = zext i16 %sub.i to i32
  %add.ptr.i = getelementptr i8, ptr %75, i32 %conv7.i
  %add.ptr9.i = getelementptr i8, ptr %77, i32 %conv7.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_len.i.i34) #6
  %conv.i.i = zext i16 %82 to i32
  %83 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buf.i.i, align 4
  %85 = ptrtoint ptr %port.i.i35 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %port.i.i35, align 4
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %84, align 1
  %88 = call i16 @llvm.bswap.i16(i16 %82) #6
  %size.i.i = getelementptr inbounds %struct.anon.85, ptr %84, i32 0, i32 1
  %89 = ptrtoint ptr %size.i.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %88, ptr %size.i.i, align 1
  %attr4.i.i = getelementptr inbounds %struct.anon.85, ptr %84, i32 0, i32 2
  %90 = ptrtoint ptr %attr4.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %.attr.i, ptr %attr4.i.i, align 1
  %buf5.i.i = getelementptr inbounds %struct.anon.85, ptr %84, i32 0, i32 3
  %91 = ptrtoint ptr %bpw.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bpw.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %92)
  %cmp.i.i.i = icmp ult i8 %92, 9
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %93 = call ptr @memcpy(ptr %buf5.i.i, ptr %add.ptr.i, i32 %conv.i.i)
  br label %dln2_spi_copy_to_buf.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %92)
  %cmp4.i.i.i = icmp ult i8 %92, 17
  br i1 %cmp4.i.i.i, label %if.then6.i.i.i, label %if.else10.i.i.i

if.then6.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %82)
  %tobool.not6.i.i.i = icmp ult i16 %82, 2
  br i1 %tobool.not6.i.i.i, label %if.then6.i.i.i.dln2_spi_copy_to_buf.exit.i.i_crit_edge, label %while.body.preheader.i.i.i

if.then6.i.i.i.dln2_spi_copy_to_buf.exit.i.i_crit_edge: ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_copy_to_buf.exit.i.i

while.body.preheader.i.i.i:                       ; preds = %if.then6.i.i.i
  %94 = lshr i16 %82, 1
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.body.preheader.i.i.i
  %s.09.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %add.ptr.i, %while.body.preheader.i.i.i ]
  %d.08.i.i.i = phi ptr [ %incdec.ptr9.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %buf5.i.i, %while.body.preheader.i.i.i ]
  %len.addr.07.i.i.i = phi i16 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %94, %while.body.preheader.i.i.i ]
  %dec.i.i.i = add nsw i16 %len.addr.07.i.i.i, -1
  %incdec.ptr.i.i.i = getelementptr i16, ptr %s.09.i.i.i, i32 1
  %95 = ptrtoint ptr %s.09.i.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %s.09.i.i.i, align 2
  %97 = call i16 @llvm.bswap.i16(i16 %96) #6
  %incdec.ptr9.i.i.i = getelementptr i16, ptr %d.08.i.i.i, i32 1
  %98 = ptrtoint ptr %d.08.i.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %d.08.i.i.i, align 2
  %tobool.not.i.i.i = icmp eq i16 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.dln2_spi_copy_to_buf.exit.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i.i

while.body.i.i.i.dln2_spi_copy_to_buf.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_copy_to_buf.exit.i.i

if.else10.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %82)
  %tobool18.not2.i.i.i = icmp ult i16 %82, 4
  br i1 %tobool18.not2.i.i.i, label %if.else10.i.i.i.dln2_spi_copy_to_buf.exit.i.i_crit_edge, label %while.body19.preheader.i.i.i

if.else10.i.i.i.dln2_spi_copy_to_buf.exit.i.i_crit_edge: ; preds = %if.else10.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_copy_to_buf.exit.i.i

while.body19.preheader.i.i.i:                     ; preds = %if.else10.i.i.i
  %99 = lshr i16 %82, 2
  br label %while.body19.i.i.i

while.body19.i.i.i:                               ; preds = %while.body19.i.i.i.while.body19.i.i.i_crit_edge, %while.body19.preheader.i.i.i
  %s12.05.i.i.i = phi ptr [ %incdec.ptr20.i.i.i, %while.body19.i.i.i.while.body19.i.i.i_crit_edge ], [ %add.ptr.i, %while.body19.preheader.i.i.i ]
  %d11.04.i.i.i = phi ptr [ %incdec.ptr22.i.i.i, %while.body19.i.i.i.while.body19.i.i.i_crit_edge ], [ %buf5.i.i, %while.body19.preheader.i.i.i ]
  %len.addr.13.i.i.i = phi i16 [ %dec17.i.i.i, %while.body19.i.i.i.while.body19.i.i.i_crit_edge ], [ %99, %while.body19.preheader.i.i.i ]
  %dec17.i.i.i = add nsw i16 %len.addr.13.i.i.i, -1
  %incdec.ptr20.i.i.i = getelementptr i32, ptr %s12.05.i.i.i, i32 1
  %100 = ptrtoint ptr %s12.05.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %s12.05.i.i.i, align 4
  %102 = call i32 @llvm.bswap.i32(i32 %101) #6
  %incdec.ptr22.i.i.i = getelementptr i32, ptr %d11.04.i.i.i, i32 1
  %103 = ptrtoint ptr %d11.04.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %d11.04.i.i.i, align 4
  %tobool18.not.i.i.i = icmp eq i16 %dec17.i.i.i, 0
  br i1 %tobool18.not.i.i.i, label %while.body19.i.i.i.dln2_spi_copy_to_buf.exit.i.i_crit_edge, label %while.body19.i.i.i.while.body19.i.i.i_crit_edge

while.body19.i.i.i.while.body19.i.i.i_crit_edge:  ; preds = %while.body19.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body19.i.i.i

while.body19.i.i.i.dln2_spi_copy_to_buf.exit.i.i_crit_edge: ; preds = %while.body19.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_copy_to_buf.exit.i.i

dln2_spi_copy_to_buf.exit.i.i:                    ; preds = %while.body19.i.i.i.dln2_spi_copy_to_buf.exit.i.i_crit_edge, %if.else10.i.i.i.dln2_spi_copy_to_buf.exit.i.i_crit_edge, %while.body.i.i.i.dln2_spi_copy_to_buf.exit.i.i_crit_edge, %if.then6.i.i.i.dln2_spi_copy_to_buf.exit.i.i_crit_edge, %if.then.i.i.i
  %sub.i.i = add nuw nsw i32 %conv.i.i, 4
  %104 = ptrtoint ptr %rx_len.i.i34 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 258, ptr %rx_len.i.i34, align 4
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %call7.i.i = call i32 @dln2_transfer(ptr noundef %106, i16 noundef zeroext 538, ptr noundef %84, i32 noundef %sub.i.i, ptr noundef %84, ptr noundef nonnull %rx_len.i.i34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp8.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp8.i.i, label %dln2_spi_copy_to_buf.exit.i.i.dln2_spi_read_write_one.exit.i_crit_edge, label %if.end11.i.i

dln2_spi_copy_to_buf.exit.i.i.dln2_spi_read_write_one.exit.i_crit_edge: ; preds = %dln2_spi_copy_to_buf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_read_write_one.exit.i

if.end11.i.i:                                     ; preds = %dln2_spi_copy_to_buf.exit.i.i
  %107 = ptrtoint ptr %rx_len.i.i34 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rx_len.i.i34, align 4
  %add13.i.i = add nuw nsw i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %add13.i.i)
  %cmp14.i.i = icmp ult i32 %108, %add13.i.i
  br i1 %cmp14.i.i, label %if.end11.i.i.dln2_spi_read_write_one.exit.i_crit_edge, label %if.end17.i.i

if.end11.i.i.dln2_spi_read_write_one.exit.i_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_read_write_one.exit.i

if.end17.i.i:                                     ; preds = %if.end11.i.i
  %109 = ptrtoint ptr %84 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %84, align 1
  %111 = call i16 @llvm.bswap.i16(i16 %110) #6
  call void @__sanitizer_cov_trace_cmp2(i16 %111, i16 %82)
  %cmp21.not.i.i = icmp eq i16 %111, %82
  br i1 %cmp21.not.i.i, label %if.end24.i.i, label %if.end17.i.i.dln2_spi_read_write_one.exit.i_crit_edge

if.end17.i.i.dln2_spi_read_write_one.exit.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_read_write_one.exit.i

if.end24.i.i:                                     ; preds = %if.end17.i.i
  %buf25.i.i = getelementptr inbounds %struct.anon.86, ptr %84, i32 0, i32 1
  %112 = ptrtoint ptr %bpw.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bpw.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %113)
  %cmp.i51.i.i = icmp ult i8 %113, 9
  br i1 %cmp.i51.i.i, label %if.then.i53.i.i, label %if.else.i55.i.i

if.then.i53.i.i:                                  ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %114 = call ptr @memcpy(ptr %add.ptr9.i, ptr %buf25.i.i, i32 %conv.i.i)
  br label %dln2_spi_read_write_one.exit.i

if.else.i55.i.i:                                  ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %113)
  %cmp4.i54.i.i = icmp ult i8 %113, 17
  br i1 %cmp4.i54.i.i, label %if.then6.i57.i.i, label %if.else10.i68.i.i

if.then6.i57.i.i:                                 ; preds = %if.else.i55.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %82)
  %tobool.not6.i56.i.i = icmp ult i16 %82, 2
  br i1 %tobool.not6.i56.i.i, label %if.then6.i57.i.i.dln2_spi_read_write_one.exit.i_crit_edge, label %while.body.preheader.i58.i.i

if.then6.i57.i.i.dln2_spi_read_write_one.exit.i_crit_edge: ; preds = %if.then6.i57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_read_write_one.exit.i

while.body.preheader.i58.i.i:                     ; preds = %if.then6.i57.i.i
  %115 = lshr i16 %82, 1
  br label %while.body.i66.i.i

while.body.i66.i.i:                               ; preds = %while.body.i66.i.i.while.body.i66.i.i_crit_edge, %while.body.preheader.i58.i.i
  %s.09.i59.i.i = phi ptr [ %incdec.ptr.i63.i.i, %while.body.i66.i.i.while.body.i66.i.i_crit_edge ], [ %buf25.i.i, %while.body.preheader.i58.i.i ]
  %d.08.i60.i.i = phi ptr [ %incdec.ptr9.i64.i.i, %while.body.i66.i.i.while.body.i66.i.i_crit_edge ], [ %add.ptr9.i, %while.body.preheader.i58.i.i ]
  %len.addr.07.i61.i.i = phi i16 [ %dec.i62.i.i, %while.body.i66.i.i.while.body.i66.i.i_crit_edge ], [ %115, %while.body.preheader.i58.i.i ]
  %dec.i62.i.i = add nsw i16 %len.addr.07.i61.i.i, -1
  %incdec.ptr.i63.i.i = getelementptr i16, ptr %s.09.i59.i.i, i32 1
  %116 = ptrtoint ptr %s.09.i59.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %s.09.i59.i.i, align 2
  %118 = call i16 @llvm.bswap.i16(i16 %117) #6
  %incdec.ptr9.i64.i.i = getelementptr i16, ptr %d.08.i60.i.i, i32 1
  %119 = ptrtoint ptr %d.08.i60.i.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %d.08.i60.i.i, align 2
  %tobool.not.i65.i.i = icmp eq i16 %dec.i62.i.i, 0
  br i1 %tobool.not.i65.i.i, label %while.body.i66.i.i.dln2_spi_read_write_one.exit.i_crit_edge, label %while.body.i66.i.i.while.body.i66.i.i_crit_edge

while.body.i66.i.i.while.body.i66.i.i_crit_edge:  ; preds = %while.body.i66.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i66.i.i

while.body.i66.i.i.dln2_spi_read_write_one.exit.i_crit_edge: ; preds = %while.body.i66.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_read_write_one.exit.i

if.else10.i68.i.i:                                ; preds = %if.else.i55.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %82)
  %tobool18.not2.i67.i.i = icmp ult i16 %82, 4
  br i1 %tobool18.not2.i67.i.i, label %if.else10.i68.i.i.dln2_spi_read_write_one.exit.i_crit_edge, label %while.body19.preheader.i69.i.i

if.else10.i68.i.i.dln2_spi_read_write_one.exit.i_crit_edge: ; preds = %if.else10.i68.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_read_write_one.exit.i

while.body19.preheader.i69.i.i:                   ; preds = %if.else10.i68.i.i
  %120 = lshr i16 %82, 2
  br label %while.body19.i77.i.i

while.body19.i77.i.i:                             ; preds = %while.body19.i77.i.i.while.body19.i77.i.i_crit_edge, %while.body19.preheader.i69.i.i
  %s12.05.i70.i.i = phi ptr [ %incdec.ptr20.i74.i.i, %while.body19.i77.i.i.while.body19.i77.i.i_crit_edge ], [ %buf25.i.i, %while.body19.preheader.i69.i.i ]
  %d11.04.i71.i.i = phi ptr [ %incdec.ptr22.i75.i.i, %while.body19.i77.i.i.while.body19.i77.i.i_crit_edge ], [ %add.ptr9.i, %while.body19.preheader.i69.i.i ]
  %len.addr.13.i72.i.i = phi i16 [ %dec17.i73.i.i, %while.body19.i77.i.i.while.body19.i77.i.i_crit_edge ], [ %120, %while.body19.preheader.i69.i.i ]
  %dec17.i73.i.i = add nsw i16 %len.addr.13.i72.i.i, -1
  %incdec.ptr20.i74.i.i = getelementptr i32, ptr %s12.05.i70.i.i, i32 1
  %121 = ptrtoint ptr %s12.05.i70.i.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %s12.05.i70.i.i, align 1
  %123 = call i32 @llvm.bswap.i32(i32 %122) #6
  %incdec.ptr22.i75.i.i = getelementptr i32, ptr %d11.04.i71.i.i, i32 1
  %124 = ptrtoint ptr %d11.04.i71.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %d11.04.i71.i.i, align 4
  %tobool18.not.i76.i.i = icmp eq i16 %dec17.i73.i.i, 0
  br i1 %tobool18.not.i76.i.i, label %while.body19.i77.i.i.dln2_spi_read_write_one.exit.i_crit_edge, label %while.body19.i77.i.i.while.body19.i77.i.i_crit_edge

while.body19.i77.i.i.while.body19.i77.i.i_crit_edge: ; preds = %while.body19.i77.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body19.i77.i.i

while.body19.i77.i.i.dln2_spi_read_write_one.exit.i_crit_edge: ; preds = %while.body19.i77.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_read_write_one.exit.i

dln2_spi_read_write_one.exit.i:                   ; preds = %while.body19.i77.i.i.dln2_spi_read_write_one.exit.i_crit_edge, %if.else10.i68.i.i.dln2_spi_read_write_one.exit.i_crit_edge, %while.body.i66.i.i.dln2_spi_read_write_one.exit.i_crit_edge, %if.then6.i57.i.i.dln2_spi_read_write_one.exit.i_crit_edge, %if.then.i53.i.i, %if.end17.i.i.dln2_spi_read_write_one.exit.i_crit_edge, %if.end11.i.i.dln2_spi_read_write_one.exit.i_crit_edge, %dln2_spi_copy_to_buf.exit.i.i.dln2_spi_read_write_one.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call7.i.i, %dln2_spi_copy_to_buf.exit.i.i.dln2_spi_read_write_one.exit.i_crit_edge ], [ -71, %if.end11.i.i.dln2_spi_read_write_one.exit.i_crit_edge ], [ -71, %if.end17.i.i.dln2_spi_read_write_one.exit.i_crit_edge ], [ 0, %if.then.i53.i.i ], [ 0, %if.then6.i57.i.i.dln2_spi_read_write_one.exit.i_crit_edge ], [ 0, %if.else10.i68.i.i.dln2_spi_read_write_one.exit.i_crit_edge ], [ 0, %while.body.i66.i.i.dln2_spi_read_write_one.exit.i_crit_edge ], [ 0, %while.body19.i77.i.i.dln2_spi_read_write_one.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_len.i.i34) #6
  br label %if.end25.i39

if.else10.i:                                      ; preds = %do.body.i
  br i1 %tobool.not.i, label %if.else16.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.else10.i
  %conv13.i = zext i16 %sub.i to i32
  %add.ptr14.i = getelementptr i8, ptr %75, i32 %conv13.i
  %conv.i61.i = zext i16 %82 to i32
  %125 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %buf.i.i, align 4
  %127 = ptrtoint ptr %port.i.i35 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %port.i.i35, align 4
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %126, align 1
  %130 = call i16 @llvm.bswap.i16(i16 %82) #6
  %size.i64.i = getelementptr inbounds %struct.anon.88, ptr %126, i32 0, i32 1
  %131 = ptrtoint ptr %size.i64.i to i32
  call void @__asan_storeN_noabort(i32 %131, i32 2)
  store i16 %130, ptr %size.i64.i, align 1
  %attr3.i.i = getelementptr inbounds %struct.anon.88, ptr %126, i32 0, i32 2
  %132 = ptrtoint ptr %attr3.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %.attr.i, ptr %attr3.i.i, align 1
  %buf4.i.i = getelementptr inbounds %struct.anon.88, ptr %126, i32 0, i32 3
  %133 = ptrtoint ptr %bpw.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %bpw.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %134)
  %cmp.i.i66.i = icmp ult i8 %134, 9
  br i1 %cmp.i.i66.i, label %if.then.i.i67.i, label %if.else.i.i69.i

if.then.i.i67.i:                                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  %135 = call ptr @memcpy(ptr %buf4.i.i, ptr %add.ptr14.i, i32 %conv.i61.i)
  br label %dln2_spi_write_one.exit.i

if.else.i.i69.i:                                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %134)
  %cmp4.i.i68.i = icmp ult i8 %134, 17
  br i1 %cmp4.i.i68.i, label %if.then6.i.i71.i, label %if.else10.i.i82.i

if.then6.i.i71.i:                                 ; preds = %if.else.i.i69.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %82)
  %tobool.not6.i.i70.i = icmp ult i16 %82, 2
  br i1 %tobool.not6.i.i70.i, label %if.then6.i.i71.i.dln2_spi_write_one.exit.i_crit_edge, label %while.body.preheader.i.i72.i

if.then6.i.i71.i.dln2_spi_write_one.exit.i_crit_edge: ; preds = %if.then6.i.i71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_write_one.exit.i

while.body.preheader.i.i72.i:                     ; preds = %if.then6.i.i71.i
  %136 = lshr i16 %82, 1
  br label %while.body.i.i80.i

while.body.i.i80.i:                               ; preds = %while.body.i.i80.i.while.body.i.i80.i_crit_edge, %while.body.preheader.i.i72.i
  %s.09.i.i73.i = phi ptr [ %incdec.ptr.i.i77.i, %while.body.i.i80.i.while.body.i.i80.i_crit_edge ], [ %add.ptr14.i, %while.body.preheader.i.i72.i ]
  %d.08.i.i74.i = phi ptr [ %incdec.ptr9.i.i78.i, %while.body.i.i80.i.while.body.i.i80.i_crit_edge ], [ %buf4.i.i, %while.body.preheader.i.i72.i ]
  %len.addr.07.i.i75.i = phi i16 [ %dec.i.i76.i, %while.body.i.i80.i.while.body.i.i80.i_crit_edge ], [ %136, %while.body.preheader.i.i72.i ]
  %dec.i.i76.i = add nsw i16 %len.addr.07.i.i75.i, -1
  %incdec.ptr.i.i77.i = getelementptr i16, ptr %s.09.i.i73.i, i32 1
  %137 = ptrtoint ptr %s.09.i.i73.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %s.09.i.i73.i, align 2
  %139 = call i16 @llvm.bswap.i16(i16 %138) #6
  %incdec.ptr9.i.i78.i = getelementptr i16, ptr %d.08.i.i74.i, i32 1
  %140 = ptrtoint ptr %d.08.i.i74.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %139, ptr %d.08.i.i74.i, align 2
  %tobool.not.i.i79.i = icmp eq i16 %dec.i.i76.i, 0
  br i1 %tobool.not.i.i79.i, label %while.body.i.i80.i.dln2_spi_write_one.exit.i_crit_edge, label %while.body.i.i80.i.while.body.i.i80.i_crit_edge

while.body.i.i80.i.while.body.i.i80.i_crit_edge:  ; preds = %while.body.i.i80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i80.i

while.body.i.i80.i.dln2_spi_write_one.exit.i_crit_edge: ; preds = %while.body.i.i80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_write_one.exit.i

if.else10.i.i82.i:                                ; preds = %if.else.i.i69.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %82)
  %tobool18.not2.i.i81.i = icmp ult i16 %82, 4
  br i1 %tobool18.not2.i.i81.i, label %if.else10.i.i82.i.dln2_spi_write_one.exit.i_crit_edge, label %while.body19.preheader.i.i83.i

if.else10.i.i82.i.dln2_spi_write_one.exit.i_crit_edge: ; preds = %if.else10.i.i82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_write_one.exit.i

while.body19.preheader.i.i83.i:                   ; preds = %if.else10.i.i82.i
  %141 = lshr i16 %82, 2
  br label %while.body19.i.i91.i

while.body19.i.i91.i:                             ; preds = %while.body19.i.i91.i.while.body19.i.i91.i_crit_edge, %while.body19.preheader.i.i83.i
  %s12.05.i.i84.i = phi ptr [ %incdec.ptr20.i.i88.i, %while.body19.i.i91.i.while.body19.i.i91.i_crit_edge ], [ %add.ptr14.i, %while.body19.preheader.i.i83.i ]
  %d11.04.i.i85.i = phi ptr [ %incdec.ptr22.i.i89.i, %while.body19.i.i91.i.while.body19.i.i91.i_crit_edge ], [ %buf4.i.i, %while.body19.preheader.i.i83.i ]
  %len.addr.13.i.i86.i = phi i16 [ %dec17.i.i87.i, %while.body19.i.i91.i.while.body19.i.i91.i_crit_edge ], [ %141, %while.body19.preheader.i.i83.i ]
  %dec17.i.i87.i = add nsw i16 %len.addr.13.i.i86.i, -1
  %incdec.ptr20.i.i88.i = getelementptr i32, ptr %s12.05.i.i84.i, i32 1
  %142 = ptrtoint ptr %s12.05.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %s12.05.i.i84.i, align 4
  %144 = call i32 @llvm.bswap.i32(i32 %143) #6
  %incdec.ptr22.i.i89.i = getelementptr i32, ptr %d11.04.i.i85.i, i32 1
  %145 = ptrtoint ptr %d11.04.i.i85.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %d11.04.i.i85.i, align 4
  %tobool18.not.i.i90.i = icmp eq i16 %dec17.i.i87.i, 0
  br i1 %tobool18.not.i.i90.i, label %while.body19.i.i91.i.dln2_spi_write_one.exit.i_crit_edge, label %while.body19.i.i91.i.while.body19.i.i91.i_crit_edge

while.body19.i.i91.i.while.body19.i.i91.i_crit_edge: ; preds = %while.body19.i.i91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body19.i.i91.i

while.body19.i.i91.i.dln2_spi_write_one.exit.i_crit_edge: ; preds = %while.body19.i.i91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_write_one.exit.i

dln2_spi_write_one.exit.i:                        ; preds = %while.body19.i.i91.i.dln2_spi_write_one.exit.i_crit_edge, %if.else10.i.i82.i.dln2_spi_write_one.exit.i_crit_edge, %while.body.i.i80.i.dln2_spi_write_one.exit.i_crit_edge, %if.then6.i.i71.i.dln2_spi_write_one.exit.i_crit_edge, %if.then.i.i67.i
  %sub.i92.i = add nuw nsw i32 %conv.i61.i, 4
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %1, align 4
  %call.i.i.i36 = call i32 @dln2_transfer(ptr noundef %147, i16 noundef zeroext 540, ptr noundef %126, i32 noundef %sub.i92.i, ptr noundef null, ptr noundef null) #6
  br label %if.end25.i39

if.else16.i:                                      ; preds = %if.else10.i
  br i1 %tobool5.not.i, label %if.else16.i.cleanup.sink.split_crit_edge, label %if.then18.i38

if.else16.i.cleanup.sink.split_crit_edge:         ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then18.i38:                                    ; preds = %if.else16.i
  %conv19.i = zext i16 %sub.i to i32
  %add.ptr20.i = getelementptr i8, ptr %77, i32 %conv19.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx.i.i33) #6
  %148 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %buf.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_len.i95.i) #6
  %150 = ptrtoint ptr %rx_len.i95.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 258, ptr %rx_len.i95.i, align 4
  %conv.i97.i = zext i16 %82 to i32
  %151 = ptrtoint ptr %port.i.i35 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %port.i.i35, align 4
  %153 = ptrtoint ptr %tx.i.i33 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %tx.i.i33, align 1
  %154 = call i16 @llvm.bswap.i16(i16 %82) #6
  %155 = ptrtoint ptr %81 to i32
  call void @__asan_storeN_noabort(i32 %155, i32 2)
  store i16 %154, ptr %81, align 1
  %156 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %.attr.i, ptr %80, align 1
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %1, align 4
  %call.i.i37 = call i32 @dln2_transfer(ptr noundef %158, i16 noundef zeroext 539, ptr noundef nonnull %tx.i.i33, i32 noundef 4, ptr noundef %149, ptr noundef nonnull %rx_len.i95.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37)
  %cmp4.i.i = icmp slt i32 %call.i.i37, 0
  br i1 %cmp4.i.i, label %if.then18.i38.dln2_spi_read_one.exit.i_crit_edge, label %if.end7.i.i

if.then18.i38.dln2_spi_read_one.exit.i_crit_edge: ; preds = %if.then18.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_read_one.exit.i

if.end7.i.i:                                      ; preds = %if.then18.i38
  %159 = ptrtoint ptr %rx_len.i95.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rx_len.i95.i, align 4
  %add.i.i = add nuw nsw i32 %conv.i97.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %add.i.i)
  %cmp9.i.i = icmp ult i32 %160, %add.i.i
  br i1 %cmp9.i.i, label %if.end7.i.i.dln2_spi_read_one.exit.i_crit_edge, label %if.end12.i.i

if.end7.i.i.dln2_spi_read_one.exit.i_crit_edge:   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_read_one.exit.i

if.end12.i.i:                                     ; preds = %if.end7.i.i
  %161 = ptrtoint ptr %149 to i32
  call void @__asan_loadN_noabort(i32 %161, i32 2)
  %162 = load i16, ptr %149, align 1
  %163 = call i16 @llvm.bswap.i16(i16 %162) #6
  call void @__sanitizer_cov_trace_cmp2(i16 %163, i16 %82)
  %cmp16.not.i.i = icmp eq i16 %163, %82
  br i1 %cmp16.not.i.i, label %if.end19.i.i, label %if.end12.i.i.dln2_spi_read_one.exit.i_crit_edge

if.end12.i.i.dln2_spi_read_one.exit.i_crit_edge:  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_read_one.exit.i

if.end19.i.i:                                     ; preds = %if.end12.i.i
  %buf20.i.i = getelementptr inbounds %struct.anon.90, ptr %149, i32 0, i32 1
  %164 = ptrtoint ptr %bpw.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %bpw.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %165)
  %cmp.i.i100.i = icmp ult i8 %165, 9
  br i1 %cmp.i.i100.i, label %if.then.i.i101.i, label %if.else.i.i103.i

if.then.i.i101.i:                                 ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %166 = call ptr @memcpy(ptr %add.ptr20.i, ptr %buf20.i.i, i32 %conv.i97.i)
  br label %dln2_spi_read_one.exit.i

if.else.i.i103.i:                                 ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %165)
  %cmp4.i.i102.i = icmp ult i8 %165, 17
  br i1 %cmp4.i.i102.i, label %if.then6.i.i105.i, label %if.else10.i.i116.i

if.then6.i.i105.i:                                ; preds = %if.else.i.i103.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %82)
  %tobool.not6.i.i104.i = icmp ult i16 %82, 2
  br i1 %tobool.not6.i.i104.i, label %if.then6.i.i105.i.dln2_spi_read_one.exit.i_crit_edge, label %while.body.preheader.i.i106.i

if.then6.i.i105.i.dln2_spi_read_one.exit.i_crit_edge: ; preds = %if.then6.i.i105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_read_one.exit.i

while.body.preheader.i.i106.i:                    ; preds = %if.then6.i.i105.i
  %167 = lshr i16 %82, 1
  br label %while.body.i.i114.i

while.body.i.i114.i:                              ; preds = %while.body.i.i114.i.while.body.i.i114.i_crit_edge, %while.body.preheader.i.i106.i
  %s.09.i.i107.i = phi ptr [ %incdec.ptr.i.i111.i, %while.body.i.i114.i.while.body.i.i114.i_crit_edge ], [ %buf20.i.i, %while.body.preheader.i.i106.i ]
  %d.08.i.i108.i = phi ptr [ %incdec.ptr9.i.i112.i, %while.body.i.i114.i.while.body.i.i114.i_crit_edge ], [ %add.ptr20.i, %while.body.preheader.i.i106.i ]
  %len.addr.07.i.i109.i = phi i16 [ %dec.i.i110.i, %while.body.i.i114.i.while.body.i.i114.i_crit_edge ], [ %167, %while.body.preheader.i.i106.i ]
  %dec.i.i110.i = add nsw i16 %len.addr.07.i.i109.i, -1
  %incdec.ptr.i.i111.i = getelementptr i16, ptr %s.09.i.i107.i, i32 1
  %168 = ptrtoint ptr %s.09.i.i107.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %s.09.i.i107.i, align 2
  %170 = call i16 @llvm.bswap.i16(i16 %169) #6
  %incdec.ptr9.i.i112.i = getelementptr i16, ptr %d.08.i.i108.i, i32 1
  %171 = ptrtoint ptr %d.08.i.i108.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %170, ptr %d.08.i.i108.i, align 2
  %tobool.not.i.i113.i = icmp eq i16 %dec.i.i110.i, 0
  br i1 %tobool.not.i.i113.i, label %while.body.i.i114.i.dln2_spi_read_one.exit.i_crit_edge, label %while.body.i.i114.i.while.body.i.i114.i_crit_edge

while.body.i.i114.i.while.body.i.i114.i_crit_edge: ; preds = %while.body.i.i114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i114.i

while.body.i.i114.i.dln2_spi_read_one.exit.i_crit_edge: ; preds = %while.body.i.i114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_read_one.exit.i

if.else10.i.i116.i:                               ; preds = %if.else.i.i103.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %82)
  %tobool18.not2.i.i115.i = icmp ult i16 %82, 4
  br i1 %tobool18.not2.i.i115.i, label %if.else10.i.i116.i.dln2_spi_read_one.exit.i_crit_edge, label %while.body19.preheader.i.i117.i

if.else10.i.i116.i.dln2_spi_read_one.exit.i_crit_edge: ; preds = %if.else10.i.i116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_read_one.exit.i

while.body19.preheader.i.i117.i:                  ; preds = %if.else10.i.i116.i
  %172 = lshr i16 %82, 2
  br label %while.body19.i.i125.i

while.body19.i.i125.i:                            ; preds = %while.body19.i.i125.i.while.body19.i.i125.i_crit_edge, %while.body19.preheader.i.i117.i
  %s12.05.i.i118.i = phi ptr [ %incdec.ptr20.i.i122.i, %while.body19.i.i125.i.while.body19.i.i125.i_crit_edge ], [ %buf20.i.i, %while.body19.preheader.i.i117.i ]
  %d11.04.i.i119.i = phi ptr [ %incdec.ptr22.i.i123.i, %while.body19.i.i125.i.while.body19.i.i125.i_crit_edge ], [ %add.ptr20.i, %while.body19.preheader.i.i117.i ]
  %len.addr.13.i.i120.i = phi i16 [ %dec17.i.i121.i, %while.body19.i.i125.i.while.body19.i.i125.i_crit_edge ], [ %172, %while.body19.preheader.i.i117.i ]
  %dec17.i.i121.i = add nsw i16 %len.addr.13.i.i120.i, -1
  %incdec.ptr20.i.i122.i = getelementptr i32, ptr %s12.05.i.i118.i, i32 1
  %173 = ptrtoint ptr %s12.05.i.i118.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %174 = load i32, ptr %s12.05.i.i118.i, align 1
  %175 = call i32 @llvm.bswap.i32(i32 %174) #6
  %incdec.ptr22.i.i123.i = getelementptr i32, ptr %d11.04.i.i119.i, i32 1
  %176 = ptrtoint ptr %d11.04.i.i119.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %d11.04.i.i119.i, align 4
  %tobool18.not.i.i124.i = icmp eq i16 %dec17.i.i121.i, 0
  br i1 %tobool18.not.i.i124.i, label %while.body19.i.i125.i.dln2_spi_read_one.exit.i_crit_edge, label %while.body19.i.i125.i.while.body19.i.i125.i_crit_edge

while.body19.i.i125.i.while.body19.i.i125.i_crit_edge: ; preds = %while.body19.i.i125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body19.i.i125.i

while.body19.i.i125.i.dln2_spi_read_one.exit.i_crit_edge: ; preds = %while.body19.i.i125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_spi_read_one.exit.i

dln2_spi_read_one.exit.i:                         ; preds = %while.body19.i.i125.i.dln2_spi_read_one.exit.i_crit_edge, %if.else10.i.i116.i.dln2_spi_read_one.exit.i_crit_edge, %while.body.i.i114.i.dln2_spi_read_one.exit.i_crit_edge, %if.then6.i.i105.i.dln2_spi_read_one.exit.i_crit_edge, %if.then.i.i101.i, %if.end12.i.i.dln2_spi_read_one.exit.i_crit_edge, %if.end7.i.i.dln2_spi_read_one.exit.i_crit_edge, %if.then18.i38.dln2_spi_read_one.exit.i_crit_edge
  %retval.0.i126.i = phi i32 [ %call.i.i37, %if.then18.i38.dln2_spi_read_one.exit.i_crit_edge ], [ -71, %if.end7.i.i.dln2_spi_read_one.exit.i_crit_edge ], [ -71, %if.end12.i.i.dln2_spi_read_one.exit.i_crit_edge ], [ 0, %if.then.i.i101.i ], [ 0, %if.then6.i.i105.i.dln2_spi_read_one.exit.i_crit_edge ], [ 0, %if.else10.i.i116.i.dln2_spi_read_one.exit.i_crit_edge ], [ 0, %while.body.i.i114.i.dln2_spi_read_one.exit.i_crit_edge ], [ 0, %while.body19.i.i125.i.dln2_spi_read_one.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_len.i95.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx.i.i33) #6
  br label %if.end25.i39

if.end25.i39:                                     ; preds = %dln2_spi_read_one.exit.i, %dln2_spi_write_one.exit.i, %dln2_spi_read_write_one.exit.i
  %ret.0.i = phi i32 [ %retval.0.i.i, %dln2_spi_read_write_one.exit.i ], [ %call.i.i.i36, %dln2_spi_write_one.exit.i ], [ %retval.0.i126.i, %dln2_spi_read_one.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp26.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp26.i, label %if.end25.i39.cleanup.sink.split_crit_edge, label %if.end29.i

if.end25.i39.cleanup.sink.split_crit_edge:        ; preds = %if.end25.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end29.i:                                       ; preds = %if.end25.i39
  %sub32.i = sub i16 %remaining.0.i, %82
  %tobool34.not.i = icmp eq i16 %sub32.i, 0
  br i1 %tobool34.not.i, label %if.end29.i.cleanup_crit_edge, label %if.end29.i.do.body.i_crit_edge

if.end29.i.do.body.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end25.i39.cleanup.sink.split_crit_edge, %if.else16.i.cleanup.sink.split_crit_edge, %dln2_spi_transfer_setup.exit.cleanup.sink.split_crit_edge, %if.then47.i.cleanup.sink.split_crit_edge, %if.then31.i.cleanup.sink.split_crit_edge, %dln2_spi_set_speed.exit.thread.i, %if.end.i.cleanup.sink.split_crit_edge
  %.str.36.sink = phi ptr [ @.str.33, %dln2_spi_set_speed.exit.thread.i ], [ @.str.33, %if.then47.i.cleanup.sink.split_crit_edge ], [ @.str.33, %if.then31.i.cleanup.sink.split_crit_edge ], [ @.str.33, %if.end.i.cleanup.sink.split_crit_edge ], [ @.str.33, %dln2_spi_transfer_setup.exit.cleanup.sink.split_crit_edge ], [ @.str.36, %if.else16.i.cleanup.sink.split_crit_edge ], [ @.str.36, %if.end25.i39.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i.ph.i, %dln2_spi_set_speed.exit.thread.i ], [ %call.i.i94.i, %if.then47.i.cleanup.sink.split_crit_edge ], [ %call.i.i91.i, %if.then31.i.cleanup.sink.split_crit_edge ], [ %call.i.i.i, %if.end.i.cleanup.sink.split_crit_edge ], [ %call.i.i97.i, %dln2_spi_transfer_setup.exit.cleanup.sink.split_crit_edge ], [ %ret.0.i, %if.end25.i39.cleanup.sink.split_crit_edge ], [ -22, %if.else16.i.cleanup.sink.split_crit_edge ]
  %177 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %1, align 4
  %dev15 = getelementptr inbounds %struct.platform_device, ptr %178, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull %.str.36.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end29.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph, %cleanup.sink.split ], [ 0, %if.end29.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dln2_transfer(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_spi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %tx.i = alloca %struct.anon.71, align 1
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
  %call2 = tail call i32 @spi_controller_suspend(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

pm_runtime_suspended.exit:                        ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end9_crit_edge, label %pm_runtime_suspended.exit.if.then4_crit_edge

pm_runtime_suspended.exit.if.then4_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

pm_runtime_suspended.exit.if.end9_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then4:                                         ; preds = %pm_runtime_suspended.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i) #6
  %7 = getelementptr inbounds %struct.anon.71, ptr %tx.i, i32 0, i32 1
  %port.i = getelementptr inbounds %struct.dln2_spi, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port.i, align 4
  %10 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %tx.i, align 1
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %7, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %13, i16 noundef zeroext 530, ptr noundef nonnull %tx.i, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6 = icmp slt i32 %call.i.i, 0
  br i1 %cmp6, label %if.then4.cleanup_crit_edge, label %if.then4.if.end9_crit_edge

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %pm_runtime_suspended.exit.if.end9_crit_edge
  %cs = getelementptr inbounds %struct.dln2_spi, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %cs to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %cs, align 2
  %speed = getelementptr inbounds %struct.dln2_spi, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %speed, align 4
  %bpw = getelementptr inbounds %struct.dln2_spi, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %bpw to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %bpw, align 4
  %mode = getelementptr inbounds %struct.dln2_spi, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 255, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call2, %entry.cleanup_crit_edge ], [ %call.i.i, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_spi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %tx.i = alloca %struct.anon.71, align 1
  %tx.i.i = alloca %struct.anon.79, align 1
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
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end9_crit_edge, label %pm_runtime_suspended.exit.if.then_crit_edge

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

pm_runtime_suspended.exit.if.end9_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %master.i = getelementptr inbounds %struct.dln2_spi, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %master.i, align 4
  %num_chipselect.i = getelementptr inbounds %struct.spi_controller, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %num_chipselect.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_chipselect.i, align 2
  %conv.i = zext i16 %10 to i32
  %sub1.i = sub nsw i32 32, %conv.i
  %shr.i = lshr i32 -1, %sub1.i
  %conv2.i = trunc i32 %shr.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i.i) #6
  %11 = getelementptr inbounds %struct.anon.79, ptr %tx.i.i, i32 0, i32 1
  %port.i.i = getelementptr inbounds %struct.dln2_spi, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port.i.i, align 4
  %14 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tx.i.i, align 1
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv2.i, ptr %11, align 1
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %call.i.i.i = call i32 @dln2_transfer(ptr noundef %17, i16 noundef zeroext 568, ptr noundef nonnull %tx.i.i, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i) #6
  %18 = getelementptr inbounds %struct.anon.71, ptr %tx.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %18, align 1, !annotation !88
  %20 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port.i.i, align 4
  %22 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %tx.i, align 1
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %24, i16 noundef zeroext 529, ptr noundef nonnull %tx.i, i32 noundef 1, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6 = icmp slt i32 %call.i.i, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %pm_runtime_suspended.exit.if.end9_crit_edge
  %call10 = call i32 @spi_controller_resume(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ %call.i.i.i, %if.then.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_spi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %tx.i = alloca %struct.anon.71, align 1
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i) #6
  %4 = getelementptr inbounds %struct.anon.71, ptr %tx.i, i32 0, i32 1
  %port.i = getelementptr inbounds %struct.dln2_spi, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port.i, align 4
  %7 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %tx.i, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %4, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %10, i16 noundef zeroext 530, ptr noundef nonnull %tx.i, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_spi_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %tx.i = alloca %struct.anon.71, align 1
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i) #6
  %4 = getelementptr inbounds %struct.anon.71, ptr %tx.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !88
  %port.i = getelementptr inbounds %struct.dln2_spi, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port.i, align 4
  %8 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %tx.i, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %10, i16 noundef zeroext 529, ptr noundef nonnull %tx.i, i32 noundef 1, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i) #6
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__initcall__kmod_spi_dln2__237_878_spi_dln2_driver_init6, !1, !"__initcall__kmod_spi_dln2__237_878_spi_dln2_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-dln2.c", i32 878, i32 1}
!2 = !{ptr @__exitcall_spi_dln2_driver_exit, !1, !"__exitcall_spi_dln2_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description238, !4, !"__UNIQUE_ID_description238", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-dln2.c", i32 880, i32 1}
!5 = !{ptr @__UNIQUE_ID_author239, !6, !"__UNIQUE_ID_author239", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-dln2.c", i32 881, i32 1}
!7 = !{ptr @__UNIQUE_ID_file240, !8, !"__UNIQUE_ID_file240", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-dln2.c", i32 882, i32 1}
!9 = !{ptr @__UNIQUE_ID_license241, !8, !"__UNIQUE_ID_license241", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias242, !11, !"__UNIQUE_ID_alias242", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-dln2.c", i32 883, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-dln2.c", i32 872, i32 11}
!14 = !{ptr @spi_dln2_driver, !15, !"spi_dln2_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-dln2.c", i32 870, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-dln2.c", i32 714, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dln2_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @dln2_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-dln2.c", i32 720, i32 3}
!26 = !{ptr @dln2_spi_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @dln2_spi_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-dln2.c", i32 728, i32 3}
!30 = !{ptr @dln2_spi_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dln2_spi_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-dln2.c", i32 735, i32 3}
!34 = !{ptr @dln2_spi_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @dln2_spi_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-dln2.c", i32 741, i32 3}
!38 = !{ptr @dln2_spi_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @dln2_spi_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/spi/spi-dln2.c", i32 754, i32 3}
!42 = !{ptr @dln2_spi_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @dln2_spi_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/spi/spi-dln2.c", i32 766, i32 3}
!46 = !{ptr @dln2_spi_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @dln2_spi_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @dln2_spi_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-dln2.c", i32 777, i32 3}
!50 = !{ptr @dln2_spi_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-dln2.c", i32 205, i32 2}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @dln2_spi_get_cs_num.__UNIQUE_ID_ddebug231, !52, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/spi/spi-dln2.c", i32 249, i32 2}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @dln2_spi_get_speed_range.__UNIQUE_ID_ddebug232, !57, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-dln2.c", i32 346, i32 2}
!62 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @dln2_spi_get_supported_frame_sizes.__UNIQUE_ID_ddebug233, !61, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-dln2.c", i32 665, i32 3}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @dln2_spi_transfer_one._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @dln2_spi_transfer_one._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/spi/spi-dln2.c", i32 675, i32 3}
!71 = !{ptr @dln2_spi_transfer_one._entry.35, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @dln2_spi_transfer_one._entry_ptr.37, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/spi/spi-dln2.c", i32 792, i32 3}
!75 = !{ptr @dln2_spi_remove._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @dln2_spi_remove._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @dln2_spi_pm, !78, !"dln2_spi_pm", i1 false, i1 false}
!78 = !{!"../drivers/spi/spi-dln2.c", i32 864, i32 32}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"auto-init"}
!89 = !{i64 2148710719, i64 2148710724, i64 2148710737, i64 2148710781, i64 2148710815, i64 2148710836}
