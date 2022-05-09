; ModuleID = '/llk/IR_all_yes/drivers/devfreq/sun8i-a33-mbus.c_pt.bc'
source_filename = "../drivers/devfreq/sun8i-a33-mbus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sun8i_a33_mbus_variant = type { i32, i32, i32 }
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
%struct.sun8i_a33_mbus = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.devfreq_simple_ondemand_data, %struct.devfreq_dev_profile, i32, i32, i32, i32, i32, [0 x i32] }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.devfreq = type { %struct.list_head, %struct.mutex, %struct.device, ptr, ptr, ptr, %struct.notifier_block, %struct.delayed_work, i32, %struct.devfreq_dev_status, ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i32, i32, i8, i32, i32, %struct.atomic_t, %struct.devfreq_stats, %struct.srcu_notifier_head, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }
%struct.dev_pm_qos_request = type { i32, %union.anon.43, ptr }
%union.anon.43 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.devfreq_stats = type { i32, ptr, ptr, i64 }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_pmu_period = internal constant [26 x i8] c"sun8i_a33_mbus.pmu_period\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@pmu_period = internal global { i32, [28 x i8] } { i32 50000, [28 x i8] zeroinitializer }, align 32
@__param_pmu_period = internal constant %struct.kernel_param { ptr @__param_str_pmu_period, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @pmu_period } }, section "__param", align 4
@__UNIQUE_ID_pmu_periodtype170 = internal constant [39 x i8] c"sun8i_a33_mbus.parmtype=pmu_period:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pmu_period171 = internal constant [75 x i8] c"sun8i_a33_mbus.parm=pmu_period:Bandwidth measurement period (microseconds)\00", section ".modinfo", align 1
@__initcall__kmod_sun8i_a33_mbus__175_507_sun8i_a33_mbus_driver_init6 = internal global ptr @sun8i_a33_mbus_driver_init, section ".initcall6.init", align 4
@sun8i_a33_mbus_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun8i_a33_mbus_probe, ptr @sun8i_a33_mbus_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun8i_a33_mbus_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun8i_a33_mbus_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun8i_a33_mbus_driver_exit = internal global ptr @sun8i_a33_mbus_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author176 = internal constant [59 x i8] c"sun8i_a33_mbus.author=Samuel Holland <samuel@sholland.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description177 = internal constant [70 x i8] c"sun8i_a33_mbus.description=Allwinner sun8i/sun50i MBUS DEVFREQ Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file178 = internal constant [51 x i8] c"sun8i_a33_mbus.file=drivers/devfreq/sun8i-a33-mbus\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [30 x i8] c"sun8i_a33_mbus.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sun8i-a33-mbus\00", [17 x i8] zeroinitializer }, align 32
@sun8i_a33_mbus_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-mbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_mbus }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h5-mbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_mbus }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sun8i_a33_mbus_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sun8i_a33_mbus_suspend, ptr @sun8i_a33_mbus_resume, ptr @sun8i_a33_mbus_suspend, ptr @sun8i_a33_mbus_resume, ptr @sun8i_a33_mbus_suspend, ptr @sun8i_a33_mbus_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dram\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mbus\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get bus clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get dram clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get mbus clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable bus clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to lock dram clock rate\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to lock mbus clock rate\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add OPP table\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to add OPPs\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to init hardware\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"simple_ondemand\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add devfreq device\0A\00", [34 x i8] zeroinitializer }, align 32
@sun8i_a33_mbus_set_dram_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.17, i32 234, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to set DRAM frequency: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sun8i_a33_mbus_set_dram_target\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/devfreq/sun8i-a33-mbus.c\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun8i_a33_mbus_set_dram_target._entry_ptr = internal global ptr @sun8i_a33_mbus_set_dram_target._entry, section ".printk_index", align 4
@sun8i_a33_mbus_set_dram_freq.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.17, ptr @.str.22, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sun8i_a33_mbus\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sun8i_a33_mbus_set_dram_freq\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Setting DRAM to %u MHz, tREFI=%u, tRFC=%u, ODT=%s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dynamic\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sun8i_a33_mbus_get_dram_status.__UNIQUE_ID_ddebug173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.25, ptr @.str.17, ptr @.str.26, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sun8i_a33_mbus_get_dram_status\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Using %lu/%lu (%lu%%) at %lu MHz\0A\00", [62 x i8] zeroinitializer }, align 32
@sun8i_a33_mbus_hw_init.__UNIQUE_ID_ddebug174 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.27, ptr @.str.17, ptr @.str.28, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun8i_a33_mbus_hw_init\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Detected %u-bit %sDDRx with%s ODT\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LP\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@sun8i_a33_mbus_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.17, i32 472, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to restore DRAM frequency: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sun8i_a33_mbus_remove\00", [42 x i8] zeroinitializer }, align 32
@sun8i_a33_mbus_remove._entry_ptr = internal global ptr @sun8i_a33_mbus_remove._entry, section ".printk_index", align 4
@sun50i_a64_mbus = internal constant { %struct.sun8i_a33_mbus_variant, [20 x i8] } { %struct.sun8i_a33_mbus_variant { i32 1, i32 4, i32 400 }, [20 x i8] zeroinitializer }, align 32
@switch.table.sun8i_a33_mbus_hw_init = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 7800, i32 7800, i32 7800, i32 7800, i32 3900, i32 3900], [40 x i8] zeroinitializer }, align 32
@switch.table.sun8i_a33_mbus_hw_init.34 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 350, i32 350, i32 350, i32 350, i32 210, i32 210], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant [11 x i8] c"pmu_period\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 101, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant [22 x i8] c"sun8i_a33_mbus_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 498, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 502, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"sun8i_a33_mbus_of_match\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 488, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"sun8i_a33_mbus_pm_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 495, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 355, i32 63 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 359, i32 63 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 363, i32 36 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 366, i32 10 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 371, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 376, i32 10 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 381, i32 10 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 386, i32 9 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 393, i32 9 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 409, i32 9 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 421, i32 10 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 428, i32 9 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 433, i32 7 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 437, i32 9 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 234, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 186, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 252, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 296, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 472, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [16 x i8] c"sun50i_a64_mbus\00", align 1
@___asan_gen_.156 = private constant [36 x i8] c"../drivers/devfreq/sun8i-a33-mbus.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 482, i32 44 }
@___asan_gen_.158 = private unnamed_addr constant [36 x i8] c"switch.table.sun8i_a33_mbus_hw_init\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [39 x i8] c"switch.table.sun8i_a33_mbus_hw_init.34\00", align 1
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_description177, ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_license179, ptr @__UNIQUE_ID_pmu_period171, ptr @__UNIQUE_ID_pmu_periodtype170, ptr @__exitcall_sun8i_a33_mbus_driver_exit, ptr @__initcall__kmod_sun8i_a33_mbus__175_507_sun8i_a33_mbus_driver_init6, ptr @__param_pmu_period, ptr @sun8i_a33_mbus_driver_exit, ptr @sun8i_a33_mbus_remove._entry, ptr @sun8i_a33_mbus_remove._entry_ptr, ptr @sun8i_a33_mbus_set_dram_target._entry, ptr @sun8i_a33_mbus_set_dram_target._entry_ptr, ptr @pmu_period, ptr @sun8i_a33_mbus_driver, ptr @.str, ptr @sun8i_a33_mbus_of_match, ptr @sun8i_a33_mbus_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @sun50i_a64_mbus, ptr @switch.table.sun8i_a33_mbus_hw_init, ptr @switch.table.sun8i_a33_mbus_hw_init.34], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_period to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a33_mbus_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a33_mbus_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a33_mbus_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a33_mbus_set_dram_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a33_mbus_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_mbus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sun8i_a33_mbus_hw_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sun8i_a33_mbus_hw_init.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_a33_mbus_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun8i_a33_mbus_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_a33_mbus_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun8i_a33_mbus_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_a33_mbus_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_match_data(ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup111_crit_edge, label %if.end

entry.cleanup111_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup111

if.end:                                           ; preds = %entry
  %max_dram_divider = getelementptr inbounds %struct.sun8i_a33_mbus_variant, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %max_dram_divider to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_dram_divider, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %sub = sub i32 %1, %3
  %add = add i32 %sub, 1
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #6
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 96) #6
  %retval.0.i = select i1 %5, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup111_crit_edge, label %if.end6

