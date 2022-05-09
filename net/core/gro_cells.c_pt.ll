; ModuleID = '/llk/IR_all_yes/net/core/gro_cells.c_pt.bc'
source_filename = "../net/core/gro_cells.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+gro_cells_receive\22, \22a\22\09"
module asm "\09.weak\09__crc_gro_cells_receive\09\09\09\09"
module asm "\09.long\09__crc_gro_cells_receive\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gro_cells_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22gro_cells_receive\22\09\09\09\09\09"
module asm "__kstrtabns_gro_cells_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gro_cells_init\22, \22a\22\09"
module asm "\09.weak\09__crc_gro_cells_init\09\09\09\09"
module asm "\09.long\09__crc_gro_cells_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gro_cells_init:\09\09\09\09\09"
module asm "\09.asciz \09\22gro_cells_init\22\09\09\09\09\09"
module asm "__kstrtabns_gro_cells_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gro_cells_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_gro_cells_destroy\09\09\09\09"
module asm "\09.long\09__crc_gro_cells_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gro_cells_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22gro_cells_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_gro_cells_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.93, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.93 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.0, %union.anon.94, %union.anon.95, [48 x i8], %union.anon.96, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.98, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%union.anon.94 = type { ptr }
%union.anon.95 = type { i64 }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { i32, ptr }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.100, i32, i32, i32, i16, i16, %union.anon.102, i32, %union.anon.103, %union.anon.104, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.100 = type { i32 }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%union.anon.104 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon, i32, %struct.spinlock }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.sk_buff_list = type { ptr, ptr }
%struct.gro_cell = type { %struct.sk_buff_head, %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }

@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@netdev_max_backlog = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_gro_cells_receive = external dso_local constant [0 x i8], align 1
@__kstrtabns_gro_cells_receive = external dso_local constant [0 x i8], align 1
@__ksymtab_gro_cells_receive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gro_cells_receive to i32), ptr @__kstrtab_gro_cells_receive, ptr @__kstrtabns_gro_cells_receive }, section "___ksymtab+gro_cells_receive", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_gro_cells_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_gro_cells_init = external dso_local constant [0 x i8], align 1
@__ksymtab_gro_cells_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gro_cells_init to i32), ptr @__kstrtab_gro_cells_init, ptr @__kstrtabns_gro_cells_init }, section "___ksymtab+gro_cells_init", align 4
@__kstrtab_gro_cells_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_gro_cells_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_gro_cells_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gro_cells_destroy to i32), ptr @__kstrtab_gro_cells_destroy, ptr @__kstrtabns_gro_cells_destroy }, section "___ksymtab+gro_cells_destroy", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [24 x i8] c"../net/core/gro_cells.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 695, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 723, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_gro_cells_destroy, ptr @__ksymtab_gro_cells_init, ptr @__ksymtab_gro_cells_receive, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gro_cells_receive(ptr nocapture noundef readonly %gcells, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.1, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %3 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %flags = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %rcu_read_lock.exit.drop_crit_edge, label %if.end, !prof !24

rcu_read_lock.exit.drop_crit_edge:                ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

if.end:                                           ; preds = %rcu_read_lock.exit
  %9 = ptrtoint ptr %gcells to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gcells, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %if.end.if.then8_crit_edge, label %lor.lhs.false

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %11 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i33 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i33, label %lor.lhs.false.lor.lhs.false6_crit_edge, label %skb_cloned.exit

lor.lhs.false.lor.lhs.false6_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false6

skb_cloned.exit:                                  ; preds = %lor.lhs.false
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %12 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #7
  %14 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %15, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.lor.lhs.false6_crit_edge, label %skb_cloned.exit.if.then8_crit_edge

skb_cloned.exit.if.then8_crit_edge:               ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

skb_cloned.exit.lor.lhs.false6_crit_edge:         ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %skb_cloned.exit.lor.lhs.false6_crit_edge, %lor.lhs.false.lor.lhs.false6_crit_edge
  %features.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 23
  %16 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %features.i, align 16
  %and.i34 = and i64 %17, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i34)
  %tobool.not.i35 = icmp eq i64 %and.i34, 0
  br i1 %tobool.not.i35, label %lor.lhs.false6.if.then8_crit_edge, label %netif_elide_gro.exit

lor.lhs.false6.if.then8_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

