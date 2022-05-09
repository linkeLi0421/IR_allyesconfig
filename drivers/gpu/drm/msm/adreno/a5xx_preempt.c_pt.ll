; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/adreno/a5xx_preempt.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a5xx_preempt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.106, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.106 = type { i8, i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.81, ptr }
%union.anon.81 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.a5xx_gpu = type { %struct.adreno_gpu, ptr, i64, ptr, i64, ptr, i64, i32, i32, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x i64], %struct.atomic_t, %struct.timer_list, ptr, i64, ptr, i8 }
%struct.adreno_gpu = type { %struct.msm_gpu, %struct.adreno_rev, ptr, i32, i32, ptr, ptr, i32, [3 x ptr], ptr }
%struct.adreno_rev = type { i8, i8, i8, i8 }
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.a5xx_preempt_record = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.92 = type { i32, ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* %s: Preemption failed to complete\0A\00", [53 x i8] zeroinitializer }, align 32
@a5xx_preempt_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&a5xx_gpu->preempt_timer)\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"preempt\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"preempt_counters\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* %s: preemption timed out\0A\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 180, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 303, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 247, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 248, i32 39 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [45 x i8] c"../drivers/gpu/drm/msm/adreno/a5xx_preempt.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 85, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @a5xx_preempt_init.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_preempt_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a5xx_preempt_trigger(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_rings = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %0 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %preempt_state.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %preempt_state.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %preempt_state.i, i32 1, i32 3, i32 1) #4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %preempt_state.i, ptr %preempt_state.i, i32 0, i32 1, ptr elementtype(i32) %preempt_state.i) #4, !srcloc !22
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %try_preempt_state.exit, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i.i

try_preempt_state.exit:                           ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %cmp.i, label %if.end5, label %try_preempt_state.exit.cleanup_crit_edge

try_preempt_state.exit.cleanup_crit_edge:         ; preds = %try_preempt_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %try_preempt_state.exit
  %3 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp20.i = icmp sgt i32 %4, 0
  br i1 %cmp20.i, label %if.end5.for.body.i_crit_edge, label %if.end5.if.then8_crit_edge

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %5 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_rings, align 4
  %cmp.i51 = icmp slt i32 %inc.i, %6
  br i1 %cmp.i51, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.then8_crit_edge

for.cond.i.if.then8_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 %i.021.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %preempt_lock.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 16
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %preempt_lock.i) #4
  %cur.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur.i.i, align 4
  %start.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %start.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 2
  %rem.i.i = srem i32 %sub.ptr.div.i.i, 8192
  %memptrs.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 13
  %13 = ptrtoint ptr %memptrs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %memptrs.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i, i32 %16)
  %cmp7.i = icmp eq i32 %rem.i.i, %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %preempt_lock.i, i32 noundef %call3.i) #4
  br i1 %cmp7.i, label %for.cond.i, label %get_next_ring.exit

get_next_ring.exit:                               ; preds = %for.body.i
  %cur.i.i.le = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 5
  %start.i.i.le = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 3
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %get_next_ring.exit.if.then8_crit_edge, label %lor.lhs.false

get_next_ring.exit.if.then8_crit_edge:            ; preds = %get_next_ring.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

lor.lhs.false:                                    ; preds = %get_next_ring.exit
  %cur_ring = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 9
  %17 = ptrtoint ptr %cur_ring to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur_ring, align 8
  %cmp7 = icmp eq ptr %18, %8
  br i1 %cmp7, label %lor.lhs.false.if.then8_crit_edge, label %do.body11

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %get_next_ring.exit.if.then8_crit_edge, %for.cond.i.if.then8_crit_edge, %if.end5.if.then8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !24
  %call.i.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %preempt_state.i, i32 noundef 4) #4
  %19 = ptrtoint ptr %preempt_state.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 2, ptr %preempt_state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !25
  %cur_ring9 = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 9
  %20 = ptrtoint ptr %cur_ring9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur_ring9, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then8.update_wptr.exit_crit_edge, label %do.body1.i

if.then8.update_wptr.exit_crit_edge:              ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %update_wptr.exit