if.end.cleanup111_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup111

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %call.i, align 4
  %call8 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #6
  %reg_dram = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %reg_dram to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %reg_dram, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call8 to i32
  br label %cleanup111

if.end14:                                         ; preds = %if.end6
  %call15 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #6
  %reg_mbus = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %reg_mbus to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call15, ptr %reg_mbus, align 4
  %cmp.i198 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i198, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call15 to i32
  br label %cleanup111

if.end21:                                         ; preds = %if.end14
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #6
  %clk_bus = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %clk_bus to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call22, ptr %clk_bus, align 4
  %cmp.i199 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i199, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call22 to i32
  %call28 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %14, ptr noundef nonnull @.str.4) #6
  br label %cleanup111

if.end29:                                         ; preds = %if.end21
  %call30 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  %clk_dram = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %clk_dram to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call30, ptr %clk_dram, align 4
  %cmp.i200 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i200, label %if.then33, label %if.end37

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call30 to i32
  %call36 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %16, ptr noundef nonnull @.str.5) #6
  br label %cleanup111

if.end37:                                         ; preds = %if.end29
  %call38 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #6
  %clk_mbus = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %clk_mbus to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call38, ptr %clk_mbus, align 4
  %cmp.i201 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %if.then41, label %if.end45

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call38 to i32
  %call44 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %18, ptr noundef nonnull @.str.6) #6
  br label %cleanup111

if.end45:                                         ; preds = %if.end37
  %19 = ptrtoint ptr %clk_bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk_bus, align 4
  %call47 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end51, label %if.then49

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call47, ptr noundef nonnull @.str.7) #6
  br label %cleanup111

