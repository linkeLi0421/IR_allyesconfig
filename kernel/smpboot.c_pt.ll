; ModuleID = '/llk/IR_all_yes/kernel/smpboot.c_pt.bc'
source_filename = "../kernel/smpboot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+smpboot_register_percpu_thread\22, \22a\22\09"
module asm "\09.weak\09__crc_smpboot_register_percpu_thread\09\09\09\09"
module asm "\09.long\09__crc_smpboot_register_percpu_thread\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smpboot_register_percpu_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22smpboot_register_percpu_thread\22\09\09\09\09\09"
module asm "__kstrtabns_smpboot_register_percpu_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+smpboot_unregister_percpu_thread\22, \22a\22\09"
module asm "\09.weak\09__crc_smpboot_unregister_percpu_thread\09\09\09\09"
module asm "\09.long\09__crc_smpboot_unregister_percpu_thread\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smpboot_unregister_percpu_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22smpboot_unregister_percpu_thread\22\09\09\09\09\09"
module asm "__kstrtabns_smpboot_unregister_percpu_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpumask = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.smpboot_thread_data = type { i32, i32, ptr }
%struct.smp_hotplug_thread = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.26, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.26 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@idle_threads = weak dso_local global ptr null, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@smpboot_threads_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @smpboot_threads_lock, i64 52), ptr getelementptr (i8, ptr @smpboot_threads_lock, i64 52) }, ptr @smpboot_threads_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@hotplug_threads = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @hotplug_threads, ptr @hotplug_threads }, [24 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_smpboot_register_percpu_thread = external dso_local constant [0 x i8], align 1
@__kstrtabns_smpboot_register_percpu_thread = external dso_local constant [0 x i8], align 1
@__ksymtab_smpboot_register_percpu_thread = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smpboot_register_percpu_thread to i32), ptr @__kstrtab_smpboot_register_percpu_thread, ptr @__kstrtabns_smpboot_register_percpu_thread }, section "___ksymtab_gpl+smpboot_register_percpu_thread", align 4
@__kstrtab_smpboot_unregister_percpu_thread = external dso_local constant [0 x i8], align 1
@__kstrtabns_smpboot_unregister_percpu_thread = external dso_local constant [0 x i8], align 1
@__ksymtab_smpboot_unregister_percpu_thread = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smpboot_unregister_percpu_thread to i32), ptr @__kstrtab_smpboot_unregister_percpu_thread, ptr @__kstrtabns_smpboot_unregister_percpu_thread }, section "___ksymtab_gpl+smpboot_unregister_percpu_thread", align 4
@cpu_hotplug_state = weak dso_local global %struct.atomic_t { i32 9 }, section ".data..percpu", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kernel/smpboot.c\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__pcpu_unique_idle_threads = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_cpu_hotplug_state = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@idle_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013SMP: fork_idle() failed for CPU %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"idle_init\00", [22 x i8] zeroinitializer }, align 32
@idle_init._entry_ptr = internal global ptr @idle_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"smpboot_threads_lock.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smpboot_threads_lock\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 9, i64 11]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.12 = private unnamed_addr constant [21 x i8] c"smpboot_threads_lock\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"hotplug_threads\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 81, i32 8 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 425, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 57, i32 4 }
@___asan_gen_.34 = private constant [20 x i8] c"../kernel/smpboot.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 82, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 108, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_smpboot_register_percpu_thread, ptr @__ksymtab_smpboot_unregister_percpu_thread, ptr @idle_init._entry, ptr @idle_init._entry_ptr, ptr @smpboot_threads_lock, ptr @hotplug_threads, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.10], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smpboot_threads_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hotplug_threads to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idle_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @idle_thread_get(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @idle_threads to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %4, null
  %spec.select = select i1 %tobool.not, ptr inttoptr (i32 -12 to ptr), ptr %4
  ret ptr %spec.select
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @idle_thread_set_boot_cpu() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !38) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, ptrtoint (ptr @idle_threads to i32)
  %8 = inttoptr i32 %add to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %8, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @idle_threads_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !38) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %call27 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call27, i32 %4)
  %cmp8 = icmp ult i32 %call27, %4
  br i1 %cmp8, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %call29 = phi i32 [ %call2, %if.end.for.body_crit_edge ], [ %call27, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call29, i32 %3)
  %cmp3.not = icmp eq i32 %call29, %3
  br i1 %cmp3.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call29
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %6, ptrtoint (ptr @idle_threads to i32)
  %7 = inttoptr i32 %add.i to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %call.i = tail call ptr @fork_idle(i32 noundef %call29) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end6.i, label %if.else.i

