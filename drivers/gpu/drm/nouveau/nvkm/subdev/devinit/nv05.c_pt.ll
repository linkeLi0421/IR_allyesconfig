; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv05.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv05.c"
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
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.83 }
%struct.anon.83 = type { i8, i8, i8, i8, i8 }
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

@nv05_devinit = internal constant { %struct.nvkm_devinit_func, [32 x i8] } { %struct.nvkm_devinit_func { ptr @nv04_devinit_dtor, ptr @nv04_devinit_preinit, ptr null, ptr @nv04_devinit_post, ptr null, ptr @nv05_devinit_meminit, ptr @nv04_devinit_pll_set, ptr null }, [32 x i8] zeroinitializer }, align 32
@nv05_devinit_meminit.default_config_tab = internal constant { [8 x [2 x i8]], [16 x i8] } { [8 x [2 x i8]] [[2 x i8] c"$\00", [2 x i8] c"(\00", [2 x i8] c"$\01", [2 x i8] c"\1F\00", [2 x i8] c"\0F\00", [2 x i8] c"\17\00", [2 x i8] c"\06\00", [2 x i8] zeroinitializer], [16 x i8] zeroinitializer }, align 32
@nv05_devinit_meminit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 59, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: failed to map fb\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nv05_devinit_meminit\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv05.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv05_devinit_meminit._entry_ptr = internal global ptr @nv05_devinit_meminit._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"nv05_devinit\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 130, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"default_config_tab\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 37, i32 18 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv05.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 59, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @nv05_devinit_meminit._entry, ptr @nv05_devinit_meminit._entry_ptr, ptr @nv05_devinit, ptr @nv05_devinit_meminit.default_config_tab, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv05_devinit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv05_devinit_meminit.default_config_tab to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv05_devinit_meminit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv05_devinit_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pinit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv04_devinit_new_(ptr noundef nonnull @nv05_devinit, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pinit) #6
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
define internal void @nv05_devinit_meminit(ptr noundef %init) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %bios3 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios3, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %resource_addr.i = getelementptr inbounds %struct.nvkm_device_func, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %resource_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resource_addr.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 1) #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %resource_size.i = getelementptr inbounds %struct.nvkm_device_func, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %resource_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resource_size.i, align 4
  %call2.i = tail call i32 %11(ptr noundef %1, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 16) #9
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.do.body_crit_edge, label %if.end.i.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i.i:                                       ; preds = %entry
  %call.i.i.i = tail call ptr @ioremap_wc(i32 noundef %call.i, i32 noundef %call2.i) #6
  %iomem.i.i.i = getelementptr inbounds %struct.io_mapping, ptr %call7.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i.i, ptr %iomem.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then3.i.i, label %if.end9

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %do.body

do.body:                                          ; preds = %if.then3.i.i, %entry.do.body_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 5
  %14 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef %name) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i
  %20 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i, ptr %call7.i.i.i, align 8
  %size3.i.i.i = getelementptr inbounds %struct.io_mapping, ptr %call7.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %size3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call2.i, ptr %size3.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %22 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = and i32 %22, -573
  %or4.i.i.i = or i32 %or.i.i.i, 516
  %prot.i.i.i = getelementptr inbounds %struct.io_mapping, ptr %call7.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %prot.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or4.i.i.i, ptr %prot.i.i.i, align 8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 1052672
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  %27 = trunc i32 %26 to i8
  %28 = lshr i8 %27, 2
  %conv = and i8 %28, 15
  %bmp_offset.i.i = getelementptr inbounds %struct.nvkm_bios, ptr %3, i32 0, i32 5
  %29 = ptrtoint ptr %bmp_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bmp_offset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i346 = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i346, label %if.end9.if.else_crit_edge, label %bmp_version.exit.i

if.end9.if.else_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

bmp_version.exit.i:                               ; preds = %if.end9
  %add.i.i = add i32 %30, 5
  %call.i.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %3, i32 noundef %add.i.i) #6
  %31 = ptrtoint ptr %bmp_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bmp_offset.i.i, align 4
  %add3.i.i = add i32 %32, 6
  %call4.i.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %3, i32 noundef %add3.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i)
  %cmp.i = icmp ugt i8 %call.i.i, 2
  br i1 %cmp.i, label %bmp_mem_init_table.exit, label %bmp_version.exit.i.if.else_crit_edge

bmp_version.exit.i.if.else_crit_edge:             ; preds = %bmp_version.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

bmp_mem_init_table.exit:                          ; preds = %bmp_version.exit.i
  %33 = ptrtoint ptr %bmp_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bmp_offset.i.i, align 4
  %add.i = add i32 %34, 24
  %call2.i347 = tail call zeroext i16 @nvbios_rd16(ptr noundef %3, i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call2.i347)
  %tobool12.not = icmp eq i16 %call2.i347, 0
  br i1 %tobool12.not, label %bmp_mem_init_table.exit.if.else_crit_edge, label %if.then13

bmp_mem_init_table.exit.if.else_crit_edge:        ; preds = %bmp_mem_init_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then13:                                        ; preds = %bmp_mem_init_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv14 = zext i16 %call2.i347 to i32
  %35 = shl nuw nsw i8 %conv, 1
  %mul = zext i8 %35 to i32
  %add = add nuw nsw i32 %conv14, %mul
  %call17 = tail call zeroext i8 @nvbios_rd08(ptr noundef %3, i32 noundef %add) #6
  %add22 = add nuw nsw i32 %add, 1
  %call23 = tail call zeroext i8 @nvbios_rd08(ptr noundef %3, i32 noundef %add22) #6
  %phi.bo = add i16 %call2.i347, 16
  br label %if.end32

