; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv10.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv10.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_devinit_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_devinit = type { ptr, %struct.nvkm_subdev, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.133, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.133 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.io_mapping = type { i32, i32, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@nv10_devinit = internal constant { %struct.nvkm_devinit_func, [32 x i8] } { %struct.nvkm_devinit_func { ptr @nv04_devinit_dtor, ptr @nv04_devinit_preinit, ptr null, ptr @nv04_devinit_post, ptr null, ptr @nv10_devinit_meminit, ptr @nv04_devinit_pll_set, ptr null }, [32 x i8] zeroinitializer }, align 32
@nv10_devinit_meminit.mem_width = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 16, i32 0, i32 32], [20 x i8] zeroinitializer }, align 32
@nv10_devinit_meminit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 51, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: failed to map fb\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nv10_devinit_meminit\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv10.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv10_devinit_meminit._entry_ptr = internal global ptr @nv10_devinit_meminit._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"nv10_devinit\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 100, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [10 x i8] c"mem_width\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 37, i32 19 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv10.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 51, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @nv10_devinit_meminit._entry, ptr @nv10_devinit_meminit._entry_ptr, ptr @nv10_devinit, ptr @nv10_devinit_meminit.mem_width, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_devinit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_devinit_meminit.mem_width to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_devinit_meminit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv10_devinit_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pinit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv04_devinit_new_(ptr noundef nonnull @nv10_devinit, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pinit) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_devinit_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv04_devinit_dtor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_devinit_preinit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_devinit_post(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv10_devinit_meminit(ptr noundef %init) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %card_type = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp ugt i32 %3, 16
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %5)
  %cmp3 = icmp ugt i32 %5, 22
  br i1 %cmp3, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %mem_width_count.0 = phi i32 [ 2, %if.else ], [ 3, %land.lhs.true.if.end_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %resource_addr.i = getelementptr inbounds %struct.nvkm_device_func, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %resource_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resource_addr.i, align 4
  %call.i = tail call i32 %9(ptr noundef %1, i32 noundef 1) #5
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %resource_size.i = getelementptr inbounds %struct.nvkm_device_func, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %resource_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resource_size.i, align 4
  %call2.i = tail call i32 %13(ptr noundef %1, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 16) #8
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.do.body_crit_edge, label %if.end.i.i

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end.i.i:                                       ; preds = %if.end
  %call.i.i.i = tail call ptr @ioremap_wc(i32 noundef %call.i, i32 noundef %call2.i) #5
  %iomem.i.i.i = getelementptr inbounds %struct.io_mapping, ptr %call7.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i.i, ptr %iomem.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then3.i.i, label %do.body13

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  br label %do.body

do.body:                                          ; preds = %if.then3.i.i, %if.end.do.body_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp5.not = icmp eq i32 %17, 0
  br i1 %cmp5.not, label %do.body.cleanup77_crit_edge, label %do.end

do.body.cleanup77_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup77

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef %name) #9
  br label %cleanup77

do.body13:                                        ; preds = %if.end.i.i
  %22 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call.i, ptr %call7.i.i.i, align 8
  %size3.i.i.i = getelementptr inbounds %struct.io_mapping, ptr %call7.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %size3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call2.i, ptr %size3.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %24 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = and i32 %24, -573
  %or4.i.i.i = or i32 %or.i.i.i, 516
  %prot.i.i.i = getelementptr inbounds %struct.io_mapping, ptr %call7.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %prot.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or4.i.i.i, ptr %prot.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 1049104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2147483648) #5, !srcloc !23
  br label %for.body

for.body:                                         ; preds = %for.inc39.for.body_crit_edge, %do.body13
  %i.0287 = phi i32 [ 0, %do.body13 ], [ %inc40, %for.inc39.for.body_crit_edge ]
  %28 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %29, i32 1049088
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %and = and i32 %30, -49
  %arrayidx = getelementptr [3 x i32], ptr @nv10_devinit_meminit.mem_width, i32 0, i32 %i.0287
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %or = or i32 %32, %and
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  %add.ptr24 = getelementptr i8, ptr %34, i32 1049088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %or) #5, !srcloc !23
  br label %for.cond29.preheader