if.end51:                                         ; preds = %if.end45
  %21 = ptrtoint ptr %clk_dram to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk_dram, align 4
  %call53 = tail call i32 @clk_rate_exclusive_get(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end51.err_disable_bus_crit_edge

if.end51.err_disable_bus_crit_edge:               ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_bus

if.end56:                                         ; preds = %if.end51
  %23 = ptrtoint ptr %clk_mbus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_mbus, align 4
  %call58 = tail call i32 @clk_rate_exclusive_get(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end56.err_unlock_dram_crit_edge

if.end56.err_unlock_dram_crit_edge:               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock_dram

if.end61:                                         ; preds = %if.end56
  %gov_data = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %gov_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10, ptr %gov_data, align 4
  %downdifferential = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %call.i, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %downdifferential to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %downdifferential, align 4
  %27 = ptrtoint ptr %clk_dram to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk_dram, align 4
  %call64 = tail call i32 @clk_get_rate(ptr noundef %28) #6
  %profile = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %call.i, i32 0, i32 8
  %29 = ptrtoint ptr %profile to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call64, ptr %profile, align 4
  %polling_ms = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %call.i, i32 0, i32 8, i32 1
  %30 = ptrtoint ptr %polling_ms to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1000, ptr %polling_ms, align 4
  %target = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %call.i, i32 0, i32 8, i32 4
  %31 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @sun8i_a33_mbus_set_dram_target, ptr %target, align 4
  %get_dev_status = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %call.i, i32 0, i32 8, i32 5
  %32 = ptrtoint ptr %get_dev_status to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @sun8i_a33_mbus_get_dram_status, ptr %get_dev_status, align 4
  %freq_table = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %call.i, i32 0, i32 14
  %freq_table69 = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %call.i, i32 0, i32 8, i32 8
  %33 = ptrtoint ptr %freq_table69 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %freq_table, ptr %freq_table69, align 4
  %max_state71 = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %call.i, i32 0, i32 8, i32 9
  %34 = ptrtoint ptr %max_state71 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %max_state71, align 4
  %call72 = tail call i32 @devm_pm_opp_set_clkname(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end61.err_unlock_mbus_crit_edge

if.end61.err_unlock_mbus_crit_edge:               ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock_mbus

if.end75:                                         ; preds = %if.end61
  %35 = ptrtoint ptr %clk_dram to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk_dram, align 4
  %call77 = tail call ptr @clk_get_parent(ptr noundef %36) #6
  %call78 = tail call i32 @clk_get_rate(ptr noundef %call77) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp203.not = icmp eq i32 %add, 0
  br i1 %cmp203.not, label %if.end75.for.end_crit_edge, label %if.end75.for.body_crit_edge

if.end75.for.body_crit_edge:                      ; preds = %if.end75
  br label %for.body

if.end75.for.end_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0204, 1
  %exitcond.not = icmp eq i32 %i.0204, %sub
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end75.for.body_crit_edge
  %i.0204 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end75.for.body_crit_edge ]
  %37 = ptrtoint ptr %max_dram_divider to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_dram_divider, align 4
  %sub80 = sub i32 %38, %i.0204
  %div81 = udiv i32 %call78, %sub80
  %arrayidx = getelementptr %struct.sun8i_a33_mbus, ptr %call.i, i32 0, i32 14, i32 %i.0204
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div81, ptr %arrayidx, align 4
  %call85 = tail call i32 @dev_pm_opp_add(ptr noundef %dev1, i32 noundef %div81, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %for.cond, label %for.body.err_remove_opps_crit_edge

for.body.err_remove_opps_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_remove_opps

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end75.for.end_crit_edge
  %40 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %profile, align 4
  %call91 = tail call fastcc i32 @sun8i_a33_mbus_hw_init(ptr noundef %dev1, ptr noundef nonnull %call.i, i32 noundef %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %for.end.err_remove_opps_crit_edge

for.end.err_remove_opps_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_remove_opps

if.end94:                                         ; preds = %for.end
  %call97 = tail call ptr @devfreq_add_device(ptr noundef %dev1, ptr noundef %profile, ptr noundef nonnull @.str.13, ptr noundef %gov_data) #6
  %devfreq_dram = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %call.i, i32 0, i32 6
  %42 = ptrtoint ptr %devfreq_dram to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call97, ptr %devfreq_dram, align 4
  %cmp.i202 = icmp ugt ptr %call97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202, label %if.then100, label %if.end103

if.then100:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %call97 to i32
  br label %err_remove_opps

if.end103:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %freq_table, align 4
  %suspend_freq = getelementptr inbounds %struct.devfreq, ptr %call97, i32 0, i32 16
  %46 = ptrtoint ptr %suspend_freq to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %suspend_freq, align 8
  br label %cleanup111

err_remove_opps:                                  ; preds = %if.then100, %for.end.err_remove_opps_crit_edge, %for.body.err_remove_opps_crit_edge
  %err.2 = phi ptr [ @.str.14, %if.then100 ], [ @.str.12, %for.end.err_remove_opps_crit_edge ], [ @.str.11, %for.body.err_remove_opps_crit_edge ]
  %ret.0 = phi i32 [ %43, %if.then100 ], [ %call91, %for.end.err_remove_opps_crit_edge ], [ %call85, %for.body.err_remove_opps_crit_edge ]
  tail call void @dev_pm_opp_remove_all_dynamic(ptr noundef %dev1) #6
  br label %err_unlock_mbus

err_unlock_mbus:                                  ; preds = %err_remove_opps, %if.end61.err_unlock_mbus_crit_edge
  %err.3 = phi ptr [ %err.2, %err_remove_opps ], [ @.str.10, %if.end61.err_unlock_mbus_crit_edge ]
  %ret.1 = phi i32 [ %ret.0, %err_remove_opps ], [ %call72, %if.end61.err_unlock_mbus_crit_edge ]
  %47 = ptrtoint ptr %clk_mbus to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk_mbus, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %48) #6
  br label %err_unlock_dram

err_unlock_dram:                                  ; preds = %err_unlock_mbus, %if.end56.err_unlock_dram_crit_edge
  %err.4 = phi ptr [ %err.3, %err_unlock_mbus ], [ @.str.9, %if.end56.err_unlock_dram_crit_edge ]
  %ret.2 = phi i32 [ %ret.1, %err_unlock_mbus ], [ %call58, %if.end56.err_unlock_dram_crit_edge ]
  %49 = ptrtoint ptr %clk_dram to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clk_dram, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %50) #6
  br label %err_disable_bus

err_disable_bus:                                  ; preds = %err_unlock_dram, %if.end51.err_disable_bus_crit_edge
  %err.5 = phi ptr [ %err.4, %err_unlock_dram ], [ @.str.8, %if.end51.err_disable_bus_crit_edge ]
  %ret.3 = phi i32 [ %ret.2, %err_unlock_dram ], [ %call53, %if.end51.err_disable_bus_crit_edge ]
  %51 = ptrtoint ptr %clk_bus to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk_bus, align 4
  tail call void @clk_disable(ptr noundef %52) #6
  tail call void @clk_unprepare(ptr noundef %52) #6
  %call110 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %ret.3, ptr noundef %err.5) #6
  br label %cleanup111

cleanup111:                                       ; preds = %err_disable_bus, %if.end103, %if.then49, %if.then41, %if.then33, %if.then25, %if.then18, %if.then11, %if.end.cleanup111_crit_edge, %entry.cleanup111_crit_edge
  %retval.0 = phi i32 [ %10, %if.then11 ], [ %12, %if.then18 ], [ %call28, %if.then25 ], [ %call36, %if.then33 ], [ %call44, %if.then41 ], [ %call50, %if.then49 ], [ %call110, %err_disable_bus ], [ 0, %if.end103 ], [ -22, %entry.cleanup111_crit_edge ], [ -12, %if.end.cleanup111_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_a33_mbus_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %profile = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %profile, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %devfreq_dram = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %devfreq_dram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devfreq_dram, align 4
  %call3 = tail call i32 @devfreq_remove_device(ptr noundef %5) #6
  %call4 = tail call fastcc i32 @sun8i_a33_mbus_set_dram_freq(ptr noundef %1, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.32, i32 noundef %call4) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @dev_pm_opp_remove_all_dynamic(ptr noundef %dev2) #6
  %clk_mbus = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %clk_mbus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_mbus, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %7) #6
  %clk_dram = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %clk_dram to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_dram, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %9) #6
  %clk_bus = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %clk_bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_bus, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %clk) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_rate_exclusive_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_a33_mbus_set_dram_target(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %devfreq_dram = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %devfreq_dram to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devfreq_dram, align 4
  %call1 = tail call ptr @devfreq_recommended_opp(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @dev_pm_opp_put(ptr noundef %call1) #6
  %5 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %freq, align 4
  %previous_freq = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %previous_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %previous_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @sun8i_a33_mbus_set_dram_freq(ptr noundef %1, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %do.end

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call6) #9
  %9 = ptrtoint ptr %previous_freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %previous_freq, align 4
  %11 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ %call6, %do.end ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_a33_mbus_get_dram_status(ptr noundef %dev, ptr nocapture noundef %stat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg_mbus.i = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_mbus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_mbus.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 180
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !96
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %busy_time = getelementptr inbounds %struct.devfreq_dev_status, ptr %stat, i32 0, i32 1
  %6 = ptrtoint ptr %busy_time to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %busy_time, align 4
  %nominal_bw = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %nominal_bw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nominal_bw, align 4
  %9 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %stat, align 4
  %devfreq_dram = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %devfreq_dram to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devfreq_dram, align 4
  %previous_freq = getelementptr inbounds %struct.devfreq, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %previous_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %previous_freq, align 4
  %current_frequency = getelementptr inbounds %struct.devfreq_dev_status, ptr %stat, i32 0, i32 2
  %14 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %current_frequency, align 4
  %15 = load i32, ptr @pmu_period, align 4
  %sub.i = shl i32 %15, 16
  %shl.i = add i32 %sub.i, -65536
  %or.i = or i32 %shl.i, 2
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %17 = ptrtoint ptr %reg_mbus.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_mbus.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %18, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %16) #6, !srcloc !97
  %or1.i = or i32 %shl.i, 3
  %19 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #6
  %20 = ptrtoint ptr %reg_mbus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_mbus.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %21, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %19) #6, !srcloc !97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_a33_mbus_get_dram_status.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_a33_mbus_get_dram_status, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %busy_time to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %busy_time, align 4
  %24 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stat, align 4
  %mul = mul i32 %23, 100
  %div25 = lshr i32 %25, 1
  %add = add i32 %div25, %mul
  %div10 = udiv i32 %add, %25
  %26 = ptrtoint ptr %current_frequency to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %current_frequency, align 4
  %div12 = udiv i32 %27, 1000000
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_a33_mbus_get_dram_status.__UNIQUE_ID_ddebug173, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %23, i32 noundef %25, i32 noundef %div10, i32 noundef %div12) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_clkname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun8i_a33_mbus_hw_init(ptr noundef %dev, ptr nocapture noundef %priv, i32 noundef %ddr_freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_mbus = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %reg_mbus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mbus, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !96
  %3 = lshr i32 %2, 8
  %and = and i32 %3, 7
  %switch.tableidx = add nsw i32 %and, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 6
  br i1 %4, label %switch.hole_check, label %entry.cleanup35_crit_edge

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup35

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.lobit.not = icmp eq i8 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup35_crit_edge, label %switch.lookup

switch.hole_check.cleanup35_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup35

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.sun8i_a33_mbus_hw_init, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep60 = getelementptr inbounds [6 x i32], ptr @switch.table.sun8i_a33_mbus_hw_init.34, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep60 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load61 = load i32, ptr %switch.gep60, align 4
  %tREFI_ns2 = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %priv, i32 0, i32 12
  %8 = ptrtoint ptr %tREFI_ns2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %switch.load, ptr %tREFI_ns2, align 4
  %tRFC_ns3 = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %priv, i32 0, i32 13
  %9 = ptrtoint ptr %tRFC_ns3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %switch.load61, ptr %tRFC_ns3, align 4
  %reg_dram = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %reg_dram to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_dram, align 4
  %add.ptr5 = getelementptr i8, ptr %11, i32 288
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !96
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %odtmap = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %priv, i32 0, i32 11
  %14 = ptrtoint ptr %odtmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %odtmap, align 4
  %15 = ptrtoint ptr %reg_dram to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_dram, align 4
  %add.ptr9 = getelementptr i8, ptr %16, i32 836
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !96
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %switch.lookup.for.end_crit_edge, label %for.inc

switch.lookup.for.end_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %switch.lookup
  %19 = ptrtoint ptr %reg_dram to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_dram, align 4
  %add.ptr9.1 = getelementptr i8, ptr %20, i32 964
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.1) #6, !srcloc !96
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.1 = icmp eq i32 %22, 0
  br i1 %tobool.not.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %23 = ptrtoint ptr %reg_dram to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_dram, align 4
  %add.ptr9.2 = getelementptr i8, ptr %24, i32 1092
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.2) #6, !srcloc !96
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.2 = icmp eq i32 %26, 0
  br i1 %tobool.not.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %reg_dram to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_dram, align 4
  %add.ptr9.3 = getelementptr i8, ptr %28, i32 1220
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.3) #6, !srcloc !96
  %30 = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.3 = icmp eq i32 %30, 0
  %spec.select = select i1 %tobool.not.3, i32 3, i32 4
  br label %for.end