do.body1.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %preempt_lock.i54 = getelementptr inbounds %struct.msm_ringbuffer, ptr %21, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %preempt_lock.i54) #4
  %cur.i.i55 = getelementptr inbounds %struct.msm_ringbuffer, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %cur.i.i55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur.i.i55, align 4
  %start.i.i56 = getelementptr inbounds %struct.msm_ringbuffer, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %start.i.i56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %start.i.i56, align 4
  %sub.ptr.lhs.cast.i.i57 = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i.i58 = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i.i59 = sub i32 %sub.ptr.lhs.cast.i.i57, %sub.ptr.rhs.cast.i.i58
  %sub.ptr.div.i.i60 = ashr exact i32 %sub.ptr.sub.i.i59, 2
  %rem.i.i61 = srem i32 %sub.ptr.div.i.i60, 8192
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %preempt_lock.i54, i32 noundef %call2.i) #4
  %mmio.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %26 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 8220
  tail call void @msm_writel(i32 noundef %rem.i.i61, ptr noundef %add.ptr.i.i) #4
  br label %update_wptr.exit

update_wptr.exit:                                 ; preds = %do.body1.i, %if.then8.update_wptr.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !24
  %call.i.i.i63 = tail call zeroext i1 @__kasan_check_write(ptr noundef %preempt_state.i, i32 noundef 4) #4
  %28 = ptrtoint ptr %preempt_state.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %preempt_state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !25
  br label %cleanup

do.body11:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %preempt_lock.i) #4
  %29 = ptrtoint ptr %cur.i.i.le to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i.i.le, align 4
  %31 = ptrtoint ptr %start.i.i.le to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %start.i.i.le, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  %rem.i = srem i32 %sub.ptr.div.i, 8192
  %id = getelementptr inbounds %struct.msm_ringbuffer, ptr %8, i32 0, i32 1
  %33 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.a5xx_gpu, ptr %gpu, i32 0, i32 13, i32 %34
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %wptr = getelementptr inbounds %struct.a5xx_preempt_record, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %wptr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %rem.i, ptr %wptr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %preempt_lock.i, i32 noundef %call15) #4
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 4
  %arrayidx21 = getelementptr %struct.a5xx_gpu, ptr %gpu, i32 0, i32 14, i32 %39
  %40 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx21, align 8
  %conv.i = trunc i64 %41 to i32
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %42 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %43, i32 8432
  tail call void @msm_writel(i32 noundef %conv.i, ptr noundef %add.ptr.i) #4
  %shr.i = lshr i64 %41, 32
  %conv2.i = trunc i64 %shr.i to i32
  %44 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %45, i32 8436
  tail call void @msm_writel(i32 noundef %conv2.i, ptr noundef %add.ptr5.i) #4
  %next_ring = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 10
  %46 = ptrtoint ptr %next_ring to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %8, ptr %next_ring, align 4
  %preempt_timer = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %47, 1000
  %call23 = tail call i32 @mod_timer(ptr noundef %preempt_timer, i32 noundef %add) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !24
  %call.i.i.i65 = tail call zeroext i1 @__kasan_check_write(ptr noundef %preempt_state.i, i32 noundef 4) #4
  %48 = ptrtoint ptr %preempt_state.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 3, ptr %preempt_state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %49 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i67 = getelementptr i8, ptr %50, i32 8428
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i67) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %update_wptr.exit, %try_preempt_state.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a5xx_preempt_irq(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev4 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %0 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev4, align 4
  %preempt_state.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %preempt_state.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %preempt_state.i, i32 1, i32 3, i32 1) #4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %preempt_state.i, ptr %preempt_state.i, i32 3, i32 5, ptr elementtype(i32) %preempt_state.i) #4, !srcloc !22
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %try_preempt_state.exit, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i.i

try_preempt_state.exit:                           ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult3.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult3.i.i.i.i, 3
  br i1 %cmp.i, label %if.end, label %try_preempt_state.exit.cleanup_crit_edge