do.end6.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call29) #14
  br label %if.end

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add17.i = add i32 %11, ptrtoint (ptr @idle_threads to i32)
  %12 = inttoptr i32 %add17.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %12, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.i, %do.end6.i, %if.then.if.end_crit_edge, %for.body.if.end_crit_edge
  %call2 = tail call i32 @cpumask_next(i32 noundef %call29, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %14
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smpboot_create_threads(i32 noundef %cpu) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @smpboot_threads_lock, i32 noundef 0) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @hotplug_threads, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @hotplug_threads
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %cur.0 = getelementptr i8, ptr %.pn, i32 -4
  %call = tail call fastcc i32 @__smpboot_create_thread(ptr noundef %cur.0, i32 noundef %cpu)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %ret.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @smpboot_threads_lock) #10
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__smpboot_create_thread(ptr noundef %ht, i32 noundef %cpu) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ht, align 4
  %2 = ptrtoint ptr %1 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, %2
  %5 = inttoptr i32 %add to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 12) #15
  %tobool2.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cpu, ptr %call.i.i.i, align 8
  %ht6 = getelementptr inbounds %struct.smpboot_thread_data, ptr %call.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %ht6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ht, ptr %ht6, align 8
  %thread_comm = getelementptr inbounds %struct.smp_hotplug_thread, ptr %ht, i32 0, i32 10
  %11 = ptrtoint ptr %thread_comm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %thread_comm, align 4
  %call7 = tail call ptr @kthread_create_on_cpu(ptr noundef nonnull @smpboot_thread_fn, ptr noundef nonnull %call.i.i.i, i32 noundef %cpu, ptr noundef %12) #10
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #10
  %13 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  tail call void @kthread_set_per_cpu(ptr noundef %call7, i32 noundef %cpu) #10
  %call12 = tail call i32 @kthread_park(ptr noundef %call7) #10
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call7, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !48
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end11.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !49

if.end11.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end11
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !50

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end11.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end11.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #10
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %16 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ht, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %add23 = add i32 %20, %18
  %21 = inttoptr i32 %add23 to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7, ptr %21, align 4
  %create = getelementptr inbounds %struct.smp_hotplug_thread, ptr %ht, i32 0, i32 4
  %23 = ptrtoint ptr %create to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %create, align 4
  %tobool24.not = icmp eq ptr %24, null
  br i1 %tobool24.not, label %get_task_struct.exit.cleanup_crit_edge, label %if.then25

get_task_struct.exit.cleanup_crit_edge:           ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25:                                        ; preds = %get_task_struct.exit
  %call26 = tail call i32 @wait_task_inactive(ptr noundef %call7, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.end36, label %if.else

do.end36:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 206, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.else:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %create to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %create, align 4
  tail call void %26(i32 noundef %cpu) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end36, %get_task_struct.exit.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then9 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %do.end36 ], [ 0, %if.else ], [ 0, %get_task_struct.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smpboot_unpark_threads(i32 noundef %cpu) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @smpboot_threads_lock, i32 noundef 0) #10
  %.pn7 = load ptr, ptr @hotplug_threads, align 4
  %cmp.not8 = icmp eq ptr %.pn7, @hotplug_threads
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  br label %for.body

for.body:                                         ; preds = %smpboot_unpark_thread.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn9 = phi ptr [ %.pn7, %for.body.lr.ph ], [ %.pn, %smpboot_unpark_thread.exit.for.body_crit_edge ]
  %selfparking.i = getelementptr i8, ptr %.pn9, i32 36
  %0 = ptrtoint ptr %selfparking.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %selfparking.i, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.smpboot_unpark_thread.exit_crit_edge

for.body.smpboot_unpark_thread.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %smpboot_unpark_thread.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %cur.0 = getelementptr i8, ptr %.pn9, i32 -4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %4 = ptrtoint ptr %cur.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur.0, align 4
  %6 = ptrtoint ptr %5 to i32
  %add.i = add i32 %3, %6
  %7 = inttoptr i32 %add.i to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @kthread_unpark(ptr noundef %9) #10
  br label %smpboot_unpark_thread.exit

smpboot_unpark_thread.exit:                       ; preds = %if.then.i, %for.body.smpboot_unpark_thread.exit_crit_edge
  %10 = ptrtoint ptr %.pn9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn9, align 4
  %cmp.not = icmp eq ptr %.pn, @hotplug_threads
  br i1 %cmp.not, label %smpboot_unpark_thread.exit.for.end_crit_edge, label %smpboot_unpark_thread.exit.for.body_crit_edge

