; ModuleID = '/llk/IR_all_yes/net/core/link_watch.c_pt.bc'
source_filename = "../net/core/link_watch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+linkwatch_fire_event\22, \22a\22\09"
module asm "\09.weak\09__crc_linkwatch_fire_event\09\09\09\09"
module asm "\09.long\09__crc_linkwatch_fire_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_linkwatch_fire_event:\09\09\09\09\09"
module asm "\09.asciz \09\22linkwatch_fire_event\22\09\09\09\09\09"
module asm "__kstrtabns_linkwatch_fire_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@lweventlist_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.12 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_linkwatch_fire_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_linkwatch_fire_event = external dso_local constant [0 x i8], align 1
@__ksymtab_linkwatch_fire_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @linkwatch_fire_event to i32), ptr @__kstrtab_linkwatch_fire_event, ptr @__kstrtabns_linkwatch_fire_event }, section "___ksymtab+linkwatch_fire_event", align 4
@dev_base_lock = external dso_local global %struct.rwlock_t, align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lweventlist_lock\00", [47 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@linkwatch_nextevent = internal global { i32, [28 x i8] } zeroinitializer, align 32
@linkwatch_flags = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lweventlist = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @lweventlist, ptr @lweventlist }, [24 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@linkwatch_work = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @linkwatch_work, i64 4), ptr getelementptr (i8, ptr @linkwatch_work, i64 4) }, ptr @linkwatch_event, %struct.lockdep_map { ptr @linkwatch_work, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.2, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(linkwatch_work).work\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/core/link_watch.c:30\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"lweventlist_lock\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 33, i32 8 }
@___asan_gen_.10 = private unnamed_addr constant [20 x i8] c"linkwatch_nextevent\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 27, i32 22 }
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"linkwatch_flags\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 26, i32 22 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"lweventlist\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 32, i32 8 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"linkwatch_work\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [25 x i8] c"../net/core/link_watch.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 30, i32 8 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_linkwatch_fire_event, ptr @lweventlist_lock, ptr @.str, ptr @linkwatch_nextevent, ptr @linkwatch_flags, ptr @lweventlist, ptr @linkwatch_work, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lweventlist_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linkwatch_nextevent to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linkwatch_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lweventlist to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linkwatch_work to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @linkwatch_init_dev(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %lor.lhs.false2, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i9.not = icmp eq i32 %8, 0
  br i1 %tobool.i9.not, label %lor.lhs.false2.if.end_crit_edge, label %lor.lhs.false2.if.then_crit_edge

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false2.if.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i, label %if.then.default_operstate.exit.i_crit_edge

if.then.default_operstate.exit.i_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %default_operstate.exit.i

if.end.i.i:                                       ; preds = %if.then
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i, label %if.end4.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %15 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ifindex.i.i, align 4
  %call3.i.i = tail call i32 @dev_get_iflink(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %call3.i.i)
  %cmp.not.i.i = icmp eq i32 %16, %call3.i.i
  %conv.i.i = select i1 %cmp.not.i.i, i8 2, i8 3
  br label %default_operstate.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i, align 4
  %19 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i14.not.i.i = icmp eq i32 %19, 0
  %..i.i = select i1 %tobool.i14.not.i.i, i8 6, i8 5
  br label %default_operstate.exit.i

default_operstate.exit.i:                         ; preds = %if.end4.i.i, %if.then2.i.i, %if.then.default_operstate.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %conv.i.i, %if.then2.i.i ], [ 4, %if.then.default_operstate.exit.i_crit_edge ], [ %..i.i, %if.end4.i.i ]
  %operstate1.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 50
  %20 = ptrtoint ptr %operstate1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %operstate1.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i, i8 %21)
  %cmp.i = icmp eq i8 %retval.0.i.i, %21
  br i1 %cmp.i, label %default_operstate.exit.i.if.end_crit_edge, label %if.end.i

