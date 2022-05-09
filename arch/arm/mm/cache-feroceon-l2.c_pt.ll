; ModuleID = '/llk/IR_all_yes/arch/arm/mm/cache-feroceon-l2.c_pt.bc'
source_filename = "../arch/arm/mm/cache-feroceon-l2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@l2_wt_override = internal global { i32, [28 x i8] } zeroinitializer, align 32
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@feroceon_l2_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016Feroceon L2: Cache support initialised%s.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"feroceon_l2_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arch/arm/mm/cache-feroceon-l2.c\00", [32 x i8] zeroinitializer }, align 32
@feroceon_l2_init._entry_ptr = internal global ptr @feroceon_l2_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c", in WT override mode\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@feroceon_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,kirkwood-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,feroceon-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"marvell,kirkwood-cache\00", [41 x i8] zeroinitializer }, align 32
@disable_l2_prefetch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016Feroceon L2: Disabling L2 prefetch.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"disable_l2_prefetch\00", [44 x i8] zeroinitializer }, align 32
@disable_l2_prefetch._entry_ptr = internal global ptr @disable_l2_prefetch._entry, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@enable_l2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016Feroceon L2: Enabling L2\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"enable_l2\00", [22 x i8] zeroinitializer }, align 32
@enable_l2._entry_ptr = internal global ptr @enable_l2._entry, section ".printk_index", align 4
@enable_l2._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013[Firmware Bug]: Feroceon L2: bootloader left the L2 cache on!\0A\00", [63 x i8] zeroinitializer }, align 32
@enable_l2._entry_ptr.12 = internal global ptr @enable_l2._entry.10, section ".printk_index", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"l2_wt_override\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 140, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 356, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 377, i32 44 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 316, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 329, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [35 x i8] c"../arch/arm/mm/cache-feroceon-l2.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 340, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @disable_l2_prefetch._entry, ptr @disable_l2_prefetch._entry_ptr, ptr @enable_l2._entry, ptr @enable_l2._entry.10, ptr @enable_l2._entry_ptr, ptr @enable_l2._entry_ptr.12, ptr @feroceon_l2_init._entry, ptr @feroceon_l2_init._entry_ptr, ptr @l2_wt_override, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_wt_override to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @feroceon_l2_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_l2_prefetch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_l2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_l2._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @feroceon_l2_init(i32 noundef %__l2_wt_override) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %__l2_wt_override, ptr @l2_wt_override, align 4
  %0 = tail call i32 asm "mrc p15, 1, $0, c15, c1, 0", "=r"() #9, !srcloc !38
  %and.i = and i32 %0, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.disable_l2_prefetch.exit_crit_edge

entry.disable_l2_prefetch.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_l2_prefetch.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  %or.i = or i32 %0, 16777216
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c1, 0", "r"(i32 %or.i) #6, !srcloc !39
  br label %disable_l2_prefetch.exit

disable_l2_prefetch.exit:                         ; preds = %do.end.i, %entry.disable_l2_prefetch.exit_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @outer_cache to i32))
  store ptr @feroceon_l2_inv_range, ptr @outer_cache, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  store ptr @feroceon_l2_clean_range, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  store ptr @feroceon_l2_flush_range, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  tail call fastcc void @enable_l2() #11
  %1 = load i32, ptr @l2_wt_override, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool.not, ptr @.str.4, ptr @.str.3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %cond) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @feroceon_l2_inv_range(i32 noundef %start, i32 noundef %end) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %start, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and1 = and i32 %start, -32
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c10, 3", "r"(i32 %and1) #6, !srcloc !40
  %or = or i32 %start, 31
  %add = add i32 %or, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %start.addr.0 = phi i32 [ %add, %if.then ], [ %start, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.0, i32 %end)
  %cmp = icmp uge i32 %start.addr.0, %end
  %and2 = and i32 %end, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = or i1 %tobool3.not, %cmp
  br i1 %or.cond, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and5 = and i32 %end, -32
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c10, 3", "r"(i32 %and5) #6, !srcloc !40
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %end.addr.0 = phi i32 [ %and5, %if.then4 ], [ %end, %if.end.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.0, i32 %end.addr.0)
  %cmp824 = icmp ult i32 %start.addr.0, %end.addr.0
  br i1 %cmp824, label %while.body.lr.ph, label %if.end7.while.end_crit_edge

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end7
  %and10.i = and i32 %end.addr.0, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br label %while.body