if.else:                                          ; preds = %bmp_mem_init_table.exit.if.else_crit_edge, %bmp_version.exit.i.if.else_crit_edge, %if.end9.if.else_crit_edge
  %idxprom = zext i8 %conv to i32
  %arrayidx25 = getelementptr [8 x [2 x i8]], ptr @nv05_devinit_meminit.default_config_tab, i32 0, i32 %idxprom
  %36 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx25, align 1
  %arrayidx30 = getelementptr [8 x [2 x i8]], ptr @nv05_devinit_meminit.default_config_tab, i32 0, i32 %idxprom, i32 1
  %38 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx30, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then13
  %tobool12.not463 = phi i1 [ false, %if.then13 ], [ true, %if.else ]
  %retval.0.i461 = phi i16 [ %phi.bo, %if.then13 ], [ 16, %if.else ]
  %ramcfg.sroa.0.0 = phi i8 [ %call17, %if.then13 ], [ %37, %if.else ]
  %ramcfg.sroa.6.0 = phi i8 [ %call23, %if.then13 ], [ %39, %if.else ]
  %call33 = tail call zeroext i8 @nvkm_rdvgas(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 1) #6
  %40 = or i8 %call33, 32
  tail call void @nvkm_wrvgas(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext %40) #6
  %41 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri, align 4
  %add.ptr38 = getelementptr i8, ptr %42, i32 1048576
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  %and41 = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end32.out_crit_edge

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end44:                                         ; preds = %if.end32
  %44 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri, align 4
  %add.ptr47 = getelementptr i8, ptr %45, i32 1048704
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %and53 = and i32 %46, -17
  %47 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri, align 4
  %add.ptr56 = getelementptr i8, ptr %48, i32 1048704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %and53) #6, !srcloc !27
  br i1 %tobool12.not463, label %if.end44.if.end77_crit_edge, label %for.body.preheader

if.end44.if.end77_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

for.body.preheader:                               ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %conv65 = zext i16 %retval.0.i461 to i32
  %call66 = tail call i32 @nvbios_rd32(ptr noundef %3, i32 noundef %conv65) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri, align 4
  %add.ptr73 = getelementptr i8, ptr %50, i32 1049600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %call66) #6, !srcloc !27
  %add75 = add i16 %retval.0.i461, 4
  %conv65.1 = zext i16 %add75 to i32
  %call66.1 = tail call i32 @nvbios_rd32(ptr noundef %3, i32 noundef %conv65.1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri, align 4
  %add.ptr73.1 = getelementptr i8, ptr %52, i32 1049604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.1, i32 %call66.1) #6, !srcloc !27
  %add75.1 = add i16 %retval.0.i461, 8
  %conv65.2 = zext i16 %add75.1 to i32
  %call66.2 = tail call i32 @nvbios_rd32(ptr noundef %3, i32 noundef %conv65.2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri, align 4
  %add.ptr73.2 = getelementptr i8, ptr %54, i32 1049608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.2, i32 %call66.2) #6, !srcloc !27
  %add75.2 = add i16 %retval.0.i461, 12
  %conv65.3 = zext i16 %add75.2 to i32
  %call66.3 = tail call i32 @nvbios_rd32(ptr noundef %3, i32 noundef %conv65.3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pri, align 4
  %add.ptr73.3 = getelementptr i8, ptr %56, i32 1049612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.3, i32 %call66.3) #6, !srcloc !27
  %add75.3 = add i16 %retval.0.i461, 16
  %conv65.4 = zext i16 %add75.3 to i32
  %call66.4 = tail call i32 @nvbios_rd32(ptr noundef %3, i32 noundef %conv65.4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri, align 4
  %add.ptr73.4 = getelementptr i8, ptr %58, i32 1049616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.4, i32 %call66.4) #6, !srcloc !27
  %add75.4 = add i16 %retval.0.i461, 20
  %conv65.5 = zext i16 %add75.4 to i32
  %call66.5 = tail call i32 @nvbios_rd32(ptr noundef %3, i32 noundef %conv65.5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pri, align 4
  %add.ptr73.5 = getelementptr i8, ptr %60, i32 1049620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.5, i32 %call66.5) #6, !srcloc !27
  %add75.5 = add i16 %retval.0.i461, 24
  %conv65.6 = zext i16 %add75.5 to i32
  %call66.6 = tail call i32 @nvbios_rd32(ptr noundef %3, i32 noundef %conv65.6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pri, align 4
  %add.ptr73.6 = getelementptr i8, ptr %62, i32 1049624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.6, i32 %call66.6) #6, !srcloc !27
  %add75.6 = add i16 %retval.0.i461, 28
  %conv65.7 = zext i16 %add75.6 to i32
  %call66.7 = tail call i32 @nvbios_rd32(ptr noundef %3, i32 noundef %conv65.7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pri, align 4
  %add.ptr73.7 = getelementptr i8, ptr %64, i32 1049628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.7, i32 %call66.7) #6, !srcloc !27
  br label %if.end77

