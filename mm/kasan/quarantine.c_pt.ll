; ModuleID = '/llk/IR_all_yes/mm/kasan/quarantine.c_pt.bc'
source_filename = "../mm/kasan/quarantine.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qlist_head = type { ptr, ptr, i32, i8 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.srcu_data = type { [2 x i32], [2 x i32], [112 x i8], %struct.spinlock, %struct.rcu_segcblist, i32, i32, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i32, i32, ptr, [24 x i8] }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], %struct.atomic_t, [4 x i32], i8 }
%struct.callback_head = type { ptr, ptr }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.kmem_cache = type { ptr, i32, i32, i32, i32, %struct.reciprocal_value, i32, i32, i32, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, %struct.kobject, i32, ptr, %struct.kasan_cache, i32, i32, [1 x ptr] }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.kmem_cache_order_objects = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kasan_cache = type { i32, i32, i8 }
%struct.page = type { i32, %union.anon.11, %union.anon.53, %struct.atomic_t, i32 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.53 = type { %struct.atomic_t }
%struct.slab = type { i32, %union.anon, ptr, ptr, %union.anon.0, i32, %struct.atomic_t, i32 }
%union.anon = type { %struct.list_head }
%union.anon.0 = type { i32 }

@cpu_quarantine = weak dso_local global %struct.qlist_head zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@quarantine_lock = internal global %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, align 4
@quarantine_size = internal global i32 0, align 4
@global_quarantine = internal unnamed_addr global [1024 x %struct.qlist_head] zeroinitializer, align 4
@quarantine_tail = internal unnamed_addr global i32 0, align 4
@quarantine_batch_size = internal global i32 0, align 4
@quarantine_head = internal unnamed_addr global i32 0, align 4
@quarantine_max_size = internal global i32 0, align 4
@remove_cache_srcu = internal global %struct.srcu_struct { [3 x %struct.srcu_node] zeroinitializer, [3 x ptr] zeroinitializer, %struct.mutex zeroinitializer, %struct.spinlock { %union.anon.13 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.mutex zeroinitializer, i32 0, i32 0, i32 -1, i32 0, i32 0, ptr @remove_cache_srcu_srcu_data, i32 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @remove_cache_srcu, i64 700), ptr getelementptr (i8, ptr @remove_cache_srcu, i64 700) }, ptr null, %struct.lockdep_map { ptr getelementptr (i8, ptr @remove_cache_srcu, i64 696), [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.4, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 0, i8 0, i32 0, i32 0 } }, align 4
@.str = private unnamed_addr constant [22 x i8] c"mm/kasan/quarantine.c\00", align 1
@__initcall__kmod_quarantine__305_385_kasan_cpu_quarantine_init7 = internal global ptr @kasan_cpu_quarantine_init, section ".initcall7.init", align 4
@__pcpu_unique_cpu_quarantine = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_remove_cache_srcu_srcu_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@remove_cache_srcu_srcu_data = weak dso_local global %struct.srcu_data zeroinitializer, section ".data..percpu", align 128
@.str.1 = private unnamed_addr constant [16 x i8] c"quarantine_lock\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"remove_cache_srcu.lock\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"(remove_cache_srcu.work).work\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"mm/kasan/quarantine.c:100\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"remove_cache_srcu\00", align 1
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", align 1
@init_on_free = external dso_local global %struct.static_key_true, align 4
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/srcu.h\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"mm/kasan:online\00", align 1
@kasan_cpu_quarantine_init._entry = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 382, ptr null, ptr null }, align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"\013kasan cpu quarantine register failed [%d]\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"kasan_cpu_quarantine_init\00", align 1
@kasan_cpu_quarantine_init._entry_ptr = internal global ptr @kasan_cpu_quarantine_init._entry, section ".printk_index", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_quarantine__305_385_kasan_cpu_quarantine_init7, ptr @kasan_cpu_quarantine_init._entry, ptr @kasan_cpu_quarantine_init._entry_ptr], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local zeroext i1 @kasan_quarantine_put(ptr noundef %cache, ptr noundef %object) local_unnamed_addr #0 align 64 {
entry:
  %call = tail call ptr @kasan_get_free_meta(ptr noundef %cache, ptr noundef %object) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %do.body1

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !9
  %and.i = and i32 %0, 128
  %tobool10.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.not, label %if.then11, label %do.body15

if.then11:                                        ; preds = %do.body1
  tail call void @trace_hardirqs_off() #11
  br label %do.body15

do.body15:                                        ; preds = %if.then11, %do.body1
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i147 = and i32 %1, -16384
  %2 = inttoptr i32 %and.i147 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, ptrtoint (ptr @cpu_quarantine to i32)
  %5 = inttoptr i32 %add to ptr
  %offline = getelementptr inbounds %struct.qlist_head, ptr %5, i32 0, i32 3
  %6 = load i8, ptr %offline, align 4, !range !10
  %tobool21.not = icmp eq i8 %6, 0
  br i1 %tobool21.not, label %if.end55, label %do.body23

do.body23:                                        ; preds = %do.body15
  br i1 %tobool10.not, label %if.then33, label %do.body35

if.then33:                                        ; preds = %do.body23
  tail call void @trace_hardirqs_on() #11
  br label %do.body35

do.body35:                                        ; preds = %if.then33, %do.body23
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !11
  %and.i.i = and i32 %7, 128
  %tobool43.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool43.not, label %if.then47, label %do.end50, !prof !12

if.then47:                                        ; preds = %do.body35
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %do.body35
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !13
  br label %cleanup

if.end55:                                         ; preds = %do.body15
  %size = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 3
  %8 = load i32, ptr %size, align 4
  %9 = load ptr, ptr %5, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %qlist_put.exit, label %if.else.i, !prof !12

if.else.i:                                        ; preds = %if.end55
  %tail.i = getelementptr inbounds %struct.qlist_head, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %tail.i, align 4
  br label %qlist_put.exit

