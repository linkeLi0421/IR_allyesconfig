; ModuleID = '/llk/IR_all_yes/net/hsr/hsr_slave.c_pt.bc'
source_filename = "../net/hsr/hsr_slave.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
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
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.hsr_port = type { %struct.list_head, ptr, ptr, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.hsr_priv = type { %struct.callback_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, i32, i16, i16, i32, %struct.spinlock, %struct.spinlock, ptr, i8, i8, [6 x i8], ptr }
%struct.callback_head = type { ptr, ptr }
%struct.hsr_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@hsr_handle_frame.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/hsr/hsr_slave.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: skb invalid\00", [16 x i8] zeroinitializer }, align 32
@__func__.hsr_handle_frame = private unnamed_addr constant [17 x i8] c"hsr_handle_frame\00", align 1
@hsr_port_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/hsr/hsr_slave.h\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@hsr_check_dev_ok.__msg = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"hsr: Cannot use loopback or non-ethernet device as HSR slave.\00", [34 x i8] zeroinitializer }, align 32
@hsr_check_dev_ok.__msg.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"hsr: Cannot create trees of HSR devices.\00", [55 x i8] zeroinitializer }, align 32
@hsr_check_dev_ok.__msg.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"hsr: This device is already a HSR slave.\00", [55 x i8] zeroinitializer }, align 32
@hsr_check_dev_ok.__msg.6 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"hsr: HSR on top of VLAN is not yet supported in this driver.\00", [35 x i8] zeroinitializer }, align 32
@hsr_check_dev_ok.__msg.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"hsr: This device does not support bridging.\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 36, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [23 x i8] c"../net/hsr/hsr_slave.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 32, i32 5 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 89, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 95, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 101, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 107, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.33 = private constant [23 x i8] c"../net/hsr/hsr_slave.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 112, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @hsr_check_dev_ok.__msg, ptr @hsr_check_dev_ok.__msg.4, ptr @hsr_check_dev_ok.__msg.5, ptr @hsr_check_dev_ok.__msg.6, ptr @hsr_check_dev_ok.__msg.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_check_dev_ok.__msg to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_check_dev_ok.__msg.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_check_dev_ok.__msg.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_check_dev_ok.__msg.6 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_check_dev_ok.__msg.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hsr_invalid_dan_ingress_frame(i16 noundef zeroext %protocol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30469, i16 %protocol)
  %cmp.not = icmp ne i16 %protocol, -30469
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30417, i16 %protocol)
  %cmp3 = icmp ne i16 %protocol, -30417
  %spec.select = and i1 %cmp.not, %cmp3
  ret i1 %spec.select
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hsr_port_exists(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_handler = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 94
  %0 = ptrtoint ptr %rx_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_handler, align 32
  %cmp = icmp eq ptr %1, @hsr_handle_frame
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsr_handle_frame(ptr nocapture noundef readonly %pskb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pskb, align 4
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask)
  %cmp = icmp eq i16 %bf.lshr.mask, -24576
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !28

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 21
  %3 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mac_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %cmp.i.not = icmp eq i16 %4, -1
  br i1 %cmp.i.not, label %land.end, label %if.end46

land.end:                                         ; preds = %if.end
  %.b101 = load i1, ptr @hsr_handle_frame.__already_done, align 1
  br i1 %.b101, label %land.end.cleanup_crit_edge, label %if.then16, !prof !29

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @hsr_handle_frame.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.hsr_handle_frame) #5
  br label %cleanup

if.end46:                                         ; preds = %if.end
  %5 = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %rx_handler.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 94
  %8 = ptrtoint ptr %rx_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %rx_handler.i.i, align 32
  %cmp.i.i = icmp eq ptr %9, @hsr_handle_frame
  br i1 %cmp.i.i, label %cond.true.i, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.true.i:                                      ; preds = %if.end46
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 95
  %10 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call2.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %cond.true.i.hsr_port_get_rcu.exit_crit_edge

cond.true.i.hsr_port_get_rcu.exit_crit_edge:      ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hsr_port_get_rcu.exit

land.lhs.true.i:                                  ; preds = %cond.true.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.hsr_port_get_rcu.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.hsr_port_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hsr_port_get_rcu.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @hsr_port_get_rcu.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true5.i.hsr_port_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true5.i.hsr_port_get_rcu.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hsr_port_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @hsr_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 32, ptr noundef nonnull @.str.3) #5
  br label %hsr_port_get_rcu.exit

