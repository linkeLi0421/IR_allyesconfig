; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-scpi.c_pt.bc'
source_filename = "../drivers/clk/clk-scpi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.scpi_clk_data = type { ptr, i32 }
%struct.scpi_clk = type { i32, %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.scpi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.scpi_dvfs_info = type { i32, i32, ptr }
%struct.scpi_opp = type { i32, i32 }

@__initcall__kmod_clk_scpi__171_310_scpi_clocks_driver_init6 = internal global ptr @scpi_clocks_driver_init, section ".initcall6.init", align 4
@scpi_clocks_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @scpi_clocks_probe, ptr @scpi_clocks_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @scpi_clocks_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_scpi_clocks_driver_exit = internal global ptr @scpi_clocks_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author172 = internal constant [52 x i8] c"clk_scpi.author=Sudeep Holla <sudeep.holla@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [43 x i8] c"clk_scpi.description=ARM SCPI clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [35 x i8] c"clk_scpi.file=drivers/clk/clk-scpi\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [24 x i8] c"clk_scpi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scpi_clocks\00", [20 x i8] zeroinitializer }, align 32
@scpi_clocks_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,scpi-clocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@scpi_clk_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,scpi-dvfs-clocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scpi_dvfs_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,scpi-variable-clocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scpi_clk_ops }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@scpi_dvfs_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scpi_dvfs_recalc_rate, ptr @scpi_dvfs_round_rate, ptr null, ptr null, ptr null, ptr @scpi_dvfs_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scpi-cpufreq\00", [19 x i8] zeroinitializer }, align 32
@cpufreq_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@scpi_clocks_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014unable to register cpufreq device\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scpi_clocks_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/clk/clk-scpi.c\00", [41 x i8] zeroinitializer }, align 32
@scpi_clocks_probe._entry_ptr = internal global ptr @scpi_clocks_probe._entry, section ".printk_index", align 4
@scpi_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scpi_clk_recalc_rate, ptr @scpi_clk_round_rate, ptr null, ptr null, ptr null, ptr @scpi_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@scpi_clk_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.4, i32 199, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%pOFn: invalid clock output count\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scpi_clk_add\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scpi_clk_add._entry_ptr = internal global ptr @scpi_clk_add._entry, section ".printk_index", align 4
@scpi_clk_add._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str.4, i32 224, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid clock name @ %pOFn\0A\00", [36 x i8] zeroinitializer }, align 32
@scpi_clk_add._entry_ptr.12 = internal global ptr @scpi_clk_add._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clock-indices\00", [18 x i8] zeroinitializer }, align 32
@scpi_clk_add._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.4, i32 230, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid clock index @ %pOFn\0A\00", [35 x i8] zeroinitializer }, align 32
@scpi_clk_add._entry_ptr.16 = internal global ptr @scpi_clk_add._entry.14, section ".printk_index", align 4
@scpi_clk_add._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.4, i32 238, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register clock '%s'\0A\00", [33 x i8] zeroinitializer }, align 32
@scpi_clk_add._entry_ptr.19 = internal global ptr @scpi_clk_add._entry.17, section ".printk_index", align 4
@scpi_clk_add.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.7, ptr @.str.4, ptr @.str.21, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_scpi\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Registered clock '%s'\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"scpi_clocks_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 302, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 304, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"scpi_clocks_ids\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 296, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"scpi_clk_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 132, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"scpi_dvfs_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 126, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 288, i32 49 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"cpufreq_dev\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 26, i32 32 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 291, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"scpi_clk_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 56, i32 29 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 197, i32 40 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 199, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 224, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 228, i32 38 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 230, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 238, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [26 x i8] c"../drivers/clk/clk-scpi.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 242, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_scpi_clocks_driver_exit, ptr @__initcall__kmod_clk_scpi__171_310_scpi_clocks_driver_init6, ptr @scpi_clk_add._entry, ptr @scpi_clk_add._entry.10, ptr @scpi_clk_add._entry.14, ptr @scpi_clk_add._entry.17, ptr @scpi_clk_add._entry_ptr, ptr @scpi_clk_add._entry_ptr.12, ptr @scpi_clk_add._entry_ptr.16, ptr @scpi_clk_add._entry_ptr.19, ptr @scpi_clocks_driver_exit, ptr @scpi_clocks_probe._entry, ptr @scpi_clocks_probe._entry_ptr, ptr @scpi_clocks_driver, ptr @.str, ptr @scpi_clocks_ids, ptr @scpi_clk_match, ptr @scpi_dvfs_ops, ptr @.str.1, ptr @cpufreq_dev, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @scpi_clk_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_clocks_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_clocks_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_clk_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_dvfs_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpufreq_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_clocks_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_clk_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_clk_add._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_clk_add._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_clk_add._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_clocks_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @scpi_clocks_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @scpi_clocks_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @scpi_clocks_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_clocks_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @get_scpi_ops() #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #9
  %cmp.not36 = icmp eq ptr %call2, null
  br i1 %cmp.not36, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %2 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %child.037 = phi ptr [ %call2, %for.body.lr.ph ], [ %call20, %for.inc.for.body_crit_edge ]
  %call3 = call ptr @of_match_node(ptr noundef nonnull @scpi_clk_match, ptr noundef nonnull %child.037) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %call7 = call fastcc i32 @scpi_clk_add(ptr noundef %dev1, ptr noundef nonnull %child.037, ptr noundef nonnull %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end6
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %5 = load ptr, ptr @cpufreq_dev, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then9.if.end.i_crit_edge, label %if.then.i

if.then9.if.end.i_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  call void @platform_device_unregister(ptr noundef nonnull %5) #9
  store ptr null, ptr @cpufreq_dev, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then9.if.end.i_crit_edge
  %call.i = call ptr @of_get_next_available_child(ptr noundef %4, ptr noundef null) #9
  %cmp.not6.i = icmp eq ptr %call.i, null
  br i1 %cmp.not6.i, label %if.end.i.scpi_clocks_remove.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.scpi_clocks_remove.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scpi_clocks_remove.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %child.07.i = phi ptr [ %call2.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end.i.for.body.i_crit_edge ]
  call void @of_clk_del_provider(ptr noundef %4) #9
  %call2.i = call ptr @of_get_next_available_child(ptr noundef %4, ptr noundef nonnull %child.07.i) #9
  %cmp.not.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not.i, label %for.body.i.scpi_clocks_remove.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.scpi_clocks_remove.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scpi_clocks_remove.exit

scpi_clocks_remove.exit:                          ; preds = %for.body.i.scpi_clocks_remove.exit_crit_edge, %if.end.i.scpi_clocks_remove.exit_crit_edge
  call void @of_node_put(ptr noundef nonnull %child.037) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %data = getelementptr inbounds %struct.of_device_id, ptr %call3, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %cmp12.not = icmp eq ptr %7, @scpi_dvfs_ops
  br i1 %cmp12.not, label %if.end14, label %if.end11.for.inc_crit_edge

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end14:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #9
  %8 = call ptr @memset(ptr %2, i32 255, i32 48)
  %9 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %10 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %fwnode.i.i, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %2, align 8
  %12 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.1, ptr %name2.i.i, align 4
  %13 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %dma_mask.i.i, align 8
  %14 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %properties.i.i, align 8
  %15 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #9
  store ptr %call.i.i, ptr @cpufreq_dev, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end14.for.inc_crit_edge, %if.end11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call20 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.037) #9
  %cmp.not = icmp eq ptr %call20, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %scpi_clocks_remove.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %scpi_clocks_remove.exit ], [ -6, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_clocks_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %2 = load ptr, ptr @cpufreq_dev, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_device_unregister(ptr noundef nonnull %2) #9
  store ptr null, ptr @cpufreq_dev, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #9
  %cmp.not6 = icmp eq ptr %call, null
  br i1 %cmp.not6, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %child.07 = phi ptr [ %call2, %for.body.for.body_crit_edge ], [ %call, %if.end.for.body_crit_edge ]
  tail call void @of_clk_del_provider(ptr noundef %1) #9
  %call2 = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.07) #9
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_scpi_ops() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scpi_clk_add(ptr noundef %dev, ptr noundef %np, ptr nocapture noundef readonly %match) unnamed_addr #2 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  %min.i = alloca i32, align 4
  %max.i = alloca i32, align 4
  %name = alloca ptr, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %np) #12
  br label %cleanup48

