; ModuleID = '/llk/IR_all_yes/drivers/vdpa/mlx5/core/mr.c_pt.bc'
source_filename = "../drivers/vdpa/mlx5/core/mr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_vdpa_dev = type { %struct.vdpa_device, ptr, %struct.mlx5_vdpa_resources, i64, i64, i8, i32, i16, i32, %struct.mlx5_vdpa_mr, %struct.mlx5_control_vq, ptr }
%struct.vdpa_device = type { %struct.device, ptr, ptr, ptr, %struct.mutex, i32, i8, i8, i32, ptr }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_vdpa_resources = type { i32, ptr, ptr, i64, i16, i32, i8 }
%struct.mlx5_vdpa_mr = type { i32, %struct.list_head, i32, i32, i8, %struct.mutex, i8 }
%struct.mlx5_control_vq = type { ptr, %struct.spinlock, %struct.vringh, i8, i64, i64, i64, %struct.vdpa_callback, %struct.vringh_kiov, %struct.vringh_kiov, i16 }
%struct.vringh = type { i8, i8, i8, i16, i16, i32, %struct.vring, ptr, ptr, ptr }
%struct.vring = type { i32, ptr, ptr, ptr }
%struct.vdpa_callback = type { ptr, ptr }
%struct.vringh_kiov = type { ptr, i32, i32, i32, i32 }
%struct.vhost_iotlb_map = type { %struct.rb_node, %struct.list_head, i64, i64, i64, i64, i32, i32, i64, ptr }
%struct.mlx5_klm = type { i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_vdpa_direct_mr = type { i64, i64, i32, i32, %struct.sg_table, i32, i32, i32, %struct.list_head, i64 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@mlx5_vdpa_handle_set_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 565, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:%d:(pid %d): memory map update\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5_vdpa_handle_set_map\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/vdpa/mlx5/core/mr.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_vdpa_handle_set_map._entry_ptr = internal global ptr @mlx5_vdpa_handle_set_map._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@map_direct_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 263, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d) warning: sg null. start 0x%llx, end 0x%llx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"map_direct_mr\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@map_direct_mr._entry_ptr = internal global ptr @map_direct_mr._entry, section ".printk_index", align 4
@create_direct_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 82, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d) warning: Failed to create direct MR\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"create_direct_mr\00", [47 x i8] zeroinitializer }, align 32
@create_direct_mr._entry_ptr = internal global ptr @create_direct_mr._entry, section ".printk_index", align 4
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 565, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 262, i32 5 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [31 x i8] c"../drivers/vdpa/mlx5/core/mr.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 82, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @create_direct_mr._entry, ptr @create_direct_mr._entry_ptr, ptr @map_direct_mr._entry, ptr @map_direct_mr._entry_ptr, ptr @mlx5_vdpa_handle_set_map._entry, ptr @mlx5_vdpa_handle_set_map._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vdpa_handle_set_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_direct_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_direct_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_vdpa_destroy_mr(ptr noundef %mvdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mr1 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9
  %mkey_mtx = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mkey_mtx, i32 noundef 0) #9
  %initialized = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 4
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initialized, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %cvq.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 10
  %2 = ptrtoint ptr %cvq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cvq.i, align 8
  tail call void @vhost_iotlb_del_range(ptr noundef %3, i64 noundef 0, i64 noundef -1) #9
  %user_mr = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 6
  %4 = ptrtoint ptr %user_mr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %user_mr, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @destroy_user_mr(ptr noundef %mvdev, ptr noundef %mr1)
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %mr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mr1, align 4
  %call.i = tail call i32 @mlx5_vdpa_destroy_mkey(ptr noundef %mvdev, i32 noundef %7) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %8 = call ptr @memset(ptr %mr1, i32 0, i32 120)
  br label %out

out:                                              ; preds = %if.end4, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mkey_mtx) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_user_mr(ptr noundef %mvdev, ptr noundef readonly %mr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mr, align 4
  %call.i = tail call i32 @mlx5_vdpa_destroy_mkey(ptr noundef %mvdev, i32 noundef %1) #9
  %head = getelementptr inbounds %struct.mlx5_vdpa_mr, ptr %mr, i32 0, i32 1
  %prev = getelementptr inbounds %struct.mlx5_vdpa_mr, ptr %mr, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %cmp.not24 = icmp eq ptr %3, %head
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dma_dev.i = getelementptr inbounds %struct.vdpa_device, ptr %mvdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn2125 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn, %list_del_init.exit.for.body_crit_edge ]
  %dmr.0 = getelementptr i8, ptr %.pn2125, i32 -48
  %.pn.in = getelementptr inbounds %struct.list_head, ptr %.pn2125, i32 0, i32 1
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn2125) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in, align 4
  %7 = ptrtoint ptr %.pn2125 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn2125, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %.pn2125 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %.pn2125, ptr %.pn2125, align 4
  %12 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.pn2125, ptr %.pn.in, align 4
  %13 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma_dev.i, align 8
  %mr1.i.i = getelementptr i8, ptr %.pn2125, i32 -28
  %15 = ptrtoint ptr %mr1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mr1.i.i, align 4
  %call.i.i23 = tail call i32 @mlx5_vdpa_destroy_mkey(ptr noundef %mvdev, i32 noundef %16) #9
  %sg_head.i = getelementptr i8, ptr %.pn2125, i32 -24
  %17 = ptrtoint ptr %sg_head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sg_head.i, align 8
  %nsg.i = getelementptr i8, ptr %.pn2125, i32 -8
  %19 = ptrtoint ptr %nsg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nsg.i, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %14, ptr noundef %18, i32 noundef %20, i32 noundef 0, i32 noundef 0) #9
  tail call void @sg_free_table(ptr noundef %sg_head.i) #9
  tail call void @kfree(ptr noundef %dmr.0) #9
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vdpa_create_mr(ptr noundef %mvdev, ptr noundef %iotlb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mkey_mtx = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mkey_mtx, i32 noundef 0) #9
  %call = tail call fastcc i32 @_mlx5_vdpa_create_mr(ptr noundef %mvdev, ptr noundef %iotlb)
  tail call void @mutex_unlock(ptr noundef %mkey_mtx) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_mlx5_vdpa_create_mr(ptr noundef %mvdev, ptr noundef %iotlb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mr1 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9
  %initialized = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 4
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initialized, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %iotlb, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %head.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %head.i, ptr %head.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head.i, ptr %prev.i.i, align 4
  %call.i = tail call ptr @vhost_iotlb_itree_first(ptr noundef nonnull %iotlb, i64 noundef 0, i64 noundef -1) #9
  %tobool.not121.i = icmp eq ptr %call.i, null
  br i1 %tobool.not121.i, label %if.then3.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then3.for.end.i_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then3
  %num_klms.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %map.0128.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call28.i, %for.inc.i.for.body.i_crit_edge ]
  %pperm.0126.i = phi i32 [ 65535, %for.body.lr.ph.i ], [ %pperm.1.i, %for.inc.i.for.body.i_crit_edge ]
  %ps.0124.i = phi i64 [ -1, %for.body.lr.ph.i ], [ %ps.1.i, %for.inc.i.for.body.i_crit_edge ]
  %pe.0122.i = phi i64 [ -1, %for.body.lr.ph.i ], [ %pe.1.i, %for.inc.i.for.body.i_crit_edge ]
  %start2.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.0128.i, i32 0, i32 2
  %4 = ptrtoint ptr %start2.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %pe.0122.i)
  %cmp.i = icmp eq i64 %5, %pe.0122.i
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.if.else.i_crit_edge

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %perm.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.0128.i, i32 0, i32 6
  %6 = ptrtoint ptr %perm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %perm.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %pperm.0126.i, i32 %7)
  %cmp4.i = icmp eq i32 %pperm.0126.i, %7
  br i1 %cmp4.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.body.i.if.else.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %ps.0124.i)
  %cmp6.not.i = icmp eq i64 %ps.0124.i, -1
  br i1 %cmp6.not.i, label %if.else.i.if.end22.i_crit_edge, label %if.then7.i

if.else.i.if.end22.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %pe.0122.i)
  %cmp9.i = icmp ugt i64 %5, %pe.0122.i
  br i1 %cmp9.i, label %if.then10.i, label %if.then7.i.if.end.i_crit_edge

