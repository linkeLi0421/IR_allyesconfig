; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv04.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_devinit_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_devinit = type { ptr, %struct.nvkm_subdev, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
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
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.133 }
%struct.anon.133 = type { i8, i8, i8, i8, i8 }
%struct.nvkm_pll_vals = type { %union.anon.140, i32, i32 }
%union.anon.140 = type { %struct.anon.142 }
%struct.anon.142 = type { i16, i16 }
%struct.anon.141 = type { i8, i8, i8, i8 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.143, %struct.anon.143 }
%struct.anon.143 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nv04_devinit = type { %struct.nvkm_devinit, i32 }
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

@nv04_devinit_preinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 421, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: adaptor not initialised\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nv04_devinit_preinit\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv04.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv04_devinit_preinit._entry_ptr = internal global ptr @nv04_devinit_preinit._entry, section ".printk_index", align 4
@nv04_devinit = internal constant { %struct.nvkm_devinit_func, [32 x i8] } { %struct.nvkm_devinit_func { ptr @nv04_devinit_dtor, ptr @nv04_devinit_preinit, ptr null, ptr @nv04_devinit_post, ptr null, ptr @nv04_devinit_meminit, ptr @nv04_devinit_pll_set, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv04_devinit_meminit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 47, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: failed to map fb\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nv04_devinit_meminit\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nv04_devinit_meminit._entry_ptr = internal global ptr @nv04_devinit_meminit._entry, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 26, i64 32]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 53]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 26, i64 32]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 53]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 53]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 8, i64 48, i64 49, i64 53, i64 54]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 421, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"nv04_devinit\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 452, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv04.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 47, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @nv04_devinit_meminit._entry, ptr @nv04_devinit_meminit._entry_ptr, ptr @nv04_devinit_preinit._entry, ptr @nv04_devinit_preinit._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nv04_devinit, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_devinit_preinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_devinit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_devinit_meminit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @setPLL_single(ptr nocapture noundef readonly %init, i32 noundef %reg, ptr nocapture noundef readonly %pv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %bios = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 8
  %chip = getelementptr inbounds %struct.nvkm_bios, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip, align 1
  %conv = zext i8 %5 to i32
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %reg
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %shr = lshr i32 %8, 8
  %and2 = and i32 %8, 255
  %and3 = and i32 %8, -524288
  %log2P = getelementptr inbounds %struct.nvkm_pll_vals, ptr %pv, i32 0, i32 1
  %9 = ptrtoint ptr %log2P to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %log2P, align 4
  %shl = shl i32 %10, 16
  %or = or i32 %shl, %and3
  %11 = ptrtoint ptr %pv to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pv, align 4
  %conv4 = zext i16 %12 to i32
  %or5 = or i32 %or, %conv4
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %5)
  %cmp.i = icmp ult i8 %5, 23
  br i1 %cmp.i, label %entry.powerctrl_1_shift.exit_crit_edge, label %switch.early.test.i

entry.powerctrl_1_shift.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %powerctrl_1_shift.exit

switch.early.test.i:                              ; preds = %entry
  %13 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.end.i [
    i8 32, label %switch.early.test.i.powerctrl_1_shift.exit_crit_edge
    i8 26, label %switch.early.test.i.powerctrl_1_shift.exit_crit_edge122
  ]

switch.early.test.i.powerctrl_1_shift.exit_crit_edge122: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %powerctrl_1_shift.exit

switch.early.test.i.powerctrl_1_shift.exit_crit_edge: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %powerctrl_1_shift.exit

if.end.i:                                         ; preds = %switch.early.test.i
  %14 = add i32 %reg, -6817024
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 30) #7
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %15, label %sw.epilog.thread.i [
    i32 8, label %sw.bb.i
    i32 2, label %if.end.i.land.lhs.true.i_crit_edge
    i32 1, label %if.end.i.powerctrl_1_shift.exit_crit_edge
    i32 0, label %sw.epilog.thread39.i
  ]

if.end.i.powerctrl_1_shift.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %powerctrl_1_shift.exit

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

sw.epilog.thread39.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %powerctrl_1_shift.exit

sw.epilog.thread.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %powerctrl_1_shift.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sw.bb.i, %if.end.i.land.lhs.true.i_crit_edge
  %shift.0.i = phi i32 [ 8, %if.end.i.land.lhs.true.i_crit_edge ], [ 12, %sw.bb.i ]
  %17 = add nsw i32 %conv, -53
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %18 = icmp ult i32 %17, 2
  %19 = add nsw i32 %conv, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %19)
  %20 = icmp ult i32 %19, -14
  %21 = or i1 %20, %18
  %spec.select.i = select i1 %21, i32 -4, i32 %shift.0.i
  br label %powerctrl_1_shift.exit

powerctrl_1_shift.exit:                           ; preds = %land.lhs.true.i, %sw.epilog.thread.i, %sw.epilog.thread39.i, %if.end.i.powerctrl_1_shift.exit_crit_edge, %switch.early.test.i.powerctrl_1_shift.exit_crit_edge, %switch.early.test.i.powerctrl_1_shift.exit_crit_edge122, %entry.powerctrl_1_shift.exit_crit_edge
  %retval.0.i = phi i32 [ -4, %switch.early.test.i.powerctrl_1_shift.exit_crit_edge ], [ -4, %entry.powerctrl_1_shift.exit_crit_edge ], [ -4, %switch.early.test.i.powerctrl_1_shift.exit_crit_edge122 ], [ %spec.select.i, %land.lhs.true.i ], [ -4, %sw.epilog.thread.i ], [ 0, %sw.epilog.thread39.i ], [ 4, %if.end.i.powerctrl_1_shift.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %or5)
  %cmp = icmp eq i32 %8, %or5
  br i1 %cmp, label %powerctrl_1_shift.exit.cleanup_crit_edge, label %if.end

powerctrl_1_shift.exit.cleanup_crit_edge:         ; preds = %powerctrl_1_shift.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %powerctrl_1_shift.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp8 = icmp sgt i32 %retval.0.i, -1
  br i1 %cmp8, label %if.then10, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %23, i32 5508
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %shl16 = shl nuw nsw i32 15, %retval.0.i
  %neg = xor i32 %shl16, -1
  %and17 = and i32 %24, %neg
  %shl18 = shl nuw nsw i32 1, %retval.0.i
  %or19 = or i32 %and17, %shl18
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %26, i32 5508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %or19) #7, !srcloc !30
  br label %if.end22

if.end22:                                         ; preds = %if.then10, %if.end.if.end22_crit_edge
  %saved_powerctrl_1.0 = phi i32 [ %24, %if.then10 ], [ 0, %if.end.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end22.do.body42_crit_edge, label %land.lhs.true

if.end22.do.body42_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42

land.lhs.true:                                    ; preds = %if.end22
  %M1 = getelementptr inbounds %struct.anon.141, ptr %pv, i32 0, i32 1
  %27 = ptrtoint ptr %M1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %M1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool24.not = icmp eq i8 %28, 0
  br i1 %tobool24.not, label %land.lhs.true.do.body42_crit_edge, label %land.lhs.true25

land.lhs.true.do.body42_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42

land.lhs.true25:                                  ; preds = %land.lhs.true
  %div.lhs.trunc = trunc i32 %shr to i8
  %div.rhs.trunc = trunc i32 %8 to i8
  %div121 = udiv i8 %div.lhs.trunc, %div.rhs.trunc
  %29 = ptrtoint ptr %pv to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pv, align 4
  %31 = udiv i8 %30, %28
  call void @__sanitizer_cov_trace_cmp1(i8 %div121, i8 %31)
  %cmp30 = icmp ult i8 %div121, %31
  br i1 %cmp30, label %do.body33, label %land.lhs.true25.do.body42_crit_edge

land.lhs.true25.do.body42_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42

do.body33:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %log2P to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %log2P, align 4
  %shl37 = shl i32 %33, 16
  %and38 = and i32 %8, 65535
  %or39 = or i32 %shl37, %and38
  %34 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri, align 4
  %add.ptr41 = getelementptr i8, ptr %35, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %or39) #7, !srcloc !30
  br label %if.end51

do.body42:                                        ; preds = %land.lhs.true25.do.body42_crit_edge, %land.lhs.true.do.body42_crit_edge, %if.end22.do.body42_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  %and45 = and i32 %8, -65536
  %36 = ptrtoint ptr %pv to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %pv, align 4
  %conv47 = zext i16 %37 to i32
  %or48 = or i32 %and45, %conv47
  %38 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri, align 4
  %add.ptr50 = getelementptr i8, ptr %39, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %or48) #7, !srcloc !30
  br label %if.end51

if.end51:                                         ; preds = %do.body42, %do.body33
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %5)
  %cmp52 = icmp ugt i8 %5, 22
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %5)
  %cmp54 = icmp ne i8 %5, 26
  %or.cond.not = and i1 %cmp52, %cmp54
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %5)
  %cmp57.not = icmp eq i8 %5, 17
  %or.cond120 = or i1 %cmp57.not, %or.cond.not
  br i1 %or.cond120, label %if.end51.if.end60_crit_edge, label %if.then59