if.end:                                           ; preds = %entry
  %call1 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup48_crit_edge, label %if.end3

if.end.cleanup48_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

if.end3:                                          ; preds = %if.end
  %clk_num = getelementptr inbounds %struct.scpi_clk_data, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call.i, ptr %clk_num, align 4
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 4) #9
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !68

devm_kcalloc.exit.thread:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call1, align 4
  br label %cleanup48

devm_kcalloc.exit:                                ; preds = %if.end3
  %4 = extractvalue { i32, i1 } %1, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %4, i32 noundef 3520) #9
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5.i.i, ptr %call1, align 4
  %tobool6.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not, label %devm_kcalloc.exit.cleanup48_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup48_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp998.not = icmp eq i32 %call.i, 0
  br i1 %cmp998.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = getelementptr inbounds i8, ptr %init.i, i32 8
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %match, i32 0, i32 3
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.099 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #9
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val, align 4, !annotation !69
  %call.i82 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #9
  %tobool11.not = icmp eq ptr %call.i82, null
  br i1 %tobool11.not, label %for.body.cleanup.thread_crit_edge, label %if.end13

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end13:                                         ; preds = %for.body
  %call.i83 = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.5, ptr noundef nonnull %name, i32 noundef 1, i32 noundef %idx.099) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i83)
  %tobool15.not = icmp sgt i32 %call.i83, -1
  br i1 %tobool15.not, label %if.end20, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef %np) #12
  br label %cleanup.thread