for.end:                                          ; preds = %for.inc.2, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %switch.lookup.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %switch.lookup.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ %spec.select, %for.inc.2 ]
  %data_width = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %priv, i32 0, i32 9
  %31 = ptrtoint ptr %data_width to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %i.0.lcssa, ptr %data_width, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_a33_mbus_hw_init.__UNIQUE_ID_ddebug174, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_a33_mbus_hw_init, %if.then19)) #6
          to label %do.end [label %if.then19], !srcloc !98

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %data_width to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_width, align 4
  %mul21 = shl i32 %33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp24 = icmp ugt i32 %and, 4
  %cond = select i1 %cmp24, ptr @.str.29, ptr @.str.30
  %34 = ptrtoint ptr %odtmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %odtmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool26.not = icmp eq i32 %35, 0
  %cond27 = select i1 %tobool26.not, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_a33_mbus_hw_init.__UNIQUE_ID_ddebug174, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %mul21, ptr noundef nonnull %cond, ptr noundef nonnull %cond27) #6
  br label %do.end

do.end:                                           ; preds = %if.then19, %for.end
  %clk_mbus = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %priv, i32 0, i32 5
  %36 = ptrtoint ptr %clk_mbus to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk_mbus, align 4
  %call29 = tail call i32 @clk_get_rate(ptr noundef %37) #6
  %div = udiv i32 %call29, 1000000
  %sub = add nsw i32 %div, -1
  %38 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %39 = ptrtoint ptr %reg_mbus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_mbus, align 4
  %add.ptr31 = getelementptr i8, ptr %40, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %38) #6, !srcloc !97
  %41 = ptrtoint ptr %reg_mbus to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_mbus, align 4
  %add.ptr33 = getelementptr i8, ptr %42, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 -1) #6, !srcloc !97
  %43 = load i32, ptr @pmu_period, align 4
  %sub.i = shl i32 %43, 16
  %shl.i = add i32 %sub.i, -65536
  %or.i = or i32 %shl.i, 2
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %45 = ptrtoint ptr %reg_mbus to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_mbus, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %44) #6, !srcloc !97
  %or1.i = or i32 %shl.i, 3
  %47 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #6
  %48 = ptrtoint ptr %reg_mbus to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_mbus, align 4
  %add.ptr3.i = getelementptr i8, ptr %49, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %47) #6, !srcloc !97
  %div34 = udiv i32 %ddr_freq, 1000000
  %50 = load i32, ptr @pmu_period, align 4
  %mul.i = mul i32 %50, %div34
  %51 = ptrtoint ptr %data_width to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_width, align 4
  %mul1.i = mul i32 %mul.i, %52
  %div3.i = lshr i32 %mul1.i, 10
  %nominal_bw.i = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %priv, i32 0, i32 10
  %53 = ptrtoint ptr %nominal_bw.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div3.i, ptr %nominal_bw.i, align 4
  br label %cleanup35