default_operstate.exit.i.if.end_crit_edge:        ; preds = %default_operstate.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %default_operstate.exit.i
  tail call void @_raw_write_lock(ptr noundef nonnull @dev_base_lock) #4
  %link_mode.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 51
  %22 = ptrtoint ptr %link_mode.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %link_mode.i, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i8 %23, label %if.end.i.sw.epilog.i_crit_edge [
    i8 2, label %sw.bb.i
    i8 1, label %sw.bb10.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %retval.0.i.i)
  %cmp6.i = icmp eq i8 %retval.0.i.i, 6
  %spec.store.select.i = select i1 %cmp6.i, i8 4, i8 %retval.0.i.i
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %retval.0.i.i)
  %cmp12.i = icmp eq i8 %retval.0.i.i, 6
  %spec.store.select18.i = select i1 %cmp12.i, i8 5, i8 %retval.0.i.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb10.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %operstate.0.i = phi i8 [ %retval.0.i.i, %if.end.i.sw.epilog.i_crit_edge ], [ %spec.store.select18.i, %sw.bb10.i ], [ %spec.store.select.i, %sw.bb.i ]
  %25 = ptrtoint ptr %operstate1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %operstate.0.i, ptr %operstate1.i, align 8
  tail call void @_raw_write_unlock(ptr noundef nonnull @dev_base_lock) #4
  br label %if.end

if.end:                                           ; preds = %sw.epilog.i, %default_operstate.exit.i.if.end_crit_edge, %lor.lhs.false2.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @linkwatch_forget_dev(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @lweventlist_lock) #4
  %link_watch_list = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 120
  %0 = ptrtoint ptr %link_watch_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %link_watch_list, align 4
  %cmp.i.not = icmp eq ptr %1, %link_watch_list
  br i1 %cmp.i.not, label %if.end9.critedge, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link_watch_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 120, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %link_watch_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link_watch_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %link_watch_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %link_watch_list, ptr %link_watch_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 120, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %link_watch_list, ptr %prev.i3.i, align 4
  %linkwatch_dev_tracker = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 156
  %refcnt_tracker.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i, ptr noundef %linkwatch_dev_tracker) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @lweventlist_lock, i32 noundef %call2) #4
  tail call fastcc void @linkwatch_do_dev(ptr noundef %dev)
  br label %if.end9

if.end9.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @lweventlist_lock, i32 noundef %call2) #4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.critedge, %list_del_init.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @linkwatch_do_dev(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !25
  %state = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %state) #4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i, label %entry.default_operstate.exit.i_crit_edge

entry.default_operstate.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %default_operstate.exit.i

if.end.i.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i, label %if.end4.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %6 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex.i.i, align 4
  %call3.i.i = tail call i32 @dev_get_iflink(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call3.i.i)
  %cmp.not.i.i = icmp eq i32 %7, %call3.i.i
  %conv.i.i = select i1 %cmp.not.i.i, i8 2, i8 3
  br label %default_operstate.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i14.not.i.i = icmp eq i32 %10, 0
  %..i.i = select i1 %tobool.i14.not.i.i, i8 6, i8 5
  br label %default_operstate.exit.i

default_operstate.exit.i:                         ; preds = %if.end4.i.i, %if.then2.i.i, %entry.default_operstate.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %conv.i.i, %if.then2.i.i ], [ 4, %entry.default_operstate.exit.i_crit_edge ], [ %..i.i, %if.end4.i.i ]
  %operstate1.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 50
  %11 = ptrtoint ptr %operstate1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %operstate1.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i, i8 %12)
  %cmp.i = icmp eq i8 %retval.0.i.i, %12
  br i1 %cmp.i, label %default_operstate.exit.i.rfc2863_policy.exit_crit_edge, label %if.end.i

default_operstate.exit.i.rfc2863_policy.exit_crit_edge: ; preds = %default_operstate.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rfc2863_policy.exit

if.end.i:                                         ; preds = %default_operstate.exit.i
  tail call void @_raw_write_lock(ptr noundef nonnull @dev_base_lock) #4
  %link_mode.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 51
  %13 = ptrtoint ptr %link_mode.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %link_mode.i, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %14, label %if.end.i.sw.epilog.i_crit_edge [
    i8 2, label %sw.bb.i
    i8 1, label %sw.bb10.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %retval.0.i.i)
  %cmp6.i = icmp eq i8 %retval.0.i.i, 6
  %spec.store.select.i = select i1 %cmp6.i, i8 4, i8 %retval.0.i.i
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %retval.0.i.i)
  %cmp12.i = icmp eq i8 %retval.0.i.i, 6
  %spec.store.select18.i = select i1 %cmp12.i, i8 5, i8 %retval.0.i.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb10.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %operstate.0.i = phi i8 [ %retval.0.i.i, %if.end.i.sw.epilog.i_crit_edge ], [ %spec.store.select18.i, %sw.bb10.i ], [ %spec.store.select.i, %sw.bb.i ]
  %16 = ptrtoint ptr %operstate1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %operstate.0.i, ptr %operstate1.i, align 8
  tail call void @_raw_write_unlock(ptr noundef nonnull @dev_base_lock) #4
  br label %rfc2863_policy.exit

