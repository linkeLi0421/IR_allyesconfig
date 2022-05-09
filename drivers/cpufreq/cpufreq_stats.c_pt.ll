; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/cpufreq_stats.c_pt.bc'
source_filename = "../drivers/cpufreq/cpufreq_stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.freq_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.cpufreq_stats = type { i32, i64, i32, i32, i32, ptr, ptr, ptr, i32, i64 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }

@cpufreq_stats_free_table.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpufreq_stats\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cpufreq_stats_free_table\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/cpufreq/cpufreq_stats.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Free stats table\0A\00", [42 x i8] zeroinitializer }, align 32
@stats_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.4, ptr null, ptr null, ptr @default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@default_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @total_trans, ptr @time_in_state, ptr @reset, ptr @trans_table, ptr null], [44 x i8] zeroinitializer }, align 32
@total_trans = internal global { %struct.freq_attr, [36 x i8] } { %struct.freq_attr { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_total_trans, ptr null }, [36 x i8] zeroinitializer }, align 32
@time_in_state = internal global { %struct.freq_attr, [36 x i8] } { %struct.freq_attr { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_time_in_state, ptr null }, [36 x i8] zeroinitializer }, align 32
@reset = internal global { %struct.freq_attr, [36 x i8] } { %struct.freq_attr { %struct.attribute { ptr @.str.10, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @store_reset }, [36 x i8] zeroinitializer }, align 32
@trans_table = internal global { %struct.freq_attr, [36 x i8] } { %struct.freq_attr { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_trans_table, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"total_trans\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"time_in_state\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u %llu\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"trans_table\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"   From  :    To\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"         : \00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%9u \00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%9u: \00", [26 x i8] zeroinitializer }, align 32
@show_trans_table.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@show_trans_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014cpufreq transition table exceeds PAGE_SIZE. Disabling\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"show_trans_table\00", [47 x i8] zeroinitializer }, align 32
@show_trans_table._entry_ptr = internal global ptr @show_trans_table._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 204, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"stats_attr_group\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 182, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 184, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"default_attrs\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 175, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"total_trans\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"time_in_state\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [12 x i8] c"trans_table\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 67, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 63, i32 23 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 65, i32 23 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 100, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 95, i32 29 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 122, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 173, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 131, i32 47 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 132, i32 47 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 136, i32 48 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 142, i32 47 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 148, i32 48 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [35 x i8] c"../drivers/cpufreq/cpufreq_stats.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 168, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @show_trans_table._entry, ptr @show_trans_table._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @stats_attr_group, ptr @.str.4, ptr @default_attrs, ptr @total_trans, ptr @time_in_state, ptr @reset, ptr @trans_table, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @total_trans to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_in_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_table to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_trans_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpufreq_stats_free_table(ptr noundef %policy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 38
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpufreq_stats_free_table.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpufreq_stats_free_table, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !55

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cpufreq_stats_free_table.__UNIQUE_ID_ddebug203, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %kobj = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 23
  tail call void @sysfs_remove_group(ptr noundef %kobj, ptr noundef nonnull @stats_attr_group) #7
  %time_in_state = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %time_in_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %time_in_state, align 4
  tail call void @kfree(ptr noundef %3) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  %4 = ptrtoint ptr %stats1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %stats1, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpufreq_stats_create_table(ptr noundef %policy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %freq_table.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %0 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %freq_table.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %entry.for.cond.i_crit_edge, !prof !56

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i:                                       ; preds = %for.inc.i, %entry.for.cond.i_crit_edge
  %pos.0.i = phi ptr [ %incdec.ptr.i, %for.inc.i ], [ %1, %entry.for.cond.i_crit_edge ]
  %count.0.i = phi i32 [ %count.1.i, %for.inc.i ], [ 0, %entry.for.cond.i_crit_edge ]
  %frequency.i = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %pos.0.i, i32 0, i32 2
  %2 = ptrtoint ptr %frequency.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.else.i [
    i32 -2, label %cpufreq_table_count_valid_entries.exit
    i32 -1, label %for.cond.i.for.inc.i_crit_edge
  ]

for.cond.i.for.inc.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.else.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i = add i32 %count.0.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %for.cond.i.for.inc.i_crit_edge
  %count.1.i = phi i32 [ %inc.i, %if.else.i ], [ %count.0.i, %for.cond.i.for.inc.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.cpufreq_frequency_table, ptr %pos.0.i, i32 1
  br label %for.cond.i

cpufreq_table_count_valid_entries.exit:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i)
  %tobool.not = icmp eq i32 %count.0.i, 0
  br i1 %tobool.not, label %cpufreq_table_count_valid_entries.exit.cleanup_crit_edge, label %if.end

cpufreq_table_count_valid_entries.exit.cleanup_crit_edge: ; preds = %cpufreq_table_count_valid_entries.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cpufreq_table_count_valid_entries.exit
  %stats1 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 38
  %5 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stats1, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 56) #10
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8.i.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end4
  %mul11 = shl i32 %count.0.i, 2
  %reass.add = add i32 %mul11, 12
  %reass.mul = mul i32 %reass.add, %count.0.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %reass.mul, i32 noundef 3520) #11
  %time_in_state = getelementptr inbounds %struct.cpufreq_stats, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %time_in_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i, ptr %time_in_state, align 4
  %tobool15.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool15.not, label %if.end8.i.i.free_stat_crit_edge, label %if.end17

if.end8.i.i.free_stat_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_stat

if.end17:                                         ; preds = %if.end8.i.i
  %add.ptr = getelementptr i64, ptr %call9.i.i, i32 %count.0.i
  %freq_table = getelementptr inbounds %struct.cpufreq_stats, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %freq_table to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %freq_table, align 8
  %add.ptr20 = getelementptr i32, ptr %add.ptr, i32 %count.0.i
  %trans_table = getelementptr inbounds %struct.cpufreq_stats, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %trans_table to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr20, ptr %trans_table, align 4
  %max_state = getelementptr inbounds %struct.cpufreq_stats, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %max_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %count.0.i, ptr %max_state, align 8
  %12 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %freq_table.i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %i.0 = phi i32 [ 0, %if.end17 ], [ %i.1, %for.inc ]
  %pos.0 = phi ptr [ %13, %if.end17 ], [ %incdec.ptr, %for.inc ]
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %pos.0, i32 0, i32 2
  %14 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frequency, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %15, label %if.else [
    i32 -2, label %for.end
    i32 -1, label %for.cond.for.inc_crit_edge
  ]

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.else:                                          ; preds = %for.cond
  %17 = ptrtoint ptr %max_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp6.not.i = icmp eq i32 %18, 0
  br i1 %cmp6.not.i, label %if.else.if.then28_crit_edge, label %for.body.lr.ph.i

if.else.if.then28_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

for.body.lr.ph.i:                                 ; preds = %if.else
  %19 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %freq_table, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i84.for.body.i_crit_edge, %for.body.lr.ph.i
  %index.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i83, %for.inc.i84.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %20, i32 %index.07.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %15)
  %cmp1.i = icmp eq i32 %22, %15
  br i1 %cmp1.i, label %freq_table_get_index.exit, label %for.inc.i84