if.then7.i.if.end.i_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = sub i64 1073741823, %pe.0122.i
  %sub13.i = add i64 %sub.i, %5
  %shr.i = lshr i64 %sub13.i, 30
  %conv14.i = trunc i64 %shr.i to i32
  %8 = ptrtoint ptr %num_klms.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_klms.i, align 4
  %add15.i = add i32 %9, %conv14.i
  store i32 %add15.i, ptr %num_klms.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then10.i, %if.then7.i.if.end.i_crit_edge
  %sub16.i = sub i64 %pe.0122.i, %ps.0124.i
  %conv17.i = trunc i32 %pperm.0126.i to i8
  %call18.i = tail call fastcc i32 @add_direct_chain(ptr noundef %mvdev, i64 noundef %ps.0124.i, i64 noundef %sub16.i, i8 noundef zeroext %conv17.i, ptr noundef nonnull %iotlb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end.i.if.end22.i_crit_edge, label %if.end.i.err_chain.i_crit_edge

if.end.i.err_chain.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_chain.i

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end.i.if.end22.i_crit_edge, %if.else.i.if.end22.i_crit_edge
  %10 = ptrtoint ptr %start2.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %start2.i, align 8
  %perm26.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.0128.i, i32 0, i32 6
  %12 = ptrtoint ptr %perm26.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %perm26.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end22.i, %land.lhs.true.i.for.inc.i_crit_edge
  %ps.1.i = phi i64 [ %11, %if.end22.i ], [ %ps.0124.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %pperm.1.i = phi i32 [ %13, %if.end22.i ], [ %pperm.0126.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %pe.1.in.in.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.0128.i, i32 0, i32 3
  %14 = ptrtoint ptr %pe.1.in.in.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %pe.1.in.i = load i64, ptr %pe.1.in.in.i, align 8
  %pe.1.i = add i64 %pe.1.in.i, 1
  %call28.i = tail call ptr @vhost_iotlb_itree_next(ptr noundef nonnull %map.0128.i, i64 noundef %5, i64 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then3.for.end.i_crit_edge
  %pe.0.lcssa.i = phi i64 [ -1, %if.then3.for.end.i_crit_edge ], [ %pe.1.i, %for.inc.i.for.end.i_crit_edge ]
  %ps.0.lcssa.i = phi i64 [ -1, %if.then3.for.end.i_crit_edge ], [ %ps.1.i, %for.inc.i.for.end.i_crit_edge ]
  %pperm.0.lcssa.i = phi i32 [ 65535, %if.then3.for.end.i_crit_edge ], [ %pperm.1.i, %for.inc.i.for.end.i_crit_edge ]
  %sub29.i = sub i64 %pe.0.lcssa.i, %ps.0.lcssa.i
  %conv30.i = trunc i32 %pperm.0.lcssa.i to i8
  %call31.i = tail call fastcc i32 @add_direct_chain(ptr noundef %mvdev, i64 noundef %ps.0.lcssa.i, i64 noundef %sub29.i, i8 noundef zeroext %conv30.i, ptr noundef nonnull %iotlb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %for.end.i.err_chain.i_crit_edge

for.end.i.err_chain.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_chain.i

if.end34.i:                                       ; preds = %for.end.i
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %head.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %16, %head.i
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 -48
  %tobool.not6.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool.not.i.i.i = or i1 %cmp.not.i.i.i, %tobool.not6.i.i.i
  br i1 %tobool.not.i.i.i, label %if.end34.i.indir_start_addr.exit.i.i_crit_edge, label %if.end.i.i.i

if.end34.i.indir_start_addr.exit.i.i_crit_edge:   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %indir_start_addr.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %add.ptr.i.i.i, align 8
  br label %indir_start_addr.exit.i.i

indir_start_addr.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end34.i.indir_start_addr.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i64 [ %18, %if.end.i.i.i ], [ -1, %if.end34.i.indir_start_addr.exit.i.i_crit_edge ]
  %19 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %head.i, align 4
  %cmp.not.i160.i.i = icmp eq ptr %20, %head.i
  %add.ptr.i161.i.i = getelementptr i8, ptr %20, i32 -48
  %tobool.not12.i.i.i = icmp eq ptr %add.ptr.i161.i.i, null
  %tobool.not.i162.i.i = or i1 %cmp.not.i160.i.i, %tobool.not12.i.i.i
  br i1 %tobool.not.i162.i.i, label %indir_start_addr.exit.i.i.err_chain.i_crit_edge, label %indir_len.exit.i.i

indir_start_addr.exit.i.i.err_chain.i_crit_edge:  ; preds = %indir_start_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_chain.i

indir_len.exit.i.i:                               ; preds = %indir_start_addr.exit.i.i
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %end.i.i.i = getelementptr i8, ptr %22, i32 -40
  %23 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %end.i.i.i, align 8
  %25 = ptrtoint ptr %add.ptr.i161.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %add.ptr.i161.i.i, align 8
  %sub.i.i.i = sub i64 %24, %26
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %retval.0.i.i.i)
  %cmp.i.i = icmp eq i64 %retval.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i.i.i)
  %cmp2.i.i = icmp eq i64 %sub.i.i.i, -1
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %cmp2.i.i
  br i1 %or.cond.i.i, label %indir_len.exit.i.i.err_chain.i_crit_edge, label %if.end.i.i

indir_len.exit.i.i.err_chain.i_crit_edge:         ; preds = %indir_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_chain.i

if.end.i.i:                                       ; preds = %indir_len.exit.i.i
  %num_klms.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 3
  %27 = ptrtoint ptr %num_klms.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_klms.i.i, align 4
  %add.i.i.i = shl i32 %28, 4
  %and.i.i.i = add i32 %add.i.i.i, 48
  %mul.i.i.i = and i32 %and.i.i.i, -64
  %add.i.i = add i32 %mul.i.i.i, 272
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #12
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.err_chain.i_crit_edge, label %do.body.i.i

if.end.i.i.err_chain.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_chain.i

do.body.i.i:                                      ; preds = %if.end.i.i
  %res.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2
  %uid.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %uid.i.i, align 8
  %conv.i.i = zext i16 %30 to i32
  %31 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call9.i.i.i.i, align 128
  %and.i.i = and i32 %32, -65536
  %or.i.i = or i32 %and.i.i, %conv.i.i
  store i32 %or.i.i, ptr %call9.i.i.i.i, align 128
  %add.ptr12.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 16
  %33 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr12.i.i, align 16
  %or35.i.i = and i32 %34, -469765889
  %or.i.i.i = or i32 %or35.i.i, 3584
  store i32 %or.i.i.i, ptr %add.ptr12.i.i, align 16
  %add.ptr44.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 20
  %35 = ptrtoint ptr %add.ptr44.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr44.i.i, align 4
  %or48.i.i = or i32 %36, -256
  store i32 %or48.i.i, ptr %add.ptr44.i.i, align 4
  %37 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %res.i.i, align 8
  %add.ptr58.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 28
  %39 = ptrtoint ptr %add.ptr58.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr58.i.i, align 4
  %and59.i.i = and i32 %40, -16777216
  %and60.i.i = and i32 %38, 16777215
  %or62.i.i = or i32 %and59.i.i, %and60.i.i
  store i32 %or62.i.i, ptr %add.ptr58.i.i, align 4
  %add.ptr74.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 32
  %41 = ptrtoint ptr %add.ptr74.i.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %retval.0.i.i.i, ptr %add.ptr74.i.i, align 32
  %add.ptr87.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 40
  %42 = ptrtoint ptr %add.ptr87.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %sub.i.i.i, ptr %add.ptr87.i.i, align 8
  %43 = ptrtoint ptr %num_klms.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_klms.i.i, align 4
  %add.i165.i.i = shl i32 %44, 4
  %and.i166.i.i = add i32 %add.i165.i.i, 48
  %mul.i167.i.i = and i32 %and.i166.i.i, -64
  %div.i.i = sdiv i32 %mul.i167.i.i, 16
  %add.ptr99.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 68
  %45 = ptrtoint ptr %add.ptr99.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div.i.i, ptr %add.ptr99.i.i, align 4
  %add.ptr113.i.i = getelementptr i32, ptr %call9.i.i.i.i, i32 24
  %46 = ptrtoint ptr %add.ptr113.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %add.ptr113.i.i, align 32
  %add.ptr.i168.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 272
  %47 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn38.i.i.i = load ptr, ptr %head.i, align 4
  %cmp.not40.i.i.i = icmp eq ptr %.pn38.i.i.i, %head.i
  br i1 %cmp.not40.i.i.i, label %do.body.i.i.create_indirect_key.exit.i_crit_edge, label %again.preheader.lr.ph.i.i.i

do.body.i.i.create_indirect_key.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %create_indirect_key.exit.i

again.preheader.lr.ph.i.i.i:                      ; preds = %do.body.i.i
  %null_mkey.i.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 5
  br label %again.preheader.i.i.i

again.preheader.i.i.i:                            ; preds = %if.then5.i.i.i.again.preheader.i.i.i_crit_edge, %again.preheader.lr.ph.i.i.i
  %.pn44.i.i.i = phi ptr [ %.pn38.i.i.i, %again.preheader.lr.ph.i.i.i ], [ %.pn.i.i.i, %if.then5.i.i.i.again.preheader.i.i.i_crit_edge ]
  %first.0.off043.i.i.i = phi i1 [ true, %again.preheader.lr.ph.i.i.i ], [ false, %if.then5.i.i.i.again.preheader.i.i.i_crit_edge ]
  %i.042.i.i.i = phi i32 [ 0, %again.preheader.lr.ph.i.i.i ], [ %inc.i.i.i, %if.then5.i.i.i.again.preheader.i.i.i_crit_edge ]
  %preve.041.i.i.i = phi i64 [ -1, %again.preheader.lr.ph.i.i.i ], [ %60, %if.then5.i.i.i.again.preheader.i.i.i_crit_edge ]
  %dmr.045.i.i.i = getelementptr i8, ptr %.pn44.i.i.i, i32 -48
  br label %again.i.i.i

again.i.i.i:                                      ; preds = %if.else.i.i.i, %again.preheader.i.i.i
  %preve.1.i.i.i = phi i64 [ %68, %if.else.i.i.i ], [ %preve.041.i.i.i, %again.preheader.i.i.i ]
  %i.1.i.i.i = phi i32 [ %inc.i.i.i, %if.else.i.i.i ], [ %i.042.i.i.i, %again.preheader.i.i.i ]
  %first.1.off0.i.i.i = phi i1 [ false, %if.else.i.i.i ], [ %first.0.off043.i.i.i, %again.preheader.i.i.i ]
  %inc.i.i.i = add i32 %i.1.i.i.i, 1
  %arrayidx.i.i.i = getelementptr %struct.mlx5_klm, ptr %add.ptr.i168.i.i, i32 %i.1.i.i.i
  br i1 %first.1.off0.i.i.i, label %if.then.i.i.i, label %again.i.i.i.if.end.i170.i.i_crit_edge

again.i.i.i.if.end.i170.i.i_crit_edge:            ; preds = %again.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i170.i.i

if.then.i.i.i:                                    ; preds = %again.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %dmr.045.i.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %dmr.045.i.i.i, align 8
  br label %if.end.i170.i.i

if.end.i170.i.i:                                  ; preds = %if.then.i.i.i, %again.i.i.i.if.end.i170.i.i_crit_edge
  %preve.2.i.i.i = phi i64 [ %49, %if.then.i.i.i ], [ %preve.1.i.i.i, %again.i.i.i.if.end.i170.i.i_crit_edge ]
  %50 = ptrtoint ptr %dmr.045.i.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %dmr.045.i.i.i, align 8
  %cmp4.i.i.i = icmp eq i64 %preve.2.i.i.i, %51
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %if.else.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i170.i.i
  %mr.i.i.i = getelementptr i8, ptr %.pn44.i.i.i, i32 -28
  %52 = ptrtoint ptr %mr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mr.i.i.i, align 4
  %key.i.i.i = getelementptr inbounds %struct.mlx5_klm, ptr %arrayidx.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %key.i.i.i, align 4
  %end.i171.i.i = getelementptr i8, ptr %.pn44.i.i.i, i32 -40
  %55 = ptrtoint ptr %end.i171.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %end.i171.i.i, align 8
  %57 = ptrtoint ptr %dmr.045.i.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %dmr.045.i.i.i, align 8
  %sub.i172.i.i = sub i64 %56, %58
  %conv.i.i.i.i = trunc i64 %sub.i172.i.i to i32
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv.i.i.i.i, ptr %arrayidx.i.i.i, align 16
  %60 = load i64, ptr %end.i171.i.i, align 8
  %61 = ptrtoint ptr %.pn44.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn.i.i.i = load ptr, ptr %.pn44.i.i.i, align 4
  %cmp.not.i173.i.i = icmp eq ptr %.pn.i.i.i, %head.i
  br i1 %cmp.not.i173.i.i, label %if.then5.i.i.i.create_indirect_key.exit.i_crit_edge, label %if.then5.i.i.i.again.preheader.i.i.i_crit_edge

if.then5.i.i.i.again.preheader.i.i.i_crit_edge:   ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %again.preheader.i.i.i

if.then5.i.i.i.create_indirect_key.exit.i_crit_edge: ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %create_indirect_key.exit.i

if.else.i.i.i:                                    ; preds = %if.end.i170.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %null_mkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %null_mkey.i.i.i, align 4
  %key8.i.i.i = getelementptr inbounds %struct.mlx5_klm, ptr %arrayidx.i.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %key8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %key8.i.i.i, align 4
  %65 = ptrtoint ptr %dmr.045.i.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %dmr.045.i.i.i, align 8
  %sub10.i.i.i = sub i64 %66, %preve.2.i.i.i
  %conv.i37.i.i.i = trunc i64 %sub10.i.i.i to i32
  %67 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv.i37.i.i.i, ptr %arrayidx.i.i.i, align 16
  %68 = load i64, ptr %dmr.045.i.i.i, align 8
  br label %again.i.i.i

create_indirect_key.exit.i:                       ; preds = %if.then5.i.i.i.create_indirect_key.exit.i_crit_edge, %do.body.i.i.create_indirect_key.exit.i_crit_edge
  %call121.i.i = tail call i32 @mlx5_vdpa_create_mkey(ptr noundef %mvdev, ptr noundef %mr1, ptr noundef nonnull %call9.i.i.i.i, i32 noundef %add.i.i) #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.i.i)
  %tobool36.not.i = icmp eq i32 %call121.i.i, 0
  br i1 %tobool36.not.i, label %if.end5.thread48, label %create_indirect_key.exit.i.err_chain.i_crit_edge

create_indirect_key.exit.i.err_chain.i_crit_edge: ; preds = %create_indirect_key.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_chain.i

if.end5.thread48:                                 ; preds = %create_indirect_key.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %user_mr.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 6
  %69 = ptrtoint ptr %user_mr.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %user_mr.i, align 4
  br label %if.end8

err_chain.i:                                      ; preds = %create_indirect_key.exit.i.err_chain.i_crit_edge, %if.end.i.i.err_chain.i_crit_edge, %indir_len.exit.i.i.err_chain.i_crit_edge, %indir_start_addr.exit.i.i.err_chain.i_crit_edge, %for.end.i.err_chain.i_crit_edge, %if.end.i.err_chain.i_crit_edge
  %err.0.i = phi i32 [ %call31.i, %for.end.i.err_chain.i_crit_edge ], [ %call121.i.i, %create_indirect_key.exit.i.err_chain.i_crit_edge ], [ -22, %indir_start_addr.exit.i.i.err_chain.i_crit_edge ], [ -12, %if.end.i.i.err_chain.i_crit_edge ], [ -22, %indir_len.exit.i.i.err_chain.i_crit_edge ], [ %call18.i, %if.end.i.err_chain.i_crit_edge ]
  %70 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i, align 4
  %cmp48.not131.i = icmp eq ptr %71, %head.i
  br i1 %cmp48.not131.i, label %err_chain.i.cleanup_crit_edge, label %for.body50.lr.ph.i

err_chain.i.cleanup_crit_edge:                    ; preds = %err_chain.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body50.lr.ph.i:                               ; preds = %err_chain.i
  %dma_dev.i.i = getelementptr inbounds %struct.vdpa_device, ptr %mvdev, i32 0, i32 1
  br label %for.body50.i

for.body50.i:                                     ; preds = %list_del_init.exit.i.for.body50.i_crit_edge, %for.body50.lr.ph.i
  %.pn111132.i = phi ptr [ %71, %for.body50.lr.ph.i ], [ %.pn.i, %list_del_init.exit.i.for.body50.i_crit_edge ]
  %dmr.0.i = getelementptr i8, ptr %.pn111132.i, i32 -48
  %.pn.in.i = getelementptr inbounds %struct.list_head, ptr %.pn111132.i, i32 0, i32 1
  %72 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn111132.i) #9
  br i1 %call.i.i.i, label %if.end.i.i114.i, label %for.body50.i.list_del_init.exit.i_crit_edge

for.body50.i.list_del_init.exit.i_crit_edge:      ; preds = %for.body50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i114.i:                                  ; preds = %for.body50.i
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %.pn.in.i, align 4
  %75 = ptrtoint ptr %.pn111132.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %.pn111132.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev1.i.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %74, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i114.i, %for.body50.i.list_del_init.exit.i_crit_edge
  %79 = ptrtoint ptr %.pn111132.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %.pn111132.i, ptr %.pn111132.i, align 4
  %80 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %.pn111132.i, ptr %.pn.in.i, align 4
  %81 = ptrtoint ptr %dma_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dma_dev.i.i, align 8
  %mr1.i.i.i = getelementptr i8, ptr %.pn111132.i, i32 -28
  %83 = ptrtoint ptr %mr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mr1.i.i.i, align 4
  %call.i.i115.i = tail call i32 @mlx5_vdpa_destroy_mkey(ptr noundef %mvdev, i32 noundef %84) #9
  %sg_head.i.i = getelementptr i8, ptr %.pn111132.i, i32 -24
  %85 = ptrtoint ptr %sg_head.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sg_head.i.i, align 8
  %nsg.i.i = getelementptr i8, ptr %.pn111132.i, i32 -8
  %87 = ptrtoint ptr %nsg.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nsg.i.i, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %82, ptr noundef %86, i32 noundef %88, i32 noundef 0, i32 noundef 0) #9
  tail call void @sg_free_table(ptr noundef %sg_head.i.i) #9
  tail call void @kfree(ptr noundef %dmr.0.i) #9
  %cmp48.not.i = icmp eq ptr %.pn.i, %head.i
  br i1 %cmp48.not.i, label %list_del_init.exit.i.if.end5_crit_edge, label %list_del_init.exit.i.for.body50.i_crit_edge

list_del_init.exit.i.for.body50.i_crit_edge:      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body50.i

list_del_init.exit.i.if.end5_crit_edge:           ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %89 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 3520, i32 noundef 272) #13
  %tobool.not.i34 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i34, label %if.else.cleanup_crit_edge, label %if.end.i35

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i35:                                       ; preds = %if.else
  %add.ptr.i = getelementptr i8, ptr %call7.i.i.i, i32 16
  %90 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %call7.i.i.i, i32 28
  %92 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr12.i, align 4
  %and26.i = and i32 %91, -3841
  %or42.i = or i32 %and26.i, 3072
  store i32 %or42.i, ptr %add.ptr.i, align 8
  %res.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2
  %94 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %res.i, align 8
  %or16.i = and i32 %93, 2130706432
  %and53.i = and i32 %95, 16777215
  %and52.i = or i32 %or16.i, %and53.i
  %or55.i = or i32 %and52.i, -2147483648
  store i32 %or55.i, ptr %add.ptr12.i, align 4
  %add.ptr64.i = getelementptr i8, ptr %call7.i.i.i, i32 20
  %96 = ptrtoint ptr %add.ptr64.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr64.i, align 4
  %or68.i = or i32 %97, -256
  store i32 %or68.i, ptr %add.ptr64.i, align 4
  %call72.i = tail call i32 @mlx5_vdpa_create_mkey(ptr noundef %mvdev, ptr noundef %mr1, ptr noundef nonnull %call7.i.i.i, i32 noundef 272) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %if.then74.i, label %if.end.i35.if.end75.i_crit_edge