while.body:                                       ; preds = %l2_inv_pa_range.exit.while.body_crit_edge, %while.body.lr.ph
  %start.addr.125 = phi i32 [ %start.addr.0, %while.body.lr.ph ], [ %1, %l2_inv_pa_range.exit.while.body_crit_edge ]
  %and.i = and i32 %start.addr.125, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body9.i, label %do.body3.i, !prof !41

do.body3.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-feroceon-l2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 146, 0\0A.popsection", ""() #6, !srcloc !42
  unreachable

do.body9.i:                                       ; preds = %while.body
  br i1 %tobool11.not.i, label %calc_range_end.exit, label %do.body19.i, !prof !41

do.body19.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-feroceon-l2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #6, !srcloc !43
  unreachable

calc_range_end.exit:                              ; preds = %do.body9.i
  %add.i = add i32 %start.addr.125, 1024
  %0 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %end.addr.0) #6
  %or.i = or i32 %start.addr.125, 4095
  %add31.i = add i32 %or.i, 1
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 %add31.i) #6
  %sub = add i32 %1, -32
  %xor.i = xor i32 %sub, %start.addr.125
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %xor.i)
  %tobool.not.i21 = icmp ult i32 %xor.i, 4096
  br i1 %tobool.not.i21, label %do.end8.i, label %do.body3.i22, !prof !41

do.body3.i22:                                     ; preds = %calc_range_end.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-feroceon-l2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #6, !srcloc !44
  unreachable

do.end8.i:                                        ; preds = %calc_range_end.exit
  %shr.i.i = lshr i32 %start.addr.125, 12
  %2 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !45
  %6 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 213
  %10 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %11, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %12 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %12, 512
  %call.i.i.i = tail call ptr @__kmap_local_pfn_prot(i32 noundef %shr.i.i, i32 noundef %or.i.i.i) #6
  %13 = ptrtoint ptr %call.i.i.i to i32
  %and.i.i = and i32 %start.addr.125, 4095
  %add.i.i = add i32 %and.i.i, %13
  %sub.i = sub i32 %sub, %start.addr.125
  %add.i23 = add i32 %sub.i, %add.i.i
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c11, 4\0A\09mcr p15, 1, $1, c15, c11, 5", "r,r"(i32 %add.i.i, i32 %add.i23) #6, !srcloc !48
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !49
  %and.i.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool21.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool21.not.i, label %if.then30.i, label %do.end8.i.l2_inv_pa_range.exit_crit_edge, !prof !50

do.end8.i.l2_inv_pa_range.exit_crit_edge:         ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l2_inv_pa_range.exit

if.then30.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %l2_inv_pa_range.exit

l2_inv_pa_range.exit:                             ; preds = %if.then30.i, %do.end8.i.l2_inv_pa_range.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #6, !srcloc !51
  %16 = inttoptr i32 %add.i.i to ptr
  tail call void @kunmap_local_indexed(ptr noundef %16) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !52
  %17 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i.i41.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i1.i.i41.i to ptr
  %task.i.i.i.i42.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i.i.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i.i.i.i42.i, align 8
  %pagefault_disabled.i.i.i.i43.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 213
  %21 = ptrtoint ptr %pagefault_disabled.i.i.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pagefault_disabled.i.i.i.i43.i, align 8
  %dec.i.i.i.i.i = add i32 %22, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i43.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !53
  %23 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i44.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i44.i to ptr
  %preempt_count.i.i.i.i45.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i45.i, align 4
  %sub.i.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i45.i, align 4
  %cmp8 = icmp ult i32 %1, %end.addr.0
  br i1 %cmp8, label %l2_inv_pa_range.exit.while.body_crit_edge, label %l2_inv_pa_range.exit.while.end_crit_edge

l2_inv_pa_range.exit.while.end_crit_edge:         ; preds = %l2_inv_pa_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

