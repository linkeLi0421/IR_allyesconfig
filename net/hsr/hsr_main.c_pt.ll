; ModuleID = '/llk/IR_all_yes/net/hsr/hsr_main.c_pt.bc'
source_filename = "../net/hsr/hsr_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hsr_get_version\22, \22a\22\09"
module asm "\09.weak\09__crc_hsr_get_version\09\09\09\09"
module asm "\09.long\09__crc_hsr_get_version\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hsr_get_version:\09\09\09\09\09"
module asm "\09.asciz \09\22hsr_get_version\22\09\09\09\09\09"
module asm "__kstrtabns_hsr_get_version:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hsr_priv = type { %struct.callback_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, i32, i16, i16, i32, %struct.spinlock, %struct.spinlock, ptr, i8, i8, [6 x i8], ptr }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.hsr_port = type { %struct.list_head, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.115, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.115 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@hsr_port_get_hsr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/hsr/hsr_main.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_hsr_get_version = external dso_local constant [0 x i8], align 1
@__kstrtabns_hsr_get_version = external dso_local constant [0 x i8], align 1
@__ksymtab_hsr_get_version = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hsr_get_version to i32), ptr @__kstrtab_hsr_get_version, ptr @__kstrtabns_hsr_get_version }, section "___ksymtab+hsr_get_version", align 4
@hsr_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @hsr_netdev_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_hsr__348_168_hsr_init6 = internal global ptr @hsr_init, section ".initcall6.init", align 4
@__exitcall_hsr_exit = internal global ptr @hsr_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file349 = internal constant [21 x i8] c"hsr.file=net/hsr/hsr\00", section ".modinfo", align 1
@__UNIQUE_ID_license350 = internal constant [16 x i8] c"hsr.license=GPL\00", section ".modinfo", align 1
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Could not update HSR node address.\0A\00", [60 x i8] zeroinitializer }, align 32
@hsr_port_get_rtnl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/hsr/hsr_slave.h\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@hsr_port_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@hsr_slave_empty.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 6, i64 7, i64 8, i64 11, i64 15]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 128, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"hsr_nb\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 145, i32 30 }
@___asan_gen_.16 = private constant [22 x i8] c"../net/hsr/hsr_main.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 92, i32 9 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 24, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [23 x i8] c"../net/hsr/hsr_slave.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 26, i32 5 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_file349, ptr @__UNIQUE_ID_license350, ptr @__exitcall_hsr_exit, ptr @__initcall__kmod_hsr__348_168_hsr_init6, ptr @__ksymtab_hsr_get_version, ptr @hsr_exit, ptr @.str, ptr @.str.1, ptr @hsr_nb, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hsr_port_get_hsr(ptr noundef %hsr, i32 noundef %pt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b26 = load i1, ptr @hsr_port_get_hsr.__warned, align 1
  br i1 %.b26, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @hsr_port_get_hsr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %ports = getelementptr inbounds %struct.hsr_priv, ptr %hsr, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %port.0.in = phi ptr [ %ports, %do.end ], [ %port.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %port.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %port.0 = load volatile ptr, ptr %port.0.in, align 4
  %cmp.not = icmp eq ptr %port.0, %ports
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %type = getelementptr inbounds %struct.hsr_port, ptr %port.0, i32 0, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %cmp10 = icmp eq i32 %2, %pt
  br i1 %cmp10, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %port.0, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hsr_get_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ver) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prot_version = getelementptr i8, ptr %dev, i32 2440
  %0 = ptrtoint ptr %prot_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prot_version, align 4
  %2 = ptrtoint ptr %ver to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %ver, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hsr_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hsr_netlink_exit() #9
  tail call void @hsr_debugfs_remove_root() #6
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @hsr_nb) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @hsr_netlink_exit() local_unnamed_addr #5 section ".exit.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_debugfs_remove_root() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hsr_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @hsr_nb) #6
  %call1 = tail call i32 @hsr_netlink_init() #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsr_netdev_notify(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %list_kill = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list_kill) #6
  %0 = getelementptr inbounds %struct.list_head, ptr %list_kill, i32 0, i32 1
  %1 = ptrtoint ptr %list_kill to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list_kill, ptr %list_kill, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list_kill, ptr %0, align 4
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptr, align 4
  %call.i = call i32 @rtnl_is_locked() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.if.end29.i_crit_edge

entry.if.end29.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

