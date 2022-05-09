; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/cpufreq_conservative.c_pt.bc'
source_filename = "../drivers/cpufreq/cpufreq_conservative.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dbs_governor = type { %struct.cpufreq_governor, %struct.kobj_type, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpufreq_governor = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.governor_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cs_policy_dbs_info = type { %struct.policy_dbs_info, i32, i32 }
%struct.policy_dbs_info = type { ptr, %struct.mutex, i64, i64, %struct.atomic_t, %struct.irq_work, %struct.work_struct, ptr, %struct.list_head, i32, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dbs_data = type { %struct.gov_attr_set, ptr, i32, i32, i32, i32, i32 }
%struct.gov_attr_set = type { %struct.kobject, %struct.list_head, %struct.mutex, i32 }
%struct.cs_dbs_tuners = type { i32, i32 }

@__UNIQUE_ID_author224 = internal constant [67 x i8] c"cpufreq_conservative.author=Alexander Clouter <alex@digriz.org.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [184 x i8] c"cpufreq_conservative.description='cpufreq_conservative' - A dynamic cpufreq governor for Low Latency Frequency Transition capable processors optimised for use in a battery environment\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [63 x i8] c"cpufreq_conservative.file=drivers/cpufreq/cpufreq_conservative\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [33 x i8] c"cpufreq_conservative.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_cpufreq_conservative__228_343_CPU_FREQ_GOV_CONSERVATIVE_init1 = internal global ptr @CPU_FREQ_GOV_CONSERVATIVE_init, section ".initcall1.init", align 4
@cs_governor = internal global { %struct.dbs_governor, [44 x i8] } { %struct.dbs_governor { %struct.cpufreq_governor { [16 x i8] c"conservative\00\00\00\00", ptr @cpufreq_dbs_governor_init, ptr @cpufreq_dbs_governor_exit, ptr @cpufreq_dbs_governor_start, ptr @cpufreq_dbs_governor_stop, ptr @cpufreq_dbs_governor_limits, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i8 1 }, %struct.kobj_type { ptr null, ptr null, ptr null, ptr @cs_groups, ptr null, ptr null, ptr null }, ptr null, ptr @cs_dbs_update, ptr @cs_alloc, ptr @cs_free, ptr @cs_init, ptr @cs_exit, ptr @cs_start }, [44 x i8] zeroinitializer }, align 32
@__exitcall_CPU_FREQ_GOV_CONSERVATIVE_exit = internal global ptr @CPU_FREQ_GOV_CONSERVATIVE_exit, section ".exitcall.exit", align 4
@cs_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @cs_group, ptr null], [24 x i8] zeroinitializer }, align 32
@cs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@cs_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @sampling_rate, ptr @sampling_down_factor, ptr @up_threshold, ptr @down_threshold, ptr @ignore_nice_load, ptr @freq_step, ptr null], [36 x i8] zeroinitializer }, align 32
@sampling_rate = internal global { %struct.governor_attr, [36 x i8] } { %struct.governor_attr { %struct.attribute { ptr @.str, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sampling_rate, ptr @store_sampling_rate }, [36 x i8] zeroinitializer }, align 32
@sampling_down_factor = internal global { %struct.governor_attr, [36 x i8] } { %struct.governor_attr { %struct.attribute { ptr @.str.2, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sampling_down_factor, ptr @store_sampling_down_factor }, [36 x i8] zeroinitializer }, align 32
@up_threshold = internal global { %struct.governor_attr, [36 x i8] } { %struct.governor_attr { %struct.attribute { ptr @.str.4, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_up_threshold, ptr @store_up_threshold }, [36 x i8] zeroinitializer }, align 32
@down_threshold = internal global { %struct.governor_attr, [36 x i8] } { %struct.governor_attr { %struct.attribute { ptr @.str.5, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_down_threshold, ptr @store_down_threshold }, [36 x i8] zeroinitializer }, align 32
@ignore_nice_load = internal global { %struct.governor_attr, [36 x i8] } { %struct.governor_attr { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ignore_nice_load, ptr @store_ignore_nice_load }, [36 x i8] zeroinitializer }, align 32
@freq_step = internal global { %struct.governor_attr, [36 x i8] } { %struct.governor_attr { %struct.attribute { ptr @.str.7, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_freq_step, ptr @store_freq_step }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sampling_rate\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sampling_down_factor\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"up_threshold\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"down_threshold\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ignore_nice_load\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"freq_step\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.8 = private unnamed_addr constant [12 x i8] c"cs_governor\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 317, i32 28 }
@___asan_gen_.11 = private unnamed_addr constant [10 x i8] c"cs_groups\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [9 x i8] c"cs_group\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 269, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [9 x i8] c"cs_attrs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 260, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"sampling_rate\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"sampling_down_factor\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"up_threshold\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"down_threshold\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"ignore_nice_load\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [10 x i8] c"freq_step\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 253, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 246, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 254, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 155, i32 20 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 255, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 257, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 256, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [42 x i8] c"../drivers/cpufreq/cpufreq_conservative.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 258, i32 1 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @CPU_FREQ_GOV_CONSERVATIVE_exit, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_CPU_FREQ_GOV_CONSERVATIVE_exit, ptr @__initcall__kmod_cpufreq_conservative__228_343_CPU_FREQ_GOV_CONSERVATIVE_init1, ptr @cs_governor, ptr @cs_groups, ptr @cs_group, ptr @cs_attrs, ptr @sampling_rate, ptr @sampling_down_factor, ptr @up_threshold, ptr @down_threshold, ptr @ignore_nice_load, ptr @freq_step, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_governor to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sampling_rate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sampling_down_factor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @up_threshold to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @down_threshold to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ignore_nice_load to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freq_step to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @CPU_FREQ_GOV_CONSERVATIVE_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpufreq_register_governor(ptr noundef nonnull @cs_governor) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @CPU_FREQ_GOV_CONSERVATIVE_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cpufreq_unregister_governor(ptr noundef nonnull @cs_governor) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_unregister_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_dbs_governor_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_dbs_governor_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_dbs_governor_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_dbs_governor_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_dbs_governor_limits(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs_dbs_update(ptr noundef %policy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 14
  %0 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %governor_data, align 4
  %requested_freq1 = getelementptr inbounds %struct.cs_policy_dbs_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %requested_freq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requested_freq1, align 4
  %dbs_data2 = getelementptr inbounds %struct.policy_dbs_info, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %dbs_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbs_data2, align 8
  %tuners = getelementptr inbounds %struct.dbs_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tuners to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuners, align 4
  %call3 = tail call i32 @dbs_update(ptr noundef %policy) #9
  %freq_step4 = getelementptr inbounds %struct.cs_dbs_tuners, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %freq_step4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %freq_step4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %max = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 8
  %10 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %11)
  %cmp5 = icmp ugt i32 %3, %11
  br i1 %cmp5, label %if.end.if.then7_crit_edge, label %lor.lhs.false

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %min = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 7
  %12 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %13)
  %cmp6 = icmp ult i32 %3, %13
  br i1 %cmp6, label %lor.lhs.false.if.then7_crit_edge, label %lor.lhs.false.if.end9_crit_edge

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %cur = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 9
  %14 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur, align 4
  %16 = ptrtoint ptr %requested_freq1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %requested_freq1, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %lor.lhs.false.if.end9_crit_edge
  %requested_freq.0 = phi i32 [ %15, %if.then7 ], [ %3, %lor.lhs.false.if.end9_crit_edge ]
  %17 = ptrtoint ptr %freq_step4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %freq_step4, align 4
  %19 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max, align 4
  %mul.i = mul i32 %20, %18
  %div.i = udiv i32 %mul.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %mul.i)
  %21 = icmp ult i32 %mul.i, 100
  br i1 %21, label %if.then.i, label %if.end9.get_freq_step.exit_crit_edge, !prof !49

if.end9.get_freq_step.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_freq_step.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_freq_step.exit

get_freq_step.exit:                               ; preds = %if.then.i, %if.end9.get_freq_step.exit_crit_edge
  %freq_step.0.i = phi i32 [ 5, %if.then.i ], [ %div.i, %if.end9.get_freq_step.exit_crit_edge ]
  %idle_periods = getelementptr inbounds %struct.policy_dbs_info, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %idle_periods to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idle_periods, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp11.not = icmp eq i32 %23, -1
  br i1 %cmp11.not, label %get_freq_step.exit.if.end20_crit_edge, label %if.then12

get_freq_step.exit.if.end20_crit_edge:            ; preds = %get_freq_step.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then12:                                        ; preds = %get_freq_step.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %23, %freq_step.0.i
  %min14 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 7
  %24 = ptrtoint ptr %min14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %min14, align 4
  %add = add i32 %25, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %requested_freq.0, i32 %add)
  %cmp15 = icmp ugt i32 %requested_freq.0, %add
  %sub = sub i32 %requested_freq.0, %mul
  %requested_freq.1 = select i1 %cmp15, i32 %sub, i32 %25
  %26 = ptrtoint ptr %idle_periods to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %idle_periods, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %get_freq_step.exit.if.end20_crit_edge
  %requested_freq.2 = phi i32 [ %requested_freq.1, %if.then12 ], [ %requested_freq.0, %get_freq_step.exit.if.end20_crit_edge ]
  %up_threshold = getelementptr inbounds %struct.dbs_data, ptr %5, i32 0, i32 5
  %27 = ptrtoint ptr %up_threshold to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %up_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %28)
  %cmp21 = icmp ugt i32 %call3, %28
  %down_skip = getelementptr inbounds %struct.cs_policy_dbs_info, ptr %1, i32 0, i32 1
  br i1 %cmp21, label %if.then22, label %if.end35

if.then22:                                        ; preds = %if.end20
  %29 = ptrtoint ptr %down_skip to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %down_skip, align 8
  %30 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %requested_freq.2, i32 %31)
  %cmp24 = icmp eq i32 %requested_freq.2, %31
  br i1 %cmp24, label %if.then22.out_crit_edge, label %if.end26

if.then22.out_crit_edge:                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end26:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %add27 = add i32 %requested_freq.2, %freq_step.0.i
  %32 = tail call i32 @llvm.umin.i32(i32 %add27, i32 %31)
  %call33 = tail call i32 @__cpufreq_driver_target(ptr noundef %policy, i32 noundef %32, i32 noundef 5) #9
  br label %out.sink.split

if.end35:                                         ; preds = %if.end20
  %33 = ptrtoint ptr %down_skip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %down_skip, align 8
  %inc = add i32 %34, 1
  store i32 %inc, ptr %down_skip, align 8
  %sampling_down_factor = getelementptr inbounds %struct.dbs_data, ptr %5, i32 0, i32 4
  %35 = ptrtoint ptr %sampling_down_factor to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sampling_down_factor, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %36)
  %cmp37 = icmp ult i32 %inc, %36
  br i1 %cmp37, label %if.end35.out_crit_edge, label %if.end39

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end39:                                         ; preds = %if.end35
  %37 = ptrtoint ptr %down_skip to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %down_skip, align 8
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %39)
  %cmp41 = icmp ult i32 %call3, %39
  br i1 %cmp41, label %if.then42, label %if.end39.out_crit_edge

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then42:                                        ; preds = %if.end39
  %min43 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 7
  %40 = ptrtoint ptr %min43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %min43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %requested_freq.2, i32 %41)
  %cmp44 = icmp eq i32 %requested_freq.2, %41
  br i1 %cmp44, label %if.then42.out_crit_edge, label %if.end46