rfc2863_policy.exit:                              ; preds = %sw.epilog.i, %default_operstate.exit.i.rfc2863_policy.exit_crit_edge
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %rfc2863_policy.exit.if.end4_crit_edge, label %if.then

rfc2863_policy.exit.if.end4_crit_edge:            ; preds = %rfc2863_policy.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %rfc2863_policy.exit
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dev_activate(ptr noundef %dev) #4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dev_deactivate(ptr noundef %dev) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  tail call void @netdev_state_change(ptr noundef %dev) #4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %rfc2863_policy.exit.if.end4_crit_edge
  %tobool.not.i12 = icmp eq ptr %dev, null
  br i1 %tobool.not.i12, label %if.end4.dev_put.exit_crit_edge, label %do.body1.i

if.end4.dev_put.exit_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_put.exit

do.body1.i:                                       ; preds = %if.end4
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !26
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %23 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcpu_refcnt.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !15) #4
  %and.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %31, %25
  %32 = inttoptr i32 %add.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add13.i = add i32 %34, -1
  store i32 %add13.i, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !27
  %and.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !28

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #4, !srcloc !29
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %if.end4.dev_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @linkwatch_run_queue() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__linkwatch_run_queue(i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__linkwatch_run_queue(i32 noundef %urgent_only) unnamed_addr #0 align 64 {
entry:
  %wrk = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wrk) #4
  %0 = getelementptr inbounds %struct.list_head, ptr %wrk, i32 0, i32 1
  %1 = ptrtoint ptr %wrk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %wrk, ptr %wrk, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %wrk, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %urgent_only)
  %tobool.not = icmp eq i32 %urgent_only, 0
  %spec.select = select i1 %tobool.not, i32 100, i32 200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add3 = add i32 %3, 100
  br i1 %tobool.not, label %entry.if.end7.sink.split_crit_edge, label %if.else

entry.if.end7.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

if.else:                                          ; preds = %entry
  %4 = load i32, ptr @linkwatch_nextevent, align 4
  %sub = sub i32 %add3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then5, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.then5, %entry.if.end7.sink.split_crit_edge
  %.sink = phi i32 [ %5, %if.then5 ], [ %add3, %entry.if.end7.sink.split_crit_edge ]
  store i32 %.sink, ptr @linkwatch_nextevent, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %if.else.if.end7_crit_edge
  call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @linkwatch_flags) #4
  call void @_raw_spin_lock_irq(ptr noundef nonnull @lweventlist_lock) #4
  %6 = load volatile ptr, ptr @lweventlist, align 4
  %cmp.i.not.i = icmp eq ptr %6, @lweventlist
  br i1 %cmp.i.not.i, label %if.end7.list_splice_init.exit_crit_edge, label %if.then.i

if.end7.list_splice_init.exit_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %wrk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wrk, align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @lweventlist, i32 0, i32 1), align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %wrk, ptr %prev3.i.i, align 4
  store ptr %6, ptr %wrk, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %9, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev6.i.i, align 4
  store volatile ptr @lweventlist, ptr @lweventlist, align 4
  store ptr @lweventlist, ptr getelementptr inbounds (%struct.list_head, ptr @lweventlist, i32 0, i32 1), align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end7.list_splice_init.exit_crit_edge
  %13 = ptrtoint ptr %wrk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %wrk, align 4
  %cmp.i4446.not = icmp eq ptr %14, %wrk
  br i1 %cmp.i4446.not, label %list_splice_init.exit.while.end_crit_edge, label %list_splice_init.exit.while.body.lr.ph_crit_edge

list_splice_init.exit.while.body.lr.ph_crit_edge: ; preds = %list_splice_init.exit
  br label %while.body.lr.ph