for.inc.i84:                                      ; preds = %for.body.i
  %inc.i83 = add nuw i32 %index.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i83, %18
  br i1 %exitcond.not.i, label %for.inc.i84.if.then28_crit_edge, label %for.inc.i84.for.body.i_crit_edge

for.inc.i84.for.body.i_crit_edge:                 ; preds = %for.inc.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i84.if.then28_crit_edge:                  ; preds = %for.inc.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

freq_table_get_index.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %index.07.i)
  %cmp27 = icmp eq i32 %index.07.i, -1
  br i1 %cmp27, label %freq_table_get_index.exit.if.then28_crit_edge, label %freq_table_get_index.exit.for.inc_crit_edge

freq_table_get_index.exit.for.inc_crit_edge:      ; preds = %freq_table_get_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

freq_table_get_index.exit.if.then28_crit_edge:    ; preds = %freq_table_get_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

if.then28:                                        ; preds = %freq_table_get_index.exit.if.then28_crit_edge, %for.inc.i84.if.then28_crit_edge, %if.else.if.then28_crit_edge
  %23 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %freq_table, align 8
  %inc = add i32 %i.0, 1
  %arrayidx = getelementptr i32, ptr %24, i32 %i.0
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %15, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %freq_table_get_index.exit.for.inc_crit_edge, %for.cond.for.inc_crit_edge
  %i.1 = phi i32 [ %inc, %if.then28 ], [ %i.0, %freq_table_get_index.exit.for.inc_crit_edge ], [ %i.0, %for.cond.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.cpufreq_frequency_table, ptr %pos.0, i32 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %state_num = getelementptr inbounds %struct.cpufreq_stats, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %state_num to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %i.0, ptr %state_num, align 4
  %call.i = tail call i64 @sched_clock() #7
  %last_time = getelementptr inbounds %struct.cpufreq_stats, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %last_time to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call.i, ptr %last_time, align 8
  %cur = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 9
  %28 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cur, align 4
  %30 = ptrtoint ptr %max_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp6.not.i87 = icmp eq i32 %31, 0
  br i1 %cmp6.not.i87, label %for.end.freq_table_get_index.exit98_crit_edge, label %for.body.lr.ph.i89

for.end.freq_table_get_index.exit98_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %freq_table_get_index.exit98

for.body.lr.ph.i89:                               ; preds = %for.end
  %32 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %freq_table, align 8
  br label %for.body.i93

for.body.i93:                                     ; preds = %for.inc.i96.for.body.i93_crit_edge, %for.body.lr.ph.i89
  %index.07.i90 = phi i32 [ 0, %for.body.lr.ph.i89 ], [ %inc.i94, %for.inc.i96.for.body.i93_crit_edge ]
  %arrayidx.i91 = getelementptr i32, ptr %33, i32 %index.07.i90
  %34 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i91, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %29)
  %cmp1.i92 = icmp eq i32 %35, %29
  br i1 %cmp1.i92, label %for.body.i93.freq_table_get_index.exit98_crit_edge, label %for.inc.i96