if.then42.out_crit_edge:                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end46:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %requested_freq.2, i32 %freq_step.0.i)
  %cmp47 = icmp ugt i32 %requested_freq.2, %freq_step.0.i
  %sub49 = sub i32 %requested_freq.2, %freq_step.0.i
  %requested_freq.4 = select i1 %cmp47, i32 %sub49, i32 %41
  %call53 = tail call i32 @__cpufreq_driver_target(ptr noundef %policy, i32 noundef %requested_freq.4, i32 noundef 4) #9
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end46, %if.end26
  %requested_freq.4.sink = phi i32 [ %requested_freq.4, %if.end46 ], [ %32, %if.end26 ]
  %42 = ptrtoint ptr %requested_freq1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %requested_freq.4.sink, ptr %requested_freq1, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.then42.out_crit_edge, %if.end39.out_crit_edge, %if.end35.out_crit_edge, %if.then22.out_crit_edge, %entry.out_crit_edge
  %sampling_rate = getelementptr inbounds %struct.dbs_data, ptr %5, i32 0, i32 3
  %43 = ptrtoint ptr %sampling_rate to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sampling_rate, align 4
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @cs_alloc() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 208) #12
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs_free(ptr noundef %policy_dbs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %policy_dbs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs_init(ptr nocapture noundef writeonly %dbs_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 20, ptr %call7.i.i, align 8
  %freq_step = getelementptr inbounds %struct.cs_dbs_tuners, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %freq_step to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %freq_step, align 4
  %up_threshold = getelementptr inbounds %struct.dbs_data, ptr %dbs_data, i32 0, i32 5
  %3 = ptrtoint ptr %up_threshold to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 80, ptr %up_threshold, align 4
  %sampling_down_factor = getelementptr inbounds %struct.dbs_data, ptr %dbs_data, i32 0, i32 4
  %4 = ptrtoint ptr %sampling_down_factor to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %sampling_down_factor, align 4
  %ignore_nice_load = getelementptr inbounds %struct.dbs_data, ptr %dbs_data, i32 0, i32 2
  %5 = ptrtoint ptr %ignore_nice_load to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ignore_nice_load, align 4
  %tuners1 = getelementptr inbounds %struct.dbs_data, ptr %dbs_data, i32 0, i32 1
  %6 = ptrtoint ptr %tuners1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %tuners1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs_exit(ptr nocapture noundef readonly %dbs_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuners = getelementptr inbounds %struct.dbs_data, ptr %dbs_data, i32 0, i32 1
  %0 = ptrtoint ptr %tuners to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuners, align 4
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cs_start(ptr nocapture noundef readonly %policy) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 14
  %0 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %governor_data, align 4
  %down_skip = getelementptr inbounds %struct.cs_policy_dbs_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %down_skip to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %down_skip, align 8
  %cur = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 9
  %3 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cur, align 4
  %requested_freq = getelementptr inbounds %struct.cs_policy_dbs_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %requested_freq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %requested_freq, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sampling_rate(ptr nocapture noundef readonly %attr_set, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sampling_rate = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 3
  %0 = ptrtoint ptr %sampling_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sampling_rate, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @store_sampling_rate(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sampling_down_factor(ptr nocapture noundef readonly %attr_set, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sampling_down_factor = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 4
  %0 = ptrtoint ptr %sampling_down_factor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sampling_down_factor, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_sampling_down_factor(ptr nocapture noundef writeonly %attr_set, ptr nocapture noundef readonly %buf, i32 noundef %count) #4 align 64 {
entry:
  %input = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input) #9
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %input, align 4, !annotation !50
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.3, ptr noundef nonnull %input)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %input, align 4
  %3 = add i32 %2, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %3)
  %4 = icmp ult i32 %3, -10
  br i1 %4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %sampling_down_factor = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 4
  %5 = ptrtoint ptr %sampling_down_factor to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %sampling_down_factor, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_up_threshold(ptr nocapture noundef readonly %attr_set, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %up_threshold = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 5
  %0 = ptrtoint ptr %up_threshold to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %up_threshold, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_up_threshold(ptr nocapture noundef %attr_set, ptr nocapture noundef readonly %buf, i32 noundef %count) #4 align 64 {
entry:
  %input = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuners = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 1
  %0 = ptrtoint ptr %tuners to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuners, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input) #9
  %2 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %input, align 4, !annotation !50
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.3, ptr noundef nonnull %input)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %4)
  %cmp2 = icmp ugt i32 %4, 100
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp4.not = icmp ugt i32 %4, %6
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  %up_threshold = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 5
  %7 = ptrtoint ptr %up_threshold to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %up_threshold, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_down_threshold(ptr nocapture noundef readonly %attr_set, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuners1 = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 1
  %0 = ptrtoint ptr %tuners1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuners1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_down_threshold(ptr nocapture noundef readonly %attr_set, ptr nocapture noundef readonly %buf, i32 noundef %count) #4 align 64 {
entry:
  %input = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuners = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 1
  %0 = ptrtoint ptr %tuners to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuners, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input) #9
  %2 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %input, align 4, !annotation !50
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.3, ptr noundef nonnull %input)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %input, align 4
  %5 = add i32 %4, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %5)
  %6 = icmp ult i32 %5, -100
  br i1 %6, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %up_threshold = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 5
  %7 = ptrtoint ptr %up_threshold to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %up_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %8)
  %cmp6.not = icmp ult i32 %4, %8
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %4, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ignore_nice_load(ptr nocapture noundef readonly %attr_set, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ignore_nice_load = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 2
  %0 = ptrtoint ptr %ignore_nice_load to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ignore_nice_load, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_ignore_nice_load(ptr noundef %attr_set, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %input = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input) #9
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %input, align 4, !annotation !50
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.3, ptr noundef nonnull %input)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp2 = icmp ugt i32 %2, 1
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %input, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input, align 4
  %ignore_nice_load = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 2
  %6 = ptrtoint ptr %ignore_nice_load to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ignore_nice_load, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp5 = icmp eq i32 %5, %7
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %ignore_nice_load to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %ignore_nice_load, align 4
  call void @gov_update_cpu_data(ptr noundef %attr_set) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ %count, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gov_update_cpu_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_freq_step(ptr nocapture noundef readonly %attr_set, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuners1 = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 1
  %0 = ptrtoint ptr %tuners1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuners1, align 4
  %freq_step = getelementptr inbounds %struct.cs_dbs_tuners, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %freq_step to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq_step, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_freq_step(ptr nocapture noundef readonly %attr_set, ptr nocapture noundef readonly %buf, i32 noundef %count) #4 align 64 {
entry:
  %input = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuners = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 1
  %0 = ptrtoint ptr %tuners to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuners, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input) #9
  %2 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %input, align 4, !annotation !50
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.3, ptr noundef nonnull %input)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %4)
  %cmp2 = icmp ugt i32 %4, 100
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 100, ptr %input, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %input, align 4
  %freq_step = getelementptr inbounds %struct.cs_dbs_tuners, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %freq_step to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %freq_step, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbs_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpufreq_driver_target(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !30, !31, !33, !34, !36, !37, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__UNIQUE_ID_author224, !1, !"__UNIQUE_ID_author224", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/cpufreq_conservative.c", i32 330, i32 1}
!2 = !{ptr @__UNIQUE_ID_description225, !3, !"__UNIQUE_ID_description225", i1 false, i1 false}
!3 = !{!"../drivers/cpufreq/cpufreq_conservative.c", i32 331, i32 1}
!4 = !{ptr @__UNIQUE_ID_file226, !5, !"__UNIQUE_ID_file226", i1 false, i1 false}
!5 = !{!"../drivers/cpufreq/cpufreq_conservative.c", i32 334, i32 1}
!6 = !{ptr @__UNIQUE_ID_license227, !5, !"__UNIQUE_ID_license227", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_cpufreq_conservative__228_343_CPU_FREQ_GOV_CONSERVATIVE_init1, !8, !"__initcall__kmod_cpufreq_conservative__228_343_CPU_FREQ_GOV_CONSERVATIVE_init1", i1 false, i1 false}
!8 = !{!"../drivers/cpufreq/cpufreq_conservative.c", i32 343, i32 1}
!9 = !{ptr @__exitcall_CPU_FREQ_GOV_CONSERVATIVE_exit, !10, !"__exitcall_CPU_FREQ_GOV_CONSERVATIVE_exit", i1 false, i1 false}
!10 = !{!"../drivers/cpufreq/cpufreq_conservative.c", i32 344, i32 1}
!11 = !{ptr @cs_governor, !12, !"cs_governor", i1 false, i1 false}
!12 = !{!"../drivers/cpufreq/cpufreq_conservative.c", i32 317, i32 28}
!13 = !{ptr @cs_groups, !14, !"cs_groups", i1 false, i1 false}
!14 = !{!"../drivers/cpufreq/cpufreq_conservative.c", i32 269, i32 1}
!15 = !{ptr @cs_group, !14, !"cs_group", i1 false, i1 false}
!16 = !{ptr @cs_attrs, !17, !"cs_attrs", i1 false, i1 false}
!17 = !{!"../drivers/cpufreq/cpufreq_conservative.c", i32 260, i32 26}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/cpufreq/cpufreq_conservative.c", i32 253, i32 1}
!20 = !{ptr @sampling_rate, !19, !"sampling_rate", i1 false, i1 false}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/cpufreq/cpufreq_conservative.c", i32 246, i32 1}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/cpufreq/cpufreq_conservative.c", i32 254, i32 1}
!25 = !{ptr @sampling_down_factor, !24, !"sampling_down_factor", i1 false, i1 false}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/cpufreq/cpufreq_conservative.c", i32 155, i32 20}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/cpufreq/cpufreq_conservative.c", i32 255, i32 1}
!30 = !{ptr @up_threshold, !29, !"up_threshold", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/cpufreq/cpufreq_conservative.c", i32 257, i32 1}
!33 = !{ptr @down_threshold, !32, !"down_threshold", i1 false, i1 false}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/cpufreq/cpufreq_conservative.c", i32 256, i32 1}
!36 = !{ptr @ignore_nice_load, !35, !"ignore_nice_load", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/cpufreq/cpufreq_conservative.c", i32 258, i32 1}
!39 = !{ptr @freq_step, !38, !"freq_step", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{!"auto-init"}