hsr_port_get_rcu.exit:                            ; preds = %if.then.i, %land.lhs.true5.i.hsr_port_get_rcu.exit_crit_edge, %land.lhs.true.i.hsr_port_get_rcu.exit_crit_edge, %cond.true.i.hsr_port_get_rcu.exit_crit_edge
  %tobool48.not = icmp eq ptr %11, null
  br i1 %tobool48.not, label %hsr_port_get_rcu.exit.cleanup_crit_edge, label %if.end50

hsr_port_get_rcu.exit.cleanup_crit_edge:          ; preds = %hsr_port_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end50:                                         ; preds = %hsr_port_get_rcu.exit
  %hsr51 = getelementptr inbounds %struct.hsr_port, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %hsr51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hsr51, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %16 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mac_header.i, align 2
  %conv.i.i = zext i16 %17 to i32
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %conv.i.i
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %call54 = tail call zeroext i1 @hsr_addr_is_self(ptr noundef %13, ptr noundef %h_source) #5
  br i1 %call54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #5
  br label %cleanup

if.end56:                                         ; preds = %if.end50
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i, align 8
  %20 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mac_header.i, align 2
  %conv.i.i105 = zext i16 %21 to i32
  %add.ptr.i.i106 = getelementptr i8, ptr %19, i32 %conv.i.i105
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i106, i32 0, i32 2
  %22 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %h_proto, align 1
  %dev = getelementptr inbounds %struct.hsr_port, ptr %11, i32 0, i32 1
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 23
  %26 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %features, align 16
  %and = and i64 %27, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool58.not = icmp eq i64 %and, 0
  br i1 %tobool58.not, label %land.lhs.true, label %if.end56.if.end66_crit_edge

if.end56.if.end66_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

land.lhs.true:                                    ; preds = %if.end56
  %proto_ops = getelementptr inbounds %struct.hsr_priv, ptr %13, i32 0, i32 12
  %28 = ptrtoint ptr %proto_ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %proto_ops, align 4
  %invalid_dan_ingress_frame = getelementptr inbounds %struct.hsr_proto_ops, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %invalid_dan_ingress_frame to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %invalid_dan_ingress_frame, align 4
  %tobool59.not = icmp eq ptr %31, null
  br i1 %tobool59.not, label %land.lhs.true.if.end66_crit_edge, label %land.lhs.true60

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

land.lhs.true60:                                  ; preds = %land.lhs.true
  %call63 = tail call zeroext i1 %31(i16 noundef zeroext %23) #5
  br i1 %call63, label %land.lhs.true60.cleanup_crit_edge, label %land.lhs.true60.if.end66_crit_edge

land.lhs.true60.if.end66_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

land.lhs.true60.cleanup_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end66:                                         ; preds = %land.lhs.true60.if.end66_crit_edge, %land.lhs.true.if.end66_crit_edge, %if.end56.if.end66_crit_edge
  %call67 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 14) #5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %34 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %36 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %prot_version = getelementptr inbounds %struct.hsr_priv, ptr %13, i32 0, i32 9
  %37 = ptrtoint ptr %prot_version to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prot_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool68.not = icmp eq i32 %38, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30469, i16 %23)
  %cmp71 = icmp eq i16 %23, -30469
  %or.cond = select i1 %tobool68.not, i1 %cmp71, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30417, i16 %23)
  %cmp74 = icmp eq i16 %23, -30417
  %or.cond102 = select i1 %or.cond, i1 true, i1 %cmp74
  br i1 %or.cond102, label %if.then76, label %if.end66.if.end77_crit_edge