land.rhs.i:                                       ; preds = %entry
  %.b54.i = load i1, ptr @hsr_port_get_rtnl.__already_done, align 1
  br i1 %.b54.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !35

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @hsr_port_get_rtnl.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 24, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 24) #6
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %entry.if.end29.i_crit_edge
  %call37.i = call zeroext i1 @hsr_port_exists(ptr noundef %4) #6
  br i1 %call37.i, label %do.body38.i, label %if.end29.i.if.then_crit_edge

if.end29.i.if.then_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

do.body38.i:                                      ; preds = %if.end29.i
  %call39.i = call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call39.i, label %do.body38.i.hsr_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

do.body38.i.hsr_port_get_rtnl.exit_crit_edge:     ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hsr_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %do.body38.i
  %call40.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %land.lhs.true.i.hsr_port_get_rtnl.exit_crit_edge, label %land.lhs.true42.i

land.lhs.true.i.hsr_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hsr_port_get_rtnl.exit

land.lhs.true42.i:                                ; preds = %land.lhs.true.i
  %.b5253.i = load i1, ptr @hsr_port_get_rtnl.__warned, align 1
  br i1 %.b5253.i, label %land.lhs.true42.i.hsr_port_get_rtnl.exit_crit_edge, label %if.then44.i

land.lhs.true42.i.hsr_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hsr_port_get_rtnl.exit

if.then44.i:                                      ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @hsr_port_get_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 26, ptr noundef nonnull @.str.5) #6
  br label %hsr_port_get_rtnl.exit

hsr_port_get_rtnl.exit:                           ; preds = %if.then44.i, %land.lhs.true42.i.hsr_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.hsr_port_get_rtnl.exit_crit_edge, %do.body38.i.hsr_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 95
  %5 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_handler_data.i, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %hsr_port_get_rtnl.exit.if.then_crit_edge, label %if.else

hsr_port_get_rtnl.exit.if.then_crit_edge:         ; preds = %hsr_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %hsr_port_get_rtnl.exit.if.then_crit_edge, %if.end29.i.if.then_crit_edge
  %call2 = call zeroext i1 @is_hsr_master(ptr noundef %4) #6
  br i1 %call2, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %4, i32 2304
  %call.i97 = call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool.not.i98 = icmp eq i32 %call.i97, 0
  br i1 %tobool.not.i98, label %land.lhs.true.i99, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i99:                                ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i99.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i99.do.end.i_crit_edge:             ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i99
  %.b26.i = load i1, ptr @hsr_port_get_hsr.__warned, align 1
  br i1 %.b26.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i100

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then.i100:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @hsr_port_get_hsr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.1) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i100, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i99.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %ports.i = getelementptr i8, ptr %4, i32 2312
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %port.0.in.i = phi ptr [ %ports.i, %do.end.i ], [ %port.0.i, %for.body.i.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %port.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %port.0.i = load volatile ptr, ptr %port.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %port.0.i, %ports.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %type.i = getelementptr inbounds %struct.hsr_port, ptr %port.0.i, i32 0, i32 3
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  %cmp10.i = icmp eq i32 %9, 4
  br i1 %cmp10.i, label %hsr_port_get_hsr.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

hsr_port_get_hsr.exit:                            ; preds = %for.body.i
  %tobool6.not = icmp eq ptr %port.0.i, null
  br i1 %tobool6.not, label %hsr_port_get_hsr.exit.cleanup_crit_edge, label %hsr_port_get_hsr.exit.if.end10_crit_edge

hsr_port_get_hsr.exit.if.end10_crit_edge:         ; preds = %hsr_port_get_hsr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

hsr_port_get_hsr.exit.cleanup_crit_edge:          ; preds = %hsr_port_get_hsr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %hsr_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #8
  %hsr9 = getelementptr inbounds %struct.hsr_port, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %hsr9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hsr9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %hsr_port_get_hsr.exit.if.end10_crit_edge
  %port.0 = phi ptr [ %6, %if.else ], [ %port.0.i, %hsr_port_get_hsr.exit.if.end10_crit_edge ]
  %hsr.0 = phi ptr [ %11, %if.else ], [ %add.ptr.i, %hsr_port_get_hsr.exit.if.end10_crit_edge ]
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end10.sw.epilog_crit_edge [
    i32 1, label %if.end10.sw.bb_crit_edge
    i32 2, label %if.end10.sw.bb_crit_edge213
    i32 4, label %if.end10.sw.bb_crit_edge214
    i32 11, label %sw.bb11
    i32 8, label %sw.bb15
    i32 7, label %sw.bb39
    i32 6, label %sw.bb49
    i32 15, label %if.end10.cleanup_crit_edge
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10.sw.bb_crit_edge214:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end10.sw.bb_crit_edge213:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end10.sw.bb_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end10.sw.bb_crit_edge, %if.end10.sw.bb_crit_edge213, %if.end10.sw.bb_crit_edge214
  call void @hsr_check_carrier_and_operstate(ptr noundef %hsr.0) #6
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end10
  %call12 = call zeroext i1 @is_hsr_master(ptr noundef %4) #6
  br i1 %call12, label %if.then13, label %sw.bb11.sw.epilog_crit_edge

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then13:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  call void @hsr_debugfs_rename(ptr noundef %4) #6
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end10
  %type = getelementptr inbounds %struct.hsr_port, ptr %port.0, i32 0, i32 3
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp = icmp eq i32 %14, 4
  br i1 %cmp, label %sw.bb15.sw.epilog_crit_edge, label %if.end17

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end17:                                         ; preds = %sw.bb15
  %call.i101 = call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool.not.i102 = icmp eq i32 %call.i101, 0
  br i1 %tobool.not.i102, label %land.lhs.true.i105, label %if.end17.do.end.i110_crit_edge

if.end17.do.end.i110_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i110

land.lhs.true.i105:                               ; preds = %if.end17
  %call1.i103 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i103)
  %tobool2.not.i104 = icmp eq i32 %call1.i103, 0
  br i1 %tobool2.not.i104, label %land.lhs.true.i105.do.end.i110_crit_edge, label %land.lhs.true3.i107

land.lhs.true.i105.do.end.i110_crit_edge:         ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i110

land.lhs.true3.i107:                              ; preds = %land.lhs.true.i105
  %.b26.i106 = load i1, ptr @hsr_port_get_hsr.__warned, align 1
  br i1 %.b26.i106, label %land.lhs.true3.i107.do.end.i110_crit_edge, label %if.then.i108

land.lhs.true3.i107.do.end.i110_crit_edge:        ; preds = %land.lhs.true3.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i110

if.then.i108:                                     ; preds = %land.lhs.true3.i107
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @hsr_port_get_hsr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.1) #6
  br label %do.end.i110

