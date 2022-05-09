; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/s3c64xx-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/s3c64xx-cpufreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.s3c64xx_dvfs = type { i32, i32 }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_s3c64xx_cpufreq__303_208_s3c64xx_cpufreq_init6 = internal global ptr @s3c64xx_cpufreq_init, section ".initcall6.init", align 4
@s3c64xx_cpufreq_driver = internal global { %struct.cpufreq_driver, [48 x i8] } { %struct.cpufreq_driver { [16 x i8] c"s3c\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 32, ptr null, ptr @s3c64xx_cpufreq_driver_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @s3c64xx_cpufreq_set_target, ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_generic_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"armclk\00", [25 x i8] zeroinitializer }, align 32
@s3c64xx_cpufreq_driver_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013cpufreq: Unable to obtain ARMCLK: %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s3c64xx_cpufreq_driver_init\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/cpufreq/s3c64xx-cpufreq.c\00", [62 x i8] zeroinitializer }, align 32
@s3c64xx_cpufreq_driver_init._entry_ptr = internal global ptr @s3c64xx_cpufreq_driver_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddarm\00", [25 x i8] zeroinitializer }, align 32
@vddarm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@s3c64xx_cpufreq_driver_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013cpufreq: Failed to obtain VDDARM: %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@s3c64xx_cpufreq_driver_init._entry_ptr.7 = internal global ptr @s3c64xx_cpufreq_driver_init._entry.5, section ".printk_index", align 4
@s3c64xx_cpufreq_driver_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013cpufreq: Only frequency scaling available\0A\00", [51 x i8] zeroinitializer }, align 32
@s3c64xx_cpufreq_driver_init._entry_ptr.10 = internal global ptr @s3c64xx_cpufreq_driver_init._entry.8, section ".printk_index", align 4
@s3c64xx_freq_table = internal global { [13 x %struct.cpufreq_frequency_table], [36 x i8] } { [13 x %struct.cpufreq_frequency_table] [%struct.cpufreq_frequency_table { i32 0, i32 0, i32 66000 }, %struct.cpufreq_frequency_table { i32 0, i32 0, i32 100000 }, %struct.cpufreq_frequency_table { i32 0, i32 0, i32 133000 }, %struct.cpufreq_frequency_table { i32 0, i32 1, i32 200000 }, %struct.cpufreq_frequency_table { i32 0, i32 1, i32 222000 }, %struct.cpufreq_frequency_table { i32 0, i32 1, i32 266000 }, %struct.cpufreq_frequency_table { i32 0, i32 2, i32 333000 }, %struct.cpufreq_frequency_table { i32 0, i32 2, i32 400000 }, %struct.cpufreq_frequency_table { i32 0, i32 2, i32 532000 }, %struct.cpufreq_frequency_table { i32 0, i32 2, i32 533000 }, %struct.cpufreq_frequency_table { i32 0, i32 3, i32 667000 }, %struct.cpufreq_frequency_table { i32 0, i32 4, i32 800000 }, %struct.cpufreq_frequency_table { i32 0, i32 0, i32 -2 }], [36 x i8] zeroinitializer }, align 32
@s3c64xx_cpufreq_driver_init.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.2, ptr @.str.3, ptr @.str.12, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3c64xx_cpufreq\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%dkHz unsupported by clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cpufreq: %dkHz unsupported by clock\0A\00", [59 x i8] zeroinitializer }, align 32
@regulator_latency = internal global { i1, [31 x i8] } zeroinitializer, align 32
@s3c64xx_cpufreq_config_regulator._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cpufreq: Unable to check supported voltages\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"s3c64xx_cpufreq_config_regulator\00", [63 x i8] zeroinitializer }, align 32
@s3c64xx_cpufreq_config_regulator._entry_ptr = internal global ptr @s3c64xx_cpufreq_config_regulator._entry, section ".printk_index", align 4
@s3c64xx_dvfs_table = internal constant { [5 x %struct.s3c64xx_dvfs], [56 x i8] } { [5 x %struct.s3c64xx_dvfs] [%struct.s3c64xx_dvfs { i32 1000000, i32 1150000 }, %struct.s3c64xx_dvfs { i32 1050000, i32 1150000 }, %struct.s3c64xx_dvfs { i32 1100000, i32 1150000 }, %struct.s3c64xx_dvfs { i32 1200000, i32 1350000 }, %struct.s3c64xx_dvfs { i32 1300000, i32 1350000 }], [56 x i8] zeroinitializer }, align 32
@s3c64xx_cpufreq_config_regulator.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%dkHz unsupported by regulator\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cpufreq: %dkHz unsupported by regulator\0A\00", [55 x i8] zeroinitializer }, align 32
@s3c64xx_cpufreq_set_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cpufreq: Failed to set VDDARM for %dkHz: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s3c64xx_cpufreq_set_target\00", [37 x i8] zeroinitializer }, align 32
@s3c64xx_cpufreq_set_target._entry_ptr = internal global ptr @s3c64xx_cpufreq_set_target._entry, section ".printk_index", align 4
@s3c64xx_cpufreq_set_target._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013cpufreq: Failed to set rate %dkHz: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@s3c64xx_cpufreq_set_target._entry_ptr.22 = internal global ptr @s3c64xx_cpufreq_set_target._entry.20, section ".printk_index", align 4
@s3c64xx_cpufreq_set_target._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s3c64xx_cpufreq_set_target._entry_ptr.24 = internal global ptr @s3c64xx_cpufreq_set_target._entry.23, section ".printk_index", align 4
@s3c64xx_cpufreq_set_target._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.3, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013cpufreq: Failed to restore original clock rate\0A\00", [46 x i8] zeroinitializer }, align 32
@s3c64xx_cpufreq_set_target._entry_ptr.27 = internal global ptr @s3c64xx_cpufreq_set_target._entry.25, section ".printk_index", align 4
@s3c64xx_cpufreq_set_target.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.19, ptr @.str.3, ptr @.str.28, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Set actual frequency %lukHz\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cpufreq: Set actual frequency %lukHz\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@___asan_gen_.30 = private unnamed_addr constant [23 x i8] c"s3c64xx_cpufreq_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 195, i32 30 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 150, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 152, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 158, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"vddarm\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 19, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 160, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 161, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c"s3c64xx_freq_table\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 35, i32 39 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 175, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"regulator_latency\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 113, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"s3c64xx_dvfs_table\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 27, i32 28 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 130, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 68, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 77, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 88, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 91, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [37 x i8] c"../drivers/cpufreq/s3c64xx-cpufreq.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 98, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__initcall__kmod_s3c64xx_cpufreq__303_208_s3c64xx_cpufreq_init6, ptr @s3c64xx_cpufreq_config_regulator._entry, ptr @s3c64xx_cpufreq_config_regulator._entry_ptr, ptr @s3c64xx_cpufreq_driver_init._entry, ptr @s3c64xx_cpufreq_driver_init._entry.5, ptr @s3c64xx_cpufreq_driver_init._entry.8, ptr @s3c64xx_cpufreq_driver_init._entry_ptr, ptr @s3c64xx_cpufreq_driver_init._entry_ptr.10, ptr @s3c64xx_cpufreq_driver_init._entry_ptr.7, ptr @s3c64xx_cpufreq_set_target._entry, ptr @s3c64xx_cpufreq_set_target._entry.20, ptr @s3c64xx_cpufreq_set_target._entry.23, ptr @s3c64xx_cpufreq_set_target._entry.25, ptr @s3c64xx_cpufreq_set_target._entry_ptr, ptr @s3c64xx_cpufreq_set_target._entry_ptr.22, ptr @s3c64xx_cpufreq_set_target._entry_ptr.24, ptr @s3c64xx_cpufreq_set_target._entry_ptr.27, ptr @s3c64xx_cpufreq_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vddarm, ptr @.str.6, ptr @.str.9, ptr @s3c64xx_freq_table, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @regulator_latency, ptr @.str.14, ptr @.str.15, ptr @s3c64xx_dvfs_table, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.26, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_cpufreq_driver to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_cpufreq_driver_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddarm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_cpufreq_driver_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_cpufreq_driver_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_freq_table to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_latency to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_cpufreq_config_regulator._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_dvfs_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_cpufreq_set_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_cpufreq_set_target._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_cpufreq_set_target._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_cpufreq_set_target._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_cpufreq_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpufreq_register_driver(ptr noundef nonnull @s3c64xx_cpufreq_driver) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_cpufreq_driver_init(ptr noundef %policy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str) #4
  %clk = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 5
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %3) #7
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @regulator_get(ptr noundef null, ptr noundef nonnull @.str.4) #4
  store ptr %call10, ptr @vddarm, align 4
  %cmp.i68 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %do.end15, label %if.else

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %call10 to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %7) #7
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #7
  store ptr null, ptr @vddarm, align 4
  br label %if.end24

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @s3c64xx_cpufreq_config_regulator()
  br label %if.end24