l2_inv_pa_range.exit.while.body_crit_edge:        ; preds = %l2_inv_pa_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %l2_inv_pa_range.exit.while.end_crit_edge, %if.end7.while.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @feroceon_l2_clean_range(i32 noundef %start, i32 noundef %end) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @l2_wt_override, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %and = and i32 %start, -32
  %sub = add i32 %end, 31
  %and1 = and i32 %sub, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and1)
  %cmp.not12 = icmp eq i32 %and, %and1
  br i1 %cmp.not12, label %if.then.if.end_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body:                                       ; preds = %l2_clean_pa_range.exit.while.body_crit_edge, %if.then.while.body_crit_edge
  %start.addr.013 = phi i32 [ %2, %l2_clean_pa_range.exit.while.body_crit_edge ], [ %and, %if.then.while.body_crit_edge ]
  %and.i = and i32 %start.addr.013, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %calc_range_end.exit, label %do.body3.i, !prof !41

do.body3.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-feroceon-l2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 146, 0\0A.popsection", ""() #6, !srcloc !42
  unreachable

calc_range_end.exit:                              ; preds = %while.body
  %add.i = add i32 %start.addr.013, 1024
  %1 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %and1) #6
  %or.i = or i32 %start.addr.013, 4095
  %add31.i = add i32 %or.i, 1
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %add31.i) #6
  %sub2 = add i32 %2, -32
  %xor.i = xor i32 %sub2, %start.addr.013
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %xor.i)
  %tobool.not.i9 = icmp ult i32 %xor.i, 4096
  br i1 %tobool.not.i9, label %do.end8.i, label %do.body3.i10, !prof !41

do.body3.i10:                                     ; preds = %calc_range_end.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-feroceon-l2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 82, 0\0A.popsection", ""() #6, !srcloc !55
  unreachable

do.end8.i:                                        ; preds = %calc_range_end.exit
  %shr.i.i = lshr i32 %start.addr.013, 12
  %3 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !45
  %7 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 213
  %11 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %12, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %13 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %13, 512
  %call.i.i.i = tail call ptr @__kmap_local_pfn_prot(i32 noundef %shr.i.i, i32 noundef %or.i.i.i) #6
  %14 = ptrtoint ptr %call.i.i.i to i32
  %and.i.i = and i32 %start.addr.013, 4095
  %add.i.i = add i32 %and.i.i, %14
  %sub.i = sub i32 %sub2, %start.addr.013
  %add.i11 = add i32 %sub.i, %add.i.i
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c9, 4\0A\09mcr p15, 1, $1, c15, c9, 5", "r,r"(i32 %add.i.i, i32 %add.i11) #6, !srcloc !56
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !49
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool21.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool21.not.i, label %if.then30.i, label %do.end8.i.l2_clean_pa_range.exit_crit_edge, !prof !50

do.end8.i.l2_clean_pa_range.exit_crit_edge:       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l2_clean_pa_range.exit

if.then30.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %l2_clean_pa_range.exit

l2_clean_pa_range.exit:                           ; preds = %if.then30.i, %do.end8.i.l2_clean_pa_range.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #6, !srcloc !51
  %17 = inttoptr i32 %add.i.i to ptr
  tail call void @kunmap_local_indexed(ptr noundef %17) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !52
  %18 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i.i41.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i1.i.i41.i to ptr
  %task.i.i.i.i42.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i.i.i42.i, align 8
  %pagefault_disabled.i.i.i.i43.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 213
  %22 = ptrtoint ptr %pagefault_disabled.i.i.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pagefault_disabled.i.i.i.i43.i, align 8
  %dec.i.i.i.i.i = add i32 %23, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i43.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !53
  %24 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i44.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i44.i to ptr
  %preempt_count.i.i.i.i45.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i45.i, align 4
  %sub.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i45.i, align 4
  %cmp.not = icmp eq i32 %2, %and1
  br i1 %cmp.not, label %l2_clean_pa_range.exit.if.end_crit_edge, label %l2_clean_pa_range.exit.while.body_crit_edge

l2_clean_pa_range.exit.while.body_crit_edge:      ; preds = %l2_clean_pa_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