for.body.i93.freq_table_get_index.exit98_crit_edge: ; preds = %for.body.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %freq_table_get_index.exit98

for.inc.i96:                                      ; preds = %for.body.i93
  %inc.i94 = add nuw i32 %index.07.i90, 1
  %exitcond.not.i95 = icmp eq i32 %inc.i94, %31
  br i1 %exitcond.not.i95, label %for.inc.i96.freq_table_get_index.exit98_crit_edge, label %for.inc.i96.for.body.i93_crit_edge

for.inc.i96.for.body.i93_crit_edge:               ; preds = %for.inc.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i93

for.inc.i96.freq_table_get_index.exit98_crit_edge: ; preds = %for.inc.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %freq_table_get_index.exit98

freq_table_get_index.exit98:                      ; preds = %for.inc.i96.freq_table_get_index.exit98_crit_edge, %for.body.i93.freq_table_get_index.exit98_crit_edge, %for.end.freq_table_get_index.exit98_crit_edge
  %retval.0.i97 = phi i32 [ -1, %for.end.freq_table_get_index.exit98_crit_edge ], [ %index.07.i90, %for.body.i93.freq_table_get_index.exit98_crit_edge ], [ -1, %for.inc.i96.freq_table_get_index.exit98_crit_edge ]
  %last_index = getelementptr inbounds %struct.cpufreq_stats, ptr %call7.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %last_index to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i97, ptr %last_index, align 8
  %37 = ptrtoint ptr %stats1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %stats1, align 4
  %kobj = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 23
  %call36 = tail call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef nonnull @stats_attr_group) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %freq_table_get_index.exit98.cleanup_crit_edge, label %if.end39