if.end51.if.end60_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then59:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 64) #7
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end51.if.end60_crit_edge
  %40 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri, align 4
  %add.ptr63 = getelementptr i8, ptr %41, i32 %reg
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri, align 4
  %add.ptr70 = getelementptr i8, ptr %44, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %or5) #7, !srcloc !30
  br i1 %cmp8, label %do.body74, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body74:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %45 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri, align 4
  %add.ptr78 = getelementptr i8, ptr %46, i32 5508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %saved_powerctrl_1.0) #7, !srcloc !30
  br label %cleanup

cleanup:                                          ; preds = %do.body74, %if.end60.cleanup_crit_edge, %powerctrl_1_shift.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @setPLL_double_highregs(ptr nocapture noundef readonly %init, i32 noundef %reg1, ptr nocapture noundef readonly %pv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %bios = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 8
  %chip = getelementptr inbounds %struct.nvkm_bios, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6817056, i32 %reg1)
  %cmp5 = icmp eq i32 %reg1, 6817056
  %cond = select i1 %cmp5, i32 92, i32 112
  %add = add i32 %cond, %reg1
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %reg1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %9 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %5, label %cond.true [
    i8 53, label %entry.cond.end_crit_edge
    i8 48, label %entry.cond.end_crit_edge250
  ]

entry.cond.end_crit_edge250:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge250
  %cond12 = phi i32 [ %12, %cond.true ], [ 0, %entry.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge250 ]
  %and = and i32 %8, -524288
  %log2P = getelementptr inbounds %struct.nvkm_pll_vals, ptr %pv, i32 0, i32 1
  %13 = ptrtoint ptr %log2P to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %log2P, align 4
  %shl = shl i32 %14, 16
  %or = or i32 %shl, %and
  %15 = ptrtoint ptr %pv to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pv, align 4
  %conv13 = zext i16 %16 to i32
  %or14 = or i32 %or, %conv13
  %and15 = and i32 %cond12, 2147418112
  %NM2 = getelementptr inbounds %struct.anon.142, ptr %pv, i32 0, i32 1
  %17 = ptrtoint ptr %NM2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %NM2, align 2
  %conv17 = zext i16 %18 to i32
  %or16 = or i32 %and15, %conv17
  %or18 = or i32 %or16, -2147483648
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool20.not = icmp eq i16 %18, 0
  br i1 %tobool20.not, label %cond.end.lor.end26_crit_edge, label %lor.rhs21

cond.end.lor.end26_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end26

lor.rhs21:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %NM2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %NM2, align 2
  %M2 = getelementptr inbounds %struct.anon.141, ptr %pv, i32 0, i32 3
  %21 = ptrtoint ptr %M2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %M2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp24 = icmp eq i8 %20, %22
  br label %lor.end26

lor.end26:                                        ; preds = %lor.rhs21, %cond.end.lor.end26_crit_edge
  %23 = phi i1 [ true, %cond.end.lor.end26_crit_edge ], [ %cmp24, %lor.rhs21 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %5)
  %cmp.i = icmp ult i8 %5, 23
  br i1 %cmp.i, label %lor.end26.powerctrl_1_shift.exit_crit_edge, label %switch.early.test.i

lor.end26.powerctrl_1_shift.exit_crit_edge:       ; preds = %lor.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %powerctrl_1_shift.exit

switch.early.test.i:                              ; preds = %lor.end26
  %24 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %5, label %if.end.i [
    i8 32, label %switch.early.test.i.powerctrl_1_shift.exit_crit_edge
    i8 26, label %switch.early.test.i.powerctrl_1_shift.exit_crit_edge251
  ]

switch.early.test.i.powerctrl_1_shift.exit_crit_edge251: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %powerctrl_1_shift.exit

switch.early.test.i.powerctrl_1_shift.exit_crit_edge: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %powerctrl_1_shift.exit

if.end.i:                                         ; preds = %switch.early.test.i
  %25 = add i32 %reg1, -6817024
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 30) #7
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %26, label %sw.epilog.thread.i [
    i32 8, label %sw.bb.i
    i32 2, label %if.end.i.land.lhs.true.i_crit_edge
    i32 1, label %if.end.i.powerctrl_1_shift.exit_crit_edge
    i32 0, label %sw.epilog.thread39.i
  ]

if.end.i.powerctrl_1_shift.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %powerctrl_1_shift.exit

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

sw.epilog.thread39.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %powerctrl_1_shift.exit

sw.epilog.thread.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %powerctrl_1_shift.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sw.bb.i, %if.end.i.land.lhs.true.i_crit_edge
  %shift.0.i = phi i32 [ 8, %if.end.i.land.lhs.true.i_crit_edge ], [ 12, %sw.bb.i ]
  %28 = add nsw i32 %conv, -53
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %29 = icmp ult i32 %28, 2
  %30 = add nsw i32 %conv, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %30)
  %31 = icmp ult i32 %30, -14
  %32 = or i1 %31, %29
  %spec.select.i = select i1 %32, i32 -4, i32 %shift.0.i
  br label %powerctrl_1_shift.exit

powerctrl_1_shift.exit:                           ; preds = %land.lhs.true.i, %sw.epilog.thread.i, %sw.epilog.thread39.i, %if.end.i.powerctrl_1_shift.exit_crit_edge, %switch.early.test.i.powerctrl_1_shift.exit_crit_edge, %switch.early.test.i.powerctrl_1_shift.exit_crit_edge251, %lor.end26.powerctrl_1_shift.exit_crit_edge
  %retval.0.i = phi i32 [ -4, %switch.early.test.i.powerctrl_1_shift.exit_crit_edge ], [ -4, %lor.end26.powerctrl_1_shift.exit_crit_edge ], [ -4, %switch.early.test.i.powerctrl_1_shift.exit_crit_edge251 ], [ %spec.select.i, %land.lhs.true.i ], [ -4, %sw.epilog.thread.i ], [ 0, %sw.epilog.thread39.i ], [ 4, %if.end.i.powerctrl_1_shift.exit_crit_edge ]
  %33 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %5, label %if.end [
    i8 53, label %powerctrl_1_shift.exit.if.end.thread_crit_edge
    i8 48, label %powerctrl_1_shift.exit.if.end.thread_crit_edge252
  ]

powerctrl_1_shift.exit.if.end.thread_crit_edge252: ; preds = %powerctrl_1_shift.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread

powerctrl_1_shift.exit.if.end.thread_crit_edge:   ; preds = %powerctrl_1_shift.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread

if.end.thread:                                    ; preds = %powerctrl_1_shift.exit.if.end.thread_crit_edge, %powerctrl_1_shift.exit.if.end.thread_crit_edge252
  %and30 = and i32 %or14, -54001793
  %34 = ptrtoint ptr %NM2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %NM2, align 2
  %conv32 = zext i8 %35 to i32
  %and33 = shl nuw nsw i32 %conv32, 21
  %shl34 = and i32 %and33, 50331648
  %and38 = shl nuw nsw i32 %conv32, 19
  %shl39 = and i32 %and38, 3670016
  %M242 = getelementptr inbounds %struct.anon.141, ptr %pv, i32 0, i32 3
  %36 = ptrtoint ptr %M242 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %M242, align 1
  %38 = shl i8 %37, 4
  %shl45 = zext i8 %38 to i32
  %or35 = or i32 %and30, %shl34
  %or40 = or i32 %or35, %shl39
  %or41 = or i32 %or40, %shl45
  %or46 = or i32 %or41, 128
  br label %if.end67

if.end:                                           ; preds = %powerctrl_1_shift.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %5)
  %cmp47 = icmp ugt i8 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 6817031, i32 %reg1)
  %cmp49 = icmp ugt i32 %reg1, 6817031
  %or.cond = and i1 %cmp49, %cmp47
  br i1 %or.cond, label %if.then51, label %if.end.if.end67_crit_edge

if.end.if.end67_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then51:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %add.ptr54 = getelementptr i8, ptr %40, i32 6817152
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 6817032, i32 %reg1)
  %cmp.i243 = icmp eq i32 %reg1, 6817032
  %cond.i = select i1 %cmp.i243, i32 256, i32 268435456
  %or.i = or i32 %41, %cond.i
  %cond4.i = select i1 %cmp.i243, i32 -257, i32 -268435457
  %and.i = and i32 %41, %cond4.i
  %ramdac580.addr.0.i = select i1 %23, i32 %or.i, i32 %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %ramdac580.addr.0.i)
  %cmp59.not = icmp eq i32 %41, %ramdac580.addr.0.i
  %spec.select241 = select i1 %cmp59.not, i32 %8, i32 -1
  %or65 = or i32 %or16, -2147483361
  %spec.select = select i1 %23, i32 %or65, i32 %or18
  br label %if.end67