if.end66.if.end77_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.then76:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %add.i = add i16 %conv.i, 20
  %39 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %add.i, ptr %network_header.i.i, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end66.if.end77_crit_edge
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %40 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %network_header.i, align 4
  %42 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mac_header.i, align 2
  %sub.i = sub i16 %41, %43
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 8
  %44 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %sub.i, ptr %mac_len.i, align 4
  tail call void @hsr_forward_skb(ptr noundef %1, ptr noundef nonnull %11) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %land.lhs.true60.cleanup_crit_edge, %if.then55, %hsr_port_get_rcu.exit.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.then16, %land.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ 3, %if.then16 ], [ 3, %land.end.cleanup_crit_edge ], [ 0, %if.end77 ], [ 0, %if.then55 ], [ 3, %land.lhs.true60.cleanup_crit_edge ], [ 3, %hsr_port_get_rcu.exit.cleanup_crit_edge ], [ 3, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hsr_add_port(ptr noundef %hsr, ptr noundef %dev, i32 noundef %type, ptr noundef %extack) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp.not = icmp eq i32 %type, 4
  br i1 %cmp.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.do.body.i_crit_edge

if.then.do.body.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %if.then
  %type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.not.i = icmp eq i16 %3, 1
  br i1 %cmp.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %4 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %5)
  %cmp4.not.i = icmp eq i8 %5, 6
  br i1 %cmp4.not.i, label %if.end8.i, label %lor.lhs.false2.i.do.body.i_crit_edge

lor.lhs.false2.i.do.body.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false2.i.do.body.i_crit_edge, %lor.lhs.false.i.do.body.i_crit_edge, %if.then.do.body.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @hsr_check_dev_ok.__msg) #5
  %tobool6.not.i = icmp eq ptr %extack, null
  br i1 %tobool6.not.i, label %do.body.i.cleanup_crit_edge, label %do.body.i.return.sink.split.i_crit_edge

do.body.i.return.sink.split.i_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.i:                                        ; preds = %lor.lhs.false2.i
  %call.i = tail call zeroext i1 @is_hsr_master(ptr noundef %dev) #5
  br i1 %call.i, label %do.body10.i, label %if.end17.i

do.body10.i:                                      ; preds = %if.end8.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @hsr_check_dev_ok.__msg.4) #5
  %tobool12.not.i = icmp eq ptr %extack, null
  br i1 %tobool12.not.i, label %do.body10.i.cleanup_crit_edge, label %do.body10.i.return.sink.split.i_crit_edge

do.body10.i.return.sink.split.i_crit_edge:        ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

do.body10.i.cleanup_crit_edge:                    ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17.i:                                       ; preds = %if.end8.i
  %rx_handler.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 94
  %6 = ptrtoint ptr %rx_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %rx_handler.i.i, align 32
  %cmp.i.i = icmp eq ptr %7, @hsr_handle_frame
  br i1 %cmp.i.i, label %do.body20.i, label %if.end27.i

do.body20.i:                                      ; preds = %if.end17.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @hsr_check_dev_ok.__msg.5) #5
  %tobool22.not.i = icmp eq ptr %extack, null
  br i1 %tobool22.not.i, label %do.body20.i.cleanup_crit_edge, label %do.body20.i.return.sink.split.i_crit_edge

do.body20.i.return.sink.split.i_crit_edge:        ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

do.body20.i.cleanup_crit_edge:                    ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27.i:                                       ; preds = %if.end17.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %8 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %9, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end37.i, label %do.body30.i

do.body30.i:                                      ; preds = %if.end27.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @hsr_check_dev_ok.__msg.6) #5
  %tobool32.not.i = icmp eq ptr %extack, null
  br i1 %tobool32.not.i, label %do.body30.i.cleanup_crit_edge, label %do.body30.i.return.sink.split.i_crit_edge

do.body30.i.return.sink.split.i_crit_edge:        ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

do.body30.i.cleanup_crit_edge:                    ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37.i:                                       ; preds = %if.end27.i
  %and38.i = and i64 %9, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and38.i)
  %tobool39.not.i = icmp eq i64 %and38.i, 0
  br i1 %tobool39.not.i, label %if.end37.i.if.end2_crit_edge, label %do.body41.i

if.end37.i.if.end2_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

do.body41.i:                                      ; preds = %if.end37.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @hsr_check_dev_ok.__msg.7) #5
  %tobool43.not.i = icmp eq ptr %extack, null
  br i1 %tobool43.not.i, label %do.body41.i.cleanup_crit_edge, label %do.body41.i.return.sink.split.i_crit_edge

do.body41.i.return.sink.split.i_crit_edge:        ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

do.body41.i.cleanup_crit_edge:                    ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