netif_elide_gro.exit:                             ; preds = %lor.lhs.false6
  %xdp_prog.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 90
  %18 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xdp_prog.i, align 16
  %tobool1.not.i.not = icmp eq ptr %19, null
  br i1 %tobool1.not.i.not, label %do.body, label %netif_elide_gro.exit.if.then8_crit_edge

netif_elide_gro.exit.if.then8_crit_edge:          ; preds = %netif_elide_gro.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then8:                                         ; preds = %netif_elide_gro.exit.if.then8_crit_edge, %lor.lhs.false6.if.then8_crit_edge, %skb_cloned.exit.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %call9 = tail call i32 @netif_rx(ptr noundef %skb) #7
  br label %unlock

do.body:                                          ; preds = %netif_elide_gro.exit
  %20 = ptrtoint ptr %gcells to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gcells, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i36 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i36 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %add = add i32 %28, %22
  %29 = inttoptr i32 %add to ptr
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qlen.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @netdev_max_backlog to i32))
  %32 = load i32, ptr @netdev_max_backlog, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %32)
  %cmp = icmp ugt i32 %31, %32
  br i1 %cmp, label %do.body.drop_crit_edge, label %if.end16

do.body.drop_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

drop:                                             ; preds = %do.body.drop_crit_edge, %rcu_read_lock.exit.drop_crit_edge
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 37
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_dropped, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %rx_dropped, i32 1, i32 3, i32 1) #7
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_dropped, ptr %rx_dropped, i32 1, ptr elementtype(i32) %rx_dropped) #7, !srcloc !25
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %unlock

if.end16:                                         ; preds = %do.body
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %29, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.1, ptr %skb, i32 0, i32 1
  %37 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %skb, ptr %35, align 4
  %39 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qlen.i, align 4
  %add.i.i.i37 = add i32 %40, 1
  store volatile i32 %add.i.i.i37, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp20 = icmp eq i32 %40, 0
  br i1 %cmp20, label %if.then21, label %if.end16.unlock_crit_edge

if.end16.unlock_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then21:                                        ; preds = %if.end16
  %napi = getelementptr inbounds %struct.gro_cell, ptr %29, i32 0, i32 1
  %call.i39 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #7
  br i1 %call.i39, label %if.then.i40, label %if.then21.unlock_crit_edge

if.then21.unlock_crit_edge:                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then.i40:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %napi) #7
  br label %unlock

unlock:                                           ; preds = %if.then.i40, %if.then21.unlock_crit_edge, %if.end16.unlock_crit_edge, %drop, %if.then8
  %res.0 = phi i32 [ 1, %drop ], [ %call9, %if.then8 ], [ 0, %if.end16.unlock_crit_edge ], [ 0, %if.then21.unlock_crit_edge ], [ 0, %if.then.i40 ]
  %call.i41 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i41, label %unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i44

unlock.rcu_read_unlock.exit_crit_edge:            ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i44:                                ; preds = %unlock
  %call1.i42 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %tobool.not.i43 = icmp eq i32 %call1.i42, 0
  br i1 %tobool.not.i43, label %land.lhs.true.i44.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i46

land.lhs.true.i44.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i46:                               ; preds = %land.lhs.true.i44
  %.b4.i45 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i45, label %land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge, label %if.then.i47

