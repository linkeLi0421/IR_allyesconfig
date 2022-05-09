; ModuleID = '/llk/IR_all_yes/drivers/opp/cpu.c_pt.bc'
source_filename = "../drivers/opp/cpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dev_pm_opp_init_cpufreq_table\22, \22a\22\09"
module asm "\09.weak\09__crc_dev_pm_opp_init_cpufreq_table\09\09\09\09"
module asm "\09.long\09__crc_dev_pm_opp_init_cpufreq_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_init_cpufreq_table:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_init_cpufreq_table\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_init_cpufreq_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dev_pm_opp_free_cpufreq_table\22, \22a\22\09"
module asm "\09.weak\09__crc_dev_pm_opp_free_cpufreq_table\09\09\09\09"
module asm "\09.long\09__crc_dev_pm_opp_free_cpufreq_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_free_cpufreq_table:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_free_cpufreq_table\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_free_cpufreq_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dev_pm_opp_cpumask_remove_table\22, \22a\22\09"
module asm "\09.weak\09__crc_dev_pm_opp_cpumask_remove_table\09\09\09\09"
module asm "\09.long\09__crc_dev_pm_opp_cpumask_remove_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_cpumask_remove_table:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_cpumask_remove_table\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_cpumask_remove_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dev_pm_opp_set_sharing_cpus\22, \22a\22\09"
module asm "\09.weak\09__crc_dev_pm_opp_set_sharing_cpus\09\09\09\09"
module asm "\09.long\09__crc_dev_pm_opp_set_sharing_cpus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_set_sharing_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_set_sharing_cpus\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_set_sharing_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dev_pm_opp_get_sharing_cpus\22, \22a\22\09"
module asm "\09.weak\09__crc_dev_pm_opp_get_sharing_cpus\09\09\09\09"
module asm "\09.long\09__crc_dev_pm_opp_get_sharing_cpus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_get_sharing_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_get_sharing_cpus\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_get_sharing_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
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
%struct.opp_table = type { %struct.list_head, %struct.list_head, %struct.blocking_notifier_head, %struct.list_head, %struct.list_head, %struct.kref, %struct.mutex, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i8, i8, i8, ptr, ptr, ptr, ptr, [255 x i8] }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.opp_device = type { %struct.list_head, ptr, ptr }