cleanup35:                                        ; preds = %do.end, %switch.hole_check.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup35_crit_edge ], [ -22, %switch.hole_check.cleanup35_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_add_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_remove_all_dynamic(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_recommended_opp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun8i_a33_mbus_set_dram_freq(ptr nocapture noundef %priv, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %freq, 1000000
  %div1 = udiv i32 %freq, 2000000
  %clk_dram = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %clk_dram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_dram, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %1, i32 noundef %freq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %div2 = udiv i32 %freq, 4000000
  %reg_dram = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %reg_dram to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_dram, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !96
  %5 = and i32 %4, -16777217
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %reg_dram to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_dram, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %5) #6, !srcloc !97
  %9 = ptrtoint ptr %reg_dram to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_dram, align 4
  %add.ptr8 = getelementptr i8, ptr %10, i32 184
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !96
  %12 = and i32 %11, -196609
  %13 = ptrtoint ptr %reg_dram to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_dram, align 4
  %add.ptr13 = getelementptr i8, ptr %14, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %12) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %reg_mbus = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %priv, i32 0, i32 2
  %15 = ptrtoint ptr %reg_mbus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_mbus, align 4
  %add.ptr14 = getelementptr i8, ptr %16, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 278921216) #6, !srcloc !97
  %tREFI_ns = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %priv, i32 0, i32 12
  %17 = ptrtoint ptr %tREFI_ns to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tREFI_ns, align 4
  %mul = mul i32 %18, %div2
  %div16 = udiv i32 %mul, 32000
  %tRFC_ns = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %priv, i32 0, i32 13
  %19 = ptrtoint ptr %tRFC_ns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tRFC_ns, align 4
  %mul17 = mul i32 %20, %div2
  %sub = add i32 %mul17, 999
  %div18 = udiv i32 %sub, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %shl = shl i32 %div16, 16
  %or = or i32 %div18, %shl
  %21 = tail call i32 @llvm.bswap.i32(i32 %or)
  %22 = ptrtoint ptr %reg_dram to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_dram, align 4
  %add.ptr24 = getelementptr i8, ptr %23, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %21) #6, !srcloc !97
  %odtmap = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %priv, i32 0, i32 11
  %24 = ptrtoint ptr %odtmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %odtmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool25.not = icmp eq i32 %25, 0
  br i1 %tobool25.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %odt_freq_mhz = getelementptr inbounds %struct.sun8i_a33_mbus_variant, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %odt_freq_mhz to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %odt_freq_mhz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div1, i32 %29)
  %cmp = icmp ugt i32 %div1, %29
  br i1 %cmp, label %if.then26, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %odtmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %odtmap, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %reg_dram to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_dram, align 4
  %add.ptr32 = getelementptr i8, ptr %34, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %32) #6, !srcloc !97
  br label %if.end38

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %reg_dram to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_dram, align 4
  %add.ptr37 = getelementptr i8, ptr %36, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 0) #6, !srcloc !97
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then26
  %cmp60 = phi ptr [ @.str.24, %if.else ], [ @.str.23, %if.then26 ]
  %dxodt.0 = phi i32 [ 32, %if.else ], [ 0, %if.then26 ]
  %37 = ptrtoint ptr %reg_dram to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_dram, align 4
  %add.ptr43 = getelementptr i8, ptr %38, i32 836
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #6, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %40 = and i32 %39, -805306369
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %or52 = or i32 %41, %dxodt.0
  %42 = tail call i32 @llvm.bswap.i32(i32 %or52)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %42) #6, !srcloc !97
  %43 = ptrtoint ptr %reg_dram to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_dram, align 4
  %add.ptr43.1 = getelementptr i8, ptr %44, i32 964
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43.1) #6, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %46 = and i32 %45, -805306369
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %or52.1 = or i32 %47, %dxodt.0
  %48 = tail call i32 @llvm.bswap.i32(i32 %or52.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.1, i32 %48) #6, !srcloc !97
  %49 = ptrtoint ptr %reg_dram to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_dram, align 4
  %add.ptr43.2 = getelementptr i8, ptr %50, i32 1092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43.2) #6, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %52 = and i32 %51, -805306369
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %or52.2 = or i32 %53, %dxodt.0
  %54 = tail call i32 @llvm.bswap.i32(i32 %or52.2)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.2, i32 %54) #6, !srcloc !97
  %55 = ptrtoint ptr %reg_dram to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_dram, align 4
  %add.ptr43.3 = getelementptr i8, ptr %56, i32 1220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43.3) #6, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %58 = and i32 %57, -805306369
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %or52.3 = or i32 %59, %dxodt.0
  %60 = tail call i32 @llvm.bswap.i32(i32 %or52.3)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.3, i32 %60) #6, !srcloc !97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_a33_mbus_set_dram_freq.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_a33_mbus_set_dram_freq, %if.then59)) #6
          to label %do.body64 [label %if.then59], !srcloc !98