for.cond26:                                       ; preds = %for.end
  %inc37 = add nuw nsw i32 %j.0286, 1
  %exitcond290.not = icmp eq i32 %inc37, 4
  br i1 %exitcond290.not, label %for.inc39, label %for.cond26.for.cond29.preheader_crit_edge

for.cond26.for.cond29.preheader_crit_edge:        ; preds = %for.cond26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %for.cond26.for.cond29.preheader_crit_edge, %for.body
  %j.0286 = phi i32 [ 0, %for.body ], [ %inc37, %for.cond26.for.cond29.preheader_crit_edge ]
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.cond29.preheader
  %k.0285 = phi i32 [ 0, %for.cond29.preheader ], [ %inc, %for.body31.for.body31_crit_edge ]
  %35 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %38, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  %39 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 213
  %43 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %44, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !28
  %45 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !31
  %47 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i4.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i1.i4.i to ptr
  %task.i.i.i5.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task.i.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i.i.i5.i, align 8
  %pagefault_disabled.i.i.i6.i = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 213
  %51 = ptrtoint ptr %pagefault_disabled.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pagefault_disabled.i.i.i6.i, align 8
  %dec.i.i.i.i = add i32 %52, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i6.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !32
  %53 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i7.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i7.i to ptr
  %preempt_count.i.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i8.i, align 4
  %sub.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i8.i, align 4
  %inc = add nuw nsw i32 %k.0285, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body31.for.body31_crit_edge

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body31