if.end.i35.if.end75.i_crit_edge:                  ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75.i

if.then74.i:                                      ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #11
  %user_mr.i36 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 6
  %98 = ptrtoint ptr %user_mr.i36 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %user_mr.i36, align 4
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then74.i, %if.end.i35.if.end75.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %if.end5

if.end5:                                          ; preds = %if.end75.i, %list_del_init.exit.i.if.end5_crit_edge
  %err.0 = phi i32 [ %call72.i, %if.end75.i ], [ %err.0.i, %list_del_init.exit.i.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool6.not = icmp eq i32 %err.0, 0
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %if.end5.if.end8_crit_edge, %if.end5.thread48
  br i1 %tobool2.not, label %dup_iotlb.exit, label %if.end.i40

if.end.i40:                                       ; preds = %if.end8
  %call1.i = tail call ptr @vhost_iotlb_itree_first(ptr noundef nonnull %iotlb, i64 noundef 0, i64 noundef -1) #9
  %cvq3.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 10
  %tobool2.not29.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not29.i, label %if.end.i40.if.end12_crit_edge, label %if.end.i40.for.body.i42_crit_edge

if.end.i40.for.body.i42_crit_edge:                ; preds = %if.end.i40
  br label %for.body.i42

if.end.i40.if.end12_crit_edge:                    ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

for.body.i42:                                     ; preds = %for.inc.i43.for.body.i42_crit_edge, %if.end.i40.for.body.i42_crit_edge
  %map.030.i = phi ptr [ %call11.i, %for.inc.i43.for.body.i42_crit_edge ], [ %call1.i, %if.end.i40.for.body.i42_crit_edge ]
  %99 = ptrtoint ptr %cvq3.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cvq3.i, align 8
  %start5.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.030.i, i32 0, i32 2
  %101 = ptrtoint ptr %start5.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %start5.i, align 8
  %last6.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.030.i, i32 0, i32 3
  %103 = ptrtoint ptr %last6.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %last6.i, align 8
  %addr.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.030.i, i32 0, i32 5
  %105 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %addr.i, align 8
  %perm.i41 = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.030.i, i32 0, i32 6
  %107 = ptrtoint ptr %perm.i41 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %perm.i41, align 8
  %call7.i = tail call i32 @vhost_iotlb_add_range(ptr noundef %100, i64 noundef %102, i64 noundef %104, i64 noundef %106, i32 noundef %108) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %for.inc.i43, label %if.then15

for.inc.i43:                                      ; preds = %for.body.i42
  %call11.i = tail call ptr @vhost_iotlb_itree_next(ptr noundef nonnull %map.030.i, i64 noundef 0, i64 noundef -1) #9
  %tobool2.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool2.not.i, label %for.inc.i43.if.end12_crit_edge, label %for.inc.i43.for.body.i42_crit_edge

for.inc.i43.for.body.i42_crit_edge:               ; preds = %for.inc.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i42

for.inc.i43.if.end12_crit_edge:                   ; preds = %for.inc.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

dup_iotlb.exit:                                   ; preds = %if.end8
  %cvq.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 10
  %109 = ptrtoint ptr %cvq.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cvq.i, align 8
  %call.i39 = tail call i32 @vhost_iotlb_add_range(ptr noundef %110, i64 noundef 0, i64 noundef -1, i64 noundef 0, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool10.not = icmp eq i32 %call.i39, 0
  br i1 %tobool10.not, label %dup_iotlb.exit.if.end12_crit_edge, label %if.else16

dup_iotlb.exit.if.end12_crit_edge:                ; preds = %dup_iotlb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %dup_iotlb.exit.if.end12_crit_edge, %for.inc.i43.if.end12_crit_edge, %if.end.i40.if.end12_crit_edge
  %111 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %initialized, align 4
  br label %cleanup

if.then15:                                        ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @destroy_user_mr(ptr noundef %mvdev, ptr noundef %mr1)
  br label %cleanup

if.else16:                                        ; preds = %dup_iotlb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %112 = ptrtoint ptr %mr1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mr1, align 4
  %call.i45 = tail call i32 @mlx5_vdpa_destroy_mkey(ptr noundef %mvdev, i32 noundef %113) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else16, %if.then15, %if.end12, %if.end5.cleanup_crit_edge, %if.else.cleanup_crit_edge, %err_chain.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ 0, %entry.cleanup_crit_edge ], [ %err.0, %if.end5.cleanup_crit_edge ], [ %call.i39, %if.else16 ], [ %call7.i, %if.then15 ], [ -12, %if.else.cleanup_crit_edge ], [ %err.0.i, %err_chain.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vdpa_handle_set_map(ptr noundef %mvdev, ptr noundef %iotlb, ptr nocapture noundef %change_map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %change_map to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %change_map, align 1
  %mkey_mtx = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mkey_mtx, i32 noundef 0) #9
  %initialized = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 4
  %1 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %initialized, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 565, i32 noundef %12) #14
  %13 = ptrtoint ptr %change_map to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %change_map, align 1
  br label %if.end5

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %change_map to i32
  call void @__asan_load1_noabort(i32 %14)
  %.pr = load i8, ptr %change_map, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool2.not = icmp eq i8 %.pr, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call fastcc i32 @_mlx5_vdpa_create_mr(ptr noundef %mvdev, ptr noundef %iotlb)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge, %if.end.thread
  %err.0 = phi i32 [ 0, %if.end.if.end5_crit_edge ], [ %call4, %if.then3 ], [ 0, %if.end.thread ]
  tail call void @mutex_unlock(ptr noundef %mkey_mtx) #9
  ret i32 %err.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_iotlb_del_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vdpa_destroy_mkey(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vhost_iotlb_itree_first(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_direct_chain(ptr noundef %mvdev, i64 noundef %start, i64 noundef %size, i8 noundef zeroext %perm, ptr noundef %iotlb) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp, i32 0, i32 1
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp, ptr %tmp, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %tobool.not123 = icmp eq i64 %size, 0
  br i1 %tobool.not123, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %conv6 = zext i8 %perm to i32
  %dma_dev.i = getelementptr inbounds %struct.vdpa_device, ptr %mvdev, i32 0, i32 1
  %res.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2
  %uid.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 4
  %num_directs = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 2
  %num_klms = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 3
  br label %while.body

while.body:                                       ; preds = %list_add_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %size.addr.0125 = phi i64 [ %size, %while.body.lr.ph ], [ %sub, %list_add_tail.exit.while.body_crit_edge ]
  %st.0124 = phi i64 [ %start, %while.body.lr.ph ], [ %add, %list_add_tail.exit.while.body_crit_edge ]
  %3 = call i64 @llvm.umin.i64(i64 %size.addr.0125, i64 1073741824)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 64) #13
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %while.body.err_alloc_crit_edge, label %if.end

while.body.err_alloc_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_alloc

if.end:                                           ; preds = %while.body
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %st.0124, ptr %call7.i.i, align 8
  %add = add i64 %3, %st.0124
  %end = getelementptr inbounds %struct.mlx5_vdpa_direct_mr, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %add, ptr %end, align 8
  %perm7 = getelementptr inbounds %struct.mlx5_vdpa_direct_mr, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %perm7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv6, ptr %perm7, align 8
  %8 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_dev.i, align 8
  %sub.i = add i64 %add, -1
  %call.i = call ptr @vhost_iotlb_itree_first(ptr noundef %iotlb, i64 noundef %st.0124, i64 noundef %sub.i) #9
  %tobool.not176.i = icmp eq ptr %call.i, null
  br i1 %tobool.not176.i, label %if.end.cond.false12.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cond.false12.i_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false12.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %map.0179.i = phi ptr [ %call7.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end.for.body.i_crit_edge ]
  %lgcd.0178.i = phi i32 [ %call3.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %start.0177.i = phi i64 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %last.i.i.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.0179.i, i32 0, i32 3
  %10 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %last.i.i.i, align 8
  %add.i.i.i = add i64 %11, 1
  %12 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %end, align 8
  %14 = call i64 @llvm.umin.i64(i64 %add.i.i.i, i64 %13) #9
  %start.i.i.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.0179.i, i32 0, i32 2
  %15 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %start.i.i.i, align 8
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %call7.i.i, align 8
  %19 = call i64 @llvm.umax.i64(i64 %16, i64 %18) #9
  %sub.i.i = sub i64 %14, %19
  %conv.i = trunc i64 %sub.i.i to i32
  %call3.i = call i32 @gcd(i32 noundef %lgcd.0178.i, i32 noundef %conv.i) #15
  %conv4.i = and i64 %sub.i.i, 4294967295
  %add.i = add i64 %conv4.i, %start.0177.i
  %sub6.i = add i64 %13, -1
  %call7.i = call ptr @vhost_iotlb_itree_next(ptr noundef nonnull %map.0179.i, i64 noundef %add.i, i64 noundef %sub6.i) #9
  %tobool.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i, label %for.body.i.cond.false12.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.cond.false12.i_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false12.i

cond.false12.i:                                   ; preds = %for.body.i.cond.false12.i_crit_edge, %if.end.cond.false12.i_crit_edge
  %lgcd.0.lcssa.i = phi i32 [ 0, %if.end.cond.false12.i_crit_edge ], [ %call3.i, %for.body.i.cond.false12.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lgcd.0.lcssa.i)
  %tobool.not.i.i.i = icmp eq i32 %lgcd.0.lcssa.i, 0
  %20 = call i32 @llvm.ctlz.i32(i32 %lgcd.0.lcssa.i, i1 true) #9, !range !30
  %sub.i.op.i.i = xor i32 %20, 31
  %sub.i149.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %shl.i = shl nuw i32 1, %sub.i149.i
  %21 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %end, align 8
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %call7.i.i, align 8
  %conv21.i = sext i32 %shl.i to i64
  %25 = xor i64 %24, -1
  %add22.i = add i64 %22, %25
  %sub23.i = add i64 %add22.i, %conv21.i
  %conv16148.i = zext i32 %sub.i149.i to i64
  %shr.i = lshr i64 %sub23.i, %conv16148.i
  %conv24.i = trunc i64 %shr.i to i32
  %sg_head.i = getelementptr inbounds %struct.mlx5_vdpa_direct_mr, ptr %call7.i.i, i32 0, i32 4
  %call25.i = call i32 @sg_alloc_table(ptr noundef %sg_head.i, i32 noundef %conv24.i, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end.i, label %cond.false12.i.if.then10_crit_edge

cond.false12.i.if.then10_crit_edge:               ; preds = %cond.false12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.end.i:                                         ; preds = %cond.false12.i
  %26 = ptrtoint ptr %sg_head.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sg_head.i, align 8
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %call7.i.i, align 8
  %30 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %end, align 8
  %sub30.i = add i64 %31, -1
  %call31.i = call ptr @vhost_iotlb_itree_first(ptr noundef %iotlb, i64 noundef %29, i64 noundef %sub30.i) #9
  %tobool33.not184.i = icmp eq ptr %call31.i, null
  br i1 %tobool33.not184.i, label %if.end.i.done.i_crit_edge, label %if.end.i.for.body34.i_crit_edge

if.end.i.for.body34.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body34.i

if.end.i.done.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.i

for.body34.i:                                     ; preds = %for.inc59.i.for.body34.i_crit_edge, %if.end.i.for.body34.i_crit_edge
  %map.1186.i = phi ptr [ %call63.i, %for.inc59.i.for.body34.i_crit_edge ], [ %call31.i, %if.end.i.for.body34.i_crit_edge ]
  %sg.0185.i = phi ptr [ %sg.1.lcssa.i, %for.inc59.i.for.body34.i_crit_edge ], [ %27, %if.end.i.for.body34.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.1186.i, i32 0, i32 5
  %32 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %addr.i, align 8
  %last.i.i150.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.1186.i, i32 0, i32 3
  %34 = ptrtoint ptr %last.i.i150.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %last.i.i150.i, align 8
  %add.i.i151.i = add i64 %35, 1
  %36 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %end, align 8
  %38 = call i64 @llvm.umin.i64(i64 %add.i.i151.i, i64 %37) #9
  %start.i.i153.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.1186.i, i32 0, i32 2
  %39 = ptrtoint ptr %start.i.i153.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %start.i.i153.i, align 8
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %call7.i.i, align 8
  %43 = call i64 @llvm.umax.i64(i64 %40, i64 %42) #9
  %sub.i154.i = add i64 %38, %33
  %add36.i = sub i64 %sub.i154.i, %43
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %add36.i)
  %cmp39180.i = icmp ult i64 %33, %add36.i
  br i1 %cmp39180.i, label %for.body34.i.for.body41.i_crit_edge, label %for.body34.i.for.inc59.i_crit_edge

for.body34.i.for.inc59.i_crit_edge:               ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59.i

for.body34.i.for.body41.i_crit_edge:              ; preds = %for.body34.i
  br label %for.body41.i

for.cond38.i:                                     ; preds = %sg_set_page.exit.i
  %add57.i = add i64 %pa.0181.i, %conv21.i
  %cmp39.i = icmp ult i64 %add57.i, %add36.i
  br i1 %cmp39.i, label %for.cond38.i.for.body41.i_crit_edge, label %for.cond38.i.for.inc59.i_crit_edge

for.cond38.i.for.inc59.i_crit_edge:               ; preds = %for.cond38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59.i

for.cond38.i.for.body41.i_crit_edge:              ; preds = %for.cond38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.cond38.i.for.body41.i_crit_edge, %for.body34.i.for.body41.i_crit_edge
  %sg.1182.i = phi ptr [ %call51.i, %for.cond38.i.for.body41.i_crit_edge ], [ %sg.0185.i, %for.body34.i.for.body41.i_crit_edge ]
  %pa.0181.i = phi i64 [ %add57.i, %for.cond38.i.for.body41.i_crit_edge ], [ %33, %for.body34.i.for.body41.i_crit_edge ]
  %tobool45.not.i = icmp eq ptr %sg.1182.i, null
  br i1 %tobool45.not.i, label %do.end.i, label %if.end50.i

do.end.i:                                         ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #11
  %mdev.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %44 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mdev.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %48 = call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 68
  %52 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pid.i, align 8
  %54 = ptrtoint ptr %start.i.i153.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %start.i.i153.i, align 8
  %56 = ptrtoint ptr %last.i.i150.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %last.i.i150.i, align 8
  %add49.i = add i64 %57, 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 263, i32 noundef %53, i64 noundef %55, i64 noundef %add49.i) #14
  br label %err_map.i

if.end50.i:                                       ; preds = %for.body41.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %58 = load ptr, ptr @mem_map, align 4
  %shr42.i = lshr i64 %pa.0181.i, 12
  %conv43.i = trunc i64 %shr42.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %59 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub44.i = sub i32 %conv43.i, %59
  %add.ptr.i = getelementptr %struct.page, ptr %58, i32 %sub44.i
  %60 = ptrtoint ptr %sg.1182.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sg.1182.i, align 4
  %62 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %62, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i155.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i155.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !31

do.body5.i.i.i:                                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !32
  unreachable

do.body11.i.i.i:                                  ; preds = %if.end50.i
  %and.i.i.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_page.exit.i, label %do.body19.i.i.i, !prof !31

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !33
  unreachable

sg_set_page.exit.i:                               ; preds = %do.body11.i.i.i
  %and.i.i.i = and i32 %61, 3
  %or.i.i.i = or i32 %and.i.i.i, %62
  %63 = ptrtoint ptr %sg.1182.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or.i.i.i, ptr %sg.1182.i, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.1182.i, i32 0, i32 1
  %64 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.1182.i, i32 0, i32 2
  %65 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %shl.i, ptr %length.i.i, align 4
  %call51.i = call ptr @sg_next(ptr noundef nonnull %sg.1182.i) #9
  %tobool52.not.i = icmp eq ptr %call51.i, null
  br i1 %tobool52.not.i, label %sg_set_page.exit.i.done.i_crit_edge, label %for.cond38.i

sg_set_page.exit.i.done.i_crit_edge:              ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.i

for.inc59.i:                                      ; preds = %for.cond38.i.for.inc59.i_crit_edge, %for.body34.i.for.inc59.i_crit_edge
  %sg.1.lcssa.i = phi ptr [ %sg.0185.i, %for.body34.i.for.inc59.i_crit_edge ], [ %call51.i, %for.cond38.i.for.inc59.i_crit_edge ]
  %66 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %call7.i.i, align 8
  %68 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %end, align 8
  %sub62.i = add i64 %69, -1
  %call63.i = call ptr @vhost_iotlb_itree_next(ptr noundef nonnull %map.1186.i, i64 noundef %67, i64 noundef %sub62.i) #9
  %tobool33.not.i = icmp eq ptr %call63.i, null
  br i1 %tobool33.not.i, label %for.inc59.i.done.i_crit_edge, label %for.inc59.i.for.body34.i_crit_edge

for.inc59.i.for.body34.i_crit_edge:               ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.i

for.inc59.i.done.i_crit_edge:                     ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.i

done.i:                                           ; preds = %for.inc59.i.done.i_crit_edge, %sg_set_page.exit.i.done.i_crit_edge, %if.end.i.done.i_crit_edge
  %log_size.i = getelementptr inbounds %struct.mlx5_vdpa_direct_mr, ptr %call7.i.i, i32 0, i32 5
  %70 = ptrtoint ptr %log_size.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub.i149.i, ptr %log_size.i, align 4
  %nsg65.i = getelementptr inbounds %struct.mlx5_vdpa_direct_mr, ptr %call7.i.i, i32 0, i32 6
  %71 = ptrtoint ptr %nsg65.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv24.i, ptr %nsg65.i, align 8
  %72 = ptrtoint ptr %sg_head.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sg_head.i, align 8
  %call69.i = call i32 @dma_map_sg_attrs(ptr noundef %9, ptr noundef %73, i32 noundef %conv24.i, i32 noundef 0, i32 noundef 0) #9
  %nent.i = getelementptr inbounds %struct.mlx5_vdpa_direct_mr, ptr %call7.i.i, i32 0, i32 7
  %74 = ptrtoint ptr %nent.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call69.i, ptr %nent.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool71.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool71.not.i, label %done.i.err_map.i_crit_edge, label %if.end73.i

done.i.err_map.i_crit_edge:                       ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_map.i

if.end73.i:                                       ; preds = %done.i
  %75 = ptrtoint ptr %nsg65.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nsg65.i, align 8
  %mul.i.i = shl i32 %76, 3
  %77 = add i32 %mul.i.i, 287
  %add2.i.i = and i32 %77, -16
  %call.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %add2.i.i, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end73.i.err_direct.i_crit_edge, label %do.body.i.i

if.end73.i.err_direct.i_crit_edge:                ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_direct.i

do.body.i.i:                                      ; preds = %if.end73.i
  %78 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %uid.i.i, align 8
  %conv.i.i = zext i16 %79 to i32
  %80 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %call.i.i.i.i, align 4
  %and.i156.i = and i32 %81, -65536
  %or.i.i = or i32 %and.i156.i, %conv.i.i
  store i32 %or.i.i, ptr %call.i.i.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 16
  %82 = ptrtoint ptr %perm7 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %perm7, align 8
  %84 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr8.i.i, align 4
  %and18.i.i = and i32 %85, -469765889
  %86 = shl i32 %83, 10
  %shl20.i.i = and i32 %86, 2048
  %shl40.i.i = and i32 %86, 1024
  %or21.i.i = or i32 %shl20.i.i, %and18.i.i
  %or41.i.i = or i32 %or21.i.i, %shl40.i.i
  %or.i.i157.i = or i32 %or41.i.i, 256
  store i32 %or.i.i157.i, ptr %add.ptr8.i.i, align 4
  %add.ptr50.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 20
  %87 = ptrtoint ptr %add.ptr50.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %add.ptr50.i.i, align 4
  %or54.i.i = or i32 %88, -256
  store i32 %or54.i.i, ptr %add.ptr50.i.i, align 4
  %89 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %res.i.i, align 8
  %add.ptr64.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 28
  %91 = ptrtoint ptr %add.ptr64.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr64.i.i, align 4
  %and65.i.i = and i32 %92, -16777216
  %and66.i.i = and i32 %90, 16777215
  %or68.i.i = or i32 %and65.i.i, %and66.i.i
  store i32 %or68.i.i, ptr %add.ptr64.i.i, align 4
  %offset.i.i = getelementptr inbounds %struct.mlx5_vdpa_direct_mr, ptr %call7.i.i, i32 0, i32 9
  %93 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %offset.i.i, align 8
  %add.ptr80.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 32
  %95 = ptrtoint ptr %add.ptr80.i.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %add.ptr80.i.i, align 8
  %96 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %end, align 8
  %98 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %call7.i.i, align 8
  %sub93.i.i = sub i64 %97, %99
  %add.ptr94.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 40
  %100 = ptrtoint ptr %add.ptr94.i.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %sub93.i.i, ptr %add.ptr94.i.i, align 8
  %101 = ptrtoint ptr %log_size.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %log_size.i, align 4
  %add.ptr104.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 72
  %103 = ptrtoint ptr %add.ptr104.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr104.i.i, align 4
  %and105.i.i = and i32 %104, -32
  %and106.i.i = and i32 %102, 31
  %or108.i.i = or i32 %and105.i.i, %and106.i.i
  store i32 %or108.i.i, ptr %add.ptr104.i.i, align 4
  %sh_prom.i.i.i = zext i32 %102 to i64
  %notmask.i.i.i = shl nsw i64 -1, %sh_prom.i.i.i
  %sub.i.i.i = xor i64 %notmask.i.i.i, -1
  %add.i.i158.i = add i64 %sub93.i.i, %sub.i.i.i
  %and.i.i159.i = and i64 %add.i.i158.i, %notmask.i.i.i
  %shr.i.i.i = lshr i64 %and.i.i159.i, %sh_prom.i.i.i
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %add3.i.i.i = add i32 %conv.i.i.i, 1
  %div.i.i.i = sdiv i32 %add3.i.i.i, 2
  %add.ptr122.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 68
  %105 = ptrtoint ptr %add.ptr122.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %div.i.i.i, ptr %add.ptr122.i.i, align 4
  %add.ptr140.i.i = getelementptr i32, ptr %call.i.i.i.i, i32 24
  %106 = ptrtoint ptr %add.ptr140.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %div.i.i.i, ptr %add.ptr140.i.i, align 4
  %add.ptr148.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 272
  %107 = ptrtoint ptr %nent.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %nent.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp31.i.i.i = icmp sgt i32 %108, 0
  br i1 %cmp31.i.i.i, label %for.body.lr.ph.i.i.i, label %do.body.i.i.populate_mtts.exit.i.i_crit_edge

do.body.i.i.populate_mtts.exit.i.i_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %populate_mtts.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %do.body.i.i
  %109 = ptrtoint ptr %sg_head.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sg_head.i, align 8
  %111 = ptrtoint ptr %nsg65.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %nsg65.i, align 8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc10.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.035.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc11.i.i.i, %for.inc10.i.i.i.for.body.i.i.i_crit_edge ]
  %j.034.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %j.1.lcssa.i.i.i, %for.inc10.i.i.i.for.body.i.i.i_crit_edge ]
  %nsg.033.i.i.i = phi i32 [ %112, %for.body.lr.ph.i.i.i ], [ %nsg.1.lcssa.i.i.i, %for.inc10.i.i.i.for.body.i.i.i_crit_edge ]
  %sg.032.i.i.i = phi ptr [ %110, %for.body.lr.ph.i.i.i ], [ %call.i.i.i, %for.inc10.i.i.i.for.body.i.i.i_crit_edge ]
  %dma_length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.032.i.i.i, i32 0, i32 4
  %113 = ptrtoint ptr %dma_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %dma_length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsg.033.i.i.i)
  %tobool.not23.i.i.i = icmp eq i32 %nsg.033.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool4.not24.i.i.i = icmp eq i32 %114, 0
  %or.cond25.i.i.i = select i1 %tobool.not23.i.i.i, i1 true, i1 %tobool4.not24.i.i.i
  br i1 %or.cond25.i.i.i, label %for.body.i.i.i.for.inc10.i.i.i_crit_edge, label %for.body5.preheader.i.i.i