if.then59:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %devfreq_dram = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %priv, i32 0, i32 6
  %61 = ptrtoint ptr %devfreq_dram to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %devfreq_dram, align 4
  %parent = getelementptr inbounds %struct.devfreq, ptr %62, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_a33_mbus_set_dram_freq.__UNIQUE_ID_ddebug172, ptr noundef %64, ptr noundef nonnull @.str.22, i32 noundef %div1, i32 noundef %div16, i32 noundef %div18, ptr noundef nonnull %cmp60) #6
  br label %do.body64

do.body64:                                        ; preds = %if.then59, %if.end38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %65 = ptrtoint ptr %reg_mbus to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_mbus, align 4
  %add.ptr69 = getelementptr i8, ptr %66, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 295698432) #6, !srcloc !97
  %call70 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call70, 1000000
  %67 = ptrtoint ptr %reg_mbus to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_mbus, align 4
  %add.ptr76193 = getelementptr i8, ptr %68, i32 256
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76193) #6, !srcloc !96
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %and80194 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80194)
  %tobool81.not195 = icmp eq i32 %and80194, 0
  br i1 %tobool81.not195, label %do.body64.for.end106_crit_edge, label %do.body64.land.lhs.true85_crit_edge

do.body64.land.lhs.true85_crit_edge:              ; preds = %do.body64
  br label %land.lhs.true85