list_splice_init.exit.while.end_crit_edge:        ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end16.while.body.lr.ph_crit_edge, %list_splice_init.exit.while.body.lr.ph_crit_edge
  %15 = phi ptr [ %35, %if.end16.while.body.lr.ph_crit_edge ], [ %14, %list_splice_init.exit.while.body.lr.ph_crit_edge ]
  %do_dev.1.ph47 = phi i32 [ %dec, %if.end16.while.body.lr.ph_crit_edge ], [ %spec.select, %list_splice_init.exit.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %list_add_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %16 = phi ptr [ %15, %while.body.lr.ph ], [ %33, %list_add_tail.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %16, i32 -1052
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #4
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %16, ptr %16, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %16, ptr %prev.i3.i, align 4
  %state.i = getelementptr i8, ptr %16, i32 -1016
  %25 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not = icmp eq i32 %27, 0
  br i1 %tobool.i.not, label %list_del_init.exit.if.then14_crit_edge, label %lor.lhs.false

list_del_init.exit.if.then14_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

lor.lhs.false:                                    ; preds = %list_del_init.exit
  br i1 %tobool.not, label %lor.lhs.false.if.end16_crit_edge, label %land.lhs.true

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = call fastcc zeroext i1 @linkwatch_urgent_event(ptr noundef %add.ptr)
  br i1 %call13, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true.if.then14_crit_edge

land.lhs.true.if.then14_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then14:                                        ; preds = %land.lhs.true.if.then14_crit_edge, %list_del_init.exit.if.then14_crit_edge
  %28 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @lweventlist, i32 0, i32 1), align 4
  %call.i.i31 = call zeroext i1 @__list_add_valid(ptr noundef %16, ptr noundef %28, ptr noundef nonnull @lweventlist) #4
  br i1 %call.i.i31, label %if.end.i.i33, label %if.then14.list_add_tail.exit_crit_edge

if.then14.list_add_tail.exit_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i33:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %16, ptr getelementptr inbounds (%struct.list_head, ptr @lweventlist, i32 0, i32 1), align 4
  %29 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @lweventlist, ptr %16, align 4
  %30 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %prev.i3.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %16, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i33, %if.then14.list_add_tail.exit_crit_edge
  %32 = ptrtoint ptr %wrk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %wrk, align 4
  %cmp.i.not = icmp eq ptr %33, %wrk
  br i1 %cmp.i.not, label %list_add_tail.exit.while.end_crit_edge, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

list_add_tail.exit.while.end_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %lor.lhs.false.if.end16_crit_edge
  %linkwatch_dev_tracker = getelementptr i8, ptr %16, i32 1200
  %refcnt_tracker.i = getelementptr i8, ptr %16, i32 -68
  %call.i = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i, ptr noundef %linkwatch_dev_tracker) #4
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @lweventlist_lock) #4
  call fastcc void @linkwatch_do_dev(ptr noundef %add.ptr)
  %dec = add nsw i32 %do_dev.1.ph47, -1
  call void @_raw_spin_lock_irq(ptr noundef nonnull @lweventlist_lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %do_dev.1.ph47)
  %cmp9 = icmp sgt i32 %do_dev.1.ph47, 1
  %34 = ptrtoint ptr %wrk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %wrk, align 4
  %cmp.i44 = icmp ne ptr %35, %wrk
  %or.cond45 = select i1 %cmp.i44, i1 %cmp9, i1 false
  br i1 %or.cond45, label %if.end16.while.body.lr.ph_crit_edge, label %if.end16.while.end_crit_edge

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end16.while.body.lr.ph_crit_edge:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.lr.ph

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %list_add_tail.exit.while.end_crit_edge, %list_splice_init.exit.while.end_crit_edge
  %36 = ptrtoint ptr %wrk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %wrk, align 4
  %cmp.i.not.i34 = icmp eq ptr %37, %wrk
  br i1 %cmp.i.not.i34, label %while.end.list_splice_init.exit38_crit_edge, label %if.then.i37

while.end.list_splice_init.exit38_crit_edge:      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_splice_init.exit38

if.then.i37:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %38 = load ptr, ptr @lweventlist, align 4
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %0, align 4
  %prev3.i.i35 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i35 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @lweventlist, ptr %prev3.i.i35, align 4
  store ptr %37, ptr @lweventlist, align 4
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %38, ptr %40, align 4
  %prev6.i.i36 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %prev6.i.i36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev6.i.i36, align 4
  %44 = ptrtoint ptr %wrk to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %wrk, ptr %wrk, align 4
  store ptr %wrk, ptr %0, align 4
  br label %list_splice_init.exit38