if.end20:                                         ; preds = %if.end13
  %call21 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.13, i32 noundef %idx.099, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end27, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %np) #12
  br label %cleanup.thread

if.end27:                                         ; preds = %if.end20
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = ptrtoint ptr %call.i82 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %call.i82, align 4
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #9
  %14 = call ptr @memset(ptr %6, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min.i) #9
  %15 = ptrtoint ptr %min.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %min.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max.i) #9
  %16 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %max.i, align 4
  %17 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %13, ptr %init.i, align 4
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %flags.i, align 4
  %19 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %num_parents.i, align 4
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %ops.i, align 4
  %hw.i = getelementptr inbounds %struct.scpi_clk, ptr %call.i82, i32 0, i32 1
  %init2.i = getelementptr inbounds %struct.scpi_clk, ptr %call.i82, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %init2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %init.i, ptr %init2.i, align 4
  %call.i84 = call ptr @get_scpi_ops() #9
  %scpi_ops.i = getelementptr inbounds %struct.scpi_clk, ptr %call.i82, i32 0, i32 3
  %24 = ptrtoint ptr %scpi_ops.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i84, ptr %scpi_ops.i, align 4
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %26, @scpi_dvfs_ops
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end27
  %dvfs_get_info.i = getelementptr inbounds %struct.scpi_ops, ptr %call.i84, i32 0, i32 6
  %27 = ptrtoint ptr %dvfs_get_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dvfs_get_info.i, align 4
  %29 = ptrtoint ptr %call.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i82, align 4
  %conv.i = trunc i32 %30 to i8
  %call5.i = call ptr %28(i8 noundef zeroext %conv.i) #9
  %info.i = getelementptr inbounds %struct.scpi_clk, ptr %call.i82, i32 0, i32 2
  %31 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call5.i, ptr %info.i, align 4
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %scpi_clk_ops_init.exit, label %if.then.i.if.end24.i_crit_edge

if.then.i.if.end24.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.else.i:                                        ; preds = %if.end27
  %cmp12.i = icmp eq ptr %26, @scpi_clk_ops
  br i1 %cmp12.i, label %if.then14.i, label %if.else.i.scpi_clk_ops_init.exit.thread_crit_edge

if.else.i.scpi_clk_ops_init.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scpi_clk_ops_init.exit.thread

