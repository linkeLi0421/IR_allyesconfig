; ModuleID = '/llk/IR_all_yes/arch/arm/mm/kasan_init.c_pt.bc'
source_filename = "../arch/arm/mm/kasan_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.memblock = type { i8, i32, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.23 }
%struct.llist_node = type { ptr }
%union.anon.23 = type { i32 }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.25 }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.proc_info_list = type { i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@tmp_pgd_table = internal global [2048 x [2 x i32]] zeroinitializer, section ".init.data", align 16384
@swapper_pg_dir = external dso_local global [2048 x [2 x i32]], align 4
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@memblock = external dso_local global %struct.memblock, align 4
@arm_lowmem_limit = external dso_local global i32, align 4
@kasan_init._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 248, ptr null, ptr null }, align 1
@.str = private unnamed_addr constant [40 x i8] c"\016kasan: Skip highmem block at %pa-%pa\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"kasan_init\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"arch/arm/mm/kasan_init.c\00", align 1
@kasan_init._entry_ptr = internal global ptr @kasan_init._entry, section ".printk_index", align 4
@kasan_init._entry.3 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 253, ptr null, ptr null }, align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"\016kasan: Truncating shadow for memory block at %pa-%pa to lowmem region at %pa\0A\00", align 1
@kasan_init._entry_ptr.5 = internal global ptr @kasan_init._entry.3, section ".printk_index", align 4
@kasan_init._entry.6 = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 258, ptr null, ptr null }, align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"\016kasan: Skipping invalid memory block %pa-%pa (virtual %p-%p)\0A\00", align 1
@kasan_init._entry_ptr.8 = internal global ptr @kasan_init._entry.6, section ".printk_index", align 4
@kasan_early_shadow_pte = external dso_local global [1024 x i32], align 4
@kasan_early_shadow_page = external dso_local global [4096 x i8], align 1
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@kasan_init._entry.9 = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 289, ptr null, ptr null }, align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"\016kasan: Kernel address sanitizer initialized\0A\00", align 1
@kasan_init._entry_ptr.11 = internal global ptr @kasan_init._entry.9, section ".printk_index", align 4
@init_task = external dso_local local_unnamed_addr global %struct.task_struct, align 128
@tmp_pmd_table = dso_local local_unnamed_addr global [1 x i32] zeroinitializer, section ".bss..page_aligned", align 4096
@.str.12 = private unnamed_addr constant [54 x i8] c"%s failed to allocate shadow block for address 0x%lx\0A\00", align 1
@arm_dma_zone_size = external dso_local local_unnamed_addr global i32, align 4
@__func__.kasan_pmd_populate = private unnamed_addr constant [19 x i8] c"kasan_pmd_populate\00", align 1
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@.str.13 = private unnamed_addr constant [53 x i8] c"%s failed to allocate shadow page for address 0x%lx\0A\00", align 1
@__func__.kasan_pte_populate = private unnamed_addr constant [19 x i8] c"kasan_pte_populate\00", align 1
@create_mapping._entry = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 198, ptr null, ptr null }, align 1
@.str.14 = private unnamed_addr constant [74 x i8] c"\016kasan: Mapping kernel virtual memory block: %px-%px at shadow: %px-%px\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"create_mapping\00", align 1
@create_mapping._entry_ptr = internal global ptr @create_mapping._entry, section ".printk_index", align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @create_mapping._entry, ptr @create_mapping._entry_ptr, ptr @kasan_init._entry, ptr @kasan_init._entry.3, ptr @kasan_init._entry.6, ptr @kasan_init._entry.9, ptr @kasan_init._entry_ptr, ptr @kasan_init._entry_ptr.11, ptr @kasan_init._entry_ptr.5, ptr @kasan_init._entry_ptr.8], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @kasan_early_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #9, !srcloc !10
  %call1 = tail call ptr @lookup_processor_type(i32 noundef %0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %proc = getelementptr inbounds %struct.proc_info_list, ptr %call1, i32 0, i32 9
  %1 = load ptr, ptr %proc, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) @processor, ptr noundef align 4 dereferenceable(52) %1, i32 52, i1 false)
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  tail call fastcc void @kasan_pgd_populate(i32 noundef -1226833920, i32 noundef -1090519040, i1 noundef zeroext true) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_processor_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @kasan_pgd_populate(i32 noundef %addr, i32 noundef %end, i1 noundef zeroext %early) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i = lshr i32 %addr, 21
  %add.ptr.i = getelementptr [2 x i32], ptr %0, i32 %shr.i
  %sub8 = add i32 %end, -1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %pgdp.0 = phi ptr [ %add.ptr.i, %entry ], [ %incdec.ptr, %do.body.do.body_crit_edge ]
  %addr.addr.0 = phi i32 [ %addr, %entry ], [ %cond, %do.body.do.body_crit_edge ]
  %add = add i32 %addr.addr.0, 2097152
  %and = and i32 %add, -2097152
  %sub = add i32 %and, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub8)
  %cmp = icmp ult i32 %sub, %sub8
  %cond = select i1 %cmp, i32 %and, i32 %end
  tail call fastcc void @kasan_pmd_populate(ptr noundef %pgdp.0, i32 noundef %addr.addr.0, i32 noundef %cond, i1 noundef zeroext %early) #11
  %incdec.ptr = getelementptr [2 x i32], ptr %pgdp.0, i32 1
  %cmp13.not = icmp eq i32 %cond, %end
  br i1 %cmp13.not, label %do.end14, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end14:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @kasan_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %pa_start = alloca i32, align 4
  %pa_end = alloca i32, align 4
  %i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa_start) #7
  store i32 -1, ptr %pa_start, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa_end) #7
  store i32 -1, ptr %pa_end, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i) #7
  %call = tail call ptr @__memcpy(ptr noundef nonnull @tmp_pgd_table, ptr noundef nonnull @swapper_pg_dir, i32 noundef 16384) #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %2
  %3 = load ptr, ptr %arrayidx, align 4
  %switch_mm = getelementptr inbounds %struct.processor, ptr %3, i32 0, i32 8
  %4 = load ptr, ptr %switch_mm, align 4
  %call.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @tmp_pgd_table to i32)) #10
  tail call void %4(i32 noundef %call.i, ptr noundef nonnull @init_mm) #10
  %5 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !12
  %6 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %6, i32 4608) #7, !srcloc !13
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 0", "r,r,Ir,~{cc}"(i32 0, i32 %6, i32 9216) #7, !srcloc !14
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 0", "r,r,Ir,~{cc}"(i32 0, i32 %6, i32 18432) #7, !srcloc !15
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %5, i32 2097152) #7, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  tail call fastcc void @clear_pgds() #11
  %7 = load ptr, ptr @high_memory, align 4
  %8 = ptrtoint ptr %7 to i32
  %add = add i32 %8, 8388608
  %and = lshr i32 %add, 3
  %shr.i = and i32 %and, 535822336
  %9 = inttoptr i32 %shr.i to ptr
  %add.ptr.i = getelementptr i8, ptr %9, i32 -1627389952
  %call5 = tail call i32 @kasan_populate_early_shadow(ptr noundef %add.ptr.i, ptr noundef nonnull inttoptr (i32 -1090519040 to ptr)) #10
  store i64 0, ptr %i, align 8
  call void @__next_mem_range(ptr noundef nonnull %i, i32 noundef -1, i32 noundef 9, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef null, ptr noundef nonnull %pa_start, ptr noundef nonnull %pa_end, ptr noundef null) #10
  %10 = load i64, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %10)
  %cmp.not58 = icmp eq i64 %10, -1
  br i1 %cmp.not58, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %11 = load i32, ptr %pa_start, align 4
  %12 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %11, i32 -2130706432, i32 8454144) #9, !srcloc !19
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr %pa_end, align 4
  %15 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %14, i32 -2130706432, i32 8454144) #9, !srcloc !19
  %16 = load i32, ptr @arm_lowmem_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %16)
  %cmp8.not = icmp ult i32 %11, %16
  br i1 %cmp8.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %pa_start, ptr noundef nonnull %pa_end) #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp10 = icmp ugt i32 %14, %16
  br i1 %cmp10, label %do.end14, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %pa_start, ptr noundef nonnull %pa_end, ptr noundef nonnull @arm_lowmem_limit) #12
  %17 = load i32, ptr @arm_lowmem_limit, align 4
  %18 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %17, i32 -2130706432, i32 8454144) #9, !srcloc !19
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %if.end.if.end18_crit_edge
  %end.0.in = phi i32 [ %18, %do.end14 ], [ %15, %if.end.if.end18_crit_edge ]
  %end.0 = inttoptr i32 %end.0.in to ptr
  %cmp19.not = icmp ult ptr %13, %end.0
  br i1 %cmp19.not, label %if.end26, label %do.end23

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %pa_start, ptr noundef nonnull %pa_end, ptr noundef %13, ptr noundef %end.0) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @create_mapping(ptr noundef %13, ptr noundef nonnull %end.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end23, %do.end
  call void @__next_mem_range(ptr noundef nonnull %i, i32 noundef -1, i32 noundef 9, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef null, ptr noundef nonnull %pa_start, ptr noundef nonnull %pa_end, ptr noundef null) #10
  %19 = load i64, ptr %i, align 8
  %cmp.not = icmp eq i64 %19, -1
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  call fastcc void @create_mapping(ptr noundef nonnull inttoptr (i32 -1090519040 to ptr), ptr noundef nonnull inttoptr (i32 -1073741824 to ptr)) #11
  store i64 0, ptr %i, align 8
  br label %for.body32

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %for.end
  %storemerge59.off0 = phi i32 [ 0, %for.end ], [ %extract.t, %for.body32.for.body32_crit_edge ]
  %20 = shl nuw nsw i32 %storemerge59.off0, 12
  %conv = add nuw nsw i32 %20, -1226833920
  %arrayidx34 = getelementptr [1024 x i32], ptr @kasan_early_shadow_pte, i32 0, i32 %storemerge59.off0
  %21 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add35 = add i32 %21, lshr (i32 sub (i32 ptrtoint (ptr @kasan_early_shadow_page to i32), i32 -1073741824), i32 12)
  %shl = shl i32 %add35, 12
  %22 = load i32, ptr @pgprot_kernel, align 4
  %or36 = or i32 %22, %shl
  %or37 = or i32 %or36, 640
  call void @set_pte_at(ptr noundef nonnull @init_mm, i32 noundef %conv, ptr noundef %arrayidx34, i32 noundef %or37) #10
  %23 = load i64, ptr %i, align 8
  %inc = add i64 %23, 1
  store i64 %inc, ptr %i, align 8
  %cmp31 = icmp ult i64 %inc, 512
  %extract.t = trunc i64 %inc to i32
  br i1 %cmp31, label %for.body32.for.body32_crit_edge, label %for.end39

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body32

for.end39:                                        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #8
  %24 = load i32, ptr %cpu, align 4
  %arrayidx42 = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %24
  %25 = load ptr, ptr %arrayidx42, align 4
  %switch_mm43 = getelementptr inbounds %struct.processor, ptr %25, i32 0, i32 8
  %26 = load ptr, ptr %switch_mm43, align 4
  %call.i57 = call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @swapper_pg_dir to i32)) #10
  call void %26(i32 noundef %call.i57, ptr noundef nonnull @init_mm) #10
  %27 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !12
  %28 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %28, i32 4608) #7, !srcloc !13
  call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 0", "r,r,Ir,~{cc}"(i32 0, i32 %28, i32 9216) #7, !srcloc !14
  call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 0", "r,r,Ir,~{cc}"(i32 0, i32 %28, i32 18432) #7, !srcloc !15
  call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %27, i32 2097152) #7, !srcloc !16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  %call45 = call ptr @__memset(ptr noundef nonnull @kasan_early_shadow_page, i32 noundef 0, i32 noundef 4096) #10
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  store i32 0, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 191), align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa_end) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa_start) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @clear_pgds() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %start.addr.05 = phi i32 [ -1226833920, %entry ], [ %add, %do.body.do.body_crit_edge ]
  %0 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i.i = lshr exact i32 %start.addr.05, 21
  %add.ptr.i.i = getelementptr [2 x i32], ptr %0, i32 %shr.i.i
  store i32 0, ptr %add.ptr.i.i, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %arrayidx2 = getelementptr [2 x i32], ptr %1, i32 %shr.i.i, i32 1
  store i32 0, ptr %arrayidx2, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %add.ptr.i.i4 = getelementptr [2 x i32], ptr %2, i32 %shr.i.i
  %3 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %add.ptr.i.i4, i32 %3, i32 1073741824) #7, !srcloc !20
  %add = add nuw nsw i32 %start.addr.05, 2097152
  %4 = or i32 %start.addr.05, 2097151
  %5 = icmp ult i32 %4, -1090519041
  br i1 %5, label %do.body.do.body_crit_edge, label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.end:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kasan_populate_early_shadow(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__next_mem_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @create_mapping(ptr noundef %start, ptr noundef %end) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %start to i32
  %shr.i = lshr i32 %0, 3
  %1 = inttoptr i32 %shr.i to ptr
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1627389952
  %2 = ptrtoint ptr %end to i32
  %shr.i1 = lshr i32 %2, 3
  %3 = inttoptr i32 %shr.i1 to ptr
  %add.ptr.i2 = getelementptr i8, ptr %3, i32 -1627389952
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %start, ptr noundef %end, ptr noundef %add.ptr.i, ptr noundef %add.ptr.i2) #12
  %4 = ptrtoint ptr %add.ptr.i to i32
  %and = and i32 %4, -1073745920
  %5 = ptrtoint ptr %add.ptr.i2 to i32
  %add = add nuw nsw i32 %5, 4095
  %and3 = and i32 %add, -4096
  tail call fastcc void @kasan_pgd_populate(i32 noundef %and, i32 noundef %and3, i1 noundef zeroext false) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @kasan_alloc_block() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @arm_dma_zone_size, align 4
  %1 = add i32 %0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1342177279, i32 %1)
  %2 = icmp ult i32 %1, 1342177279
  %add = add i32 %0, -1073741824
  %cond = select i1 %2, i32 %add, i32 -1
  %call = tail call i32 @__virt_to_phys(i32 noundef %cond) #10
  %call1 = tail call ptr @memblock_alloc_try_nid(i32 noundef 4096, i32 noundef 4096, i32 noundef %call, i32 noundef 1, i32 noundef -1) #10
  ret ptr %call1
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @kasan_pmd_populate(ptr noundef %pudp, i32 noundef %addr, i32 noundef %end, i1 noundef zeroext %early) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr %pudp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  br i1 %early, label %if.then.if.end_crit_edge, label %cond.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.end:                                         ; preds = %if.then
  %call2 = tail call fastcc ptr @kasan_alloc_block() #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then4:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.kasan_pmd_populate, i32 noundef %addr) #13
  unreachable

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %if.then.if.end_crit_edge
  %cond20 = phi ptr [ %call2, %cond.end.if.end_crit_edge ], [ @kasan_early_shadow_pte, %if.then.if.end_crit_edge ]
  %1 = ptrtoint ptr %cond20 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %1) #10
  %add.i.i = add i32 %call.i, 2048
  %or.i.i = or i32 %add.i.i, 17
  store i32 %or.i.i, ptr %pudp, align 4
  %add1.i.i = add i32 %or.i.i, 1024
  %arrayidx2.i.i = getelementptr i32, ptr %pudp, i32 1
  store i32 %add1.i.i, ptr %arrayidx2.i.i, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %pudp, i32 %2, i32 1073741824) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %3 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %pudp, i32 %3, i32 1073741824) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  tail call fastcc void @kasan_pte_populate(ptr noundef %pudp, i32 noundef %addr, i32 noundef %end, i1 noundef zeroext %early) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @kasan_pte_populate(ptr nocapture noundef readonly %pmdp, i32 noundef %addr, i32 noundef %end, i1 noundef zeroext %early) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr %pmdp, align 4
  %and1.i.i = and i32 %0, -4096
  %1 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i, i32 -2130706432, i32 8454144) #9, !srcloc !19
  %2 = inttoptr i32 %1 to ptr
  %shr.i.i = lshr i32 %addr, 12
  %and.i.i = and i32 %shr.i.i, 511
  %add.ptr.i = getelementptr i32, ptr %2, i32 %and.i.i
  br label %do.body