@__kstrtab_dev_pm_opp_init_cpufreq_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_init_cpufreq_table = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_init_cpufreq_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_init_cpufreq_table to i32), ptr @__kstrtab_dev_pm_opp_init_cpufreq_table, ptr @__kstrtabns_dev_pm_opp_init_cpufreq_table }, section "___ksymtab_gpl+dev_pm_opp_init_cpufreq_table", align 4
@__kstrtab_dev_pm_opp_free_cpufreq_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_free_cpufreq_table = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_free_cpufreq_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_free_cpufreq_table to i32), ptr @__kstrtab_dev_pm_opp_free_cpufreq_table, ptr @__kstrtabns_dev_pm_opp_free_cpufreq_table }, section "___ksymtab_gpl+dev_pm_opp_free_cpufreq_table", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/opp/cpu.c\00", [46 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@_dev_pm_opp_cpumask_remove_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013cpu: %s: failed to get cpu%d device\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"_dev_pm_opp_cpumask_remove_table\00", [63 x i8] zeroinitializer }, align 32
@_dev_pm_opp_cpumask_remove_table._entry_ptr = internal global ptr @_dev_pm_opp_cpumask_remove_table._entry, section ".printk_index", align 4
@__kstrtab_dev_pm_opp_cpumask_remove_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_cpumask_remove_table = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_cpumask_remove_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_cpumask_remove_table to i32), ptr @__kstrtab_dev_pm_opp_cpumask_remove_table, ptr @__kstrtabns_dev_pm_opp_cpumask_remove_table }, section "___ksymtab_gpl+dev_pm_opp_cpumask_remove_table", align 4
@dev_pm_opp_set_sharing_cpus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 174, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: failed to get cpu%d device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dev_pm_opp_set_sharing_cpus\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dev_pm_opp_set_sharing_cpus._entry_ptr = internal global ptr @dev_pm_opp_set_sharing_cpus._entry, section ".printk_index", align 4
@dev_pm_opp_set_sharing_cpus._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str, i32 181, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: failed to add opp-dev for cpu%d device\0A\00", [52 x i8] zeroinitializer }, align 32
@dev_pm_opp_set_sharing_cpus._entry_ptr.9 = internal global ptr @dev_pm_opp_set_sharing_cpus._entry.7, section ".printk_index", align 4
@__kstrtab_dev_pm_opp_set_sharing_cpus = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_set_sharing_cpus = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_set_sharing_cpus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_set_sharing_cpus to i32), ptr @__kstrtab_dev_pm_opp_set_sharing_cpus, ptr @__kstrtabns_dev_pm_opp_set_sharing_cpus }, section "___ksymtab_gpl+dev_pm_opp_set_sharing_cpus", align 4
@__kstrtab_dev_pm_opp_get_sharing_cpus = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_get_sharing_cpus = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_get_sharing_cpus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_get_sharing_cpus to i32), ptr @__kstrtab_dev_pm_opp_get_sharing_cpus, ptr @__kstrtabns_dev_pm_opp_get_sharing_cpus }, section "___ksymtab_gpl+dev_pm_opp_get_sharing_cpus", align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 114, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 122, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 173, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private constant [21 x i8] c"../drivers/opp/cpu.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 180, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 108, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_dev_pm_opp_cpumask_remove_table, ptr @__ksymtab_dev_pm_opp_free_cpufreq_table, ptr @__ksymtab_dev_pm_opp_get_sharing_cpus, ptr @__ksymtab_dev_pm_opp_init_cpufreq_table, ptr @__ksymtab_dev_pm_opp_set_sharing_cpus, ptr @_dev_pm_opp_cpumask_remove_table._entry, ptr @_dev_pm_opp_cpumask_remove_table._entry_ptr, ptr @dev_pm_opp_set_sharing_cpus._entry, ptr @dev_pm_opp_set_sharing_cpus._entry.7, ptr @dev_pm_opp_set_sharing_cpus._entry_ptr, ptr @dev_pm_opp_set_sharing_cpus._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dev_pm_opp_cpumask_remove_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_pm_opp_set_sharing_cpus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_pm_opp_set_sharing_cpus._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_init_cpufreq_table(ptr noundef %dev, ptr nocapture noundef writeonly %table) #0 align 64 {
entry:
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #7
  %call = tail call i32 @dev_pm_opp_get_opp_count(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 -61, i32 %call
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add nuw i32 %call, 1
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 12) #7
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !40

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #10
  %tobool2.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool2.not, label %if.end7.i.i.cleanup_crit_edge, label %for.body.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %if.end7.i.i
  %3 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %rate, align 4
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.body.preheader
  %i.062 = phi i32 [ %inc, %if.end15.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call6 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %dev, ptr noundef nonnull %rate) #7
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end10

if.end10:                                         ; preds = %for.body
  %driver_data = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i, i32 %i.062, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i.062, ptr %driver_data, align 4
  %5 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rate, align 4
  %div = udiv i32 %6, 1000
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i, i32 %i.062, i32 2
  %7 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div, ptr %frequency, align 4
  %call12 = call zeroext i1 @dev_pm_opp_is_turbo(ptr noundef %call6) #7
  br i1 %call12, label %if.then13, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i, i32 %i.062
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %arrayidx, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  call void @dev_pm_opp_put(ptr noundef %call6) #7
  %inc = add nuw nsw i32 %i.062, 1
  %9 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rate, align 4
  %inc16 = add i32 %10, 1
  store i32 %inc16, ptr %rate, align 4
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %out.thread, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

out.thread:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data18 = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i, i32 %call, i32 1
  %11 = ptrtoint ptr %driver_data18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call, ptr %driver_data18, align 4
  %frequency20 = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i, i32 %call, i32 2
  %12 = ptrtoint ptr %frequency20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -2, ptr %frequency20, align 4
  %13 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i, ptr %table, align 4
  br label %cleanup

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call6 to i32
  call void @kfree(ptr noundef nonnull %call8.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %out.thread, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ %14, %if.then23 ], [ 0, %out.thread ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_ceil(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dev_pm_opp_is_turbo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dev_pm_opp_free_cpufreq_table(ptr nocapture readnone %dev, ptr noundef %table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %table, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %table, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_dev_pm_opp_cpumask_remove_table(ptr noundef %cpumask, i32 noundef %last_cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %cpumask, i32 noundef %0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %0)
  %cmp4.i.i = icmp eq i32 %call.i.i, %0
  br i1 %cmp4.i.i, label %do.end, label %entry.if.end_crit_edge, !prof !40

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 114, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1939 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpumask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1939, i32 %1)
  %cmp40 = icmp uge i32 %call1939, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %call1939, i32 %last_cpu)
  %cmp2041 = icmp eq i32 %call1939, %last_cpu
  %or.cond42 = or i1 %cmp2041, %cmp40
  br i1 %or.cond42, label %if.end.for.end_crit_edge, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  br label %if.end22

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end22:                                         ; preds = %for.cond.backedge.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %call1943 = phi i32 [ %call19, %for.cond.backedge.if.end22_crit_edge ], [ %call1939, %if.end.if.end22_crit_edge ]
  %call23 = tail call ptr @get_cpu_device(i32 noundef %call1943) #7
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %call1943) #12
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end31, %do.end28
  %call19 = tail call i32 @cpumask_next(i32 noundef %call1943, ptr noundef %cpumask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call19, i32 %2)
  %cmp = icmp uge i32 %call19, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %call19, i32 %last_cpu)
  %cmp20 = icmp eq i32 %call19, %last_cpu
  %or.cond = or i1 %cmp20, %cmp
  br i1 %or.cond, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.if.end22_crit_edge