smpboot_unpark_thread.exit.for.body_crit_edge:    ; preds = %smpboot_unpark_thread.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

smpboot_unpark_thread.exit.for.end_crit_edge:     ; preds = %smpboot_unpark_thread.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %smpboot_unpark_thread.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @smpboot_threads_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smpboot_park_threads(i32 noundef %cpu) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @smpboot_threads_lock, i32 noundef 0) #10
  %.pn7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hotplug_threads, i32 0, i32 1), align 4
  %cmp.not8 = icmp eq ptr %.pn7, @hotplug_threads
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  br label %for.body

for.body:                                         ; preds = %smpboot_park_thread.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn9 = phi ptr [ %.pn7, %for.body.lr.ph ], [ %.pn, %smpboot_park_thread.exit.for.body_crit_edge ]
  %cur.0 = getelementptr i8, ptr %.pn9, i32 -4
  %0 = ptrtoint ptr %cur.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur.0, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.smpboot_park_thread.exit_crit_edge, label %land.lhs.true.i

for.body.smpboot_park_thread.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %smpboot_park_thread.exit

land.lhs.true.i:                                  ; preds = %for.body
  %selfparking.i = getelementptr i8, ptr %.pn9, i32 36
  %8 = ptrtoint ptr %selfparking.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %selfparking.i, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not.i = icmp eq i8 %9, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i.smpboot_park_thread.exit_crit_edge

land.lhs.true.i.smpboot_park_thread.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smpboot_park_thread.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @kthread_park(ptr noundef nonnull %7) #10
  br label %smpboot_park_thread.exit

smpboot_park_thread.exit:                         ; preds = %if.then.i, %land.lhs.true.i.smpboot_park_thread.exit_crit_edge, %for.body.smpboot_park_thread.exit_crit_edge
  %prev = getelementptr inbounds %struct.list_head, ptr %.pn9, i32 0, i32 1
  %10 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %prev, align 4
  %cmp.not = icmp eq ptr %.pn, @hotplug_threads
  br i1 %cmp.not, label %smpboot_park_thread.exit.for.end_crit_edge, label %smpboot_park_thread.exit.for.body_crit_edge

smpboot_park_thread.exit.for.body_crit_edge:      ; preds = %smpboot_park_thread.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