do.end.i110:                                      ; preds = %if.then.i108, %land.lhs.true3.i107.do.end.i110_crit_edge, %land.lhs.true.i105.do.end.i110_crit_edge, %if.end17.do.end.i110_crit_edge
  %ports.i109 = getelementptr inbounds %struct.hsr_priv, ptr %hsr.0, i32 0, i32 1
  br label %for.cond.i114

for.cond.i114:                                    ; preds = %for.body.i117.for.cond.i114_crit_edge, %do.end.i110
  %port.0.in.i111 = phi ptr [ %ports.i109, %do.end.i110 ], [ %port.0.i112, %for.body.i117.for.cond.i114_crit_edge ]
  %15 = ptrtoint ptr %port.0.in.i111 to i32
  call void @__asan_load4_noabort(i32 %15)
  %port.0.i112 = load volatile ptr, ptr %port.0.in.i111, align 4
  %cmp.not.i113 = icmp eq ptr %port.0.i112, %ports.i109
  br i1 %cmp.not.i113, label %for.cond.i114.hsr_port_get_hsr.exit119_crit_edge, label %for.body.i117

for.cond.i114.hsr_port_get_hsr.exit119_crit_edge: ; preds = %for.cond.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %hsr_port_get_hsr.exit119

for.body.i117:                                    ; preds = %for.cond.i114
  %type.i115 = getelementptr inbounds %struct.hsr_port, ptr %port.0.i112, i32 0, i32 3
  %16 = ptrtoint ptr %type.i115 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i115, align 4
  %cmp10.i116 = icmp eq i32 %17, 4
  br i1 %cmp10.i116, label %for.body.i117.hsr_port_get_hsr.exit119_crit_edge, label %for.body.i117.for.cond.i114_crit_edge

for.body.i117.for.cond.i114_crit_edge:            ; preds = %for.body.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i114

for.body.i117.hsr_port_get_hsr.exit119_crit_edge: ; preds = %for.body.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %hsr_port_get_hsr.exit119