do.body64.for.end106_crit_edge:                   ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end106

land.lhs.true85:                                  ; preds = %cond.false.land.lhs.true85_crit_edge, %do.body64.land.lhs.true85_crit_edge
  %call86 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call86, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call86, %add.i
  br i1 %cmp3.i, label %if.then89, label %cond.false

if.then89:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %reg_mbus to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_mbus, align 4
  %add.ptr93 = getelementptr i8, ptr %72, i32 256
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #6, !srcloc !96
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  br label %for.end106

cond.false:                                       ; preds = %land.lhs.true85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 2147480) #6
  %76 = ptrtoint ptr %reg_mbus to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg_mbus, align 4
  %add.ptr76 = getelementptr i8, ptr %77, i32 256
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #6, !srcloc !96
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %and80 = and i32 %79, 1
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %cond.false.for.end106_crit_edge, label %cond.false.land.lhs.true85_crit_edge

cond.false.land.lhs.true85_crit_edge:             ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true85

cond.false.for.end106_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end106

for.end106:                                       ; preds = %cond.false.for.end106_crit_edge, %if.then89, %do.body64.for.end106_crit_edge
  %mdfscr.0 = phi i32 [ %74, %if.then89 ], [ %70, %do.body64.for.end106_crit_edge ], [ %79, %cond.false.for.end106_crit_edge ]
  %and108 = and i32 %mdfscr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %do.body116, label %for.end106.cleanup_crit_edge

for.end106.cleanup_crit_edge:                     ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body116:                                       ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %80 = ptrtoint ptr %reg_mbus to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg_mbus, align 4
  %add.ptr120 = getelementptr i8, ptr %81, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 0) #6, !srcloc !97
  %82 = ptrtoint ptr %reg_dram to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_dram, align 4
  %add.ptr122 = getelementptr i8, ptr %83, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 %11) #6, !srcloc !97
  %freq_table = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %priv, i32 0, i32 14
  %84 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %freq_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %freq)
  %cmp123 = icmp eq i32 %85, %freq
  %or125 = zext i1 %cmp123 to i32
  %spec.select = or i32 %6, %or125
  %86 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %87 = ptrtoint ptr %reg_dram to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg_dram, align 4
  %add.ptr128 = getelementptr i8, ptr %88, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 %86) #6, !srcloc !97
  %89 = load i32, ptr @pmu_period, align 4
  %sub.i = shl i32 %89, 16
  %shl.i = add i32 %sub.i, -65536
  %or.i = or i32 %shl.i, 2
  %90 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %91 = ptrtoint ptr %reg_mbus to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg_mbus, align 4
  %add.ptr.i = getelementptr i8, ptr %92, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %90) #6, !srcloc !97
  %or1.i = or i32 %shl.i, 3
  %93 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #6
  %94 = ptrtoint ptr %reg_mbus to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reg_mbus, align 4
  %add.ptr3.i = getelementptr i8, ptr %95, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %93) #6, !srcloc !97
  %96 = load i32, ptr @pmu_period, align 4
  %mul.i = mul i32 %96, %div
  %data_width.i = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %priv, i32 0, i32 9
  %97 = ptrtoint ptr %data_width.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %data_width.i, align 4
  %mul1.i = mul i32 %mul.i, %98
  %div3.i = lshr i32 %mul1.i, 10
  %nominal_bw.i = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %priv, i32 0, i32 10
  %99 = ptrtoint ptr %nominal_bw.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %div3.i, ptr %nominal_bw.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body116, %for.end106.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body116 ], [ %call, %entry.cleanup_crit_edge ], [ -110, %for.end106.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_remove_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_a33_mbus_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_bus = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_bus, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_a33_mbus_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_bus = getelementptr inbounds %struct.sun8i_a33_mbus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_bus, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !56, !57, !58, !60, !61, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !75, !76, !78, !79, !80, !81, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__param_pmu_period, !1, !"__param_pmu_period", i1 false, i1 false}