qlist_put.exit:                                   ; preds = %if.else.i, %if.end55
  %.sink.i = phi ptr [ %10, %if.else.i ], [ %5, %if.end55 ]
  store ptr %call, ptr %.sink.i, align 4
  %tail2.i = getelementptr inbounds %struct.qlist_head, ptr %5, i32 0, i32 1
  store ptr %call, ptr %tail2.i, align 4
  store ptr null, ptr %call, align 4
  %bytes.i = getelementptr inbounds %struct.qlist_head, ptr %5, i32 0, i32 2
  %11 = load i32, ptr %bytes.i, align 4
  %add.i = add i32 %11, %8
  store i32 %add.i, ptr %bytes.i, align 4
  %cmp56 = icmp ugt i32 %add.i, 1048576
  br i1 %cmp56, label %if.then64, label %do.body97, !prof !12

if.then64:                                        ; preds = %qlist_put.exit
  %12 = load ptr, ptr %5, align 4
  %tobool.not.i.i149 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i149, label %qlist_move_all.exit, label %return.sink.split.i, !prof !12

return.sink.split.i:                              ; preds = %if.then64
  %temp.sroa.9.0.copyload = load ptr, ptr %tail2.i, align 4
  %temp.sroa.20.0.copyload = load i32, ptr %offline, align 4
  store ptr null, ptr %tail2.i, align 4
  store ptr null, ptr %5, align 4
  store i32 0, ptr %bytes.i, align 4
  br label %qlist_move_all.exit

qlist_move_all.exit:                              ; preds = %return.sink.split.i, %if.then64
  %temp.sroa.9.1 = phi ptr [ null, %if.then64 ], [ %temp.sroa.9.0.copyload, %return.sink.split.i ]
  %temp.sroa.14.1 = phi i32 [ 0, %if.then64 ], [ %add.i, %return.sink.split.i ]
  %temp.sroa.20.1 = phi i32 [ 0, %if.then64 ], [ %temp.sroa.20.0.copyload, %return.sink.split.i ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @quarantine_lock) #11
  %13 = load i32, ptr @quarantine_size, align 4
  %add71 = add i32 %13, %temp.sroa.14.1
  store volatile i32 %add71, ptr @quarantine_size, align 4
  %14 = load i32, ptr @quarantine_tail, align 4
  %arrayidx76 = getelementptr [1024 x %struct.qlist_head], ptr @global_quarantine, i32 0, i32 %14
  br i1 %tobool.not.i.i149, label %qlist_move_all.exit.qlist_move_all.exit167_crit_edge, label %if.end.i155, !prof !12

qlist_move_all.exit.qlist_move_all.exit167_crit_edge: ; preds = %qlist_move_all.exit
  %bytes78.phi.trans.insert = getelementptr [1024 x %struct.qlist_head], ptr @global_quarantine, i32 0, i32 %14, i32 2
  %.pre = load i32, ptr %bytes78.phi.trans.insert, align 4
  br label %qlist_move_all.exit167

if.end.i155:                                      ; preds = %qlist_move_all.exit
  %15 = load ptr, ptr %arrayidx76, align 4
  %tobool.not.i18.i154 = icmp eq ptr %15, null
  br i1 %tobool.not.i18.i154, label %if.then3.i158, label %if.end4.i164

if.then3.i158:                                    ; preds = %if.end.i155
  store ptr %12, ptr %arrayidx76, align 4
  %temp.sroa.9.0.arrayidx76.sroa_idx = getelementptr inbounds i8, ptr %arrayidx76, i32 4
  store ptr %temp.sroa.9.1, ptr %temp.sroa.9.0.arrayidx76.sroa_idx, align 4
  %temp.sroa.14.0.arrayidx76.sroa_idx = getelementptr inbounds i8, ptr %arrayidx76, i32 8
  store i32 %temp.sroa.14.1, ptr %temp.sroa.14.0.arrayidx76.sroa_idx, align 4
  %temp.sroa.20.0.arrayidx76.sroa_idx = getelementptr inbounds i8, ptr %arrayidx76, i32 12
  store i32 %temp.sroa.20.1, ptr %temp.sroa.20.0.arrayidx76.sroa_idx, align 4
  br label %qlist_move_all.exit167

if.end4.i164:                                     ; preds = %if.end.i155
  %tail.i159 = getelementptr [1024 x %struct.qlist_head], ptr @global_quarantine, i32 0, i32 %14, i32 1
  %16 = load ptr, ptr %tail.i159, align 4
  store ptr %12, ptr %16, align 4
  store ptr %temp.sroa.9.1, ptr %tail.i159, align 4
  %bytes7.i162 = getelementptr [1024 x %struct.qlist_head], ptr @global_quarantine, i32 0, i32 %14, i32 2
  %17 = load i32, ptr %bytes7.i162, align 4
  %add.i163 = add i32 %17, %temp.sroa.14.1
  store i32 %add.i163, ptr %bytes7.i162, align 4
  br label %qlist_move_all.exit167

qlist_move_all.exit167:                           ; preds = %if.end4.i164, %if.then3.i158, %qlist_move_all.exit.qlist_move_all.exit167_crit_edge
  %18 = phi i32 [ %.pre, %qlist_move_all.exit.qlist_move_all.exit167_crit_edge ], [ %temp.sroa.14.1, %if.then3.i158 ], [ %add.i163, %if.end4.i164 ]
  %19 = load volatile i32, ptr @quarantine_batch_size, align 4
  %cmp83.not = icmp ult i32 %18, %19
  br i1 %cmp83.not, label %if.end95, label %if.then85

if.then85:                                        ; preds = %qlist_move_all.exit167
  %add86 = add i32 %14, 1
  %cmp87 = icmp eq i32 %add86, 1024
  %spec.store.select = select i1 %cmp87, i32 0, i32 %add86
  %20 = load i32, ptr @quarantine_head, align 4
  %cmp91.not = icmp eq i32 %spec.store.select, %20
  br i1 %cmp91.not, label %if.end95, label %if.then93

if.then93:                                        ; preds = %if.then85
  store i32 %spec.store.select, ptr @quarantine_tail, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.then85, %qlist_move_all.exit167
  tail call void @_raw_spin_unlock(ptr noundef nonnull @quarantine_lock) #11
  br label %do.body97

do.body97:                                        ; preds = %if.end95, %qlist_put.exit
  br i1 %tobool10.not, label %if.then106, label %do.body108

if.then106:                                       ; preds = %do.body97
  tail call void @trace_hardirqs_on() #11
  br label %do.body108