if.end67:                                         ; preds = %if.then51, %if.end.if.end67_crit_edge, %if.end.thread
  %pll1.0249 = phi i32 [ %or14, %if.end.if.end67_crit_edge ], [ %or14, %if.then51 ], [ %or46, %if.end.thread ]
  %pll2.1 = phi i32 [ %or18, %if.end.if.end67_crit_edge ], [ %spec.select, %if.then51 ], [ 0, %if.end.thread ]
  %oldramdac580.0 = phi i32 [ 0, %if.end.if.end67_crit_edge ], [ %41, %if.then51 ], [ 0, %if.end.thread ]
  %ramdac580.0 = phi i32 [ 0, %if.end.if.end67_crit_edge ], [ %ramdac580.addr.0.i, %if.then51 ], [ 0, %if.end.thread ]
  %oldpll1.1 = phi i32 [ %8, %if.end.if.end67_crit_edge ], [ %spec.select241, %if.then51 ], [ %8, %if.end.thread ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %5)
  %cmp68 = icmp ugt i8 %5, 112
  %and71 = and i32 %pll1.0249, 1073741823
  %cond74 = select i1 %23, i32 1073741824, i32 -1073741824
  %or76 = or i32 %and71, %cond74
  %pll1.1 = select i1 %cmp68, i32 %or76, i32 %pll1.0249
  call void @__sanitizer_cov_trace_cmp4(i32 %oldpll1.1, i32 %pll1.1)
  %cmp78 = icmp eq i32 %oldpll1.1, %pll1.1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond12, i32 %pll2.1)
  %cmp81 = icmp eq i32 %cond12, %pll2.1
  %or.cond242 = select i1 %cmp78, i1 %cmp81, i1 false
  br i1 %or.cond242, label %if.end67.cleanup_crit_edge, label %if.end84

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end84:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp85 = icmp sgt i32 %retval.0.i, -1
  br i1 %cmp85, label %if.then87, label %if.end84.if.end99_crit_edge

if.end84.if.end99_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %add.ptr90 = getelementptr i8, ptr %43, i32 5508
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %shl93 = shl nuw nsw i32 15, %retval.0.i
  %neg = xor i32 %shl93, -1
  %and94 = and i32 %44, %neg
  %shl95 = shl nuw nsw i32 1, %retval.0.i
  %or96 = or i32 %and94, %shl95
  %45 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri, align 4
  %add.ptr98 = getelementptr i8, ptr %46, i32 5508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %or96) #7, !srcloc !30
  br label %if.end99

if.end99:                                         ; preds = %if.then87, %if.end84.if.end99_crit_edge
  %saved_powerctrl_1.0 = phi i32 [ %44, %if.then87 ], [ 0, %if.end84.if.end99_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %5)
  %cmp100 = icmp ugt i8 %5, 63
  br i1 %cmp100, label %if.then102, label %if.end99.if.end127_crit_edge

if.end99.if.end127_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

if.then102:                                       ; preds = %if.end99
  %47 = add i32 %reg1, -6817024
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 30)
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %48, label %if.then102.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %if.then102.sw.bb104_crit_edge
    i32 8, label %if.then102.sw.bb106_crit_edge
    i32 2, label %if.then102.sw.bb108_crit_edge
  ]

if.then102.sw.bb108_crit_edge:                    ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb108

if.then102.sw.bb106_crit_edge:                    ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb106

if.then102.sw.bb104_crit_edge:                    ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb104

if.then102.sw.epilog_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb104

sw.bb104:                                         ; preds = %sw.bb, %if.then102.sw.bb104_crit_edge
  %shift_c040.0 = phi i32 [ 20, %if.then102.sw.bb104_crit_edge ], [ 22, %sw.bb ]
  br label %sw.bb106

sw.bb106:                                         ; preds = %sw.bb104, %if.then102.sw.bb106_crit_edge
  %shift_c040.1 = phi i32 [ 18, %if.then102.sw.bb106_crit_edge ], [ %shift_c040.0, %sw.bb104 ]
  br label %sw.bb108

sw.bb108:                                         ; preds = %sw.bb106, %if.then102.sw.bb108_crit_edge
  %shift_c040.2 = phi i32 [ 16, %if.then102.sw.bb108_crit_edge ], [ %shift_c040.1, %sw.bb106 ]
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb108, %if.then102.sw.epilog_crit_edge
  %shift_c040.3 = phi i32 [ 14, %if.then102.sw.epilog_crit_edge ], [ %shift_c040.2, %sw.bb108 ]
  %50 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri, align 4
  %add.ptr112 = getelementptr i8, ptr %51, i32 49216
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr112) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %shift_c040.3)
  %cmp115.not = icmp eq i32 %shift_c040.3, 14
  br i1 %cmp115.not, label %sw.epilog.if.end127_crit_edge, label %do.body118

sw.epilog.if.end127_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

do.body118:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %shl121 = shl nuw nsw i32 3, %shift_c040.3
  %neg122 = xor i32 %shl121, -1
  %and123 = and i32 %52, %neg122
  %53 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri, align 4
  %add.ptr125 = getelementptr i8, ptr %54, i32 49216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 %and123) #7, !srcloc !30
  br label %if.end127

if.end127:                                        ; preds = %do.body118, %sw.epilog.if.end127_crit_edge, %if.end99.if.end127_crit_edge
  %savedc040.0 = phi i32 [ 0, %if.end99.if.end127_crit_edge ], [ %52, %do.body118 ], [ %52, %sw.epilog.if.end127_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %oldramdac580.0, i32 %ramdac580.0)
  %cmp128.not = icmp eq i32 %oldramdac580.0, %ramdac580.0
  br i1 %cmp128.not, label %if.end127.if.end136_crit_edge, label %do.body131

if.end127.if.end136_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

do.body131:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pri, align 4
  %add.ptr135 = getelementptr i8, ptr %56, i32 6817152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 %ramdac580.0) #7, !srcloc !30
  br label %if.end136

if.end136:                                        ; preds = %do.body131, %if.end127.if.end136_crit_edge
  %57 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %5, label %do.body139 [
    i8 53, label %if.end136.do.body145_crit_edge
    i8 48, label %if.end136.do.body145_crit_edge253
  ]

if.end136.do.body145_crit_edge253:                ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body145

if.end136.do.body145_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body145

do.body139:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pri, align 4
  %add.ptr143 = getelementptr i8, ptr %59, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 %pll2.1) #7, !srcloc !30
  br label %do.body145

do.body145:                                       ; preds = %do.body139, %if.end136.do.body145_crit_edge, %if.end136.do.body145_crit_edge253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pri, align 4
  %add.ptr149 = getelementptr i8, ptr %61, i32 %reg1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr149, i32 %pll1.1) #7, !srcloc !30
  br i1 %cmp85, label %do.body153, label %do.body145.if.end158_crit_edge

do.body145.if.end158_crit_edge:                   ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158

do.body153:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %62 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri, align 4
  %add.ptr157 = getelementptr i8, ptr %63, i32 5508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr157, i32 %saved_powerctrl_1.0) #7, !srcloc !30
  br label %if.end158

if.end158:                                        ; preds = %do.body153, %do.body145.if.end158_crit_edge
  br i1 %cmp100, label %do.body162, label %if.end158.cleanup_crit_edge

if.end158.cleanup_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body162:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %64 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pri, align 4
  %add.ptr166 = getelementptr i8, ptr %65, i32 49216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166, i32 %savedc040.0) #7, !srcloc !30
  br label %cleanup

cleanup:                                          ; preds = %do.body162, %if.end158.cleanup_crit_edge, %if.end67.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @setPLL_double_lowregs(ptr nocapture noundef readonly %init, i32 noundef %NMNMreg, ptr nocapture noundef readonly %pv) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.nvbios_pll, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %sub = add i32 %NMNMreg, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16416, i32 %sub)
  %cmp = icmp eq i32 %sub, 16416
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %sub
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %NM2 = getelementptr inbounds %struct.anon.142, ptr %pv, i32 0, i32 1
  %5 = ptrtoint ptr %NM2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %NM2, align 2
  %conv = zext i16 %6 to i32
  %shl = shl nuw i32 %conv, 16
  %7 = ptrtoint ptr %pv to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pv, align 4
  %conv2 = zext i16 %8 to i32
  %or = or i32 %shl, %conv2
  %cond = select i1 %cmp, i32 1065943039, i32 1073283071
  %and = and i32 %4, %cond
  %log2P = getelementptr inbounds %struct.nvkm_pll_vals, ptr %pv, i32 0, i32 1
  %9 = ptrtoint ptr %log2P to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %log2P, align 4
  %shl5 = shl i32 %10, 16
  %or4 = or i32 %and, %shl5
  %or6 = or i32 %or4, -1073741824
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool8.not = icmp eq i16 %6, 0
  br i1 %tobool8.not, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %NM2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %NM2, align 2
  %M2 = getelementptr inbounds %struct.anon.141, ptr %pv, i32 0, i32 3
  %13 = ptrtoint ptr %M2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %M2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp11 = icmp eq i8 %12, %14
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %15 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %cmp11, %lor.rhs ]
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr16 = getelementptr i8, ptr %17, i32 %NMNMreg
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %or)
  %cmp19 = icmp eq i32 %18, %or
  %and21 = and i32 %4, -1073283072
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %or6)
  %cmp22 = icmp eq i32 %and21, %or6
  %or.cond = select i1 %cmp19, i1 %cmp22, i1 false
  br i1 %or.cond, label %lor.end.cleanup166_crit_edge, label %if.end

lor.end.cleanup166_crit_edge:                     ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup166