smpboot_park_thread.exit.for.end_crit_edge:       ; preds = %smpboot_park_thread.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %smpboot_park_thread.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @smpboot_threads_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smpboot_register_percpu_thread(ptr noundef %plug_thread) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpus_read_lock() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @smpboot_threads_lock, i32 noundef 0) #10
  %call9 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %0)
  %cmp10 = icmp ult i32 %call9, %0
  br i1 %cmp10, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %selfparking.i = getelementptr inbounds %struct.smp_hotplug_thread, ptr %plug_thread, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %smpboot_unpark_thread.exit.for.body_crit_edge, %for.body.lr.ph
  %call11 = phi i32 [ %call9, %for.body.lr.ph ], [ %call, %smpboot_unpark_thread.exit.for.body_crit_edge ]
  %call1 = tail call fastcc i32 @__smpboot_create_thread(ptr noundef %plug_thread, i32 noundef %call11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @smpboot_destroy_threads(ptr noundef %plug_thread)
  br label %out

if.end:                                           ; preds = %for.body
  %1 = ptrtoint ptr %selfparking.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %selfparking.i, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.smpboot_unpark_thread.exit_crit_edge

if.end.smpboot_unpark_thread.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %smpboot_unpark_thread.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call11
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %5 = ptrtoint ptr %plug_thread to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %plug_thread, align 4
  %7 = ptrtoint ptr %6 to i32
  %add.i = add i32 %4, %7
  %8 = inttoptr i32 %add.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void @kthread_unpark(ptr noundef %10) #10
  br label %smpboot_unpark_thread.exit

smpboot_unpark_thread.exit:                       ; preds = %if.then.i, %if.end.smpboot_unpark_thread.exit_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call11, ptr noundef nonnull @__cpu_online_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %11
  br i1 %cmp, label %smpboot_unpark_thread.exit.for.body_crit_edge, label %smpboot_unpark_thread.exit.for.end_crit_edge

smpboot_unpark_thread.exit.for.end_crit_edge:     ; preds = %smpboot_unpark_thread.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

smpboot_unpark_thread.exit.for.body_crit_edge:    ; preds = %smpboot_unpark_thread.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %smpboot_unpark_thread.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %list = getelementptr inbounds %struct.smp_hotplug_thread, ptr %plug_thread, i32 0, i32 1
  %12 = load ptr, ptr @hotplug_threads, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @hotplug_threads, ptr noundef %12) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %prev1.i.i, align 4
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.smp_hotplug_thread, ptr %plug_thread, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @hotplug_threads, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @hotplug_threads, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %for.end.out_crit_edge, %if.then
  %ret.1 = phi i32 [ %call1, %if.then ], [ 0, %for.end.out_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @smpboot_threads_lock) #10
  tail call void @cpus_read_unlock() #10
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smpboot_destroy_threads(ptr nocapture noundef readonly %ht) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call19 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call19, i32 %0)
  %cmp20 = icmp ult i32 %call19, %0
  br i1 %cmp20, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %call21 = phi i32 [ %call, %if.end.for.body_crit_edge ], [ %call19, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ht, align 4
  %3 = ptrtoint ptr %2 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call21
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  %call2 = tail call i32 @kthread_stop(ptr noundef nonnull %8) #10
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !53
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !50

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #10
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @__put_task_struct(ptr noundef nonnull %8) #10
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %10 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ht, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add12 = add i32 %14, %12
  %15 = inttoptr i32 %add12 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %15, align 4
  br label %if.end

if.end:                                           ; preds = %put_task_struct.exit, %for.body.if.end_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call21, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %17
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smpboot_unregister_percpu_thread(ptr noundef %plug_thread) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpus_read_lock() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @smpboot_threads_lock, i32 noundef 0) #10
  %list = getelementptr inbounds %struct.smp_hotplug_thread, ptr %plug_thread, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.smp_hotplug_thread, ptr %plug_thread, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.smp_hotplug_thread, ptr %plug_thread, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @smpboot_destroy_threads(ptr noundef %plug_thread)
  tail call void @mutex_unlock(ptr noundef nonnull @smpboot_threads_lock) #10
  tail call void @cpus_read_unlock() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpu_report_state(i32 noundef %cpu) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpu_hotplug_state to i32)
  %2 = inttoptr i32 %add to ptr
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %2, i32 noundef 4) #10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpu_check_up_prepare(i32 noundef %cpu) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpu_hotplug_state to i32)
  %2 = inttoptr i32 %add to ptr
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %2, i32 noundef 4) #10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %sw.default [
    i32 9, label %do.body2
    i32 8, label %entry.return_crit_edge
    i32 11, label %sw.bb11
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add9 = add i32 %7, ptrtoint (ptr @cpu_hotplug_state to i32)
  %8 = inttoptr i32 %add9 to ptr
  %call.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %8, i32 noundef 4) #10
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 3, ptr %8, align 4
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %sw.bb11, %do.body2, %entry.return_crit_edge
  %retval.0 = phi i32 [ -5, %sw.default ], [ -11, %sw.bb11 ], [ 0, %do.body2 ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpu_set_state_online(i32 noundef %cpu) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpu_hotplug_state to i32)
  %2 = inttoptr i32 %add to ptr
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %2, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %2, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 2, ptr %2) #10, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cpu_wait_death(i32 noundef %cpu, i32 noundef %seconds) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 425) #10
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpu_hotplug_state to i32)
  %2 = inttoptr i32 %add to ptr
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %2, i32 noundef 4) #10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp = icmp eq i32 %4, 7
  br i1 %cmp, label %entry.update_state.preheader_crit_edge, label %if.end

entry.update_state.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_state.preheader

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 1073740) #10
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add1682 = add i32 %7, ptrtoint (ptr @cpu_hotplug_state to i32)
  %8 = inttoptr i32 %add1682 to ptr
  %call.i.i7683 = tail call zeroext i1 @__kasan_check_read(ptr noundef %8, i32 noundef 4) #10
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp18.not84 = icmp eq i32 %10, 7
  br i1 %cmp18.not84, label %if.end.update_state.preheader_crit_edge, label %while.body.preheader

if.end.update_state.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_state.preheader

while.body.preheader:                             ; preds = %if.end
  %mul = mul i32 %seconds, 100
  br label %while.body

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %while.body.preheader
  %jf_left.086 = phi i32 [ %sub, %if.end22.while.body_crit_edge ], [ %mul, %while.body.preheader ]
  %sleep_jf.085 = phi i32 [ %div, %if.end22.while.body_crit_edge ], [ 1, %while.body.preheader ]
  %call19 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %sleep_jf.085) #10
  %sub = sub i32 %jf_left.086, %sleep_jf.085
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp20 = icmp slt i32 %sub, 1
  br i1 %cmp20, label %while.body.update_state.preheader_crit_edge, label %if.end22

