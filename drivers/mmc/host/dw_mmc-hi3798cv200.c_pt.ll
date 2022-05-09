; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/dw_mmc-hi3798cv200.c_pt.bc'
source_filename = "../drivers/mmc/host/dw_mmc-hi3798cv200.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dw_mci_drv_data = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.dw_mci = type { %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i8, ptr, %struct.sg_mapping_iter, ptr, ptr, ptr, %struct.mmc_command, i32, i8, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.tasklet_struct, i32, i32, i32, %struct.list_head, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, %union.anon.85, ptr, ptr, i32, i8, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.fault_attr, %struct.hrtimer }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%union.anon.85 = type { i64 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.hi3798cv200_priv = type { ptr, ptr }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dw_mci_slot = type { ptr, ptr, i32, ptr, %struct.list_head, i32, i32, i32, i32, i32 }

@__initcall__kmod_dw_mmc_hi3798cv200__303_200_dw_mci_hi3798cv200_driver_init6 = internal global ptr @dw_mci_hi3798cv200_driver_init, section ".initcall6.init", align 4
@dw_mci_hi3798cv200_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dw_mci_hi3798cv200_probe, ptr @dw_mci_hi3798cv200_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @dw_mci_hi3798cv200_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dw_mci_hi3798cv200_driver_exit = internal global ptr @dw_mci_hi3798cv200_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description304 = internal constant [87 x i8] c"dw_mmc_hi3798cv200.description=HiSilicon Hi3798CV200 Specific DW-MSHC Driver Extension\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [60 x i8] c"dw_mmc_hi3798cv200.file=drivers/mmc/host/dw_mmc-hi3798cv200\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [34 x i8] c"dw_mmc_hi3798cv200.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [52 x i8] c"dw_mmc_hi3798cv200.alias=platform:dwmmc_hi3798cv200\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dwmmc_hi3798cv200\00", [46 x i8] zeroinitializer }, align 32
@dw_mci_hi3798cv200_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3798cv200-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hi3798cv200_data = internal constant { %struct.dw_mci_drv_data, [52 x i8] } { %struct.dw_mci_drv_data { ptr null, i32 0, i32 1073741824, ptr @dw_mci_hi3798cv200_init, ptr @dw_mci_hi3798cv200_set_ios, ptr null, ptr @dw_mci_hi3798cv200_execute_tuning, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ciu-sample\00", [21 x i8] zeroinitializer }, align 32
@dw_mci_hi3798cv200_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 132, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get ciu-sample clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dw_mci_hi3798cv200_init\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/mmc/host/dw_mmc-hi3798cv200.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw_mci_hi3798cv200_init._entry_ptr = internal global ptr @dw_mci_hi3798cv200_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ciu-drive\00", [22 x i8] zeroinitializer }, align 32
@dw_mci_hi3798cv200_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 138, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get ciu-drive clock\0A\00", [33 x i8] zeroinitializer }, align 32
@dw_mci_hi3798cv200_init._entry_ptr.10 = internal global ptr @dw_mci_hi3798cv200_init._entry.8, section ".printk_index", align 4
@dw_mci_hi3798cv200_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 144, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to enable ciu-sample clock\0A\00", [61 x i8] zeroinitializer }, align 32
@dw_mci_hi3798cv200_init._entry_ptr.13 = internal global ptr @dw_mci_hi3798cv200_init._entry.11, section ".printk_index", align 4
@dw_mci_hi3798cv200_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 150, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable ciu-drive clock\0A\00", [62 x i8] zeroinitializer }, align 32
@dw_mci_hi3798cv200_init._entry_ptr.16 = internal global ptr @dw_mci_hi3798cv200_init._entry.14, section ".printk_index", align 4
@dw_mci_hi3798cv200_execute_tuning.degrees = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 45, i32 90, i32 135, i32 180, i32 225, i32 270, i32 315], [32 x i8] zeroinitializer }, align 32
@dw_mci_hi3798cv200_execute_tuning.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dw_mmc_hi3798cv200\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dw_mci_hi3798cv200_execute_tuning\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Tuning clk_sample[%d, %d], set[%d]\0A\00", [60 x i8] zeroinitializer }, align 32
@dw_mci_hi3798cv200_execute_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.4, i32 113, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No valid clk_sample shift! use default\0A\00", [56 x i8] zeroinitializer }, align 32
@dw_mci_hi3798cv200_execute_tuning._entry_ptr = internal global ptr @dw_mci_hi3798cv200_execute_tuning._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 9]
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"dw_mci_hi3798cv200_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 191, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 195, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [25 x i8] c"dw_mci_hi3798cv200_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 185, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"hi3798cv200_data\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 162, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 130, i32 45 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 132, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 136, i32 44 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 138, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 144, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 150, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [8 x i8] c"degrees\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 63, i32 19 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 110, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [41 x i8] c"../drivers/mmc/host/dw_mmc-hi3798cv200.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 113, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_dw_mci_hi3798cv200_driver_exit, ptr @__initcall__kmod_dw_mmc_hi3798cv200__303_200_dw_mci_hi3798cv200_driver_init6, ptr @dw_mci_hi3798cv200_driver_exit, ptr @dw_mci_hi3798cv200_execute_tuning._entry, ptr @dw_mci_hi3798cv200_execute_tuning._entry_ptr, ptr @dw_mci_hi3798cv200_init._entry, ptr @dw_mci_hi3798cv200_init._entry.11, ptr @dw_mci_hi3798cv200_init._entry.14, ptr @dw_mci_hi3798cv200_init._entry.8, ptr @dw_mci_hi3798cv200_init._entry_ptr, ptr @dw_mci_hi3798cv200_init._entry_ptr.10, ptr @dw_mci_hi3798cv200_init._entry_ptr.13, ptr @dw_mci_hi3798cv200_init._entry_ptr.16, ptr @dw_mci_hi3798cv200_driver, ptr @.str, ptr @dw_mci_hi3798cv200_match, ptr @hi3798cv200_data, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @dw_mci_hi3798cv200_execute_tuning.degrees, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_hi3798cv200_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_hi3798cv200_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3798cv200_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_hi3798cv200_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_hi3798cv200_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_hi3798cv200_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_hi3798cv200_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_hi3798cv200_execute_tuning.degrees to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_hi3798cv200_execute_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_hi3798cv200_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_mci_hi3798cv200_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_hi3798cv200_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_mci_hi3798cv200_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_hi3798cv200_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dw_mci_pltfm_register(ptr noundef %pdev, ptr noundef nonnull @hi3798cv200_data) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_hi3798cv200_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv1 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %drive_clk = getelementptr inbounds %struct.hi3798cv200_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %drive_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drive_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  %call2 = tail call i32 @dw_mci_pltfm_remove(ptr noundef %pdev) #5
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_pltfm_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_hi3798cv200_init(ptr nocapture noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 8, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call2 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.1) #5
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2) #8
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.7) #5
  %drive_clk = getelementptr inbounds %struct.hi3798cv200_priv, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %drive_clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call11, ptr %drive_clk, align 4
  %cmp.i63 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63, label %do.end17, label %if.end21

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.9) #8
  %13 = ptrtoint ptr %drive_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drive_clk, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %call.i64 = tail call i32 @clk_prepare(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool.not.i = icmp eq i32 %call.i64, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end21.do.end28_crit_edge

if.end21.do.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

if.end.i:                                         ; preds = %if.end21
  %call1.i = tail call i32 @clk_enable(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end30, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %17) #5
  br label %do.end28

do.end28:                                         ; preds = %if.then3.i, %if.end21.do.end28_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i64, %if.end21.do.end28_crit_edge ]
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end.i
  %20 = ptrtoint ptr %drive_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %drive_clk, align 4
  %call.i65 = tail call i32 @clk_prepare(ptr noundef %21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool.not.i66 = icmp eq i32 %call.i65, 0
  br i1 %tobool.not.i66, label %if.end.i69, label %if.end30.do.end37_crit_edge

if.end30.do.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

if.end.i69:                                       ; preds = %if.end30
  %call1.i67 = tail call i32 @clk_enable(ptr noundef %21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool2.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool2.not.i68, label %if.end39, label %if.then3.i70

if.then3.i70:                                     ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %21) #5
  br label %do.end37

do.end37:                                         ; preds = %if.then3.i70, %if.end30.do.end37_crit_edge
  %retval.0.i71.ph = phi i32 [ %call1.i67, %if.then3.i70 ], [ %call.i65, %if.end30.do.end37_crit_edge ]
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.15) #8
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  tail call void @clk_disable(ptr noundef %25) #5
  tail call void @clk_unprepare(ptr noundef %25) #5
  br label %cleanup