list_splice_init.exit38:                          ; preds = %if.then.i37, %while.end.list_splice_init.exit38_crit_edge
  %45 = load volatile ptr, ptr @lweventlist, align 4
  %cmp.i39.not = icmp eq ptr %45, @lweventlist
  br i1 %cmp.i39.not, label %list_splice_init.exit38.if.end20_crit_edge, label %if.then19

list_splice_init.exit38.if.end20_crit_edge:       ; preds = %list_splice_init.exit38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then19:                                        ; preds = %list_splice_init.exit38
  %46 = load i32, ptr @linkwatch_nextevent, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %48 = load volatile i32, ptr @linkwatch_flags, align 4
  %and1.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then19.if.end20_crit_edge

if.then19.if.end20_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.end.i:                                         ; preds = %if.then19
  %49 = load volatile i32, ptr @linkwatch_flags, align 4
  %and1.i17.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i17.i)
  %tobool11.not.i = icmp eq i32 %and1.i17.i, 0
  br i1 %tobool11.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %50 = load ptr, ptr @system_wq, align 4
  %call.i.i41 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %50, ptr noundef nonnull @linkwatch_work, i32 noundef 0) #4
  br label %if.end20

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = sub i32 %46, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.i)
  %cmp.i42 = icmp ugt i32 %sub.i, 100
  %spec.store.select.i = select i1 %cmp.i42, i32 0, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %51 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %51, ptr noundef nonnull @linkwatch_work, i32 noundef %spec.store.select.i) #4
  br label %if.end20

if.end20:                                         ; preds = %if.else.i, %if.then12.i, %if.then19.if.end20_crit_edge, %list_splice_init.exit38.if.end20_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @lweventlist_lock) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wrk) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @linkwatch_fire_event(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @linkwatch_urgent_event(ptr noundef %dev)
  %state = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %state) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @lweventlist_lock) #4
  %link_watch_list.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 120
  %0 = ptrtoint ptr %link_watch_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %link_watch_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %link_watch_list.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then.i:                                        ; preds = %if.then
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @lweventlist, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link_watch_list.i, ptr noundef %2, ptr noundef nonnull @lweventlist) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_add_tail.exit.i_crit_edge

if.then.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %link_watch_list.i, ptr getelementptr inbounds (%struct.list_head, ptr @lweventlist, i32 0, i32 1), align 4
  %3 = ptrtoint ptr %link_watch_list.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @lweventlist, ptr %link_watch_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 120, i32 1
  %4 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %prev3.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %link_watch_list.i, ptr %2, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_add_tail.exit.i_crit_edge
  %linkwatch_dev_tracker.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 156
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %list_add_tail.exit.i.if.end4_crit_edge, label %do.body1.i.i.i

list_add_tail.exit.i.if.end4_crit_edge:           ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

do.body1.i.i.i:                                   ; preds = %list_add_tail.exit.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !26
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !15) #4
  %and.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i.i.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add13.i.i.i = add i32 %18, 1
  store i32 %add13.i.i.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !27
  %and.i.i.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_hold.exit.i.i_crit_edge, !prof !28

do.body1.i.i.i.dev_hold.exit.i.i_crit_edge:       ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_hold.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %dev_hold.exit.i.i

dev_hold.exit.i.i:                                ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_hold.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #4, !srcloc !29
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i.i10.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %linkwatch_dev_tracker.i, i32 noundef 2592) #4
  br label %if.end4

if.else:                                          ; preds = %entry
  br i1 %call, label %if.end4.thread, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %dev_hold.exit.i.i, %list_add_tail.exit.i.if.end4_crit_edge, %if.then.if.end4_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @lweventlist_lock, i32 noundef %call2.i) #4
  %20 = load i32, ptr @linkwatch_nextevent, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %22 = load volatile i32, ptr @linkwatch_flags, align 4
  %and1.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.thread:                                   ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = load volatile i32, ptr @linkwatch_flags, align 4
  %and1.i.i10 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i10)
  %tobool.not.i11 = icmp eq i32 %and1.i.i10, 0
  br i1 %tobool.not.i11, label %if.end4.thread.if.then2.i_crit_edge, label %if.end4.thread.cleanup_crit_edge

if.end4.thread.cleanup_crit_edge:                 ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.thread.if.then2.i_crit_edge:              ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2.i

if.end.i:                                         ; preds = %if.end4
  %sub.i = sub i32 %20, %21
  br i1 %call, label %if.end.i.if.then2.i_crit_edge, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i

