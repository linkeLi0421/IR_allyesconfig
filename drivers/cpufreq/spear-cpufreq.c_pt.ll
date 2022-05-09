; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/spear-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/spear-cpufreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.44 = type { ptr, i32, ptr, i32 }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
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
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_spear_cpufreq__195_243_spear_cpufreq_platdrv_init6 = internal global ptr @spear_cpufreq_platdrv_init, section ".initcall6.init", align 4
@spear_cpufreq_platdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spear_cpufreq_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_spear_cpufreq_platdrv_exit = internal global ptr @spear_cpufreq_platdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author196 = internal constant [56 x i8] c"spear_cpufreq.author=Deepak Sikri <deepak.sikri@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description197 = internal constant [47 x i8] c"spear_cpufreq.description=SPEAr CPUFreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file198 = internal constant [49 x i8] c"spear_cpufreq.file=drivers/cpufreq/spear-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license199 = internal constant [26 x i8] c"spear_cpufreq.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spear-cpufreq\00", [18 x i8] zeroinitializer }, align 32
@spear_cpufreq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013spear_cpufreq: No cpu node found\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spear_cpufreq_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/cpufreq/spear-cpufreq.c\00", [32 x i8] zeroinitializer }, align 32
@spear_cpufreq_probe._entry_ptr = internal global ptr @spear_cpufreq_probe._entry, section ".printk_index", align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clock-latency\00", [18 x i8] zeroinitializer }, align 32
@spear_cpufreq = internal global { %struct.anon.44, [16 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cpufreq_tbl\00", [20 x i8] zeroinitializer }, align 32
@spear_cpufreq_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013spear_cpufreq: Invalid cpufreq_tbl\0A\00", [58 x i8] zeroinitializer }, align 32
@spear_cpufreq_probe._entry_ptr.8 = internal global ptr @spear_cpufreq_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpu_clk\00", [24 x i8] zeroinitializer }, align 32
@spear_cpufreq_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013spear_cpufreq: Unable to get CPU clock\0A\00", [54 x i8] zeroinitializer }, align 32
@spear_cpufreq_probe._entry_ptr.12 = internal global ptr @spear_cpufreq_probe._entry.10, section ".printk_index", align 4
@spear_cpufreq_driver = internal global { %struct.cpufreq_driver, [48 x i8] } { %struct.cpufreq_driver { [16 x i8] c"cpufreq-spear\00\00\00", i16 32, ptr null, ptr @spear_cpufreq_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @spear_cpufreq_target, ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_generic_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_generic_attr, i8 0, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@spear_cpufreq_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013spear_cpufreq: failed register driver: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@spear_cpufreq_probe._entry_ptr.15 = internal global ptr @spear_cpufreq_probe._entry.13, section ".printk_index", align 4
@cpufreq_generic_attr = external dso_local global [0 x ptr], align 4
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st,spear1340\00", [19 x i8] zeroinitializer }, align 32
@spear_cpufreq_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013spear_cpufreq: Failed to get src clk\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spear_cpufreq_target\00", [43 x i8] zeroinitializer }, align 32
@spear_cpufreq_target._entry_ptr = internal global ptr @spear_cpufreq_target._entry, section ".printk_index", align 4
@spear_cpufreq_target._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013spear_cpufreq: clk_round_rate failed for cpu src clock\0A\00", [38 x i8] zeroinitializer }, align 32
@spear_cpufreq_target._entry_ptr.21 = internal global ptr @spear_cpufreq_target._entry.19, section ".printk_index", align 4
@spear_cpufreq_target._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013spear_cpufreq: CPU Freq: cpu clk_set_rate failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@spear_cpufreq_target._entry_ptr.24 = internal global ptr @spear_cpufreq_target._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_syn_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll2_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll3_clk\00", [23 x i8] zeroinitializer }, align 32
@__const.spear1340_cpu_get_possible_parent.sys_clk_src = private unnamed_addr constant [4 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], align 4
@spear1340_cpu_get_possible_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013spear_cpufreq: Failed to get %s clock\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"spear1340_cpu_get_possible_parent\00", [62 x i8] zeroinitializer }, align 32
@spear1340_cpu_get_possible_parent._entry_ptr = internal global ptr @spear1340_cpu_get_possible_parent._entry, section ".printk_index", align 4
@spear1340_set_cpu_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013spear_cpufreq: failed to get cpu's parent (sys) clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spear1340_set_cpu_rate\00", [41 x i8] zeroinitializer }, align 32
@spear1340_set_cpu_rate._entry_ptr = internal global ptr @spear1340_set_cpu_rate._entry, section ".printk_index", align 4
@spear1340_set_cpu_rate._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013spear_cpufreq: Failed to set sys clk rate to %lu\0A\00", [44 x i8] zeroinitializer }, align 32
@spear1340_set_cpu_rate._entry_ptr.35 = internal global ptr @spear1340_set_cpu_rate._entry.33, section ".printk_index", align 4
@spear1340_set_cpu_rate._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.3, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013spear_cpufreq: Failed to set sys clk parent\0A\00", [49 x i8] zeroinitializer }, align 32
@spear1340_set_cpu_rate._entry_ptr.38 = internal global ptr @spear1340_set_cpu_rate._entry.36, section ".printk_index", align 4
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"spear_cpufreq_platdrv\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 237, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 239, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 181, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 185, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"spear_cpufreq\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 32, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 189, i32 30 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 191, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 214, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 216, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [21 x i8] c"spear_cpufreq_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 161, i32 30 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 225, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 112, i32 31 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 122, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 138, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 148, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 43, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 44, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 45, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 46, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 65, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 83, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 90, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [35 x i8] c"../drivers/cpufreq/spear-cpufreq.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 96, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author196, ptr @__UNIQUE_ID_description197, ptr @__UNIQUE_ID_file198, ptr @__UNIQUE_ID_license199, ptr @__exitcall_spear_cpufreq_platdrv_exit, ptr @__initcall__kmod_spear_cpufreq__195_243_spear_cpufreq_platdrv_init6, ptr @spear1340_cpu_get_possible_parent._entry, ptr @spear1340_cpu_get_possible_parent._entry_ptr, ptr @spear1340_set_cpu_rate._entry, ptr @spear1340_set_cpu_rate._entry.33, ptr @spear1340_set_cpu_rate._entry.36, ptr @spear1340_set_cpu_rate._entry_ptr, ptr @spear1340_set_cpu_rate._entry_ptr.35, ptr @spear1340_set_cpu_rate._entry_ptr.38, ptr @spear_cpufreq_platdrv_exit, ptr @spear_cpufreq_probe._entry, ptr @spear_cpufreq_probe._entry.10, ptr @spear_cpufreq_probe._entry.13, ptr @spear_cpufreq_probe._entry.6, ptr @spear_cpufreq_probe._entry_ptr, ptr @spear_cpufreq_probe._entry_ptr.12, ptr @spear_cpufreq_probe._entry_ptr.15, ptr @spear_cpufreq_probe._entry_ptr.8, ptr @spear_cpufreq_target._entry, ptr @spear_cpufreq_target._entry.19, ptr @spear_cpufreq_target._entry.22, ptr @spear_cpufreq_target._entry_ptr, ptr @spear_cpufreq_target._entry_ptr.21, ptr @spear_cpufreq_target._entry_ptr.24, ptr @spear_cpufreq_platdrv, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @spear_cpufreq, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @spear_cpufreq_driver, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_cpufreq_platdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_cpufreq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_cpufreq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_cpufreq_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_cpufreq_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_cpufreq_driver to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_cpufreq_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_cpufreq_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_cpufreq_target._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_cpufreq_target._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear1340_cpu_get_possible_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear1340_set_cpu_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear1340_set_cpu_rate._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear1340_set_cpu_rate._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_cpufreq_platdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @spear_cpufreq_platdrv, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spear_cpufreq_platdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @spear_cpufreq_platdrv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_cpufreq_probe(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @get_cpu_device(i32 noundef 0) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call ptr @of_get_cpu_node(i32 noundef 0, ptr noundef null) #6
  br label %of_cpu_device_node_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %of_node.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %call2.i = tail call ptr @of_node_get(ptr noundef %1) #6
  br label %of_cpu_device_node_get.exit

of_cpu_device_node_get.exit:                      ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call2.i, %if.end.i ], [ %call1.i, %if.then.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %of_cpu_device_node_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %of_cpu_device_node_get.exit
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %retval.0.i, ptr noundef nonnull @.str.4, ptr noundef getelementptr inbounds (%struct.anon.44, ptr @spear_cpufreq, i32 0, i32 1), i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool3.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  store i32 -1, ptr getelementptr inbounds (%struct.anon.44, ptr @spear_cpufreq, i32 0, i32 1), align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call6 = tail call ptr @of_find_property(ptr noundef nonnull %retval.0.i, ptr noundef nonnull @.str.5, ptr noundef null) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.do.end12_crit_edge, label %lor.lhs.false

if.end5.do.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

lor.lhs.false:                                    ; preds = %if.end5
  %value = getelementptr inbounds %struct.property, ptr %call6, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %lor.lhs.false.do.end12_crit_edge, label %if.end15

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end12:                                         ; preds = %lor.lhs.false.do.end12_crit_edge, %if.end5.do.end12_crit_edge
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %out_put_node

if.end15:                                         ; preds = %lor.lhs.false
  %length = getelementptr inbounds %struct.property, ptr %call6, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  %div67 = lshr i32 %5, 2
  %add = add nuw nsw i32 %div67, 1
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 12) #6
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end15.out_put_node_crit_edge, label %if.end7.i.i, !prof !92

if.end15.out_put_node_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_node

if.end7.i.i:                                      ; preds = %if.end15
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #10
  %tobool18.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool18.not, label %if.end7.i.i.out_put_node_crit_edge, label %for.cond.preheader

if.end7.i.i.out_put_node_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_node

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp70.not = icmp ult i32 %5, 4
  br i1 %cmp70.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div67, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.072 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %val.071 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %incdec.ptr = getelementptr i32, ptr %val.071, i32 1
  %9 = ptrtoint ptr %val.071 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.071, align 4
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i, i32 %i.072, i32 2
  %11 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %frequency, align 4
  %inc = add nuw nsw i32 %i.072, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %umax, %for.body.for.end_crit_edge ]
  %frequency23 = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i, i32 %i.0.lcssa, i32 2
  %12 = ptrtoint ptr %frequency23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -2, ptr %frequency23, align 4
  store ptr %call8.i.i, ptr getelementptr inbounds (%struct.anon.44, ptr @spear_cpufreq, i32 0, i32 2), align 4
  tail call void @of_node_put(ptr noundef nonnull %retval.0.i) #6
  %call24 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.9) #6
  store ptr %call24, ptr @spear_cpufreq, align 4
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end29, label %if.end33

do.end29:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #9
  %13 = load ptr, ptr @spear_cpufreq, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %out_put_mem

if.end33:                                         ; preds = %for.end
  %call34 = tail call i32 @cpufreq_register_driver(ptr noundef nonnull @spear_cpufreq_driver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end33.cleanup_crit_edge, label %do.end40

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call34) #9
  %15 = load ptr, ptr @spear_cpufreq, align 4
  tail call void @clk_put(ptr noundef %15) #6
  br label %out_put_mem

out_put_mem:                                      ; preds = %do.end40, %do.end29
  %ret.0 = phi i32 [ %14, %do.end29 ], [ %call34, %do.end40 ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br label %cleanup

out_put_node:                                     ; preds = %if.end7.i.i.out_put_node_crit_edge, %if.end15.out_put_node_crit_edge, %do.end12
  %ret.1 = phi i32 [ -19, %do.end12 ], [ -12, %if.end7.i.i.out_put_node_crit_edge ], [ -12, %if.end15.out_put_node_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %retval.0.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out_put_node, %out_put_mem, %if.end33.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %out_put_mem ], [ %ret.1, %out_put_node ], [ -19, %do.end ], [ 0, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_cpufreq_init(ptr noundef %policy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @spear_cpufreq, align 4
  %clk = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 5
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %clk, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.anon.44, ptr @spear_cpufreq, i32 0, i32 2), align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.anon.44, ptr @spear_cpufreq, i32 0, i32 1), align 4
  tail call void @cpufreq_generic_init(ptr noundef %policy, ptr noundef %2, i32 noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_cpufreq_target(ptr nocapture noundef readnone %policy, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.anon.44, ptr @spear_cpufreq, i32 0, i32 2), align 4
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %0, i32 %index, i32 2
  %1 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %frequency, align 4
  %mul = mul i32 %2, 1000
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000001, i32 %mul)
  %cmp.i = icmp ult i32 %mul, 300000001
  br i1 %cmp.i, label %if.then.if.end9.i_crit_edge, label %land.lhs.true.i

if.then.if.end9.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000001, i32 %mul)
  %cmp2.i = icmp ult i32 %mul, 500000001
  br i1 %cmp2.i, label %land.lhs.true.i.if.end9.i_crit_edge, label %if.else4.i

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.else4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000000, i32 %mul)
  %cmp5.i = icmp eq i32 %mul, 600000000
  br i1 %cmp5.i, label %if.else4.i.if.end9.i_crit_edge, label %if.else4.i.do.end_crit_edge