if.end77:                                         ; preds = %for.body.preheader, %if.end44.if.end77_crit_edge
  %65 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri, align 4
  %add.ptr83 = getelementptr i8, ptr %66, i32 1048576
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %and89 = and i32 %67, -64
  %conv91 = zext i8 %ramcfg.sroa.0.0 to i32
  %or92 = or i32 %and89, %conv91
  %68 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pri, align 4
  %add.ptr94 = getelementptr i8, ptr %69, i32 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %or92) #6, !srcloc !27
  %conv97 = zext i8 %ramcfg.sroa.6.0 to i32
  %and98 = and i32 %conv97, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end77.if.end117_crit_edge, label %if.then100

if.end77.if.end117_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

if.then100:                                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pri, align 4
  %add.ptr106 = getelementptr i8, ptr %71, i32 1049088
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %or113 = or i32 %72, 536870912
  %73 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pri, align 4
  %add.ptr115 = getelementptr i8, ptr %74, i32 1049088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %or113) #6, !srcloc !27
  br label %if.end117

if.end117:                                        ; preds = %if.then100, %if.end77.if.end117_crit_edge
  %75 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pri, align 4
  %add.ptr123 = getelementptr i8, ptr %76, i32 1049092
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr123) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %and129 = and i32 %77, -7340034
  %and132 = shl nuw nsw i32 %conv97, 20
  %shl = and i32 %and132, 1048576
  %or133 = or i32 %and129, %shl
  %78 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pri, align 4
  %add.ptr135 = getelementptr i8, ptr %79, i32 1049092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 %or133) #6, !srcloc !27
  %80 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pri, align 4
  %add.ptr142 = getelementptr i8, ptr %81, i32 1049092
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr142) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %or149 = or i32 %82, 1
  %83 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pri, align 4
  %add.ptr151 = getelementptr i8, ptr %84, i32 1049092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr151, i32 %or149) #6, !srcloc !27
  br label %for.body156

for.body156:                                      ; preds = %for.body156.for.body156_crit_edge, %if.end117
  %i.1469 = phi i32 [ 0, %if.end117 ], [ %inc159, %for.body156.for.body156_crit_edge ]
  %mul157 = shl i32 %i.1469, 2
  %and.i = and i32 %mul157, -4096
  %85 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %88, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %89 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 213
  %93 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %94, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %95 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %96, i32 %and.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -272716322) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  %97 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i4.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i1.i4.i to ptr
  %task.i.i.i5.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %task.i.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task.i.i.i5.i, align 8
  %pagefault_disabled.i.i.i6.i = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 213
  %101 = ptrtoint ptr %pagefault_disabled.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pagefault_disabled.i.i.i6.i, align 8
  %dec.i.i.i.i = add i32 %102, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i6.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %103 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i7.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i.i7.i to ptr
  %preempt_count.i.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %preempt_count.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %preempt_count.i.i.i8.i, align 4
  %sub.i.i.i = add i32 %106, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i8.i, align 4
  %inc159 = add nuw nsw i32 %i.1469, 1
  %exitcond.not = icmp eq i32 %inc159, 4
  br i1 %exitcond.not, label %for.end160, label %for.body156.for.body156_crit_edge

for.body156.for.body156_crit_edge:                ; preds = %for.body156
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body156

for.end160:                                       ; preds = %for.body156
  %107 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i.i349 = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i.i.i.i349 to ptr
  %preempt_count.i.i.i.i350 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %preempt_count.i.i.i.i350 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %preempt_count.i.i.i.i350, align 4
  %add.i.i.i351 = add i32 %110, 1
  store volatile i32 %add.i.i.i351, ptr %preempt_count.i.i.i.i350, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %111 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i.i352 = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i.i1.i.i352 to ptr
  %task.i.i.i.i353 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %task.i.i.i.i353 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %task.i.i.i.i353, align 8
  %pagefault_disabled.i.i.i.i354 = getelementptr inbounds %struct.task_struct, ptr %114, i32 0, i32 213
  %115 = ptrtoint ptr %pagefault_disabled.i.i.i.i354 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pagefault_disabled.i.i.i.i354, align 8
  %inc.i.i.i.i355 = add i32 %116, 1
  store i32 %inc.i.i.i.i355, ptr %pagefault_disabled.i.i.i.i354, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %117 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i357 = getelementptr i8, ptr %118, i32 12
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i357) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  %120 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i5.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i1.i5.i to ptr
  %task.i.i.i6.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %task.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %task.i.i.i6.i, align 8
  %pagefault_disabled.i.i.i7.i = getelementptr inbounds %struct.task_struct, ptr %123, i32 0, i32 213
  %124 = ptrtoint ptr %pagefault_disabled.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pagefault_disabled.i.i.i7.i, align 8
  %dec.i.i.i.i358 = add i32 %125, -1
  store i32 %dec.i.i.i.i358, ptr %pagefault_disabled.i.i.i7.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %126 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i8.i = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i.i8.i to ptr
  %preempt_count.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %preempt_count.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %preempt_count.i.i.i9.i, align 4
  %sub.i.i.i359 = add i32 %129, -1
  store volatile i32 %sub.i.i.i359, ptr %preempt_count.i.i.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %119)
  %cmp162.not = icmp eq i32 %119, -272716322
  br i1 %cmp162.not, label %for.end160.if.end181_crit_edge, label %if.then164

for.end160.if.end181_crit_edge:                   ; preds = %for.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end181

if.then164:                                       ; preds = %for.end160
  call void @__sanitizer_cov_trace_pc() #8
  %130 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pri, align 4
  %add.ptr170 = getelementptr i8, ptr %131, i32 1048576
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr170) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %and176 = and i32 %132, -5
  %133 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pri, align 4
  %add.ptr179 = getelementptr i8, ptr %134, i32 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 %and176) #6, !srcloc !27
  br label %if.end181