for.body.i.i.i.for.inc10.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc10.i.i.i

for.body5.preheader.i.i.i:                        ; preds = %for.body.i.i.i
  %conv2.i.i.i = zext i32 %114 to i64
  %dma_address.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.032.i.i.i, i32 0, i32 3
  %115 = ptrtoint ptr %dma_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dma_address.i.i.i, align 4
  %conv.i214.i.i = zext i32 %116 to i64
  %117 = ptrtoint ptr %log_size.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %log_size.i, align 4
  %shl.i.i.i = shl nuw i32 1, %118
  %conv6.i.i.i = zext i32 %shl.i.i.i to i64
  br label %for.body5.i.i.i

for.body5.i.i.i:                                  ; preds = %for.body5.i.i.i.for.body5.i.i.i_crit_edge, %for.body5.preheader.i.i.i
  %j.129.i.i.i = phi i32 [ %inc.i.i.i, %for.body5.i.i.i.for.body5.i.i.i_crit_edge ], [ %j.034.i.i.i, %for.body5.preheader.i.i.i ]
  %dma_len.028.i.i.i = phi i64 [ %sub.i216.i.i, %for.body5.i.i.i.for.body5.i.i.i_crit_edge ], [ %conv2.i.i.i, %for.body5.preheader.i.i.i ]
  %dma_addr.027.i.i.i = phi i64 [ %add.i215.i.i, %for.body5.i.i.i.for.body5.i.i.i_crit_edge ], [ %conv.i214.i.i, %for.body5.preheader.i.i.i ]
  %nsg.126.i.i.i = phi i32 [ %dec.i.i.i, %for.body5.i.i.i.for.body5.i.i.i_crit_edge ], [ %nsg.033.i.i.i, %for.body5.preheader.i.i.i ]
  %inc.i.i.i = add i32 %j.129.i.i.i, 1
  %arrayidx.i.i.i = getelementptr i64, ptr %add.ptr148.i.i, i32 %j.129.i.i.i
  %119 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %dma_addr.027.i.i.i, ptr %arrayidx.i.i.i, align 8
  %dec.i.i.i = add i32 %nsg.126.i.i.i, -1
  %add.i215.i.i = add nuw i64 %dma_addr.027.i.i.i, %conv6.i.i.i
  %sub.i216.i.i = sub i64 %dma_len.028.i.i.i, %conv6.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool.not.i.i160.i = icmp eq i32 %dec.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i216.i.i)
  %tobool4.not.i.i.i = icmp eq i64 %sub.i216.i.i, 0
  %or.cond.i.i.i = select i1 %tobool.not.i.i160.i, i1 true, i1 %tobool4.not.i.i.i
  br i1 %or.cond.i.i.i, label %for.body5.i.i.i.for.inc10.i.i.i_crit_edge, label %for.body5.i.i.i.for.body5.i.i.i_crit_edge