freq_table_get_index.exit98.cleanup_crit_edge:    ; preds = %freq_table_get_index.exit98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %freq_table_get_index.exit98
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %stats1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %stats1, align 4
  %39 = ptrtoint ptr %time_in_state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %time_in_state, align 4
  tail call void @kfree(ptr noundef %40) #7
  br label %free_stat

free_stat:                                        ; preds = %if.end39, %if.end8.i.i.free_stat_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free_stat, %freq_table_get_index.exit98.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cpufreq_table_count_valid_entries.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpufreq_stats_record_transition(ptr nocapture noundef readonly %policy, i32 noundef %new_freq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 38
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end, !prof !56

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  %reset_pending = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %reset_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %do.end.if.end13_crit_edge, label %if.then12, !prof !57

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cpufreq_stats_reset_table(ptr noundef nonnull %1)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.end.if.end13_crit_edge
  %last_index = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %last_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_index, align 8
  %max_state.i = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %max_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.not.i = icmp eq i32 %7, 0
  br i1 %cmp6.not.i, label %if.end13.cleanup_crit_edge, label %for.body.lr.ph.i

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end13
  %freq_table.i = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %freq_table.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %index.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %9, i32 %index.07.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %new_freq)
  %cmp1.i = icmp eq i32 %11, %new_freq
  br i1 %cmp1.i, label %freq_table_get_index.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %index.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

freq_table_get_index.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %index.07.i)
  %cmp14 = icmp eq i32 %index.07.i, -1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp14
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %index.07.i)
  %cmp15 = icmp eq i32 %5, %index.07.i
  %or.cond43 = select i1 %or.cond, i1 true, i1 %cmp15
  br i1 %or.cond43, label %freq_table_get_index.exit.cleanup_crit_edge, label %if.end23, !prof !58