if.end24:                                         ; preds = %if.else, %do.end15
  %8 = load i32, ptr getelementptr inbounds ([13 x %struct.cpufreq_frequency_table], ptr @s3c64xx_freq_table, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %8)
  %cmp25.not70 = icmp eq i32 %8, -2
  br i1 %cmp25.not70, label %if.end24.for.end_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  br label %for.body

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %if.end52.for.body_crit_edge, %if.end24.for.body_crit_edge
  %9 = phi i32 [ %24, %if.end52.for.body_crit_edge ], [ %8, %if.end24.for.body_crit_edge ]
  %frequency72 = phi ptr [ %frequency, %if.end52.for.body_crit_edge ], [ getelementptr inbounds ([13 x %struct.cpufreq_frequency_table], ptr @s3c64xx_freq_table, i32 0, i32 0, i32 2), %if.end24.for.body_crit_edge ]
  %freq.071 = phi ptr [ %incdec.ptr, %if.end52.for.body_crit_edge ], [ @s3c64xx_freq_table, %if.end24.for.body_crit_edge ]
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %mul = mul i32 %9, 1000
  %call28 = tail call i32 @clk_round_rate(ptr noundef %11, i32 noundef %mul) #4
  %div = udiv i32 %call28, 1000
  %12 = ptrtoint ptr %frequency72 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frequency72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %13)
  %cmp30.not = icmp eq i32 %div, %13
  br i1 %cmp30.not, label %for.body.if.end43_crit_edge, label %do.body32