do.body108:                                       ; preds = %if.then106, %do.body97
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !11
  %and.i.i169 = and i32 %21, 128
  %tobool116.not = icmp eq i32 %and.i.i169, 0
  br i1 %tobool116.not, label %if.then125, label %do.end128, !prof !12

if.then125:                                       ; preds = %do.body108
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end128

do.end128:                                        ; preds = %if.then125, %do.body108
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !13
  br label %cleanup

cleanup:                                          ; preds = %do.end128, %do.end50, %entry
  %retval.0 = phi i1 [ false, %do.end50 ], [ true, %do.end128 ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kasan_get_free_meta(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @kasan_quarantine_reduce() local_unnamed_addr #0 align 64 {
entry:
  %to_free = alloca %struct.qlist_head, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %to_free) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %to_free, i8 0, i32 16, i1 false)
  %0 = load volatile i32, ptr @quarantine_size, align 4
  %1 = load volatile i32, ptr @quarantine_max_size, align 4
  %cmp.not = icmp ugt i32 %0, %1
  br i1 %cmp.not, label %if.end, label %cleanup, !prof !12

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @remove_cache_srcu) #11
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @remove_cache_srcu, i32 0, i32 16)) #11
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @quarantine_lock) #11
  %2 = load volatile i32, ptr @_totalram_pages, align 4
  %3 = shl i32 %2, 7
  %div85 = and i32 %3, 134217600
  %4 = load volatile i32, ptr @__num_online_cpus, align 4
  %mul = shl i32 %4, 20
  %5 = tail call i32 @llvm.usub.sat.i32(i32 %div85, i32 %mul)
  store volatile i32 %5, ptr @quarantine_max_size, align 4
  store volatile i32 1048576, ptr @quarantine_batch_size, align 4
  %6 = load i32, ptr @quarantine_size, align 4
  %cmp43 = icmp ugt i32 %6, %5
  br i1 %cmp43, label %if.then51, label %do.body67, !prof !14

if.then51:                                        ; preds = %if.end
  %7 = load i32, ptr @quarantine_head, align 4
  %arrayidx = getelementptr [1024 x %struct.qlist_head], ptr @global_quarantine, i32 0, i32 %7
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %qlist_move_all.exit, label %return.sink.split.i, !prof !12

return.sink.split.i:                              ; preds = %if.then51
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %to_free, ptr noundef align 4 dereferenceable(16) %arrayidx, i32 16, i1 false) #12
  %tail.i.i = getelementptr [1024 x %struct.qlist_head], ptr @global_quarantine, i32 0, i32 %7, i32 1
  store ptr null, ptr %tail.i.i, align 4
  store ptr null, ptr %arrayidx, align 4
  %bytes.i.i = getelementptr [1024 x %struct.qlist_head], ptr @global_quarantine, i32 0, i32 %7, i32 2
  %bytes.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.qlist_head, ptr %to_free, i32 0, i32 2
  %.pre.pre = load i32, ptr %bytes.phi.trans.insert.phi.trans.insert, align 4
  store i32 0, ptr %bytes.i.i, align 4
  br label %qlist_move_all.exit

qlist_move_all.exit:                              ; preds = %return.sink.split.i, %if.then51
  %9 = phi i32 [ 0, %if.then51 ], [ %.pre.pre, %return.sink.split.i ]
  %sub57 = sub i32 %6, %9
  store volatile i32 %sub57, ptr @quarantine_size, align 4
  %inc = add i32 %7, 1
  %cmp62 = icmp eq i32 %inc, 1024
  %spec.store.select = select i1 %cmp62, i32 0, i32 %inc
  store i32 %spec.store.select, ptr @quarantine_head, align 4
  br label %do.body67

do.body67:                                        ; preds = %qlist_move_all.exit, %if.end
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @quarantine_lock, i32 noundef %call9) #11
  call fastcc void @qlist_free_all(ptr noundef nonnull %to_free, ptr noundef null) #13
  tail call fastcc void @srcu_read_unlock(i32 noundef %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body67, %entry
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %to_free) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @qlist_free_all(ptr nocapture noundef %q, ptr noundef %cache) unnamed_addr #0 align 64 {
entry:
  %0 = load ptr, ptr %q, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %cleanup, label %while.cond.preheader, !prof !12

while.cond.preheader:                             ; preds = %entry
  %tobool3.not = icmp eq ptr %cache, null
  br label %while.body

while.body:                                       ; preds = %cond.end, %while.cond.preheader
  %qlink.013 = phi ptr [ %0, %while.cond.preheader ], [ %13, %cond.end ]
  br i1 %tobool3.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %while.body
  %1 = load ptr, ptr @mem_map, align 4
  %2 = ptrtoint ptr %qlink.013 to i32
  %sub.i.i.i = add i32 %2, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %3 = getelementptr %struct.page, ptr %1, i32 %shr.i.i.i, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %and.i.i.i.i = and i32 %4, 1
  %tobool.not.i.i3.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i3.i.i, label %if.end.i.i.i.i, label %if.then.i.i4.i.i, !prof !14

if.then.i.i4.i.i:                                 ; preds = %cond.false
  %sub.i.i.i.i = add i32 %4, -1
  br label %virt_to_folio.exit.i.i

if.end.i.i.i.i:                                   ; preds = %cond.false
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %1, i32 %shr.i.i.i
  %5 = ptrtoint ptr %add.ptr.i.i.i to i32
  br label %virt_to_folio.exit.i.i

virt_to_folio.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then.i.i4.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i4.i.i ], [ %5, %if.end.i.i.i.i ]
  %6 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i.i = and i32 %8, 1
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %qlink_to_cache.exit, label %if.then.i.i.i.i, !prof !14

if.then.i.i.i.i:                                  ; preds = %virt_to_folio.exit.i.i
  %9 = inttoptr i32 %retval.0.i.i.i.i to ptr
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.6) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !15
  unreachable

