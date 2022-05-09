; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/imx-cpufreq-dt.c_pt.bc'
source_filename = "../drivers/cpufreq/imx-cpufreq-dt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.cpufreq_dt_platform_data = type { i8, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }

@__initcall__kmod_imx_cpufreq_dt__300_193_imx_cpufreq_dt_driver_init6 = internal global ptr @imx_cpufreq_dt_driver_init, section ".initcall6.init", align 4
@imx_cpufreq_dt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_cpufreq_dt_probe, ptr @imx_cpufreq_dt_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_cpufreq_dt_driver_exit = internal global ptr @imx_cpufreq_dt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias301 = internal constant [45 x i8] c"imx_cpufreq_dt.alias=platform:imx-cpufreq-dt\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [71 x i8] c"imx_cpufreq_dt.description=Freescale i.MX cpufreq speed grading driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [51 x i8] c"imx_cpufreq_dt.file=drivers/cpufreq/imx-cpufreq-dt\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [30 x i8] c"imx_cpufreq_dt.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx-cpufreq-dt\00", [17 x i8] zeroinitializer }, align 32
@cpu_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu-supply\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl,imx7ulp\00", [20 x i8] zeroinitializer }, align 32
@imx7ulp_clks = internal global { [6 x %struct.clk_bulk_data], [48 x i8] } { [6 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.23, ptr null }, %struct.clk_bulk_data { ptr @.str.24, ptr null }, %struct.clk_bulk_data { ptr @.str.25, ptr null }, %struct.clk_bulk_data { ptr @.str.26, ptr null }, %struct.clk_bulk_data { ptr @.str.27, ptr null }, %struct.clk_bulk_data { ptr @.str.28, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpufreq-dt\00", [21 x i8] zeroinitializer }, align 32
@imx7ulp_data = internal global { %struct.cpufreq_dt_platform_data, [44 x i8] } { %struct.cpufreq_dt_platform_data { i8 0, ptr @imx7ulp_get_intermediate, ptr @imx7ulp_target_intermediate, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@imx_cpufreq_dt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 107, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register cpufreq-dt: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx_cpufreq_dt_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/cpufreq/imx-cpufreq-dt.c\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_cpufreq_dt_probe._entry_ptr = internal global ptr @imx_cpufreq_dt_probe._entry, section ".printk_index", align 4
@cpufreq_dt_pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"speed_grade\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx8mn\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx8mp\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx8mm\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx8mq\00", [21 x i8] zeroinitializer }, align 32
@imx_cpufreq_dt_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 154, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"cpu speed grade %d mkt segment %d supported-hw %#x %#x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@imx_cpufreq_dt_probe._entry_ptr.17 = internal global ptr @imx_cpufreq_dt_probe._entry.14, section ".printk_index", align 4
@cpufreq_opp_table = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@imx_cpufreq_dt_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 159, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set supported opp: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@imx_cpufreq_dt_probe._entry_ptr.20 = internal global ptr @imx_cpufreq_dt_probe._entry.18, section ".printk_index", align 4
@imx_cpufreq_dt_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 168, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@imx_cpufreq_dt_probe._entry_ptr.22 = internal global ptr @imx_cpufreq_dt_probe._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arm\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"scs_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hsrun_core\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hsrun_scs_sel\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"firc\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"imx_cpufreq_dt_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 186, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 190, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [8 x i8] c"cpu_dev\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 35, i32 23 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 92, i32 42 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 95, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"imx7ulp_clks\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 46, i32 29 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 101, i32 49 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"imx7ulp_data\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 78, i32 40 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 107, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"cpufreq_dt_pdev\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 33, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 116, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 120, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 121, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 143, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 144, i32 32 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 153, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [18 x i8] c"cpufreq_opp_table\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 34, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 159, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 168, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 47, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 48, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 49, i32 10 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 50, i32 10 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 51, i32 10 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [36 x i8] c"../drivers/cpufreq/imx-cpufreq-dt.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 52, i32 10 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_alias301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_imx_cpufreq_dt_driver_exit, ptr @__initcall__kmod_imx_cpufreq_dt__300_193_imx_cpufreq_dt_driver_init6, ptr @imx_cpufreq_dt_driver_exit, ptr @imx_cpufreq_dt_probe._entry, ptr @imx_cpufreq_dt_probe._entry.14, ptr @imx_cpufreq_dt_probe._entry.18, ptr @imx_cpufreq_dt_probe._entry.21, ptr @imx_cpufreq_dt_probe._entry_ptr, ptr @imx_cpufreq_dt_probe._entry_ptr.17, ptr @imx_cpufreq_dt_probe._entry_ptr.20, ptr @imx_cpufreq_dt_probe._entry_ptr.22, ptr @imx_cpufreq_dt_driver, ptr @.str, ptr @cpu_dev, ptr @.str.1, ptr @.str.2, ptr @imx7ulp_clks, ptr @.str.3, ptr @imx7ulp_data, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @cpufreq_dt_pdev, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @cpufreq_opp_table, ptr @.str.19, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_cpufreq_dt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7ulp_clks to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7ulp_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_cpufreq_dt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpufreq_dt_pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_cpufreq_dt_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpufreq_opp_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_cpufreq_dt_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_cpufreq_dt_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_cpufreq_dt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_cpufreq_dt_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_cpufreq_dt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_cpufreq_dt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_cpufreq_dt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %cell_value = alloca i32, align 4
  %supported_hw = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cell_value) #6
  %0 = ptrtoint ptr %cell_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cell_value, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %supported_hw) #6
  %1 = getelementptr inbounds [2 x i32], ptr %supported_hw, i32 0, i32 1
  %call = tail call ptr @get_cpu_device(i32 noundef 0) #6
  store ptr %call, ptr @cpu_dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call1 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %4 = load ptr, ptr @cpu_dev, align 4
  br i1 %tobool3.not, label %if.end14, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @clk_bulk_get(ptr noundef %4, i32 noundef 6, ptr noundef nonnull @imx7ulp_clks) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #6
  %5 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %6 = call ptr @memset(ptr %5, i32 255, i32 48)
  %7 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %fwnode.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %5, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.3, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @imx7ulp_data, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 20, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #6
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_bulk_put(i32 noundef 6, ptr noundef nonnull @imx7ulp_clks) #6
  %17 = ptrtoint ptr %call.i.i to i32
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %17) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call.i.i, ptr @cpufreq_dt_pdev, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = call i32 @nvmem_cell_read_u32(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef nonnull %cell_value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %if.end18.if.end26_crit_edge

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

lor.lhs.false:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  %spec.select = select i1 %tobool22.not, i32 3, i32 15
  br label %if.end26

if.end26:                                         ; preds = %lor.lhs.false, %if.end18.if.end26_crit_edge
  %.sink = phi i32 [ 15, %if.end18.if.end26_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %18 = ptrtoint ptr %cell_value to i32
  call void @__asan_load4_noabort(i32 %18)
  %.sink106 = load i32, ptr %cell_value, align 4
  %and24 = lshr i32 %.sink106, 8
  %shr25 = and i32 %and24, %.sink
  %call27 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  %19 = ptrtoint ptr %cell_value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cell_value, align 4
  %. = select i1 %tobool28.not, i32 6, i32 5
  %and33 = lshr i32 %20, %.
  %mkt_segment.0 = and i32 %and33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mkt_segment.0)
  %cmp = icmp eq i32 %mkt_segment.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr25)
  %cmp36 = icmp eq i32 %shr25, 0
  %or.cond = select i1 %cmp, i1 %cmp36, i1 false
  br i1 %or.cond, label %if.then37, label %if.end26.if.end52_crit_edge