if.then14.i:                                      ; preds = %if.else.i
  %clk_get_range.i = getelementptr inbounds %struct.scpi_ops, ptr %call.i84, i32 0, i32 1
  %32 = ptrtoint ptr %clk_get_range.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk_get_range.i, align 4
  %34 = ptrtoint ptr %call.i82 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call.i82, align 4
  %conv17.i = trunc i32 %35 to i16
  %call18.i = call i32 %33(i16 noundef zeroext %conv17.i, ptr noundef nonnull %min.i, ptr noundef nonnull %max.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then14.i.scpi_clk_ops_init.exit.thread_crit_edge

if.then14.i.scpi_clk_ops_init.exit.thread_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scpi_clk_ops_init.exit.thread

lor.lhs.false.i:                                  ; preds = %if.then14.i
  %36 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool19.not.i = icmp eq i32 %37, 0
  br i1 %tobool19.not.i, label %lor.lhs.false.i.scpi_clk_ops_init.exit.thread_crit_edge, label %lor.lhs.false.i.if.end24.i_crit_edge

lor.lhs.false.i.if.end24.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

lor.lhs.false.i.scpi_clk_ops_init.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scpi_clk_ops_init.exit.thread

if.end24.i:                                       ; preds = %lor.lhs.false.i.if.end24.i_crit_edge, %if.then.i.if.end24.i_crit_edge
  %call26.i = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %hw.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true.i, label %if.end24.i.scpi_clk_ops_init.exit.thread_crit_edge

if.end24.i.scpi_clk_ops_init.exit.thread_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scpi_clk_ops_init.exit.thread

land.lhs.true.i:                                  ; preds = %if.end24.i
  %38 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool28.not.i = icmp eq i32 %39, 0
  br i1 %tobool28.not.i, label %land.lhs.true.i.scpi_clk_ops_init.exit.thread92_crit_edge, label %if.then29.i

land.lhs.true.i.scpi_clk_ops_init.exit.thread92_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scpi_clk_ops_init.exit.thread92

if.then29.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %min.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %min.i, align 4
  call void @clk_hw_set_rate_range(ptr noundef %hw.i, i32 noundef %41, i32 noundef %39) #9
  br label %scpi_clk_ops_init.exit.thread92

scpi_clk_ops_init.exit.thread:                    ; preds = %if.end24.i.scpi_clk_ops_init.exit.thread_crit_edge, %lor.lhs.false.i.scpi_clk_ops_init.exit.thread_crit_edge, %if.then14.i.scpi_clk_ops_init.exit.thread_crit_edge, %if.else.i.scpi_clk_ops_init.exit.thread_crit_edge
  %retval.0.i85.ph = phi i32 [ %call26.i, %if.end24.i.scpi_clk_ops_init.exit.thread_crit_edge ], [ -22, %if.else.i.scpi_clk_ops_init.exit.thread_crit_edge ], [ -22, %if.then14.i.scpi_clk_ops_init.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.scpi_clk_ops_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  br label %do.end33

scpi_clk_ops_init.exit.thread92:                  ; preds = %if.then29.i, %land.lhs.true.i.scpi_clk_ops_init.exit.thread92_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scpi_clk_add.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scpi_clk_add, %if.then40)) #9
          to label %for.inc [label %if.then40], !srcloc !70

scpi_clk_ops_init.exit:                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %call5.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  br label %do.end33

do.end33:                                         ; preds = %scpi_clk_ops_init.exit, %scpi_clk_ops_init.exit.thread
  %retval.0.i8590 = phi i32 [ %retval.0.i85.ph, %scpi_clk_ops_init.exit.thread ], [ %42, %scpi_clk_ops_init.exit ]
  %43 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %44) #12
  br label %cleanup.thread

if.then40:                                        ; preds = %scpi_clk_ops_init.exit.thread92
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scpi_clk_add.__UNIQUE_ID_ddebug170, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %46) #9
  br label %for.inc

cleanup.thread:                                   ; preds = %do.end33, %do.end26, %do.end19, %for.body.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ -22, %do.end19 ], [ -22, %do.end26 ], [ %retval.0.i8590, %do.end33 ], [ -12, %for.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #9
  br label %cleanup48

for.inc:                                          ; preds = %if.then40, %scpi_clk_ops_init.exit.thread92
  %47 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call1, align 4
  %arrayidx = getelementptr ptr, ptr %48, i32 %idx.099
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i82, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #9
  %inc = add nuw nsw i32 %idx.099, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call47 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @scpi_of_clk_src_get, ptr noundef nonnull %call1) #9
  br label %cleanup48