if.end181:                                        ; preds = %if.then164, %for.end160.if.end181_crit_edge
  %135 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pri, align 4
  %add.ptr184 = getelementptr i8, ptr %136, i32 1048576
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr184) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  %and187 = and i32 %137, 3
  %138 = zext i32 %and187 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and187, label %if.end181.if.end234_crit_edge [
    i32 0, label %land.lhs.true
    i32 3, label %land.lhs.true214
  ]

if.end181.if.end234_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end234

land.lhs.true:                                    ; preds = %if.end181
  %139 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i.i.i = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %142, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %143 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i.i.i = and i32 %143, -16384
  %144 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %146, i32 0, i32 213
  %147 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %148, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %149 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %150, i32 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 -255939106) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  %151 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i4.i.i = and i32 %151, -16384
  %152 = inttoptr i32 %and.i.i.i1.i4.i.i to ptr
  %task.i.i.i5.i.i = getelementptr inbounds %struct.thread_info, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %task.i.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %task.i.i.i5.i.i, align 8
  %pagefault_disabled.i.i.i6.i.i = getelementptr inbounds %struct.task_struct, ptr %154, i32 0, i32 213
  %155 = ptrtoint ptr %pagefault_disabled.i.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %pagefault_disabled.i.i.i6.i.i, align 8
  %dec.i.i.i.i.i = add i32 %156, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i6.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %157 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i7.i.i = and i32 %157, -16384
  %158 = inttoptr i32 %and.i.i.i.i7.i.i to ptr
  %preempt_count.i.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %preempt_count.i.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %preempt_count.i.i.i8.i.i, align 4
  %sub.i.i.i.i = add i32 %160, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i8.i.i, align 4
  %161 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i.i5.i = and i32 %161, -16384
  %162 = inttoptr i32 %and.i.i.i.i.i5.i to ptr
  %preempt_count.i.i.i.i6.i = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %preempt_count.i.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %preempt_count.i.i.i.i6.i, align 4
  %add.i.i.i7.i = add i32 %164, 1
  store volatile i32 %add.i.i.i7.i, ptr %preempt_count.i.i.i.i6.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %165 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i.i8.i = and i32 %165, -16384
  %166 = inttoptr i32 %and.i.i.i1.i.i8.i to ptr
  %task.i.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %task.i.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %task.i.i.i.i9.i, align 8
  %pagefault_disabled.i.i.i.i10.i = getelementptr inbounds %struct.task_struct, ptr %168, i32 0, i32 213
  %169 = ptrtoint ptr %pagefault_disabled.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %pagefault_disabled.i.i.i.i10.i, align 8
  %inc.i.i.i.i11.i = add i32 %170, 1
  store i32 %inc.i.i.i.i11.i, ptr %pagefault_disabled.i.i.i.i10.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %171 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i.i13.i = getelementptr i8, ptr %172, i32 16777216
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i13.i) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  %174 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i5.i.i = and i32 %174, -16384
  %175 = inttoptr i32 %and.i.i.i1.i5.i.i to ptr
  %task.i.i.i6.i.i = getelementptr inbounds %struct.thread_info, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %task.i.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %task.i.i.i6.i.i, align 8
  %pagefault_disabled.i.i.i7.i.i = getelementptr inbounds %struct.task_struct, ptr %177, i32 0, i32 213
  %178 = ptrtoint ptr %pagefault_disabled.i.i.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %pagefault_disabled.i.i.i7.i.i, align 8
  %dec.i.i.i.i16.i = add i32 %179, -1
  store i32 %dec.i.i.i.i16.i, ptr %pagefault_disabled.i.i.i7.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %180 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i8.i.i = and i32 %180, -16384
  %181 = inttoptr i32 %and.i.i.i.i8.i.i to ptr
  %preempt_count.i.i.i9.i.i = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %preempt_count.i.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %preempt_count.i.i.i9.i.i, align 4
  %sub.i.i.i17.i = add i32 %183, -1
  store volatile i32 %sub.i.i.i17.i, ptr %preempt_count.i.i.i9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255939106, i32 %173)
  %cmp.i360 = icmp eq i32 %173, -255939106
  br i1 %cmp.i360, label %lor.lhs.false, label %land.lhs.true.if.then194_crit_edge

land.lhs.true.if.then194_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then194

