; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/prestera/prestera_router.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/prestera/prestera_router.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.prestera_switch = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.notifier_block, ptr, [6 x i8], %struct.list_head, %struct.rwlock_t, i32, i32, i32, i8, ptr, ptr, ptr, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.prestera_router = type { ptr, %struct.list_head, %struct.list_head, %struct.notifier_block, %struct.notifier_block }
%struct.in_validator_info = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.126, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.126 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
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
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.prestera_rif_entry_key = type { %struct.prestera_iface }
%struct.prestera_iface = type { i32, %struct.anon.150, i32, i16, i16, i16 }
%struct.anon.150 = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__prestera_inetaddr_valid_cb.__msg = internal constant [49 x i8] c"prestera: Multicast addr on RIF is not supported\00", align 1
@__in_dev_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__prestera_inetaddr_port_event.__msg = internal constant [44 x i8] c"prestera: RIF MAC must have the same prefix\00", align 1
@__prestera_inetaddr_port_event.__msg.2 = internal constant [28 x i8] c"prestera: RIF already exist\00", align 1
@__prestera_inetaddr_port_event.__msg.3 = internal constant [27 x i8] c"prestera: Can't create RIF\00", align 1
@__prestera_inetaddr_port_event.__msg.4 = internal constant [25 x i8] c"prestera: Can't find RIF\00", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 253, i64 255]
@___asan_gen_ = private constant [59 x i8] c"../drivers/net/ethernet/marvell/prestera/prestera_router.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 249, i32 9 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 695, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 723, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_router_init(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 44) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %router1 = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 15
  %1 = ptrtoint ptr %router1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %router1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sw, ptr %call7.i.i, align 8
  %call3 = tail call i32 @prestera_router_hw_init(ptr noundef %sw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.err_router_lib_init_crit_edge

if.end.err_router_lib_init_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_router_lib_init

if.end6:                                          ; preds = %if.end
  %inetaddr_valid_nb = getelementptr inbounds %struct.prestera_router, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %inetaddr_valid_nb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @__prestera_inetaddr_valid_cb, ptr %inetaddr_valid_nb, align 8
  %call8 = tail call i32 @register_inetaddr_validator_notifier(ptr noundef %inetaddr_valid_nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.err_register_inetaddr_validator_notifier_crit_edge

if.end6.err_register_inetaddr_validator_notifier_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_register_inetaddr_validator_notifier

if.end11:                                         ; preds = %if.end6
  %inetaddr_nb = getelementptr inbounds %struct.prestera_router, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %inetaddr_nb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @__prestera_inetaddr_cb, ptr %inetaddr_nb, align 4
  %call14 = tail call i32 @register_inetaddr_notifier(ptr noundef %inetaddr_nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end11.cleanup_crit_edge, label %err_register_inetaddr_notifier

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_register_inetaddr_notifier:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 @unregister_inetaddr_validator_notifier(ptr noundef %inetaddr_valid_nb) #6
  br label %err_register_inetaddr_validator_notifier

err_register_inetaddr_validator_notifier:         ; preds = %err_register_inetaddr_notifier, %if.end6.err_register_inetaddr_validator_notifier_crit_edge
  %err.0 = phi i32 [ %call8, %if.end6.err_register_inetaddr_validator_notifier_crit_edge ], [ %call14, %err_register_inetaddr_notifier ]
  tail call void @prestera_router_hw_fini(ptr noundef %sw) #6
  br label %err_router_lib_init

err_router_lib_init:                              ; preds = %err_register_inetaddr_validator_notifier, %if.end.err_router_lib_init_crit_edge
  %err.1 = phi i32 [ %call3, %if.end.err_router_lib_init_crit_edge ], [ %err.0, %err_register_inetaddr_validator_notifier ]
  %5 = ptrtoint ptr %router1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %router1, align 4
  tail call void @kfree(ptr noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %err_router_lib_init, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_router_lib_init ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_router_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__prestera_inetaddr_valid_cb(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ivi_dev = getelementptr inbounds %struct.in_validator_info, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %ivi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ivi_dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cmp.not = icmp eq i32 %event, 1
  br i1 %cmp.not, label %if.end, label %entry.out.thread_crit_edge

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i, label %if.end.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end.__in_dev_get_rtnl.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__in_dev_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__in_dev_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__in_dev_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 249, ptr noundef nonnull @.str.1) #6
  br label %__in_dev_get_rtnl.exit

__in_dev_get_rtnl.exit:                           ; preds = %if.then.i, %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, %if.end.__in_dev_get_rtnl.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 78
  %4 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ip_ptr.i, align 32
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %__in_dev_get_rtnl.exit.if.end4_crit_edge, label %land.lhs.true

__in_dev_get_rtnl.exit.if.end4_crit_edge:         ; preds = %__in_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true:                                    ; preds = %__in_dev_get_rtnl.exit
  %ifa_list = getelementptr inbounds %struct.in_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ifa_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ifa_list, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.out.thread_crit_edge

land.lhs.true.out.thread_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %__in_dev_get_rtnl.exit.if.end4_crit_edge
  %8 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ptr, align 4
  %and.i = and i32 %9, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  %extack = getelementptr inbounds %struct.in_validator_info, ptr %ptr, i32 0, i32 2
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extack, align 4
  br i1 %cmp.i, label %do.body, label %out

do.body:                                          ; preds = %if.end4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__prestera_inetaddr_valid_cb.__msg) #6
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %do.body.out.thread27_crit_edge, label %if.then8

do.body.out.thread27_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread27

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @__prestera_inetaddr_valid_cb.__msg, ptr %11, align 4
  br label %out.thread27

out:                                              ; preds = %if.end4
  %call12 = tail call fastcc i32 @__prestera_inetaddr_event(ptr noundef %3, i32 noundef 1, ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not.i21 = icmp eq i32 %call12, 0
  %sub.i = sub i32 1, %call12
  %or.i = or i32 %sub.i, 32768
  br i1 %tobool.not.i21, label %out.out.thread_crit_edge, label %out.out.thread27_crit_edge

out.out.thread27_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread27

out.out.thread_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread

out.thread:                                       ; preds = %out.out.thread_crit_edge, %land.lhs.true.out.thread_crit_edge, %entry.out.thread_crit_edge
  br label %out.thread27

out.thread27:                                     ; preds = %out.thread, %out.out.thread27_crit_edge, %if.then8, %do.body.out.thread27_crit_edge
  %13 = phi i32 [ 1, %out.thread ], [ %or.i, %out.out.thread27_crit_edge ], [ 32791, %if.then8 ], [ 32791, %do.body.out.thread27_crit_edge ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_validator_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__prestera_inetaddr_cb(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ifa_dev = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %ifa_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifa_dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp.not = icmp eq i32 %event, 2
  br i1 %cmp.not, label %if.end, label %entry.out.thread_crit_edge

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i, label %if.end.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end.__in_dev_get_rtnl.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__in_dev_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__in_dev_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__in_dev_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 249, ptr noundef nonnull @.str.1) #6
  br label %__in_dev_get_rtnl.exit

__in_dev_get_rtnl.exit:                           ; preds = %if.then.i, %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, %if.end.__in_dev_get_rtnl.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 78
  %4 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ip_ptr.i, align 32
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %__in_dev_get_rtnl.exit.out_crit_edge, label %land.lhs.true

__in_dev_get_rtnl.exit.out_crit_edge:             ; preds = %__in_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

land.lhs.true:                                    ; preds = %__in_dev_get_rtnl.exit
  %ifa_list = getelementptr inbounds %struct.in_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ifa_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ifa_list, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.out.thread_crit_edge

land.lhs.true.out.thread_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %land.lhs.true.out_crit_edge, %__in_dev_get_rtnl.exit.out_crit_edge
  %call5 = tail call fastcc i32 @__prestera_inetaddr_event(ptr noundef %3, i32 noundef 2, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not.i10 = icmp eq i32 %call5, 0
  %sub.i = sub i32 1, %call5
  %or.i = or i32 %sub.i, 32768
  br i1 %tobool.not.i10, label %out.out.thread_crit_edge, label %out._crit_edge

out._crit_edge:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %8

out.out.thread_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread

out.thread:                                       ; preds = %out.out.thread_crit_edge, %land.lhs.true.out.thread_crit_edge, %entry.out.thread_crit_edge
  br label %8

8:                                                ; preds = %out.thread, %out._crit_edge
  %9 = phi i32 [ 1, %out.thread ], [ %or.i, %out._crit_edge ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inetaddr_validator_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_router_hw_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_router_fini(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %router = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 15
  %0 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %router, align 4
  %inetaddr_nb = getelementptr inbounds %struct.prestera_router, ptr %1, i32 0, i32 3
  %call = tail call i32 @unregister_inetaddr_notifier(ptr noundef %inetaddr_nb) #6
  %2 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %router, align 4
  %inetaddr_valid_nb = getelementptr inbounds %struct.prestera_router, ptr %3, i32 0, i32 4
  %call2 = tail call i32 @unregister_inetaddr_validator_notifier(ptr noundef %inetaddr_valid_nb) #6
  tail call void @prestera_router_hw_fini(ptr noundef %sw) #6
  %4 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %router, align 4
  tail call void @kfree(ptr noundef %5) #6
  %6 = ptrtoint ptr %router to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %router, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inetaddr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__prestera_inetaddr_event(ptr noundef %dev, i32 noundef %event, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  %re_key.i = alloca %struct.prestera_rif_entry_key, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @prestera_netdev_check(ptr noundef %dev) #6
  br i1 %call, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false2, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  %and1.i.i = and i64 %1, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp ne i64 %and1.i.i, 0
  %or.cond = select i1 %tobool.not.i.i, i1 %tobool2.i.not.i, i1 false
  %and.i4.i = and i64 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i)
  %tobool.i.i = icmp ne i64 %and.i4.i, 0
  %or.cond5 = select i1 %or.cond, i1 true, i1 %tobool.i.i
  %and.i2 = and i64 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i2)
  %tobool.i3 = icmp ne i64 %and.i2, 0
  %or.cond6 = select i1 %or.cond5, i1 true, i1 %tobool.i3
  br i1 %or.cond6, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %re_key.i) #6
  %4 = call ptr @memset(ptr %re_key.i, i32 0, i32 24)
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %5 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_addr.i, align 64
  %call1.i = tail call i32 @prestera_is_valid_mac_addr(ptr noundef %add.ptr.i.i, ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__prestera_inetaddr_port_event.__msg) #6
  %tobool2.not.i = icmp eq ptr %extack, null
  br i1 %tobool2.not.i, label %do.body.i.__prestera_inetaddr_port_event.exit_crit_edge, label %if.then3.i

do.body.i.__prestera_inetaddr_port_event.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__prestera_inetaddr_port_event.exit

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @__prestera_inetaddr_port_event.__msg, ptr %extack, align 4
  br label %__prestera_inetaddr_port_event.exit

if.end4.i:                                        ; preds = %if.end
  %8 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !31
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i.i.i, label %if.end4.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end4.i.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end4.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #6
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end4.i.rcu_read_lock.exit.i.i_crit_edge
  %call.i.i = tail call i32 @l3mdev_fib_table_rcu(ptr noundef %dev) #6
  %call.i1.i.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i1.i.i, label %rcu_read_lock.exit.i.i.l3mdev_fib_table.exit.i_crit_edge, label %land.lhs.true.i4.i.i

rcu_read_lock.exit.i.i.l3mdev_fib_table.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l3mdev_fib_table.exit.i

land.lhs.true.i4.i.i:                             ; preds = %rcu_read_lock.exit.i.i
  %call1.i2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %call1.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %land.lhs.true.i4.i.i.l3mdev_fib_table.exit.i_crit_edge, label %land.lhs.true2.i6.i.i

land.lhs.true.i4.i.i.l3mdev_fib_table.exit.i_crit_edge: ; preds = %land.lhs.true.i4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l3mdev_fib_table.exit.i

land.lhs.true2.i6.i.i:                            ; preds = %land.lhs.true.i4.i.i
  %.b4.i5.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5.i.i, label %land.lhs.true2.i6.i.i.l3mdev_fib_table.exit.i_crit_edge, label %if.then.i7.i.i

land.lhs.true2.i6.i.i.l3mdev_fib_table.exit.i_crit_edge: ; preds = %land.lhs.true2.i6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %l3mdev_fib_table.exit.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true2.i6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #6
  br label %l3mdev_fib_table.exit.i

l3mdev_fib_table.exit.i:                          ; preds = %if.then.i7.i.i, %land.lhs.true2.i6.i.i.l3mdev_fib_table.exit.i_crit_edge, %land.lhs.true.i4.i.i.l3mdev_fib_table.exit.i_crit_edge, %rcu_read_lock.exit.i.i.l3mdev_fib_table.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !32
  %12 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i8.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i8.i.i to ptr
  %preempt_count.i.i.i.i9.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i9.i.i, align 4
  %sub.i.i.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i9.i.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %16 = ptrtoint ptr %re_key.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %re_key.i, align 4
  %dev_id.i = getelementptr i8, ptr %dev, i32 2692
  %17 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dev_id.i, align 4
  %dev_port.i = getelementptr inbounds %struct.prestera_iface, ptr %re_key.i, i32 0, i32 1
  %19 = ptrtoint ptr %dev_port.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dev_port.i, align 4
  %hw_id.i = getelementptr i8, ptr %dev, i32 2688
  %20 = ptrtoint ptr %hw_id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_id.i, align 8
  %port_num.i = getelementptr inbounds %struct.prestera_iface, ptr %re_key.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %port_num.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %port_num.i, align 4
  %sw.i = getelementptr i8, ptr %dev, i32 2308
  %23 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sw.i, align 4
  %call9.i = call ptr @prestera_rif_entry_find(ptr noundef %24, ptr noundef nonnull %re_key.i) #6
  %25 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %l3mdev_fib_table.exit.i.__prestera_inetaddr_port_event.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb36.i
  ]

l3mdev_fib_table.exit.i.__prestera_inetaddr_port_event.exit_crit_edge: ; preds = %l3mdev_fib_table.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__prestera_inetaddr_port_event.exit

sw.bb.i:                                          ; preds = %l3mdev_fib_table.exit.i
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end20.i, label %do.body12.i

do.body12.i:                                      ; preds = %sw.bb.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @__prestera_inetaddr_port_event.__msg.2) #6
  %tobool14.not.i = icmp eq ptr %extack, null
  br i1 %tobool14.not.i, label %do.body12.i.__prestera_inetaddr_port_event.exit_crit_edge, label %if.then15.i

do.body12.i.__prestera_inetaddr_port_event.exit_crit_edge: ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__prestera_inetaddr_port_event.exit

if.then15.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @__prestera_inetaddr_port_event.__msg.2, ptr %extack, align 4
  br label %__prestera_inetaddr_port_event.exit

if.end20.i:                                       ; preds = %sw.bb.i
  %27 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sw.i, align 4
  %29 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %call.i.i, label %if.end20.i.prestera_fix_tb_id.exit.i_crit_edge [
    i32 0, label %if.end20.i.if.then.i.i_crit_edge
    i32 255, label %if.end20.i.if.then.i.i_crit_edge7
    i32 253, label %if.end20.i.if.then.i.i_crit_edge8
  ]

if.end20.i.if.then.i.i_crit_edge8:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end20.i.if.then.i.i_crit_edge7:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end20.i.if.then.i.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end20.i.prestera_fix_tb_id.exit.i_crit_edge:   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %prestera_fix_tb_id.exit.i

if.then.i.i:                                      ; preds = %if.end20.i.if.then.i.i_crit_edge, %if.end20.i.if.then.i.i_crit_edge7, %if.end20.i.if.then.i.i_crit_edge8
  br label %prestera_fix_tb_id.exit.i

prestera_fix_tb_id.exit.i:                        ; preds = %if.then.i.i, %if.end20.i.prestera_fix_tb_id.exit.i_crit_edge
  %tb_id.addr.0.i.i = phi i32 [ 254, %if.then.i.i ], [ %call.i.i, %if.end20.i.prestera_fix_tb_id.exit.i_crit_edge ]
  %30 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_addr.i, align 64
  %call24.i = call ptr @prestera_rif_entry_create(ptr noundef %28, ptr noundef nonnull %re_key.i, i32 noundef %tb_id.addr.0.i.i, ptr noundef %31) #6
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %do.body27.i, label %if.end35.i

do.body27.i:                                      ; preds = %prestera_fix_tb_id.exit.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @__prestera_inetaddr_port_event.__msg.3) #6
  %tobool29.not.i = icmp eq ptr %extack, null
  br i1 %tobool29.not.i, label %do.body27.i.__prestera_inetaddr_port_event.exit_crit_edge, label %if.then30.i

do.body27.i.__prestera_inetaddr_port_event.exit_crit_edge: ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__prestera_inetaddr_port_event.exit

if.then30.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @__prestera_inetaddr_port_event.__msg.3, ptr %extack, align 4
  br label %__prestera_inetaddr_port_event.exit

if.end35.i:                                       ; preds = %prestera_fix_tb_id.exit.i
  %tobool.not.i.i4 = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i4, label %if.end35.i.__prestera_inetaddr_port_event.exit_crit_edge, label %do.body1.i.i

if.end35.i.__prestera_inetaddr_port_event.exit_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__prestera_inetaddr_port_event.exit

do.body1.i.i:                                     ; preds = %if.end35.i
  %33 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !33
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %34 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %42, %36
  %43 = inttoptr i32 %add.i.i to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add13.i.i = add i32 %45, 1
  store i32 %add13.i.i, ptr %43, align 4
  %46 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !34
  %and.i.i.i.i = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !35

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #6, !srcloc !36
  br label %__prestera_inetaddr_port_event.exit

sw.bb36.i:                                        ; preds = %l3mdev_fib_table.exit.i
  %tobool37.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool37.not.i, label %do.body39.i, label %if.end47.i

do.body39.i:                                      ; preds = %sw.bb36.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @__prestera_inetaddr_port_event.__msg.4) #6
  %tobool41.not.i = icmp eq ptr %extack, null
  br i1 %tobool41.not.i, label %do.body39.i.__prestera_inetaddr_port_event.exit_crit_edge, label %if.then42.i

do.body39.i.__prestera_inetaddr_port_event.exit_crit_edge: ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__prestera_inetaddr_port_event.exit

if.then42.i:                                      ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @__prestera_inetaddr_port_event.__msg.4, ptr %extack, align 4
  br label %__prestera_inetaddr_port_event.exit

if.end47.i:                                       ; preds = %sw.bb36.i
  %48 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sw.i, align 4
  call void @prestera_rif_entry_destroy(ptr noundef %49, ptr noundef nonnull %call9.i) #6
  %tobool.not.i74.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i74.i, label %if.end47.i.__prestera_inetaddr_port_event.exit_crit_edge, label %do.body1.i83.i

if.end47.i.__prestera_inetaddr_port_event.exit_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__prestera_inetaddr_port_event.exit

do.body1.i83.i:                                   ; preds = %if.end47.i
  %50 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !33
  %pcpu_refcnt.i75.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %51 = ptrtoint ptr %pcpu_refcnt.i75.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pcpu_refcnt.i75.i, align 4
  %53 = ptrtoint ptr %52 to i32
  %54 = call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i76.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i76.i to ptr
  %cpu.i77.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %cpu.i77.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu.i77.i, align 4
  %arrayidx.i78.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx.i78.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i78.i, align 4
  %add.i79.i = add i32 %59, %53
  %60 = inttoptr i32 %add.i79.i to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %add13.i80.i = add i32 %62, -1
  store i32 %add13.i80.i, ptr %60, align 4
  %63 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !34
  %and.i.i.i81.i = and i32 %63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i81.i)
  %tobool24.not.i82.i = icmp eq i32 %and.i.i.i81.i, 0
  br i1 %tobool24.not.i82.i, label %if.then28.i84.i, label %do.body1.i83.i.do.end30.i85.i_crit_edge, !prof !35

do.body1.i83.i.do.end30.i85.i_crit_edge:          ; preds = %do.body1.i83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30.i85.i

if.then28.i84.i:                                  ; preds = %do.body1.i83.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %do.end30.i85.i

do.end30.i85.i:                                   ; preds = %if.then28.i84.i, %do.body1.i83.i.do.end30.i85.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %50) #6, !srcloc !36
  br label %__prestera_inetaddr_port_event.exit