l2_clean_pa_range.exit.if.end_crit_edge:          ; preds = %l2_clean_pa_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %l2_clean_pa_range.exit.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @feroceon_l2_flush_range(i32 noundef %start, i32 noundef %end) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %start, -32
  %sub = add i32 %end, 31
  %and1 = and i32 %sub, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and1)
  %cmp.not44 = icmp eq i32 %and, %and1
  br i1 %cmp.not44, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %l2_inv_pa_range.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %start.addr.045 = phi i32 [ %1, %l2_inv_pa_range.exit.while.body_crit_edge ], [ %and, %entry.while.body_crit_edge ]
  %and.i = and i32 %start.addr.045, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %calc_range_end.exit, label %do.body3.i, !prof !41

do.body3.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-feroceon-l2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 146, 0\0A.popsection", ""() #6, !srcloc !42
  unreachable

calc_range_end.exit:                              ; preds = %while.body
  %add.i = add i32 %start.addr.045, 1024
  %0 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %and1) #6
  %or.i = or i32 %start.addr.045, 4095
  %add31.i = add i32 %or.i, 1
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 %add31.i) #6
  %2 = load i32, ptr @l2_wt_override, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %sub2 = add i32 %1, -32
  %xor.i = xor i32 %sub2, %start.addr.045
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %xor.i)
  %tobool.not.i12 = icmp ult i32 %xor.i, 4096
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %calc_range_end.exit
  br i1 %tobool.not.i12, label %do.end8.i, label %do.body3.i13, !prof !41

do.body3.i13:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-feroceon-l2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 82, 0\0A.popsection", ""() #6, !srcloc !55
  unreachable

do.end8.i:                                        ; preds = %if.then
  %shr.i.i = lshr i32 %start.addr.045, 12
  %3 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !45
  %7 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 213
  %11 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %12, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %13 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %13, 512
  %call.i.i.i = tail call ptr @__kmap_local_pfn_prot(i32 noundef %shr.i.i, i32 noundef %or.i.i.i) #6
  %14 = ptrtoint ptr %call.i.i.i to i32
  %and.i.i = and i32 %start.addr.045, 4095
  %add.i.i = add i32 %and.i.i, %14
  %sub.i = sub i32 %sub2, %start.addr.045
  %add.i14 = add i32 %sub.i, %add.i.i
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c9, 4\0A\09mcr p15, 1, $1, c15, c9, 5", "r,r"(i32 %add.i.i, i32 %add.i14) #6, !srcloc !56
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !49
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool21.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool21.not.i, label %if.then30.i, label %do.end8.i.if.end.thread_crit_edge, !prof !50

do.end8.i.if.end.thread_crit_edge:                ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.thread

if.then30.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.then30.i, %do.end8.i.if.end.thread_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #6, !srcloc !51
  %17 = inttoptr i32 %add.i.i to ptr
  tail call void @kunmap_local_indexed(ptr noundef %17) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !52
  %18 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i.i41.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i1.i.i41.i to ptr
  %task.i.i.i.i42.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i.i.i42.i, align 8
  %pagefault_disabled.i.i.i.i43.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 213
  %22 = ptrtoint ptr %pagefault_disabled.i.i.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pagefault_disabled.i.i.i.i43.i, align 8
  %dec.i.i.i.i.i = add i32 %23, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i43.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !53
  %24 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i44.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i44.i to ptr
  %preempt_count.i.i.i.i45.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i45.i, align 4
  %sub.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i45.i, align 4
  br label %do.end8.i34

if.end:                                           ; preds = %calc_range_end.exit
  br i1 %tobool.not.i12, label %if.end.do.end8.i34_crit_edge, label %do.body3.i17, !prof !41

if.end.do.end8.i34_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.i34

do.body3.i17:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-feroceon-l2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #6, !srcloc !44
  unreachable