for.body.if.end43_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

do.body32:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c64xx_cpufreq_driver_init.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c64xx_cpufreq_driver_init, %if.then37)) #4
          to label %do.end41 [label %if.then37], !srcloc !73

if.then37:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %frequency72 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frequency72, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c64xx_cpufreq_driver_init.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.13, i32 noundef %15) #4
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body32
  %16 = ptrtoint ptr %frequency72 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %frequency72, align 4
  br label %if.end43

if.end43:                                         ; preds = %do.end41, %for.body.if.end43_crit_edge
  %17 = load ptr, ptr @vddarm, align 4
  %tobool44.not = icmp eq ptr %17, null
  br i1 %tobool44.not, label %land.lhs.true, label %if.end43.if.end52_crit_edge

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

land.lhs.true:                                    ; preds = %if.end43
  %18 = ptrtoint ptr %frequency72 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frequency72, align 4
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  %call47 = tail call i32 @clk_get_rate(ptr noundef %21) #4
  %div48 = udiv i32 %call47, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %div48)
  %cmp49 = icmp ugt i32 %19, %div48
  br i1 %cmp49, label %if.then50, label %land.lhs.true.if.end52_crit_edge

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

if.then50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %frequency72 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %frequency72, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %land.lhs.true.if.end52_crit_edge, %if.end43.if.end52_crit_edge
  %incdec.ptr = getelementptr %struct.cpufreq_frequency_table, ptr %freq.071, i32 1
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %freq.071, i32 1, i32 2
  %23 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %frequency, align 4
  %cmp25.not = icmp eq i32 %24, -2
  br i1 %cmp25.not, label %if.end52.for.end_crit_edge, label %if.end52.for.body_crit_edge

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end52.for.end_crit_edge, %if.end24.for.end_crit_edge
  %.b = load i1, ptr @regulator_latency, align 4
  %add = select i1 %.b, i32 1500000, i32 500000
  tail call void @cpufreq_generic_init(ptr noundef %policy, ptr noundef nonnull @s3c64xx_freq_table, i32 noundef %add) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_cpufreq_set_target(ptr nocapture noundef readonly %policy, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #4
  %div = udiv i32 %call, 1000
  %frequency = getelementptr [13 x %struct.cpufreq_frequency_table], ptr @s3c64xx_freq_table, i32 0, i32 %index, i32 2
  %2 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency, align 4
  %driver_data = getelementptr [13 x %struct.cpufreq_frequency_table], ptr @s3c64xx_freq_table, i32 0, i32 %index, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %arrayidx2 = getelementptr [5 x %struct.s3c64xx_dvfs], ptr @s3c64xx_dvfs_table, i32 0, i32 %5
  %6 = load ptr, ptr @vddarm, align 4
  %tobool.not = icmp ne ptr %6, null
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div)
  %cmp = icmp ugt i32 %3, %div
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  %vddarm_max = getelementptr [5 x %struct.s3c64xx_dvfs], ptr @s3c64xx_dvfs_table, i32 0, i32 %5, i32 1
  %9 = ptrtoint ptr %vddarm_max to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vddarm_max, align 4
  %call3 = tail call i32 @regulator_set_voltage(ptr noundef nonnull %6, i32 noundef %8, i32 noundef %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.then.if.end7_crit_edge, label %do.end

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %3, i32 noundef %call3) #7
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %mul = mul i32 %3, 1000
  %call9 = tail call i32 @clk_set_rate(ptr noundef %12, i32 noundef %mul) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %3, i32 noundef %call9) #7
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %13 = load ptr, ptr @vddarm, align 4
  %tobool18.not = icmp ne ptr %13, null
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div)
  %cmp20 = icmp ult i32 %3, %div
  %or.cond85 = select i1 %tobool18.not, i1 %cmp20, i1 false
  br i1 %or.cond85, label %if.then21, label %if.end17.do.body45_crit_edge