while.body.update_state.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_state.preheader

if.end22:                                         ; preds = %while.body
  %mul23 = mul i32 %sleep_jf.085, 11
  %sub25 = add i32 %mul23, 9
  %div = sdiv i32 %sub25, 10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add16 = add i32 %12, ptrtoint (ptr @cpu_hotplug_state to i32)
  %13 = inttoptr i32 %add16 to ptr
  %call.i.i76 = tail call zeroext i1 @__kasan_check_read(ptr noundef %13, i32 noundef 4) #10
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %cmp18.not = icmp eq i32 %15, 7
  br i1 %cmp18.not, label %if.end22.update_state.preheader_crit_edge, label %if.end22.while.body_crit_edge

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end22.update_state.preheader_crit_edge:        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_state.preheader

update_state.preheader:                           ; preds = %if.end22.update_state.preheader_crit_edge, %while.body.update_state.preheader_crit_edge, %if.end.update_state.preheader_crit_edge, %entry.update_state.preheader_crit_edge
  br label %update_state

update_state:                                     ; preds = %atomic_cmpxchg.exit.update_state_crit_edge, %update_state.preheader
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add34 = add i32 %17, ptrtoint (ptr @cpu_hotplug_state to i32)
  %18 = inttoptr i32 %add34 to ptr
  %call.i.i77 = tail call zeroext i1 @__kasan_check_read(ptr noundef %18, i32 noundef 4) #10
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %20)
  %cmp36 = icmp eq i32 %20, 7
  br i1 %cmp36, label %do.end41, label %do.body53

do.end41:                                         ; preds = %update_state
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !58
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %add52 = add i32 %22, ptrtoint (ptr @cpu_hotplug_state to i32)
  %23 = inttoptr i32 %add52 to ptr
  %call.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef %23, i32 noundef 4) #10
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 9, ptr %23, align 4
  br label %if.end66

do.body53:                                        ; preds = %update_state
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %add61 = add i32 %26, ptrtoint (ptr @cpu_hotplug_state to i32)
  %27 = inttoptr i32 %add61 to ptr
  %call.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef %27, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %27, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body53
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 %20, i32 11, ptr elementtype(i32) %27) #10, !srcloc !60
  %asmresult.i.i.i = extractvalue { i32, i32 } %28, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %28, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  %cmp63.not = icmp eq i32 %asmresult3.i.i.i, %20
  br i1 %cmp63.not, label %atomic_cmpxchg.exit.if.end66_crit_edge, label %atomic_cmpxchg.exit.update_state_crit_edge

atomic_cmpxchg.exit.update_state_crit_edge:       ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_state

atomic_cmpxchg.exit.if.end66_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.end66:                                         ; preds = %atomic_cmpxchg.exit.if.end66_crit_edge, %do.end41
  ret i1 %cmp36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cpu_report_death() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !38) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  br label %do.body

do.body:                                          ; preds = %atomic_cmpxchg.exit.do.body_crit_edge, %entry
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @cpu_hotplug_state to i32)
  %6 = inttoptr i32 %add to ptr
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %6, i32 noundef 4) #10
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %8)
  %cmp.not = icmp eq i32 %8, 11
  %. = select i1 %cmp.not, i32 8, i32 7
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add14 = add i32 %10, ptrtoint (ptr @cpu_hotplug_state to i32)
  %11 = inttoptr i32 %add14 to ptr
  %call.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %11, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %11, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 %8, i32 %., ptr elementtype(i32) %11) #10, !srcloc !60
  %asmresult.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  %cmp16.not = icmp eq i32 %asmresult3.i.i.i, %8
  br i1 %cmp16.not, label %do.end17, label %atomic_cmpxchg.exit.do.body_crit_edge