if.end39:                                         ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #7
  %priv40 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 39
  %26 = ptrtoint ptr %priv40 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %priv40, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end37, %do.end28, %do.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %do.end ], [ %15, %do.end17 ], [ %retval.0.i.ph, %do.end28 ], [ %retval.0.i71.ph, %do.end37 ], [ 0, %if.end39 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_hi3798cv200_set_ios(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 39
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 116
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !62
  %timing = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %5 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %timing, align 4
  %.off = add i8 %6, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  %7 = and i32 %4, -257
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %masksel = select i1 %switch, i32 65536, i32 0
  %val.0 = or i32 %masksel, %8
  %9 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr8 = getelementptr i8, ptr %11, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %9) #5, !srcloc !63
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %add.ptr11 = getelementptr i8, ptr %13, i32 272
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #5, !srcloc !62
  %15 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %16)
  %cmp16 = icmp eq i8 %16, 8
  %17 = and i32 %14, -16777217
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %masksel83 = zext i1 %cmp16 to i32
  %val.1 = or i32 %18, %masksel83
  %19 = tail call i32 @llvm.bswap.i32(i32 %val.1)
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 8
  %add.ptr24 = getelementptr i8, ptr %21, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %19) #5, !srcloc !63
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %add.ptr27 = getelementptr i8, ptr %23, i32 268
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #5, !srcloc !62
  %25 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %26)
  %cmp32 = icmp eq i8 %26, 10
  %27 = and i32 %24, -129
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %masksel84 = select i1 %cmp32, i32 -2147483648, i32 0
  %val.2 = or i32 %masksel84, %28
  %29 = tail call i32 @llvm.bswap.i32(i32 %val.2)
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 8
  %add.ptr40 = getelementptr i8, ptr %31, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %29) #5, !srcloc !63
  %32 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %timing, align 4
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i8 %33, label %entry.if.end61_crit_edge [
    i8 1, label %entry.if.end61.sink.split_crit_edge
    i8 0, label %entry.if.end61.sink.split_crit_edge86
    i8 9, label %if.then57
  ]