do.end8.i34:                                      ; preds = %if.end.do.end8.i34_crit_edge, %if.end.thread
  %shr.i.i18 = lshr i32 %start.addr.045, 12
  %28 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i.i19 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i19 to ptr
  %preempt_count.i.i.i.i.i20 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i.i20, align 4
  %add.i.i.i.i21 = add i32 %31, 1
  store volatile i32 %add.i.i.i.i21, ptr %preempt_count.i.i.i.i.i20, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !45
  %32 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i.i.i22 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i1.i.i.i22 to ptr
  %task.i.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i.i.i.i23, align 8
  %pagefault_disabled.i.i.i.i.i24 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 213
  %36 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pagefault_disabled.i.i.i.i.i24, align 8
  %inc.i.i.i.i.i25 = add i32 %37, 1
  store i32 %inc.i.i.i.i.i25, ptr %pagefault_disabled.i.i.i.i.i24, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %38 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i26 = or i32 %38, 512
  %call.i.i.i27 = tail call ptr @__kmap_local_pfn_prot(i32 noundef %shr.i.i18, i32 noundef %or.i.i.i26) #6
  %39 = ptrtoint ptr %call.i.i.i27 to i32
  %and.i.i28 = and i32 %start.addr.045, 4095
  %add.i.i29 = add i32 %and.i.i28, %39
  %sub.i30 = sub i32 %sub2, %start.addr.045
  %add.i31 = add i32 %sub.i30, %add.i.i29
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c11, 4\0A\09mcr p15, 1, $1, c15, c11, 5", "r,r"(i32 %add.i.i29, i32 %add.i31) #6, !srcloc !48
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !49
  %and.i.i.i32 = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32)
  %tobool21.not.i33 = icmp eq i32 %and.i.i.i32, 0
  br i1 %tobool21.not.i33, label %if.then30.i35, label %do.end8.i34.l2_inv_pa_range.exit_crit_edge, !prof !50

do.end8.i34.l2_inv_pa_range.exit_crit_edge:       ; preds = %do.end8.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %l2_inv_pa_range.exit

if.then30.i35:                                    ; preds = %do.end8.i34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %l2_inv_pa_range.exit

l2_inv_pa_range.exit:                             ; preds = %if.then30.i35, %do.end8.i34.l2_inv_pa_range.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #6, !srcloc !51
  %42 = inttoptr i32 %add.i.i29 to ptr
  tail call void @kunmap_local_indexed(ptr noundef %42) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !52
  %43 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i1.i.i41.i36 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i1.i.i41.i36 to ptr
  %task.i.i.i.i42.i37 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i.i.i.i42.i37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i.i.i.i42.i37, align 8
  %pagefault_disabled.i.i.i.i43.i38 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 213
  %47 = ptrtoint ptr %pagefault_disabled.i.i.i.i43.i38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pagefault_disabled.i.i.i.i43.i38, align 8
  %dec.i.i.i.i.i39 = add i32 %48, -1
  store i32 %dec.i.i.i.i.i39, ptr %pagefault_disabled.i.i.i.i43.i38, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !53
  %49 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i44.i40 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i44.i40 to ptr
  %preempt_count.i.i.i.i45.i41 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i45.i41 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i45.i41, align 4
  %sub.i.i.i.i42 = add i32 %52, -1
  store volatile i32 %sub.i.i.i.i42, ptr %preempt_count.i.i.i.i45.i41, align 4
  %cmp.not = icmp eq i32 %1, %and1
  br i1 %cmp.not, label %l2_inv_pa_range.exit.while.end_crit_edge, label %l2_inv_pa_range.exit.while.body_crit_edge

l2_inv_pa_range.exit.while.body_crit_edge:        ; preds = %l2_inv_pa_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

l2_inv_pa_range.exit.while.end_crit_edge:         ; preds = %l2_inv_pa_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %l2_inv_pa_range.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_l2() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc p15, 1, $0, c15, c1, 0", "=r"() #9, !srcloc !38
  %and = and i32 %0, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %do.end11

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  %call2 = tail call fastcc i32 @flush_and_disable_dcache() #11
  %1 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #9, !srcloc !59
  %and.i = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.critedge, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %and1.i = and i32 %1, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 0\09@ set CR", "r,~{cc}"(i32 %and1.i) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 0", "r"(i32 0) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c11, 0", "r"(i32 0) #6, !srcloc !63
  %or.c17 = or i32 %0, 4194304
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c1, 0", "r"(i32 %or.c17) #6, !srcloc !39
  %or.i = or i32 %1, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 0\09@ set CR", "r,~{cc}"(i32 %or.i) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  br label %if.end