hsr_port_get_hsr.exit119:                         ; preds = %for.body.i117.hsr_port_get_hsr.exit119_crit_edge, %for.cond.i114.hsr_port_get_hsr.exit119_crit_edge
  %retval.0.i118 = phi ptr [ %port.0.i112, %for.body.i117.hsr_port_get_hsr.exit119_crit_edge ], [ null, %for.cond.i114.hsr_port_get_hsr.exit119_crit_edge ]
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp20 = icmp eq i32 %19, 1
  br i1 %cmp20, label %if.then21, label %hsr_port_get_hsr.exit119.if.end25_crit_edge

hsr_port_get_hsr.exit119.if.end25_crit_edge:      ; preds = %hsr_port_get_hsr.exit119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then21:                                        ; preds = %hsr_port_get_hsr.exit119
  call void @__sanitizer_cov_trace_pc() #8
  %dev22 = getelementptr inbounds %struct.hsr_port, ptr %retval.0.i118, i32 0, i32 1
  %20 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev22, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 86
  %22 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_addr, align 64
  call void @dev_addr_mod(ptr noundef %21, i32 noundef 0, ptr noundef %23, i32 noundef 6) #6
  %24 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev22, align 4
  %call24 = call i32 @call_netdevice_notifiers(i32 noundef 8, ptr noundef %25) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %hsr_port_get_hsr.exit119.if.end25_crit_edge
  %call.i120 = call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool.not.i121 = icmp eq i32 %call.i120, 0
  br i1 %tobool.not.i121, label %land.lhs.true.i124, label %if.end25.for.cond.i133.preheader_crit_edge

if.end25.for.cond.i133.preheader_crit_edge:       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i133.preheader

land.lhs.true.i124:                               ; preds = %if.end25
  %call1.i122 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i122)
  %tobool2.not.i123 = icmp eq i32 %call1.i122, 0
  br i1 %tobool2.not.i123, label %land.lhs.true.i124.for.cond.i133.preheader_crit_edge, label %land.lhs.true3.i126

land.lhs.true.i124.for.cond.i133.preheader_crit_edge: ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i133.preheader

land.lhs.true3.i126:                              ; preds = %land.lhs.true.i124
  %.b26.i125 = load i1, ptr @hsr_port_get_hsr.__warned, align 1
  br i1 %.b26.i125, label %land.lhs.true3.i126.for.cond.i133.preheader_crit_edge, label %if.then.i127

land.lhs.true3.i126.for.cond.i133.preheader_crit_edge: ; preds = %land.lhs.true3.i126
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i133.preheader

if.then.i127:                                     ; preds = %land.lhs.true3.i126
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @hsr_port_get_hsr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.1) #6
  br label %for.cond.i133.preheader

for.cond.i133.preheader:                          ; preds = %if.then.i127, %land.lhs.true3.i126.for.cond.i133.preheader_crit_edge, %land.lhs.true.i124.for.cond.i133.preheader_crit_edge, %if.end25.for.cond.i133.preheader_crit_edge
  br label %for.cond.i133

for.cond.i133:                                    ; preds = %for.body.i136.for.cond.i133_crit_edge, %for.cond.i133.preheader
  %port.0.in.i130 = phi ptr [ %port.0.i131, %for.body.i136.for.cond.i133_crit_edge ], [ %ports.i109, %for.cond.i133.preheader ]
  %26 = ptrtoint ptr %port.0.in.i130 to i32
  call void @__asan_load4_noabort(i32 %26)
  %port.0.i131 = load volatile ptr, ptr %port.0.in.i130, align 4
  %cmp.not.i132 = icmp eq ptr %port.0.i131, %ports.i109
  br i1 %cmp.not.i132, label %hsr_port_get_hsr.exit138.thread, label %for.body.i136

hsr_port_get_hsr.exit138.thread:                  ; preds = %for.cond.i133
  call void @__sanitizer_cov_trace_pc() #8
  %dev27197 = getelementptr inbounds %struct.hsr_port, ptr %retval.0.i118, i32 0, i32 1
  %27 = ptrtoint ptr %dev27197 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev27197, align 4
  %dev_addr28198 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 86
  %29 = ptrtoint ptr %dev_addr28198 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_addr28198, align 64
  br label %cond.end

for.body.i136:                                    ; preds = %for.cond.i133
  %type.i134 = getelementptr inbounds %struct.hsr_port, ptr %port.0.i131, i32 0, i32 3
  %31 = ptrtoint ptr %type.i134 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type.i134, align 4
  %cmp10.i135 = icmp eq i32 %32, 2
  br i1 %cmp10.i135, label %hsr_port_get_hsr.exit138, label %for.body.i136.for.cond.i133_crit_edge

