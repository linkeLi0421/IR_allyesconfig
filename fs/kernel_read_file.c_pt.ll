; ModuleID = '/llk/IR_all_yes/fs/kernel_read_file.c_pt.bc'
source_filename = "../fs/kernel_read_file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+kernel_read_file\22, \22a\22\09"
module asm "\09.weak\09__crc_kernel_read_file\09\09\09\09"
module asm "\09.long\09__crc_kernel_read_file\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_read_file:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_read_file\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_read_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kernel_read_file_from_path\22, \22a\22\09"
module asm "\09.weak\09__crc_kernel_read_file_from_path\09\09\09\09"
module asm "\09.long\09__crc_kernel_read_file_from_path\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_read_file_from_path:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_read_file_from_path\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_read_file_from_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kernel_read_file_from_path_initns\22, \22a\22\09"
module asm "\09.weak\09__crc_kernel_read_file_from_path_initns\09\09\09\09"
module asm "\09.long\09__crc_kernel_read_file_from_path_initns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_read_file_from_path_initns:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_read_file_from_path_initns\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_read_file_from_path_initns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kernel_read_file_from_fd\22, \22a\22\09"
module asm "\09.weak\09__crc_kernel_read_file_from_fd\09\09\09\09"
module asm "\09.long\09__crc_kernel_read_file_from_fd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_read_file_from_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_read_file_from_fd\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_read_file_from_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.14 }
%struct.llist_node = type { ptr }
%union.anon.14 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.59 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.63 = type { ptr }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }

@__kstrtab_kernel_read_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_read_file = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_read_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_read_file to i32), ptr @__kstrtab_kernel_read_file, ptr @__kstrtabns_kernel_read_file }, section "___ksymtab_gpl+kernel_read_file", align 4
@__kstrtab_kernel_read_file_from_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_read_file_from_path = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_read_file_from_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_read_file_from_path to i32), ptr @__kstrtab_kernel_read_file_from_path, ptr @__kstrtabns_kernel_read_file_from_path }, section "___ksymtab_gpl+kernel_read_file_from_path", align 4
@init_task = external dso_local global %struct.task_struct, align 128
@__kstrtab_kernel_read_file_from_path_initns = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_read_file_from_path_initns = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_read_file_from_path_initns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_read_file_from_path_initns to i32), ptr @__kstrtab_kernel_read_file_from_path_initns, ptr @__kstrtabns_kernel_read_file_from_path_initns }, section "___ksymtab_gpl+kernel_read_file_from_path_initns", align 4
@__kstrtab_kernel_read_file_from_fd = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_read_file_from_fd = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_read_file_from_fd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_read_file_from_fd to i32), ptr @__kstrtab_kernel_read_file_from_fd, ptr @__kstrtabns_kernel_read_file_from_fd }, section "___ksymtab_gpl+kernel_read_file_from_fd", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_kernel_read_file, ptr @__ksymtab_kernel_read_file_from_fd, ptr @__ksymtab_kernel_read_file_from_path, ptr @__ksymtab_kernel_read_file_from_path_initns], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernel_read_file(ptr noundef %file, i64 noundef %offset, ptr nocapture noundef %buf, i32 noundef %buf_size, ptr noundef writeonly %file_size, i32 noundef %id) #0 align 64 {
entry:
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #7
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %pos, align 8, !annotation !17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset)
  %cmp.not = icmp eq i64 %offset, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buf, align 4
  %tobool.not = icmp eq ptr %2, null
  %tobool1.not = icmp eq ptr %file_size, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %land.lhs.true.cleanup89_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup89_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 8
  %7 = and i16 %6, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %7)
  %cmp2 = icmp eq i16 %7, -32768
  br i1 %cmp2, label %if.end5, label %if.end.cleanup89_crit_edge

if.end.cleanup89_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