freq_table_get_index.exit.cleanup_crit_edge:      ; preds = %freq_table_get_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %freq_table_get_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  %last_time = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %last_time to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %last_time, align 8
  %call.i.i = tail call i64 @sched_clock() #7
  %sub.i = sub i64 %call.i.i, %13
  %time_in_state.i = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %time_in_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %time_in_state.i, align 4
  %16 = ptrtoint ptr %last_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_index, align 8
  %arrayidx.i44 = getelementptr i64, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i44, align 8
  %add.i = add i64 %sub.i, %19
  store i64 %add.i, ptr %arrayidx.i44, align 8
  %20 = ptrtoint ptr %last_time to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call.i.i, ptr %last_time, align 8
  store i32 %index.07.i, ptr %last_index, align 8
  %trans_table = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %trans_table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trans_table, align 4
  %23 = ptrtoint ptr %max_state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_state.i, align 8
  %mul = mul i32 %24, %5
  %add = add i32 %mul, %index.07.i
  %arrayidx = getelementptr i32, ptr %22, i32 %add
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 8
  %inc25 = add i32 %28, 1
  store i32 %inc25, ptr %1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %freq_table_get_index.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpufreq_stats_reset_table(ptr noundef %stats) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_state = getelementptr inbounds %struct.cpufreq_stats, ptr %stats, i32 0, i32 2
  %0 = ptrtoint ptr %max_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_state, align 8
  %time_in_state = getelementptr inbounds %struct.cpufreq_stats, ptr %stats, i32 0, i32 5
  %2 = ptrtoint ptr %time_in_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %time_in_state, align 4
  %mul = shl i32 %1, 3
  %4 = call ptr @memset(ptr %3, i32 0, i32 %mul)
  %trans_table = getelementptr inbounds %struct.cpufreq_stats, ptr %stats, i32 0, i32 7
  %5 = ptrtoint ptr %trans_table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans_table, align 4
  %mul1 = shl i32 %1, 2
  %mul2 = mul i32 %mul1, %1
  %7 = call ptr @memset(ptr %6, i32 0, i32 %mul2)
  %call.i = tail call i64 @sched_clock() #7
  %last_time = getelementptr inbounds %struct.cpufreq_stats, ptr %stats, i32 0, i32 1
  %8 = ptrtoint ptr %last_time to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call.i, ptr %last_time, align 8
  %9 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %stats, align 8
  %reset_pending = getelementptr inbounds %struct.cpufreq_stats, ptr %stats, i32 0, i32 8
  %10 = ptrtoint ptr %reset_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %reset_pending, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !59
  %reset_time = getelementptr inbounds %struct.cpufreq_stats, ptr %stats, i32 0, i32 9
  %11 = ptrtoint ptr %reset_time to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load volatile i64, ptr %reset_time, align 8
  %call.i.i = tail call i64 @sched_clock() #7
  %sub.i = sub i64 %call.i.i, %12
  %13 = ptrtoint ptr %time_in_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %time_in_state, align 4
  %last_index.i = getelementptr inbounds %struct.cpufreq_stats, ptr %stats, i32 0, i32 4
  %15 = ptrtoint ptr %last_index.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_index.i, align 8
  %arrayidx.i = getelementptr i64, ptr %14, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.i, align 8
  %add.i = add i64 %sub.i, %18
  store i64 %add.i, ptr %arrayidx.i, align 8
  %19 = ptrtoint ptr %last_time to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call.i.i, ptr %last_time, align 8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_total_trans(ptr nocapture noundef readonly %policy, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 38
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 4
  %reset_pending = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %reset_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.6, i32 noundef 0)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.7, i32 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_time_in_state(ptr nocapture noundef readonly %policy, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 38
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 4
  %reset_pending = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %reset_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %state_num = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %state_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp43.not = icmp eq i32 %5, 0
  br i1 %cmp43.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %last_index = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 4
  %reset_time = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 9
  %time_in_state = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 5
  %last_time = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 1
  %freq_table = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end22.for.body_crit_edge ]
  %len.044 = phi i32 [ 0, %for.body.lr.ph ], [ %add26, %if.end22.for.body_crit_edge ]
  br i1 %tobool.not, label %if.else15, label %if.then

if.then:                                          ; preds = %for.body
  %6 = ptrtoint ptr %last_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.045, i32 %7)
  %cmp3 = icmp eq i32 %i.045, %7
  br i1 %cmp3, label %do.end8, label %if.then.if.end22_crit_edge

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end8:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  %call.i = tail call i64 @sched_clock() #7
  %8 = ptrtoint ptr %reset_time to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load volatile i64, ptr %reset_time, align 8
  %sub = sub i64 %call.i, %9
  br label %if.end22

if.else15:                                        ; preds = %for.body
  %10 = ptrtoint ptr %time_in_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %time_in_state, align 4
  %arrayidx = getelementptr i64, ptr %11, i32 %i.045
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx, align 8
  %14 = ptrtoint ptr %last_index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.045, i32 %15)
  %cmp17 = icmp eq i32 %i.045, %15
  br i1 %cmp17, label %if.then18, label %if.else15.if.end22_crit_edge