qlink_to_cache.exit:                              ; preds = %virt_to_folio.exit.i.i
  %10 = load volatile i32, ptr %6, align 4
  %11 = and i32 %10, 512
  %tobool.i.not.i.i = icmp eq i32 %11, 0
  %call..i.i = select i1 %tobool.i.not.i.i, ptr null, ptr %6
  %slab_cache.i = getelementptr inbounds %struct.slab, ptr %call..i.i, i32 0, i32 2
  %12 = load ptr, ptr %slab_cache.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %qlink_to_cache.exit, %while.body
  %cond = phi ptr [ %12, %qlink_to_cache.exit ], [ %cache, %while.body ]
  %13 = load ptr, ptr %qlink.013, align 4
  tail call fastcc void @qlink_free(ptr noundef nonnull %qlink.013, ptr noundef %cond) #13
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %while.end, label %while.body

while.end:                                        ; preds = %cond.end
  %tail.i = getelementptr inbounds %struct.qlist_head, ptr %q, i32 0, i32 1
  store ptr null, ptr %tail.i, align 4
  store ptr null, ptr %q, align 4
  %bytes.i = getelementptr inbounds %struct.qlist_head, ptr %q, i32 0, i32 2
  store i32 0, ptr %bytes.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @srcu_read_unlock(i32 noundef %idx) unnamed_addr #4 align 64 {
entry:
  %tobool = icmp ugt i32 %idx, 1
  %.b1 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %lnot4 = xor i1 %.b1, true
  %0 = select i1 %tobool, i1 %lnot4, i1 false
  br i1 %0, label %if.then, label %if.end28, !prof !12

if.then:                                          ; preds = %entry
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then, %entry
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @remove_cache_srcu, i32 0, i32 16)) #13
  tail call void @__srcu_read_unlock(ptr noundef nonnull @remove_cache_srcu, i32 noundef %idx) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @kasan_quarantine_remove_cache(ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  %to_free.sroa.0 = alloca ptr, align 4
  %to_free.sroa.7 = alloca ptr, align 4
  %to_free.sroa.10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %to_free.sroa.0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %to_free.sroa.7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %to_free.sroa.10)
  store ptr null, ptr %to_free.sroa.0, align 4
  store ptr null, ptr %to_free.sroa.7, align 4
  store i32 0, ptr %to_free.sroa.10, align 4
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @per_cpu_remove_cache, ptr noundef %cache, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #11
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @quarantine_lock) #11
  %size.i = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %flags.066 = phi i32 [ %call, %entry ], [ %flags.1, %for.inc ]
  %i.064 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %arrayidx = getelementptr [1024 x %struct.qlist_head], ptr @global_quarantine, i32 0, i32 %i.064
  %0 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %for.inc, label %if.end.i

if.end.i:                                         ; preds = %for.body
  %tail.i.i = getelementptr [1024 x %struct.qlist_head], ptr @global_quarantine, i32 0, i32 %i.064, i32 1
  store ptr null, ptr %tail.i.i, align 4
  store ptr null, ptr %arrayidx, align 4
  %bytes.i.i = getelementptr [1024 x %struct.qlist_head], ptr @global_quarantine, i32 0, i32 %i.064, i32 2
  store i32 0, ptr %bytes.i.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end7.i, %if.end.i
  %curr.028.i = phi ptr [ %0, %if.end.i ], [ %1, %if.end7.i ]
  %1 = load ptr, ptr %curr.028.i, align 4
  %2 = load ptr, ptr @mem_map, align 4
  %3 = ptrtoint ptr %curr.028.i to i32
  %sub.i.i.i.i = add i32 %3, 1073741824
  %shr.i.i.i.i = lshr i32 %sub.i.i.i.i, 12
  %4 = getelementptr %struct.page, ptr %2, i32 %shr.i.i.i.i, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %and.i.i.i.i.i = and i32 %5, 1
  %tobool.not.i.i3.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i3.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i4.i.i.i, !prof !14

if.then.i.i4.i.i.i:                               ; preds = %while.body.i
  %sub.i.i.i.i.i = add i32 %5, -1
  br label %virt_to_folio.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %while.body.i
  %add.ptr.i.i.i.i = getelementptr %struct.page, ptr %2, i32 %shr.i.i.i.i
  %6 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  br label %virt_to_folio.exit.i.i.i

virt_to_folio.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %if.then.i.i4.i.i.i
  %retval.0.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %if.then.i.i4.i.i.i ], [ %6, %if.end.i.i.i.i.i ]
  %7 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  %8 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %and.i.i.i.i.i.i = and i32 %9, 1
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %qlink_to_cache.exit.i, label %if.then.i.i.i.i.i, !prof !14

if.then.i.i.i.i.i:                                ; preds = %virt_to_folio.exit.i.i.i
  %10 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.6) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !15
  unreachable

qlink_to_cache.exit.i:                            ; preds = %virt_to_folio.exit.i.i.i
  %11 = load volatile i32, ptr %7, align 4
  %12 = and i32 %11, 512
  %tobool.i.not.i.i.i = icmp eq i32 %12, 0
  %call..i.i.i = select i1 %tobool.i.not.i.i.i, ptr null, ptr %7
  %slab_cache.i.i = getelementptr inbounds %struct.slab, ptr %call..i.i.i, i32 0, i32 2
  %13 = load ptr, ptr %slab_cache.i.i, align 4
  %cmp.i = icmp eq ptr %13, %cache
  br i1 %cmp.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %qlink_to_cache.exit.i
  %14 = load i32, ptr %size.i, align 4
  %to_free.sroa.0.0.to_free.sroa.0.0.to_free.sroa.0.0. = load ptr, ptr %to_free.sroa.0, align 4
  %tobool.not.i.i.i = icmp eq ptr %to_free.sroa.0.0.to_free.sroa.0.0.to_free.sroa.0.0., null
  br i1 %tobool.not.i.i.i, label %if.end7.i, label %if.end7.sink.split.i, !prof !12

if.else.i:                                        ; preds = %qlink_to_cache.exit.i
  %size6.i = getelementptr inbounds %struct.kmem_cache, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %size6.i, align 4
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i.i19.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i19.i, label %if.end7.i, label %if.end7.sink.split.i, !prof !12