if.end5:                                          ; preds = %if.end
  %i_writecount.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 42
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i, i32 noundef 4) #7
  %8 = ptrtoint ptr %i_writecount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_writecount.i, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.end5
  %c.0.i.i.i = phi i32 [ %9, %if.end5 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.cleanup89_crit_edge, label %do.cond3.i.i.i, !prof !18

do.body1.i.i.i.cleanup89_crit_edge:               ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %sub.i.i.i = add i32 %c.0.i.i.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @llvm.prefetch.p0(ptr %i_writecount.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i, ptr %i_writecount.i, i32 %c.0.i.i.i, i32 %sub.i.i.i, ptr elementtype(i32) %i_writecount.i) #7, !srcloc !20
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !21
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end9, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !22

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i.i.i

if.end9:                                          ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %11 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_inode.i, align 8
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end9
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !23
  %and.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %14 = tail call ptr @llvm.returnaddress(i32 0) #7
  %15 = ptrtoint ptr %14 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %15) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %15) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = tail call ptr @llvm.returnaddress(i32 0) #7
  %17 = ptrtoint ptr %16 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %17) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %17) #7
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !24
  %and.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !18

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #7, !srcloc !25
  %19 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !27
  %21 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %22, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %20, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %22, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !28
  %23 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  %25 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %26, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %24)
  %cmp12 = icmp slt i64 %24, 1
  br i1 %cmp12, label %i_size_read.exit.out_crit_edge, label %if.end15

i_size_read.exit.out_crit_edge:                   ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end15:                                         ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %24)
  %cmp16 = icmp ugt i64 %24, 2147483647
  br i1 %cmp16, label %if.end15.out_crit_edge, label %if.end19

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end19:                                         ; preds = %if.end15
  %tobool20.not = icmp eq ptr %file_size, null
  %or.cond141 = and i1 %cmp.not, %tobool20.not
  %conv25 = zext i32 %buf_size to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %conv25)
  %cmp26 = icmp ugt i64 %24, %conv25
  %or.cond142 = select i1 %or.cond141, i1 %cmp26, i1 false
  br i1 %or.cond142, label %if.end19.out_crit_edge, label %if.end29

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end29:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %conv25)
  %cmp33 = icmp ule i64 %24, %conv25
  %27 = select i1 %cmp.not, i1 %cmp33, i1 false
  %call36 = tail call i32 @security_kernel_read_file(ptr noundef %file, i32 noundef %id, i1 noundef zeroext %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end29.out_crit_edge

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end39:                                         ; preds = %if.end29
  br i1 %tobool20.not, label %if.end39.if.end43_crit_edge, label %if.then41

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %conv42 = trunc i64 %24 to i32
  %28 = ptrtoint ptr %file_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv42, ptr %file_size, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39.if.end43_crit_edge
  %29 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf, align 4
  %tobool44.not = icmp eq ptr %30, null
  br i1 %tobool44.not, label %if.end48, label %if.end43.if.end51_crit_edge

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.end48:                                         ; preds = %if.end43
  %conv46 = trunc i64 %24 to i32
  %call47 = tail call noalias ptr @vmalloc(i32 noundef %conv46) #10
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call47, ptr %buf, align 4
  %tobool49.not = icmp eq ptr %call47, null
  br i1 %tobool49.not, label %if.end48.out_crit_edge, label %if.end48.if.end51_crit_edge

if.end48.if.end51_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.end48.out_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end51:                                         ; preds = %if.end48.if.end51_crit_edge, %if.end43.if.end51_crit_edge
  %allocated.0154 = phi ptr [ %call47, %if.end48.if.end51_crit_edge ], [ null, %if.end43.if.end51_crit_edge ]
  %32 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %offset, ptr %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end51
  %copied.0 = phi i32 [ 0, %if.end51 ], [ %copied.1, %while.body.while.cond_crit_edge ]
  %ret.0 = phi i32 [ 0, %if.end51 ], [ %ret.1, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %copied.0, i32 %buf_size)
  %cmp52 = icmp ult i32 %copied.0, %buf_size
  br i1 %cmp52, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.cond
  %sub = sub i32 %buf_size, %copied.0
  %33 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %pos, align 8
  %sub54 = sub i64 %24, %34
  %conv55 = trunc i64 %sub54 to i32
  %35 = call i32 @llvm.umin.i32(i32 %sub, i32 %conv55)
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 %copied.0
  %call58 = call i32 @kernel_read(ptr noundef %file, ptr noundef %add.ptr, i32 noundef %35, ptr noundef nonnull %pos) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp63 = icmp eq i32 %call58, 0
  %spec.select144 = select i1 %cmp63, i32 4, i32 0
  %38 = call i32 @llvm.smax.i32(i32 %call58, i32 0)
  %copied.1 = add i32 %38, %copied.0
  %ret.1 = select i1 %cmp59, i32 %call58, i32 %ret.0
  %cleanup.dest.slot.0 = select i1 %cmp59, i32 5, i32 %spec.select144
  %39 = zext i32 %cleanup.dest.slot.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cleanup.dest.slot.0, label %while.body.cleanup89_crit_edge [
    i32 0, label %while.body.while.cond_crit_edge
    i32 4, label %while.body.while.end_crit_edge
    i32 5, label %while.body.out_free_crit_edge
  ]

while.body.out_free_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.body.cleanup89_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %copied.2 = phi i32 [ %copied.1, %while.body.while.end_crit_edge ], [ %copied.0, %while.cond.while.end_crit_edge ]
  %ret.2 = phi i32 [ %ret.1, %while.body.while.end_crit_edge ], [ %ret.0, %while.cond.while.end_crit_edge ]
  br i1 %27, label %if.then69, label %while.end.out_free_crit_edge

while.end.out_free_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

if.then69:                                        ; preds = %while.end
  %40 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %24)
  %cmp70.not = icmp eq i64 %41, %24
  br i1 %cmp70.not, label %if.end73, label %if.then69.out_free_crit_edge