entry.if.end61.sink.split_crit_edge86:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61.sink.split

entry.if.end61.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61.sink.split

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then57:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61.sink.split

if.end61.sink.split:                              ; preds = %if.then57, %entry.if.end61.sink.split_crit_edge, %entry.if.end61.sink.split_crit_edge86
  %.sink85 = phi i32 [ 135, %if.then57 ], [ 180, %entry.if.end61.sink.split_crit_edge ], [ 180, %entry.if.end61.sink.split_crit_edge86 ]
  %drive_clk58 = getelementptr inbounds %struct.hi3798cv200_priv, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %drive_clk58 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %drive_clk58, align 4
  %call59 = tail call i32 @clk_set_phase(ptr noundef %36, i32 noundef %.sink85) #5
  br label %if.end61

if.end61:                                         ; preds = %if.end61.sink.split, %entry.if.end61_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_hi3798cv200_execute_tuning(ptr nocapture noundef readonly %slot, i32 noundef %opcode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.dw_mci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %priv2 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 8
  %regs = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %if.end15
  %inc = add nuw nsw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.cond.tuning_out_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.tuning_out_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %tuning_out

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.0100 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %found.099 = phi i32 [ 0, %entry ], [ %spec.select, %for.cond.for.body_crit_edge ]
  %prev_err.098 = phi i32 [ -1, %entry ], [ %call3, %for.cond.for.body_crit_edge ]
  %fall_point.097 = phi i32 [ -1, %entry ], [ %fall_point.2, %for.cond.for.body_crit_edge ]
  %raise_point.096 = phi i32 [ -1, %entry ], [ %raise_point.1, %for.cond.for.body_crit_edge ]
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr [8 x i32], ptr @dw_mci_hi3798cv200_execute_tuning.degrees, i32 0, i32 %i.0100
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @clk_set_phase(ptr noundef %5, i32 noundef %7) #5
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -65280) #5, !srcloc !63
  %10 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slot, align 4
  %call3 = tail call i32 @mmc_send_tuning(ptr noundef %11, i32 noundef %opcode, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %found.099
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0100)
  %cmp4.not = icmp eq i32 %i.0100, 0
  br i1 %cmp4.not, label %for.body.if.end15_crit_edge, label %if.then5

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_err.098)
  %tobool7.not = icmp eq i32 %prev_err.098, 0
  %or.cond = and i1 %tobool7.not, %tobool.not.not
  %sub = add nsw i32 %i.0100, -1
  %fall_point.1 = select i1 %or.cond, i32 %sub, i32 %fall_point.097
  %or.cond92 = or i1 %tobool7.not, %tobool.not.not
  %spec.select94 = select i1 %or.cond92, i32 %raise_point.096, i32 %i.0100
  br label %if.end15

