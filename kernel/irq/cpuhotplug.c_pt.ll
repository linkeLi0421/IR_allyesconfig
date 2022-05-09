; ModuleID = '/llk/IR_all_yes/kernel/irq/cpuhotplug.c_pt.bc'
source_filename = "../kernel/irq/cpuhotplug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@irq_migrate_all_off_this_cpu._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@irq_migrate_all_off_this_cpu.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpuhotplug\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"irq_migrate_all_off_this_cpu\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kernel/irq/cpuhotplug.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IRQ %u: no longer affine to CPU%u\0A\00", [61 x i8] zeroinitializer }, align 32
@migrate_one_irq.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"migrate_one_irq\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IRQ %u: Unable to migrate away\0A\00", [32 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@migrate_one_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@migrate_one_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014IRQ%u: set affinity failed(%d).\0A\00", [61 x i8] zeroinitializer }, align 32
@migrate_one_irq._entry_ptr = internal global ptr @migrate_one_irq._entry, section ".printk_index", align 4
@irq_needs_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\014Eff. affinity %*pbl of IRQ %u contains only offline CPUs after offlining CPU %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irq_needs_fixup\00", [16 x i8] zeroinitializer }, align 32
@irq_needs_fixup._entry_ptr = internal global ptr @irq_needs_fixup._entry, section ".printk_index", align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 169, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 68, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 134, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private constant [27 x i8] c"../kernel/irq/cpuhotplug.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 45, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 108, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @irq_needs_fixup._entry, ptr @irq_needs_fixup._entry_ptr, ptr @migrate_one_irq._entry, ptr @migrate_one_irq._entry_ptr, ptr @irq_migrate_all_off_this_cpu._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @migrate_one_irq._rs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_migrate_all_off_this_cpu._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @migrate_one_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @migrate_one_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_needs_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_migrate_all_off_this_cpu() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @irq_get_next_irq(i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %0 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %0)
  %cmp21 = icmp ult i32 %call, %0
  br i1 %cmp21, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %entry.for.body_crit_edge
  %irq.022 = phi i32 [ %call14, %if.end13.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call1 = tail call ptr @irq_to_desc(i32 noundef %irq.022) #5
  %lock = getelementptr inbounds %struct.irq_desc, ptr %call1, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %call2 = tail call fastcc zeroext i1 @migrate_one_irq(ptr noundef %call1)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  br i1 %call2, label %do.body, label %for.body.if.end13_crit_edge

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irq_migrate_all_off_this_cpu.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irq_migrate_all_off_this_cpu, %land.lhs.true)) #5
          to label %if.end13 [label %land.lhs.true], !srcloc !35

land.lhs.true:                                    ; preds = %do.body
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @irq_migrate_all_off_this_cpu._rs, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end13_crit_edge, label %if.then11

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %1 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @irq_migrate_all_off_this_cpu.descriptor, ptr noundef nonnull @.str.4, i32 noundef %irq.022, i32 noundef %4) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true.if.end13_crit_edge, %do.body, %for.body.if.end13_crit_edge
  %add = add nuw i32 %irq.022, 1
  %call14 = tail call i32 @irq_get_next_irq(i32 noundef %add) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %5 = load i32, ptr @nr_irqs, align 4
  %cmp = icmp ult i32 %call14, %5
  br i1 %cmp, label %if.end13.for.body_crit_edge, label %if.end13.for.end_crit_edge

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end13.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_get_next_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @migrate_one_irq(ptr noundef %desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %irq_set_affinity = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %irq_set_affinity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_set_affinity, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %lor.lhs.false.do.body_crit_edge, label %if.end12

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @migrate_one_irq.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@migrate_one_irq, %if.then11)) #5
          to label %cleanup [label %if.then11], !srcloc !35

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @migrate_one_irq.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.6, i32 noundef %5) #5
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = and i32 %9, 4196352
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %10)
  %11 = icmp eq i32 %10, 4194304
  br i1 %11, label %lor.lhs.false16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false16:                                  ; preds = %if.end12
  %12 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu2.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %effective_affinity.i.i = getelementptr inbounds %struct.irq_common_data, ptr %7, i32 0, i32 4
  %17 = ptrtoint ptr %effective_affinity.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %effective_affinity.i.i, align 4
  %call.i.i.i = tail call i32 @_find_first_bit_be(ptr noundef %18, i32 noundef %16) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %16)
  %cmp4.i.i.i = icmp eq i32 %call.i.i.i, %16
  br i1 %cmp4.i.i.i, label %if.then.i, label %lor.lhs.false16.if.end.i_crit_edge