for.body5.i.i.i.for.body5.i.i.i_crit_edge:        ; preds = %for.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i.i.i

for.body5.i.i.i.for.inc10.i.i.i_crit_edge:        ; preds = %for.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc10.i.i.i

for.inc10.i.i.i:                                  ; preds = %for.body5.i.i.i.for.inc10.i.i.i_crit_edge, %for.body.i.i.i.for.inc10.i.i.i_crit_edge
  %nsg.1.lcssa.i.i.i = phi i32 [ %nsg.033.i.i.i, %for.body.i.i.i.for.inc10.i.i.i_crit_edge ], [ %dec.i.i.i, %for.body5.i.i.i.for.inc10.i.i.i_crit_edge ]
  %j.1.lcssa.i.i.i = phi i32 [ %j.034.i.i.i, %for.body.i.i.i.for.inc10.i.i.i_crit_edge ], [ %inc.i.i.i, %for.body5.i.i.i.for.inc10.i.i.i_crit_edge ]
  %inc11.i.i.i = add nuw nsw i32 %i.035.i.i.i, 1
  %call.i.i.i = call ptr @sg_next(ptr noundef %sg.032.i.i.i) #9
  %120 = ptrtoint ptr %nent.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %nent.i, align 4
  %cmp.i.i.i = icmp slt i32 %inc11.i.i.i, %121
  br i1 %cmp.i.i.i, label %for.inc10.i.i.i.for.body.i.i.i_crit_edge, label %for.inc10.i.i.i.populate_mtts.exit.i.i_crit_edge