for.body.i136.for.cond.i133_crit_edge:            ; preds = %for.body.i136
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i133

hsr_port_get_hsr.exit138:                         ; preds = %for.body.i136
  %dev27 = getelementptr inbounds %struct.hsr_port, ptr %retval.0.i118, i32 0, i32 1
  %33 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev27, align 4
  %dev_addr28 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 86
  %35 = ptrtoint ptr %dev_addr28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_addr28, align 64
  %tobool29.not = icmp eq ptr %port.0.i131, null
  br i1 %tobool29.not, label %hsr_port_get_hsr.exit138.cond.end_crit_edge, label %cond.true

hsr_port_get_hsr.exit138.cond.end_crit_edge:      ; preds = %hsr_port_get_hsr.exit138
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %hsr_port_get_hsr.exit138
  call void @__sanitizer_cov_trace_pc() #8
  %dev30 = getelementptr inbounds %struct.hsr_port, ptr %port.0.i131, i32 0, i32 1
  %37 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev30, align 4
  %dev_addr31 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 86
  %39 = ptrtoint ptr %dev_addr31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_addr31, align 64
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %hsr_port_get_hsr.exit138.cond.end_crit_edge, %hsr_port_get_hsr.exit138.thread
  %41 = phi ptr [ %36, %cond.true ], [ %36, %hsr_port_get_hsr.exit138.cond.end_crit_edge ], [ %30, %hsr_port_get_hsr.exit138.thread ]
  %dev27200 = phi ptr [ %dev27, %cond.true ], [ %dev27, %hsr_port_get_hsr.exit138.cond.end_crit_edge ], [ %dev27197, %hsr_port_get_hsr.exit138.thread ]
  %cond = phi ptr [ %40, %cond.true ], [ %36, %hsr_port_get_hsr.exit138.cond.end_crit_edge ], [ %30, %hsr_port_get_hsr.exit138.thread ]
  %call34 = call i32 @hsr_create_self_node(ptr noundef %hsr.0, ptr noundef %41, ptr noundef %cond) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cond.end.sw.epilog_crit_edge, label %if.then36

cond.end.sw.epilog_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then36:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %dev27200 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev27200, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %43, ptr noundef nonnull @.str.2) #9
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end10
  %type40 = getelementptr inbounds %struct.hsr_port, ptr %port.0, i32 0, i32 3
  %44 = ptrtoint ptr %type40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp41 = icmp eq i32 %45, 4
  br i1 %cmp41, label %sw.bb39.sw.epilog_crit_edge, label %if.end43

sw.bb39.sw.epilog_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end43:                                         ; preds = %sw.bb39
  %hsr44 = getelementptr inbounds %struct.hsr_port, ptr %port.0, i32 0, i32 2
  %46 = ptrtoint ptr %hsr44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hsr44, align 4
  %call45 = call i32 @hsr_get_max_mtu(ptr noundef %47) #6
  %48 = ptrtoint ptr %hsr44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hsr44, align 4
  %call.i139 = call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool.not.i140 = icmp eq i32 %call.i139, 0
  br i1 %tobool.not.i140, label %land.lhs.true.i143, label %if.end43.do.end.i148_crit_edge

if.end43.do.end.i148_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i148

land.lhs.true.i143:                               ; preds = %if.end43
  %call1.i141 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i141)
  %tobool2.not.i142 = icmp eq i32 %call1.i141, 0
  br i1 %tobool2.not.i142, label %land.lhs.true.i143.do.end.i148_crit_edge, label %land.lhs.true3.i145

land.lhs.true.i143.do.end.i148_crit_edge:         ; preds = %land.lhs.true.i143
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i148

land.lhs.true3.i145:                              ; preds = %land.lhs.true.i143
  %.b26.i144 = load i1, ptr @hsr_port_get_hsr.__warned, align 1
  br i1 %.b26.i144, label %land.lhs.true3.i145.do.end.i148_crit_edge, label %if.then.i146

land.lhs.true3.i145.do.end.i148_crit_edge:        ; preds = %land.lhs.true3.i145
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i148

if.then.i146:                                     ; preds = %land.lhs.true3.i145
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @hsr_port_get_hsr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.1) #6
  br label %do.end.i148