if.end:                                           ; preds = %lor.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %sub)
  %cmp24 = icmp eq i32 %sub, 16384
  %spec.select = select i1 %cmp24, i32 -820, i32 -49153
  call void @__sanitizer_cov_trace_const_cmp4(i32 16472, i32 %sub)
  %cmp28 = icmp eq i32 %sub, 16472
  %maskc040.1 = select i1 %cmp28, i32 -201326593, i32 %spec.select
  br i1 %cmp, label %if.then33, label %if.end.if.end61_crit_edge

if.end.if.end61_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then33:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #7
  %19 = call ptr @memset(ptr %info, i32 255, i32 56)
  %bios = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %20 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bios, align 8
  %call34 = call i32 @nvbios_pll_parse(ptr noundef %21, i32 noundef 16416, ptr noundef nonnull %info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %log2P to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %log2P, align 4
  %bias_p = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 5
  %24 = ptrtoint ptr %bias_p to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bias_p, align 2
  %26 = trunc i32 %23 to i8
  %conv40 = add i8 %25, %26
  %max_p = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 4
  %27 = ptrtoint ptr %max_p to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %max_p, align 1
  %29 = call i8 @llvm.umin.i8(i8 %conv40, i8 %28)
  %conv48 = zext i8 %29 to i32
  %shl49 = shl nuw nsw i32 %conv48, 20
  %or50 = or i32 %shl49, %or6
  %or51 = or i32 %or50, 268435456
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr54 = getelementptr i8, ptr %31, i32 17920
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #7, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @arm_heavy_mb() #7
  %or57 = or i32 %32, -2147483648
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  %add.ptr59 = getelementptr i8, ptr %34, i32 17920
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %or57) #7, !srcloc !30
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #7
  br label %if.end61

cleanup:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #7
  br label %cleanup166

if.end61:                                         ; preds = %cleanup.thread, %if.end.if.end61_crit_edge
  %cond66 = phi i32 [ 4096, %cleanup.thread ], [ 256, %if.end.if.end61_crit_edge ]
  %saved4600.1 = phi i32 [ %32, %cleanup.thread ], [ 0, %if.end.if.end61_crit_edge ]
  %Pval.1 = phi i32 [ %or51, %cleanup.thread ], [ %or6, %if.end.if.end61_crit_edge ]
  %or67 = select i1 %15, i32 %cond66, i32 0
  %Pval.2 = or i32 %Pval.1, %or67
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %or72 = or i32 %4, 268435456
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr74 = getelementptr i8, ptr %36, i32 %sub
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %or72) #7, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  call void @arm_heavy_mb() #7
  %and78 = and i32 %Pval.2, -1073741825
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add.ptr80 = getelementptr i8, ptr %38, i32 %sub
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %and78) #7, !srcloc !30
  br i1 %cmp, label %if.then82, label %if.end61.if.end96_crit_edge

if.end61.if.end96_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then82:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %or83 = or i32 %Pval.2, 8388608
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  call void @arm_heavy_mb() #7
  %and87 = and i32 %or83, 1073741823
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %add.ptr89 = getelementptr i8, ptr %40, i32 16416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %and87) #7, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri, align 4
  %add.ptr95 = getelementptr i8, ptr %42, i32 16440
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %and87) #7, !srcloc !30
  br label %if.end96

if.end96:                                         ; preds = %if.then82, %if.end61.if.end96_crit_edge
  %Pval.3 = phi i32 [ %or83, %if.then82 ], [ %Pval.2, %if.end61.if.end96_crit_edge ]
  %43 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri, align 4
  %add.ptr99 = getelementptr i8, ptr %44, i32 49216
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99) #7, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %and105 = and i32 %45, %maskc040.1
  %46 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pri, align 4
  %add.ptr107 = getelementptr i8, ptr %47, i32 49216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 %and105) #7, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri, align 4
  %add.ptr112 = getelementptr i8, ptr %49, i32 %NMNMreg
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112, i32 %or) #7, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 16420, i32 %NMNMreg)
  %cmp113 = icmp eq i32 %NMNMreg, 16420
  br i1 %cmp113, label %do.body116, label %if.end96.do.body122_crit_edge

if.end96.do.body122_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body122

do.body116:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri, align 4
  %add.ptr120 = getelementptr i8, ptr %51, i32 16444
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 %or) #7, !srcloc !30
  br label %do.body122

do.body122:                                       ; preds = %do.body116, %if.end96.do.body122_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pri, align 4
  %add.ptr126 = getelementptr i8, ptr %53, i32 %sub
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %Pval.3) #7, !srcloc !30
  br i1 %cmp, label %if.then128, label %do.body122.do.body146_crit_edge

do.body122.do.body146_crit_edge:                  ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body146

if.then128:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #9
  %and129 = and i32 %Pval.3, -8388609
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @arm_heavy_mb() #7
  %54 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pri, align 4
  %add.ptr134 = getelementptr i8, ptr %55, i32 16416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 %and129) #7, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  call void @arm_heavy_mb() #7
  %56 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pri, align 4
  %add.ptr139 = getelementptr i8, ptr %57, i32 16440
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139, i32 %and129) #7, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pri, align 4
  %add.ptr144 = getelementptr i8, ptr %59, i32 17920
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 %saved4600.1) #7, !srcloc !30
  br label %do.body146

do.body146:                                       ; preds = %if.then128, %do.body122.do.body146_crit_edge
  %Pval.4 = phi i32 [ %and129, %if.then128 ], [ %Pval.3, %do.body122.do.body146_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pri, align 4
  %add.ptr150 = getelementptr i8, ptr %61, i32 49216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150, i32 %45) #7, !srcloc !30
  br i1 %cmp, label %do.body153, label %do.body146.cleanup166_crit_edge

do.body146.cleanup166_crit_edge:                  ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup166

do.body153:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @arm_heavy_mb() #7
  %and156 = and i32 %Pval.4, -268435457
  %62 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri, align 4
  %add.ptr158 = getelementptr i8, ptr %63, i32 16416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 %and156) #7, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  call void @arm_heavy_mb() #7
  %64 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pri, align 4
  %add.ptr164 = getelementptr i8, ptr %65, i32 16440
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164, i32 %and156) #7, !srcloc !30
  br label %cleanup166

cleanup166:                                       ; preds = %do.body153, %do.body146.cleanup166_crit_edge, %cleanup, %lor.end.cleanup166_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_devinit_pll_set(ptr noundef %devinit, i32 noundef %type, i32 noundef %freq) #0 align 64 {
entry:
  %pv = alloca %struct.nvkm_pll_vals, align 4
  %info = alloca %struct.nvbios_pll, align 4
  %N1 = alloca i32, align 4
  %M1 = alloca i32, align 4
  %N2 = alloca i32, align 4
  %M2 = alloca i32, align 4
  %P = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_devinit, ptr %devinit, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %bios2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios2, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pv) #7
  %4 = getelementptr inbounds %struct.anon.142, ptr %pv, i32 0, i32 1
  %5 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %pv, i32 0, i32 1
  %6 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %pv, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #7
  %7 = call ptr @memset(ptr %info, i32 255, i32 56)
  %chip = getelementptr inbounds %struct.nvkm_bios, ptr %3, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %chip, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N1) #7
  %10 = ptrtoint ptr %N1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %N1, align 4, !annotation !67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M1) #7
  %11 = ptrtoint ptr %M1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %M1, align 4, !annotation !67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N2) #7
  %12 = ptrtoint ptr %N2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %N2, align 4, !annotation !67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M2) #7
  %13 = ptrtoint ptr %M2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %M2, align 4, !annotation !67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %P) #7
  %14 = ptrtoint ptr %P to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %P, align 4, !annotation !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 16476, i32 %type)
  %cmp = icmp ugt i32 %type, 16476
  %sub = add i32 %type, -4
  %cond = select i1 %cmp, i32 %type, i32 %sub
  %call = call i32 @nvbios_pll_parse(ptr noundef %3, i32 noundef %cond, ptr noundef nonnull %info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %subdev1 = getelementptr inbounds %struct.nvkm_devinit, ptr %devinit, i32 0, i32 1
  %call4 = call i32 @nv04_pll_calc(ptr noundef %subdev1, ptr noundef nonnull %info, i32 noundef %freq, ptr noundef nonnull %N1, ptr noundef nonnull %M1, ptr noundef nonnull %N2, ptr noundef nonnull %M2, ptr noundef nonnull %P) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %refclk = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 2
  %15 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %refclk, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %6, align 4
  %18 = ptrtoint ptr %N1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %N1, align 4
  %conv9 = trunc i32 %19 to i8
  %20 = ptrtoint ptr %pv to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv9, ptr %pv, align 4
  %21 = ptrtoint ptr %M1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %M1, align 4
  %conv11 = trunc i32 %22 to i8
  %M112 = getelementptr inbounds %struct.anon.141, ptr %pv, i32 0, i32 1
  %23 = ptrtoint ptr %M112 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv11, ptr %M112, align 1
  %24 = ptrtoint ptr %N2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %N2, align 4
  %conv13 = trunc i32 %25 to i8
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv13, ptr %4, align 2
  %27 = ptrtoint ptr %M2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %M2, align 4
  %conv15 = trunc i32 %28 to i8
  %M216 = getelementptr inbounds %struct.anon.141, ptr %pv, i32 0, i32 3
  %29 = ptrtoint ptr %M216 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv15, ptr %M216, align 1
  %30 = ptrtoint ptr %P to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %P, align 4
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %5, align 4
  %33 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %9, label %lor.lhs.false27 [
    i8 48, label %if.end7.if.then30_crit_edge
    i8 49, label %if.end7.if.then30_crit_edge64
    i8 53, label %if.end7.if.then30_crit_edge65
    i8 54, label %if.end7.if.then30_crit_edge66
  ]

if.end7.if.then30_crit_edge66:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

if.end7.if.then30_crit_edge65:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

if.end7.if.then30_crit_edge64:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

if.end7.if.then30_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

lor.lhs.false27:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %9)
  %cmp28 = icmp ugt i8 %9, 63
  br i1 %cmp28, label %lor.lhs.false27.if.then30_crit_edge, label %if.else35