for.end:                                          ; preds = %for.body31
  %57 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i.i126 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i126 to ptr
  %preempt_count.i.i.i.i127 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i127, align 4
  %add.i.i.i128 = add i32 %60, 1
  store volatile i32 %add.i.i.i128, ptr %preempt_count.i.i.i.i127, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  %61 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i.i129 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i1.i.i129 to ptr
  %task.i.i.i.i130 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task.i.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task.i.i.i.i130, align 8
  %pagefault_disabled.i.i.i.i131 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 213
  %65 = ptrtoint ptr %pagefault_disabled.i.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pagefault_disabled.i.i.i.i131, align 8
  %inc.i.i.i.i132 = add i32 %66, 1
  store i32 %inc.i.i.i.i132, ptr %pagefault_disabled.i.i.i.i131, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !28
  %67 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i134 = getelementptr i8, ptr %68, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 -272716322) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !31
  %69 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i4.i135 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i1.i4.i135 to ptr
  %task.i.i.i5.i136 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task.i.i.i5.i136 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task.i.i.i5.i136, align 8
  %pagefault_disabled.i.i.i6.i137 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 213
  %73 = ptrtoint ptr %pagefault_disabled.i.i.i6.i137 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pagefault_disabled.i.i.i6.i137, align 8
  %dec.i.i.i.i138 = add i32 %74, -1
  store i32 %dec.i.i.i.i138, ptr %pagefault_disabled.i.i.i6.i137, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !32
  %75 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i7.i139 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i7.i139 to ptr
  %preempt_count.i.i.i8.i140 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i.i8.i140 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i.i8.i140, align 4
  %sub.i.i.i141 = add i32 %78, -1
  store volatile i32 %sub.i.i.i141, ptr %preempt_count.i.i.i8.i140, align 4
  %79 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i.i142 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i142 to ptr
  %preempt_count.i.i.i.i143 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i.i.i.i143, align 4
  %add.i.i.i144 = add i32 %82, 1
  store volatile i32 %add.i.i.i144, ptr %preempt_count.i.i.i.i143, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  %83 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i.i145 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i1.i.i145 to ptr
  %task.i.i.i.i146 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task.i.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task.i.i.i.i146, align 8
  %pagefault_disabled.i.i.i.i147 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 213
  %87 = ptrtoint ptr %pagefault_disabled.i.i.i.i147 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pagefault_disabled.i.i.i.i147, align 8
  %inc.i.i.i.i148 = add i32 %88, 1
  store i32 %inc.i.i.i.i148, ptr %pagefault_disabled.i.i.i.i147, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !28
  %89 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %90, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !31
  %91 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i4.i151 = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i1.i4.i151 to ptr
  %task.i.i.i5.i152 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %task.i.i.i5.i152 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task.i.i.i5.i152, align 8
  %pagefault_disabled.i.i.i6.i153 = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 213
  %95 = ptrtoint ptr %pagefault_disabled.i.i.i6.i153 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pagefault_disabled.i.i.i6.i153, align 8
  %dec.i.i.i.i154 = add i32 %96, -1
  store i32 %dec.i.i.i.i154, ptr %pagefault_disabled.i.i.i6.i153, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !32
  %97 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i7.i155 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i.i7.i155 to ptr
  %preempt_count.i.i.i8.i156 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %preempt_count.i.i.i8.i156 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %preempt_count.i.i.i8.i156, align 4
  %sub.i.i.i157 = add i32 %100, -1
  store volatile i32 %sub.i.i.i157, ptr %preempt_count.i.i.i8.i156, align 4
  %101 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i.i158 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i.i.i158 to ptr
  %preempt_count.i.i.i.i159 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %preempt_count.i.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %preempt_count.i.i.i.i159, align 4
  %add.i.i.i160 = add i32 %104, 1
  store volatile i32 %add.i.i.i160, ptr %preempt_count.i.i.i.i159, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  %105 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i.i161 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i1.i.i161 to ptr
  %task.i.i.i.i162 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %task.i.i.i.i162 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task.i.i.i.i162, align 8
  %pagefault_disabled.i.i.i.i163 = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 213
  %109 = ptrtoint ptr %pagefault_disabled.i.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pagefault_disabled.i.i.i.i163, align 8
  %inc.i.i.i.i164 = add i32 %110, 1
  store i32 %inc.i.i.i.i164, ptr %pagefault_disabled.i.i.i.i163, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !28
  %111 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %112, i32 28
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i166) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !31
  %114 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i5.i = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i1.i5.i to ptr
  %task.i.i.i6.i = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %task.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %task.i.i.i6.i, align 8
  %pagefault_disabled.i.i.i7.i = getelementptr inbounds %struct.task_struct, ptr %117, i32 0, i32 213
  %118 = ptrtoint ptr %pagefault_disabled.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pagefault_disabled.i.i.i7.i, align 8
  %dec.i.i.i.i167 = add i32 %119, -1
  store i32 %dec.i.i.i.i167, ptr %pagefault_disabled.i.i.i7.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !32
  %120 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i8.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i.i8.i to ptr
  %preempt_count.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %preempt_count.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %preempt_count.i.i.i9.i, align 4
  %sub.i.i.i168 = add i32 %123, -1
  store volatile i32 %sub.i.i.i168, ptr %preempt_count.i.i.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %113)
  %cmp33 = icmp eq i32 %113, -272716322
  br i1 %cmp33, label %for.end.for.body44.preheader_crit_edge, label %for.cond26

for.end.for.body44.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body44.preheader

for.inc39:                                        ; preds = %for.cond26
  %inc40 = add nuw nsw i32 %i.0287, 1
  %exitcond291.not = icmp eq i32 %inc40, %mem_width_count.0
  br i1 %exitcond291.not, label %for.inc39.for.body44.preheader_crit_edge, label %for.inc39.for.body_crit_edge

for.inc39.for.body_crit_edge:                     ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc39.for.body44.preheader_crit_edge:         ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body44.preheader

for.body44.preheader:                             ; preds = %for.inc39.for.body44.preheader_crit_edge, %for.end.for.body44.preheader_crit_edge
  br label %for.body44

for.cond42:                                       ; preds = %for.body44
  %inc59 = add nuw nsw i32 %i.1288, 1
  %exitcond292.not = icmp eq i32 %inc59, 4
  br i1 %exitcond292.not, label %for.end60, label %for.cond42.for.body44_crit_edge

for.cond42.for.body44_crit_edge:                  ; preds = %for.cond42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body44