do.end.i148:                                      ; preds = %if.then.i146, %land.lhs.true3.i145.do.end.i148_crit_edge, %land.lhs.true.i143.do.end.i148_crit_edge, %if.end43.do.end.i148_crit_edge
  %ports.i147 = getelementptr inbounds %struct.hsr_priv, ptr %49, i32 0, i32 1
  br label %for.cond.i152

for.cond.i152:                                    ; preds = %for.body.i155.for.cond.i152_crit_edge, %do.end.i148
  %port.0.in.i149 = phi ptr [ %ports.i147, %do.end.i148 ], [ %port.0.i150, %for.body.i155.for.cond.i152_crit_edge ]
  %50 = ptrtoint ptr %port.0.in.i149 to i32
  call void @__asan_load4_noabort(i32 %50)
  %port.0.i150 = load volatile ptr, ptr %port.0.in.i149, align 4
  %cmp.not.i151 = icmp eq ptr %port.0.i150, %ports.i147
  br i1 %cmp.not.i151, label %for.cond.i152.hsr_port_get_hsr.exit157_crit_edge, label %for.body.i155

for.cond.i152.hsr_port_get_hsr.exit157_crit_edge: ; preds = %for.cond.i152
  call void @__sanitizer_cov_trace_pc() #8
  br label %hsr_port_get_hsr.exit157

for.body.i155:                                    ; preds = %for.cond.i152
  %type.i153 = getelementptr inbounds %struct.hsr_port, ptr %port.0.i150, i32 0, i32 3
  %51 = ptrtoint ptr %type.i153 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type.i153, align 4
  %cmp10.i154 = icmp eq i32 %52, 4
  br i1 %cmp10.i154, label %for.body.i155.hsr_port_get_hsr.exit157_crit_edge, label %for.body.i155.for.cond.i152_crit_edge

for.body.i155.for.cond.i152_crit_edge:            ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i152

for.body.i155.hsr_port_get_hsr.exit157_crit_edge: ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #8
  br label %hsr_port_get_hsr.exit157

hsr_port_get_hsr.exit157:                         ; preds = %for.body.i155.hsr_port_get_hsr.exit157_crit_edge, %for.cond.i152.hsr_port_get_hsr.exit157_crit_edge
  %retval.0.i156 = phi ptr [ %port.0.i150, %for.body.i155.hsr_port_get_hsr.exit157_crit_edge ], [ null, %for.cond.i152.hsr_port_get_hsr.exit157_crit_edge ]
  %dev48 = getelementptr inbounds %struct.hsr_port, ptr %retval.0.i156, i32 0, i32 1
  %53 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev48, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 20
  %55 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call45, ptr %mtu, align 4
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end10
  %call50 = call zeroext i1 @is_hsr_master(ptr noundef %4) #6
  br i1 %call50, label %sw.bb49.sw.epilog_crit_edge, label %if.then51

sw.bb49.sw.epilog_crit_edge:                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then51:                                        ; preds = %sw.bb49
  %hsr52 = getelementptr inbounds %struct.hsr_port, ptr %port.0, i32 0, i32 2
  %56 = ptrtoint ptr %hsr52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hsr52, align 4
  %call.i158 = call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool.not.i159 = icmp eq i32 %call.i158, 0
  br i1 %tobool.not.i159, label %land.lhs.true.i162, label %if.then51.do.end.i167_crit_edge

if.then51.do.end.i167_crit_edge:                  ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i167

land.lhs.true.i162:                               ; preds = %if.then51
  %call1.i160 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i160)
  %tobool2.not.i161 = icmp eq i32 %call1.i160, 0
  br i1 %tobool2.not.i161, label %land.lhs.true.i162.do.end.i167_crit_edge, label %land.lhs.true3.i164

land.lhs.true.i162.do.end.i167_crit_edge:         ; preds = %land.lhs.true.i162
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i167

land.lhs.true3.i164:                              ; preds = %land.lhs.true.i162
  %.b26.i163 = load i1, ptr @hsr_port_get_hsr.__warned, align 1
  br i1 %.b26.i163, label %land.lhs.true3.i164.do.end.i167_crit_edge, label %if.then.i165

land.lhs.true3.i164.do.end.i167_crit_edge:        ; preds = %land.lhs.true3.i164
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i167

if.then.i165:                                     ; preds = %land.lhs.true3.i164
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @hsr_port_get_hsr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.1) #6
  br label %do.end.i167