if.end.critedge:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c11, 0", "r"(i32 0) #6, !srcloc !63
  %or.c = or i32 %0, 4194304
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c1, 0", "r"(i32 %or.c) #6, !srcloc !39
  br label %if.end

if.end:                                           ; preds = %if.end.critedge, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool6.not = icmp eq i32 %call2, 0
  br i1 %tobool6.not, label %if.end.if.end14_crit_edge, label %if.then7

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or.i16 = or i32 %1, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 0\09@ set CR", "r,~{cc}"(i32 %or.i16) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  br label %if.end14

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %if.then7, %if.end.if.end14_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @feroceon_of_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @feroceon_ids, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %land.lhs.true

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end19_crit_edge, label %if.then

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call ptr @of_iomap(ptr noundef nonnull %call.i, i32 noundef 0) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call3) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %1 = or i32 %0, 268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call3, i32 %1) #6, !srcloc !67
  br label %if.end19

if.end19:                                         ; preds = %do.body, %land.lhs.true.if.end19_crit_edge, %entry.if.end19_crit_edge
  tail call void @feroceon_l2_init(i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_pfn_prot(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @flush_and_disable_dcache() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #9, !srcloc !59
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %2() #6
  %and2 = and i32 %0, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 0\09@ set CR", "r,~{cc}"(i32 %and2) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !49
  %and.i.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool11.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool11.not, label %if.then15, label %if.then.do.end17_crit_edge, !prof !50

if.then.do.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end17

do.end17:                                         ; preds = %if.then15, %if.then.do.end17_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #6, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end17 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { cold nounwind }
attributes #11 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mm/cache-feroceon-l2.c", i32 356, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @feroceon_l2_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @feroceon_l2_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mm/cache-feroceon-l2.c", i32 377, i32 44}
!10 = !{ptr @l2_wt_override, !11, !"l2_wt_override", i1 false, i1 false}
!11 = !{!"../arch/arm/mm/cache-feroceon-l2.c", i32 140, i32 12}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mm/cache-feroceon-l2.c", i32 316, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @disable_l2_prefetch._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @disable_l2_prefetch._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../arch/arm/mm/cache-feroceon-l2.c", i32 329, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @enable_l2._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @enable_l2._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mm/cache-feroceon-l2.c", i32 340, i32 3}
!24 = !{ptr @enable_l2._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @enable_l2._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @feroceon_ids, !27, !"feroceon_ids", i1 false, i1 false}
!27 = !{!"../arch/arm/mm/cache-feroceon-l2.c", i32 360, i32 34}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 7173}
!39 = !{i64 7288}
!40 = !{i64 2777}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2153803271, i64 2153803767, i64 2153803308, i64 2153803364, i64 2153803398, i64 2153803422, i64 2153803463, i64 2153803484, i64 2153803512, i64 2153803546}
!43 = !{i64 2153804896, i64 2153805392, i64 2153804933, i64 2153804989, i64 2153805023, i64 2153805047, i64 2153805088, i64 2153805109, i64 2153805137, i64 2153805171}
!44 = !{i64 2153800814, i64 2153801310, i64 2153800851, i64 2153800907, i64 2153800941, i64 2153800965, i64 2153801006, i64 2153801027, i64 2153801055, i64 2153801089}
!45 = !{i64 2153750052}
!46 = !{i64 2152488494}
!47 = !{i64 621290, i64 621351}
!48 = !{i64 3349, i64 3379}
!49 = !{i64 624022}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 624307}
!52 = !{i64 2152488701}
!53 = !{i64 2153751329}
!54 = !{i64 2153806388}
!55 = !{i64 2153798016, i64 2153798511, i64 2153798053, i64 2153798109, i64 2153798143, i64 2153798167, i64 2153798208, i64 2153798229, i64 2153798257, i64 2153798291}
!56 = !{i64 2554, i64 2583}
!57 = !{i64 2153806485}
!58 = !{i64 2153806585}
!59 = !{i64 6307169}
!60 = !{i64 6307307}
!61 = !{i64 2153793480}
!62 = !{i64 6798}
!63 = !{i64 3555}
!64 = !{i64 2153817328}
!65 = !{i64 3997920}
!66 = !{i64 2153818231}
!67 = !{i64 3997502}