if.end7.sink.split.i:                             ; preds = %if.else.i, %if.then5.i
  %tail.i.sink33.i = phi ptr [ %to_free.sroa.7, %if.then5.i ], [ %tail.i.i, %if.else.i ]
  %bytes.i.sink32.ph.i = phi ptr [ %to_free.sroa.10, %if.then5.i ], [ %bytes.i.i, %if.else.i ]
  %.sink31.ph.i = phi i32 [ %14, %if.then5.i ], [ %15, %if.else.i ]
  %17 = load ptr, ptr %tail.i.sink33.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end7.sink.split.i, %if.else.i, %if.then5.i
  %.sink.i22.sink.i = phi ptr [ %to_free.sroa.0, %if.then5.i ], [ %arrayidx, %if.else.i ], [ %17, %if.end7.sink.split.i ]
  %tail.i.sink.i = phi ptr [ %to_free.sroa.7, %if.then5.i ], [ %tail.i.i, %if.else.i ], [ %tail.i.sink33.i, %if.end7.sink.split.i ]
  %bytes.i.sink32.i = phi ptr [ %to_free.sroa.10, %if.then5.i ], [ %bytes.i.i, %if.else.i ], [ %bytes.i.sink32.ph.i, %if.end7.sink.split.i ]
  %.sink31.i = phi i32 [ %14, %if.then5.i ], [ %15, %if.else.i ], [ %.sink31.ph.i, %if.end7.sink.split.i ]
  store ptr %curr.028.i, ptr %.sink.i22.sink.i, align 4
  store ptr %curr.028.i, ptr %tail.i.sink.i, align 4
  store ptr null, ptr %curr.028.i, align 4
  %18 = load i32, ptr %bytes.i.sink32.i, align 4
  %add.i25.i = add i32 %18, %.sink31.i
  store i32 %add.i25.i, ptr %bytes.i.sink32.i, align 4
  %tobool2.not.i = icmp eq ptr %1, null
  br i1 %tobool2.not.i, label %qlist_move_cache.exit, label %while.body.i

qlist_move_cache.exit:                            ; preds = %if.end7.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @quarantine_lock, i32 noundef %flags.066) #11
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 344, i32 noundef 0) #11
  %call.i = tail call i32 @__cond_resched() #11
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @quarantine_lock) #11
  br label %for.inc

for.inc:                                          ; preds = %qlist_move_cache.exit, %for.body
  %flags.1 = phi i32 [ %flags.066, %for.body ], [ %call21, %qlist_move_cache.exit ]
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %do.body24, label %for.body

do.body24:                                        ; preds = %for.inc
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @quarantine_lock, i32 noundef %flags.1) #11
  %to_free.sroa.0.0.to_free.sroa.0.0.to_free.sroa.0.0.60 = load ptr, ptr %to_free.sroa.0, align 4
  %tobool.not.i.i38 = icmp eq ptr %to_free.sroa.0.0.to_free.sroa.0.0.to_free.sroa.0.0.60, null
  br i1 %tobool.not.i.i38, label %qlist_free_all.exit, label %while.cond.preheader.i, !prof !12

while.cond.preheader.i:                           ; preds = %do.body24
  %tobool3.not.i = icmp eq ptr %cache, null
  br label %while.body.i39

while.body.i39:                                   ; preds = %cond.end.i, %while.cond.preheader.i
  %qlink.013.i = phi ptr [ %to_free.sroa.0.0.to_free.sroa.0.0.to_free.sroa.0.0.60, %while.cond.preheader.i ], [ %31, %cond.end.i ]
  br i1 %tobool3.not.i, label %cond.false.i, label %cond.end.i

cond.false.i:                                     ; preds = %while.body.i39
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %qlink.013.i to i32
  %sub.i.i.i.i40 = add i32 %20, 1073741824
  %shr.i.i.i.i41 = lshr i32 %sub.i.i.i.i40, 12
  %21 = getelementptr %struct.page, ptr %19, i32 %shr.i.i.i.i41, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %and.i.i.i.i.i42 = and i32 %22, 1
  %tobool.not.i.i3.i.i.i43 = icmp eq i32 %and.i.i.i.i.i42, 0
  br i1 %tobool.not.i.i3.i.i.i43, label %if.end.i.i.i.i.i47, label %if.then.i.i4.i.i.i45, !prof !14

if.then.i.i4.i.i.i45:                             ; preds = %cond.false.i
  %sub.i.i.i.i.i44 = add i32 %22, -1
  br label %virt_to_folio.exit.i.i.i51

if.end.i.i.i.i.i47:                               ; preds = %cond.false.i
  %add.ptr.i.i.i.i46 = getelementptr %struct.page, ptr %19, i32 %shr.i.i.i.i41
  %23 = ptrtoint ptr %add.ptr.i.i.i.i46 to i32
  br label %virt_to_folio.exit.i.i.i51

virt_to_folio.exit.i.i.i51:                       ; preds = %if.end.i.i.i.i.i47, %if.then.i.i4.i.i.i45
  %retval.0.i.i.i.i.i48 = phi i32 [ %sub.i.i.i.i.i44, %if.then.i.i4.i.i.i45 ], [ %23, %if.end.i.i.i.i.i47 ]
  %24 = inttoptr i32 %retval.0.i.i.i.i.i48 to ptr
  %25 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %26 = load volatile i32, ptr %25, align 4
  %and.i.i.i.i.i.i49 = and i32 %26, 1
  %tobool.not.i.i.i.i.i50 = icmp eq i32 %and.i.i.i.i.i.i49, 0
  br i1 %tobool.not.i.i.i.i.i50, label %qlink_to_cache.exit.i56, label %if.then.i.i.i.i.i52, !prof !14

if.then.i.i.i.i.i52:                              ; preds = %virt_to_folio.exit.i.i.i51
  %27 = inttoptr i32 %retval.0.i.i.i.i.i48 to ptr
  tail call void @dump_page(ptr noundef %27, ptr noundef nonnull @.str.6) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !15
  unreachable