if.end26.if.end52_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then37:                                        ; preds = %if.end26
  %call38 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %if.then37.if.then43_crit_edge

if.then37.if.then43_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

lor.lhs.false40:                                  ; preds = %if.then37
  %call41 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %lor.lhs.false40.if.end44_crit_edge, label %lor.lhs.false40.if.then43_crit_edge

lor.lhs.false40.if.then43_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

lor.lhs.false40.if.end44_crit_edge:               ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then43:                                        ; preds = %lor.lhs.false40.if.then43_crit_edge, %if.then37.if.then43_crit_edge
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %lor.lhs.false40.if.end44_crit_edge
  %speed_grade.1 = phi i32 [ 1, %if.then43 ], [ 0, %lor.lhs.false40.if.end44_crit_edge ]
  %call45 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %lor.lhs.false47, label %if.end44.if.then50_crit_edge

if.end44.if.then50_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50

lor.lhs.false47:                                  ; preds = %if.end44
  %call48 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %lor.lhs.false47.if.end52_crit_edge, label %lor.lhs.false47.if.then50_crit_edge

lor.lhs.false47.if.then50_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50

lor.lhs.false47.if.end52_crit_edge:               ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then50:                                        ; preds = %lor.lhs.false47.if.then50_crit_edge, %if.end44.if.then50_crit_edge
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %lor.lhs.false47.if.end52_crit_edge, %if.end26.if.end52_crit_edge
  %speed_grade.2 = phi i32 [ 11, %if.then50 ], [ %speed_grade.1, %lor.lhs.false47.if.end52_crit_edge ], [ %shr25, %if.end26.if.end52_crit_edge ]
  %shl = shl nuw nsw i32 1, %speed_grade.2
  %21 = ptrtoint ptr %supported_hw to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl, ptr %supported_hw, align 4
  %shl53 = shl nuw nsw i32 1, %mkt_segment.0
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl53, ptr %1, align 4
  %dev58 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev58, ptr noundef nonnull @.str.15, i32 noundef %speed_grade.2, i32 noundef %mkt_segment.0, i32 noundef %shl, i32 noundef %shl53) #9
  %23 = load ptr, ptr @cpu_dev, align 4
  %call61 = call ptr @dev_pm_opp_set_supported_hw(ptr noundef %23, ptr noundef nonnull %supported_hw, i32 noundef 2) #6
  store ptr %call61, ptr @cpufreq_opp_table, align 4
  %cmp.i104 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %if.then63, label %if.end69