for.body44:                                       ; preds = %for.cond42.for.body44_crit_edge, %for.body44.preheader
  %i.1288 = phi i32 [ %inc59, %for.cond42.for.body44_crit_edge ], [ 0, %for.body44.preheader ]
  %124 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pri, align 4
  %add.ptr47 = getelementptr i8, ptr %125, i32 1049100
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  %sub = add i32 %126, -1048576
  %and.i = and i32 %sub, -4096
  %127 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i.i169 = and i32 %127, -16384
  %128 = inttoptr i32 %and.i.i.i.i.i169 to ptr
  %preempt_count.i.i.i.i170 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %preempt_count.i.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %preempt_count.i.i.i.i170, align 4
  %add.i.i.i171 = add i32 %130, 1
  store volatile i32 %add.i.i.i171, ptr %preempt_count.i.i.i.i170, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  %131 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i.i172 = and i32 %131, -16384
  %132 = inttoptr i32 %and.i.i.i1.i.i172 to ptr
  %task.i.i.i.i173 = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %task.i.i.i.i173 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %task.i.i.i.i173, align 8
  %pagefault_disabled.i.i.i.i174 = getelementptr inbounds %struct.task_struct, ptr %134, i32 0, i32 213
  %135 = ptrtoint ptr %pagefault_disabled.i.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %pagefault_disabled.i.i.i.i174, align 8
  %inc.i.i.i.i175 = add i32 %136, 1
  store i32 %inc.i.i.i.i175, ptr %pagefault_disabled.i.i.i.i174, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !28
  %137 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %138, i32 %and.i
  %and1.i = and i32 %126, 4095
  %add.ptr.i177 = getelementptr i8, ptr %add.ptr.i.i.i, i32 %and1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 -562209859) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !31
  %139 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i4.i178 = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i1.i4.i178 to ptr
  %task.i.i.i5.i179 = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 2
  %141 = ptrtoint ptr %task.i.i.i5.i179 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %task.i.i.i5.i179, align 8
  %pagefault_disabled.i.i.i6.i180 = getelementptr inbounds %struct.task_struct, ptr %142, i32 0, i32 213
  %143 = ptrtoint ptr %pagefault_disabled.i.i.i6.i180 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %pagefault_disabled.i.i.i6.i180, align 8
  %dec.i.i.i.i181 = add i32 %144, -1
  store i32 %dec.i.i.i.i181, ptr %pagefault_disabled.i.i.i6.i180, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !32
  %145 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i7.i182 = and i32 %145, -16384
  %146 = inttoptr i32 %and.i.i.i.i7.i182 to ptr
  %preempt_count.i.i.i8.i183 = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %preempt_count.i.i.i8.i183 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %preempt_count.i.i.i8.i183, align 4
  %sub.i.i.i184 = add i32 %148, -1
  store volatile i32 %sub.i.i.i184, ptr %preempt_count.i.i.i8.i183, align 4
  %149 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i.i185 = and i32 %149, -16384
  %150 = inttoptr i32 %and.i.i.i.i.i185 to ptr
  %preempt_count.i.i.i.i186 = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %preempt_count.i.i.i.i186 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %preempt_count.i.i.i.i186, align 4
  %add.i.i.i187 = add i32 %152, 1
  store volatile i32 %add.i.i.i187, ptr %preempt_count.i.i.i.i186, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  %153 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i.i188 = and i32 %153, -16384
  %154 = inttoptr i32 %and.i.i.i1.i.i188 to ptr
  %task.i.i.i.i189 = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %task.i.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %task.i.i.i.i189, align 8
  %pagefault_disabled.i.i.i.i190 = getelementptr inbounds %struct.task_struct, ptr %156, i32 0, i32 213
  %157 = ptrtoint ptr %pagefault_disabled.i.i.i.i190 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %pagefault_disabled.i.i.i.i190, align 8
  %inc.i.i.i.i191 = add i32 %158, 1
  store i32 %inc.i.i.i.i191, ptr %pagefault_disabled.i.i.i.i190, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !28
  %159 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %iomem.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !31
  %161 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i4.i193 = and i32 %161, -16384
  %162 = inttoptr i32 %and.i.i.i1.i4.i193 to ptr
  %task.i.i.i5.i194 = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %task.i.i.i5.i194 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %task.i.i.i5.i194, align 8
  %pagefault_disabled.i.i.i6.i195 = getelementptr inbounds %struct.task_struct, ptr %164, i32 0, i32 213
  %165 = ptrtoint ptr %pagefault_disabled.i.i.i6.i195 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %pagefault_disabled.i.i.i6.i195, align 8
  %dec.i.i.i.i196 = add i32 %166, -1
  store i32 %dec.i.i.i.i196, ptr %pagefault_disabled.i.i.i6.i195, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !32
  %167 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i7.i197 = and i32 %167, -16384
  %168 = inttoptr i32 %and.i.i.i.i7.i197 to ptr
  %preempt_count.i.i.i8.i198 = getelementptr inbounds %struct.thread_info, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %preempt_count.i.i.i8.i198 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %preempt_count.i.i.i8.i198, align 4
  %sub.i.i.i199 = add i32 %170, -1
  store volatile i32 %sub.i.i.i199, ptr %preempt_count.i.i.i8.i198, align 4
  %171 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i.i200 = and i32 %171, -16384
  %172 = inttoptr i32 %and.i.i.i.i.i200 to ptr
  %preempt_count.i.i.i.i201 = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %preempt_count.i.i.i.i201 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %preempt_count.i.i.i.i201, align 4
  %add.i.i.i202 = add i32 %174, 1
  store volatile i32 %add.i.i.i202, ptr %preempt_count.i.i.i.i201, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  %175 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i.i203 = and i32 %175, -16384
  %176 = inttoptr i32 %and.i.i.i1.i.i203 to ptr
  %task.i.i.i.i204 = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %task.i.i.i.i204 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %task.i.i.i.i204, align 8
  %pagefault_disabled.i.i.i.i205 = getelementptr inbounds %struct.task_struct, ptr %178, i32 0, i32 213
  %179 = ptrtoint ptr %pagefault_disabled.i.i.i.i205 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %pagefault_disabled.i.i.i.i205, align 8
  %inc.i.i.i.i206 = add i32 %180, 1
  store i32 %inc.i.i.i.i206, ptr %pagefault_disabled.i.i.i.i205, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !28
  %181 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %iomem.i.i.i, align 4
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !31
  %184 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i5.i208 = and i32 %184, -16384
  %185 = inttoptr i32 %and.i.i.i1.i5.i208 to ptr
  %task.i.i.i6.i209 = getelementptr inbounds %struct.thread_info, ptr %185, i32 0, i32 2
  %186 = ptrtoint ptr %task.i.i.i6.i209 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %task.i.i.i6.i209, align 8
  %pagefault_disabled.i.i.i7.i210 = getelementptr inbounds %struct.task_struct, ptr %187, i32 0, i32 213
  %188 = ptrtoint ptr %pagefault_disabled.i.i.i7.i210 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %pagefault_disabled.i.i.i7.i210, align 8
  %dec.i.i.i.i211 = add i32 %189, -1
  store i32 %dec.i.i.i.i211, ptr %pagefault_disabled.i.i.i7.i210, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !32
  %190 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i8.i212 = and i32 %190, -16384
  %191 = inttoptr i32 %and.i.i.i.i8.i212 to ptr
  %preempt_count.i.i.i9.i213 = getelementptr inbounds %struct.thread_info, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %preempt_count.i.i.i9.i213 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %preempt_count.i.i.i9.i213, align 4
  %sub.i.i.i214 = add i32 %193, -1
  store volatile i32 %sub.i.i.i214, ptr %preempt_count.i.i.i9.i213, align 4
  %194 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i.i215 = and i32 %194, -16384
  %195 = inttoptr i32 %and.i.i.i.i.i215 to ptr
  %preempt_count.i.i.i.i216 = getelementptr inbounds %struct.thread_info, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %preempt_count.i.i.i.i216 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile i32, ptr %preempt_count.i.i.i.i216, align 4
  %add.i.i.i217 = add i32 %197, 1
  store volatile i32 %add.i.i.i217, ptr %preempt_count.i.i.i.i216, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  %198 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i.i218 = and i32 %198, -16384
  %199 = inttoptr i32 %and.i.i.i1.i.i218 to ptr
  %task.i.i.i.i219 = getelementptr inbounds %struct.thread_info, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %task.i.i.i.i219 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %task.i.i.i.i219, align 8
  %pagefault_disabled.i.i.i.i220 = getelementptr inbounds %struct.task_struct, ptr %201, i32 0, i32 213
  %202 = ptrtoint ptr %pagefault_disabled.i.i.i.i220 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %pagefault_disabled.i.i.i.i220, align 8
  %inc.i.i.i.i221 = add i32 %203, 1
  store i32 %inc.i.i.i.i221, ptr %pagefault_disabled.i.i.i.i220, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !28
  %204 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %iomem.i.i.i, align 4
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %205) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !31
  %207 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i5.i223 = and i32 %207, -16384
  %208 = inttoptr i32 %and.i.i.i1.i5.i223 to ptr
  %task.i.i.i6.i224 = getelementptr inbounds %struct.thread_info, ptr %208, i32 0, i32 2
  %209 = ptrtoint ptr %task.i.i.i6.i224 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %task.i.i.i6.i224, align 8
  %pagefault_disabled.i.i.i7.i225 = getelementptr inbounds %struct.task_struct, ptr %210, i32 0, i32 213
  %211 = ptrtoint ptr %pagefault_disabled.i.i.i7.i225 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %pagefault_disabled.i.i.i7.i225, align 8
  %dec.i.i.i.i226 = add i32 %212, -1
  store i32 %dec.i.i.i.i226, ptr %pagefault_disabled.i.i.i7.i225, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !32
  %213 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i8.i227 = and i32 %213, -16384
  %214 = inttoptr i32 %and.i.i.i.i8.i227 to ptr
  %preempt_count.i.i.i9.i228 = getelementptr inbounds %struct.thread_info, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %preempt_count.i.i.i9.i228 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile i32, ptr %preempt_count.i.i.i9.i228, align 4
  %sub.i.i.i229 = add i32 %216, -1
  store volatile i32 %sub.i.i.i229, ptr %preempt_count.i.i.i9.i228, align 4
  %217 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i.i230 = and i32 %217, -16384
  %218 = inttoptr i32 %and.i.i.i.i.i230 to ptr
  %preempt_count.i.i.i.i231 = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %preempt_count.i.i.i.i231 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load volatile i32, ptr %preempt_count.i.i.i.i231, align 4
  %add.i.i.i232 = add i32 %220, 1
  store volatile i32 %add.i.i.i232, ptr %preempt_count.i.i.i.i231, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  %221 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i.i233 = and i32 %221, -16384
  %222 = inttoptr i32 %and.i.i.i1.i.i233 to ptr
  %task.i.i.i.i234 = getelementptr inbounds %struct.thread_info, ptr %222, i32 0, i32 2
  %223 = ptrtoint ptr %task.i.i.i.i234 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %task.i.i.i.i234, align 8
  %pagefault_disabled.i.i.i.i235 = getelementptr inbounds %struct.task_struct, ptr %224, i32 0, i32 213
  %225 = ptrtoint ptr %pagefault_disabled.i.i.i.i235 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %pagefault_disabled.i.i.i.i235, align 8
  %inc.i.i.i.i236 = add i32 %226, 1
  store i32 %inc.i.i.i.i236, ptr %pagefault_disabled.i.i.i.i235, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !28
  %227 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %iomem.i.i.i, align 4
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %228) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !31
  %230 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i5.i238 = and i32 %230, -16384
  %231 = inttoptr i32 %and.i.i.i1.i5.i238 to ptr
  %task.i.i.i6.i239 = getelementptr inbounds %struct.thread_info, ptr %231, i32 0, i32 2
  %232 = ptrtoint ptr %task.i.i.i6.i239 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %task.i.i.i6.i239, align 8
  %pagefault_disabled.i.i.i7.i240 = getelementptr inbounds %struct.task_struct, ptr %233, i32 0, i32 213
  %234 = ptrtoint ptr %pagefault_disabled.i.i.i7.i240 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %pagefault_disabled.i.i.i7.i240, align 8
  %dec.i.i.i.i241 = add i32 %235, -1
  store i32 %dec.i.i.i.i241, ptr %pagefault_disabled.i.i.i7.i240, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !32
  %236 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i8.i242 = and i32 %236, -16384
  %237 = inttoptr i32 %and.i.i.i.i8.i242 to ptr
  %preempt_count.i.i.i9.i243 = getelementptr inbounds %struct.thread_info, ptr %237, i32 0, i32 1
  %238 = ptrtoint ptr %preempt_count.i.i.i9.i243 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load volatile i32, ptr %preempt_count.i.i.i9.i243, align 4
  %sub.i.i.i244 = add i32 %239, -1
  store volatile i32 %sub.i.i.i244, ptr %preempt_count.i.i.i9.i243, align 4
  %240 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i.i245 = and i32 %240, -16384
  %241 = inttoptr i32 %and.i.i.i.i.i245 to ptr
  %preempt_count.i.i.i.i246 = getelementptr inbounds %struct.thread_info, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %preempt_count.i.i.i.i246 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load volatile i32, ptr %preempt_count.i.i.i.i246, align 4
  %add.i.i.i247 = add i32 %243, 1
  store volatile i32 %add.i.i.i247, ptr %preempt_count.i.i.i.i246, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  %244 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i.i248 = and i32 %244, -16384
  %245 = inttoptr i32 %and.i.i.i1.i.i248 to ptr
  %task.i.i.i.i249 = getelementptr inbounds %struct.thread_info, ptr %245, i32 0, i32 2
  %246 = ptrtoint ptr %task.i.i.i.i249 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %task.i.i.i.i249, align 8
  %pagefault_disabled.i.i.i.i250 = getelementptr inbounds %struct.task_struct, ptr %247, i32 0, i32 213
  %248 = ptrtoint ptr %pagefault_disabled.i.i.i.i250 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %pagefault_disabled.i.i.i.i250, align 8
  %inc.i.i.i.i251 = add i32 %249, 1
  store i32 %inc.i.i.i.i251, ptr %pagefault_disabled.i.i.i.i250, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !28
  %250 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %iomem.i.i.i, align 4
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %251) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !31
  %253 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i5.i253 = and i32 %253, -16384
  %254 = inttoptr i32 %and.i.i.i1.i5.i253 to ptr
  %task.i.i.i6.i254 = getelementptr inbounds %struct.thread_info, ptr %254, i32 0, i32 2
  %255 = ptrtoint ptr %task.i.i.i6.i254 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %task.i.i.i6.i254, align 8
  %pagefault_disabled.i.i.i7.i255 = getelementptr inbounds %struct.task_struct, ptr %256, i32 0, i32 213
  %257 = ptrtoint ptr %pagefault_disabled.i.i.i7.i255 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %pagefault_disabled.i.i.i7.i255, align 8
  %dec.i.i.i.i256 = add i32 %258, -1
  store i32 %dec.i.i.i.i256, ptr %pagefault_disabled.i.i.i7.i255, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !32
  %259 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i8.i257 = and i32 %259, -16384
  %260 = inttoptr i32 %and.i.i.i.i8.i257 to ptr
  %preempt_count.i.i.i9.i258 = getelementptr inbounds %struct.thread_info, ptr %260, i32 0, i32 1
  %261 = ptrtoint ptr %preempt_count.i.i.i9.i258 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load volatile i32, ptr %preempt_count.i.i.i9.i258, align 4
  %sub.i.i.i259 = add i32 %262, -1
  store volatile i32 %sub.i.i.i259, ptr %preempt_count.i.i.i9.i258, align 4
  %263 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i.i261 = and i32 %263, -16384
  %264 = inttoptr i32 %and.i.i.i.i.i261 to ptr
  %preempt_count.i.i.i.i262 = getelementptr inbounds %struct.thread_info, ptr %264, i32 0, i32 1
  %265 = ptrtoint ptr %preempt_count.i.i.i.i262 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load volatile i32, ptr %preempt_count.i.i.i.i262, align 4
  %add.i.i.i263 = add i32 %266, 1
  store volatile i32 %add.i.i.i263, ptr %preempt_count.i.i.i.i262, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  %267 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i.i264 = and i32 %267, -16384
  %268 = inttoptr i32 %and.i.i.i1.i.i264 to ptr
  %task.i.i.i.i265 = getelementptr inbounds %struct.thread_info, ptr %268, i32 0, i32 2
  %269 = ptrtoint ptr %task.i.i.i.i265 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %task.i.i.i.i265, align 8
  %pagefault_disabled.i.i.i.i266 = getelementptr inbounds %struct.task_struct, ptr %270, i32 0, i32 213
  %271 = ptrtoint ptr %pagefault_disabled.i.i.i.i266 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %pagefault_disabled.i.i.i.i266, align 8
  %inc.i.i.i.i267 = add i32 %272, 1
  store i32 %inc.i.i.i.i267, ptr %pagefault_disabled.i.i.i.i266, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !28
  %273 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i.i269 = getelementptr i8, ptr %274, i32 %and.i
  %add.ptr.i271 = getelementptr i8, ptr %add.ptr.i.i.i269, i32 %and1.i
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i271) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !31
  %276 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i1.i5.i272 = and i32 %276, -16384
  %277 = inttoptr i32 %and.i.i.i1.i5.i272 to ptr
  %task.i.i.i6.i273 = getelementptr inbounds %struct.thread_info, ptr %277, i32 0, i32 2
  %278 = ptrtoint ptr %task.i.i.i6.i273 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %task.i.i.i6.i273, align 8
  %pagefault_disabled.i.i.i7.i274 = getelementptr inbounds %struct.task_struct, ptr %279, i32 0, i32 213
  %280 = ptrtoint ptr %pagefault_disabled.i.i.i7.i274 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %pagefault_disabled.i.i.i7.i274, align 8
  %dec.i.i.i.i275 = add i32 %281, -1
  store i32 %dec.i.i.i.i275, ptr %pagefault_disabled.i.i.i7.i274, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !32
  %282 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i8.i276 = and i32 %282, -16384
  %283 = inttoptr i32 %and.i.i.i.i8.i276 to ptr
  %preempt_count.i.i.i9.i277 = getelementptr inbounds %struct.thread_info, ptr %283, i32 0, i32 1
  %284 = ptrtoint ptr %preempt_count.i.i.i9.i277 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load volatile i32, ptr %preempt_count.i.i.i9.i277, align 4
  %sub.i.i.i278 = add i32 %285, -1
  store volatile i32 %sub.i.i.i278, ptr %preempt_count.i.i.i9.i277, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -562209859, i32 %275)
  %cmp55 = icmp eq i32 %275, -562209859
  br i1 %cmp55, label %for.body44.amount_found_crit_edge, label %for.cond42