if.else4.i.do.end_crit_edge:                      ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.else4.i.if.end9.i_crit_edge:                   ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else4.i.if.end9.i_crit_edge, %land.lhs.true.i.if.end9.i_crit_edge, %if.then.if.end9.i_crit_edge
  %pclk.0.i = phi i32 [ 0, %if.then.if.end9.i_crit_edge ], [ 3, %land.lhs.true.i.if.end9.i_crit_edge ], [ 1, %if.else4.i.if.end9.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x ptr], ptr @__const.spear1340_cpu_get_possible_parent.sys_clk_src, i32 0, i32 %pclk.0.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %call10.i = tail call ptr @clk_get(ptr noundef null, ptr noundef %4) #6
  %cmp.i.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %spear1340_cpu_get_possible_parent.exit.thread, label %if.end6.thread

spear1340_cpu_get_possible_parent.exit.thread:    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %4) #9
  br label %do.end

do.end:                                           ; preds = %spear1340_cpu_get_possible_parent.exit.thread, %if.else4.i.do.end_crit_edge
  %retval.0.i51 = phi ptr [ inttoptr (i32 -22 to ptr), %if.else4.i.do.end_crit_edge ], [ %call10.i, %spear1340_cpu_get_possible_parent.exit.thread ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #9
  %5 = ptrtoint ptr %retval.0.i51 to i32
  br label %cleanup

if.end6:                                          ; preds = %entry
  %6 = load ptr, ptr @spear_cpufreq, align 4
  %call8 = tail call i32 @clk_round_rate(ptr noundef %6, i32 noundef %mul) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp = icmp slt i32 %call8, 1
  br i1 %cmp, label %if.end6.do.end12_crit_edge, label %if.else19

if.end6.do.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

if.end6.thread:                                   ; preds = %if.end9.i
  %mul754 = mul i32 %2, 2000
  %call855 = tail call i32 @clk_round_rate(ptr noundef %call10.i, i32 noundef %mul754) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call855)
  %cmp56 = icmp slt i32 %call855, 1
  br i1 %cmp56, label %if.end6.thread.do.end12_crit_edge, label %if.then17