lor.lhs.false:                                    ; preds = %land.lhs.true
  %184 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i.i.i361 = and i32 %184, -16384
  %185 = inttoptr i32 %and.i.i.i.i.i.i361 to ptr
  %preempt_count.i.i.i.i.i362 = getelementptr inbounds %struct.thread_info, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %preempt_count.i.i.i.i.i362 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %preempt_count.i.i.i.i.i362, align 4
  %add.i.i.i.i363 = add i32 %187, 1
  store volatile i32 %add.i.i.i.i363, ptr %preempt_count.i.i.i.i.i362, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %188 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i.i.i364 = and i32 %188, -16384
  %189 = inttoptr i32 %and.i.i.i1.i.i.i364 to ptr
  %task.i.i.i.i.i365 = getelementptr inbounds %struct.thread_info, ptr %189, i32 0, i32 2
  %190 = ptrtoint ptr %task.i.i.i.i.i365 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %task.i.i.i.i.i365, align 8
  %pagefault_disabled.i.i.i.i.i366 = getelementptr inbounds %struct.task_struct, ptr %191, i32 0, i32 213
  %192 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i366 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %pagefault_disabled.i.i.i.i.i366, align 8
  %inc.i.i.i.i.i367 = add i32 %193, 1
  store i32 %inc.i.i.i.i.i367, ptr %pagefault_disabled.i.i.i.i.i366, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %194 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %iomem.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 -239161890) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  %196 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i4.i.i369 = and i32 %196, -16384
  %197 = inttoptr i32 %and.i.i.i1.i4.i.i369 to ptr
  %task.i.i.i5.i.i370 = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 2
  %198 = ptrtoint ptr %task.i.i.i5.i.i370 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %task.i.i.i5.i.i370, align 8
  %pagefault_disabled.i.i.i6.i.i371 = getelementptr inbounds %struct.task_struct, ptr %199, i32 0, i32 213
  %200 = ptrtoint ptr %pagefault_disabled.i.i.i6.i.i371 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %pagefault_disabled.i.i.i6.i.i371, align 8
  %dec.i.i.i.i.i372 = add i32 %201, -1
  store i32 %dec.i.i.i.i.i372, ptr %pagefault_disabled.i.i.i6.i.i371, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %202 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i7.i.i373 = and i32 %202, -16384
  %203 = inttoptr i32 %and.i.i.i.i7.i.i373 to ptr
  %preempt_count.i.i.i8.i.i374 = getelementptr inbounds %struct.thread_info, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %preempt_count.i.i.i8.i.i374 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load volatile i32, ptr %preempt_count.i.i.i8.i.i374, align 4
  %sub.i.i.i.i375 = add i32 %205, -1
  store volatile i32 %sub.i.i.i.i375, ptr %preempt_count.i.i.i8.i.i374, align 4
  %206 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i.i5.i376 = and i32 %206, -16384
  %207 = inttoptr i32 %and.i.i.i.i.i5.i376 to ptr
  %preempt_count.i.i.i.i6.i377 = getelementptr inbounds %struct.thread_info, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %preempt_count.i.i.i.i6.i377 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load volatile i32, ptr %preempt_count.i.i.i.i6.i377, align 4
  %add.i.i.i7.i378 = add i32 %209, 1
  store volatile i32 %add.i.i.i7.i378, ptr %preempt_count.i.i.i.i6.i377, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %210 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i.i8.i379 = and i32 %210, -16384
  %211 = inttoptr i32 %and.i.i.i1.i.i8.i379 to ptr
  %task.i.i.i.i9.i380 = getelementptr inbounds %struct.thread_info, ptr %211, i32 0, i32 2
  %212 = ptrtoint ptr %task.i.i.i.i9.i380 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %task.i.i.i.i9.i380, align 8
  %pagefault_disabled.i.i.i.i10.i381 = getelementptr inbounds %struct.task_struct, ptr %213, i32 0, i32 213
  %214 = ptrtoint ptr %pagefault_disabled.i.i.i.i10.i381 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %pagefault_disabled.i.i.i.i10.i381, align 8
  %inc.i.i.i.i11.i382 = add i32 %215, 1
  store i32 %inc.i.i.i.i11.i382, ptr %pagefault_disabled.i.i.i.i10.i381, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %216 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %iomem.i.i.i, align 4
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %217) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  %219 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i5.i.i383 = and i32 %219, -16384
  %220 = inttoptr i32 %and.i.i.i1.i5.i.i383 to ptr
  %task.i.i.i6.i.i384 = getelementptr inbounds %struct.thread_info, ptr %220, i32 0, i32 2
  %221 = ptrtoint ptr %task.i.i.i6.i.i384 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %task.i.i.i6.i.i384, align 8
  %pagefault_disabled.i.i.i7.i.i385 = getelementptr inbounds %struct.task_struct, ptr %222, i32 0, i32 213
  %223 = ptrtoint ptr %pagefault_disabled.i.i.i7.i.i385 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %pagefault_disabled.i.i.i7.i.i385, align 8
  %dec.i.i.i.i16.i386 = add i32 %224, -1
  store i32 %dec.i.i.i.i16.i386, ptr %pagefault_disabled.i.i.i7.i.i385, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %225 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i8.i.i387 = and i32 %225, -16384
  %226 = inttoptr i32 %and.i.i.i.i8.i.i387 to ptr
  %preempt_count.i.i.i9.i.i388 = getelementptr inbounds %struct.thread_info, ptr %226, i32 0, i32 1
  %227 = ptrtoint ptr %preempt_count.i.i.i9.i.i388 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile i32, ptr %preempt_count.i.i.i9.i.i388, align 4
  %sub.i.i.i17.i389 = add i32 %228, -1
  store volatile i32 %sub.i.i.i17.i389, ptr %preempt_count.i.i.i9.i.i388, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -239161890, i32 %218)
  %cmp.i390 = icmp eq i32 %218, -239161890
  br i1 %cmp.i390, label %lor.lhs.false.if.end234_crit_edge, label %lor.lhs.false.if.then194_crit_edge

lor.lhs.false.if.then194_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then194

lor.lhs.false.if.end234_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end234

if.then194:                                       ; preds = %lor.lhs.false.if.then194_crit_edge, %land.lhs.true.if.then194_crit_edge
  %patt.0 = phi i32 [ -559038735, %lor.lhs.false.if.then194_crit_edge ], [ -559038736, %land.lhs.true.if.then194_crit_edge ]
  %229 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %pri, align 4
  %add.ptr200 = getelementptr i8, ptr %230, i32 1048576
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr200) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %or207 = or i32 %231, 3
  %232 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %pri, align 4
  %add.ptr209 = getelementptr i8, ptr %233, i32 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr209, i32 %or207) #6, !srcloc !27
  br label %if.end234