if.end15:                                         ; preds = %if.then5, %for.body.if.end15_crit_edge
  %raise_point.1 = phi i32 [ %raise_point.096, %for.body.if.end15_crit_edge ], [ %spec.select94, %if.then5 ]
  %fall_point.2 = phi i32 [ %fall_point.097, %for.body.if.end15_crit_edge ], [ %fall_point.1, %if.then5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %raise_point.1)
  %cmp16.not = icmp eq i32 %raise_point.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %fall_point.2)
  %cmp18.not = icmp eq i32 %fall_point.2, -1
  %or.cond93 = select i1 %cmp16.not, i1 true, i1 %cmp18.not
  br i1 %or.cond93, label %for.cond, label %if.end15.tuning_out_crit_edge

if.end15.tuning_out_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %tuning_out

tuning_out:                                       ; preds = %if.end15.tuning_out_crit_edge, %for.cond.tuning_out_crit_edge
  %err.1 = phi i32 [ 0, %for.cond.tuning_out_crit_edge ], [ %call3, %if.end15.tuning_out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool21.not = icmp eq i32 %spec.select, 0
  br i1 %tobool21.not, label %do.end54, label %if.then22

if.then22:                                        ; preds = %tuning_out
  %spec.store.select = select i1 %cmp16.not, i32 0, i32 %raise_point.1
  %spec.store.select59 = select i1 %cmp18.not, i32 7, i32 %fall_point.2
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select59, i32 %spec.store.select)
  %cmp29 = icmp slt i32 %spec.store.select59, %spec.store.select
  %add = add i32 %spec.store.select59, %spec.store.select
  br i1 %cmp29, label %if.then30, label %if.else37

if.then30:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add)
  %cmp31 = icmp ugt i32 %add, 7
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %div = sdiv i32 %spec.store.select59, 2
  br label %if.end40

if.else:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %sub34 = add i32 %spec.store.select, 7
  %div3590 = lshr i32 %sub34, 1
  br label %if.end40

if.else37:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %div39 = sdiv i32 %add, 2
  br label %if.end40

if.end40:                                         ; preds = %if.else37, %if.else, %if.then32
  %i.1 = phi i32 [ %div, %if.then32 ], [ %div3590, %if.else ], [ %div39, %if.else37 ]
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %arrayidx42 = getelementptr [8 x i32], ptr @dw_mci_hi3798cv200_execute_tuning.degrees, i32 0, i32 %i.1
  %14 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx42, align 4
  %call43 = tail call i32 @clk_set_phase(ptr noundef %13, i32 noundef %15) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_hi3798cv200_execute_tuning.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_hi3798cv200_execute_tuning, %if.then48)) #5
          to label %if.end56 [label %if.then48], !srcloc !64