for.inc10.i.i.i.populate_mtts.exit.i.i_crit_edge: ; preds = %for.inc10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %populate_mtts.exit.i.i

for.inc10.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %for.inc10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

populate_mtts.exit.i.i:                           ; preds = %for.inc10.i.i.i.populate_mtts.exit.i.i_crit_edge, %do.body.i.i.populate_mtts.exit.i.i_crit_edge
  %mr149.i.i = getelementptr inbounds %struct.mlx5_vdpa_direct_mr, ptr %call7.i.i, i32 0, i32 3
  %call150.i.i = call i32 @mlx5_vdpa_create_mkey(ptr noundef %mvdev, ptr noundef %mr149.i.i, ptr noundef nonnull %call.i.i.i.i, i32 noundef %add2.i.i) #9
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150.i.i)
  %tobool151.not.i.i = icmp eq i32 %call150.i.i, 0
  br i1 %tobool151.not.i.i, label %if.end11, label %do.end155.i.i

do.end155.i.i:                                    ; preds = %populate_mtts.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mdev.i.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %122 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mdev.i.i, align 8
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 8
  %126 = call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i217.i.i = and i32 %126, -16384
  %127 = inttoptr i32 %and.i217.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %129, i32 0, i32 68
  %130 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pid.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %125, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 82, i32 noundef %131) #14
  br label %err_direct.i