if.end17.do.body45_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body45

if.then21:                                        ; preds = %if.end17
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2, align 4
  %vddarm_max23 = getelementptr [5 x %struct.s3c64xx_dvfs], ptr @s3c64xx_dvfs_table, i32 0, i32 %5, i32 1
  %16 = ptrtoint ptr %vddarm_max23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vddarm_max23, align 4
  %call24 = tail call i32 @regulator_set_voltage(ptr noundef nonnull %13, i32 noundef %15, i32 noundef %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.then21.do.body45_crit_edge, label %do.end29

if.then21.do.body45_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body45

do.end29:                                         ; preds = %if.then21
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %3, i32 noundef %call24) #7
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  %mul33 = mul nuw i32 %div, 1000
  %call34 = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef %mul33) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end39, label %do.end29.cleanup_crit_edge

do.end29.cleanup_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end39:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #6
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #7
  br label %cleanup

do.body45:                                        ; preds = %if.then21.do.body45_crit_edge, %if.end17.do.body45_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c64xx_cpufreq_set_target.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c64xx_cpufreq_set_target, %if.then51)) #4
          to label %cleanup [label %if.then51], !srcloc !73

if.then51:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  %call53 = tail call i32 @clk_get_rate(ptr noundef %21) #4
  %div54 = udiv i32 %call53, 1000
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c64xx_cpufreq_set_target.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.29, i32 noundef %div54) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %do.body45, %do.end39, %do.end29.cleanup_crit_edge, %do.end14, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call9, %do.end14 ], [ %call24, %do.end39 ], [ %call24, %do.end29.cleanup_crit_edge ], [ 0, %if.then51 ], [ 0, %do.body45 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_get(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c64xx_cpufreq_config_regulator() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vddarm, align 4
  %call = tail call i32 @regulator_count_voltages(ptr noundef %0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #7
  br label %for.cond.preheader

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end.for.cond.preheader_crit_edge

if.end.for.cond.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.preheader

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

for.cond.preheader:                               ; preds = %if.end.for.cond.preheader_crit_edge, %if.end.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp946 = icmp sgt i32 %call, 0
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %for.cond.preheader
  %freq.0 = phi ptr [ %incdec.ptr, %for.inc32 ], [ @s3c64xx_freq_table, %for.cond.preheader ]
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %freq.0, i32 0, i32 2
  %1 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %frequency, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.else [
    i32 -2, label %for.cond.out_crit_edge
    i32 -1, label %for.cond.for.inc32_crit_edge
  ]

for.cond.for.inc32_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc32

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.else:                                          ; preds = %for.cond
  %driver_data = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %freq.0, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [5 x %struct.s3c64xx_dvfs], ptr @s3c64xx_dvfs_table, i32 0, i32 %5
  br i1 %cmp946, label %for.body10.lr.ph, label %if.else.do.body18_crit_edge

if.else.do.body18_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body18

for.body10.lr.ph:                                 ; preds = %if.else
  %vddarm_max = getelementptr [5 x %struct.s3c64xx_dvfs], ptr @s3c64xx_dvfs_table, i32 0, i32 %5, i32 1
  br label %for.body10

for.body10:                                       ; preds = %for.inc.for.body10_crit_edge, %for.body10.lr.ph
  %i.048 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc, %for.inc.for.body10_crit_edge ]
  %found.047 = phi i32 [ 0, %for.body10.lr.ph ], [ %found.1, %for.inc.for.body10_crit_edge ]
  %6 = load ptr, ptr @vddarm, align 4
  %call11 = tail call i32 @regulator_list_voltage(ptr noundef %6, i32 noundef %i.048) #4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %8)
  %cmp12.not = icmp ult i32 %call11, %8
  br i1 %cmp12.not, label %for.body10.for.inc_crit_edge, label %land.lhs.true

for.body10.for.inc_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %vddarm_max to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vddarm_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %10)
  %cmp13.not = icmp ugt i32 %call11, %10
  %spec.select = select i1 %cmp13.not, i32 %found.047, i32 1
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body10.for.inc_crit_edge
  %found.1 = phi i32 [ %found.047, %for.body10.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body10_crit_edge

for.inc.for.body10_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body10

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1)
  %tobool16.not = icmp eq i32 %found.1, 0
  br i1 %tobool16.not, label %for.end.do.body18_crit_edge, label %for.end.for.inc32_crit_edge

for.end.for.inc32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc32

for.end.do.body18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body18

do.body18:                                        ; preds = %for.end.do.body18_crit_edge, %if.else.do.body18_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c64xx_cpufreq_config_regulator.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c64xx_cpufreq_config_regulator, %if.then24)) #4
          to label %do.end28 [label %if.then24], !srcloc !73