qlink_to_cache.exit.i56:                          ; preds = %virt_to_folio.exit.i.i.i51
  %28 = load volatile i32, ptr %24, align 4
  %29 = and i32 %28, 512
  %tobool.i.not.i.i.i53 = icmp eq i32 %29, 0
  %call..i.i.i54 = select i1 %tobool.i.not.i.i.i53, ptr null, ptr %24
  %slab_cache.i.i55 = getelementptr inbounds %struct.slab, ptr %call..i.i.i54, i32 0, i32 2
  %30 = load ptr, ptr %slab_cache.i.i55, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %qlink_to_cache.exit.i56, %while.body.i39
  %cond.i = phi ptr [ %30, %qlink_to_cache.exit.i56 ], [ %cache, %while.body.i39 ]
  %31 = load ptr, ptr %qlink.013.i, align 4
  tail call fastcc void @qlink_free(ptr noundef nonnull %qlink.013.i, ptr noundef %cond.i) #11
  %tobool2.not.i57 = icmp eq ptr %31, null
  br i1 %tobool2.not.i57, label %qlist_free_all.exit, label %while.body.i39

qlist_free_all.exit:                              ; preds = %cond.end.i, %do.body24
  tail call void @synchronize_srcu(ptr noundef nonnull @remove_cache_srcu) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %to_free.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %to_free.sroa.7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %to_free.sroa.10)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal void @per_cpu_remove_cache(ptr noundef %arg) #0 align 64 {
entry:
  %to_free.sroa.0 = alloca ptr, align 4
  %to_free.sroa.7 = alloca ptr, align 4
  %to_free.sroa.10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %to_free.sroa.0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %to_free.sroa.7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %to_free.sroa.10)
  store ptr null, ptr %to_free.sroa.0, align 4
  store ptr null, ptr %to_free.sroa.7, align 4
  store i32 0, ptr %to_free.sroa.10, align 4
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %2
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @cpu_quarantine to i32)
  %4 = inttoptr i32 %add to ptr
  %5 = load ptr, ptr %4, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %qlist_free_all.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.qlist_head, ptr %4, i32 0, i32 1
  store ptr null, ptr %tail.i.i, align 4
  store ptr null, ptr %4, align 4
  %bytes.i.i = getelementptr inbounds %struct.qlist_head, ptr %4, i32 0, i32 2
  store i32 0, ptr %bytes.i.i, align 4
  %size.i = getelementptr inbounds %struct.kmem_cache, ptr %arg, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end7.i, %if.end.i
  %curr.028.i = phi ptr [ %5, %if.end.i ], [ %6, %if.end7.i ]
  %6 = load ptr, ptr %curr.028.i, align 4
  %7 = load ptr, ptr @mem_map, align 4
  %8 = ptrtoint ptr %curr.028.i to i32
  %sub.i.i.i.i = add i32 %8, 1073741824
  %shr.i.i.i.i = lshr i32 %sub.i.i.i.i, 12
  %9 = getelementptr %struct.page, ptr %7, i32 %shr.i.i.i.i, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i.i = and i32 %10, 1
  %tobool.not.i.i3.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i3.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i4.i.i.i, !prof !14

if.then.i.i4.i.i.i:                               ; preds = %while.body.i
  %sub.i.i.i.i.i = add i32 %10, -1
  br label %virt_to_folio.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %while.body.i
  %add.ptr.i.i.i.i = getelementptr %struct.page, ptr %7, i32 %shr.i.i.i.i
  %11 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  br label %virt_to_folio.exit.i.i.i

virt_to_folio.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %if.then.i.i4.i.i.i
  %retval.0.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %if.then.i.i4.i.i.i ], [ %11, %if.end.i.i.i.i.i ]
  %12 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %and.i.i.i.i.i.i = and i32 %14, 1
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %qlink_to_cache.exit.i, label %if.then.i.i.i.i.i, !prof !14

if.then.i.i.i.i.i:                                ; preds = %virt_to_folio.exit.i.i.i
  %15 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.6) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !15
  unreachable

qlink_to_cache.exit.i:                            ; preds = %virt_to_folio.exit.i.i.i
  %16 = load volatile i32, ptr %12, align 4
  %17 = and i32 %16, 512
  %tobool.i.not.i.i.i = icmp eq i32 %17, 0
  %call..i.i.i = select i1 %tobool.i.not.i.i.i, ptr null, ptr %12
  %slab_cache.i.i = getelementptr inbounds %struct.slab, ptr %call..i.i.i, i32 0, i32 2
  %18 = load ptr, ptr %slab_cache.i.i, align 4
  %cmp.i = icmp eq ptr %18, %arg
  br i1 %cmp.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %qlink_to_cache.exit.i
  %19 = load i32, ptr %size.i, align 4
  %to_free.sroa.0.0.to_free.sroa.0.0.to_free.sroa.0.0. = load ptr, ptr %to_free.sroa.0, align 4
  %tobool.not.i.i.i = icmp eq ptr %to_free.sroa.0.0.to_free.sroa.0.0.to_free.sroa.0.0., null
  br i1 %tobool.not.i.i.i, label %if.end7.i, label %if.end7.sink.split.i, !prof !12

if.else.i:                                        ; preds = %qlink_to_cache.exit.i
  %size6.i = getelementptr inbounds %struct.kmem_cache, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %size6.i, align 4
  %21 = load ptr, ptr %4, align 4
  %tobool.not.i.i19.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i19.i, label %if.end7.i, label %if.end7.sink.split.i, !prof !12

if.end7.sink.split.i:                             ; preds = %if.else.i, %if.then5.i
  %tail.i.sink33.i = phi ptr [ %to_free.sroa.7, %if.then5.i ], [ %tail.i.i, %if.else.i ]
  %bytes.i.sink32.ph.i = phi ptr [ %to_free.sroa.10, %if.then5.i ], [ %bytes.i.i, %if.else.i ]
  %.sink31.ph.i = phi i32 [ %19, %if.then5.i ], [ %20, %if.else.i ]
  %22 = load ptr, ptr %tail.i.sink33.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end7.sink.split.i, %if.else.i, %if.then5.i
  %.sink.i22.sink.i = phi ptr [ %to_free.sroa.0, %if.then5.i ], [ %4, %if.else.i ], [ %22, %if.end7.sink.split.i ]
  %tail.i.sink.i = phi ptr [ %to_free.sroa.7, %if.then5.i ], [ %tail.i.i, %if.else.i ], [ %tail.i.sink33.i, %if.end7.sink.split.i ]
  %bytes.i.sink32.i = phi ptr [ %to_free.sroa.10, %if.then5.i ], [ %bytes.i.i, %if.else.i ], [ %bytes.i.sink32.ph.i, %if.end7.sink.split.i ]
  %.sink31.i = phi i32 [ %19, %if.then5.i ], [ %20, %if.else.i ], [ %.sink31.ph.i, %if.end7.sink.split.i ]
  store ptr %curr.028.i, ptr %.sink.i22.sink.i, align 4
  store ptr %curr.028.i, ptr %tail.i.sink.i, align 4
  store ptr null, ptr %curr.028.i, align 4
  %23 = load i32, ptr %bytes.i.sink32.i, align 4
  %add.i25.i = add i32 %23, %.sink31.i
  store i32 %add.i25.i, ptr %bytes.i.sink32.i, align 4
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %qlist_move_cache.exit, label %while.body.i