__prestera_inetaddr_port_event.exit:              ; preds = %do.end30.i85.i, %if.end47.i.__prestera_inetaddr_port_event.exit_crit_edge, %if.then42.i, %do.body39.i.__prestera_inetaddr_port_event.exit_crit_edge, %do.end30.i.i, %if.end35.i.__prestera_inetaddr_port_event.exit_crit_edge, %if.then30.i, %do.body27.i.__prestera_inetaddr_port_event.exit_crit_edge, %if.then15.i, %do.body12.i.__prestera_inetaddr_port_event.exit_crit_edge, %l3mdev_fib_table.exit.i.__prestera_inetaddr_port_event.exit_crit_edge, %if.then3.i, %do.body.i.__prestera_inetaddr_port_event.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.then3.i ], [ %call1.i, %do.body.i.__prestera_inetaddr_port_event.exit_crit_edge ], [ -17, %if.then15.i ], [ -17, %do.body12.i.__prestera_inetaddr_port_event.exit_crit_edge ], [ -22, %if.then30.i ], [ -22, %do.body27.i.__prestera_inetaddr_port_event.exit_crit_edge ], [ -17, %if.then42.i ], [ -17, %do.body39.i.__prestera_inetaddr_port_event.exit_crit_edge ], [ 0, %l3mdev_fib_table.exit.i.__prestera_inetaddr_port_event.exit_crit_edge ], [ 0, %if.end35.i.__prestera_inetaddr_port_event.exit_crit_edge ], [ 0, %do.end30.i.i ], [ 0, %if.end47.i.__prestera_inetaddr_port_event.exit_crit_edge ], [ 0, %do.end30.i85.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %re_key.i) #6
  br label %return

return:                                           ; preds = %__prestera_inetaddr_port_event.exit, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %__prestera_inetaddr_port_event.exit ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %lor.lhs.false2.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prestera_netdev_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_is_valid_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prestera_rif_entry_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prestera_rif_entry_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_rif_entry_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_fib_table_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !17, !18, !20}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__prestera_inetaddr_valid_cb.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_router.c", i32 129, i32 3}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../include/linux/inetdevice.h", i32 249, i32 9}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__prestera_inetaddr_port_event.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_router.c", i32 35, i32 3}
!8 = !{ptr @__prestera_inetaddr_port_event.__msg.2, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_router.c", i32 48, i32 4}
!10 = !{ptr @__prestera_inetaddr_port_event.__msg.3, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_router.c", i32 55, i32 4}
!12 = !{ptr @__prestera_inetaddr_port_event.__msg.4, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_router.c", i32 62, i32 4}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2149354601}
!32 = !{i64 2149354867}
!33 = !{i64 605050, i64 605111}
!34 = !{i64 607782}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 608067}