lor.lhs.false27.if.then30_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false27.if.then30_crit_edge, %if.end7.if.then30_crit_edge, %if.end7.if.then30_crit_edge64, %if.end7.if.then30_crit_edge65, %if.end7.if.then30_crit_edge66
  br i1 %cmp, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  call void @setPLL_double_highregs(ptr noundef %devinit, i32 noundef %type, ptr noundef nonnull %pv)
  br label %cleanup

if.else:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  call void @setPLL_double_lowregs(ptr noundef %devinit, i32 noundef %type, ptr noundef nonnull %pv)
  br label %cleanup

if.else35:                                        ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #9
  call void @setPLL_single(ptr noundef %devinit, i32 noundef %type, ptr noundef nonnull %pv)
  br label %cleanup

cleanup:                                          ; preds = %if.else35, %if.else, %if.then33, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then33 ], [ 0, %if.else ], [ 0, %if.else35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %P) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N1) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pv) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_devinit_post(ptr noundef %init, i1 noundef zeroext %execute) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1
  %call = tail call i32 @nvbios_post(ptr noundef %subdev, i1 noundef zeroext %execute) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_post(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv04_devinit_preinit(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  %or = or i32 %4, 1
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %or) #7, !srcloc !30
  %owner = getelementptr inbounds %struct.nv04_devinit, ptr %base, i32 0, i32 1
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %owner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call zeroext i8 @nvkm_rdvgaowner(ptr noundef %1) #7
  %conv = zext i8 %call9 to i32
  %9 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %owner, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @nvkm_wrvgaowner(ptr noundef %1, i8 noundef zeroext 0) #7
  %post = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 2
  %10 = ptrtoint ptr %post to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %post, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then12, label %if.end.if.end50_crit_edge

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then12:                                        ; preds = %if.end
  %call13 = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 6) #7
  %conv14 = zext i8 %call13 to i32
  %call15 = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 7) #7
  %12 = and i8 %call15, 1
  %and17 = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %and17, 8
  %or18 = or i32 %shl, %conv14
  %call19 = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 7) #7
  %13 = and i8 %call19, 32
  %and21 = zext i8 %13 to i32
  %shl22 = shl nuw nsw i32 %and21, 4
  %or23 = or i32 %or18, %shl22
  %call24 = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 37) #7
  %14 = and i8 %call24, 1
  %and26 = zext i8 %14 to i32
  %shl27 = shl nuw nsw i32 %and26, 10
  %or28 = or i32 %or23, %shl27
  %call29 = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 65) #7
  %15 = and i8 %call29, 1
  %and31 = zext i8 %15 to i32
  %shl32 = shl nuw nsw i32 %and31, 11
  %or33 = or i32 %or28, %shl32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or33)
  %tobool34.not = icmp eq i32 %or33, 0
  br i1 %tobool34.not, label %do.body36, label %if.then12.if.end50_crit_edge

if.then12.if.end50_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

do.body36:                                        ; preds = %if.then12
  %debug = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp37 = icmp ugt i32 %17, 3
  br i1 %cmp37, label %do.end42, label %do.body36.if.end44_crit_edge

do.body36.if.end44_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

do.end42:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef %name) #10
  br label %if.end44

if.end44:                                         ; preds = %do.end42, %do.body36.if.end44_crit_edge
  %22 = ptrtoint ptr %post to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %post, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end44, %if.then12.if.end50_crit_edge, %if.end.if.end50_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvkm_rdvgaowner(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_wrvgaowner(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvkm_rdvgac(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nv04_devinit_dtor(ptr noundef readonly returned %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %owner = getelementptr inbounds %struct.nv04_devinit, ptr %base, i32 0, i32 1
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %owner, align 4
  %conv = trunc i32 %3 to i8
  tail call void @nvkm_wrvgaowner(ptr noundef %1, i8 noundef zeroext %conv) #7
  ret ptr %base
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_devinit_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pinit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %pinit to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pinit, align 4
  tail call void @nvkm_devinit_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i) #7
  %owner = getelementptr inbounds %struct.nv04_devinit, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %owner, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_devinit_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_devinit_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pinit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.nv04_devinit_new_.exit_crit_edge, label %if.end.i

entry.nv04_devinit_new_.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv04_devinit_new_.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %pinit to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %pinit, align 4
  tail call void @nvkm_devinit_ctor(ptr noundef nonnull @nv04_devinit, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i.i) #7
  %owner.i = getelementptr inbounds %struct.nv04_devinit, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %owner.i, align 4
  br label %nv04_devinit_new_.exit

nv04_devinit_new_.exit:                           ; preds = %if.end.i, %entry.nv04_devinit_new_.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %entry.nv04_devinit_new_.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_devinit_meminit(ptr noundef %init) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %resource_addr.i = getelementptr inbounds %struct.nvkm_device_func, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %resource_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource_addr.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, i32 noundef 1) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %resource_size.i = getelementptr inbounds %struct.nvkm_device_func, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %resource_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resource_size.i, align 4
  %call2.i = tail call i32 %9(ptr noundef %1, i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 16) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.do.body_crit_edge, label %if.end.i.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.i.i:                                       ; preds = %entry
  %call.i.i.i = tail call ptr @ioremap_wc(i32 noundef %call.i, i32 noundef %call2.i) #7
  %iomem.i.i.i = getelementptr inbounds %struct.io_mapping, ptr %call7.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i.i, ptr %iomem.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then3.i.i, label %if.end8

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %do.body

do.body:                                          ; preds = %if.then3.i.i, %entry.do.body_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.5, ptr noundef %name) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end.i.i
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.i, ptr %call7.i.i.i, align 8
  %size3.i.i.i = getelementptr inbounds %struct.io_mapping, ptr %call7.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %size3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call2.i, ptr %size3.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %20 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = and i32 %20, -573
  %or4.i.i.i = or i32 %or.i.i.i, 516
  %prot.i.i.i = getelementptr inbounds %struct.io_mapping, ptr %call7.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %prot.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or4.i.i.i, ptr %prot.i.i.i, align 8
  %call9 = tail call zeroext i8 @nvkm_rdvgas(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 1) #7
  %22 = or i8 %call9, 32
  tail call void @nvkm_wrvgas(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext %22) #7
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 1048704
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %or15 = or i32 %25, 16
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr17 = getelementptr i8, ptr %27, i32 1048704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %or15) #7, !srcloc !30
  %28 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri, align 4
  %add.ptr24 = getelementptr i8, ptr %29, i32 1048576
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add.ptr33 = getelementptr i8, ptr %32, i32 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 15) #7, !srcloc !30
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8
  %i.0433 = phi i32 [ 0, %if.end8 ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.0433, 2
  %and.i = and i32 %mul, -4096
  %33 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !75
  %37 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i1.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 213
  %41 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !76
  %43 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %44, i32 %and.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -272716322) #7, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !79
  %45 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i1.i4.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i1.i4.i to ptr
  %task.i.i.i5.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task.i.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i.i.i5.i, align 8
  %pagefault_disabled.i.i.i6.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 213
  %49 = ptrtoint ptr %pagefault_disabled.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pagefault_disabled.i.i.i6.i, align 8
  %dec.i.i.i.i = add i32 %50, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i6.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !80
  %51 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i.i7.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i7.i to ptr
  %preempt_count.i.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i8.i, align 4
  %sub.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i8.i, align 4
  %inc = add nuw nsw i32 %i.0433, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %55 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i.i.i306 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i306 to ptr
  %preempt_count.i.i.i.i307 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i307 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i307, align 4
  %add.i.i.i308 = add i32 %58, 1
  store volatile i32 %add.i.i.i308, ptr %preempt_count.i.i.i.i307, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !75
  %59 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i1.i.i309 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i1.i.i309 to ptr
  %task.i.i.i.i310 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task.i.i.i.i310 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task.i.i.i.i310, align 8
  %pagefault_disabled.i.i.i.i311 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 213
  %63 = ptrtoint ptr %pagefault_disabled.i.i.i.i311 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pagefault_disabled.i.i.i.i311, align 8
  %inc.i.i.i.i312 = add i32 %64, 1
  store i32 %inc.i.i.i.i312, ptr %pagefault_disabled.i.i.i.i311, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !76
  %65 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i.i314 = getelementptr i8, ptr %66, i32 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i314, i32 -255939106) #7, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !79
  %67 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i1.i4.i315 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i1.i4.i315 to ptr
  %task.i.i.i5.i316 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task.i.i.i5.i316 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task.i.i.i5.i316, align 8
  %pagefault_disabled.i.i.i6.i317 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 213
  %71 = ptrtoint ptr %pagefault_disabled.i.i.i6.i317 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pagefault_disabled.i.i.i6.i317, align 8
  %dec.i.i.i.i318 = add i32 %72, -1
  store i32 %dec.i.i.i.i318, ptr %pagefault_disabled.i.i.i6.i317, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !80
  %73 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i.i7.i319 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i7.i319 to ptr
  %preempt_count.i.i.i8.i320 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i.i8.i320 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i.i8.i320, align 4
  %sub.i.i.i321 = add i32 %76, -1
  store volatile i32 %sub.i.i.i321, ptr %preempt_count.i.i.i8.i320, align 4
  %77 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i.i.i322 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i322 to ptr
  %preempt_count.i.i.i.i323 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i323 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i323, align 4
  %add.i.i.i324 = add i32 %80, 1
  store volatile i32 %add.i.i.i324, ptr %preempt_count.i.i.i.i323, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !75
  %81 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i1.i.i325 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i1.i.i325 to ptr
  %task.i.i.i.i326 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task.i.i.i.i326 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task.i.i.i.i326, align 8
  %pagefault_disabled.i.i.i.i327 = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 213
  %85 = ptrtoint ptr %pagefault_disabled.i.i.i.i327 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pagefault_disabled.i.i.i.i327, align 8
  %inc.i.i.i.i328 = add i32 %86, 1
  store i32 %inc.i.i.i.i328, ptr %pagefault_disabled.i.i.i.i327, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !76
  %87 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %iomem.i.i.i, align 4
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !79
  %90 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i1.i5.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i1.i5.i to ptr
  %task.i.i.i6.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task.i.i.i6.i, align 8
  %pagefault_disabled.i.i.i7.i = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 213
  %94 = ptrtoint ptr %pagefault_disabled.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pagefault_disabled.i.i.i7.i, align 8
  %dec.i.i.i.i330 = add i32 %95, -1
  store i32 %dec.i.i.i.i330, ptr %pagefault_disabled.i.i.i7.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !80
  %96 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i.i8.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i.i8.i to ptr
  %preempt_count.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %preempt_count.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %preempt_count.i.i.i9.i, align 4
  %sub.i.i.i331 = add i32 %99, -1
  store volatile i32 %sub.i.i.i331, ptr %preempt_count.i.i.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255939106, i32 %89)
  %cmp39 = icmp eq i32 %89, -255939106
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %for.end
  %100 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pri, align 4
  %add.ptr47 = getelementptr i8, ptr %101, i32 1048576
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %and53 = and i32 %102, -57
  %or54 = or i32 %and53, 24
  %103 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pri, align 4
  %add.ptr56 = getelementptr i8, ptr %104, i32 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %or54) #7, !srcloc !30
  %105 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pri, align 4
  %add.ptr63 = getelementptr i8, ptr %106, i32 1048704
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %and69 = and i32 %107, -17
  %108 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pri, align 4
  %add.ptr72 = getelementptr i8, ptr %109, i32 1048704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %and69) #7, !srcloc !30
  br label %for.body77