try_preempt_state.exit.cleanup_crit_edge:         ; preds = %try_preempt_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %try_preempt_state.exit
  %preempt_timer = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 16
  %call5 = tail call i32 @del_timer(ptr noundef %preempt_timer) #4
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 8428
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end12, label %if.then9, !prof !27

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !24
  %call.i.i.i32 = tail call zeroext i1 @__kasan_check_write(ptr noundef %preempt_state.i, i32 noundef 4) #4
  %5 = ptrtoint ptr %preempt_state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 4, ptr %preempt_state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !25
  %dev10 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev10, align 4
  %8 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpu, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %9) #4
  %worker = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 39
  %10 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %worker, align 8
  %recover_work = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 36
  %call11 = tail call zeroext i1 @kthread_queue_work(ptr noundef %11, ptr noundef %recover_work) #4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %next_ring = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 10
  %12 = ptrtoint ptr %next_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next_ring, align 4
  %cur_ring = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 9
  %14 = ptrtoint ptr %cur_ring to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %cur_ring, align 8
  store ptr null, ptr %next_ring, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end12.update_wptr.exit_crit_edge, label %do.body1.i

if.end12.update_wptr.exit_crit_edge:              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %update_wptr.exit

do.body1.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %preempt_lock.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %13, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %preempt_lock.i) #4
  %cur.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %13, i32 0, i32 5
  %15 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.i.i, align 4
  %start.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %13, i32 0, i32 3
  %17 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %start.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 2
  %rem.i.i = srem i32 %sub.ptr.div.i.i, 8192
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %preempt_lock.i, i32 noundef %call2.i) #4
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 8220
  tail call void @msm_writel(i32 noundef %rem.i.i, ptr noundef %add.ptr.i.i) #4
  br label %update_wptr.exit

update_wptr.exit:                                 ; preds = %do.body1.i, %if.end12.update_wptr.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !24
  %call.i.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef %preempt_state.i, i32 noundef 4) #4
  %21 = ptrtoint ptr %preempt_state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %preempt_state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !25
  br label %cleanup

cleanup:                                          ; preds = %update_wptr.exit, %if.then9, %try_preempt_state.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a5xx_preempt_hw_init(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rb = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 13
  %0 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb, align 4
  %cur_ring = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 9
  %2 = ptrtoint ptr %cur_ring to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %cur_ring, align 8
  %nr_rings = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %3 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %5 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp529 = icmp sgt i32 %6, 0
  br i1 %cmp529, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx6 = getelementptr %struct.a5xx_gpu, ptr %gpu, i32 0, i32 13, i32 %i.030
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx6, align 4
  %wptr = getelementptr inbounds %struct.a5xx_preempt_record, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %wptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %wptr, align 4
  %10 = load ptr, ptr %arrayidx6, align 4
  %rptr = getelementptr inbounds %struct.a5xx_preempt_record, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %rptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rptr, align 8
  %arrayidx10 = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 %i.030
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx10, align 4
  %iova = getelementptr inbounds %struct.msm_ringbuffer, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %iova, align 8
  %16 = load ptr, ptr %arrayidx6, align 4
  %rbase = getelementptr inbounds %struct.a5xx_preempt_record, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %rbase to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %15, ptr %rbase, align 8
  %inc = add nuw nsw i32 %i.030, 1
  %18 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_rings, align 4
  %cmp5 = icmp slt i32 %inc, %19
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 8448
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #4
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %23, i32 8452
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr5.i) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !24
  %preempt_state.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %preempt_state.i, i32 noundef 4) #4
  %24 = ptrtoint ptr %preempt_state.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %preempt_state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !25
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a5xx_preempt_fini(ptr nocapture noundef readonly %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_rings = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %0 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13 = icmp sgt i32 %1, 0
  br i1 %cmp13, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.a5xx_gpu, ptr %gpu, i32 0, i32 11, i32 %i.014
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aspace, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %3, ptr noundef %5) #4
  %arrayidx4 = getelementptr %struct.a5xx_gpu, ptr %gpu, i32 0, i32 12, i32 %i.014
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %8 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aspace, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %7, ptr noundef %9) #4
  %inc = add nuw nsw i32 %i.014, 1
  %10 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_rings, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_kernel_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a5xx_preempt_init(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  %bo.i = alloca ptr, align 4
  %counters_bo.i = alloca ptr, align 4
  %iova.i = alloca i64, align 8
  %counters_iova.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_rings = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %0 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp525 = icmp sgt i32 %3, 0
  br i1 %cmp525, label %for.body.lr.ph, label %for.cond.preheader.do.body_crit_edge

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %aspace.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %shadow_iova.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %preempt_init_ring.exit.thread.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %preempt_init_ring.exit.thread.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 %i.026
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo.i) #4
  %6 = ptrtoint ptr %bo.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bo.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %counters_bo.i) #4
  %7 = ptrtoint ptr %counters_bo.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %counters_bo.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iova.i) #4
  %8 = ptrtoint ptr %iova.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %iova.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %counters_iova.i) #4
  %9 = ptrtoint ptr %counters_iova.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %counters_iova.i, align 8
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aspace.i, align 8
  %call.i = call ptr @msm_gem_kernel_new(ptr noundef %11, i32 noundef 65600, i32 noundef 537001984, ptr noundef %13, ptr noundef nonnull %bo.i, ptr noundef nonnull %iova.i) #4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.preempt_init_ring.exit_crit_edge, label %if.end.i