if.then24:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frequency, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c64xx_cpufreq_config_regulator.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.17, i32 noundef %12) #4
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.body18
  %13 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %frequency, align 4
  br label %for.inc32

for.inc32:                                        ; preds = %do.end28, %for.end.for.inc32_crit_edge, %for.cond.for.inc32_crit_edge
  %incdec.ptr = getelementptr %struct.cpufreq_frequency_table, ptr %freq.0, i32 1
  br label %for.cond

out:                                              ; preds = %for.cond.out_crit_edge, %if.end.out_crit_edge
  store i1 true, ptr @regulator_latency, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_generic_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_count_voltages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_s3c64xx_cpufreq__303_208_s3c64xx_cpufreq_init6, !1, !"__initcall__kmod_s3c64xx_cpufreq__303_208_s3c64xx_cpufreq_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 208, i32 1}
!2 = !{ptr @s3c64xx_cpufreq_driver, !3, !"s3c64xx_cpufreq_driver", i1 false, i1 false}
!3 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 195, i32 30}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 150, i32 30}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 152, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @s3c64xx_cpufreq_driver_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @s3c64xx_cpufreq_driver_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 158, i32 31}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 160, i32 3}
!16 = !{ptr @s3c64xx_cpufreq_driver_init._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @s3c64xx_cpufreq_driver_init._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 161, i32 3}
!20 = !{ptr @s3c64xx_cpufreq_driver_init._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @s3c64xx_cpufreq_driver_init._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 175, i32 4}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @s3c64xx_cpufreq_driver_init.__UNIQUE_ID_ddebug302, !23, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!26 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @vddarm, !28, !"vddarm", i1 false, i1 false}
!28 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 19, i32 26}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 113, i32 3}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @s3c64xx_cpufreq_config_regulator._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @s3c64xx_cpufreq_config_regulator._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 130, i32 4}
!36 = !{ptr @s3c64xx_cpufreq_config_regulator.__UNIQUE_ID_ddebug301, !35, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!37 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @s3c64xx_dvfs_table, !39, !"s3c64xx_dvfs_table", i1 false, i1 false}
!39 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 27, i32 28}
!40 = !{ptr @s3c64xx_freq_table, !41, !"s3c64xx_freq_table", i1 false, i1 false}
!41 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 35, i32 39}
!42 = distinct !{null, !43, !"regulator_latency", i1 false, i1 false}
!43 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 20, i32 22}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 68, i32 4}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @s3c64xx_cpufreq_set_target._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @s3c64xx_cpufreq_set_target._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 77, i32 3}
!51 = !{ptr @s3c64xx_cpufreq_set_target._entry.20, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @s3c64xx_cpufreq_set_target._entry_ptr.22, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @s3c64xx_cpufreq_set_target._entry.23, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 88, i32 4}
!55 = !{ptr @s3c64xx_cpufreq_set_target._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 91, i32 5}
!58 = !{ptr @s3c64xx_cpufreq_set_target._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @s3c64xx_cpufreq_set_target._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/cpufreq/s3c64xx-cpufreq.c", i32 98, i32 2}
!62 = !{ptr @s3c64xx_cpufreq_set_target.__UNIQUE_ID_ddebug300, !61, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!63 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2148694666, i64 2148694671, i64 2148694684, i64 2148694728, i64 2148694762, i64 2148694783}