for.body77:                                       ; preds = %for.body77.for.body77_crit_edge, %if.then41
  %i.1434 = phi i32 [ 0, %if.then41 ], [ %inc80, %for.body77.for.body77_crit_edge ]
  %mul78 = shl i32 %i.1434, 2
  %and.i332 = and i32 %mul78, -4096
  %110 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i.i.i333 = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i.i.i.i333 to ptr
  %preempt_count.i.i.i.i334 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %preempt_count.i.i.i.i334 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %preempt_count.i.i.i.i334, align 4
  %add.i.i.i335 = add i32 %113, 1
  store volatile i32 %add.i.i.i335, ptr %preempt_count.i.i.i.i334, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !75
  %114 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i1.i.i336 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i1.i.i336 to ptr
  %task.i.i.i.i337 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %task.i.i.i.i337 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %task.i.i.i.i337, align 8
  %pagefault_disabled.i.i.i.i338 = getelementptr inbounds %struct.task_struct, ptr %117, i32 0, i32 213
  %118 = ptrtoint ptr %pagefault_disabled.i.i.i.i338 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pagefault_disabled.i.i.i.i338, align 8
  %inc.i.i.i.i339 = add i32 %119, 1
  store i32 %inc.i.i.i.i339, ptr %pagefault_disabled.i.i.i.i338, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !76
  %120 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i.i341 = getelementptr i8, ptr %121, i32 %and.i332
  %add.ptr.i343 = getelementptr i8, ptr %add.ptr.i.i.i341, i32 %mul78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i343, i32 -272716322) #7, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !79
  %122 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i1.i4.i344 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i1.i4.i344 to ptr
  %task.i.i.i5.i345 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %task.i.i.i5.i345 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %task.i.i.i5.i345, align 8
  %pagefault_disabled.i.i.i6.i346 = getelementptr inbounds %struct.task_struct, ptr %125, i32 0, i32 213
  %126 = ptrtoint ptr %pagefault_disabled.i.i.i6.i346 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pagefault_disabled.i.i.i6.i346, align 8
  %dec.i.i.i.i347 = add i32 %127, -1
  store i32 %dec.i.i.i.i347, ptr %pagefault_disabled.i.i.i6.i346, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !80
  %128 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i.i7.i348 = and i32 %128, -16384
  %129 = inttoptr i32 %and.i.i.i.i7.i348 to ptr
  %preempt_count.i.i.i8.i349 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %preempt_count.i.i.i8.i349 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %preempt_count.i.i.i8.i349, align 4
  %sub.i.i.i350 = add i32 %131, -1
  store volatile i32 %sub.i.i.i350, ptr %preempt_count.i.i.i8.i349, align 4
  %inc80 = add nuw nsw i32 %i.1434, 1
  %exitcond435.not = icmp eq i32 %inc80, 4
  br i1 %exitcond435.not, label %for.end81, label %for.body77.for.body77_crit_edge

for.body77.for.body77_crit_edge:                  ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body77

for.end81:                                        ; preds = %for.body77
  %132 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i.i.i351 = and i32 %132, -16384
  %133 = inttoptr i32 %and.i.i.i.i.i351 to ptr
  %preempt_count.i.i.i.i352 = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %preempt_count.i.i.i.i352 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %preempt_count.i.i.i.i352, align 4
  %add.i.i.i353 = add i32 %135, 1
  store volatile i32 %add.i.i.i353, ptr %preempt_count.i.i.i.i352, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !75
  %136 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i1.i.i354 = and i32 %136, -16384
  %137 = inttoptr i32 %and.i.i.i1.i.i354 to ptr
  %task.i.i.i.i355 = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %task.i.i.i.i355 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %task.i.i.i.i355, align 8
  %pagefault_disabled.i.i.i.i356 = getelementptr inbounds %struct.task_struct, ptr %139, i32 0, i32 213
  %140 = ptrtoint ptr %pagefault_disabled.i.i.i.i356 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %pagefault_disabled.i.i.i.i356, align 8
  %inc.i.i.i.i357 = add i32 %141, 1
  store i32 %inc.i.i.i.i357, ptr %pagefault_disabled.i.i.i.i356, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !76
  %142 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i359 = getelementptr i8, ptr %143, i32 12
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i359) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !79
  %145 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i1.i5.i360 = and i32 %145, -16384
  %146 = inttoptr i32 %and.i.i.i1.i5.i360 to ptr
  %task.i.i.i6.i361 = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %task.i.i.i6.i361 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %task.i.i.i6.i361, align 8
  %pagefault_disabled.i.i.i7.i362 = getelementptr inbounds %struct.task_struct, ptr %148, i32 0, i32 213
  %149 = ptrtoint ptr %pagefault_disabled.i.i.i7.i362 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %pagefault_disabled.i.i.i7.i362, align 8
  %dec.i.i.i.i363 = add i32 %150, -1
  store i32 %dec.i.i.i.i363, ptr %pagefault_disabled.i.i.i7.i362, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !80
  %151 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i.i8.i364 = and i32 %151, -16384
  %152 = inttoptr i32 %and.i.i.i.i8.i364 to ptr
  %preempt_count.i.i.i9.i365 = getelementptr inbounds %struct.thread_info, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %preempt_count.i.i.i9.i365 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %preempt_count.i.i.i9.i365, align 4
  %sub.i.i.i366 = add i32 %154, -1
  store volatile i32 %sub.i.i.i366, ptr %preempt_count.i.i.i9.i365, align 4
  %155 = and i32 %144, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272760832, i32 %155)
  %cmp85.not = icmp eq i32 %155, -272760832
  br i1 %cmp85.not, label %for.end81.if.end206_crit_edge, label %if.then87

for.end81.if.end206_crit_edge:                    ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206