lor.lhs.false16.if.end.i_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %common.i, align 4
  %affinity.i.i = getelementptr inbounds %struct.irq_common_data, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %affinity.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %affinity.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false16.if.end.i_crit_edge
  %m.0.i = phi ptr [ %22, %if.then.i ], [ %18, %lor.lhs.false16.if.end.i_crit_edge ]
  %call5.i = tail call i32 @cpumask_any_but(ptr noundef %m.0.i, i32 noundef %15) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %23)
  %cmp.i = icmp ult i32 %call5.i, %23
  br i1 %cmp.i, label %if.end.i.i26.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.end.i.i26.i:                                   ; preds = %if.end.i
  %call6.i.i.i = tail call i32 @_find_first_and_bit(ptr noundef %m.0.i, ptr noundef nonnull @__cpu_online_mask, i32 noundef %23) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i.i.i, i32 %24)
  %cmp7.not.i = icmp ult i32 %call6.i.i.i, %24
  br i1 %cmp7.not.i, label %if.end.i.i26.i.if.end10.i_crit_edge, label %irq_needs_fixup.exit.thread

if.end.i.i26.i.if.end10.i_crit_edge:              ; preds = %if.end.i.i26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

irq_needs_fixup.exit.thread:                      ; preds = %if.end.i.i26.i
  call void @__sanitizer_cov_trace_pc() #7
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq.i, align 4
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %24, ptr noundef %m.0.i, i32 noundef %26, i32 noundef %15) #9
  br label %if.end20

if.end10.i:                                       ; preds = %if.end.i.i26.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %15)
  %cmp.not.i.i.i.i = icmp ugt i32 %27, %15
  br i1 %cmp.not.i.i.i.i, label %if.end10.i.irq_needs_fixup.exit_crit_edge, label %land.rhs.i.i.i.i

if.end10.i.irq_needs_fixup.exit_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_needs_fixup.exit

land.rhs.i.i.i.i:                                 ; preds = %if.end10.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.irq_needs_fixup.exit_crit_edge, label %if.then.i.i.i.i, !prof !36

land.rhs.i.i.i.i.irq_needs_fixup.exit_crit_edge:  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_needs_fixup.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %irq_needs_fixup.exit

irq_needs_fixup.exit:                             ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.irq_needs_fixup.exit_crit_edge, %if.end10.i.irq_needs_fixup.exit_crit_edge
  %div3.i.i.i = lshr i32 %15, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %m.0.i, i32 %div3.i.i.i
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i28.i = and i32 %15, 31
  %30 = shl nuw i32 1, %and.i.i28.i
  %31 = and i32 %29, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i93.not = icmp eq i32 %31, 0
  br i1 %tobool.i93.not, label %irq_needs_fixup.exit.cleanup_crit_edge, label %irq_needs_fixup.exit.if.end20_crit_edge

irq_needs_fixup.exit.if.end20_crit_edge:          ; preds = %irq_needs_fixup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

irq_needs_fixup.exit.cleanup_crit_edge:           ; preds = %irq_needs_fixup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %irq_needs_fixup.exit.if.end20_crit_edge, %irq_needs_fixup.exit.thread
  %32 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %common.i, align 4
  %affinity.i = getelementptr inbounds %struct.irq_common_data, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %affinity.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %affinity.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i.i = tail call i32 @_find_first_and_bit(ptr noundef %35, ptr noundef nonnull @__cpu_online_mask, i32 noundef %36) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %37 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i.i, i32 %37)
  %cmp.not = icmp ult i32 %call6.i.i, %37
  br i1 %cmp.not, label %if.end20.if.end36_crit_edge, label %if.then32