if.then69.out_free_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

if.end73:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buf, align 4
  %call74 = call i32 @security_kernel_post_read_file(ptr noundef %file, ptr noundef %43, i64 noundef %24, i32 noundef %id) #7
  br label %out_free

out_free:                                         ; preds = %if.end73, %if.then69.out_free_crit_edge, %while.end.out_free_crit_edge, %while.body.out_free_crit_edge
  %copied.3 = phi i32 [ %copied.2, %if.end73 ], [ %copied.2, %while.end.out_free_crit_edge ], [ %copied.2, %if.then69.out_free_crit_edge ], [ %copied.1, %while.body.out_free_crit_edge ]
  %ret.3 = phi i32 [ %call74, %if.end73 ], [ %ret.2, %while.end.out_free_crit_edge ], [ -5, %if.then69.out_free_crit_edge ], [ %ret.1, %while.body.out_free_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.3)
  %cmp76 = icmp sgt i32 %ret.3, -1
  %tobool79.not = icmp eq ptr %allocated.0154, null
  %or.cond143 = select i1 %cmp76, i1 true, i1 %tobool79.not
  br i1 %or.cond143, label %out_free.out_crit_edge, label %if.then80

out_free.out_crit_edge:                           ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then80:                                        ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf, align 4
  call void @vfree(ptr noundef %45) #7
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %buf, align 4
  br label %out

out:                                              ; preds = %if.then80, %out_free.out_crit_edge, %if.end48.out_crit_edge, %if.end29.out_crit_edge, %if.end19.out_crit_edge, %if.end15.out_crit_edge, %i_size_read.exit.out_crit_edge
  %copied.4 = phi i32 [ -1, %if.end29.out_crit_edge ], [ %copied.3, %if.then80 ], [ %copied.3, %out_free.out_crit_edge ], [ -1, %i_size_read.exit.out_crit_edge ], [ -1, %if.end15.out_crit_edge ], [ -1, %if.end19.out_crit_edge ], [ -1, %if.end48.out_crit_edge ]
  %ret.4 = phi i32 [ %call36, %if.end29.out_crit_edge ], [ %ret.3, %if.then80 ], [ %ret.3, %out_free.out_crit_edge ], [ -22, %i_size_read.exit.out_crit_edge ], [ -27, %if.end15.out_crit_edge ], [ -27, %if.end19.out_crit_edge ], [ -12, %if.end48.out_crit_edge ]
  %tobool.not.i146 = icmp eq ptr %file, null
  br i1 %tobool.not.i146, label %out.allow_write_access.exit_crit_edge, label %if.then.i

out.allow_write_access.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %allow_write_access.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %f_inode.i, align 8
  %i_writecount.i148 = getelementptr inbounds %struct.inode, ptr %48, i32 0, i32 42
  %call.i.i.i149 = call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i148, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %i_writecount.i148, i32 1, i32 3, i32 1) #7
  %49 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i148, ptr %i_writecount.i148, i32 1, ptr elementtype(i32) %i_writecount.i148) #7, !srcloc !30
  br label %allow_write_access.exit

allow_write_access.exit:                          ; preds = %if.then.i, %out.allow_write_access.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %cmp83 = icmp eq i32 %ret.4, 0
  %copied.4.ret.4 = select i1 %cmp83, i32 %copied.4, i32 %ret.4
  br label %cleanup89