if.then87:                                        ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #9
  %156 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pri, align 4
  %add.ptr93 = getelementptr i8, ptr %157, i32 1048576
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %and99 = and i32 %158, -8
  %or100 = or i32 %and99, 2
  %159 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pri, align 4
  %add.ptr102 = getelementptr i8, ptr %160, i32 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 %or100) #7, !srcloc !30
  br label %if.end206

if.else:                                          ; preds = %for.end
  %161 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i.i.i367 = and i32 %161, -16384
  %162 = inttoptr i32 %and.i.i.i.i.i367 to ptr
  %preempt_count.i.i.i.i368 = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %preempt_count.i.i.i.i368 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %preempt_count.i.i.i.i368, align 4
  %add.i.i.i369 = add i32 %164, 1
  store volatile i32 %add.i.i.i369, ptr %preempt_count.i.i.i.i368, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !75
  %165 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i1.i.i370 = and i32 %165, -16384
  %166 = inttoptr i32 %and.i.i.i1.i.i370 to ptr
  %task.i.i.i.i371 = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %task.i.i.i.i371 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %task.i.i.i.i371, align 8
  %pagefault_disabled.i.i.i.i372 = getelementptr inbounds %struct.task_struct, ptr %168, i32 0, i32 213
  %169 = ptrtoint ptr %pagefault_disabled.i.i.i.i372 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %pagefault_disabled.i.i.i.i372, align 8
  %inc.i.i.i.i373 = add i32 %170, 1
  store i32 %inc.i.i.i.i373, ptr %pagefault_disabled.i.i.i.i372, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !76
  %171 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i375 = getelementptr i8, ptr %172, i32 12
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i375) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !79
  %174 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i1.i5.i376 = and i32 %174, -16384
  %175 = inttoptr i32 %and.i.i.i1.i5.i376 to ptr
  %task.i.i.i6.i377 = getelementptr inbounds %struct.thread_info, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %task.i.i.i6.i377 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %task.i.i.i6.i377, align 8
  %pagefault_disabled.i.i.i7.i378 = getelementptr inbounds %struct.task_struct, ptr %177, i32 0, i32 213
  %178 = ptrtoint ptr %pagefault_disabled.i.i.i7.i378 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %pagefault_disabled.i.i.i7.i378, align 8
  %dec.i.i.i.i379 = add i32 %179, -1
  store i32 %dec.i.i.i.i379, ptr %pagefault_disabled.i.i.i7.i378, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !80
  %180 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i.i8.i380 = and i32 %180, -16384
  %181 = inttoptr i32 %and.i.i.i.i8.i380 to ptr
  %preempt_count.i.i.i9.i381 = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %preempt_count.i.i.i9.i381 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %preempt_count.i.i.i9.i381, align 4
  %sub.i.i.i382 = add i32 %183, -1
  store volatile i32 %sub.i.i.i382, ptr %preempt_count.i.i.i9.i381, align 4
  %184 = and i32 %173, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 44510, i32 %184)
  %cmp108.not = icmp eq i32 %184, 44510
  br i1 %cmp108.not, label %if.else127, label %if.then110

if.then110:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %185 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %pri, align 4
  %add.ptr116 = getelementptr i8, ptr %186, i32 1048576
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr116) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %and122 = and i32 %187, -8
  %or123 = or i32 %and122, 1
  %188 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pri, align 4
  %add.ptr125 = getelementptr i8, ptr %189, i32 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 %or123) #7, !srcloc !30
  br label %if.end206

if.else127:                                       ; preds = %if.else
  %190 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i.i.i383 = and i32 %190, -16384
  %191 = inttoptr i32 %and.i.i.i.i.i383 to ptr
  %preempt_count.i.i.i.i384 = getelementptr inbounds %struct.thread_info, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %preempt_count.i.i.i.i384 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %preempt_count.i.i.i.i384, align 4
  %add.i.i.i385 = add i32 %193, 1
  store volatile i32 %add.i.i.i385, ptr %preempt_count.i.i.i.i384, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !75
  %194 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i1.i.i386 = and i32 %194, -16384
  %195 = inttoptr i32 %and.i.i.i1.i.i386 to ptr
  %task.i.i.i.i387 = getelementptr inbounds %struct.thread_info, ptr %195, i32 0, i32 2
  %196 = ptrtoint ptr %task.i.i.i.i387 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %task.i.i.i.i387, align 8
  %pagefault_disabled.i.i.i.i388 = getelementptr inbounds %struct.task_struct, ptr %197, i32 0, i32 213
  %198 = ptrtoint ptr %pagefault_disabled.i.i.i.i388 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %pagefault_disabled.i.i.i.i388, align 8
  %inc.i.i.i.i389 = add i32 %199, 1
  store i32 %inc.i.i.i.i389, ptr %pagefault_disabled.i.i.i.i388, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !76
  %200 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %iomem.i.i.i, align 4
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !79
  %203 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i1.i5.i391 = and i32 %203, -16384
  %204 = inttoptr i32 %and.i.i.i1.i5.i391 to ptr
  %task.i.i.i6.i392 = getelementptr inbounds %struct.thread_info, ptr %204, i32 0, i32 2
  %205 = ptrtoint ptr %task.i.i.i6.i392 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %task.i.i.i6.i392, align 8
  %pagefault_disabled.i.i.i7.i393 = getelementptr inbounds %struct.task_struct, ptr %206, i32 0, i32 213
  %207 = ptrtoint ptr %pagefault_disabled.i.i.i7.i393 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %pagefault_disabled.i.i.i7.i393, align 8
  %dec.i.i.i.i394 = add i32 %208, -1
  store i32 %dec.i.i.i.i394, ptr %pagefault_disabled.i.i.i7.i393, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !80
  %209 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i.i8.i395 = and i32 %209, -16384
  %210 = inttoptr i32 %and.i.i.i.i8.i395 to ptr
  %preempt_count.i.i.i9.i396 = getelementptr inbounds %struct.thread_info, ptr %210, i32 0, i32 1
  %211 = ptrtoint ptr %preempt_count.i.i.i9.i396 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile i32, ptr %preempt_count.i.i.i9.i396, align 4
  %sub.i.i.i397 = add i32 %212, -1
  store volatile i32 %sub.i.i.i397, ptr %preempt_count.i.i.i9.i396, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %202)
  %cmp129.not = icmp eq i32 %202, -272716322
  %213 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i.i.i.i398 = and i32 %213, -16384
  %214 = inttoptr i32 %and.i.i.i.i.i.i398 to ptr
  %preempt_count.i.i.i.i.i399 = getelementptr inbounds %struct.thread_info, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %preempt_count.i.i.i.i.i399 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile i32, ptr %preempt_count.i.i.i.i.i399, align 4
  %add.i.i.i.i400 = add i32 %216, 1
  store volatile i32 %add.i.i.i.i400, ptr %preempt_count.i.i.i.i.i399, align 4
  tail call void asm sideeffect "", "~{memory}"() #7
  %217 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i1.i.i.i401 = and i32 %217, -16384
  %218 = inttoptr i32 %and.i.i.i1.i.i.i401 to ptr
  %task.i.i.i.i.i402 = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 2
  %219 = ptrtoint ptr %task.i.i.i.i.i402 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %task.i.i.i.i.i402, align 8
  %pagefault_disabled.i.i.i.i.i403 = getelementptr inbounds %struct.task_struct, ptr %220, i32 0, i32 213
  %221 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i403 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %pagefault_disabled.i.i.i.i.i403, align 8
  %inc.i.i.i.i.i404 = add i32 %222, 1
  store i32 %inc.i.i.i.i.i404, ptr %pagefault_disabled.i.i.i.i.i403, align 8
  tail call void asm sideeffect "", "~{memory}"() #7
  %223 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i.i.i406 = getelementptr i8, ptr %224, i32 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i406, i32 -272716322) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "", "~{memory}"() #7
  %225 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i1.i4.i.i407 = and i32 %225, -16384
  %226 = inttoptr i32 %and.i.i.i1.i4.i.i407 to ptr
  %task.i.i.i5.i.i408 = getelementptr inbounds %struct.thread_info, ptr %226, i32 0, i32 2
  %227 = ptrtoint ptr %task.i.i.i5.i.i408 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %task.i.i.i5.i.i408, align 8
  %pagefault_disabled.i.i.i6.i.i409 = getelementptr inbounds %struct.task_struct, ptr %228, i32 0, i32 213
  %229 = ptrtoint ptr %pagefault_disabled.i.i.i6.i.i409 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %pagefault_disabled.i.i.i6.i.i409, align 8
  %dec.i.i.i.i.i410 = add i32 %230, -1
  store i32 %dec.i.i.i.i.i410, ptr %pagefault_disabled.i.i.i6.i.i409, align 8
  tail call void asm sideeffect "", "~{memory}"() #7
  %231 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i.i7.i.i411 = and i32 %231, -16384
  %232 = inttoptr i32 %and.i.i.i.i7.i.i411 to ptr
  %preempt_count.i.i.i8.i.i412 = getelementptr inbounds %struct.thread_info, ptr %232, i32 0, i32 1
  %233 = ptrtoint ptr %preempt_count.i.i.i8.i.i412 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load volatile i32, ptr %preempt_count.i.i.i8.i.i412, align 4
  %sub.i.i.i.i413 = add i32 %234, -1
  store volatile i32 %sub.i.i.i.i413, ptr %preempt_count.i.i.i8.i.i412, align 4
  %235 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i.i.i1.i414 = and i32 %235, -16384
  %236 = inttoptr i32 %and.i.i.i.i.i1.i414 to ptr
  %preempt_count.i.i.i.i2.i415 = getelementptr inbounds %struct.thread_info, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %preempt_count.i.i.i.i2.i415 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load volatile i32, ptr %preempt_count.i.i.i.i2.i415, align 4
  %add.i.i.i3.i416 = add i32 %238, 1
  store volatile i32 %add.i.i.i3.i416, ptr %preempt_count.i.i.i.i2.i415, align 4
  tail call void asm sideeffect "", "~{memory}"() #7
  %239 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i1.i.i4.i417 = and i32 %239, -16384
  %240 = inttoptr i32 %and.i.i.i1.i.i4.i417 to ptr
  %task.i.i.i.i5.i418 = getelementptr inbounds %struct.thread_info, ptr %240, i32 0, i32 2
  %241 = ptrtoint ptr %task.i.i.i.i5.i418 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %task.i.i.i.i5.i418, align 8
  %pagefault_disabled.i.i.i.i6.i419 = getelementptr inbounds %struct.task_struct, ptr %242, i32 0, i32 213
  %243 = ptrtoint ptr %pagefault_disabled.i.i.i.i6.i419 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %pagefault_disabled.i.i.i.i6.i419, align 8
  %inc.i.i.i.i7.i420 = add i32 %244, 1
  store i32 %inc.i.i.i.i7.i420, ptr %pagefault_disabled.i.i.i.i6.i419, align 8
  tail call void asm sideeffect "", "~{memory}"() #7
  %245 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i.i9.i421 = getelementptr i8, ptr %246, i32 8388608
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i9.i421) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void asm sideeffect "", "~{memory}"() #7
  %248 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i1.i5.i.i422 = and i32 %248, -16384
  %249 = inttoptr i32 %and.i.i.i1.i5.i.i422 to ptr
  %task.i.i.i6.i.i423 = getelementptr inbounds %struct.thread_info, ptr %249, i32 0, i32 2
  %250 = ptrtoint ptr %task.i.i.i6.i.i423 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %task.i.i.i6.i.i423, align 8
  %pagefault_disabled.i.i.i7.i.i424 = getelementptr inbounds %struct.task_struct, ptr %251, i32 0, i32 213
  %252 = ptrtoint ptr %pagefault_disabled.i.i.i7.i.i424 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %pagefault_disabled.i.i.i7.i.i424, align 8
  %dec.i.i.i.i10.i425 = add i32 %253, -1
  store i32 %dec.i.i.i.i10.i425, ptr %pagefault_disabled.i.i.i7.i.i424, align 8
  tail call void asm sideeffect "", "~{memory}"() #7
  %254 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i.i.i.i8.i.i426 = and i32 %254, -16384
  %255 = inttoptr i32 %and.i.i.i.i8.i.i426 to ptr
  %preempt_count.i.i.i9.i.i427 = getelementptr inbounds %struct.thread_info, ptr %255, i32 0, i32 1
  %256 = ptrtoint ptr %preempt_count.i.i.i9.i.i427 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load volatile i32, ptr %preempt_count.i.i.i9.i.i427, align 4
  %sub.i.i.i11.i428 = add i32 %257, -1
  store volatile i32 %sub.i.i.i11.i428, ptr %preempt_count.i.i.i9.i.i427, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %247)
  %cmp.i429 = icmp eq i32 %247, -272716322
  br i1 %cmp129.not, label %if.else184, label %if.then131