err_direct.i:                                     ; preds = %do.end155.i.i, %if.end73.i.err_direct.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call150.i.i, %do.end155.i.i ], [ -12, %if.end73.i.err_direct.i_crit_edge ]
  %132 = ptrtoint ptr %sg_head.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %sg_head.i, align 8
  %134 = ptrtoint ptr %nsg65.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %nsg65.i, align 8
  call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef %133, i32 noundef %135, i32 noundef 0, i32 noundef 0) #9
  br label %err_map.i

err_map.i:                                        ; preds = %err_direct.i, %done.i.err_map.i_crit_edge, %do.end.i
  %err.0.i = phi i32 [ %retval.0.i.ph.i, %err_direct.i ], [ -12, %do.end.i ], [ -12, %done.i.err_map.i_crit_edge ]
  call void @sg_free_table(ptr noundef %sg_head.i) #9
  br label %if.then10

if.then10:                                        ; preds = %err_map.i, %cond.false12.i.if.then10_crit_edge
  %retval.0.i.ph = phi i32 [ %err.0.i, %err_map.i ], [ %call25.i, %cond.false12.i.if.then10_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %err_alloc

if.end11:                                         ; preds = %populate_mtts.exit.i.i
  %list = getelementptr inbounds %struct.mlx5_vdpa_direct_mr, ptr %call7.i.i, i32 0, i32 8
  %136 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %137, ptr noundef nonnull %tmp) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.list_add_tail.exit_crit_edge

