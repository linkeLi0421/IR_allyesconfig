; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/uapi.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/uapi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tegra_drm_mapping = type { %struct.kref, ptr, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.host1x_bo_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_drm_file = type { %struct.idr, %struct.mutex, %struct.xarray, %struct.xarray }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tegra_drm_context = type { ptr, ptr, i32, %struct.xarray }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.93, ptr, i32, ptr, i8, i32 }
%struct.anon.87 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.93 = type { i32, ptr }
%struct.drm_tegra_channel_open = type { i32, i32, i32, i32, i32, i32 }
%struct.tegra_drm = type { ptr, ptr, i8, %struct.mutex, %struct.drm_mm, %struct.anon.94, %struct.mutex, %struct.list_head, ptr, i32, i32, i32, i32, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon.94 = type { %struct.iova_domain, i32, i32 }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.drm_tegra_channel_map = type { i32, i32, i32, i32 }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.host1x_bo_mapping = type { %struct.kref, ptr, i32, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head }
%struct.drm_tegra_channel_unmap = type { i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.drm_tegra_syncpoint_wait = type { i64, i32, i32, i32, i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@switch.table.tegra_drm_ioctl_channel_map = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 0], [20 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [32 x i8] c"../drivers/gpu/drm/tegra/uapi.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 378, i32 2 }
@___asan_gen_.7 = private unnamed_addr constant [41 x i8] c"switch.table.tegra_drm_ioctl_channel_map\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @xa_init_flags.__key, ptr @.str, ptr @switch.table.tegra_drm_ioctl_channel_map], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra_drm_ioctl_channel_map to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_drm_mapping_put(ptr noundef %mapping) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mapping, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !13
  tail call void @llvm.prefetch.p0(ptr %mapping, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mapping, ptr %mapping, i32 1, ptr elementtype(i32) %mapping) #6, !srcloc !14
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !15

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %mapping, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !16
  %map.i.i = getelementptr inbounds %struct.tegra_drm_mapping, ptr %mapping, i32 0, i32 1
  %1 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map.i.i, align 4
  tail call void @host1x_bo_unpin(ptr noundef %2) #6
  %bo.i.i = getelementptr inbounds %struct.tegra_drm_mapping, ptr %mapping, i32 0, i32 2
  %3 = ptrtoint ptr %bo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bo.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %put.i.i.i = getelementptr inbounds %struct.host1x_bo_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %put.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %put.i.i.i, align 4
  tail call void %8(ptr noundef %4) #6
  tail call void @kfree(ptr noundef %mapping) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_drm_uapi_close_file(ptr noundef %file) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #6
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %contexts = getelementptr inbounds %struct.tegra_drm_file, ptr %file, i32 0, i32 2
  %call = call ptr @xa_find(ptr noundef %contexts, ptr noundef nonnull %id, i32 noundef -1, i32 noundef 8) #6
  %tobool.not20 = icmp eq ptr %call, null
  br i1 %tobool.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %context.021 = phi ptr [ %call2, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  call fastcc void @tegra_drm_channel_context_close(ptr noundef nonnull %context.021)
  %call2 = call ptr @xa_find_after(ptr noundef %contexts, ptr noundef nonnull %id, i32 noundef -1, i32 noundef 8) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %id, align 4
  %syncpoints = getelementptr inbounds %struct.tegra_drm_file, ptr %file, i32 0, i32 3
  %call3 = call ptr @xa_find(ptr noundef %syncpoints, ptr noundef nonnull %id, i32 noundef -1, i32 noundef 8) #6
  %tobool5.not22 = icmp eq ptr %call3, null
  br i1 %tobool5.not22, label %for.end.for.end10_crit_edge, label %for.end.for.body6_crit_edge

for.end.for.body6_crit_edge:                      ; preds = %for.end
  br label %for.body6

for.end.for.end10_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end10

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.end.for.body6_crit_edge
  %sp.023 = phi ptr [ %call9, %for.body6.for.body6_crit_edge ], [ %call3, %for.end.for.body6_crit_edge ]
  call void @host1x_syncpt_put(ptr noundef nonnull %sp.023) #6
  %call9 = call ptr @xa_find_after(ptr noundef %syncpoints, ptr noundef nonnull %id, i32 noundef -1, i32 noundef 8) #6
  %tobool5.not = icmp eq ptr %call9, null
  br i1 %tobool5.not, label %for.body6.for.end10_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6

for.body6.for.end10_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end10

for.end10:                                        ; preds = %for.body6.for.end10_crit_edge, %for.end.for.end10_crit_edge
  call void @xa_destroy(ptr noundef %contexts) #6
  call void @xa_destroy(ptr noundef %syncpoints) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_drm_channel_context_close(ptr noundef %context) unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #6
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %mappings = getelementptr inbounds %struct.tegra_drm_context, ptr %context, i32 0, i32 3
  %call = call ptr @xa_find(ptr noundef %mappings, ptr noundef nonnull %id, i32 noundef -1, i32 noundef 8) #6
  %tobool.not9 = icmp eq ptr %call, null
  br i1 %tobool.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %tegra_drm_mapping_put.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %mapping.010 = phi ptr [ %call2, %tegra_drm_mapping_put.exit.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mapping.010, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !13
  call void @llvm.prefetch.p0(ptr nonnull %mapping.010, i32 1, i32 3, i32 1) #6
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %mapping.010, ptr nonnull %mapping.010, i32 1, ptr nonnull elementtype(i32) %mapping.010) #6, !srcloc !14
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.tegra_drm_mapping_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !15

if.end5.i.i.i.i.i.tegra_drm_mapping_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_drm_mapping_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %mapping.010, i32 noundef 3) #6
  br label %tegra_drm_mapping_put.exit

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !16
  %map.i.i.i = getelementptr inbounds %struct.tegra_drm_mapping, ptr %mapping.010, i32 0, i32 1
  %2 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map.i.i.i, align 4
  call void @host1x_bo_unpin(ptr noundef %3) #6
  %bo.i.i.i = getelementptr inbounds %struct.tegra_drm_mapping, ptr %mapping.010, i32 0, i32 2
  %4 = ptrtoint ptr %bo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bo.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %put.i.i.i.i = getelementptr inbounds %struct.host1x_bo_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %put.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %put.i.i.i.i, align 4
  call void %9(ptr noundef %5) #6
  call void @kfree(ptr noundef nonnull %mapping.010) #6
  br label %tegra_drm_mapping_put.exit

tegra_drm_mapping_put.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.tegra_drm_mapping_put.exit_crit_edge
  %call2 = call ptr @xa_find_after(ptr noundef %mappings, ptr noundef nonnull %id, i32 noundef -1, i32 noundef 8) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %tegra_drm_mapping_put.exit.for.end_crit_edge, label %tegra_drm_mapping_put.exit.for.body_crit_edge

tegra_drm_mapping_put.exit.for.body_crit_edge:    ; preds = %tegra_drm_mapping_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

tegra_drm_mapping_put.exit.for.end_crit_edge:     ; preds = %tegra_drm_mapping_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %tegra_drm_mapping_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @xa_destroy(ptr noundef %mappings) #6
  %channel = getelementptr inbounds %struct.tegra_drm_context, ptr %context, i32 0, i32 1
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channel, align 4
  call void @host1x_channel_put(ptr noundef %11) #6
  call void @kfree(ptr noundef %context) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_syncpt_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_ioctl_channel_open(ptr nocapture noundef readonly %drm, ptr noundef %data, ptr nocapture noundef readonly %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %flags = getelementptr inbounds %struct.drm_tegra_channel_open, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 64) #9
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  %clients.i = getelementptr inbounds %struct.tegra_drm, ptr %3, i32 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end3
  %.pn.in.i = phi ptr [ %clients.i, %if.end3 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %clients.i
  br i1 %cmp.not.i, label %for.cond.i.free_crit_edge, label %for.body.i

for.cond.i.free_crit_edge:                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free

for.body.i:                                       ; preds = %for.cond.i
  %class2.i = getelementptr i8, ptr %.pn.i, i32 -216
  %10 = ptrtoint ptr %class2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %class2.i, align 4
  %cmp3.i = icmp eq i32 %11, %8
  br i1 %cmp3.i, label %tegra_drm_find_client.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

tegra_drm_find_client.exit:                       ; preds = %for.body.i
  %client.0.le.i = getelementptr i8, ptr %.pn.i, i32 -240
  %tobool5.not = icmp eq ptr %client.0.le.i, null
  br i1 %tobool5.not, label %tegra_drm_find_client.exit.free_crit_edge, label %if.end7

tegra_drm_find_client.exit.free_crit_edge:        ; preds = %tegra_drm_find_client.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %free

if.end7:                                          ; preds = %tegra_drm_find_client.exit
  %shared_channel = getelementptr i8, ptr %.pn.i, i32 12
  %12 = ptrtoint ptr %shared_channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shared_channel, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call ptr @host1x_channel_get(ptr noundef nonnull %13) #6
  %channel = getelementptr inbounds %struct.tegra_drm_context, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call11, ptr %channel, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end7
  %call12 = tail call ptr @host1x_channel_request(ptr noundef nonnull %client.0.le.i) #6
  %channel13 = getelementptr inbounds %struct.tegra_drm_context, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %channel13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call12, ptr %channel13, align 4
  %tobool15.not = icmp eq ptr %call12, null
  br i1 %tobool15.not, label %if.else.free_crit_edge, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.else.free_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %free

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %if.then9
  %contexts = getelementptr inbounds %struct.tegra_drm_file, ptr %1, i32 0, i32 2
  %context19 = getelementptr inbounds %struct.drm_tegra_channel_open, ptr %data, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %contexts) #6
  %call.i = tail call i32 @__xa_alloc(ptr noundef %contexts, ptr noundef %context19, ptr noundef nonnull %call7.i.i, [2 x i32] [i32 -1, i32 1], i32 noundef 3264) #6
  tail call void @_raw_spin_unlock(ptr noundef %contexts) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %put_channel, label %if.end22

if.end22:                                         ; preds = %if.end18
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %client.0.le.i, ptr %call7.i.i, align 8
  %mappings = getelementptr inbounds %struct.tegra_drm_context, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %mappings, ptr noundef nonnull @.str, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #6
  %xa_flags.i = getelementptr inbounds %struct.tegra_drm_context, ptr %call7.i.i, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 12, ptr %xa_flags.i, align 8
  %xa_head.i = getelementptr inbounds %struct.tegra_drm_context, ptr %call7.i.i, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %xa_head.i, align 4
  %version = getelementptr i8, ptr %.pn.i, i32 16
  %19 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %version, align 4
  %version24 = getelementptr inbounds %struct.drm_tegra_channel_open, ptr %data, i32 0, i32 3
  %21 = ptrtoint ptr %version24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %version24, align 4
  %capabilities = getelementptr inbounds %struct.drm_tegra_channel_open, ptr %data, i32 0, i32 4
  %22 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %capabilities, align 4
  %dev = getelementptr i8, ptr %.pn.i, i32 -228
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %call26 = tail call i32 @device_get_dma_attr(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 2
  br i1 %cmp27, label %if.then28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %capabilities, align 4
  %or = or i32 %26, 1
  store i32 %or, ptr %capabilities, align 4
  br label %cleanup

put_channel:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %channel31 = getelementptr inbounds %struct.tegra_drm_context, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %channel31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %channel31, align 4
  tail call void @host1x_channel_put(ptr noundef %28) #6
  br label %free

free:                                             ; preds = %put_channel, %if.else.free_crit_edge, %tegra_drm_find_client.exit.free_crit_edge, %for.cond.i.free_crit_edge
  %err.0 = phi i32 [ %call.i, %put_channel ], [ -19, %tegra_drm_find_client.exit.free_crit_edge ], [ -16, %if.else.free_crit_edge ], [ -19, %for.cond.i.free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %free, %if.then28, %if.end22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %free ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_channel_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_channel_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_dma_attr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_ioctl_channel_close(ptr nocapture noundef readnone %drm, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %lock = getelementptr inbounds %struct.tegra_drm_file, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %contexts = getelementptr inbounds %struct.tegra_drm_file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %call = tail call ptr @xa_load(ptr noundef %contexts, i32 noundef %3) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %call5 = tail call ptr @xa_erase(ptr noundef %contexts, i32 noundef %5) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  tail call fastcc void @tegra_drm_channel_context_close(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_ioctl_channel_map(ptr nocapture noundef readnone %drm, ptr noundef %data, ptr noundef %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_tegra_channel_map, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %tobool.not = icmp ult i32 %1, 4
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %lock = getelementptr inbounds %struct.tegra_drm_file, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %contexts = getelementptr inbounds %struct.tegra_drm_file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %call = tail call ptr @xa_load(ptr noundef %contexts, i32 noundef %5) #6
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 20) #9
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup.sink.split_crit_edge, label %if.end9

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #6
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %call7.i.i, align 8
  %handle = getelementptr inbounds %struct.drm_tegra_channel_map, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %handle, align 4
  %call10 = tail call ptr @tegra_gem_lookup(ptr noundef %file, i32 noundef %9) #6
  %bo = getelementptr inbounds %struct.tegra_drm_mapping, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10, ptr %bo, align 8
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end9.free_crit_edge, label %if.end14

if.end9.free_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %free

if.end14:                                         ; preds = %if.end9
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and16 = and i32 %12, 3
  %switch.tableidx = add nsw i32 %and16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 3
  br i1 %13, label %switch.lookup, label %if.end14.put_gem_crit_edge

if.end14.put_gem_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_gem

switch.lookup:                                    ; preds = %if.end14
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.tegra_drm_ioctl_channel_map, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  %dev = getelementptr inbounds %struct.host1x_client, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call20 = tail call ptr @host1x_bo_pin(ptr noundef %18, ptr noundef nonnull %call10, i32 noundef %switch.load, ptr noundef null) #6
  %map = getelementptr inbounds %struct.tegra_drm_mapping, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call20, ptr %map, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end26

if.then23:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call20 to i32
  br label %put_gem

if.end26:                                         ; preds = %switch.lookup
  %phys = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call20, i32 0, i32 8
  %21 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phys, align 4
  %iova = getelementptr inbounds %struct.tegra_drm_mapping, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %iova to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %iova, align 4
  %24 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bo, align 8
  %size = getelementptr i8, ptr %25, i32 -168
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 8
  %add = add i32 %27, %22
  %iova_end = getelementptr inbounds %struct.tegra_drm_mapping, ptr %call7.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %iova_end to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %iova_end, align 8
  %mappings = getelementptr inbounds %struct.tegra_drm_context, ptr %call, i32 0, i32 3
  %mapping31 = getelementptr inbounds %struct.drm_tegra_channel_map, ptr %data, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %mappings) #6
  %call.i = tail call i32 @__xa_alloc(ptr noundef %mappings, ptr noundef %mapping31, ptr noundef nonnull %call7.i.i, [2 x i32] [i32 -1, i32 1], i32 noundef 3264) #6
  tail call void @_raw_spin_unlock(ptr noundef %mappings) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %unpin, label %if.end26.cleanup.sink.split_crit_edge

if.end26.cleanup.sink.split_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

unpin:                                            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 4
  tail call void @host1x_bo_unpin(ptr noundef %30) #6
  br label %put_gem

put_gem:                                          ; preds = %unpin, %if.then23, %if.end14.put_gem_crit_edge
  %err.0 = phi i32 [ %20, %if.then23 ], [ %call.i, %unpin ], [ -22, %if.end14.put_gem_crit_edge ]
  %31 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bo, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %put.i = getelementptr inbounds %struct.host1x_bo_ops, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %put.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %put.i, align 4
  tail call void %36(ptr noundef %32) #6
  br label %free

free:                                             ; preds = %put_gem, %if.end9.free_crit_edge
  %err.1 = phi i32 [ %err.0, %put_gem ], [ -22, %if.end9.free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %free, %if.end26.cleanup.sink.split_crit_edge, %if.end5.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.end.cleanup.sink.split_crit_edge ], [ 0, %if.end26.cleanup.sink.split_crit_edge ], [ %err.1, %free ], [ -12, %if.end5.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_gem_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_bo_pin(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_ioctl_channel_unmap(ptr nocapture noundef readnone %drm, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %lock = getelementptr inbounds %struct.tegra_drm_file, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %contexts = getelementptr inbounds %struct.tegra_drm_file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %call = tail call ptr @xa_load(ptr noundef %contexts, i32 noundef %3) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %mappings = getelementptr inbounds %struct.tegra_drm_context, ptr %call, i32 0, i32 3
  %mapping3 = getelementptr inbounds %struct.drm_tegra_channel_unmap, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %mapping3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mapping3, align 4
  %call4 = tail call ptr @xa_erase(ptr noundef %mappings, i32 noundef %5) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call4, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !13
  tail call void @llvm.prefetch.p0(ptr nonnull %call4, i32 1, i32 3, i32 1) #6
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call4, ptr nonnull %call4, i32 1, ptr nonnull elementtype(i32) %call4) #6, !srcloc !14
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !15

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call4, i32 noundef 3) #6
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !16
  %map.i.i.i = getelementptr inbounds %struct.tegra_drm_mapping, ptr %call4, i32 0, i32 1
  %7 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.i.i.i, align 4
  tail call void @host1x_bo_unpin(ptr noundef %8) #6
  %bo.i.i.i = getelementptr inbounds %struct.tegra_drm_mapping, ptr %call4, i32 0, i32 2
  %9 = ptrtoint ptr %bo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bo.i.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %put.i.i.i.i = getelementptr inbounds %struct.host1x_bo_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %put.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %put.i.i.i.i, align 4
  tail call void %14(ptr noundef %10) #6
  tail call void @kfree(ptr noundef nonnull %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_ioctl_syncpoint_allocate(ptr nocapture noundef readonly %drm, ptr nocapture noundef %data, ptr nocapture noundef readonly %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %14 = tail call i32 @llvm.read_register.i32(metadata !3) #6
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %call2 = tail call ptr @host1x_syncpt_alloc(ptr noundef %13, i32 noundef 1, ptr noundef %comm) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @host1x_syncpt_id(ptr noundef nonnull %call2) #6
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call6, ptr %data, align 4
  %syncpoints = getelementptr inbounds %struct.tegra_drm_file, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %syncpoints) #6
  %call.i = tail call i32 @__xa_insert(ptr noundef %syncpoints, i32 noundef %call6, ptr noundef nonnull %call2, i32 noundef 3264) #6
  tail call void @_raw_spin_unlock(ptr noundef %syncpoints) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end5.cleanup_crit_edge, label %if.then11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @host1x_syncpt_put(ptr noundef nonnull %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then11 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_syncpt_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_ioctl_syncpoint_free(ptr nocapture noundef readnone %drm, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %lock = getelementptr inbounds %struct.tegra_drm_file, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %syncpoints = getelementptr inbounds %struct.tegra_drm_file, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %call = tail call ptr @xa_erase(ptr noundef %syncpoints, i32 noundef %3) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @host1x_syncpt_put(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_ioctl_syncpoint_wait(ptr nocapture noundef readonly %drm, ptr noundef %data, ptr nocapture noundef readnone %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %padding = getelementptr inbounds %struct.drm_tegra_syncpoint_wait, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %padding to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %padding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.drm_tegra_syncpoint_wait, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 8
  %call1 = tail call ptr @host1x_syncpt_get_by_id_noref(ptr noundef %11, i32 noundef %13) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %data, align 8
  %call4 = tail call i32 @drm_timeout_abs_to_jiffies(i64 noundef %15) #6
  %threshold = getelementptr inbounds %struct.drm_tegra_syncpoint_wait, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %threshold to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %threshold, align 4
  %value = getelementptr inbounds %struct.drm_tegra_syncpoint_wait, ptr %data, i32 0, i32 3
  %call5 = tail call i32 @host1x_syncpt_wait(ptr noundef nonnull %call1, i32 noundef %17, i32 noundef %call4, ptr noundef %value) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_syncpt_get_by_id_noref(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_timeout_abs_to_jiffies(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_wait(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_alloc(ptr noundef, ptr noundef, ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.named.register.sp = !{!3}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @xa_init_flags.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{!"sp"}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2148571073}
!14 = !{i64 2148485537, i64 2148485569, i64 2148485598, i64 2148485632, i64 2148485663, i64 2148485686}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2149617043}