if.then63:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %call61 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58, ptr noundef nonnull @.str.19, i32 noundef %24) #9
  br label %cleanup

if.end69:                                         ; preds = %if.end52
  %call71 = call fastcc ptr @platform_device_register_data(ptr noundef %dev58, ptr noundef null, i32 noundef 0)
  store ptr %call71, ptr @cpufreq_dt_pdev, align 4
  %cmp.i105 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %if.then73, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %25 = load ptr, ptr @cpufreq_opp_table, align 4
  call void @dev_pm_opp_put_supported_hw(ptr noundef %25) #6
  %26 = load ptr, ptr @cpufreq_dt_pdev, align 4
  %27 = ptrtoint ptr %26 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58, ptr noundef nonnull @.str.4, i32 noundef %27) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.end69.cleanup_crit_edge, %if.then63, %if.end14.cleanup_crit_edge, %if.end13, %if.then11, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then11 ], [ 0, %if.end13 ], [ %24, %if.then63 ], [ %27, %if.then73 ], [ -19, %entry.cleanup_crit_edge ], [ %call5, %if.then4.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ 0, %if.end69.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %supported_hw) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cell_value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_cpufreq_dt_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cpufreq_dt_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #6
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = load ptr, ptr @cpufreq_opp_table, align 4
  tail call void @dev_pm_opp_put_supported_hw(ptr noundef %1) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_bulk_put(i32 noundef 6, ptr noundef nonnull @imx7ulp_clks) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @platform_device_register_data(ptr noundef %parent, ptr noundef %data, i32 noundef %size) unnamed_addr #4 align 64 {