if.end11.list_add_tail.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %138 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %list, ptr %0, align 4
  %139 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %tmp, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.mlx5_vdpa_direct_mr, ptr %call7.i.i, i32 0, i32 8, i32 1
  %140 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %137, ptr %prev3.i.i, align 4
  %141 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %list, ptr %137, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end11.list_add_tail.exit_crit_edge
  %sub = sub i64 %size.addr.0125, %3
  %142 = ptrtoint ptr %num_directs to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %num_directs, align 4
  %inc = add i32 %143, 1
  store i32 %inc, ptr %num_directs, align 4
  %144 = ptrtoint ptr %num_klms to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %num_klms, align 4
  %inc12 = add i32 %145, 1
  store i32 %inc12, ptr %num_klms, align 4
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %list_add_tail.exit.while.end_crit_edge, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_add_tail.exit.while.end_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %list_add_tail.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %146 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile ptr, ptr %tmp, align 4
  %cmp.i.not.i = icmp eq ptr %147, %tmp
  br i1 %cmp.i.not.i, label %while.end.cleanup_crit_edge, label %if.then.i

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %head = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 1
  %prev.i68 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 1, i32 1
  %148 = ptrtoint ptr %prev.i68 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %prev.i68, align 4
  %150 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %0, align 4
  %prev3.i.i69 = getelementptr inbounds %struct.list_head, ptr %147, i32 0, i32 1
  %152 = ptrtoint ptr %prev3.i.i69 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %149, ptr %prev3.i.i69, align 4
  %153 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %147, ptr %149, align 4
  %154 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %head, ptr %151, align 4
  store ptr %151, ptr %prev.i68, align 4
  br label %cleanup

err_alloc:                                        ; preds = %if.then10, %while.body.err_alloc_crit_edge
  %err.0 = phi i32 [ %retval.0.i.ph, %if.then10 ], [ -12, %while.body.err_alloc_crit_edge ]
  %head15 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 1
  %155 = ptrtoint ptr %head15 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %head15, align 4
  %cmp25.not126 = icmp eq ptr %156, %head15
  br i1 %cmp25.not126, label %err_alloc.cleanup_crit_edge, label %err_alloc.for.body_crit_edge

err_alloc.for.body_crit_edge:                     ; preds = %err_alloc
  br label %for.body

err_alloc.cleanup_crit_edge:                      ; preds = %err_alloc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %err_alloc.for.body_crit_edge
  %.pn.in127 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %156, %err_alloc.for.body_crit_edge ]
  %dmr.0 = getelementptr i8, ptr %.pn.in127, i32 -48
  %157 = ptrtoint ptr %.pn.in127 to i32
  call void @__asan_load4_noabort(i32 %157)
  %.pn = load ptr, ptr %.pn.in127, align 8
  %call.i.i71 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in127) #9
  br i1 %call.i.i71, label %if.end.i.i72, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i72:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in127, i32 0, i32 1
  %158 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %prev.i.i, align 4
  %160 = ptrtoint ptr %.pn.in127 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %.pn.in127, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %159, ptr %prev1.i.i.i, align 4
  %163 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %161, ptr %159, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i72, %for.body.list_del_init.exit_crit_edge
  %164 = ptrtoint ptr %.pn.in127 to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %.pn.in127, ptr %.pn.in127, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in127, i32 0, i32 1
  %165 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %.pn.in127, ptr %prev.i3.i, align 4
  %166 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dma_dev.i, align 8
  %mr1.i.i = getelementptr i8, ptr %.pn.in127, i32 -28
  %168 = ptrtoint ptr %mr1.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %mr1.i.i, align 4
  %call.i.i74 = call i32 @mlx5_vdpa_destroy_mkey(ptr noundef %mvdev, i32 noundef %169) #9
  %sg_head.i75 = getelementptr i8, ptr %.pn.in127, i32 -24
  %170 = ptrtoint ptr %sg_head.i75 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %sg_head.i75, align 8
  %nsg.i = getelementptr i8, ptr %.pn.in127, i32 -8
  %172 = ptrtoint ptr %nsg.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %nsg.i, align 8
  call void @dma_unmap_sg_attrs(ptr noundef %167, ptr noundef %171, i32 noundef %173, i32 noundef 0, i32 noundef 0) #9
  call void @sg_free_table(ptr noundef %sg_head.i75) #9
  call void @kfree(ptr noundef %dmr.0) #9
  %cmp25.not = icmp eq ptr %.pn, %head15
  br i1 %cmp25.not, label %list_del_init.exit.cleanup_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit.cleanup_crit_edge, %err_alloc.cleanup_crit_edge, %if.then.i, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end.cleanup_crit_edge ], [ 0, %if.then.i ], [ %err.0, %err_alloc.cleanup_crit_edge ], [ %err.0, %list_del_init.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vhost_iotlb_itree_next(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vdpa_create_mkey(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_iotlb_add_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/vdpa/mlx5/core/mr.c", i32 565, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_vdpa_handle_set_map._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_vdpa_handle_set_map._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/vdpa/mlx5/core/mr.c", i32 262, i32 5}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @map_direct_mr._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @map_direct_mr._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/vdpa/mlx5/core/mr.c", i32 82, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @create_direct_mr._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @create_direct_mr._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i8 0, i8 2}
!30 = !{i32 0, i32 33}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2153382121, i64 2153382613, i64 2153382158, i64 2153382214, i64 2153382248, i64 2153382272, i64 2153382313, i64 2153382334, i64 2153382362, i64 2153382396}
!33 = !{i64 2153383731, i64 2153384223, i64 2153383768, i64 2153383824, i64 2153383858, i64 2153383882, i64 2153383923, i64 2153383944, i64 2153383972, i64 2153384006}