land.lhs.true214:                                 ; preds = %if.end181
  %234 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i.i.i391 = and i32 %234, -16384
  %235 = inttoptr i32 %and.i.i.i.i.i.i391 to ptr
  %preempt_count.i.i.i.i.i392 = getelementptr inbounds %struct.thread_info, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %preempt_count.i.i.i.i.i392 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load volatile i32, ptr %preempt_count.i.i.i.i.i392, align 4
  %add.i.i.i.i393 = add i32 %237, 1
  store volatile i32 %add.i.i.i.i393, ptr %preempt_count.i.i.i.i.i392, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %238 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i.i.i394 = and i32 %238, -16384
  %239 = inttoptr i32 %and.i.i.i1.i.i.i394 to ptr
  %task.i.i.i.i.i395 = getelementptr inbounds %struct.thread_info, ptr %239, i32 0, i32 2
  %240 = ptrtoint ptr %task.i.i.i.i.i395 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %task.i.i.i.i.i395, align 8
  %pagefault_disabled.i.i.i.i.i396 = getelementptr inbounds %struct.task_struct, ptr %241, i32 0, i32 213
  %242 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i396 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %pagefault_disabled.i.i.i.i.i396, align 8
  %inc.i.i.i.i.i397 = add i32 %243, 1
  store i32 %inc.i.i.i.i.i397, ptr %pagefault_disabled.i.i.i.i.i396, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %244 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i.i.i399 = getelementptr i8, ptr %245, i32 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i399, i32 -255939106) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  %246 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i4.i.i400 = and i32 %246, -16384
  %247 = inttoptr i32 %and.i.i.i1.i4.i.i400 to ptr
  %task.i.i.i5.i.i401 = getelementptr inbounds %struct.thread_info, ptr %247, i32 0, i32 2
  %248 = ptrtoint ptr %task.i.i.i5.i.i401 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %task.i.i.i5.i.i401, align 8
  %pagefault_disabled.i.i.i6.i.i402 = getelementptr inbounds %struct.task_struct, ptr %249, i32 0, i32 213
  %250 = ptrtoint ptr %pagefault_disabled.i.i.i6.i.i402 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %pagefault_disabled.i.i.i6.i.i402, align 8
  %dec.i.i.i.i.i403 = add i32 %251, -1
  store i32 %dec.i.i.i.i.i403, ptr %pagefault_disabled.i.i.i6.i.i402, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %252 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i7.i.i404 = and i32 %252, -16384
  %253 = inttoptr i32 %and.i.i.i.i7.i.i404 to ptr
  %preempt_count.i.i.i8.i.i405 = getelementptr inbounds %struct.thread_info, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %preempt_count.i.i.i8.i.i405 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load volatile i32, ptr %preempt_count.i.i.i8.i.i405, align 4
  %sub.i.i.i.i406 = add i32 %255, -1
  store volatile i32 %sub.i.i.i.i406, ptr %preempt_count.i.i.i8.i.i405, align 4
  %256 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i.i5.i407 = and i32 %256, -16384
  %257 = inttoptr i32 %and.i.i.i.i.i5.i407 to ptr
  %preempt_count.i.i.i.i6.i408 = getelementptr inbounds %struct.thread_info, ptr %257, i32 0, i32 1
  %258 = ptrtoint ptr %preempt_count.i.i.i.i6.i408 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load volatile i32, ptr %preempt_count.i.i.i.i6.i408, align 4
  %add.i.i.i7.i409 = add i32 %259, 1
  store volatile i32 %add.i.i.i7.i409, ptr %preempt_count.i.i.i.i6.i408, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %260 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i.i8.i410 = and i32 %260, -16384
  %261 = inttoptr i32 %and.i.i.i1.i.i8.i410 to ptr
  %task.i.i.i.i9.i411 = getelementptr inbounds %struct.thread_info, ptr %261, i32 0, i32 2
  %262 = ptrtoint ptr %task.i.i.i.i9.i411 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %task.i.i.i.i9.i411, align 8
  %pagefault_disabled.i.i.i.i10.i412 = getelementptr inbounds %struct.task_struct, ptr %263, i32 0, i32 213
  %264 = ptrtoint ptr %pagefault_disabled.i.i.i.i10.i412 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %pagefault_disabled.i.i.i.i10.i412, align 8
  %inc.i.i.i.i11.i413 = add i32 %265, 1
  store i32 %inc.i.i.i.i11.i413, ptr %pagefault_disabled.i.i.i.i10.i412, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %266 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i.i13.i414 = getelementptr i8, ptr %267, i32 8388608
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i13.i414) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  %269 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i5.i.i415 = and i32 %269, -16384
  %270 = inttoptr i32 %and.i.i.i1.i5.i.i415 to ptr
  %task.i.i.i6.i.i416 = getelementptr inbounds %struct.thread_info, ptr %270, i32 0, i32 2
  %271 = ptrtoint ptr %task.i.i.i6.i.i416 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %task.i.i.i6.i.i416, align 8
  %pagefault_disabled.i.i.i7.i.i417 = getelementptr inbounds %struct.task_struct, ptr %272, i32 0, i32 213
  %273 = ptrtoint ptr %pagefault_disabled.i.i.i7.i.i417 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %pagefault_disabled.i.i.i7.i.i417, align 8
  %dec.i.i.i.i16.i418 = add i32 %274, -1
  store i32 %dec.i.i.i.i16.i418, ptr %pagefault_disabled.i.i.i7.i.i417, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %275 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i8.i.i419 = and i32 %275, -16384
  %276 = inttoptr i32 %and.i.i.i.i8.i.i419 to ptr
  %preempt_count.i.i.i9.i.i420 = getelementptr inbounds %struct.thread_info, ptr %276, i32 0, i32 1
  %277 = ptrtoint ptr %preempt_count.i.i.i9.i.i420 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load volatile i32, ptr %preempt_count.i.i.i9.i.i420, align 4
  %sub.i.i.i17.i421 = add i32 %278, -1
  store volatile i32 %sub.i.i.i17.i421, ptr %preempt_count.i.i.i9.i.i420, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255939106, i32 %268)
  %cmp.i422 = icmp eq i32 %268, -255939106
  br i1 %cmp.i422, label %land.lhs.true214.if.end234_crit_edge, label %if.then217