for.body.preempt_init_ring.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %preempt_init_ring.exit

if.end.i:                                         ; preds = %for.body
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aspace.i, align 8
  %call6.i = call ptr @msm_gem_kernel_new(ptr noundef %15, i32 noundef 64, i32 noundef 131072, ptr noundef %17, ptr noundef nonnull %counters_bo.i, ptr noundef nonnull %counters_iova.i) #4
  %cmp.i51.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  %18 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bo.i, align 4
  br i1 %cmp.i51.i, label %if.then8.i, label %preempt_init_ring.exit.thread

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aspace.i, align 8
  call void @msm_gem_kernel_put(ptr noundef %19, ptr noundef %21) #4
  br label %preempt_init_ring.exit

preempt_init_ring.exit.thread:                    ; preds = %if.end.i
  call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %19, ptr noundef nonnull @.str.3) #4
  %22 = ptrtoint ptr %counters_bo.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %counters_bo.i, align 4
  call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %23, ptr noundef nonnull @.str.4) #4
  %24 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bo.i, align 4
  %id.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %5, i32 0, i32 1
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr %struct.a5xx_gpu, ptr %gpu, i32 0, i32 11, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %arrayidx.i, align 4
  %29 = ptrtoint ptr %counters_bo.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %counters_bo.i, align 4
  %31 = load i32, ptr %id.i, align 4
  %arrayidx13.i = getelementptr %struct.a5xx_gpu, ptr %gpu, i32 0, i32 12, i32 %31
  %32 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %arrayidx13.i, align 4
  %33 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %iova.i, align 8
  %35 = load i32, ptr %id.i, align 4
  %arrayidx15.i = getelementptr %struct.a5xx_gpu, ptr %gpu, i32 0, i32 14, i32 %35
  %36 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %34, ptr %arrayidx15.i, align 8
  %37 = load i32, ptr %id.i, align 4
  %arrayidx17.i = getelementptr %struct.a5xx_gpu, ptr %gpu, i32 0, i32 13, i32 %37
  %38 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %arrayidx17.i, align 4
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 667204348, ptr %call.i, align 8
  %info.i = getelementptr inbounds %struct.a5xx_preempt_record, ptr %call.i, i32 0, i32 1
  %40 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %info.i, align 4
  %data.i = getelementptr inbounds %struct.a5xx_preempt_record, ptr %call.i, i32 0, i32 2
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %data.i, align 8
  %cntl.i = getelementptr inbounds %struct.a5xx_preempt_record, ptr %call.i, i32 0, i32 3
  %42 = ptrtoint ptr %cntl.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 134218252, ptr %cntl.i, align 4
  %43 = ptrtoint ptr %shadow_iova.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %shadow_iova.i, align 8
  %45 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %45, 2
  %conv.i = zext i32 %mul.i to i64
  %add.i = add i64 %44, %conv.i
  %rptr_addr.i = getelementptr inbounds %struct.a5xx_preempt_record, ptr %call.i, i32 0, i32 6
  %46 = ptrtoint ptr %rptr_addr.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %add.i, ptr %rptr_addr.i, align 8
  %47 = ptrtoint ptr %counters_iova.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %counters_iova.i, align 8
  %counter.i = getelementptr inbounds %struct.a5xx_preempt_record, ptr %call.i, i32 0, i32 8
  %49 = ptrtoint ptr %counter.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %counter.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %counters_iova.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iova.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %counters_bo.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo.i) #4
  %inc = add nuw nsw i32 %i.026, 1
  %50 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr_rings, align 4
  %cmp5 = icmp slt i32 %inc, %51
  br i1 %cmp5, label %preempt_init_ring.exit.thread.for.body_crit_edge, label %preempt_init_ring.exit.thread.do.body_crit_edge