entry:
  %pdevinfo.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i) #6
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %parent, ptr %pdevinfo.i, align 8
  %fwnode.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %name2.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 3
  %5 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.3, ptr %name2.i, align 4
  %res4.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 5
  %6 = ptrtoint ptr %res4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %res4.i, align 4
  %num_res.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 6
  %7 = ptrtoint ptr %num_res.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %num_res.i, align 8
  %data5.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 7
  %8 = ptrtoint ptr %data5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %data5.i, align 4
  %size_data.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 8
  %9 = ptrtoint ptr %size_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %size, ptr %size_data.i, align 8
  %dma_mask.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 9
  %10 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %dma_mask.i, align 8
  %properties.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 10
  %11 = ptrtoint ptr %properties.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %properties.i, align 8
  %call.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i) #6
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_put(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmem_cell_read_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_set_supported_hw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_supported_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx7ulp_get_intermediate(ptr nocapture noundef readnone %policy, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds ([6 x %struct.clk_bulk_data], ptr @imx7ulp_clks, i32 0, i32 5, i32 1), align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %0) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx7ulp_target_intermediate(ptr nocapture noundef readonly %policy, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %0 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %freq_table, align 4
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %1, i32 %index, i32 2
  %2 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency, align 4
  %4 = load ptr, ptr getelementptr inbounds ([6 x %struct.clk_bulk_data], ptr @imx7ulp_clks, i32 0, i32 2, i32 1), align 4
  %5 = load ptr, ptr getelementptr inbounds ([6 x %struct.clk_bulk_data], ptr @imx7ulp_clks, i32 0, i32 5, i32 1), align 4
  %call = tail call i32 @clk_set_parent(ptr noundef %4, ptr noundef %5) #6
  %6 = load ptr, ptr getelementptr inbounds ([6 x %struct.clk_bulk_data], ptr @imx7ulp_clks, i32 0, i32 4, i32 1), align 4
  %7 = load ptr, ptr getelementptr inbounds ([6 x %struct.clk_bulk_data], ptr @imx7ulp_clks, i32 0, i32 5, i32 1), align 4
  %call1 = tail call i32 @clk_set_parent(ptr noundef %6, ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 528000, i32 %3)
  %cmp = icmp ugt i32 %3, 528000
  %8 = load ptr, ptr getelementptr inbounds ([6 x %struct.clk_bulk_data], ptr @imx7ulp_clks, i32 0, i32 0, i32 1), align 4
  %.val = load ptr, ptr getelementptr inbounds ([6 x %struct.clk_bulk_data], ptr @imx7ulp_clks, i32 0, i32 3, i32 1), align 4
  %.val5 = load ptr, ptr getelementptr inbounds ([6 x %struct.clk_bulk_data], ptr @imx7ulp_clks, i32 0, i32 1, i32 1), align 4
  %9 = select i1 %cmp, ptr %.val, ptr %.val5
  %call3 = tail call i32 @clk_set_parent(ptr noundef %8, ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_imx_cpufreq_dt__300_193_imx_cpufreq_dt_driver_init6, !1, !"__initcall__kmod_imx_cpufreq_dt__300_193_imx_cpufreq_dt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 193, i32 1}
!2 = !{ptr @__exitcall_imx_cpufreq_dt_driver_exit, !1, !"__exitcall_imx_cpufreq_dt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias301, !4, !"__UNIQUE_ID_alias301", i1 false, i1 false}
!4 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 195, i32 1}
!5 = !{ptr @__UNIQUE_ID_description302, !6, !"__UNIQUE_ID_description302", i1 false, i1 false}
!6 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 196, i32 1}
!7 = !{ptr @__UNIQUE_ID_file303, !8, !"__UNIQUE_ID_file303", i1 false, i1 false}
!8 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 197, i32 1}
!9 = !{ptr @__UNIQUE_ID_license304, !8, !"__UNIQUE_ID_license304", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 190, i32 11}
!12 = !{ptr @imx_cpufreq_dt_driver, !13, !"imx_cpufreq_dt_driver", i1 false, i1 false}
!13 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 186, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 92, i32 42}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 95, i32 31}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 101, i32 49}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 107, i32 4}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @imx_cpufreq_dt_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @imx_cpufreq_dt_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 116, i32 37}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 120, i32 31}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 121, i32 31}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 143, i32 32}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 144, i32 32}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 153, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @imx_cpufreq_dt_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @imx_cpufreq_dt_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 159, i32 3}
!45 = !{ptr @imx_cpufreq_dt_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @imx_cpufreq_dt_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @imx_cpufreq_dt_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 168, i32 3}
!49 = !{ptr @imx_cpufreq_dt_probe._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @cpu_dev, !51, !"cpu_dev", i1 false, i1 false}
!51 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 35, i32 23}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 47, i32 10}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 48, i32 10}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 49, i32 10}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 50, i32 10}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 51, i32 10}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 52, i32 10}
!64 = !{ptr @imx7ulp_clks, !65, !"imx7ulp_clks", i1 false, i1 false}
!65 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 46, i32 29}
!66 = !{ptr @imx7ulp_data, !67, !"imx7ulp_data", i1 false, i1 false}
!67 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 78, i32 40}
!68 = !{ptr @cpufreq_dt_pdev, !69, !"cpufreq_dt_pdev", i1 false, i1 false}
!69 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 33, i32 32}
!70 = !{ptr @cpufreq_opp_table, !71, !"cpufreq_opp_table", i1 false, i1 false}
!71 = !{!"../drivers/cpufreq/imx-cpufreq-dt.c", i32 34, i32 26}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