cleanup89:                                        ; preds = %allow_write_access.exit, %while.body.cleanup89_crit_edge, %do.body1.i.i.i.cleanup89_crit_edge, %if.end.cleanup89_crit_edge, %land.lhs.true.cleanup89_crit_edge
  %retval.0 = phi i32 [ %copied.4.ret.4, %allow_write_access.exit ], [ -22, %land.lhs.true.cleanup89_crit_edge ], [ -22, %if.end.cleanup89_crit_edge ], [ undef, %while.body.cleanup89_crit_edge ], [ -26, %do.body1.i.i.i.cleanup89_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_kernel_read_file(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_kernel_post_read_file(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernel_read_file_from_path(ptr noundef %path, i64 noundef %offset, ptr nocapture noundef %buf, i32 noundef %buf_size, ptr noundef %file_size, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %path, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %path, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @filp_open(ptr noundef nonnull %path, i32 noundef 0, i16 noundef zeroext 0) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @kernel_read_file(ptr noundef %call, i64 noundef %offset, ptr noundef %buf, i32 noundef %buf_size, ptr noundef %file_size, i32 noundef %id)
  tail call void @fput(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then3 ], [ %call6, %if.end5 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernel_read_file_from_path_initns(ptr noundef %path, i64 noundef %offset, ptr nocapture noundef %buf, i32 noundef %buf_size, ptr noundef %file_size, i32 noundef %id) #0 align 64 {
entry:
  %root = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %root) #7
  %tobool.not = icmp eq ptr %path, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %path, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 127)) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 107) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 107), align 128
  %lock.i = getelementptr inbounds %struct.fs_struct, ptr %2, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %root1.i = getelementptr inbounds %struct.fs_struct, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %root1.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %root1.i, align 4
  %5 = ptrtoint ptr %root to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %root, align 8
  call void @path_get(ptr noundef nonnull %root) #7
  call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 127)) #7
  %call = call ptr @file_open_root(ptr noundef nonnull %root, ptr noundef nonnull %path, i32 noundef 0, i16 noundef zeroext 0) #7
  call void @path_put(ptr noundef nonnull %root) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call i32 @kernel_read_file(ptr noundef %call, i64 noundef %offset, ptr noundef %buf, i32 noundef %buf_size, ptr noundef %file_size, i32 noundef %id)
  call void @fput(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then3 ], [ %call6, %if.end5 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %root) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_open_root(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernel_read_file_from_fd(i32 noundef %fd, i64 noundef %offset, ptr nocapture noundef %buf, i32 noundef %buf_size, ptr noundef %file_size, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget(i32 noundef %fd) #7, !noalias !31
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f_mode, align 8
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @kernel_read_file(ptr noundef nonnull %0, i64 noundef %offset, ptr noundef %buf, i32 noundef %buf_size, ptr noundef %file_size, i32 noundef %id)
  br label %out

out:                                              ; preds = %if.end, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %if.end ], [ -9, %lor.lhs.false.out_crit_edge ], [ -9, %entry.out_crit_edge ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %out.fdput.exit_crit_edge, label %if.then.i

out.fdput.exit_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdput.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @fput(ptr noundef %0) #7
  br label %fdput.exit

fdput.exit:                                       ; preds = %if.then.i, %out.fdput.exit_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_kernel_read_file, !1, !"__ksymtab_kernel_read_file", i1 false, i1 false}
!1 = !{!"../fs/kernel_read_file.c", i32 125, i32 1}
!2 = !{ptr @__ksymtab_kernel_read_file_from_path, !3, !"__ksymtab_kernel_read_file_from_path", i1 false, i1 false}
!3 = !{!"../fs/kernel_read_file.c", i32 145, i32 1}
!4 = !{ptr @__ksymtab_kernel_read_file_from_path_initns, !5, !"__ksymtab_kernel_read_file_from_path_initns", i1 false, i1 false}
!5 = !{!"../fs/kernel_read_file.c", i32 172, i32 1}
!6 = !{ptr @__ksymtab_kernel_read_file_from_fd, !7, !"__ksymtab_kernel_read_file_from_fd", i1 false, i1 false}
!7 = !{!"../fs/kernel_read_file.c", i32 189, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2148756664}
!20 = !{i64 1140330, i64 1140354, i64 1140375, i64 1140392, i64 1140409}
!21 = !{i64 2148756890}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 1059497, i64 1059558}
!24 = !{i64 1062229}
!25 = !{i64 1062514}
!26 = !{i64 2152497648}
!27 = !{i64 2152497490}
!28 = !{i64 2152497818}
!29 = !{i64 2150083632}
!30 = !{i64 2148654817, i64 2148654843, i64 2148654872, i64 2148654906, i64 2148654937, i64 2148654960}
!31 = !{!32}
!32 = distinct !{!32, !33, !"fdget: %agg.result"}
!33 = distinct !{!33, !"fdget"}