land.lhs.true214.if.end234_crit_edge:             ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end234

if.then217:                                       ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #8
  %279 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %pri, align 4
  %add.ptr223 = getelementptr i8, ptr %280, i32 1048576
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr223) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %and229 = and i32 %281, -4
  %or230 = or i32 %and229, 2
  %282 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %pri, align 4
  %add.ptr232 = getelementptr i8, ptr %283, i32 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr232, i32 %or230) #6, !srcloc !27
  br label %if.end234

if.end234:                                        ; preds = %if.then217, %land.lhs.true214.if.end234_crit_edge, %if.then194, %lor.lhs.false.if.end234_crit_edge, %if.end181.if.end234_crit_edge
  %patt.2 = phi i32 [ -559038736, %land.lhs.true214.if.end234_crit_edge ], [ -559038736, %if.then217 ], [ %patt.0, %if.then194 ], [ -559038735, %lor.lhs.false.if.end234_crit_edge ], [ -559038737, %if.end181.if.end234_crit_edge ]
  %inc235 = add nuw nsw i32 %patt.2, 1
  %284 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i.i.i423 = and i32 %284, -16384
  %285 = inttoptr i32 %and.i.i.i.i.i.i423 to ptr
  %preempt_count.i.i.i.i.i424 = getelementptr inbounds %struct.thread_info, ptr %285, i32 0, i32 1
  %286 = ptrtoint ptr %preempt_count.i.i.i.i.i424 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load volatile i32, ptr %preempt_count.i.i.i.i.i424, align 4
  %add.i.i.i.i425 = add i32 %287, 1
  store volatile i32 %add.i.i.i.i425, ptr %preempt_count.i.i.i.i.i424, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %288 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i.i.i426 = and i32 %288, -16384
  %289 = inttoptr i32 %and.i.i.i1.i.i.i426 to ptr
  %task.i.i.i.i.i427 = getelementptr inbounds %struct.thread_info, ptr %289, i32 0, i32 2
  %290 = ptrtoint ptr %task.i.i.i.i.i427 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %task.i.i.i.i.i427, align 8
  %pagefault_disabled.i.i.i.i.i428 = getelementptr inbounds %struct.task_struct, ptr %291, i32 0, i32 213
  %292 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i428 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %pagefault_disabled.i.i.i.i.i428, align 8
  %inc.i.i.i.i.i429 = add i32 %293, 1
  store i32 %inc.i.i.i.i.i429, ptr %pagefault_disabled.i.i.i.i.i428, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %294 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i.i.i431 = getelementptr i8, ptr %295, i32 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %296 = tail call i32 @llvm.bswap.i32(i32 %inc235) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i431, i32 %296) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  %297 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i4.i.i432 = and i32 %297, -16384
  %298 = inttoptr i32 %and.i.i.i1.i4.i.i432 to ptr
  %task.i.i.i5.i.i433 = getelementptr inbounds %struct.thread_info, ptr %298, i32 0, i32 2
  %299 = ptrtoint ptr %task.i.i.i5.i.i433 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %task.i.i.i5.i.i433, align 8
  %pagefault_disabled.i.i.i6.i.i434 = getelementptr inbounds %struct.task_struct, ptr %300, i32 0, i32 213
  %301 = ptrtoint ptr %pagefault_disabled.i.i.i6.i.i434 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %pagefault_disabled.i.i.i6.i.i434, align 8
  %dec.i.i.i.i.i435 = add i32 %302, -1
  store i32 %dec.i.i.i.i.i435, ptr %pagefault_disabled.i.i.i6.i.i434, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %303 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i7.i.i436 = and i32 %303, -16384
  %304 = inttoptr i32 %and.i.i.i.i7.i.i436 to ptr
  %preempt_count.i.i.i8.i.i437 = getelementptr inbounds %struct.thread_info, ptr %304, i32 0, i32 1
  %305 = ptrtoint ptr %preempt_count.i.i.i8.i.i437 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load volatile i32, ptr %preempt_count.i.i.i8.i.i437, align 4
  %sub.i.i.i.i438 = add i32 %306, -1
  store volatile i32 %sub.i.i.i.i438, ptr %preempt_count.i.i.i8.i.i437, align 4
  %307 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i.i5.i439 = and i32 %307, -16384
  %308 = inttoptr i32 %and.i.i.i.i.i5.i439 to ptr
  %preempt_count.i.i.i.i6.i440 = getelementptr inbounds %struct.thread_info, ptr %308, i32 0, i32 1
  %309 = ptrtoint ptr %preempt_count.i.i.i.i6.i440 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load volatile i32, ptr %preempt_count.i.i.i.i6.i440, align 4
  %add.i.i.i7.i441 = add i32 %310, 1
  store volatile i32 %add.i.i.i7.i441, ptr %preempt_count.i.i.i.i6.i440, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %311 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i.i8.i442 = and i32 %311, -16384
  %312 = inttoptr i32 %and.i.i.i1.i.i8.i442 to ptr
  %task.i.i.i.i9.i443 = getelementptr inbounds %struct.thread_info, ptr %312, i32 0, i32 2
  %313 = ptrtoint ptr %task.i.i.i.i9.i443 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %task.i.i.i.i9.i443, align 8
  %pagefault_disabled.i.i.i.i10.i444 = getelementptr inbounds %struct.task_struct, ptr %314, i32 0, i32 213
  %315 = ptrtoint ptr %pagefault_disabled.i.i.i.i10.i444 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %pagefault_disabled.i.i.i.i10.i444, align 8
  %inc.i.i.i.i11.i445 = add i32 %316, 1
  store i32 %inc.i.i.i.i11.i445, ptr %pagefault_disabled.i.i.i.i10.i444, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %317 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i.i13.i446 = getelementptr i8, ptr %318, i32 4194304
  %319 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i13.i446) #6, !srcloc !22
  %320 = tail call i32 @llvm.bswap.i32(i32 %319) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  %321 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i1.i5.i.i447 = and i32 %321, -16384
  %322 = inttoptr i32 %and.i.i.i1.i5.i.i447 to ptr
  %task.i.i.i6.i.i448 = getelementptr inbounds %struct.thread_info, ptr %322, i32 0, i32 2
  %323 = ptrtoint ptr %task.i.i.i6.i.i448 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %task.i.i.i6.i.i448, align 8
  %pagefault_disabled.i.i.i7.i.i449 = getelementptr inbounds %struct.task_struct, ptr %324, i32 0, i32 213
  %325 = ptrtoint ptr %pagefault_disabled.i.i.i7.i.i449 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %pagefault_disabled.i.i.i7.i.i449, align 8
  %dec.i.i.i.i16.i450 = add i32 %326, -1
  store i32 %dec.i.i.i.i16.i450, ptr %pagefault_disabled.i.i.i7.i.i449, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %327 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i.i.i8.i.i451 = and i32 %327, -16384
  %328 = inttoptr i32 %and.i.i.i.i8.i.i451 to ptr
  %preempt_count.i.i.i9.i.i452 = getelementptr inbounds %struct.thread_info, ptr %328, i32 0, i32 1
  %329 = ptrtoint ptr %preempt_count.i.i.i9.i.i452 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load volatile i32, ptr %preempt_count.i.i.i9.i.i452, align 4
  %sub.i.i.i17.i453 = add i32 %330, -1
  store volatile i32 %sub.i.i.i17.i453, ptr %preempt_count.i.i.i9.i.i452, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %320, i32 %inc235)
  %cmp.i454 = icmp eq i32 %320, %inc235
  br i1 %cmp.i454, label %if.end234.out_crit_edge, label %if.then237

