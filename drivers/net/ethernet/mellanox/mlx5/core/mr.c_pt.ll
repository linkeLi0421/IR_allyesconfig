; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/mr.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/mr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mlx5_core_create_mkey\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_core_create_mkey\09\09\09\09"
module asm "\09.long\09__crc_mlx5_core_create_mkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_core_create_mkey:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_core_create_mkey\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_core_create_mkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_core_destroy_mkey\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_core_destroy_mkey\09\09\09\09"
module asm "\09.long\09__crc_mlx5_core_destroy_mkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_core_destroy_mkey:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_core_destroy_mkey\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_core_destroy_mkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_core_query_mkey\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_core_query_mkey\09\09\09\09"
module asm "\09.long\09__crc_mlx5_core_query_mkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_core_query_mkey:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_core_query_mkey\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_core_query_mkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_core_create_psv\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_core_create_psv\09\09\09\09"
module asm "\09.long\09__crc_mlx5_core_create_psv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_core_create_psv:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_core_create_psv\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_core_create_psv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_core_destroy_psv\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_core_destroy_psv\09\09\09\09"
module asm "\09.long\09__crc_mlx5_core_destroy_psv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_core_destroy_psv:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_core_destroy_psv\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_core_destroy_psv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@mlx5_core_create_mkey.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_core_create_mkey\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/mr.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%d:(pid %d): out 0x%x, mkey 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@__kstrtab_mlx5_core_create_mkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_core_create_mkey = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_core_create_mkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_core_create_mkey to i32), ptr @__kstrtab_mlx5_core_create_mkey, ptr @__kstrtabns_mlx5_core_create_mkey }, section "___ksymtab+mlx5_core_create_mkey", align 4
@__kstrtab_mlx5_core_destroy_mkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_core_destroy_mkey = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_core_destroy_mkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_core_destroy_mkey to i32), ptr @__kstrtab_mlx5_core_destroy_mkey, ptr @__kstrtabns_mlx5_core_destroy_mkey }, section "___ksymtab+mlx5_core_destroy_mkey", align 4
@__kstrtab_mlx5_core_query_mkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_core_query_mkey = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_core_query_mkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_core_query_mkey to i32), ptr @__kstrtab_mlx5_core_query_mkey, ptr @__kstrtabns_mlx5_core_query_mkey }, section "___ksymtab+mlx5_core_query_mkey", align 4
@__kstrtab_mlx5_core_create_psv = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_core_create_psv = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_core_create_psv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_core_create_psv to i32), ptr @__kstrtab_mlx5_core_create_psv, ptr @__kstrtabns_mlx5_core_create_psv }, section "___ksymtab+mlx5_core_create_psv", align 4
@__kstrtab_mlx5_core_destroy_psv = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_core_destroy_psv = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_core_destroy_psv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_core_destroy_psv to i32), ptr @__kstrtab_mlx5_core_destroy_psv, ptr @__kstrtabns_mlx5_core_destroy_psv }, section "___ksymtab+mlx5_core_destroy_psv", align 4
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [48 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/mr.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 55, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_mlx5_core_create_mkey, ptr @__ksymtab_mlx5_core_create_psv, ptr @__ksymtab_mlx5_core_destroy_mkey, ptr @__ksymtab_mlx5_core_destroy_psv, ptr @__ksymtab_mlx5_core_query_mkey, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_create_mkey(ptr noundef %dev, ptr nocapture noundef %mkey, ptr noundef %in, i32 noundef %inlen) #0 align 64 {
entry:
  %lout = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %lout) #4
  %0 = call ptr @memset(ptr %lout, i32 0, i32 16)
  %1 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %in, align 4
  %and = and i32 %2, 65535
  %or = or i32 %and, 33554432
  store i32 %or, ptr %in, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef %in, i32 noundef %inlen, ptr noundef nonnull %lout, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr7 = getelementptr inbounds i32, ptr %lout, i32 2
  %3 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr7, align 4
  %and8 = and i32 %4, 16777215
  %add.ptr9 = getelementptr i32, ptr %in, i32 5
  %5 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr9, align 4
  %and11 = and i32 %6, 255
  %shl.i = shl nuw i32 %and8, 8
  %or13 = or i32 %and11, %shl.i
  %7 = ptrtoint ptr %mkey to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or13, ptr %mkey, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_core_create_mkey.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_core_create_mkey, %if.then19)) #4
          to label %cleanup [label %if.then19], !srcloc !26

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = call i32 @llvm.read_register.i32(metadata !16) #4
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  %16 = ptrtoint ptr %mkey to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mkey, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_core_create_mkey.__UNIQUE_ID_ddebug501, ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 55, i32 noundef %15, i32 noundef %and8, i32 noundef %17) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %lout) #4
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_destroy_mkey(ptr noundef %dev, i32 noundef %mkey) #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #4
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 33685504, ptr %in, align 4
  %shr.i = lshr i32 %mkey, 8
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr.i, ptr %add.ptr13, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #4
  %4 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call25 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #4
  ret i32 %call25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_query_mkey(ptr noundef %dev, i32 noundef %mkey, ptr noundef %out, i32 noundef %outlen) #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #4
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = call ptr @memset(ptr %out, i32 0, i32 %outlen)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 33619968, ptr %in, align 4
  %shr.i = lshr i32 %mkey, 8
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %4 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr.i, ptr %add.ptr13, align 4
  %call23 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef %out, i32 noundef %outlen) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #4
  ret i32 %call23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_create_psv(ptr noundef %dev, i32 noundef %pdn, i32 noundef %npsvs, ptr nocapture noundef writeonly %sig_index) #0 align 64 {