if.end20.if.end36_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then32:                                        ; preds = %if.end20
  %38 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %common.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %and.i98 = and i32 %41, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool.i99.not = icmp eq i32 %and.i98, 0
  br i1 %tobool.i99.not, label %if.then32.if.end36_crit_edge, label %if.then34

if.then32.if.end36_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %41, 8388608
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.i, ptr %39, align 4
  tail call void @irq_shutdown_and_deactivate(ptr noundef %desc) #5
  br label %cleanup

if.end36:                                         ; preds = %if.then32.if.end36_crit_edge, %if.end20.if.end36_crit_edge
  %affinity.1 = phi ptr [ %35, %if.end20.if.end36_crit_edge ], [ @__cpu_online_mask, %if.then32.if.end36_crit_edge ]
  %43 = xor i1 %cmp.not, true
  %call37 = tail call i32 @irq_do_set_affinity(ptr noundef %irq_data.i, ptr noundef %affinity.1, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end36.cleanup_crit_edge, label %if.then39

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then39:                                        ; preds = %if.end36
  %call40 = tail call i32 @___ratelimit(ptr noundef nonnull @migrate_one_irq._rs, ptr noundef nonnull @.str.5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then39.cleanup_crit_edge, label %do.end45

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end45:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  %irq47 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %irq47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq47, align 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %45, i32 noundef %call37) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.then39.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.then34, %irq_needs_fixup.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then11, %do.body
  %retval.0 = phi i1 [ false, %if.then34 ], [ false, %if.then11 ], [ %43, %if.end36.cleanup_crit_edge ], [ false, %do.end45 ], [ false, %if.then39.cleanup_crit_edge ], [ false, %do.body ], [ false, %irq_needs_fixup.exit.cleanup_crit_edge ], [ false, %if.end12.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_affinity_online_cpu(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_lock_sparse() #5
  %call = tail call i32 @irq_get_next_irq(i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %0 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %0)
  %cmp8 = icmp ult i32 %call, %0
  br i1 %cmp8, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %div3.i.i.i = lshr i32 %cpu, 5
  %and.i.i.i = and i32 %cpu, 31
  %1 = shl nuw i32 1, %and.i.i.i
  br label %for.body

for.body:                                         ; preds = %irq_restore_affinity_of_irq.exit.for.body_crit_edge, %for.body.lr.ph
  %irq.09 = phi i32 [ %call, %for.body.lr.ph ], [ %call3, %irq_restore_affinity_of_irq.exit.for.body_crit_edge ]
  %call1 = tail call ptr @irq_to_desc(i32 noundef %irq.09) #5
  %lock = getelementptr inbounds %struct.irq_desc, ptr %call1, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %irq_data.i.i = getelementptr inbounds %struct.irq_desc, ptr %call1, i32 0, i32 1
  %common.i.i = getelementptr inbounds %struct.irq_desc, ptr %call1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i.i, align 4
  %affinity.i.i = getelementptr inbounds %struct.irq_common_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %affinity.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %affinity.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %and.i.i = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.irq_restore_affinity_of_irq.exit_crit_edge, label %lor.lhs.false.i

for.body.irq_restore_affinity_of_irq.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_restore_affinity_of_irq.exit

lor.lhs.false.i:                                  ; preds = %for.body
  %action.i = getelementptr inbounds %struct.irq_desc, ptr %call1, i32 0, i32 4
  %8 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %action.i, align 64
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.irq_restore_affinity_of_irq.exit_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.irq_restore_affinity_of_irq.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_restore_affinity_of_irq.exit

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %chip.i.i = getelementptr inbounds %struct.irq_desc, ptr %call1, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip.i.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.irq_restore_affinity_of_irq.exit_crit_edge, label %lor.lhs.false6.i

lor.lhs.false3.i.irq_restore_affinity_of_irq.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_restore_affinity_of_irq.exit

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %12, %cpu
  br i1 %cmp.not.i.i.i.i, label %lor.lhs.false6.i.cpumask_test_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

lor.lhs.false6.i.cpumask_test_cpu.exit.i_crit_edge: ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpumask_test_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %lor.lhs.false6.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !36

land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpumask_test_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cpumask_test_cpu.exit.i

cpumask_test_cpu.exit.i:                          ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, %lor.lhs.false6.i.cpumask_test_cpu.exit.i_crit_edge
  %arrayidx.i.i.i = getelementptr i32, ptr %5, i32 %div3.i.i.i
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %15 = and i32 %14, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not.i = icmp eq i32 %15, 0
  br i1 %tobool8.not.i, label %cpumask_test_cpu.exit.i.irq_restore_affinity_of_irq.exit_crit_edge, label %if.end.i

cpumask_test_cpu.exit.i.irq_restore_affinity_of_irq.exit_crit_edge: ; preds = %cpumask_test_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_restore_affinity_of_irq.exit

if.end.i:                                         ; preds = %cpumask_test_cpu.exit.i
  %16 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %common.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %and.i32.i = and i32 %19, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.i33.not.i = icmp eq i32 %and.i32.i, 0
  br i1 %tobool.i33.not.i, label %if.end12.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i = tail call i32 @irq_startup(ptr noundef %call1, i1 noundef zeroext true, i1 noundef zeroext false) #5
  br label %irq_restore_affinity_of_irq.exit

if.end12.i:                                       ; preds = %if.end.i
  %and.i35.i = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35.i)
  %tobool.i36.not.i = icmp eq i32 %and.i35.i, 0
  br i1 %tobool.i36.not.i, label %if.end12.i.if.then16.i_crit_edge, label %lor.lhs.false14.i

if.end12.i.if.then16.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i

lor.lhs.false14.i:                                ; preds = %if.end12.i
  %call.i.i = tail call zeroext i1 @housekeeping_enabled(i32 noundef 128) #5
  br i1 %call.i.i, label %if.end.i.i, label %lor.lhs.false14.i.irq_restore_affinity_of_irq.exit_crit_edge

lor.lhs.false14.i.irq_restore_affinity_of_irq.exit_crit_edge: ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_restore_affinity_of_irq.exit

if.end.i.i:                                       ; preds = %lor.lhs.false14.i
  %call1.i.i = tail call ptr @housekeeping_cpumask(i32 noundef 128) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %21 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %common.i.i, align 4
  %effective_affinity.i.i.i = getelementptr inbounds %struct.irq_common_data, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %effective_affinity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %effective_affinity.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @__bitmap_subset(ptr noundef %24, ptr noundef %call1.i.i, i32 noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end5.i.i, label %if.end.i.i.irq_restore_affinity_of_irq.exit_crit_edge

if.end.i.i.irq_restore_affinity_of_irq.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_restore_affinity_of_irq.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %cpu)
  %cmp.not.i.i.i.i.i = icmp ugt i32 %25, %cpu
  br i1 %cmp.not.i.i.i.i.i, label %if.end5.i.i.hk_should_isolate.exit.i_crit_edge, label %land.rhs.i.i.i.i.i

if.end5.i.i.hk_should_isolate.exit.i_crit_edge:   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hk_should_isolate.exit.i

land.rhs.i.i.i.i.i:                               ; preds = %if.end5.i.i
  %.b37.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i, label %land.rhs.i.i.i.i.i.hk_should_isolate.exit.i_crit_edge, label %if.then.i.i.i.i.i, !prof !36

land.rhs.i.i.i.i.i.hk_should_isolate.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hk_should_isolate.exit.i

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %hk_should_isolate.exit.i

hk_should_isolate.exit.i:                         ; preds = %if.then.i.i.i.i.i, %land.rhs.i.i.i.i.i.hk_should_isolate.exit.i_crit_edge, %if.end5.i.i.hk_should_isolate.exit.i_crit_edge
  %arrayidx.i.i.i.i = getelementptr i32, ptr %call1.i.i, i32 %div3.i.i.i
  %26 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %28 = and i32 %27, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool7.i.not.i = icmp eq i32 %28, 0
  br i1 %tobool7.i.not.i, label %hk_should_isolate.exit.i.irq_restore_affinity_of_irq.exit_crit_edge, label %hk_should_isolate.exit.i.if.then16.i_crit_edge

hk_should_isolate.exit.i.if.then16.i_crit_edge:   ; preds = %hk_should_isolate.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i

hk_should_isolate.exit.i.irq_restore_affinity_of_irq.exit_crit_edge: ; preds = %hk_should_isolate.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_restore_affinity_of_irq.exit

if.then16.i:                                      ; preds = %hk_should_isolate.exit.i.if.then16.i_crit_edge, %if.end12.i.if.then16.i_crit_edge
  %call17.i = tail call i32 @irq_set_affinity_locked(ptr noundef %irq_data.i.i, ptr noundef %5, i1 noundef zeroext false) #5
  br label %irq_restore_affinity_of_irq.exit

irq_restore_affinity_of_irq.exit:                 ; preds = %if.then16.i, %hk_should_isolate.exit.i.irq_restore_affinity_of_irq.exit_crit_edge, %if.end.i.i.irq_restore_affinity_of_irq.exit_crit_edge, %lor.lhs.false14.i.irq_restore_affinity_of_irq.exit_crit_edge, %if.then10.i, %cpumask_test_cpu.exit.i.irq_restore_affinity_of_irq.exit_crit_edge, %lor.lhs.false3.i.irq_restore_affinity_of_irq.exit_crit_edge, %lor.lhs.false.i.irq_restore_affinity_of_irq.exit_crit_edge, %for.body.irq_restore_affinity_of_irq.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  %add = add nuw i32 %irq.09, 1
  %call3 = tail call i32 @irq_get_next_irq(i32 noundef %add) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %29 = load i32, ptr @nr_irqs, align 4
  %cmp = icmp ult i32 %call3, %29
  br i1 %cmp, label %irq_restore_affinity_of_irq.exit.for.body_crit_edge, label %irq_restore_affinity_of_irq.exit.for.end_crit_edge

irq_restore_affinity_of_irq.exit.for.end_crit_edge: ; preds = %irq_restore_affinity_of_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

irq_restore_affinity_of_irq.exit.for.body_crit_edge: ; preds = %irq_restore_affinity_of_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %irq_restore_affinity_of_irq.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @irq_unlock_sparse() #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_lock_sparse() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_unlock_sparse() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_shutdown_and_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_do_set_affinity(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_any_but(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_and_bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_startup(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity_locked(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @housekeeping_enabled(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @housekeeping_cpumask(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/irq/cpuhotplug.c", i32 169, i32 4}
!2 = !{ptr @irq_migrate_all_off_this_cpu._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @irq_migrate_all_off_this_cpu.descriptor, !1, !"descriptor", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/irq/cpuhotplug.c", i32 68, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @migrate_one_irq.__UNIQUE_ID_ddebug228, !9, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!12 = !{ptr @migrate_one_irq._rs, !13, !"_rs", i1 false, i1 false}
!13 = !{!"../kernel/irq/cpuhotplug.c", i32 134, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @migrate_one_irq._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @migrate_one_irq._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/irq/cpuhotplug.c", i32 45, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @irq_needs_fixup._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @irq_needs_fixup._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2148722061, i64 2148722066, i64 2148722079, i64 2148722123, i64 2148722157, i64 2148722178}
!36 = !{!"branch_weights", i32 2000, i32 1}