for.body44.amount_found_crit_edge:                ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %amount_found

for.end60:                                        ; preds = %for.cond42
  call void @__sanitizer_cov_trace_pc() #7
  %286 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %pri, align 4
  %add.ptr66 = getelementptr i8, ptr %287, i32 1049088
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %and72 = and i32 %288, -4097
  %289 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %pri, align 4
  %add.ptr75 = getelementptr i8, ptr %290, i32 1049088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %and72) #5, !srcloc !23
  br label %amount_found

amount_found:                                     ; preds = %for.end60, %for.body44.amount_found_crit_edge
  %291 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %iomem.i.i.i, align 4
  tail call void @iounmap(ptr noundef %292) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  br label %cleanup77

cleanup77:                                        ; preds = %amount_found, %do.end, %do.body.cleanup77_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_devinit_pll_set(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @nv10_devinit, !1, !"nv10_devinit", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv10.c", i32 100, i32 1}
!2 = !{ptr @nv10_devinit_meminit.mem_width, !3, !"mem_width", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv10.c", i32 37, i32 19}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv10.c", i32 51, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nv10_devinit_meminit._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @nv10_devinit_meminit._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{!"sp"}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2156231565}
!23 = !{i64 5386439}
!24 = !{i64 5386857}
!25 = !{i64 2156232414}
!26 = !{i64 2156232808}
!27 = !{i64 2155920818}
!28 = !{i64 2153893414}
!29 = !{i64 2152928561}
!30 = !{i64 2156226894}
!31 = !{i64 2153893621}
!32 = !{i64 2155921144}
!33 = !{i64 2152927206}
!34 = !{i64 2156233292}
!35 = !{i64 2156234062}
!36 = !{i64 2156234438}