entry:
  %out = alloca [8 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out) #4
  %0 = call ptr @memset(ptr %out, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #4
  %1 = call ptr @memset(ptr %in, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %npsvs)
  %cmp = icmp sgt i32 %npsvs, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in, align 4
  %and = and i32 %3, 65535
  %or = or i32 %and, 100663296
  store i32 %or, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %4 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr13, align 4
  %and14 = and i32 %5, 251658240
  %and15 = and i32 %pdn, 16777215
  %or17 = or i32 %and15, %and14
  %shl31 = shl i32 %npsvs, 28
  %or32 = or i32 %or17, %shl31
  store i32 %or32, ptr %add.ptr13, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npsvs)
  %cmp4154 = icmp sgt i32 %npsvs, 0
  br i1 %cmp4154, label %for.body, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader
  %add.ptr9.i = getelementptr inbounds i32, ptr %out, i32 4
  %6 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %retval.0.in.i = load i32, ptr %add.ptr9.i, align 4
  %retval.0.i = and i32 %retval.0.in.i, 16777215
  %7 = ptrtoint ptr %sig_index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i, ptr %sig_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %npsvs)
  %exitcond.not = icmp eq i32 %npsvs, 1
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.1

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.1:                                       ; preds = %for.body
  %add.ptr9.i.1 = getelementptr inbounds i32, ptr %out, i32 5
  %8 = ptrtoint ptr %add.ptr9.i.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %retval.0.in.i.1 = load i32, ptr %add.ptr9.i.1, align 4
  %retval.0.i.1 = and i32 %retval.0.in.i.1, 16777215
  %arrayidx.1 = getelementptr i32, ptr %sig_index, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i.1, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %npsvs)
  %exitcond.not.1 = icmp eq i32 %npsvs, 2
  br i1 %exitcond.not.1, label %for.body.1.cleanup_crit_edge, label %for.body.2

for.body.1.cleanup_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.2:                                       ; preds = %for.body.1
  %add.ptr9.i.2 = getelementptr inbounds i32, ptr %out, i32 6
  %10 = ptrtoint ptr %add.ptr9.i.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %retval.0.in.i.2 = load i32, ptr %add.ptr9.i.2, align 4
  %retval.0.i.2 = and i32 %retval.0.in.i.2, 16777215
  %arrayidx.2 = getelementptr i32, ptr %sig_index, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i.2, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %npsvs)
  %exitcond.not.2 = icmp eq i32 %npsvs, 3
  br i1 %exitcond.not.2, label %for.body.2.cleanup_crit_edge, label %for.body.3

for.body.2.cleanup_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr9.i.3 = getelementptr inbounds i32, ptr %out, i32 7
  %12 = ptrtoint ptr %add.ptr9.i.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %retval.0.in.i.3 = load i32, ptr %add.ptr9.i.3, align 4
  %retval.0.i.3 = and i32 %retval.0.in.i.3, 16777215
  %arrayidx.3 = getelementptr i32, ptr %sig_index, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i.3, ptr %arrayidx.3, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body.3, %for.body.2.cleanup_crit_edge, %for.body.1.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %do.body.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.3 ], [ 0, %for.body.2.cleanup_crit_edge ], [ 0, %for.body.1.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_destroy_psv(ptr noundef %dev, i32 noundef %psv_num) #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #4
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100728832, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %psv_num, 16777215
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and15, ptr %add.ptr13, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #4
  %4 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #4
  ret i32 %call
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14}
!llvm.named.register.sp = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/mr.c", i32 55, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mlx5_core_create_mkey.__UNIQUE_ID_ddebug501, !1, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!6 = !{ptr @__ksymtab_mlx5_core_create_mkey, !7, !"__ksymtab_mlx5_core_create_mkey", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/mr.c", i32 58, i32 1}
!8 = !{ptr @__ksymtab_mlx5_core_destroy_mkey, !9, !"__ksymtab_mlx5_core_destroy_mkey", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/mr.c", i32 68, i32 1}
!10 = !{ptr @__ksymtab_mlx5_core_query_mkey, !11, !"__ksymtab_mlx5_core_query_mkey", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/mr.c", i32 80, i32 1}
!12 = !{ptr @__ksymtab_mlx5_core_create_psv, !13, !"__ksymtab_mlx5_core_create_psv", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/mr.c", i32 115, i32 1}
!14 = !{ptr @__ksymtab_mlx5_core_destroy_psv, !15, !"__ksymtab_mlx5_core_destroy_psv", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/mr.c", i32 125, i32 1}
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
!26 = !{i64 2148693708, i64 2148693713, i64 2148693726, i64 2148693770, i64 2148693804, i64 2148693825}