qlist_move_cache.exit:                            ; preds = %if.end7.i
  %to_free.sroa.0.0.to_free.sroa.0.0.to_free.sroa.0.0.25.pre = load ptr, ptr %to_free.sroa.0, align 4
  %tobool.not.i.i3 = icmp eq ptr %to_free.sroa.0.0.to_free.sroa.0.0.to_free.sroa.0.0.25.pre, null
  br i1 %tobool.not.i.i3, label %qlist_free_all.exit, label %while.cond.preheader.i, !prof !12

while.cond.preheader.i:                           ; preds = %qlist_move_cache.exit
  %tobool3.not.i = icmp eq ptr %arg, null
  br label %while.body.i4

while.body.i4:                                    ; preds = %cond.end.i, %while.cond.preheader.i
  %qlink.013.i = phi ptr [ %to_free.sroa.0.0.to_free.sroa.0.0.to_free.sroa.0.0.25.pre, %while.cond.preheader.i ], [ %36, %cond.end.i ]
  br i1 %tobool3.not.i, label %cond.false.i, label %cond.end.i

cond.false.i:                                     ; preds = %while.body.i4
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %qlink.013.i to i32
  %sub.i.i.i.i5 = add i32 %25, 1073741824
  %shr.i.i.i.i6 = lshr i32 %sub.i.i.i.i5, 12
  %26 = getelementptr %struct.page, ptr %24, i32 %shr.i.i.i.i6, i32 1
  %27 = load volatile i32, ptr %26, align 4
  %and.i.i.i.i.i7 = and i32 %27, 1
  %tobool.not.i.i3.i.i.i8 = icmp eq i32 %and.i.i.i.i.i7, 0
  br i1 %tobool.not.i.i3.i.i.i8, label %if.end.i.i.i.i.i12, label %if.then.i.i4.i.i.i10, !prof !14

if.then.i.i4.i.i.i10:                             ; preds = %cond.false.i
  %sub.i.i.i.i.i9 = add i32 %27, -1
  br label %virt_to_folio.exit.i.i.i16

if.end.i.i.i.i.i12:                               ; preds = %cond.false.i
  %add.ptr.i.i.i.i11 = getelementptr %struct.page, ptr %24, i32 %shr.i.i.i.i6
  %28 = ptrtoint ptr %add.ptr.i.i.i.i11 to i32
  br label %virt_to_folio.exit.i.i.i16

virt_to_folio.exit.i.i.i16:                       ; preds = %if.end.i.i.i.i.i12, %if.then.i.i4.i.i.i10
  %retval.0.i.i.i.i.i13 = phi i32 [ %sub.i.i.i.i.i9, %if.then.i.i4.i.i.i10 ], [ %28, %if.end.i.i.i.i.i12 ]
  %29 = inttoptr i32 %retval.0.i.i.i.i.i13 to ptr
  %30 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 1
  %31 = load volatile i32, ptr %30, align 4
  %and.i.i.i.i.i.i14 = and i32 %31, 1
  %tobool.not.i.i.i.i.i15 = icmp eq i32 %and.i.i.i.i.i.i14, 0
  br i1 %tobool.not.i.i.i.i.i15, label %qlink_to_cache.exit.i21, label %if.then.i.i.i.i.i17, !prof !14

if.then.i.i.i.i.i17:                              ; preds = %virt_to_folio.exit.i.i.i16
  %32 = inttoptr i32 %retval.0.i.i.i.i.i13 to ptr
  tail call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str.6) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !15
  unreachable

qlink_to_cache.exit.i21:                          ; preds = %virt_to_folio.exit.i.i.i16
  %33 = load volatile i32, ptr %29, align 4
  %34 = and i32 %33, 512
  %tobool.i.not.i.i.i18 = icmp eq i32 %34, 0
  %call..i.i.i19 = select i1 %tobool.i.not.i.i.i18, ptr null, ptr %29
  %slab_cache.i.i20 = getelementptr inbounds %struct.slab, ptr %call..i.i.i19, i32 0, i32 2
  %35 = load ptr, ptr %slab_cache.i.i20, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %qlink_to_cache.exit.i21, %while.body.i4
  %cond.i = phi ptr [ %35, %qlink_to_cache.exit.i21 ], [ %arg, %while.body.i4 ]
  %36 = load ptr, ptr %qlink.013.i, align 4
  tail call fastcc void @qlink_free(ptr noundef nonnull %qlink.013.i, ptr noundef %cond.i) #11
  %tobool2.not.i22 = icmp eq ptr %36, null
  br i1 %tobool2.not.i22, label %qlist_free_all.exit, label %while.body.i4

qlist_free_all.exit:                              ; preds = %cond.end.i, %qlist_move_cache.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %to_free.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %to_free.sroa.7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %to_free.sroa.10)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize uwtable(sync)
define internal i32 @kasan_cpu_quarantine_init() #5 section ".init.text" align 64 {
entry:
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.9, i1 noundef zeroext true, ptr noundef nonnull @kasan_cpu_online, ptr noundef nonnull @kasan_cpu_offline, i1 noundef zeroext false) #11
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call.i) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret i32 %call.i
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @remove_cache_srcu, i32 0, i32 16), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @qlink_free(ptr noundef %qlink, ptr noundef %cache) #0 align 64 {
entry:
  %free_meta_offset.i = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 23, i32 1
  %0 = load i32, ptr %free_meta_offset.i, align 4
  %idx.neg.i = sub i32 0, %0
  %add.ptr1.i = getelementptr i8, ptr %qlink, i32 %idx.neg.i
  %call1 = tail call ptr @kasan_get_free_meta(ptr noundef %cache, ptr noundef %add.ptr1.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @init_on_free, i32 1), ptr blockaddress(@qlink_free, %if.end)) #12
          to label %if.then.i [label %if.end], !srcloc !16