cleanup48:                                        ; preds = %for.end, %cleanup.thread, %devm_kcalloc.exit.cleanup48_crit_edge, %devm_kcalloc.exit.thread, %if.end.cleanup48_crit_edge, %do.end
  %retval.2 = phi i32 [ -22, %do.end ], [ %call47, %for.end ], [ -12, %if.end.cleanup48_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup48_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %retval.1.ph, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %scpi_ops = getelementptr i8, ptr %hw, i32 16
  %0 = ptrtoint ptr %scpi_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scpi_ops, align 4
  %clk_get_val = getelementptr inbounds %struct.scpi_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk_get_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_get_val, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %conv = trunc i32 %5 to i16
  %call = tail call i32 %3(i16 noundef zeroext %conv) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scpi_clk_round_rate(ptr nocapture noundef readnone %hw, i32 noundef returned %rate, ptr nocapture noundef readnone %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %rate
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %scpi_ops = getelementptr i8, ptr %hw, i32 16
  %0 = ptrtoint ptr %scpi_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scpi_ops, align 4
  %clk_set_val = getelementptr inbounds %struct.scpi_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk_set_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_set_val, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %conv = trunc i32 %5 to i16
  %call = tail call i32 %3(i16 noundef zeroext %conv, i32 noundef %rate) #9
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal ptr @scpi_of_clk_src_get(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %clk_num = getelementptr inbounds %struct.scpi_clk_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not = icmp eq i32 %3, 0
  br i1 %cmp10.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %count.011, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %count.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx1 = getelementptr ptr, ptr %5, i32 %count.011
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %9)
  %cmp2 = icmp eq i32 %1, %9
  br i1 %cmp2, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr inbounds %struct.scpi_clk, ptr %7, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %hw, %if.then ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_set_rate_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_dvfs_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %scpi_ops = getelementptr i8, ptr %hw, i32 16
  %0 = ptrtoint ptr %scpi_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scpi_ops, align 4
  %dvfs_get_idx = getelementptr inbounds %struct.scpi_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dvfs_get_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvfs_get_idx, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %conv = trunc i32 %5 to i8
  %call = tail call i32 %3(i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %info = getelementptr i8, ptr %hw, i32 12
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %opps = getelementptr inbounds %struct.scpi_dvfs_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %opps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %opps, align 4
  %add.ptr2 = getelementptr %struct.scpi_opp, ptr %9, i32 %call
  %10 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %add.ptr2, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_dvfs_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr i8, ptr %hw, i32 12
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp24.not.i = icmp eq i32 %3, 0
  br i1 %cmp24.not.i, label %entry.for.end.thread.i_crit_edge, label %for.body.preheader.i

entry.for.end.thread.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

for.body.preheader.i:                             ; preds = %entry
  %opps.i = getelementptr inbounds %struct.scpi_dvfs_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %opps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %opps.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.else.i.for.body.i_crit_edge, %for.body.preheader.i
  %opp.027.i = phi ptr [ %incdec.ptr.i, %if.else.i.for.body.i_crit_edge ], [ %5, %for.body.preheader.i ]
  %fmin.026.i = phi i32 [ %8, %if.else.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %idx.025.i = phi i32 [ %inc.i, %if.else.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %6 = ptrtoint ptr %opp.027.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %opp.027.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %rate)
  %cmp2.not.i = icmp ult i32 %7, %rate
  br i1 %cmp2.not.i, label %if.else.i, label %for.end.i

if.else.i:                                        ; preds = %for.body.i
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 %fmin.026.i) #9
  %inc.i = add nuw i32 %idx.025.i, 1
  %incdec.ptr.i = getelementptr %struct.scpi_opp, ptr %opp.027.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %if.else.i.for.end.thread.i_crit_edge, label %if.else.i.for.body.i_crit_edge

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.else.i.for.end.thread.i_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp9.not.i = icmp eq i32 %7, -1
  br i1 %cmp9.not.i, label %for.end.i.for.end.thread.i_crit_edge, label %for.end.i.__scpi_dvfs_round_rate.exit_crit_edge

for.end.i.__scpi_dvfs_round_rate.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__scpi_dvfs_round_rate.exit

for.end.i.for.end.thread.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.i.for.end.thread.i_crit_edge, %if.else.i.for.end.thread.i_crit_edge, %entry.for.end.thread.i_crit_edge
  %fmin.023.i = phi i32 [ %fmin.026.i, %for.end.i.for.end.thread.i_crit_edge ], [ 0, %entry.for.end.thread.i_crit_edge ], [ %8, %if.else.i.for.end.thread.i_crit_edge ]
  br label %__scpi_dvfs_round_rate.exit

__scpi_dvfs_round_rate.exit:                      ; preds = %for.end.thread.i, %for.end.i.__scpi_dvfs_round_rate.exit_crit_edge
  %9 = phi i32 [ %fmin.023.i, %for.end.thread.i ], [ %7, %for.end.i.__scpi_dvfs_round_rate.exit_crit_edge ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_dvfs_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %info.i = getelementptr i8, ptr %hw, i32 12
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.i = icmp sgt i32 %3, 0
  br i1 %cmp9.i, label %for.body.preheader.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader.i:                             ; preds = %entry
  %opps.i = getelementptr inbounds %struct.scpi_dvfs_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %opps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %opps.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %opp.011.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %5, %for.body.preheader.i ]
  %idx.010.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %6 = ptrtoint ptr %opp.011.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %opp.011.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %rate)
  %cmp2.i = icmp eq i32 %7, %rate
  br i1 %cmp2.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %idx.010.i, 1
  %incdec.ptr.i = getelementptr %struct.scpi_opp, ptr %opp.011.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %scpi_ops = getelementptr i8, ptr %hw, i32 16
  %8 = ptrtoint ptr %scpi_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scpi_ops, align 4
  %dvfs_set_idx = getelementptr inbounds %struct.scpi_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dvfs_set_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dvfs_set_idx, align 4
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  %conv = trunc i32 %13 to i8
  %conv1 = trunc i32 %idx.010.i to i8
  %call2 = tail call i32 %11(i8 noundef zeroext %conv, i8 noundef zeroext %conv1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_clk_scpi__171_310_scpi_clocks_driver_init6, !1, !"__initcall__kmod_clk_scpi__171_310_scpi_clocks_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-scpi.c", i32 310, i32 1}
!2 = !{ptr @__exitcall_scpi_clocks_driver_exit, !1, !"__exitcall_scpi_clocks_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author172, !4, !"__UNIQUE_ID_author172", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-scpi.c", i32 312, i32 1}
!5 = !{ptr @__UNIQUE_ID_description173, !6, !"__UNIQUE_ID_description173", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-scpi.c", i32 313, i32 1}
!7 = !{ptr @__UNIQUE_ID_file174, !8, !"__UNIQUE_ID_file174", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-scpi.c", i32 314, i32 1}
!9 = !{ptr @__UNIQUE_ID_license175, !8, !"__UNIQUE_ID_license175", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-scpi.c", i32 304, i32 11}
!12 = !{ptr @scpi_clocks_driver, !13, !"scpi_clocks_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-scpi.c", i32 302, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-scpi.c", i32 288, i32 49}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-scpi.c", i32 291, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @scpi_clocks_probe._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @scpi_clocks_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @scpi_clk_match, !23, !"scpi_clk_match", i1 false, i1 false}
!23 = !{!"../drivers/clk/clk-scpi.c", i32 132, i32 34}
!24 = !{ptr @scpi_clk_ops, !25, !"scpi_clk_ops", i1 false, i1 false}
!25 = !{!"../drivers/clk/clk-scpi.c", i32 56, i32 29}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/clk-scpi.c", i32 197, i32 40}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/clk-scpi.c", i32 199, i32 3}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @scpi_clk_add._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @scpi_clk_add._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/clk-scpi.c", i32 224, i32 4}
!37 = !{ptr @scpi_clk_add._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @scpi_clk_add._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/clk-scpi.c", i32 228, i32 38}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/clk-scpi.c", i32 230, i32 4}
!43 = !{ptr @scpi_clk_add._entry.14, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @scpi_clk_add._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/clk-scpi.c", i32 238, i32 4}
!47 = !{ptr @scpi_clk_add._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @scpi_clk_add._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/clk-scpi.c", i32 242, i32 3}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @scpi_clk_add.__UNIQUE_ID_ddebug170, !50, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!53 = !{ptr @scpi_dvfs_ops, !54, !"scpi_dvfs_ops", i1 false, i1 false}
!54 = !{!"../drivers/clk/clk-scpi.c", i32 126, i32 29}
!55 = !{ptr @cpufreq_dev, !56, !"cpufreq_dev", i1 false, i1 false}
!56 = !{!"../drivers/clk/clk-scpi.c", i32 26, i32 32}
!57 = !{ptr @scpi_clocks_ids, !58, !"scpi_clocks_ids", i1 false, i1 false}
!58 = !{!"../drivers/clk/clk-scpi.c", i32 296, i32 34}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{!"auto-init"}
!70 = !{i64 2148922438, i64 2148922443, i64 2148922456, i64 2148922500, i64 2148922534, i64 2148922555}