atomic_cmpxchg.exit.do.body_crit_edge:            ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end17:                                         ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %13 = xor i1 %cmp.not, true
  ret i1 %13
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fork_idle(i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_cpu(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smpboot_thread_fn(ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ht1 = getelementptr inbounds %struct.smpboot_thread_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %ht1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ht1, align 4
  %status275 = getelementptr inbounds %struct.smpboot_thread_data, ptr %data, i32 0, i32 1
  %unpark = getelementptr inbounds %struct.smp_hotplug_thread, ptr %1, i32 0, i32 8
  %setup = getelementptr inbounds %struct.smp_hotplug_thread, ptr %1, i32 0, i32 5
  %thread_should_run = getelementptr inbounds %struct.smp_hotplug_thread, ptr %1, i32 0, i32 2
  %thread_fn = getelementptr inbounds %struct.smp_hotplug_thread, ptr %1, i32 0, i32 3
  %park = getelementptr inbounds %struct.smp_hotplug_thread, ptr %1, i32 0, i32 7
  br label %__here

__here:                                           ; preds = %__here.backedge, %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !38) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 212
  %6 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 ptrtoint (ptr blockaddress(@smpboot_thread_fn, %__here) to i32), ptr %task_state_change, align 4
  %7 = load ptr, ptr %task, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %7, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !62
  %9 = tail call i32 @llvm.read_register.i32(metadata !38) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !63
  %call64 = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %call64, label %__here116, label %if.end146

__here116:                                        ; preds = %__here
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %task_state_change120 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 212
  %15 = ptrtoint ptr %task_state_change120 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 ptrtoint (ptr blockaddress(@smpboot_thread_fn, %__here116) to i32), ptr %task_state_change120, align 4
  %16 = load ptr, ptr %task, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %16, align 128
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !64
  %18 = tail call i32 @llvm.read_register.i32(metadata !38) #10
  %and.i.i.i564 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i564 to ptr
  %preempt_count.i.i565 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i565 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i565, align 4
  %sub.i = add i32 %21, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i565, align 4
  %cleanup = getelementptr inbounds %struct.smp_hotplug_thread, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cleanup, align 4
  %tobool140.not = icmp eq ptr %23, null
  br i1 %tobool140.not, label %__here116.if.end145_crit_edge, label %land.lhs.true

__here116.if.end145_crit_edge:                    ; preds = %__here116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

land.lhs.true:                                    ; preds = %__here116
  %24 = ptrtoint ptr %status275 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status275, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not = icmp eq i32 %25, 0
  br i1 %cmp.not, label %land.lhs.true.if.end145_crit_edge, label %if.then141

land.lhs.true.if.end145_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

if.then141:                                       ; preds = %land.lhs.true
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i, label %if.then141.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

if.then141.cpu_online.exit_crit_edge:             ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %if.then141
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !50

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %if.then141.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %27, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i581 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i581
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i = icmp ne i32 %32, 0
  tail call void %23(i32 noundef %27, i1 noundef zeroext %tobool.i) #10
  br label %if.end145

if.end145:                                        ; preds = %cpu_online.exit, %land.lhs.true.if.end145_crit_edge, %__here116.if.end145_crit_edge
  tail call void @kfree(ptr noundef %data) #10
  ret i32 0

if.end146:                                        ; preds = %__here
  %call147 = tail call zeroext i1 @kthread_should_park() #10
  br i1 %call147, label %__here199, label %do.body254

__here199:                                        ; preds = %if.end146
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %task_state_change203 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 212
  %35 = ptrtoint ptr %task_state_change203 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 ptrtoint (ptr blockaddress(@smpboot_thread_fn, %__here199) to i32), ptr %task_state_change203, align 4
  %36 = load ptr, ptr %task, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 0, ptr %36, align 128
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  %38 = tail call i32 @llvm.read_register.i32(metadata !38) #10
  %and.i.i.i566 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i566 to ptr
  %preempt_count.i.i567 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i567 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i567, align 4
  %sub.i568 = add i32 %41, -1
  store volatile i32 %sub.i568, ptr %preempt_count.i.i567, align 4
  %42 = ptrtoint ptr %park to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %park, align 4
  %tobool223.not = icmp eq ptr %43, null
  br i1 %tobool223.not, label %__here199.if.end252_crit_edge, label %land.lhs.true224

__here199.if.end252_crit_edge:                    ; preds = %__here199
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end252

land.lhs.true224:                                 ; preds = %__here199
  %44 = ptrtoint ptr %status275 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status275, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp226 = icmp eq i32 %45, 1
  br i1 %cmp226, label %do.body228, label %land.lhs.true224.if.end252_crit_edge

land.lhs.true224.if.end252_crit_edge:             ; preds = %land.lhs.true224
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end252

do.body228:                                       ; preds = %land.lhs.true224
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data, align 4
  %cpu231 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %48 = ptrtoint ptr %cpu231 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu231, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp232.not = icmp eq i32 %47, %49
  br i1 %cmp232.not, label %do.end248, label %do.body240, !prof !50

do.body240:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/smpboot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 128, 0\0A.popsection", ""() #10, !srcloc !66
  unreachable

do.end248:                                        ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %43(i32 noundef %47) #10
  %50 = ptrtoint ptr %status275 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %status275, align 4
  br label %if.end252

if.end252:                                        ; preds = %do.end248, %land.lhs.true224.if.end252_crit_edge, %__here199.if.end252_crit_edge
  tail call void @kthread_parkme() #10
  br label %__here.backedge

do.body254:                                       ; preds = %if.end146
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data, align 4
  %cpu257 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %53 = ptrtoint ptr %cpu257 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu257, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp258.not = icmp eq i32 %52, %54
  br i1 %cmp258.not, label %do.end274, label %do.body266, !prof !50

do.body266:                                       ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/smpboot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 137, 0\0A.popsection", ""() #10, !srcloc !67
  unreachable

do.end274:                                        ; preds = %do.body254
  %55 = ptrtoint ptr %status275 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %status275, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %56, label %sw.epilog [
    i32 0, label %__here326
    i32 2, label %__here407
  ]

__here326:                                        ; preds = %do.end274
  %58 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task, align 8
  %task_state_change330 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 212
  %60 = ptrtoint ptr %task_state_change330 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 ptrtoint (ptr blockaddress(@smpboot_thread_fn, %__here326) to i32), ptr %task_state_change330, align 4
  %61 = load ptr, ptr %task, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 0, ptr %61, align 128
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !68
  %63 = tail call i32 @llvm.read_register.i32(metadata !38) #10
  %and.i.i.i569 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i569 to ptr
  %preempt_count.i.i570 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i570 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i570, align 4
  %sub.i571 = add i32 %66, -1
  store volatile i32 %sub.i571, ptr %preempt_count.i.i570, align 4
  %67 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %setup, align 4
  %tobool350.not = icmp eq ptr %68, null
  br i1 %tobool350.not, label %__here326.if.end354_crit_edge, label %if.then351

__here326.if.end354_crit_edge:                    ; preds = %__here326
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end354

if.then351:                                       ; preds = %__here326
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %data, align 4
  tail call void %68(i32 noundef %70) #10
  br label %if.end354

if.end354:                                        ; preds = %if.then351, %__here326.if.end354_crit_edge
  %71 = ptrtoint ptr %status275 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %status275, align 4
  br label %__here.backedge

__here407:                                        ; preds = %do.end274
  %72 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task, align 8
  %task_state_change411 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 212
  %74 = ptrtoint ptr %task_state_change411 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 ptrtoint (ptr blockaddress(@smpboot_thread_fn, %__here407) to i32), ptr %task_state_change411, align 4
  %75 = load ptr, ptr %task, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 0, ptr %75, align 128
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  %77 = tail call i32 @llvm.read_register.i32(metadata !38) #10
  %and.i.i.i572 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i572 to ptr
  %preempt_count.i.i573 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i573 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i573, align 4
  %sub.i574 = add i32 %80, -1
  store volatile i32 %sub.i574, ptr %preempt_count.i.i573, align 4
  %81 = ptrtoint ptr %unpark to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %unpark, align 4
  %tobool431.not = icmp eq ptr %82, null
  br i1 %tobool431.not, label %__here407.if.end435_crit_edge, label %if.then432

__here407.if.end435_crit_edge:                    ; preds = %__here407
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end435

if.then432:                                       ; preds = %__here407
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %data, align 4
  tail call void %82(i32 noundef %84) #10
  br label %if.end435

if.end435:                                        ; preds = %if.then432, %__here407.if.end435_crit_edge
  %85 = ptrtoint ptr %status275 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %status275, align 4
  br label %__here.backedge

sw.epilog:                                        ; preds = %do.end274
  %86 = ptrtoint ptr %thread_should_run to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %thread_should_run, align 4
  %call438 = tail call i32 %87(i32 noundef %52) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call438)
  %tobool439.not = icmp eq i32 %call438, 0
  br i1 %tobool439.not, label %do.body441, label %__here494

do.body441:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !70
  %88 = tail call i32 @llvm.read_register.i32(metadata !38) #10
  %and.i.i.i575 = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i575 to ptr
  %preempt_count.i.i576 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i576 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i576, align 4
  %sub.i577 = add i32 %91, -1
  store volatile i32 %sub.i577, ptr %preempt_count.i.i576, align 4
  tail call void @schedule() #10
  br label %__here.backedge

__here.backedge:                                  ; preds = %__here494, %do.body441, %if.end435, %if.end354, %if.end252
  br label %__here

__here494:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task, align 8
  %task_state_change498 = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 212
  %94 = ptrtoint ptr %task_state_change498 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 ptrtoint (ptr blockaddress(@smpboot_thread_fn, %__here494) to i32), ptr %task_state_change498, align 4
  %95 = load ptr, ptr %task, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile i32 0, ptr %95, align 128
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !71
  %97 = tail call i32 @llvm.read_register.i32(metadata !38) #10
  %and.i.i.i578 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i578 to ptr
  %preempt_count.i.i579 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %preempt_count.i.i579 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %preempt_count.i.i579, align 4
  %sub.i580 = add i32 %100, -1
  store volatile i32 %sub.i580, ptr %preempt_count.i.i579, align 4
  %101 = ptrtoint ptr %thread_fn to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %thread_fn, align 4
  %103 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %data, align 4
  tail call void %102(i32 noundef %104) #10
  br label %__here.backedge
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_set_per_cpu(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_task_inactive(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_park() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_parkme() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__ksymtab_smpboot_register_percpu_thread, !1, !"__ksymtab_smpboot_register_percpu_thread", i1 false, i1 false}
!1 = !{!"../kernel/smpboot.c", i32 310, i32 1}
!2 = !{ptr @__ksymtab_smpboot_unregister_percpu_thread, !3, !"__ksymtab_smpboot_unregister_percpu_thread", i1 false, i1 false}
!3 = !{!"../kernel/smpboot.c", i32 327, i32 1}
!4 = !{ptr @cpu_hotplug_state, !5, !"cpu_hotplug_state", i1 false, i1 false}
!5 = !{!"../kernel/smpboot.c", i32 329, i32 8}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/smpboot.c", i32 425, i32 2}
!8 = !{ptr @__pcpu_unique_idle_threads, !9, !"__pcpu_unique_idle_threads", i1 false, i1 false}
!9 = !{!"../kernel/smpboot.c", i32 28, i32 8}
!10 = !{ptr @idle_threads, !9, !"idle_threads", i1 false, i1 false}
!11 = !{ptr @__pcpu_unique_cpu_hotplug_state, !5, !"__pcpu_unique_cpu_hotplug_state", i1 false, i1 false}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/smpboot.c", i32 57, i32 4}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @idle_init._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @idle_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/smpboot.c", i32 82, i32 8}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @smpboot_threads_lock, !18, !"smpboot_threads_lock", i1 false, i1 false}
!21 = !{ptr @hotplug_threads, !22, !"hotplug_threads", i1 false, i1 false}
!22 = !{!"../kernel/smpboot.c", i32 81, i32 8}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../kernel/smpboot.c", i32 112, i32 3}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../kernel/smpboot.c", i32 115, i32 4}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../kernel/smpboot.c", i32 125, i32 4}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../kernel/smpboot.c", i32 142, i32 4}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../kernel/smpboot.c", i32 150, i32 4}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../kernel/smpboot.c", i32 162, i32 4}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2148487911, i64 2148487943, i64 2148487972, i64 2148488006, i64 2148488037, i64 2148488060}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i8 0, i8 2}
!52 = !{i64 2148575912}
!53 = !{i64 2148490376, i64 2148490408, i64 2148490437, i64 2148490471, i64 2148490502, i64 2148490525}
!54 = !{i64 2149621882}
!55 = !{i64 2148746221}
!56 = !{i64 993149, i64 993166, i64 993190, i64 993216, i64 993234}
!57 = !{i64 2148746591}
!58 = !{i64 2152841828}
!59 = !{i64 2148588204}
!60 = !{i64 971894, i64 971918, i64 971939, i64 971956, i64 971973}
!61 = !{i64 2148588430}
!62 = !{i64 2152782801}
!63 = !{i64 2152782992}
!64 = !{i64 2152787485}
!65 = !{i64 2152792026}
!66 = !{i64 2152796547, i64 2152797028, i64 2152796584, i64 2152796640, i64 2152796674, i64 2152796698, i64 2152796739, i64 2152796760, i64 2152796788, i64 2152796822}
!67 = !{i64 2152798246, i64 2152798727, i64 2152798283, i64 2152798339, i64 2152798373, i64 2152798397, i64 2152798438, i64 2152798459, i64 2152798487, i64 2152798521}
!68 = !{i64 2152804026}
!69 = !{i64 2152808567}
!70 = !{i64 2152808746}
!71 = !{i64 2152813287}