!1 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 102, i32 1}
!2 = !{ptr @__UNIQUE_ID_pmu_periodtype170, !1, !"__UNIQUE_ID_pmu_periodtype170", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_pmu_period171, !4, !"__UNIQUE_ID_pmu_period171", i1 false, i1 false}
!4 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 103, i32 1}
!5 = !{ptr @__initcall__kmod_sun8i_a33_mbus__175_507_sun8i_a33_mbus_driver_init6, !6, !"__initcall__kmod_sun8i_a33_mbus__175_507_sun8i_a33_mbus_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 507, i32 1}
!7 = !{ptr @__exitcall_sun8i_a33_mbus_driver_exit, !6, !"__exitcall_sun8i_a33_mbus_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author176, !9, !"__UNIQUE_ID_author176", i1 false, i1 false}
!9 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 509, i32 1}
!10 = !{ptr @__UNIQUE_ID_description177, !11, !"__UNIQUE_ID_description177", i1 false, i1 false}
!11 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 510, i32 1}
!12 = !{ptr @__UNIQUE_ID_file178, !13, !"__UNIQUE_ID_file178", i1 false, i1 false}
!13 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 511, i32 1}
!14 = !{ptr @__UNIQUE_ID_license179, !13, !"__UNIQUE_ID_license179", i1 false, i1 false}
!15 = !{ptr @__param_str_pmu_period, !1, !"__param_str_pmu_period", i1 false, i1 false}
!16 = !{ptr @pmu_period, !17, !"pmu_period", i1 false, i1 false}
!17 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 101, i32 12}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 502, i32 12}
!20 = !{ptr @sun8i_a33_mbus_driver, !21, !"sun8i_a33_mbus_driver", i1 false, i1 false}
!21 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 498, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 355, i32 63}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 359, i32 63}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 363, i32 36}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 366, i32 10}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 371, i32 10}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 376, i32 10}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 381, i32 10}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 386, i32 9}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 393, i32 9}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 409, i32 9}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 421, i32 10}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 428, i32 9}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 433, i32 7}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 437, i32 9}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 234, i32 3}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @sun8i_a33_mbus_set_dram_target._entry, !51, !"_entry", i1 false, i1 false}
!57 = !{ptr @sun8i_a33_mbus_set_dram_target._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 186, i32 2}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sun8i_a33_mbus_set_dram_freq.__UNIQUE_ID_ddebug172, !59, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!63 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 252, i32 2}
!67 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sun8i_a33_mbus_get_dram_status.__UNIQUE_ID_ddebug173, !66, !"__UNIQUE_ID_ddebug173", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 296, i32 2}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @sun8i_a33_mbus_hw_init.__UNIQUE_ID_ddebug174, !70, !"__UNIQUE_ID_ddebug174", i1 false, i1 false}
!73 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 472, i32 3}
!78 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @sun8i_a33_mbus_remove._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @sun8i_a33_mbus_remove._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @sun8i_a33_mbus_of_match, !82, !"sun8i_a33_mbus_of_match", i1 false, i1 false}
!82 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 488, i32 34}
!83 = !{ptr @sun50i_a64_mbus, !84, !"sun50i_a64_mbus", i1 false, i1 false}
!84 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 482, i32 44}
!85 = !{ptr @sun8i_a33_mbus_pm_ops, !86, !"sun8i_a33_mbus_pm_ops", i1 false, i1 false}
!86 = !{!"../drivers/devfreq/sun8i-a33-mbus.c", i32 495, i32 8}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 4858626}
!97 = !{i64 4858208}
!98 = !{i64 2148734780, i64 2148734785, i64 2148734798, i64 2148734842, i64 2148734876, i64 2148734897}
!99 = !{i64 2152558391}
!100 = !{i64 2152558976}
!101 = !{i64 2152559524}
!102 = !{i64 2152559968}
!103 = !{i64 2152561067}
!104 = !{i64 2152561962}
!105 = !{i64 2152565253}
!106 = !{i64 2152567489}
!107 = !{i64 2152567999}
!108 = !{i64 2152568818}