do.body:                                          ; preds = %do.cond25.do.body_crit_edge, %entry
  %ptep.0 = phi ptr [ %add.ptr.i, %entry ], [ %incdec.ptr, %do.cond25.do.body_crit_edge ]
  %addr.addr.0 = phi i32 [ %addr, %entry ], [ %add, %do.cond25.do.body_crit_edge ]
  %add = add i32 %addr.addr.0, 4096
  %3 = load volatile i32, ptr %ptep.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool16.not = icmp eq i32 %3, 0
  br i1 %early, label %do.end14, label %do.end

do.end:                                           ; preds = %do.body
  br i1 %tobool16.not, label %if.end, label %do.end.do.cond25_crit_edge

do.end.do.cond25_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond25

if.end:                                           ; preds = %do.end
  %call5 = tail call fastcc ptr @kasan_alloc_block() #11
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.kasan_pte_populate, i32 noundef %addr.addr.0) #13
  unreachable

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call ptr @__memset(ptr noundef nonnull %call5, i32 noundef 0, i32 noundef 4096) #10
  %4 = ptrtoint ptr %call5 to i32
  %sub = add i32 %4, 1073741824
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add1040 = shl i32 %5, 12
  %shr41 = add i32 %sub, %add1040
  %shl = and i32 %shr41, -4096
  %6 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %6, %shl
  %or11 = or i32 %or, 512
  br label %if.end23