do.end.i167:                                      ; preds = %if.then.i165, %land.lhs.true3.i164.do.end.i167_crit_edge, %land.lhs.true.i162.do.end.i167_crit_edge, %if.then51.do.end.i167_crit_edge
  %ports.i166 = getelementptr inbounds %struct.hsr_priv, ptr %57, i32 0, i32 1
  br label %for.cond.i171

for.cond.i171:                                    ; preds = %for.body.i174.for.cond.i171_crit_edge, %do.end.i167
  %port.0.in.i168 = phi ptr [ %ports.i166, %do.end.i167 ], [ %port.0.i169, %for.body.i174.for.cond.i171_crit_edge ]
  %58 = ptrtoint ptr %port.0.in.i168 to i32
  call void @__asan_load4_noabort(i32 %58)
  %port.0.i169 = load volatile ptr, ptr %port.0.in.i168, align 4
  %cmp.not.i170 = icmp eq ptr %port.0.i169, %ports.i166
  br i1 %cmp.not.i170, label %for.cond.i171.hsr_port_get_hsr.exit176_crit_edge, label %for.body.i174

for.cond.i171.hsr_port_get_hsr.exit176_crit_edge: ; preds = %for.cond.i171
  call void @__sanitizer_cov_trace_pc() #8
  br label %hsr_port_get_hsr.exit176

for.body.i174:                                    ; preds = %for.cond.i171
  %type.i172 = getelementptr inbounds %struct.hsr_port, ptr %port.0.i169, i32 0, i32 3
  %59 = ptrtoint ptr %type.i172 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %type.i172, align 4
  %cmp10.i173 = icmp eq i32 %60, 4
  br i1 %cmp10.i173, label %for.body.i174.hsr_port_get_hsr.exit176_crit_edge, label %for.body.i174.for.cond.i171_crit_edge

for.body.i174.for.cond.i171_crit_edge:            ; preds = %for.body.i174
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i171

for.body.i174.hsr_port_get_hsr.exit176_crit_edge: ; preds = %for.body.i174
  call void @__sanitizer_cov_trace_pc() #8
  br label %hsr_port_get_hsr.exit176

hsr_port_get_hsr.exit176:                         ; preds = %for.body.i174.hsr_port_get_hsr.exit176_crit_edge, %for.cond.i171.hsr_port_get_hsr.exit176_crit_edge
  %retval.0.i175 = phi ptr [ %port.0.i169, %for.body.i174.hsr_port_get_hsr.exit176_crit_edge ], [ null, %for.cond.i171.hsr_port_get_hsr.exit176_crit_edge ]
  call void @hsr_del_port(ptr noundef %port.0) #6
  %hsr54 = getelementptr inbounds %struct.hsr_port, ptr %retval.0.i175, i32 0, i32 2
  %61 = ptrtoint ptr %hsr54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hsr54, align 4
  %call.i177 = call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %tobool.not.i178 = icmp eq i32 %call.i177, 0
  br i1 %tobool.not.i178, label %land.lhs.true.i181, label %hsr_port_get_hsr.exit176.do.end.i185_crit_edge

hsr_port_get_hsr.exit176.do.end.i185_crit_edge:   ; preds = %hsr_port_get_hsr.exit176
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i185

land.lhs.true.i181:                               ; preds = %hsr_port_get_hsr.exit176
  %call1.i179 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i179)
  %tobool2.not.i180 = icmp eq i32 %call1.i179, 0
  br i1 %tobool2.not.i180, label %land.lhs.true.i181.do.end.i185_crit_edge, label %land.lhs.true3.i182

land.lhs.true.i181.do.end.i185_crit_edge:         ; preds = %land.lhs.true.i181
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i185

land.lhs.true3.i182:                              ; preds = %land.lhs.true.i181
  %.b25.i = load i1, ptr @hsr_slave_empty.__warned, align 1
  br i1 %.b25.i, label %land.lhs.true3.i182.do.end.i185_crit_edge, label %if.then.i183

land.lhs.true3.i182.do.end.i185_crit_edge:        ; preds = %land.lhs.true3.i182
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i185

if.then.i183:                                     ; preds = %land.lhs.true3.i182
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @hsr_slave_empty.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 25, ptr noundef nonnull @.str.1) #6
  br label %do.end.i185

do.end.i185:                                      ; preds = %if.then.i183, %land.lhs.true3.i182.do.end.i185_crit_edge, %land.lhs.true.i181.do.end.i185_crit_edge, %hsr_port_get_hsr.exit176.do.end.i185_crit_edge
  %ports.i184 = getelementptr inbounds %struct.hsr_priv, ptr %62, i32 0, i32 1
  br label %for.cond.i189

