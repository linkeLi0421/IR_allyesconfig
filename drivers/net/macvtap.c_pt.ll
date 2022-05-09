; ModuleID = '/llk/IR_all_yes/drivers/net/macvtap.c_pt.bc'
source_filename = "../drivers/net/macvtap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kobj_ns_type_operations = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.167, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.185, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.167 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.185 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.vlan_pcpu_stats = type { i64, i64, i64, i64, i64, %struct.u64_stats_sync, i32, i32 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_macvtap__515_236_macvtap_init6 = internal global ptr @macvtap_init, section ".initcall6.init", align 4
@__exitcall_macvtap_exit = internal global ptr @macvtap_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias516 = internal constant [32 x i8] c"macvtap.alias=rtnl-link-macvtap\00", section ".modinfo", align 1
@__UNIQUE_ID_author517 = internal constant [45 x i8] c"macvtap.author=Arnd Bergmann <arnd@arndb.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file518 = internal constant [33 x i8] c"macvtap.file=drivers/net/macvtap\00", section ".modinfo", align 1
@__UNIQUE_ID_license519 = internal constant [20 x i8] c"macvtap.license=GPL\00", section ".modinfo", align 1
@macvtap_cdev = internal global { %struct.cdev, [32 x i8] } zeroinitializer, align 32
@macvtap_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"macvtap\00", [24 x i8] zeroinitializer }, align 32
@macvtap_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@macvtap_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @net_ns_type_operations, ptr @macvtap_net_namespace, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@macvtap_notifier_block = internal global %struct.notifier_block { ptr @macvtap_device_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@macvtap_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 1176, ptr null, ptr @macvtap_setup, i8 0, i32 0, ptr null, ptr null, ptr @macvtap_newlink, ptr null, ptr @macvtap_dellink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@net_ns_type_operations = external dso_local constant %struct.kobj_ns_type_operations, align 4
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tap%d\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 30]
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"macvtap_cdev\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 50, i32 20 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"macvtap_major\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 36, i32 14 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 208, i32 55 }
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 213, i32 8 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"macvtap_class\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 44, i32 21 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 157, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [25 x i8] c"../drivers/net/macvtap.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 172, i32 12 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias516, ptr @__UNIQUE_ID_author517, ptr @__UNIQUE_ID_file518, ptr @__UNIQUE_ID_license519, ptr @__exitcall_macvtap_exit, ptr @__initcall__kmod_macvtap__515_236_macvtap_init6, ptr @macvtap_cdev, ptr @macvtap_major, ptr @.str, ptr @macvtap_init.__key, ptr @macvtap_class, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macvtap_cdev to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macvtap_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macvtap_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macvtap_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvtap_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tap_create_cdev(ptr noundef nonnull @macvtap_cdev, ptr noundef nonnull @macvtap_major, ptr noundef nonnull @.str, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__class_register(ptr noundef nonnull @macvtap_class, ptr noundef nonnull @macvtap_init.__key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out2_crit_edge

if.end.out2_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out2

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @macvtap_notifier_block) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out3_crit_edge

if.end4.out3_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %out3

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @macvlan_link_register(ptr noundef nonnull @macvtap_link_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %out4

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out4:                                             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @macvtap_notifier_block) #6
  br label %out3

out3:                                             ; preds = %out4, %if.end4.out3_crit_edge
  %err.0 = phi i32 [ %call5, %if.end4.out3_crit_edge ], [ %call9, %out4 ]
  tail call void @class_unregister(ptr noundef nonnull @macvtap_class) #6
  br label %out2

out2:                                             ; preds = %out3, %if.end.out2_crit_edge
  %err.1 = phi i32 [ %call1, %if.end.out2_crit_edge ], [ %err.0, %out3 ]
  %0 = load i32, ptr @macvtap_major, align 4
  tail call void @tap_destroy_cdev(i32 noundef %0, ptr noundef nonnull @macvtap_cdev) #6
  br label %cleanup

cleanup:                                          ; preds = %out2, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %err.1, %out2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @macvtap_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_link_unregister(ptr noundef nonnull @macvtap_link_ops) #6
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @macvtap_notifier_block) #6
  tail call void @class_unregister(ptr noundef nonnull @macvtap_class) #6
  %0 = load i32, ptr @macvtap_major, align 4
  tail call void @tap_destroy_cdev(i32 noundef %0, ptr noundef nonnull @macvtap_cdev) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tap_create_cdev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @macvlan_link_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tap_destroy_cdev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @macvtap_net_namespace(ptr nocapture noundef readonly %d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %nd_net.i = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvtap_device_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %tap_name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tap_name) #6
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 136
  %2 = call ptr @memset(ptr %tap_name, i32 255, i32 16)
  %3 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtnl_link_ops, align 4
  %cmp.not = icmp eq ptr %4, @macvtap_link_ops
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifindex, align 4
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tap_name, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %6)
  %7 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end.sw.epilog_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb25
    i32 30, label %sw.bb40
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %8 = load i32, ptr @macvtap_major, align 4
  %tap = getelementptr i8, ptr %1, i32 2408
  %call3 = tail call i32 @tap_get_minor(i32 noundef %8, ptr noundef %tap) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 1, %call3
  %or.i = or i32 %sub.i, 32768
  br label %cleanup