if.end6.thread.do.end12_crit_edge:                ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end12:                                         ; preds = %if.end6.thread.do.end12_crit_edge, %if.end6.do.end12_crit_edge
  %call859 = phi i32 [ %call855, %if.end6.thread.do.end12_crit_edge ], [ %call8, %if.end6.do.end12_crit_edge ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %cleanup

if.then17:                                        ; preds = %if.end6.thread
  %7 = load ptr, ptr @spear_cpufreq, align 4
  %call.i = tail call ptr @clk_get_parent(ptr noundef %7) #6
  %cmp.i.i45 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i45, label %do.end.i46, label %if.end.i

do.end.i46:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #9
  %8 = ptrtoint ptr %call.i to i32
  br label %if.end21

if.end.i:                                         ; preds = %if.then17
  %call4.i = tail call i32 @clk_set_rate(ptr noundef %call10.i, i32 noundef %call855) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end11.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %call855) #9
  br label %do.end26

if.end11.i:                                       ; preds = %if.end.i
  %call12.i = tail call i32 @clk_set_parent(ptr noundef %call.i, ptr noundef %call10.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.cleanup_crit_edge, label %do.end17.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #9
  br label %do.end26

if.else19:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = load ptr, ptr @spear_cpufreq, align 4
  %call20 = tail call i32 @clk_set_rate(ptr noundef %9, i32 noundef %call8) #6
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %do.end.i46
  %ret.0 = phi i32 [ %call20, %if.else19 ], [ %8, %do.end.i46 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool22.not = icmp eq i32 %ret.0, 0
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.end21.do.end26_crit_edge

if.end21.do.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end26:                                         ; preds = %if.end21.do.end26_crit_edge, %do.end17.i, %do.end8.i
  %ret.066 = phi i32 [ %ret.0, %if.end21.do.end26_crit_edge ], [ %call12.i, %do.end17.i ], [ %call4.i, %do.end8.i ]
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %ret.066) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end21.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ %5, %do.end ], [ %call859, %do.end12 ], [ %ret.066, %do.end26 ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %if.end11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_get(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_generic_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_spear_cpufreq__195_243_spear_cpufreq_platdrv_init6, !1, !"__initcall__kmod_spear_cpufreq__195_243_spear_cpufreq_platdrv_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 243, i32 1}
!2 = !{ptr @__exitcall_spear_cpufreq_platdrv_exit, !1, !"__exitcall_spear_cpufreq_platdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author196, !4, !"__UNIQUE_ID_author196", i1 false, i1 false}
!4 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 245, i32 1}
!5 = !{ptr @__UNIQUE_ID_description197, !6, !"__UNIQUE_ID_description197", i1 false, i1 false}
!6 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 246, i32 1}
!7 = !{ptr @__UNIQUE_ID_file198, !8, !"__UNIQUE_ID_file198", i1 false, i1 false}
!8 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 247, i32 1}
!9 = !{ptr @__UNIQUE_ID_license199, !8, !"__UNIQUE_ID_license199", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 239, i32 11}
!12 = !{ptr @spear_cpufreq_platdrv, !13, !"spear_cpufreq_platdrv", i1 false, i1 false}
!13 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 237, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 181, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @spear_cpufreq_probe._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @spear_cpufreq_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 185, i32 31}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 189, i32 30}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 191, i32 3}
!26 = !{ptr @spear_cpufreq_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @spear_cpufreq_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 214, i32 36}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 216, i32 3}
!32 = !{ptr @spear_cpufreq_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @spear_cpufreq_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 225, i32 2}
!36 = !{ptr @spear_cpufreq_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @spear_cpufreq_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @spear_cpufreq, !39, !"spear_cpufreq", i1 false, i1 false}
!39 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 32, i32 3}
!40 = !{ptr @spear_cpufreq_driver, !41, !"spear_cpufreq_driver", i1 false, i1 false}
!41 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 161, i32 30}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 112, i32 31}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 122, i32 4}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @spear_cpufreq_target._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @spear_cpufreq_target._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 138, i32 3}
!51 = !{ptr @spear_cpufreq_target._entry.19, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @spear_cpufreq_target._entry_ptr.21, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 148, i32 3}
!55 = !{ptr @spear_cpufreq_target._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @spear_cpufreq_target._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 43, i32 3}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 44, i32 3}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 45, i32 3}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 46, i32 3}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 65, i32 3}
!67 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @spear1340_cpu_get_possible_parent._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @spear1340_cpu_get_possible_parent._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 83, i32 3}
!72 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @spear1340_set_cpu_rate._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @spear1340_set_cpu_rate._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 90, i32 3}
!77 = !{ptr @spear1340_set_cpu_rate._entry.33, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @spear1340_set_cpu_rate._entry_ptr.35, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/cpufreq/spear-cpufreq.c", i32 96, i32 3}
!81 = !{ptr @spear1340_set_cpu_rate._entry.36, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @spear1340_set_cpu_rate._entry_ptr.38, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"branch_weights", i32 1, i32 2000}