if.then131:                                       ; preds = %if.else127
  %258 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %pri, align 4
  %add.ptr139 = getelementptr i8, ptr %259, i32 1048576
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %and145 = and i32 %260, -4
  br i1 %cmp.i429, label %if.then133, label %if.else150

if.then133:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #9
  %or146 = or i32 %and145, 2
  %261 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %pri, align 4
  %add.ptr148 = getelementptr i8, ptr %262, i32 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %or146) #7, !srcloc !30
  br label %if.end167

if.else150:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #9
  %or163 = or i32 %and145, 1
  %263 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %pri, align 4
  %add.ptr165 = getelementptr i8, ptr %264, i32 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr165, i32 %or163) #7, !srcloc !30
  br label %if.end167

if.end167:                                        ; preds = %if.else150, %if.then133
  %265 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %pri, align 4
  %add.ptr173 = getelementptr i8, ptr %266, i32 1048576
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr173) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %and179 = and i32 %267, -41
  %268 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %pri, align 4
  %add.ptr182 = getelementptr i8, ptr %269, i32 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr182, i32 %and179) #7, !srcloc !30
  br label %if.end206

if.else184:                                       ; preds = %if.else127
  br i1 %cmp.i429, label %if.else184.if.end206_crit_edge, label %if.then186

if.else184.if.end206_crit_edge:                   ; preds = %if.else184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206

if.then186:                                       ; preds = %if.else184
  call void @__sanitizer_cov_trace_pc() #9
  %270 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %pri, align 4
  %add.ptr192 = getelementptr i8, ptr %271, i32 1048576
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr192) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %and198 = and i32 %272, -4
  %or199 = or i32 %and198, 2
  %273 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %pri, align 4
  %add.ptr201 = getelementptr i8, ptr %274, i32 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr201, i32 %or199) #7, !srcloc !30
  br label %if.end206

if.end206:                                        ; preds = %if.then186, %if.else184.if.end206_crit_edge, %if.end167, %if.then110, %if.then87, %for.end81.if.end206_crit_edge
  %275 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %pri, align 4
  %add.ptr212 = getelementptr i8, ptr %276, i32 1048704
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr212) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @arm_heavy_mb() #7
  %and218 = and i32 %277, -17
  %278 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %pri, align 4
  %add.ptr221 = getelementptr i8, ptr %279, i32 1048704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr221, i32 %and218) #7, !srcloc !30
  %call223 = tail call zeroext i8 @nvkm_rdvgas(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 1) #7
  %280 = and i8 %call223, -33
  tail call void @nvkm_wrvgas(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext %280) #7
  %281 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %iomem.i.i.i, align 4
  tail call void @iounmap(ptr noundef %282) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end206, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_wrvgas(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvkm_rdvgas(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15}
!llvm.named.register.sp = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv04.c", i32 421, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nv04_devinit_preinit._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nv04_devinit_preinit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @nv04_devinit, !9, !"nv04_devinit", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv04.c", i32 452, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv04.c", i32 47, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @nv04_devinit_meminit._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @nv04_devinit_meminit._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{!"sp"}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 5397031}
!27 = !{i64 2156259354}
!28 = !{i64 2156259739}
!29 = !{i64 2156260215}
!30 = !{i64 5396613}
!31 = !{i64 2156260735}
!32 = !{i64 2156261205}
!33 = !{i64 2156261667}
!34 = !{i64 2156261985}
!35 = !{i64 2156262405}
!36 = !{i64 2156262856}
!37 = !{i64 2156263229}
!38 = !{i64 2156263614}
!39 = !{i64 2156263999}
!40 = !{i64 2156264475}
!41 = !{i64 2156265091}
!42 = !{i64 2156265469}
!43 = !{i64 2156265900}
!44 = !{i64 2156266292}
!45 = !{i64 2156266679}
!46 = !{i64 2156267100}
!47 = !{i64 2156267514}
!48 = !{i64 2156267957}
!49 = !{i64 2156268339}
!50 = !{i64 2156268718}
!51 = !{i64 2156269074}
!52 = !{i64 2156269502}
!53 = !{i64 2156269928}
!54 = !{i64 2156270362}
!55 = !{i64 2156270798}
!56 = !{i64 2156271257}
!57 = !{i64 2156271615}
!58 = !{i64 2156272024}
!59 = !{i64 2156272415}
!60 = !{i64 2156272802}
!61 = !{i64 2156273193}
!62 = !{i64 2156273584}
!63 = !{i64 2156273985}
!64 = !{i64 2156274391}
!65 = !{i64 2156274813}
!66 = !{i64 2156275243}
!67 = !{!"auto-init"}
!68 = !{i64 2156277359}
!69 = !{i64 2156277761}
!70 = !{i8 0, i8 2}
!71 = !{i64 2156245192}
!72 = !{i64 2156245576}
!73 = !{i64 2156246504}
!74 = !{i64 2156246942}
!75 = !{i64 2155930992}
!76 = !{i64 2153903588}
!77 = !{i64 2152938735}
!78 = !{i64 2156237068}
!79 = !{i64 2153903795}
!80 = !{i64 2155931318}
!81 = !{i64 2152937380}
!82 = !{i64 2156247868}
!83 = !{i64 2156248270}
!84 = !{i64 2156249158}
!85 = !{i64 2156249542}
!86 = !{i64 2156250465}
!87 = !{i64 2156250893}
!88 = !{i64 2156251838}
!89 = !{i64 2156252266}
!90 = !{i64 2156255807}
!91 = !{i64 2156256209}
!92 = !{i64 2156257117}
!93 = !{i64 2156257519}
!94 = !{i64 2156258407}
!95 = !{i64 2156258791}