if.end.i.if.then2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i.if.then2.i_crit_edge, %if.end4.thread.if.then2.i_crit_edge
  %call3.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @linkwatch_flags) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then2.i.if.end7.i_crit_edge, label %if.then2.i.cleanup_crit_edge

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2.i.if.end7.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then2.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %delay.0.i = phi i32 [ %sub.i, %if.end.i.if.end7.i_crit_edge ], [ 0, %if.then2.i.if.end7.i_crit_edge ]
  %25 = load volatile i32, ptr @linkwatch_flags, align 4
  %and1.i17.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i17.i)
  %tobool11.not.i = icmp eq i32 %and1.i17.i, 0
  br i1 %tobool11.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef nonnull @linkwatch_work, i32 noundef 0) #4
  br label %cleanup

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %delay.0.i)
  %cmp.i = icmp ugt i32 %delay.0.i, 100
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %delay.0.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i.i9 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %27, ptr noundef nonnull @linkwatch_work, i32 noundef %spec.store.select.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then12.i, %if.then2.i.cleanup_crit_edge, %if.end4.thread.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.else.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @linkwatch_urgent_event(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex, align 4
  %call1 = tail call i32 @dev_get_iflink(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call1)
  %cmp.not = icmp eq i32 %3, %call1
  br i1 %cmp.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end3:                                          ; preds = %if.end
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.netif_is_lag_port.exit_crit_edge, label %netif_is_bond_slave.exit.i

if.end3.netif_is_lag_port.exit_crit_edge:         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %netif_is_lag_port.exit

netif_is_bond_slave.exit.i:                       ; preds = %if.end3
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i16 = and i64 %7, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i16)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i16, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.netif_is_lag_port.exit_crit_edge, label %netif_is_bond_slave.exit.i.return_crit_edge

netif_is_bond_slave.exit.i.return_crit_edge:      ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

netif_is_bond_slave.exit.i.netif_is_lag_port.exit_crit_edge: ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %netif_is_lag_port.exit

netif_is_lag_port.exit:                           ; preds = %netif_is_bond_slave.exit.i.netif_is_lag_port.exit_crit_edge, %if.end3.netif_is_lag_port.exit_crit_edge
  %priv_flags.i3.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %8 = ptrtoint ptr %priv_flags.i3.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %priv_flags.i3.i, align 16
  %and.i4.i = and i64 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i)
  %tobool.i.i.not = icmp eq i64 %and.i4.i, 0
  br i1 %tobool.i.i.not, label %lor.lhs.false, label %netif_is_lag_port.exit.return_crit_edge

netif_is_lag_port.exit.return_crit_edge:          ; preds = %netif_is_lag_port.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %netif_is_lag_port.exit
  %and.i.i18 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i18)
  %tobool.not.i.i19 = icmp eq i32 %and.i.i18, 0
  br i1 %tobool.not.i.i19, label %lor.lhs.false.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i

lor.lhs.false.netif_is_lag_master.exit_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %netif_is_lag_master.exit

netif_is_bond_master.exit.i:                      ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %priv_flags.i3.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %priv_flags.i3.i, align 16
  %and1.i.i21 = and i64 %11, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i21)
  %tobool2.i.not.i22 = icmp eq i64 %and1.i.i21, 0
  br i1 %tobool2.i.not.i22, label %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i.return_crit_edge

netif_is_bond_master.exit.i.return_crit_edge:     ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge: ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %netif_is_lag_master.exit

netif_is_lag_master.exit:                         ; preds = %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, %lor.lhs.false.netif_is_lag_master.exit_crit_edge
  %12 = ptrtoint ptr %priv_flags.i3.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %priv_flags.i3.i, align 16
  %and.i4.i24 = and i64 %13, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i24)
  %tobool.i.i25.not = icmp eq i64 %and.i4.i24, 0
  br i1 %tobool.i.i25.not, label %if.end7, label %netif_is_lag_master.exit.return_crit_edge

netif_is_lag_master.exit.return_crit_edge:        ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end7:                                          ; preds = %netif_is_lag_master.exit
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %land.rhs, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

land.rhs:                                         ; preds = %if.end7
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %17 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp8.not.i = icmp eq i32 %18, 0
  br i1 %cmp8.not.i, label %land.rhs.return_crit_edge, label %for.body.lr.ph.i

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