for.cond.i189:                                    ; preds = %for.body.i191.for.cond.i189_crit_edge, %do.end.i185
  %port.0.in.i186 = phi ptr [ %ports.i184, %do.end.i185 ], [ %port.0.i187, %for.body.i191.for.cond.i189_crit_edge ]
  %63 = ptrtoint ptr %port.0.in.i186 to i32
  call void @__asan_load4_noabort(i32 %63)
  %port.0.i187 = load volatile ptr, ptr %port.0.in.i186, align 4
  %cmp.not.i188 = icmp eq ptr %port.0.i187, %ports.i184
  br i1 %cmp.not.i188, label %if.then56, label %for.body.i191

for.body.i191:                                    ; preds = %for.cond.i189
  %type.i190 = getelementptr inbounds %struct.hsr_port, ptr %port.0.i187, i32 0, i32 3
  %64 = ptrtoint ptr %type.i190 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type.i190, align 4
  %cmp10.not.i = icmp eq i32 %65, 4
  br i1 %cmp10.not.i, label %for.body.i191.for.cond.i189_crit_edge, label %for.body.i191.sw.epilog_crit_edge

for.body.i191.sw.epilog_crit_edge:                ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body.i191.for.cond.i189_crit_edge:            ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i189

if.then56:                                        ; preds = %for.cond.i189
  call void @__sanitizer_cov_trace_pc() #8
  %dev57 = getelementptr inbounds %struct.hsr_port, ptr %retval.0.i175, i32 0, i32 1
  %66 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev57, align 4
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 136
  %68 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rtnl_link_ops, align 4
  %dellink = getelementptr inbounds %struct.rtnl_link_ops, ptr %69, i32 0, i32 11
  %70 = ptrtoint ptr %dellink to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dellink, align 4
  call void %71(ptr noundef %67, ptr noundef nonnull %list_kill) #6
  call void @unregister_netdevice_many(ptr noundef nonnull %list_kill) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then56, %for.body.i191.sw.epilog_crit_edge, %sw.bb49.sw.epilog_crit_edge, %hsr_port_get_hsr.exit157, %sw.bb39.sw.epilog_crit_edge, %if.then36, %cond.end.sw.epilog_crit_edge, %sw.bb15.sw.epilog_crit_edge, %if.then13, %sw.bb11.sw.epilog_crit_edge, %sw.bb, %if.end10.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end10.cleanup_crit_edge, %hsr_port_get_hsr.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %hsr_port_get_hsr.exit.cleanup_crit_edge ], [ 32770, %if.end10.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list_kill) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_hsr_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_check_carrier_and_operstate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_debugfs_rename(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsr_create_self_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsr_get_max_mtu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_del_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hsr_port_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @hsr_netlink_init() local_unnamed_addr #5 section ".init.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/hsr/hsr_main.c", i32 128, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ksymtab_hsr_get_version, !5, !"__ksymtab_hsr_get_version", i1 false, i1 false}
!5 = !{!"../net/hsr/hsr_main.c", i32 143, i32 1}
!6 = !{ptr @__initcall__kmod_hsr__348_168_hsr_init6, !7, !"__initcall__kmod_hsr__348_168_hsr_init6", i1 false, i1 false}
!7 = !{!"../net/hsr/hsr_main.c", i32 168, i32 1}
!8 = !{ptr @__exitcall_hsr_exit, !9, !"__exitcall_hsr_exit", i1 false, i1 false}
!9 = !{!"../net/hsr/hsr_main.c", i32 169, i32 1}
!10 = !{ptr @__UNIQUE_ID_file349, !11, !"__UNIQUE_ID_file349", i1 false, i1 false}
!11 = !{!"../net/hsr/hsr_main.c", i32 170, i32 1}
!12 = !{ptr @__UNIQUE_ID_license350, !11, !"__UNIQUE_ID_license350", i1 false, i1 false}
!13 = !{ptr @hsr_nb, !14, !"hsr_nb", i1 false, i1 false}
!14 = !{!"../net/hsr/hsr_main.c", i32 145, i32 30}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/hsr/hsr_main.c", i32 92, i32 9}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../net/hsr/hsr_slave.h", i32 24, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/hsr/hsr_slave.h", i32 26, i32 5}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/hsr/hsr_main.c", i32 25, i32 2}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 2000, i32 1}