if.end234.out_crit_edge:                          ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then237:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #8
  %331 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %pri, align 4
  %add.ptr243 = getelementptr i8, ptr %332, i32 1048576
  %333 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr243) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %and249 = and i32 %333, -4
  %or250 = or i32 %and249, 1
  %334 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %pri, align 4
  %add.ptr252 = getelementptr i8, ptr %335, i32 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr252, i32 %or250) #6, !srcloc !27
  br label %out

out:                                              ; preds = %if.then237, %if.end234.out_crit_edge, %if.end32.out_crit_edge
  %call255 = tail call zeroext i8 @nvkm_rdvgas(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 1) #6
  %336 = and i8 %call255, -33
  tail call void @nvkm_wrvgas(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext %336) #6
  %337 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %iomem.i.i.i, align 4
  tail call void @iounmap(ptr noundef %338) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_devinit_pll_set(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_wrvgas(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvkm_rdvgas(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @nv05_devinit, !1, !"nv05_devinit", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv05.c", i32 130, i32 1}
!2 = !{ptr @nv05_devinit_meminit.default_config_tab, !3, !"default_config_tab", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv05.c", i32 37, i32 18}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv05.c", i32 59, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nv05_devinit_meminit._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @nv05_devinit_meminit._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
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
!22 = !{i64 5388160}
!23 = !{i64 2156235441}
!24 = !{i64 2156235843}
!25 = !{i64 2156236639}
!26 = !{i64 2156237023}
!27 = !{i64 5387742}
!28 = !{i64 2156237512}
!29 = !{i64 2156238357}
!30 = !{i64 2156238745}
!31 = !{i64 2156239626}
!32 = !{i64 2156240010}
!33 = !{i64 2156240896}
!34 = !{i64 2156241316}
!35 = !{i64 2156242193}
!36 = !{i64 2156242559}
!37 = !{i64 2155922121}
!38 = !{i64 2153894717}
!39 = !{i64 2152929864}
!40 = !{i64 2156228197}
!41 = !{i64 2153894924}
!42 = !{i64 2155922447}
!43 = !{i64 2152928509}
!44 = !{i64 2156243429}
!45 = !{i64 2156243813}
!46 = !{i64 2156244309}
!47 = !{i64 2156245136}
!48 = !{i64 2156245538}
!49 = !{i64 2156246457}
!50 = !{i64 2156246859}
!51 = !{i64 2156247767}
!52 = !{i64 2156248169}