preempt_init_ring.exit.thread.do.body_crit_edge:  ; preds = %preempt_init_ring.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

preempt_init_ring.exit.thread.for.body_crit_edge: ; preds = %preempt_init_ring.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

preempt_init_ring.exit:                           ; preds = %if.then8.i, %for.body.preempt_init_ring.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %counters_iova.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iova.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %counters_bo.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo.i) #4
  %52 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp13.i = icmp sgt i32 %53, 0
  br i1 %cmp13.i, label %preempt_init_ring.exit.for.body.i_crit_edge, label %preempt_init_ring.exit.a5xx_preempt_fini.exit_crit_edge

preempt_init_ring.exit.a5xx_preempt_fini.exit_crit_edge: ; preds = %preempt_init_ring.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %a5xx_preempt_fini.exit

preempt_init_ring.exit.for.body.i_crit_edge:      ; preds = %preempt_init_ring.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %preempt_init_ring.exit.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %preempt_init_ring.exit.for.body.i_crit_edge ]
  %arrayidx.i20 = getelementptr %struct.a5xx_gpu, ptr %gpu, i32 0, i32 11, i32 %i.014.i
  %54 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i20, align 4
  %56 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %aspace.i, align 8
  call void @msm_gem_kernel_put(ptr noundef %55, ptr noundef %57) #4
  %arrayidx4.i = getelementptr %struct.a5xx_gpu, ptr %gpu, i32 0, i32 12, i32 %i.014.i
  %58 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx4.i, align 4
  %60 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %aspace.i, align 8
  call void @msm_gem_kernel_put(ptr noundef %59, ptr noundef %61) #4
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %62 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nr_rings, align 4
  %cmp.i = icmp slt i32 %inc.i, %63
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.a5xx_preempt_fini.exit_crit_edge

for.body.i.a5xx_preempt_fini.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %a5xx_preempt_fini.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

a5xx_preempt_fini.exit:                           ; preds = %for.body.i.a5xx_preempt_fini.exit_crit_edge, %preempt_init_ring.exit.a5xx_preempt_fini.exit_crit_edge
  %64 = ptrtoint ptr %nr_rings to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %nr_rings, align 4
  br label %cleanup

do.body:                                          ; preds = %preempt_init_ring.exit.thread.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %preempt_timer = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 16
  call void @init_timer_key(ptr noundef %preempt_timer, ptr noundef nonnull @a5xx_preempt_timer, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @a5xx_preempt_init.__key) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %a5xx_preempt_fini.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a5xx_preempt_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev2 = getelementptr i8, ptr %t, i32 -1064
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev2, align 4
  %preempt_state.i = getelementptr i8, ptr %t, i32 -4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %preempt_state.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %preempt_state.i, i32 1, i32 3, i32 1) #4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %preempt_state.i, ptr %preempt_state.i, i32 3, i32 4, ptr elementtype(i32) %preempt_state.i) #4, !srcloc !22
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %try_preempt_state.exit, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i.i

try_preempt_state.exit:                           ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult3.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult3.i.i.i.i, 3
  br i1 %cmp.i, label %if.end, label %try_preempt_state.exit.cleanup_crit_edge

try_preempt_state.exit.cleanup_crit_edge:         ; preds = %try_preempt_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %try_preempt_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %t, i32 -1068
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev3, align 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef %6) #4
  %worker = getelementptr i8, ptr %t, i32 -468
  %7 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %worker, align 8
  %recover_work = getelementptr i8, ptr %t, i32 -560
  %call4 = tail call zeroext i1 @kthread_queue_work(ptr noundef %8, ptr noundef %recover_work) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %try_preempt_state.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_kernel_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_preempt.c", i32 180, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @a5xx_preempt_init.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_preempt.c", i32 303, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_preempt.c", i32 247, i32 30}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_preempt.c", i32 248, i32 39}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_preempt.c", i32 85, i32 2}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2148600011}
!22 = !{i64 983677, i64 983701, i64 983722, i64 983739, i64 983756}
!23 = !{i64 2148600237}
!24 = !{i64 2157687654}
!25 = !{i64 2157687831}
!26 = !{i64 2157693175}
!27 = !{!"branch_weights", i32 2000, i32 1}