for.body.lr.ph.i:                                 ; preds = %land.rhs
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %19 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i, align 128
  %qdisc.i28 = getelementptr %struct.netdev_queue, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %qdisc.i28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %qdisc.i28, align 8
  %qdisc_sleeping.i29 = getelementptr %struct.netdev_queue, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %qdisc_sleeping.i29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %qdisc_sleeping.i29, align 4
  %cmp2.not.i30 = icmp eq ptr %22, %24
  br i1 %cmp2.not.i30, label %for.body.lr.ph.i.for.cond.i_crit_edge, label %for.body.lr.ph.i.return_crit_edge

for.body.lr.ph.i.return_crit_edge:                ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %i.09.i31 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw i32 %i.09.i31, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %18)
  %exitcond.not.i = icmp eq i32 %inc.i, %18
  br i1 %exitcond.not.i, label %for.cond.i.return.loopexit_crit_edge, label %for.body.i

for.cond.i.return.loopexit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.loopexit

for.body.i:                                       ; preds = %for.cond.i
  %qdisc.i = getelementptr %struct.netdev_queue, ptr %20, i32 %inc.i, i32 2
  %25 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %qdisc.i, align 8
  %qdisc_sleeping.i = getelementptr %struct.netdev_queue, ptr %20, i32 %inc.i, i32 3
  %27 = ptrtoint ptr %qdisc_sleeping.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qdisc_sleeping.i, align 4
  %cmp2.not.i = icmp eq ptr %26, %28
  br i1 %cmp2.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.return.loopexit_crit_edge

for.body.i.return.loopexit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.loopexit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

return.loopexit:                                  ; preds = %for.body.i.return.loopexit_crit_edge, %for.cond.i.return.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %18)
  %cmp.i.le = icmp ult i32 %inc.i, %18
  br label %return

return:                                           ; preds = %return.loopexit, %for.body.lr.ph.i.return_crit_edge, %land.rhs.return_crit_edge, %if.end7.return_crit_edge, %netif_is_lag_master.exit.return_crit_edge, %netif_is_bond_master.exit.i.return_crit_edge, %netif_is_lag_port.exit.return_crit_edge, %netif_is_bond_slave.exit.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %if.end.return_crit_edge ], [ true, %netif_is_lag_master.exit.return_crit_edge ], [ true, %netif_is_lag_port.exit.return_crit_edge ], [ false, %if.end7.return_crit_edge ], [ false, %land.rhs.return_crit_edge ], [ true, %netif_is_bond_slave.exit.i.return_crit_edge ], [ true, %netif_is_bond_master.exit.i.return_crit_edge ], [ true, %for.body.lr.ph.i.return_crit_edge ], [ %cmp.i.le, %return.loopexit ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_iflink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_activate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_deactivate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_state_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @linkwatch_event(ptr nocapture noundef readnone %dummy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load i32, ptr @linkwatch_nextevent, align 4
  %sub = sub i32 %0, %1
  %sub.lobit = lshr i32 %sub, 31
  tail call fastcc void @__linkwatch_run_queue(i32 noundef %sub.lobit)
  tail call void @rtnl_unlock() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__ksymtab_linkwatch_fire_event, !1, !"__ksymtab_linkwatch_fire_event", i1 false, i1 false}
!1 = !{!"../net/core/link_watch.c", i32 279, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/core/link_watch.c", i32 33, i32 8}
!4 = !{ptr @lweventlist_lock, !3, !"lweventlist_lock", i1 false, i1 false}
!5 = !{ptr @linkwatch_nextevent, !6, !"linkwatch_nextevent", i1 false, i1 false}
!6 = !{!"../net/core/link_watch.c", i32 27, i32 22}
!7 = !{ptr @linkwatch_flags, !8, !"linkwatch_flags", i1 false, i1 false}
!8 = !{!"../net/core/link_watch.c", i32 26, i32 22}
!9 = !{ptr @lweventlist, !10, !"lweventlist", i1 false, i1 false}
!10 = !{!"../net/core/link_watch.c", i32 32, i32 8}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/core/link_watch.c", i32 30, i32 8}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @linkwatch_work, !12, !"linkwatch_work", i1 false, i1 false}
!15 = !{!"sp"}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2157135988}
!26 = !{i64 748067, i64 748128}
!27 = !{i64 750799}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 751084}