if.end6:                                          ; preds = %sw.bb
  %9 = load i32, ptr @macvtap_major, align 4
  %shr = and i32 %9, -1048576
  %minor = getelementptr i8, ptr %1, i32 3464
  %10 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %minor, align 8
  %or = or i32 %shr, %11
  %dev8 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %call10 = call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef nonnull @macvtap_class, ptr noundef %dev8, i32 noundef %or, ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %tap_name) #6
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %12 = load i32, ptr @macvtap_major, align 4
  call void @tap_free_minor(i32 noundef %12, ptr noundef %tap) #6
  %13 = ptrtoint ptr %call10 to i32
  %sub.i70 = sub i32 1, %13
  %or.i71 = or i32 %sub.i70, 32768
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %call20 = call i32 @sysfs_create_link(ptr noundef %dev8, ptr noundef %call10, ptr noundef nonnull %tap_name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end16.sw.epilog_crit_edge, label %if.then22

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i74 = sub i32 1, %call20
  %or.i75 = or i32 %sub.i74, 32768
  br label %cleanup

sw.bb25:                                          ; preds = %if.end
  %minor27 = getelementptr i8, ptr %1, i32 3464
  %14 = ptrtoint ptr %minor27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %minor27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp28 = icmp eq i32 %15, 0
  br i1 %cmp28, label %sw.bb25.sw.epilog_crit_edge, label %if.end30

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end30:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  %tap26 = getelementptr i8, ptr %1, i32 2408
  %dev31 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  call void @sysfs_remove_link(ptr noundef %dev31, ptr noundef nonnull %tap_name) #6
  %16 = load i32, ptr @macvtap_major, align 4
  %shr34 = and i32 %16, -1048576
  %17 = ptrtoint ptr %minor27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %minor27, align 8
  %or38 = or i32 %shr34, %18
  call void @device_destroy(ptr noundef nonnull @macvtap_class, i32 noundef %or38) #6
  %19 = load i32, ptr @macvtap_major, align 4
  call void @tap_free_minor(i32 noundef %19, ptr noundef %tap26) #6
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end
  %tap41 = getelementptr i8, ptr %1, i32 2408
  %call42 = tail call i32 @tap_queue_resize(ptr noundef %tap41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %sw.bb40.sw.epilog_crit_edge, label %sw.bb40.cleanup_crit_edge

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb40.sw.epilog_crit_edge:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb40.sw.epilog_crit_edge, %if.end30, %sw.bb25.sw.epilog_crit_edge, %if.end16.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb40.cleanup_crit_edge, %if.then22, %if.then12, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %or.i, %if.then4 ], [ %or.i71, %if.then12 ], [ %or.i75, %if.then22 ], [ 0, %entry.cleanup_crit_edge ], [ 32770, %sw.bb40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tap_name) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tap_get_minor(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tap_free_minor(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tap_queue_resize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @macvtap_setup(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @macvlan_common_setup(ptr noundef %dev) #6
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %0 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 500, ptr %tx_queue_len, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macvtap_newlink(ptr noundef %src_net, ptr noundef %dev, ptr noundef %tb, ptr noundef %data, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tap = getelementptr i8, ptr %dev, i32 2408
  %queue_list = getelementptr i8, ptr %dev, i32 3440
  %0 = ptrtoint ptr %queue_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %queue_list, ptr %queue_list, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 3444
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %queue_list, ptr %prev.i, align 4
  %tap_features = getelementptr i8, ptr %dev, i32 3456
  %2 = ptrtoint ptr %tap_features to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1376264, ptr %tap_features, align 8
  %count_tx_dropped = getelementptr i8, ptr %dev, i32 3472
  %3 = ptrtoint ptr %count_tx_dropped to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @macvtap_count_tx_dropped, ptr %count_tx_dropped, align 8
  %count_rx_dropped = getelementptr i8, ptr %dev, i32 3476
  %4 = ptrtoint ptr %count_rx_dropped to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @macvtap_count_rx_dropped, ptr %count_rx_dropped, align 4
  %update_features = getelementptr i8, ptr %dev, i32 3468
  %5 = ptrtoint ptr %update_features to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @macvtap_update_features, ptr %update_features, align 4
  %call6 = tail call i32 @netdev_rx_handler_register(ptr noundef %dev, ptr noundef nonnull @tap_handle_frame, ptr noundef %tap) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @macvlan_common_newlink(ptr noundef %src_net, ptr noundef %dev, ptr noundef %tb, ptr noundef %data, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netdev_rx_handler_unregister(ptr noundef %dev) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %8 = ptrtoint ptr %tap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %tap, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then9 ], [ 0, %if.end10 ], [ %call6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @macvtap_dellink(ptr noundef %dev, ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @netdev_rx_handler_unregister(ptr noundef %dev) #6
  %tap = getelementptr i8, ptr %dev, i32 2408
  tail call void @tap_del_queues(ptr noundef %tap) #6
  tail call void @macvlan_dellink(ptr noundef %dev, ptr noundef %head) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @macvlan_common_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @macvtap_count_tx_dropped(ptr nocapture noundef readonly %tap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !42
  %pcpu_stats = getelementptr i8, ptr %tap, i32 -72
  %1 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_stats, align 8
  %tx_dropped = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %tx_dropped to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add16 = add i32 %12, 1
  store i32 %add16, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !43
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end31_crit_edge, !prof !44

entry.do.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end31

do.end31:                                         ; preds = %if.then, %entry.do.end31_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #6, !srcloc !45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @macvtap_count_rx_dropped(ptr nocapture noundef readonly %tap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !42
  %pcpu_stats41.i = getelementptr i8, ptr %tap, i32 -72
  %1 = ptrtoint ptr %pcpu_stats41.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_stats41.i, align 8
  %rx_errors.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %rx_errors.i to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu44.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu44.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu44.i, align 4
  %arrayidx45.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx45.i, align 4
  %add46.i = add i32 %9, %3
  %10 = inttoptr i32 %add46.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add47.i = add i32 %12, 1
  store i32 %add47.i, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !43
  %and.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool58.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool58.not.i, label %if.then67.i, label %entry.macvlan_count_rx.exit_crit_edge, !prof !44

entry.macvlan_count_rx.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %macvlan_count_rx.exit

if.then67.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %macvlan_count_rx.exit

macvlan_count_rx.exit:                            ; preds = %if.then67.i, %entry.macvlan_count_rx.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #6, !srcloc !45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @macvtap_update_features(ptr nocapture noundef %tap, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %tap, i32 -104
  %set_features = getelementptr i8, ptr %tap, i32 -32
  %0 = ptrtoint ptr %set_features to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %features, ptr %set_features, align 8
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  tail call void @netdev_update_features(ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_rx_handler_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tap_handle_frame(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @macvlan_common_newlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rx_handler_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tap_del_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @macvlan_dellink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_macvtap__515_236_macvtap_init6, !1, !"__initcall__kmod_macvtap__515_236_macvtap_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/macvtap.c", i32 236, i32 1}
!2 = !{ptr @__exitcall_macvtap_exit, !3, !"__exitcall_macvtap_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/macvtap.c", i32 245, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias516, !5, !"__UNIQUE_ID_alias516", i1 false, i1 false}
!5 = !{!"../drivers/net/macvtap.c", i32 247, i32 1}
!6 = !{ptr @__UNIQUE_ID_author517, !7, !"__UNIQUE_ID_author517", i1 false, i1 false}
!7 = !{!"../drivers/net/macvtap.c", i32 248, i32 1}
!8 = !{ptr @__UNIQUE_ID_file518, !9, !"__UNIQUE_ID_file518", i1 false, i1 false}
!9 = !{!"../drivers/net/macvtap.c", i32 249, i32 1}
!10 = !{ptr @__UNIQUE_ID_license519, !9, !"__UNIQUE_ID_license519", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/macvtap.c", i32 208, i32 55}
!13 = !{ptr @macvtap_init.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/net/macvtap.c", i32 213, i32 8}
!15 = !{ptr @macvtap_cdev, !16, !"macvtap_cdev", i1 false, i1 false}
!16 = !{!"../drivers/net/macvtap.c", i32 50, i32 20}
!17 = !{ptr @macvtap_major, !18, !"macvtap_major", i1 false, i1 false}
!18 = !{!"../drivers/net/macvtap.c", i32 36, i32 14}
!19 = !{ptr @macvtap_class, !20, !"macvtap_class", i1 false, i1 false}
!20 = !{!"../drivers/net/macvtap.c", i32 44, i32 21}
!21 = !{ptr @macvtap_notifier_block, !22, !"macvtap_notifier_block", i1 false, i1 false}
!22 = !{!"../drivers/net/macvtap.c", i32 200, i32 30}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/macvtap.c", i32 157, i32 31}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/macvtap.c", i32 172, i32 12}
!27 = !{ptr @macvtap_link_ops, !28, !"macvtap_link_ops", i1 false, i1 false}
!28 = !{!"../drivers/net/macvtap.c", i32 136, i32 29}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!31 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 764559, i64 764620}
!43 = !{i64 767291}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{i64 767576}