if.then48:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 36
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_hi3798cv200_execute_tuning.__UNIQUE_ID_ddebug302, ptr noundef %17, ptr noundef nonnull @.str.19, i32 noundef %spec.store.select, i32 noundef %spec.store.select59, i32 noundef %15) #5
  br label %if.end56

do.end54:                                         ; preds = %tuning_out
  call void @__sanitizer_cov_trace_pc() #7
  %dev55 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 36
  %18 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.20) #8
  br label %if.end56

if.end56:                                         ; preds = %do.end54, %if.then48, %if.end40
  %err.2 = phi i32 [ %err.1, %if.then48 ], [ -22, %do.end54 ], [ %err.1, %if.end40 ]
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 8
  %add.ptr58 = getelementptr i8, ptr %21, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 -65280) #5, !srcloc !63
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_phase(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_pltfm_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_dw_mmc_hi3798cv200__303_200_dw_mci_hi3798cv200_driver_init6, !1, !"__initcall__kmod_dw_mmc_hi3798cv200__303_200_dw_mci_hi3798cv200_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/dw_mmc-hi3798cv200.c", i32 200, i32 1}
!2 = !{ptr @__exitcall_dw_mci_hi3798cv200_driver_exit, !1, !"__exitcall_dw_mci_hi3798cv200_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description304, !4, !"__UNIQUE_ID_description304", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/dw_mmc-hi3798cv200.c", i32 202, i32 1}
!5 = !{ptr @__UNIQUE_ID_file305, !6, !"__UNIQUE_ID_file305", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/dw_mmc-hi3798cv200.c", i32 203, i32 1}
!7 = !{ptr @__UNIQUE_ID_license306, !6, !"__UNIQUE_ID_license306", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias307, !9, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/dw_mmc-hi3798cv200.c", i32 204, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/dw_mmc-hi3798cv200.c", i32 195, i32 11}
!12 = !{ptr @dw_mci_hi3798cv200_driver, !13, !"dw_mci_hi3798cv200_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/dw_mmc-hi3798cv200.c", i32 191, i32 31}
!14 = !{ptr @hi3798cv200_data, !15, !"hi3798cv200_data", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/dw_mmc-hi3798cv200.c", i32 162, i32 37}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/dw_mmc-hi3798cv200.c", i32 130, i32 45}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/dw_mmc-hi3798cv200.c", i32 132, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dw_mci_hi3798cv200_init._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @dw_mci_hi3798cv200_init._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/dw_mmc-hi3798cv200.c", i32 136, i32 44}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/dw_mmc-hi3798cv200.c", i32 138, i32 3}
!30 = !{ptr @dw_mci_hi3798cv200_init._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dw_mci_hi3798cv200_init._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/dw_mmc-hi3798cv200.c", i32 144, i32 3}
!34 = !{ptr @dw_mci_hi3798cv200_init._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @dw_mci_hi3798cv200_init._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/dw_mmc-hi3798cv200.c", i32 150, i32 3}
!38 = !{ptr @dw_mci_hi3798cv200_init._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @dw_mci_hi3798cv200_init._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @dw_mci_hi3798cv200_execute_tuning.degrees, !41, !"degrees", i1 false, i1 false}
!41 = !{!"../drivers/mmc/host/dw_mmc-hi3798cv200.c", i32 63, i32 19}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/dw_mmc-hi3798cv200.c", i32 110, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @dw_mci_hi3798cv200_execute_tuning.__UNIQUE_ID_ddebug302, !43, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/dw_mmc-hi3798cv200.c", i32 113, i32 3}
!49 = !{ptr @dw_mci_hi3798cv200_execute_tuning._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @dw_mci_hi3798cv200_execute_tuning._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @dw_mci_hi3798cv200_match, !52, !"dw_mci_hi3798cv200_match", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/dw_mmc-hi3798cv200.c", i32 185, i32 34}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 6483255}
!63 = !{i64 6482837}
!64 = !{i64 2148725051, i64 2148725056, i64 2148725069, i64 2148725113, i64 2148725147, i64 2148725168}