for.cond.backedge.if.end22_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dev_pm_opp_remove_table(ptr noundef nonnull %call23) #7
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_remove_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dev_pm_opp_cpumask_remove_table(ptr noundef %cpumask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_dev_pm_opp_cpumask_remove_table(ptr noundef %cpumask, i32 noundef -1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_set_sharing_cpus(ptr noundef %cpu_dev, ptr noundef %cpumask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @_find_opp_table(ptr noundef %cpu_dev) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call334 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpumask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call334, i32 %0)
  %cmp35 = icmp ult i32 %call334, %0
  br i1 %cmp35, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %id = getelementptr inbounds %struct.device, ptr %cpu_dev, i32 0, i32 30
  %shared_opp = getelementptr inbounds %struct.opp_table, ptr %call, i32 0, i32 11
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %call336 = phi i32 [ %call334, %for.body.lr.ph ], [ %call3, %for.cond.backedge.for.body_crit_edge ]
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call336, i32 %3)
  %cmp4 = icmp eq i32 %call336, %3
  br i1 %cmp4, label %for.body.for.cond.backedge_crit_edge, label %if.end6

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

if.end6:                                          ; preds = %for.body
  %call7 = tail call ptr @get_cpu_device(i32 noundef %call336) #7
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cpu_dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call336) #12
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end16, %do.end15, %do.end, %for.body.for.cond.backedge_crit_edge
  %call3 = tail call i32 @cpumask_next(i32 noundef %call336, ptr noundef %cpumask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call3, %4
  br i1 %cmp, label %for.cond.backedge.for.body_crit_edge, label %for.cond.backedge.for.end_crit_edge

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end9:                                          ; preds = %if.end6
  %call10 = tail call ptr @_add_opp_dev(ptr noundef nonnull %call7, ptr noundef %call) #7
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, i32 noundef %call336) #12
  br label %for.cond.backedge

if.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %shared_opp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %shared_opp, align 4
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_find_opp_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_add_opp_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_opp_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_get_sharing_cpus(ptr noundef %cpu_dev, ptr noundef %cpumask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @_find_opp_table(ptr noundef %cpu_dev) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %shared_opp = getelementptr inbounds %struct.opp_table, ptr %call, i32 0, i32 11
  %1 = ptrtoint ptr %shared_opp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %shared_opp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.end.put_opp_table_crit_edge, label %if.end4

if.end.put_opp_table_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_opp_table

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %3, 31
  %4 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %4, 536870908
  %5 = call ptr @memset(ptr %cpumask, i32 0, i32 %mul.i.i)
  %6 = ptrtoint ptr %shared_opp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shared_opp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp6 = icmp eq i32 %7, 2
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  %lock = getelementptr inbounds %struct.opp_table, ptr %call, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %dev_list = getelementptr inbounds %struct.opp_table, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %dev_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %opp_dev.038 = load ptr, ptr %dev_list, align 4
  %cmp9.not39 = icmp eq ptr %opp_dev.038, %dev_list
  br i1 %cmp9.not39, label %if.then7.for.end_crit_edge, label %if.then7.for.body_crit_edge

if.then7.for.body_crit_edge:                      ; preds = %if.then7
  br label %for.body

if.then7.for.end_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %cpumask_set_cpu.exit.for.body_crit_edge, %if.then7.for.body_crit_edge
  %opp_dev.040 = phi ptr [ %opp_dev.0, %cpumask_set_cpu.exit.for.body_crit_edge ], [ %opp_dev.038, %if.then7.for.body_crit_edge ]
  %dev = getelementptr inbounds %struct.opp_device, ptr %opp_dev.040, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 30
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %12)
  %cmp.not.i.i.i = icmp ugt i32 %13, %12
  br i1 %cmp.not.i.i.i, label %for.body.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