if.else15.if.end22_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  %call.i42 = tail call i64 @sched_clock() #7
  %16 = ptrtoint ptr %last_time to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %last_time, align 8
  %sub20 = add i64 %call.i42, %13
  %add = sub i64 %sub20, %17
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.else15.if.end22_crit_edge, %do.end8, %if.then.if.end22_crit_edge
  %time.0 = phi i64 [ %sub, %do.end8 ], [ %add, %if.then18 ], [ %13, %if.else15.if.end22_crit_edge ], [ 0, %if.then.if.end22_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.044
  %18 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %freq_table, align 8
  %arrayidx23 = getelementptr i32, ptr %19, i32 %i.045
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx23, align 4
  %call24 = tail call i64 @nsec_to_clock_t(i64 noundef %time.0) #7
  %call25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.9, i32 noundef %21, i64 noundef %call24)
  %add26 = add i32 %call25, %len.044
  %inc = add nuw i32 %i.045, 1
  %22 = ptrtoint ptr %state_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state_num, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %if.end22.for.body_crit_edge, label %if.end22.for.end_crit_edge

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end22.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add26, %if.end22.for.end_crit_edge ]
  ret i32 %len.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nsec_to_clock_t(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_reset(ptr nocapture noundef readonly %policy, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 38
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 4
  %call.i = tail call i64 @sched_clock() #7
  %reset_time = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %reset_time to i32
  call void @__asan_store8_noabort(i32 %2)
  store volatile i64 %call.i, ptr %reset_time, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  %reset_pending = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %reset_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %reset_pending, align 8
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_trans_table(ptr nocapture noundef readonly %policy, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 38
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 4
  %reset_pending = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %reset_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.12) #7
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call
  %sub3 = sub i32 4096, %call
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.13) #7
  %add5 = add i32 %call4, %call
  %state_num = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %state_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp142 = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add5)
  %cmp6143 = icmp ugt i32 %add5, 4095
  %or.cond144 = select i1 %cmp142, i1 true, i1 %cmp6143
  br i1 %or.cond144, label %entry.for.end_crit_edge, label %if.end.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.lr.ph:                                     ; preds = %entry
  %freq_table = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 6
  br label %if.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %if.end.lr.ph
  %i.0146 = phi i32 [ 0, %if.end.lr.ph ], [ %inc, %if.end.if.end_crit_edge ]
  %len.0145 = phi i32 [ %add5, %if.end.lr.ph ], [ %add10, %if.end.if.end_crit_edge ]
  %add.ptr7 = getelementptr i8, ptr %buf, i32 %len.0145
  %sub8 = sub nuw nsw i32 4096, %len.0145
  %6 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %freq_table, align 8
  %arrayidx = getelementptr i32, ptr %7, i32 %i.0146
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.14, i32 noundef %9) #7
  %add10 = add i32 %call9, %len.0145
  %inc = add nuw i32 %i.0146, 1
  %10 = ptrtoint ptr %state_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %11)
  %cmp = icmp uge i32 %inc, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add10)
  %cmp6 = icmp ugt i32 %add10, 4095
  %or.cond = select i1 %cmp, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.end.for.end_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ %add5, %entry.for.end_crit_edge ], [ %add10, %if.end.for.end_crit_edge ]
  %cmp6.lcssa = phi i1 [ %cmp6143, %entry.for.end_crit_edge ], [ %cmp6, %if.end.for.end_crit_edge ]
  br i1 %cmp6.lcssa, label %for.end.cleanup_crit_edge, label %if.end13

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %for.end
  %add.ptr14 = getelementptr i8, ptr %buf, i32 %len.0.lcssa
  %sub15 = sub nuw nsw i32 4096, %len.0.lcssa
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.15) #7
  %add17 = add i32 %call16, %len.0.lcssa
  %12 = ptrtoint ptr %state_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp20155 = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add17)
  %cmp22156 = icmp ugt i32 %add17, 4095
  %or.cond137157 = select i1 %cmp20155, i1 true, i1 %cmp22156
  br i1 %or.cond137157, label %if.end13.for.end59_crit_edge, label %if.end24.lr.ph

if.end13.for.end59_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end59

if.end24.lr.ph:                                   ; preds = %if.end13
  %freq_table27 = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 6
  %trans_table = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 7
  %max_state = getelementptr inbounds %struct.cpufreq_stats, ptr %1, i32 0, i32 2
  br label %if.end24

