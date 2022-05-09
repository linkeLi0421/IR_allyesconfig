; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qede/qede_dcbnl.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qede/qede_dcbnl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dcbnl_rtnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.160 = type { ptr }
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
%struct.qed_eth_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_eth_dcbnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@qede_dcbnl_ops = internal constant { %struct.dcbnl_rtnl_ops, [60 x i8] } { %struct.dcbnl_rtnl_ops { ptr @qede_dcbnl_ieee_getets, ptr @qede_dcbnl_ieee_setets, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qede_dcbnl_ieee_getpfc, ptr @qede_dcbnl_ieee_setpfc, ptr @qede_dcbnl_ieee_getapp, ptr @qede_dcbnl_ieee_setapp, ptr null, ptr @qede_dcbnl_ieee_peer_getets, ptr @qede_dcbnl_ieee_peer_getpfc, ptr @qede_dcbnl_getstate, ptr @qede_dcbnl_setstate, ptr @qede_dcbnl_getpermhwaddr, ptr @qede_dcbnl_setpgtccfgtx, ptr @qede_dcbnl_setpgbwgcfgtx, ptr @qede_dcbnl_setpgtccfgrx, ptr @qede_dcbnl_setpgbwgcfgrx, ptr @qede_dcbnl_getpgtccfgtx, ptr @qede_dcbnl_getpgbwgcfgtx, ptr @qede_dcbnl_getpgtccfgrx, ptr @qede_dcbnl_getpgbwgcfgrx, ptr @qede_dcbnl_setpfccfg, ptr @qede_dcbnl_getpfccfg, ptr @qede_dcbnl_setall, ptr @qede_dcbnl_getcap, ptr @qede_dcbnl_getnumtcs, ptr @qede_dcbnl_setnumtcs, ptr @qede_dcbnl_getpfcstate, ptr @qede_dcbnl_setpfcstate, ptr null, ptr null, ptr null, ptr null, ptr @qede_dcbnl_setapp, ptr @qede_dcbnl_getapp, ptr @qede_dcbnl_getfeatcfg, ptr @qede_dcbnl_setfeatcfg, ptr @qede_dcbnl_getdcbx, ptr @qede_dcbnl_setdcbx, ptr @qede_dcbnl_peer_getappinfo, ptr @qede_dcbnl_peer_getapptable, ptr @qede_dcbnl_cee_peer_getpg, ptr @qede_dcbnl_cee_peer_getpfc, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"qede_dcbnl_ops\00", align 1
@___asan_gen_.2 = private constant [49 x i8] c"../drivers/net/ethernet/qlogic/qede/qede_dcbnl.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 307, i32 36 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @qede_dcbnl_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_dcbnl_ops to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qede_set_dcbnl_ops(ptr nocapture noundef writeonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dcbnl_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 139
  %0 = ptrtoint ptr %dcbnl_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @qede_dcbnl_ops, ptr %dcbnl_ops, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_dcbnl_ieee_getets(ptr nocapture noundef readonly %netdev, ptr noundef %ets) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %ieee_getets = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ieee_getets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee_getets, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call i32 %5(ptr noundef %7, ptr noundef %ets) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_dcbnl_ieee_setets(ptr nocapture noundef readonly %netdev, ptr noundef %ets) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %ieee_setets = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ieee_setets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee_setets, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call i32 %5(ptr noundef %7, ptr noundef %ets) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_dcbnl_ieee_getpfc(ptr nocapture noundef readonly %netdev, ptr noundef %pfc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call i32 %5(ptr noundef %7, ptr noundef %pfc) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_dcbnl_ieee_setpfc(ptr nocapture noundef readonly %netdev, ptr noundef %pfc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %ieee_setpfc = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ieee_setpfc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee_setpfc, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call i32 %5(ptr noundef %7, ptr noundef %pfc) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_dcbnl_ieee_getapp(ptr nocapture noundef readonly %netdev, ptr noundef %app) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %ieee_getapp = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ieee_getapp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee_getapp, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call i32 %5(ptr noundef %7, ptr noundef %app) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_dcbnl_ieee_setapp(ptr noundef %netdev, ptr noundef %app) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @dcb_ieee_setapp(ptr noundef %netdev, ptr noundef %app) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %ieee_setapp = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ieee_setapp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee_setapp, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call2 = tail call i32 %5(ptr noundef %7, ptr noundef %app) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_dcbnl_ieee_peer_getets(ptr nocapture noundef readonly %netdev, ptr noundef %ets) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %ieee_peer_getets = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ieee_peer_getets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee_peer_getets, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call i32 %5(ptr noundef %7, ptr noundef %ets) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_dcbnl_ieee_peer_getpfc(ptr nocapture noundef readonly %netdev, ptr noundef %pfc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %ieee_peer_getpfc = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ieee_peer_getpfc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee_peer_getpfc, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call i32 %5(ptr noundef %7, ptr noundef %pfc) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qede_dcbnl_getstate(ptr nocapture noundef readonly %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %getstate = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %getstate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %getstate, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call zeroext i8 %5(ptr noundef %7) #4
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qede_dcbnl_setstate(ptr nocapture noundef readonly %netdev, i8 noundef zeroext %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %setstate = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %setstate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setstate, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call zeroext i8 %5(ptr noundef %7, i8 noundef zeroext %state) #4
  ret i8 %call1
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qede_dcbnl_getpermhwaddr(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %perm_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %addr_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %2 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %3 to i32
  %4 = call ptr @memcpy(ptr %perm_addr, ptr %1, i32 %conv)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_dcbnl_setpgtccfgtx(ptr nocapture noundef readonly %netdev, i32 noundef %prio, i8 noundef zeroext %pri_type, i8 noundef zeroext %pgid, i8 noundef zeroext %bw_pct, i8 noundef zeroext %up_map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %setpgtccfgtx = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %setpgtccfgtx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setpgtccfgtx, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void %5(ptr noundef %7, i32 noundef %prio, i8 noundef zeroext %pri_type, i8 noundef zeroext %pgid, i8 noundef zeroext %bw_pct, i8 noundef zeroext %up_map) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_dcbnl_setpgbwgcfgtx(ptr nocapture noundef readonly %netdev, i32 noundef %pgid, i8 noundef zeroext %bw_pct) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %setpgbwgcfgtx = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %setpgbwgcfgtx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setpgbwgcfgtx, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void %5(ptr noundef %7, i32 noundef %pgid, i8 noundef zeroext %bw_pct) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_dcbnl_setpgtccfgrx(ptr nocapture noundef readonly %netdev, i32 noundef %prio, i8 noundef zeroext %pri_type, i8 noundef zeroext %pgid, i8 noundef zeroext %bw_pct, i8 noundef zeroext %up_map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %setpgtccfgrx = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %setpgtccfgrx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setpgtccfgrx, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void %5(ptr noundef %7, i32 noundef %prio, i8 noundef zeroext %pri_type, i8 noundef zeroext %pgid, i8 noundef zeroext %bw_pct, i8 noundef zeroext %up_map) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_dcbnl_setpgbwgcfgrx(ptr nocapture noundef readonly %netdev, i32 noundef %pgid, i8 noundef zeroext %bw_pct) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %setpgbwgcfgrx = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %setpgbwgcfgrx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setpgbwgcfgrx, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void %5(ptr noundef %7, i32 noundef %pgid, i8 noundef zeroext %bw_pct) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_dcbnl_getpgtccfgtx(ptr nocapture noundef readonly %netdev, i32 noundef %prio, ptr noundef %prio_type, ptr noundef %pgid, ptr noundef %bw_pct, ptr noundef %up_map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %getpgtccfgtx = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %getpgtccfgtx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %getpgtccfgtx, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void %5(ptr noundef %7, i32 noundef %prio, ptr noundef %prio_type, ptr noundef %pgid, ptr noundef %bw_pct, ptr noundef %up_map) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_dcbnl_getpgbwgcfgtx(ptr nocapture noundef readonly %netdev, i32 noundef %pgid, ptr noundef %bw_pct) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %getpgbwgcfgtx = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %getpgbwgcfgtx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %getpgbwgcfgtx, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void %5(ptr noundef %7, i32 noundef %pgid, ptr noundef %bw_pct) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_dcbnl_getpgtccfgrx(ptr nocapture noundef readonly %netdev, i32 noundef %prio, ptr noundef %prio_type, ptr noundef %pgid, ptr noundef %bw_pct, ptr noundef %up_map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %getpgtccfgrx = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %getpgtccfgrx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %getpgtccfgrx, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void %5(ptr noundef %7, i32 noundef %prio, ptr noundef %prio_type, ptr noundef %pgid, ptr noundef %bw_pct, ptr noundef %up_map) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_dcbnl_getpgbwgcfgrx(ptr nocapture noundef readonly %netdev, i32 noundef %pgid, ptr noundef %bw_pct) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %getpgbwgcfgrx = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %getpgbwgcfgrx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %getpgbwgcfgrx, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void %5(ptr noundef %7, i32 noundef %pgid, ptr noundef %bw_pct) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_dcbnl_setpfccfg(ptr nocapture noundef readonly %netdev, i32 noundef %prio, i8 noundef zeroext %setting) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %setpfccfg = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %setpfccfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setpfccfg, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void %5(ptr noundef %7, i32 noundef %prio, i8 noundef zeroext %setting) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_dcbnl_getpfccfg(ptr nocapture noundef readonly %netdev, i32 noundef %prio, ptr noundef %setting) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %getpfccfg = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %getpfccfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %getpfccfg, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void %5(ptr noundef %7, i32 noundef %prio, ptr noundef %setting) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qede_dcbnl_setall(ptr nocapture noundef readonly %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %setall = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %setall to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setall, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call zeroext i8 %5(ptr noundef %7) #4
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qede_dcbnl_getcap(ptr nocapture noundef readonly %netdev, i32 noundef %capid, ptr noundef %cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %getcap = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %getcap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %getcap, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call zeroext i8 %5(ptr noundef %7, i32 noundef %capid, ptr noundef %cap) #4
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_dcbnl_getnumtcs(ptr nocapture noundef readonly %netdev, i32 noundef %tcid, ptr noundef %num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %getnumtcs = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %getnumtcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %getnumtcs, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call i32 %5(ptr noundef %7, i32 noundef %tcid, ptr noundef %num) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_dcbnl_setnumtcs(ptr nocapture noundef readonly %netdev, i32 noundef %tcid, i8 noundef zeroext %num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %setnumtcs = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %setnumtcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setnumtcs, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call i32 %5(ptr noundef %7, i32 noundef %tcid, i8 noundef zeroext %num) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qede_dcbnl_getpfcstate(ptr nocapture noundef readonly %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %getpfcstate = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %getpfcstate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %getpfcstate, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call zeroext i8 %5(ptr noundef %7) #4
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_dcbnl_setpfcstate(ptr nocapture noundef readonly %netdev, i8 noundef zeroext %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %setpfcstate = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %setpfcstate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setpfcstate, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void %5(ptr noundef %7, i8 noundef zeroext %state) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_dcbnl_setapp(ptr nocapture noundef readonly %netdev, i8 noundef zeroext %idtype, i16 noundef zeroext %idval, i8 noundef zeroext %up) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %setapp = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %setapp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setapp, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call i32 %5(ptr noundef %7, i8 noundef zeroext %idtype, i16 noundef zeroext %idval, i8 noundef zeroext %up) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_dcbnl_getapp(ptr nocapture noundef readonly %netdev, i8 noundef zeroext %idtype, i16 noundef zeroext %id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %getapp = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %getapp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %getapp, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call i32 %5(ptr noundef %7, i8 noundef zeroext %idtype, i16 noundef zeroext %id) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qede_dcbnl_getfeatcfg(ptr nocapture noundef readonly %netdev, i32 noundef %featid, ptr noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %getfeatcfg = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %getfeatcfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %getfeatcfg, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call zeroext i8 %5(ptr noundef %7, i32 noundef %featid, ptr noundef %flags) #4
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qede_dcbnl_setfeatcfg(ptr nocapture noundef readonly %netdev, i32 noundef %featid, i8 noundef zeroext %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %setfeatcfg = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %setfeatcfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setfeatcfg, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call zeroext i8 %5(ptr noundef %7, i32 noundef %featid, i8 noundef zeroext %flags) #4
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qede_dcbnl_getdcbx(ptr nocapture noundef readonly %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %getdcbx = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %getdcbx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %getdcbx, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call zeroext i8 %5(ptr noundef %7) #4
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qede_dcbnl_setdcbx(ptr nocapture noundef readonly %netdev, i8 noundef zeroext %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %setdcbx = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %setdcbx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setdcbx, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call zeroext i8 %5(ptr noundef %7, i8 noundef zeroext %state) #4
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_dcbnl_peer_getappinfo(ptr nocapture noundef readonly %netdev, ptr noundef %info, ptr noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %peer_getappinfo = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %peer_getappinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peer_getappinfo, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call i32 %5(ptr noundef %7, ptr noundef %info, ptr noundef %count) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_dcbnl_peer_getapptable(ptr nocapture noundef readonly %netdev, ptr noundef %app) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %peer_getapptable = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %peer_getapptable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peer_getapptable, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call i32 %5(ptr noundef %7, ptr noundef %app) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_dcbnl_cee_peer_getpg(ptr nocapture noundef readonly %netdev, ptr noundef %pg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %cee_peer_getpg = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 35
  %4 = ptrtoint ptr %cee_peer_getpg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cee_peer_getpg, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call i32 %5(ptr noundef %7, ptr noundef %pg) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_dcbnl_cee_peer_getpfc(ptr nocapture noundef readonly %netdev, ptr noundef %pfc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ops = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dcb = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %cee_peer_getpfc = getelementptr inbounds %struct.qed_eth_dcbnl_ops, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %cee_peer_getpfc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cee_peer_getpfc, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call i32 %5(ptr noundef %7, ptr noundef %pfc) #4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_ieee_setapp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @qede_dcbnl_ops, !1, !"qede_dcbnl_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qede/qede_dcbnl.c", i32 307, i32 36}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