return.sink.split.i:                              ; preds = %do.body41.i.return.sink.split.i_crit_edge, %do.body30.i.return.sink.split.i_crit_edge, %do.body20.i.return.sink.split.i_crit_edge, %do.body10.i.return.sink.split.i_crit_edge, %do.body.i.return.sink.split.i_crit_edge
  %hsr_check_dev_ok.__msg.7.sink.i = phi ptr [ @hsr_check_dev_ok.__msg, %do.body.i.return.sink.split.i_crit_edge ], [ @hsr_check_dev_ok.__msg.4, %do.body10.i.return.sink.split.i_crit_edge ], [ @hsr_check_dev_ok.__msg.5, %do.body20.i.return.sink.split.i_crit_edge ], [ @hsr_check_dev_ok.__msg.6, %do.body30.i.return.sink.split.i_crit_edge ], [ @hsr_check_dev_ok.__msg.7, %do.body41.i.return.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -22, %do.body.i.return.sink.split.i_crit_edge ], [ -22, %do.body10.i.return.sink.split.i_crit_edge ], [ -22, %do.body20.i.return.sink.split.i_crit_edge ], [ -22, %do.body30.i.return.sink.split.i_crit_edge ], [ -95, %do.body41.i.return.sink.split.i_crit_edge ]
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %hsr_check_dev_ok.__msg.7.sink.i, ptr %extack, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end37.i.if.end2_crit_edge, %entry.if.end2_crit_edge
  %call3 = tail call ptr @hsr_port_get_hsr(ptr noundef %hsr, i32 noundef %type) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 20) #8
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %hsr11 = getelementptr inbounds %struct.hsr_port, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %hsr11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %hsr, ptr %hsr11, align 4
  %dev12 = getelementptr inbounds %struct.hsr_port, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %dev12, align 8
  %type13 = getelementptr inbounds %struct.hsr_port, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %type13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %type, ptr %type13, align 8
  br i1 %cmp.not, label %if.end10.if.end20_crit_edge, label %if.then15

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then15:                                        ; preds = %if.end10
  %call.i50 = tail call i32 @dev_set_promiscuity(ptr noundef %dev, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool.not.i51 = icmp eq i32 %call.i50, 0
  br i1 %tobool.not.i51, label %if.end.i, label %if.then15.fail_dev_setup_crit_edge

if.then15.fail_dev_setup_crit_edge:               ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_dev_setup

if.end.i:                                         ; preds = %if.then15
  %call1.i = tail call ptr @hsr_port_get_hsr(ptr noundef %hsr, i32 noundef 4) #5
  %dev2.i = getelementptr inbounds %struct.hsr_port, ptr %call1.i, i32 0, i32 1
  %15 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2.i, align 4
  %call3.i = tail call i32 @netdev_upper_dev_link(ptr noundef %dev, ptr noundef %16, ptr noundef %extack) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.fail_upper_dev_link.i_crit_edge

if.end.i.fail_upper_dev_link.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_upper_dev_link.i

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @netdev_rx_handler_register(ptr noundef %dev, ptr noundef nonnull @hsr_handle_frame, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %hsr_portdev_setup.exit, label %fail_rx_handler.i

fail_rx_handler.i:                                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @netdev_upper_dev_unlink(ptr noundef %dev, ptr noundef %16) #5
  br label %fail_upper_dev_link.i

fail_upper_dev_link.i:                            ; preds = %fail_rx_handler.i, %if.end.i.fail_upper_dev_link.i_crit_edge
  %res.0.i = phi i32 [ %call3.i, %if.end.i.fail_upper_dev_link.i_crit_edge ], [ %call7.i, %fail_rx_handler.i ]
  %call11.i = tail call i32 @dev_set_promiscuity(ptr noundef %dev, i32 noundef -1) #5
  br label %fail_dev_setup

hsr_portdev_setup.exit:                           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dev_disable_lro(ptr noundef %dev) #5
  br label %if.end20

if.end20:                                         ; preds = %hsr_portdev_setup.exit, %if.end10.if.end20_crit_edge
  %ports = getelementptr inbounds %struct.hsr_priv, ptr %hsr, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.hsr_priv, ptr %hsr, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %18, ptr noundef %ports) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.list_add_tail_rcu.exit_crit_edge

if.end20.list_add_tail_rcu.exit_crit_edge:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ports, ptr %call7.i.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !30
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call7.i.i, ptr %18, align 4
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.end20.list_add_tail_rcu.exit_crit_edge
  tail call void @synchronize_rcu() #5
  %call21 = tail call ptr @hsr_port_get_hsr(ptr noundef %hsr, i32 noundef 4) #5
  %dev22 = getelementptr inbounds %struct.hsr_port, ptr %call21, i32 0, i32 1
  %23 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev22, align 4
  tail call void @netdev_update_features(ptr noundef %24) #5
  %25 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev22, align 4
  %call24 = tail call i32 @hsr_get_max_mtu(ptr noundef %hsr) #5
  %call25 = tail call i32 @dev_set_mtu(ptr noundef %26, i32 noundef %call24) #5
  br label %cleanup

fail_dev_setup:                                   ; preds = %fail_upper_dev_link.i, %if.then15.fail_dev_setup_crit_edge
  %retval.0.i52.ph = phi i32 [ %call.i50, %if.then15.fail_dev_setup_crit_edge ], [ %res.0.i, %fail_upper_dev_link.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %fail_dev_setup, %list_add_tail_rcu.exit, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %return.sink.split.i, %do.body41.i.cleanup_crit_edge, %do.body30.i.cleanup_crit_edge, %do.body20.i.cleanup_crit_edge, %do.body10.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i52.ph, %fail_dev_setup ], [ 0, %list_add_tail_rcu.exit ], [ -16, %if.end2.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %retval.0.ph.i, %return.sink.split.i ], [ -95, %do.body41.i.cleanup_crit_edge ], [ -22, %do.body30.i.cleanup_crit_edge ], [ -22, %do.body20.i.cleanup_crit_edge ], [ -22, %do.body10.i.cleanup_crit_edge ], [ -22, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hsr_port_get_hsr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsr_get_max_mtu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hsr_del_port(ptr noundef %port) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hsr1 = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %hsr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsr1, align 4
  %call = tail call ptr @hsr_port_get_hsr(ptr noundef %1, i32 noundef 4) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %port) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %port, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp.not = icmp eq ptr %call, %port
  br i1 %cmp.not, label %list_del_rcu.exit.if.end_crit_edge, label %if.then

list_del_rcu.exit.if.end_crit_edge:               ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.hsr_port, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void @netdev_update_features(ptr noundef %10) #5
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call3 = tail call i32 @hsr_get_max_mtu(ptr noundef %1) #5
  %call4 = tail call i32 @dev_set_mtu(ptr noundef %12, i32 noundef %call3) #5
  %dev5 = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 1
  %13 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev5, align 4
  tail call void @netdev_rx_handler_unregister(ptr noundef %14) #5
  %15 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev5, align 4
  %call7 = tail call i32 @dev_set_promiscuity(ptr noundef %16, i32 noundef -1) #5
  %17 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev5, align 4
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void @netdev_upper_dev_unlink(ptr noundef %18, ptr noundef %20) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_rcu.exit.if.end_crit_edge
  tail call void @synchronize_rcu() #5
  tail call void @kfree(ptr noundef %port) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rx_handler_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_promiscuity(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_upper_dev_unlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hsr_addr_is_self(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_forward_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_hsr_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_upper_dev_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_rx_handler_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_disable_lro(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../net/hsr/hsr_slave.c", i32 36, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__func__.hsr_handle_frame, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!6 = !{!"../net/hsr/hsr_slave.h", i32 32, i32 5}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hsr_check_dev_ok.__msg, !10, !"__msg", i1 false, i1 false}
!10 = !{!"../net/hsr/hsr_slave.c", i32 89, i32 3}
!11 = !{ptr @hsr_check_dev_ok.__msg.4, !12, !"__msg", i1 false, i1 false}
!12 = !{!"../net/hsr/hsr_slave.c", i32 95, i32 3}
!13 = !{ptr @hsr_check_dev_ok.__msg.5, !14, !"__msg", i1 false, i1 false}
!14 = !{!"../net/hsr/hsr_slave.c", i32 101, i32 3}
!15 = !{ptr @hsr_check_dev_ok.__msg.6, !16, !"__msg", i1 false, i1 false}
!16 = !{!"../net/hsr/hsr_slave.c", i32 107, i32 3}
!17 = !{ptr @hsr_check_dev_ok.__msg.7, !18, !"__msg", i1 false, i1 false}
!18 = !{!"../net/hsr/hsr_slave.c", i32 112, i32 3}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2149674988}