if.end24:                                         ; preds = %if.end52.if.end24_crit_edge, %if.end24.lr.ph
  %i.1159 = phi i32 [ 0, %if.end24.lr.ph ], [ %inc58, %if.end52.if.end24_crit_edge ]
  %len.1158 = phi i32 [ %add17, %if.end24.lr.ph ], [ %add56, %if.end52.if.end24_crit_edge ]
  %add.ptr25 = getelementptr i8, ptr %buf, i32 %len.1158
  %sub26 = sub nuw nsw i32 4096, %len.1158
  %14 = ptrtoint ptr %freq_table27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %freq_table27, align 8
  %arrayidx28 = getelementptr i32, ptr %15, i32 %i.1159
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx28, align 4
  %call29 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr25, i32 noundef %sub26, ptr noundef nonnull @.str.16, i32 noundef %17) #7
  %add30 = add i32 %call29, %len.1158
  %18 = ptrtoint ptr %state_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp33148 = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add30)
  %cmp35149 = icmp ugt i32 %add30, 4095
  %or.cond138150 = select i1 %cmp33148, i1 true, i1 %cmp35149
  br i1 %or.cond138150, label %if.end24.for.end49_crit_edge, label %if.end24.if.end37_crit_edge

if.end24.if.end37_crit_edge:                      ; preds = %if.end24
  br label %if.end37

if.end24.for.end49_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end49

if.end37:                                         ; preds = %if.end42.if.end37_crit_edge, %if.end24.if.end37_crit_edge
  %j.0152 = phi i32 [ %inc48, %if.end42.if.end37_crit_edge ], [ 0, %if.end24.if.end37_crit_edge ]
  %len.2151 = phi i32 [ %add46, %if.end42.if.end37_crit_edge ], [ %add30, %if.end24.if.end37_crit_edge ]
  br i1 %tobool.not, label %if.else, label %if.end37.if.end42_crit_edge

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %trans_table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trans_table, align 4
  %22 = ptrtoint ptr %max_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_state, align 8
  %mul = mul i32 %23, %i.1159
  %add40 = add i32 %mul, %j.0152
  %arrayidx41 = getelementptr i32, ptr %21, i32 %add40
  %24 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx41, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.end37.if.end42_crit_edge
  %count.0 = phi i32 [ %25, %if.else ], [ 0, %if.end37.if.end42_crit_edge ]
  %add.ptr43 = getelementptr i8, ptr %buf, i32 %len.2151
  %sub44 = sub nuw nsw i32 4096, %len.2151
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr43, i32 noundef %sub44, ptr noundef nonnull @.str.14, i32 noundef %count.0) #7
  %add46 = add i32 %call45, %len.2151
  %inc48 = add nuw i32 %j.0152, 1
  %26 = ptrtoint ptr %state_num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc48, i32 %27)
  %cmp33 = icmp uge i32 %inc48, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add46)
  %cmp35 = icmp ugt i32 %add46, 4095
  %or.cond138 = select i1 %cmp33, i1 true, i1 %cmp35
  br i1 %or.cond138, label %if.end42.for.end49_crit_edge, label %if.end42.if.end37_crit_edge

if.end42.if.end37_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end42.for.end49_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end49

for.end49:                                        ; preds = %if.end42.for.end49_crit_edge, %if.end24.for.end49_crit_edge
  %len.2.lcssa = phi i32 [ %add30, %if.end24.for.end49_crit_edge ], [ %add46, %if.end42.for.end49_crit_edge ]
  %cmp35.lcssa = phi i1 [ %cmp35149, %if.end24.for.end49_crit_edge ], [ %cmp35, %if.end42.for.end49_crit_edge ]
  br i1 %cmp35.lcssa, label %for.end49.land.end_crit_edge, label %if.end52

for.end49.land.end_crit_edge:                     ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