land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i47:                                      ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i47, %land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i44.rcu_read_unlock.exit_crit_edge, %unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !26
  %41 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i.i.i48 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i48 to ptr
  %preempt_count.i.i.i.i49 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i49, align 4
  %sub.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i49, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gro_cells_init(ptr nocapture noundef %gcells, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 280, i32 noundef 8) #10
  %0 = ptrtoint ptr %gcells to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %gcells, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %call214 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call214, i32 %1)
  %cmp15 = icmp ult i32 %call214, %1
  br i1 %cmp15, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call216 = phi i32 [ %call2, %for.body.for.body_crit_edge ], [ %call214, %for.cond.preheader.for.body_crit_edge ]
  %2 = ptrtoint ptr %gcells to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gcells, align 4
  %4 = ptrtoint ptr %3 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call216
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, %4
  %7 = inttoptr i32 %add to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i, align 4
  %napi = getelementptr inbounds %struct.gro_cell, ptr %7, i32 0, i32 1
  %state = getelementptr inbounds %struct.gro_cell, ptr %7, i32 0, i32 1, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state) #7
  tail call void @netif_napi_add(ptr noundef %dev, ptr noundef %napi, ptr noundef nonnull @gro_cell_poll, i32 noundef 64) #7
  tail call void @napi_enable(ptr noundef %napi) #7
  %call2 = tail call i32 @cpumask_next(i32 noundef %call216, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gro_cell_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp17 = icmp sgt i32 %budget, 0
  br i1 %cmp17, label %while.body.lr.ph, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

while.body.lr.ph:                                 ; preds = %entry
  %qlen.i.i = getelementptr i8, ptr %napi, i32 -48
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %work_done.018 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %cmp.i.i = icmp eq ptr %1, %add.ptr
  %tobool.not.i14 = icmp eq ptr %1, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i14
  br i1 %tobool.not.i, label %if.then3.critedge, label %if.end

if.end:                                           ; preds = %while.body
  %2 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %1, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.1, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %prev17.i.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %7, align 8
  %call1 = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %1) #7
  %inc = add nuw nsw i32 %work_done.018, 1
  %exitcond.not = icmp eq i32 %inc, %budget
  br i1 %exitcond.not, label %if.end.if.end5_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3.critedge:                                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.018) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then3.critedge, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %work_done.016 = phi i32 [ %work_done.018, %if.then3.critedge ], [ 0, %entry.if.end5_crit_edge ], [ %budget, %if.end.if.end5_crit_edge ]
  ret i32 %work_done.016
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gro_cells_destroy(ptr nocapture noundef %gcells) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gcells to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gcells, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %call13 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %2)
  %cmp14 = icmp ult i32 %call13, %2
  br i1 %cmp14, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %__skb_queue_purge.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call15 = phi i32 [ %call, %__skb_queue_purge.exit.for.body_crit_edge ], [ %call13, %for.cond.preheader.for.body_crit_edge ]
  %3 = ptrtoint ptr %gcells to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gcells, align 4
  %5 = ptrtoint ptr %4 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call15
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %5
  %8 = inttoptr i32 %add to ptr
  %napi = getelementptr inbounds %struct.gro_cell, ptr %8, i32 0, i32 1
  tail call void @napi_disable(ptr noundef %napi) #7
  tail call void @__netif_napi_del(ptr noundef %napi) #7
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %cmp.i.i2.i = icmp eq ptr %10, %8
  %tobool.not.i13.i = icmp eq ptr %10, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %for.body.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

for.body.__skb_queue_purge.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %for.body
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %8, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %11 = phi ptr [ %10, %while.body.lr.ph.i ], [ %21, %while.body.i.while.body.i_crit_edge ]
  %12 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.1, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %11, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.1, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %17, ptr %prev17.i.i.i, align 4
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %15, ptr %17, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %11, i32 noundef 0) #7
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %8, align 4
  %cmp.i.i.i = icmp eq ptr %21, %8
  %tobool.not.i1.i = icmp eq ptr %21, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %for.body.__skb_queue_purge.exit_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call15, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %22
  br i1 %cmp, label %__skb_queue_purge.exit.for.body_crit_edge, label %__skb_queue_purge.exit.for.end_crit_edge

__skb_queue_purge.exit.for.end_crit_edge:         ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

__skb_queue_purge.exit.for.body_crit_edge:        ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %__skb_queue_purge.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @synchronize_net() #7
  %23 = ptrtoint ptr %gcells to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gcells, align 4
  tail call void @free_percpu(ptr noundef %24) #7
  %25 = ptrtoint ptr %gcells to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %gcells, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__ksymtab_gro_cells_receive, !1, !"__ksymtab_gro_cells_receive", i1 false, i1 false}
!1 = !{!"../net/core/gro_cells.c", i32 47, i32 1}
!2 = !{ptr @__ksymtab_gro_cells_init, !3, !"__ksymtab_gro_cells_init", i1 false, i1 false}
!3 = !{!"../net/core/gro_cells.c", i32 90, i32 1}
!4 = !{ptr @__ksymtab_gro_cells_destroy, !5, !"__ksymtab_gro_cells_destroy", i1 false, i1 false}
!5 = !{!"../net/core/gro_cells.c", i32 113, i32 1}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{!"sp"}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2149645783}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2148349146, i64 2148349172, i64 2148349201, i64 2148349235, i64 2148349266, i64 2148349289}
!26 = !{i64 2149646049}