do.end14:                                         ; preds = %do.body
  br i1 %tobool16.not, label %if.then17, label %do.end14.cleanup27_crit_edge

do.end14.cleanup27_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup27

if.then17:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add18 = add i32 %7, lshr (i32 sub (i32 ptrtoint (ptr @kasan_early_shadow_page to i32), i32 -1073741824), i32 12)
  %shl19 = shl i32 %add18, 12
  %or20 = or i32 %shl19, 579
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end8
  %entry1.0 = phi i32 [ %or20, %if.then17 ], [ %or11, %if.end8 ]
  tail call void @set_pte_at(ptr noundef nonnull @init_mm, i32 noundef %addr.addr.0, ptr noundef %ptep.0, i32 noundef %entry1.0) #10
  br label %do.cond25

do.cond25:                                        ; preds = %if.end23, %do.end.do.cond25_crit_edge
  %incdec.ptr = getelementptr i32, ptr %ptep.0, i32 1
  %cmp.not = icmp eq i32 %add, %end
  br i1 %cmp.not, label %do.cond25.cleanup27_crit_edge, label %do.cond25.do.body_crit_edge

do.cond25.do.body_crit_edge:                      ; preds = %do.cond25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.cond25.cleanup27_crit_edge:                    ; preds = %do.cond25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup27

cleanup27:                                        ; preds = %do.cond25.cleanup27_crit_edge, %do.end14.cleanup27_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { cold nobuiltin "no-builtins" }
attributes #12 = { cold nobuiltin nounwind "no-builtins" }
attributes #13 = { cold nobuiltin noreturn nounwind "no-builtins" }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!10 = !{i64 2153293174}
!11 = !{!"auto-init"}
!12 = !{i64 2150653109}
!13 = !{i64 2150644456, i64 2150644469}
!14 = !{i64 2150646734, i64 2150646747}
!15 = !{i64 2150649015, i64 2150649028}
!16 = !{i64 2150653405, i64 2150653418}
!17 = !{i64 2150657276}
!18 = !{i64 2150657361}
!19 = !{i64 2148830128, i64 2148830151, i64 2148830183, i64 2148830215, i64 2148830253, i64 2148830283}
!20 = !{i64 2150765623, i64 2150765636}
!21 = !{i64 2150758962, i64 2150758975}
!22 = !{i64 2150765128}