if.then.i:                                        ; preds = %entry
  %ctor.i = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 14
  %1 = load ptr, ptr %ctor.i, align 4
  %tobool15.not.i = icmp eq ptr %1, null
  br i1 %tobool15.not.i, label %lor.rhs.i, label %if.end

lor.rhs.i:                                        ; preds = %if.then.i
  %flags.i = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 1
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 526336
  %tobool16.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.i, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.rhs.i
  %3 = load i32, ptr %free_meta_offset.i, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call.i = tail call ptr @__memset(ptr noundef %call1, i32 noundef 0, i32 noundef 12) #11
  tail call void asm sideeffect "", "r,~{memory}"(ptr %call1) #12, !srcloc !17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.rhs.i, %if.then.i, %entry
  %4 = ptrtoint ptr %add.ptr1.i to i32
  %shr.i = lshr i32 %4, 3
  %5 = inttoptr i32 %shr.i to ptr
  %add.ptr.i = getelementptr i8, ptr %5, i32 -1627389952
  store i8 -5, ptr %add.ptr.i, align 1
  br label %__here

__here:                                           ; preds = %if.end
  tail call void @___cache_free(ptr noundef %cache, ptr noundef %add.ptr1.i, i32 noundef ptrtoint (ptr blockaddress(@qlink_free, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @___cache_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @remove_cache_srcu, i32 0, i32 16), i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn uwtable(sync)
define internal i32 @kasan_cpu_online(i32 noundef %cpu) #8 align 64 {
entry:
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %cpu2, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %2
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @cpu_quarantine to i32)
  %4 = inttoptr i32 %add to ptr
  %offline = getelementptr inbounds %struct.qlist_head, ptr %4, i32 0, i32 3
  store i8 0, ptr %offline, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal i32 @kasan_cpu_offline(i32 noundef %cpu) #0 align 64 {
entry:
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %cpu2, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %2
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @cpu_quarantine to i32)
  %4 = inttoptr i32 %add to ptr
  %offline = getelementptr inbounds %struct.qlist_head, ptr %4, i32 0, i32 3
  store volatile i8 1, ptr %offline, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  %5 = load ptr, ptr %4, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %qlist_free_all.exit, label %while.body.i, !prof !12

while.body.i:                                     ; preds = %qlink_to_cache.exit.i, %entry
  %qlink.013.i = phi ptr [ %18, %qlink_to_cache.exit.i ], [ %5, %entry ]
  %6 = load ptr, ptr @mem_map, align 4
  %7 = ptrtoint ptr %qlink.013.i to i32
  %sub.i.i.i.i = add i32 %7, 1073741824
  %shr.i.i.i.i = lshr i32 %sub.i.i.i.i, 12
  %8 = getelementptr %struct.page, ptr %6, i32 %shr.i.i.i.i, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %and.i.i.i.i.i = and i32 %9, 1
  %tobool.not.i.i3.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i3.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i4.i.i.i, !prof !14

if.then.i.i4.i.i.i:                               ; preds = %while.body.i
  %sub.i.i.i.i.i = add i32 %9, -1
  br label %virt_to_folio.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %while.body.i
  %add.ptr.i.i.i.i = getelementptr %struct.page, ptr %6, i32 %shr.i.i.i.i
  %10 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  br label %virt_to_folio.exit.i.i.i

virt_to_folio.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %if.then.i.i4.i.i.i
  %retval.0.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %if.then.i.i4.i.i.i ], [ %10, %if.end.i.i.i.i.i ]
  %11 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  %12 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %and.i.i.i.i.i.i = and i32 %13, 1
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %qlink_to_cache.exit.i, label %if.then.i.i.i.i.i, !prof !14

if.then.i.i.i.i.i:                                ; preds = %virt_to_folio.exit.i.i.i
  %14 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.6) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !15
  unreachable

qlink_to_cache.exit.i:                            ; preds = %virt_to_folio.exit.i.i.i
  %15 = load volatile i32, ptr %11, align 4
  %16 = and i32 %15, 512
  %tobool.i.not.i.i.i = icmp eq i32 %16, 0
  %call..i.i.i = select i1 %tobool.i.not.i.i.i, ptr null, ptr %11
  %slab_cache.i.i = getelementptr inbounds %struct.slab, ptr %call..i.i.i, i32 0, i32 2
  %17 = load ptr, ptr %slab_cache.i.i, align 4
  %18 = load ptr, ptr %qlink.013.i, align 4
  tail call fastcc void @qlink_free(ptr noundef nonnull %qlink.013.i, ptr noundef %17) #11
  %tobool2.not.i = icmp eq ptr %18, null
  br i1 %tobool2.not.i, label %while.end.i, label %while.body.i

while.end.i:                                      ; preds = %qlink_to_cache.exit.i
  %tail.i.i = getelementptr inbounds %struct.qlist_head, ptr %4, i32 0, i32 1
  store ptr null, ptr %tail.i.i, align 4
  store ptr null, ptr %4, align 4
  %bytes.i.i = getelementptr inbounds %struct.qlist_head, ptr %4, i32 0, i32 2
  store i32 0, ptr %bytes.i.i, align 4
  br label %qlist_free_all.exit

qlist_free_all.exit:                              ; preds = %while.end.i, %entry
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { cold nobuiltin nounwind "no-builtins" }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i64 969900, i64 969961}
!10 = !{i8 0, i8 2}
!11 = !{i64 972632}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 972917}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2150121869, i64 2150122360, i64 2150121906, i64 2150121962, i64 2150121996, i64 2150122020, i64 2150122061, i64 2150122082, i64 2150122110, i64 2150122144}
!16 = !{i64 2148185946, i64 2148185951, i64 2148185964, i64 2148186008, i64 2148186042, i64 2148186063}
!17 = !{i64 2149145408}
!18 = !{i64 2155008992}