for.body.cpumask_set_cpu.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %for.body
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !41

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %for.body.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %12, ptr noundef %cpumask) #7
  %14 = ptrtoint ptr %opp_dev.040 to i32
  call void @__asan_load4_noabort(i32 %14)
  %opp_dev.0 = load ptr, ptr %opp_dev.040, align 4
  %cmp9.not = icmp eq ptr %opp_dev.0, %dev_list
  br i1 %cmp9.not, label %cpumask_set_cpu.exit.for.end_crit_edge, label %cpumask_set_cpu.exit.for.body_crit_edge

cpumask_set_cpu.exit.for.body_crit_edge:          ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cpumask_set_cpu.exit.for.end_crit_edge:           ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cpumask_set_cpu.exit.for.end_crit_edge, %if.then7.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %put_opp_table

if.else:                                          ; preds = %if.end4
  %id16 = getelementptr inbounds %struct.device, ptr %cpu_dev, i32 0, i32 30
  %15 = ptrtoint ptr %id16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id16, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %16)
  %cmp.not.i.i.i33 = icmp ugt i32 %17, %16
  br i1 %cmp.not.i.i.i33, label %if.else.cpumask_set_cpu.exit37_crit_edge, label %land.rhs.i.i.i35

if.else.cpumask_set_cpu.exit37_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_set_cpu.exit37

land.rhs.i.i.i35:                                 ; preds = %if.else
  %.b37.i.i.i34 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i34, label %land.rhs.i.i.i35.cpumask_set_cpu.exit37_crit_edge, label %if.then.i.i.i36, !prof !41

land.rhs.i.i.i35.cpumask_set_cpu.exit37_crit_edge: ; preds = %land.rhs.i.i.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_set_cpu.exit37

if.then.i.i.i36:                                  ; preds = %land.rhs.i.i.i35
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpumask_set_cpu.exit37

cpumask_set_cpu.exit37:                           ; preds = %if.then.i.i.i36, %land.rhs.i.i.i35.cpumask_set_cpu.exit37_crit_edge, %if.else.cpumask_set_cpu.exit37_crit_edge
  tail call void @_set_bit(i32 noundef %16, ptr noundef %cpumask) #7
  br label %put_opp_table

put_opp_table:                                    ; preds = %cpumask_set_cpu.exit37, %for.end, %if.end.put_opp_table_crit_edge
  %ret.0 = phi i32 [ 0, %for.end ], [ 0, %cpumask_set_cpu.exit37 ], [ -22, %if.end.put_opp_table_crit_edge ]
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %put_opp_table, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.0, %put_opp_table ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__ksymtab_dev_pm_opp_init_cpufreq_table, !1, !"__ksymtab_dev_pm_opp_init_cpufreq_table", i1 false, i1 false}
!1 = !{!"../drivers/opp/cpu.c", i32 87, i32 1}
!2 = !{ptr @__ksymtab_dev_pm_opp_free_cpufreq_table, !3, !"__ksymtab_dev_pm_opp_free_cpufreq_table", i1 false, i1 false}
!3 = !{!"../drivers/opp/cpu.c", i32 105, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/opp/cpu.c", i32 114, i32 2}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/opp/cpu.c", i32 122, i32 4}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @_dev_pm_opp_cpumask_remove_table._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @_dev_pm_opp_cpumask_remove_table._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_dev_pm_opp_cpumask_remove_table, !12, !"__ksymtab_dev_pm_opp_cpumask_remove_table", i1 false, i1 false}
!12 = !{!"../drivers/opp/cpu.c", i32 143, i32 1}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/opp/cpu.c", i32 173, i32 4}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dev_pm_opp_set_sharing_cpus._entry, !14, !"_entry", i1 false, i1 false}
!19 = !{ptr @dev_pm_opp_set_sharing_cpus._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/opp/cpu.c", i32 180, i32 4}
!22 = !{ptr @dev_pm_opp_set_sharing_cpus._entry.7, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @dev_pm_opp_set_sharing_cpus._entry_ptr.9, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_dev_pm_opp_set_sharing_cpus, !25, !"__ksymtab_dev_pm_opp_set_sharing_cpus", i1 false, i1 false}
!25 = !{!"../drivers/opp/cpu.c", i32 193, i32 1}
!26 = !{ptr @__ksymtab_dev_pm_opp_get_sharing_cpus, !27, !"__ksymtab_dev_pm_opp_get_sharing_cpus", i1 false, i1 false}
!27 = !{!"../drivers/opp/cpu.c", i32 236, i32 1}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{!"branch_weights", i32 2000, i32 1}