if.end52:                                         ; preds = %for.end49
  %add.ptr53 = getelementptr i8, ptr %buf, i32 %len.2.lcssa
  %sub54 = sub nuw nsw i32 4096, %len.2.lcssa
  %call55 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53, i32 noundef %sub54, ptr noundef nonnull @.str.15) #7
  %add56 = add i32 %call55, %len.2.lcssa
  %inc58 = add nuw i32 %i.1159, 1
  %28 = ptrtoint ptr %state_num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc58, i32 %29)
  %cmp20 = icmp uge i32 %inc58, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add56)
  %cmp22 = icmp ugt i32 %add56, 4095
  %or.cond137 = select i1 %cmp20, i1 true, i1 %cmp22
  br i1 %or.cond137, label %if.end52.for.end59_crit_edge, label %if.end52.if.end24_crit_edge

if.end52.if.end24_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end52.for.end59_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end59

for.end59:                                        ; preds = %if.end52.for.end59_crit_edge, %if.end13.for.end59_crit_edge
  %len.1.lcssa = phi i32 [ %add17, %if.end13.for.end59_crit_edge ], [ %add56, %if.end52.for.end59_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %len.1.lcssa)
  %cmp60 = icmp ugt i32 %len.1.lcssa, 4095
  br i1 %cmp60, label %for.end59.land.end_crit_edge, label %for.end59.cleanup_crit_edge

for.end59.cleanup_crit_edge:                      ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end59.land.end_crit_edge:                     ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.end:                                         ; preds = %for.end59.land.end_crit_edge, %for.end49.land.end_crit_edge
  %.b136 = load i1, ptr @show_trans_table.__already_done, align 1
  br i1 %.b136, label %land.end.cleanup_crit_edge, label %if.then67, !prof !57

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then67:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @show_trans_table.__already_done, align 1
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %land.end.cleanup_crit_edge, %for.end59.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 4096, %for.end.cleanup_crit_edge ], [ -27, %if.then67 ], [ -27, %land.end.cleanup_crit_edge ], [ %len.1.lcssa, %for.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !17, !19, !21, !22, !24, !26, !27, !29, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/cpufreq_stats.c", i32 204, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cpufreq_stats_free_table.__UNIQUE_ID_ddebug203, !1, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/cpufreq/cpufreq_stats.c", i32 184, i32 10}
!8 = !{ptr @stats_attr_group, !9, !"stats_attr_group", i1 false, i1 false}
!9 = !{!"../drivers/cpufreq/cpufreq_stats.c", i32 182, i32 37}
!10 = !{ptr @default_attrs, !11, !"default_attrs", i1 false, i1 false}
!11 = !{!"../drivers/cpufreq/cpufreq_stats.c", i32 175, i32 26}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/cpufreq/cpufreq_stats.c", i32 67, i32 1}
!14 = !{ptr @total_trans, !13, !"total_trans", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/cpufreq/cpufreq_stats.c", i32 63, i32 23}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/cpufreq/cpufreq_stats.c", i32 65, i32 23}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/cpufreq/cpufreq_stats.c", i32 100, i32 1}
!21 = !{ptr @time_in_state, !20, !"time_in_state", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/cpufreq/cpufreq_stats.c", i32 95, i32 29}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/cpufreq/cpufreq_stats.c", i32 122, i32 1}
!26 = !{ptr @reset, !25, !"reset", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/cpufreq/cpufreq_stats.c", i32 173, i32 1}
!29 = !{ptr @trans_table, !28, !"trans_table", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/cpufreq/cpufreq_stats.c", i32 131, i32 47}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/cpufreq/cpufreq_stats.c", i32 132, i32 47}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/cpufreq/cpufreq_stats.c", i32 136, i32 48}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/cpufreq/cpufreq_stats.c", i32 142, i32 47}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/cpufreq/cpufreq_stats.c", i32 148, i32 48}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../drivers/cpufreq/cpufreq_stats.c", i32 168, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @show_trans_table._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @show_trans_table._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2148295040, i64 2148295045, i64 2148295058, i64 2148295102, i64 2148295136, i64 2148295157}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{!"branch_weights", i32 6003000, i32 -294967296}
!59 = !{i64 2152983332}
!60 = !{i64 2152997955}
!61 = !{i64 2153004685}
