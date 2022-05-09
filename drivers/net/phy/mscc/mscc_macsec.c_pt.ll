; ModuleID = '/llk/IR_all_yes/drivers/net/phy/mscc/mscc_macsec.c_pt.bc'
source_filename = "../drivers/net/phy/mscc/mscc_macsec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.macsec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsc8531_private = type { i32, i16, [4 x i32], i8, ptr, ptr, i32, i8, i32, ptr, %struct.list_head, i32, i32, %struct.mii_timestamper, i8, ptr, ptr, i32, i8, %struct.mutex, %struct.mutex }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.macsec_secy = type { ptr, i32, i64, i16, i16, i32, i8, i8, i8, i8, i32, %struct.macsec_tx_sc, ptr }
%struct.macsec_tx_sc = type { i8, i8, i8, i8, i8, i8, [4 x ptr], ptr }
%struct.macsec_flow = type { %struct.list_head, i32, i32, i32, i32, i8, i8, [128 x i8], %union.anon.105, %struct.anon.106, i16, %struct.anon.107 }
%union.anon.105 = type { ptr }
%struct.anon.106 = type { i8 }
%struct.anon.107 = type { i8 }
%struct.macsec_context = type { %union.anon.93, i32, ptr, ptr, %struct.anon.98, %union.anon.100, i8 }
%union.anon.93 = type { ptr }
%struct.anon.98 = type { i8, [128 x i8], %union.anon.99 }
%union.anon.99 = type { ptr }
%union.anon.100 = type { ptr }
%struct.macsec_rx_sa = type { %struct.macsec_key, i32, %struct.spinlock, %union.anon.97, %struct.refcount_struct, i8, ptr, ptr, %struct.callback_head }
%struct.macsec_key = type { [16 x i8], ptr, %union.salt }
%union.salt = type { %struct.anon.94 }
%struct.anon.94 = type <{ i32, i64 }>
%union.anon.97 = type { %union.pn }
%union.pn = type { i64 }
%struct.callback_head = type { ptr, ptr }
%struct.macsec_tx_sa = type { %struct.macsec_key, i32, %struct.spinlock, %union.anon.95, %struct.refcount_struct, i8, ptr, %struct.callback_head }
%union.anon.95 = type { %union.pn }
%struct.macsec_rx_sc = type { ptr, i64, i8, [4 x ptr], ptr, %struct.refcount_struct, %struct.callback_head }
%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }

@vsc8584_macsec_ops = internal constant { %struct.macsec_ops, [52 x i8] } { %struct.macsec_ops { ptr @vsc8584_macsec_dev_open, ptr @vsc8584_macsec_dev_stop, ptr @vsc8584_macsec_add_secy, ptr @vsc8584_macsec_upd_secy, ptr @vsc8584_macsec_del_secy, ptr @vsc8584_macsec_add_rxsc, ptr @vsc8584_macsec_upd_rxsc, ptr @vsc8584_macsec_del_rxsc, ptr @vsc8584_macsec_add_rxsa, ptr @vsc8584_macsec_upd_rxsa, ptr @vsc8584_macsec_del_rxsa, ptr @vsc8584_macsec_add_txsa, ptr @vsc8584_macsec_upd_txsa, ptr @vsc8584_macsec_del_txsa, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 460720, i64 460736, i64 460768]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 56, i64 60]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 56, i64 60]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 56, i64 60]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 56, i64 60]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 56, i64 60]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 56, i64 60]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 56, i64 60]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 16, i64 32]
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"vsc8584_macsec_ops\00", align 1
@___asan_gen_.12 = private constant [38 x i8] c"../drivers/net/phy/mscc/mscc_macsec.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 961, i32 32 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @vsc8584_macsec_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8584_macsec_ops to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsc8584_macsec_init(ptr noundef %phydev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_id, align 4
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv, align 8
  %phy_id_mask = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_id_mask, align 4
  %and = and i32 %5, %1
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 460768, label %entry.sw.bb_crit_edge
    i32 460720, label %entry.sw.bb_crit_edge6
    i32 460736, label %entry.sw.bb_crit_edge7
  ]

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge6, %entry.sw.bb_crit_edge7
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  %macsec_flows = getelementptr inbounds %struct.vsc8531_private, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %macsec_flows to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %macsec_flows, ptr %macsec_flows, align 4
  %prev.i = getelementptr inbounds %struct.vsc8531_private, ptr %8, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %macsec_flows, ptr %prev.i, align 4
  %secy = getelementptr inbounds %struct.vsc8531_private, ptr %8, i32 0, i32 9
  %11 = ptrtoint ptr %secy to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %secy, align 4
  %macsec_ops = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 42
  %12 = ptrtoint ptr %macsec_ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @vsc8584_macsec_ops, ptr %macsec_ops, align 4
  %13 = load ptr, ptr %priv, align 8
  tail call fastcc void @vsc8584_macsec_block_init(ptr noundef %phydev, i32 noundef 56) #5
  tail call fastcc void @vsc8584_macsec_block_init(ptr noundef %phydev, i32 noundef 60) #5
  tail call fastcc void @vsc8584_macsec_mac_init(ptr noundef %phydev, i32 noundef 5) #5
  tail call fastcc void @vsc8584_macsec_mac_init(ptr noundef %phydev, i32 noundef 6) #5
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef 4, i32 noundef 7, i32 noundef 327684) #5
  %call.i = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef 4, i32 noundef 1) #5
  %or.i = or i32 %call.i, 16846848
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef 4, i32 noundef 1, i32 noundef %or.i) #5
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef 4, i32 noundef 2, i32 noundef 589832) #5
  %call2.i = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef 4, i32 noundef 4) #5
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef 4, i32 noundef 4, i32 noundef 335478784) #5
  %call4.i = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef 4, i32 noundef 0) #5
  %or5.i = or i32 %call4.i, 17
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef 4, i32 noundef 0, i32 noundef %or5.i) #5
  %addr.i = getelementptr inbounds %struct.vsc8531_private, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp.i = icmp ult i8 %15, 2
  %cond.i = select i1 %cmp.i, i32 14, i32 15
  %call7.i = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef %cond.i, i32 noundef 2) #5
  %and8.i = and i32 %call7.i, -8
  %or9.i = or i32 %and8.i, 4
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %cond.i, i32 noundef 2, i32 noundef %or9.i) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsc8584_handle_macsec_interrupt(ptr noundef %phydev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %call = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef 60, i32 noundef 15620)
  %and2 = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.cleanup28_crit_edge, label %if.end

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup28

if.end:                                           ; preds = %entry
  %secy = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %secy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %secy, align 4
  %key_len = getelementptr inbounds %struct.macsec_secy, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %key_len, align 8
  %6 = lshr i16 %5, 2
  %narrow = add nuw nsw i16 %6, 6
  %add = zext i16 %narrow to i32
  %macsec_flows = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %macsec_flows to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %macsec_flows, align 4
  %cmp.not53 = icmp eq ptr %8, %macsec_flows
  br i1 %cmp.not53, label %if.end.cleanup28_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup28

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %flow.054 = phi ptr [ %tmp.055, %for.inc.for.body_crit_edge ], [ %8, %if.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %flow.054 to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp.055 = load ptr, ptr %flow.054, align 4
  %bank = getelementptr inbounds %struct.macsec_flow, ptr %flow.054, i32 0, i32 2
  %10 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %11)
  %cmp11.not = icmp eq i32 %11, 60
  br i1 %cmp11.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %has_transformation = getelementptr inbounds %struct.macsec_flow, ptr %flow.054, i32 0, i32 5
  %12 = ptrtoint ptr %has_transformation to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_transformation, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool13.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end15

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end15:                                         ; preds = %lor.lhs.false
  %index = getelementptr inbounds %struct.macsec_flow, ptr %flow.054, i32 0, i32 3
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %shl = shl i32 %15, 5
  %add16 = add i32 %shl, %add
  %call17 = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef 60, i32 noundef %add16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17)
  %cmp18 = icmp eq i32 %call17, -1
  br i1 %cmp18, label %cleanup, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cleanup:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %bank.le = getelementptr inbounds %struct.macsec_flow, ptr %flow.054, i32 0, i32 2
  %index.le = getelementptr inbounds %struct.macsec_flow, ptr %flow.054, i32 0, i32 3
  %16 = ptrtoint ptr %bank.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bank.le, align 4
  %18 = ptrtoint ptr %index.le to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.le, align 4
  %shl.i = shl nuw i32 1, %19
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %17, i32 noundef 6156, i32 noundef %shl.i) #5
  %add.i = add i32 %19, 7168
  %call.i = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef %17, i32 noundef %add.i) #5
  %and.i = and i32 %call.i, -131073
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %17, i32 noundef %add.i, i32 noundef %and.i) #5
  %20 = ptrtoint ptr %secy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %secy, align 4
  %22 = getelementptr inbounds %struct.macsec_flow, ptr %flow.054, i32 0, i32 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  tail call void @macsec_pn_wrapped(ptr noundef %21, ptr noundef %24) #5
  br label %cleanup28

for.inc:                                          ; preds = %if.end15.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.055, %macsec_flows
  br i1 %cmp.not, label %for.inc.cleanup28_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup28_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup28

cleanup28:                                        ; preds = %for.inc.cleanup28_crit_edge, %cleanup, %if.end.cleanup28_crit_edge, %entry.cleanup28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef %bank, i32 noundef %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.failed_crit_edge, label %if.end

entry.failed_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %failed

if.end:                                           ; preds = %entry
  %shr = lshr i32 %bank, 2
  %conv = trunc i32 %shr to i16
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 20, i16 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp3 = icmp eq i32 %shr, 1
  %and = shl i32 %bank, 12
  %bank.addr.0 = select i1 %cmp3, i32 %and, i32 0
  %or = or i32 %bank.addr.0, %reg
  %4 = trunc i32 %or to i16
  %conv8 = or i16 %4, -16384
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 8
  %call.i34 = tail call i32 @__mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 19, i16 noundef zeroext %conv8) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -50, %9
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i, align 8
  %call.i37 = tail call i32 @__mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 19) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp12 = icmp slt i32 %sub, 0
  %and14 = and i32 %call.i37, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not = icmp eq i32 %and14, 0
  %or.cond = select i1 %cmp12, i1 %tobool.not, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i, align 8
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i, align 8
  %call.i40 = tail call i32 @__mdiobus_read(ptr noundef %16, i32 noundef %18, i32 noundef 17) #5
  %19 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i, align 8
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr.i, align 8
  %call.i43 = tail call i32 @__mdiobus_read(ptr noundef %20, i32 noundef %22, i32 noundef 18) #5
  %phi.bo31 = shl i32 %call.i43, 16
  br label %failed

failed:                                           ; preds = %do.end, %entry.failed_crit_edge
  %val_l.0 = phi i32 [ 0, %entry.failed_crit_edge ], [ %call.i40, %do.end ]
  %val_h.0 = phi i32 [ 0, %entry.failed_crit_edge ], [ %phi.bo31, %do.end ]
  %call17 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call, i32 noundef %call) #5
  %or19 = or i32 %val_h.0, %val_l.0
  ret i32 %or19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @macsec_pn_wrapped(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsc8584_config_macsec_intr(ptr noundef %phydev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext 2) #5
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i9 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 28, i16 noundef zeroext 512) #5
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i12 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 31, i16 noundef zeroext 0) #5
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef 60, i32 noundef 15874, i32 noundef 15)
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef 60, i32 noundef 15620, i32 noundef 2097152)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef %reg, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.failed_crit_edge, label %if.end

entry.failed_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %failed

if.end:                                           ; preds = %entry
  %shr = lshr i32 %bank, 2
  %conv = trunc i32 %shr to i16
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 20, i16 noundef zeroext %conv) #5
  %4 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %shr, label %if.end.if.end9_crit_edge [
    i32 1, label %if.end.if.then8_crit_edge
    i32 3, label %if.end.if.then8_crit_edge50
  ]

if.end.if.then8_crit_edge50:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end.if.then8_crit_edge50
  %and = shl i32 %bank, 12
  %phi.bo = and i32 %and, 12288
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %bank.addr.0 = phi i32 [ %phi.bo, %if.then8 ], [ 0, %if.end.if.end9_crit_edge ]
  %conv10 = trunc i32 %val to i16
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 8
  %call.i40 = tail call i32 @__mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 17, i16 noundef zeroext %conv10) #5
  %shr12 = lshr i32 %val, 16
  %conv13 = trunc i32 %shr12 to i16
  %9 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i, align 8
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i, align 8
  %call.i43 = tail call i32 @__mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 18, i16 noundef zeroext %conv13) #5
  %or = or i32 %bank.addr.0, %reg
  %13 = trunc i32 %or to i16
  %conv16 = or i16 %13, -32768
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 8
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i, align 8
  %call.i46 = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %17, i32 noundef 19, i16 noundef zeroext %conv16) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -50, %18
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end9
  %19 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i, align 8
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr.i, align 8
  %call.i49 = tail call i32 @__mdiobus_read(ptr noundef %20, i32 noundef %22, i32 noundef 19) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp20 = icmp slt i32 %sub, 0
  %and22 = and i32 %call.i49, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  %or.cond = select i1 %cmp20, i1 %tobool.not, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.body.failed_crit_edge

do.body.failed_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %failed

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

failed:                                           ; preds = %do.body.failed_crit_edge, %entry.failed_crit_edge
  %call23 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call, i32 noundef %call) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8584_macsec_dev_open(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 26
  %3 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1, align 8
  %macsec_flows = getelementptr inbounds %struct.vsc8531_private, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %macsec_flows to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %macsec_flows, align 4
  %cmp.not22 = icmp eq ptr %6, %macsec_flows
  br i1 %cmp.not22, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %vsc8584_macsec_flow_enable.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %flow.023 = phi ptr [ %tmp.0, %vsc8584_macsec_flow_enable.exit.for.body_crit_edge ], [ %6, %if.end.for.body_crit_edge ]
  %7 = ptrtoint ptr %flow.023 to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.0 = load ptr, ptr %flow.023, align 4
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %bank1.i = getelementptr inbounds %struct.macsec_flow, ptr %flow.023, i32 0, i32 2
  %10 = ptrtoint ptr %bank1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bank1.i, align 4
  %index.i = getelementptr inbounds %struct.macsec_flow, ptr %flow.023, i32 0, i32 3
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i, align 4
  %14 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %11, label %for.body.if.end.i_crit_edge [
    i32 56, label %land.lhs.true.i
    i32 60, label %land.lhs.true7.i
  ]

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body
  %15 = getelementptr inbounds %struct.macsec_flow, ptr %flow.023, i32 0, i32 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %active.i = getelementptr inbounds %struct.macsec_rx_sa, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %active.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool4.not.i = icmp eq i8 %19, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.vsc8584_macsec_flow_enable.exit_crit_edge, label %land.lhs.true3.i.if.end.i_crit_edge

land.lhs.true3.i.if.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true3.i.vsc8584_macsec_flow_enable.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vsc8584_macsec_flow_enable.exit

land.lhs.true7.i:                                 ; preds = %for.body
  %20 = getelementptr inbounds %struct.macsec_flow, ptr %flow.023, i32 0, i32 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool8.not.i = icmp eq ptr %22, null
  br i1 %tobool8.not.i, label %land.lhs.true7.i.if.end.i_crit_edge, label %land.lhs.true9.i

land.lhs.true7.i.if.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true7.i
  %active10.i = getelementptr inbounds %struct.macsec_tx_sa, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %active10.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %active10.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool11.not.i = icmp eq i8 %24, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.vsc8584_macsec_flow_enable.exit_crit_edge, label %land.lhs.true9.i.if.end.i_crit_edge

land.lhs.true9.i.if.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true9.i.vsc8584_macsec_flow_enable.exit_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vsc8584_macsec_flow_enable.exit

if.end.i:                                         ; preds = %land.lhs.true9.i.if.end.i_crit_edge, %land.lhs.true7.i.if.end.i_crit_edge, %land.lhs.true3.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %shl.i = shl nuw i32 1, %13
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %9, i32 noundef %11, i32 noundef 6152, i32 noundef %shl.i) #5
  %add.i = add i32 %13, 7168
  %call.i = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %9, i32 noundef %11, i32 noundef %add.i) #5
  %or.i = or i32 %call.i, 131072
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %9, i32 noundef %11, i32 noundef %add.i, i32 noundef %or.i) #5
  br label %vsc8584_macsec_flow_enable.exit

vsc8584_macsec_flow_enable.exit:                  ; preds = %if.end.i, %land.lhs.true9.i.vsc8584_macsec_flow_enable.exit_crit_edge, %land.lhs.true3.i.vsc8584_macsec_flow_enable.exit_crit_edge
  %cmp.not = icmp eq ptr %tmp.0, %macsec_flows
  br i1 %cmp.not, label %vsc8584_macsec_flow_enable.exit.cleanup_crit_edge, label %vsc8584_macsec_flow_enable.exit.for.body_crit_edge

vsc8584_macsec_flow_enable.exit.for.body_crit_edge: ; preds = %vsc8584_macsec_flow_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

vsc8584_macsec_flow_enable.exit.cleanup_crit_edge: ; preds = %vsc8584_macsec_flow_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %vsc8584_macsec_flow_enable.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8584_macsec_dev_stop(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 26
  %3 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1, align 8
  %macsec_flows = getelementptr inbounds %struct.vsc8531_private, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %macsec_flows to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %macsec_flows, align 4
  %cmp.not22 = icmp eq ptr %6, %macsec_flows
  br i1 %cmp.not22, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %flow.023 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %6, %if.end.for.body_crit_edge ]
  %7 = ptrtoint ptr %flow.023 to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.0 = load ptr, ptr %flow.023, align 4
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %bank1.i = getelementptr inbounds %struct.macsec_flow, ptr %flow.023, i32 0, i32 2
  %10 = ptrtoint ptr %bank1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bank1.i, align 4
  %index.i = getelementptr inbounds %struct.macsec_flow, ptr %flow.023, i32 0, i32 3
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i, align 4
  %shl.i = shl nuw i32 1, %13
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %9, i32 noundef %11, i32 noundef 6156, i32 noundef %shl.i) #5
  %add.i = add i32 %13, 7168
  %call.i = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %9, i32 noundef %11, i32 noundef %add.i) #5
  %and.i = and i32 %call.i, -131073
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %9, i32 noundef %11, i32 noundef %add.i, i32 noundef %and.i) #5
  %cmp.not = icmp eq ptr %tmp.0, %macsec_flows
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8584_macsec_add_secy(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %4 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %secy3 = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %secy3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %secy3, align 4
  %tobool4.not = icmp eq ptr %6, null
  %. = select i1 %tobool4.not, i32 0, i32 -17
  br label %cleanup

if.end6:                                          ; preds = %entry
  %secy2 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 2
  %7 = ptrtoint ptr %secy2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %secy2, align 4
  %secy7 = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %secy7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %secy7, align 4
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %validate_frames = getelementptr inbounds %struct.macsec_secy, ptr %8, i32 0, i32 5
  %12 = ptrtoint ptr %validate_frames to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %validate_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp ne i32 %13, 0
  %spec.store.select.i = zext i1 %cmp to i32
  %shl2.i = select i1 %cmp, i32 256, i32 0
  %or1.i = or i32 %shl2.i, %spec.store.select.i
  %shl7.i = select i1 %cmp, i32 65536, i32 0
  %or6.i = or i32 %or1.i, %shl7.i
  %or11.i = select i1 %cmp, i32 -2122284928, i32 -2139062144
  %or16.i = or i32 %or6.i, %or11.i
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %11, i32 noundef 60, i32 noundef 7761, i32 noundef %or16.i) #5
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %11, i32 noundef 60, i32 noundef 7762, i32 noundef %or16.i) #5
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %16 = ptrtoint ptr %validate_frames to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %validate_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp9 = icmp ne i32 %17, 0
  %spec.store.select.i19 = zext i1 %cmp9 to i32
  %shl2.i20 = select i1 %cmp9, i32 256, i32 0
  %shl7.i22 = select i1 %cmp9, i32 65536, i32 0
  %or14.i = select i1 %cmp9, i32 -1920958336, i32 -1937735552
  %or.i = or i32 %shl2.i20, %spec.store.select.i19
  %or4.i = or i32 %or.i, %shl7.i22
  %or9.i = or i32 %or4.i, %or14.i
  %or16.i25 = or i32 %or9.i, 789516
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %15, i32 noundef 56, i32 noundef 7761, i32 noundef %or16.i25) #5
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %15, i32 noundef 56, i32 noundef 7762, i32 noundef %or16.i25) #5
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  %priv.i = getelementptr inbounds %struct.phy_device, ptr %19, i32 0, i32 26
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 8
  %ingr_flows.i.i = getelementptr inbounds %struct.vsc8531_private, ptr %21, i32 0, i32 11
  %call.i.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %ingr_flows.i.i, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i.i)
  %cmp1.i.i = icmp eq i32 %call.i.i, 16
  br i1 %cmp1.i.i, label %if.end6.if.then.i_crit_edge, label %if.end.i.i

if.end6.if.then.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.end.i.i:                                       ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 168) #8
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.then.i_crit_edge, label %if.end6.i.i

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  tail call void @_set_bit(i32 noundef %call.i.i, ptr noundef %ingr_flows.i.i) #5
  %index7.i.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %index7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i.i, ptr %index7.i.i, align 8
  %bank8.i.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %bank8.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 56, ptr %bank8.i.i, align 4
  %priority.i.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 8, ptr %priority.i.i, align 1
  %assoc_num.i.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %assoc_num.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %assoc_num.i.i, align 4
  %macsec_flows.i.i = getelementptr inbounds %struct.vsc8531_private, ptr %21, i32 0, i32 10
  %prev.i.i.i = getelementptr inbounds %struct.vsc8531_private, ptr %21, i32 0, i32 10, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %28, ptr noundef %macsec_flows.i.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end6.i.i.vsc8584_macsec_alloc_flow.exit.i_crit_edge

if.end6.i.i.vsc8584_macsec_alloc_flow.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vsc8584_macsec_alloc_flow.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %macsec_flows.i.i, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i.i.i, ptr %28, align 4
  br label %vsc8584_macsec_alloc_flow.exit.i

vsc8584_macsec_alloc_flow.exit.i:                 ; preds = %if.end.i.i.i.i, %if.end6.i.i.vsc8584_macsec_alloc_flow.exit.i_crit_edge
  %cmp.i.i = icmp ugt ptr %call7.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %vsc8584_macsec_alloc_flow.exit.i.if.then.i_crit_edge, label %if.end.i

vsc8584_macsec_alloc_flow.exit.i.if.then.i_crit_edge: ; preds = %vsc8584_macsec_alloc_flow.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %vsc8584_macsec_alloc_flow.exit.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge, %if.end6.if.then.i_crit_edge
  %retval.0.i103.i = phi ptr [ %call7.i.i.i.i, %vsc8584_macsec_alloc_flow.exit.i.if.then.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end6.if.then.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.i.if.then.i_crit_edge ]
  %33 = ptrtoint ptr %retval.0.i103.i to i32
  br label %cleanup

if.end.i:                                         ; preds = %vsc8584_macsec_alloc_flow.exit.i
  %34 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 15, ptr %priority.i.i, align 1
  %port.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %port.i, align 8
  %match.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i.i, i32 0, i32 9
  %36 = ptrtoint ptr %match.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i = load i8, ptr %match.i, align 8
  %bf.set10.i = or i8 %bf.load.i, 112
  store i8 %bf.set10.i, ptr %match.i, align 8
  %etype.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i.i, i32 0, i32 10
  %37 = ptrtoint ptr %etype.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -30578, ptr %etype.i, align 2
  %action.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i.i, i32 0, i32 11
  %38 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load11.i = load i8, ptr %action.i, align 4
  %bf.set13.i = or i8 %bf.load11.i, -128
  store i8 %bf.set13.i, ptr %action.i, align 4
  tail call fastcc void @vsc8584_macsec_flow(ptr noundef %19, ptr noundef nonnull %call7.i.i.i.i) #5
  %39 = ptrtoint ptr %bank8.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bank8.i.i, align 4
  %41 = ptrtoint ptr %index7.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index7.i.i, align 8
  %43 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %40, label %if.end.i.if.end.i62.i_crit_edge [
    i32 56, label %land.lhs.true.i.i
    i32 60, label %land.lhs.true7.i.i
  ]

if.end.i.if.end.i62.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i62.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %44 = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i.i, i32 0, i32 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %tobool.not.i60.i = icmp eq ptr %46, null
  br i1 %tobool.not.i60.i, label %land.lhs.true.i.i.if.end.i62.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.if.end.i62.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i62.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %active.i.i = getelementptr inbounds %struct.macsec_rx_sa, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %active.i.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool4.not.i.i = icmp eq i8 %48, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true3.i.i.vsc8584_macsec_flow_enable.exit.i_crit_edge, label %land.lhs.true3.i.i.if.end.i62.i_crit_edge

land.lhs.true3.i.i.if.end.i62.i_crit_edge:        ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i62.i

land.lhs.true3.i.i.vsc8584_macsec_flow_enable.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vsc8584_macsec_flow_enable.exit.i

land.lhs.true7.i.i:                               ; preds = %if.end.i
  %49 = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i.i, i32 0, i32 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %tobool8.not.i.i = icmp eq ptr %51, null
  br i1 %tobool8.not.i.i, label %land.lhs.true7.i.i.if.end.i62.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true7.i.i.if.end.i62.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i62.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true7.i.i
  %active10.i.i = getelementptr inbounds %struct.macsec_tx_sa, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %active10.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %active10.i.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool11.not.i.i = icmp eq i8 %53, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true9.i.i.vsc8584_macsec_flow_enable.exit.i_crit_edge, label %land.lhs.true9.i.i.if.end.i62.i_crit_edge

land.lhs.true9.i.i.if.end.i62.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i62.i

land.lhs.true9.i.i.vsc8584_macsec_flow_enable.exit.i_crit_edge: ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vsc8584_macsec_flow_enable.exit.i

if.end.i62.i:                                     ; preds = %land.lhs.true9.i.i.if.end.i62.i_crit_edge, %land.lhs.true7.i.i.if.end.i62.i_crit_edge, %land.lhs.true3.i.i.if.end.i62.i_crit_edge, %land.lhs.true.i.i.if.end.i62.i_crit_edge, %if.end.i.if.end.i62.i_crit_edge
  %shl.i.i = shl nuw i32 1, %42
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %19, i32 noundef %40, i32 noundef 6152, i32 noundef %shl.i.i) #5
  %add.i.i = add i32 %42, 7168
  %call.i61.i = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %19, i32 noundef %40, i32 noundef %add.i.i) #5
  %or.i.i = or i32 %call.i61.i, 131072
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %19, i32 noundef %40, i32 noundef %add.i.i, i32 noundef %or.i.i) #5
  br label %vsc8584_macsec_flow_enable.exit.i

vsc8584_macsec_flow_enable.exit.i:                ; preds = %if.end.i62.i, %land.lhs.true9.i.i.vsc8584_macsec_flow_enable.exit.i_crit_edge, %land.lhs.true3.i.i.vsc8584_macsec_flow_enable.exit.i_crit_edge
  %54 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv.i, align 8
  %egr_flows.i64.i = getelementptr inbounds %struct.vsc8531_private, ptr %55, i32 0, i32 12
  %call.i65.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %egr_flows.i64.i, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i65.i)
  %cmp1.i66.i = icmp eq i32 %call.i65.i, 16
  br i1 %cmp1.i66.i, label %vsc8584_macsec_flow_enable.exit.i.if.then17.i_crit_edge, label %if.end.i69.i

vsc8584_macsec_flow_enable.exit.i.if.then17.i_crit_edge: ; preds = %vsc8584_macsec_flow_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17.i

if.end.i69.i:                                     ; preds = %vsc8584_macsec_flow_enable.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i67.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 168) #8
  %tobool.not.i68.i = icmp eq ptr %call7.i.i.i67.i, null
  br i1 %tobool.not.i68.i, label %if.end.i69.i.if.then17.i_crit_edge, label %if.end6.i77.i

if.end.i69.i.if.then17.i_crit_edge:               ; preds = %if.end.i69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17.i

if.end6.i77.i:                                    ; preds = %if.end.i69.i
  tail call void @_set_bit(i32 noundef %call.i65.i, ptr noundef %egr_flows.i64.i) #5
  %index7.i70.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i67.i, i32 0, i32 3
  %57 = ptrtoint ptr %index7.i70.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call.i65.i, ptr %index7.i70.i, align 8
  %bank8.i71.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i67.i, i32 0, i32 2
  %58 = ptrtoint ptr %bank8.i71.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 60, ptr %bank8.i71.i, align 4
  %priority.i72.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i67.i, i32 0, i32 6
  %59 = ptrtoint ptr %priority.i72.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 8, ptr %priority.i72.i, align 1
  %assoc_num.i73.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i67.i, i32 0, i32 4
  %60 = ptrtoint ptr %assoc_num.i73.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %assoc_num.i73.i, align 4
  %macsec_flows.i74.i = getelementptr inbounds %struct.vsc8531_private, ptr %55, i32 0, i32 10
  %prev.i.i75.i = getelementptr inbounds %struct.vsc8531_private, ptr %55, i32 0, i32 10, i32 1
  %61 = ptrtoint ptr %prev.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i75.i, align 4
  %call.i.i.i76.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i67.i, ptr noundef %62, ptr noundef %macsec_flows.i74.i) #5
  br i1 %call.i.i.i76.i, label %if.end.i.i.i79.i, label %if.end6.i77.i.vsc8584_macsec_alloc_flow.exit81.i_crit_edge

if.end6.i77.i.vsc8584_macsec_alloc_flow.exit81.i_crit_edge: ; preds = %if.end6.i77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vsc8584_macsec_alloc_flow.exit81.i

if.end.i.i.i79.i:                                 ; preds = %if.end6.i77.i
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %prev.i.i75.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i.i67.i, ptr %prev.i.i75.i, align 4
  %64 = ptrtoint ptr %call7.i.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %macsec_flows.i74.i, ptr %call7.i.i.i67.i, align 8
  %prev3.i.i.i78.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i67.i, i32 0, i32 1
  %65 = ptrtoint ptr %prev3.i.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i.i78.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %call7.i.i.i67.i, ptr %62, align 4
  br label %vsc8584_macsec_alloc_flow.exit81.i

vsc8584_macsec_alloc_flow.exit81.i:               ; preds = %if.end.i.i.i79.i, %if.end6.i77.i.vsc8584_macsec_alloc_flow.exit81.i_crit_edge
  %cmp.i82.i = icmp ugt ptr %call7.i.i.i67.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82.i, label %vsc8584_macsec_alloc_flow.exit81.i.if.then17.i_crit_edge, label %if.end19.i

vsc8584_macsec_alloc_flow.exit81.i.if.then17.i_crit_edge: ; preds = %vsc8584_macsec_alloc_flow.exit81.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17.i

if.then17.i:                                      ; preds = %vsc8584_macsec_alloc_flow.exit81.i.if.then17.i_crit_edge, %if.end.i69.i.if.then17.i_crit_edge, %vsc8584_macsec_flow_enable.exit.i.if.then17.i_crit_edge
  %retval.0.i80106.i = phi ptr [ %call7.i.i.i67.i, %vsc8584_macsec_alloc_flow.exit81.i.if.then17.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %vsc8584_macsec_flow_enable.exit.i.if.then17.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i69.i.if.then17.i_crit_edge ]
  %67 = ptrtoint ptr %retval.0.i80106.i to i32
  br label %cleanup

if.end19.i:                                       ; preds = %vsc8584_macsec_alloc_flow.exit81.i
  %68 = ptrtoint ptr %priority.i72.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 15, ptr %priority.i72.i, align 1
  %port21.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i67.i, i32 0, i32 1
  %69 = ptrtoint ptr %port21.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %port21.i, align 8
  %match22.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i67.i, i32 0, i32 9
  %70 = ptrtoint ptr %match22.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load23.i = load i8, ptr %match22.i, align 8
  %bf.set29.i = or i8 %bf.load23.i, 48
  store i8 %bf.set29.i, ptr %match22.i, align 8
  %etype30.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i67.i, i32 0, i32 10
  %71 = ptrtoint ptr %etype30.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -30578, ptr %etype30.i, align 2
  %action31.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i67.i, i32 0, i32 11
  %72 = ptrtoint ptr %action31.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load32.i = load i8, ptr %action31.i, align 4
  %bf.set34.i = or i8 %bf.load32.i, -128
  store i8 %bf.set34.i, ptr %action31.i, align 4
  tail call fastcc void @vsc8584_macsec_flow(ptr noundef %19, ptr noundef nonnull %call7.i.i.i67.i) #5
  %73 = ptrtoint ptr %bank8.i71.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bank8.i71.i, align 4
  %75 = ptrtoint ptr %index7.i70.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %index7.i70.i, align 8
  %77 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %74, label %if.end19.i.if.end.i99.i_crit_edge [
    i32 56, label %land.lhs.true.i86.i
    i32 60, label %land.lhs.true7.i91.i
  ]

if.end19.i.if.end.i99.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i99.i

land.lhs.true.i86.i:                              ; preds = %if.end19.i
  %78 = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i67.i, i32 0, i32 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %tobool.not.i85.i = icmp eq ptr %80, null
  br i1 %tobool.not.i85.i, label %land.lhs.true.i86.i.if.end.i99.i_crit_edge, label %land.lhs.true3.i89.i

land.lhs.true.i86.i.if.end.i99.i_crit_edge:       ; preds = %land.lhs.true.i86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i99.i

land.lhs.true3.i89.i:                             ; preds = %land.lhs.true.i86.i
  %active.i87.i = getelementptr inbounds %struct.macsec_rx_sa, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %active.i87.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %active.i87.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool4.not.i88.i = icmp eq i8 %82, 0
  br i1 %tobool4.not.i88.i, label %land.lhs.true3.i89.i.cleanup_crit_edge, label %land.lhs.true3.i89.i.if.end.i99.i_crit_edge

land.lhs.true3.i89.i.if.end.i99.i_crit_edge:      ; preds = %land.lhs.true3.i89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i99.i

land.lhs.true3.i89.i.cleanup_crit_edge:           ; preds = %land.lhs.true3.i89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true7.i91.i:                             ; preds = %if.end19.i
  %83 = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i67.i, i32 0, i32 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %tobool8.not.i90.i = icmp eq ptr %85, null
  br i1 %tobool8.not.i90.i, label %land.lhs.true7.i91.i.if.end.i99.i_crit_edge, label %land.lhs.true9.i94.i

land.lhs.true7.i91.i.if.end.i99.i_crit_edge:      ; preds = %land.lhs.true7.i91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i99.i

land.lhs.true9.i94.i:                             ; preds = %land.lhs.true7.i91.i
  %active10.i92.i = getelementptr inbounds %struct.macsec_tx_sa, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %active10.i92.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %active10.i92.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool11.not.i93.i = icmp eq i8 %87, 0
  br i1 %tobool11.not.i93.i, label %land.lhs.true9.i94.i.cleanup_crit_edge, label %land.lhs.true9.i94.i.if.end.i99.i_crit_edge

land.lhs.true9.i94.i.if.end.i99.i_crit_edge:      ; preds = %land.lhs.true9.i94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i99.i

land.lhs.true9.i94.i.cleanup_crit_edge:           ; preds = %land.lhs.true9.i94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i99.i:                                     ; preds = %land.lhs.true9.i94.i.if.end.i99.i_crit_edge, %land.lhs.true7.i91.i.if.end.i99.i_crit_edge, %land.lhs.true3.i89.i.if.end.i99.i_crit_edge, %land.lhs.true.i86.i.if.end.i99.i_crit_edge, %if.end19.i.if.end.i99.i_crit_edge
  %shl.i95.i = shl nuw i32 1, %76
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %19, i32 noundef %74, i32 noundef 6152, i32 noundef %shl.i95.i) #5
  %add.i96.i = add i32 %76, 7168
  %call.i97.i = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %19, i32 noundef %74, i32 noundef %add.i96.i) #5
  %or.i98.i = or i32 %call.i97.i, 131072
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %19, i32 noundef %74, i32 noundef %add.i96.i, i32 noundef %or.i98.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i99.i, %land.lhs.true9.i94.i.cleanup_crit_edge, %land.lhs.true3.i89.i.cleanup_crit_edge, %if.then17.i, %if.then.i, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ %33, %if.then.i ], [ %67, %if.then17.i ], [ 0, %land.lhs.true3.i89.i.cleanup_crit_edge ], [ 0, %land.lhs.true9.i94.i.cleanup_crit_edge ], [ 0, %if.end.i99.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8584_macsec_upd_secy(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @vsc8584_macsec_del_secy(ptr noundef %ctx)
  %call1 = tail call i32 @vsc8584_macsec_add_secy(ptr noundef %ctx)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8584_macsec_del_secy(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %4 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %macsec_flows = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %macsec_flows to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %macsec_flows, align 4
  %cmp.not25 = icmp eq ptr %6, %macsec_flows
  br i1 %cmp.not25, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %flow.026 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %6, %if.end.for.body_crit_edge ]
  %7 = ptrtoint ptr %flow.026 to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.0 = load ptr, ptr %flow.026, align 4
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  tail call fastcc void @vsc8584_macsec_del_flow(ptr noundef %9, ptr noundef %flow.026)
  %cmp.not = icmp eq ptr %tmp.0, %macsec_flows
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %11, i32 noundef 60, i32 noundef 7761, i32 noundef -2139062144) #5
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %11, i32 noundef 60, i32 noundef 7762, i32 noundef -2139062144) #5
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %13, i32 noundef 56, i32 noundef 7761, i32 noundef -1936946036) #5
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %13, i32 noundef 56, i32 noundef 7762, i32 noundef -1936946036) #5
  %secy = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %secy to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %secy, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vsc8584_macsec_add_rxsc(ptr nocapture noundef readnone %ctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vsc8584_macsec_upd_rxsc(ptr nocapture noundef readnone %ctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8584_macsec_del_rxsc(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 26
  %3 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1, align 8
  %macsec_flows = getelementptr inbounds %struct.vsc8531_private, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %macsec_flows to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %macsec_flows, align 4
  %cmp.not34 = icmp eq ptr %6, %macsec_flows
  br i1 %cmp.not34, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %rx_sc = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %flow.035 = phi ptr [ %6, %for.body.lr.ph ], [ %tmp.036, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %flow.035 to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.036 = load ptr, ptr %flow.035, align 4
  %bank = getelementptr inbounds %struct.macsec_flow, ptr %flow.035, i32 0, i32 2
  %8 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %9)
  %cmp9 = icmp eq i32 %9, 56
  br i1 %cmp9, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %10 = getelementptr inbounds %struct.macsec_flow, ptr %flow.035, i32 0, i32 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true11

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true11:                                  ; preds = %land.lhs.true
  %sc = getelementptr inbounds %struct.macsec_rx_sa, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sc, align 4
  %sci = getelementptr inbounds %struct.macsec_rx_sc, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %sci to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %sci, align 8
  %17 = ptrtoint ptr %rx_sc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_sc, align 4
  %sci12 = getelementptr inbounds %struct.macsec_rx_sc, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %sci12 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %sci12, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %20)
  %cmp13 = icmp eq i64 %16, %20
  br i1 %cmp13, label %if.then14, label %land.lhs.true11.for.inc_crit_edge

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  tail call fastcc void @vsc8584_macsec_del_flow(ptr noundef %22, ptr noundef %flow.035)
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %land.lhs.true11.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.036, %macsec_flows
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8584_macsec_add_rxsa(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call fastcc i32 @__vsc8584_macsec_add_rxsa(ptr noundef %ctx, ptr noundef null, i1 noundef zeroext false)
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %priv1.i = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 26
  %3 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1.i, align 8
  %macsec_flows.i = getelementptr inbounds %struct.vsc8531_private, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %macsec_flows.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %macsec_flows.i, align 4
  %cmp.not30.i = icmp eq ptr %6, %macsec_flows.i
  br i1 %cmp.not30.i, label %if.end.if.then3_crit_edge, label %for.body.lr.ph.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

for.body.lr.ph.i:                                 ; preds = %if.end
  %sa.i = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4
  %7 = ptrtoint ptr %sa.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sa.i, align 4
  %conv.i = zext i8 %8 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.031.i = phi ptr [ %6, %for.body.lr.ph.i ], [ %tmp.032.i, %for.inc.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %pos.031.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp.032.i = load ptr, ptr %pos.031.i, align 4
  %assoc_num.i = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 4
  %10 = ptrtoint ptr %assoc_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %assoc_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv.i)
  %cmp10.i = icmp eq i32 %11, %conv.i
  br i1 %cmp10.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bank12.i = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 2
  %12 = ptrtoint ptr %bank12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bank12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %13)
  %cmp13.i = icmp eq i32 %13, 56
  br i1 %cmp13.i, label %vsc8584_macsec_find_flow.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.032.i, %macsec_flows.i
  br i1 %cmp.not.i, label %for.inc.i.if.then3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.then3_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

vsc8584_macsec_find_flow.exit:                    ; preds = %land.lhs.true.i
  %cmp.i = icmp ugt ptr %pos.031.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %vsc8584_macsec_find_flow.exit.if.then3_crit_edge, label %if.end5

vsc8584_macsec_find_flow.exit.if.then3_crit_edge: ; preds = %vsc8584_macsec_find_flow.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then3:                                         ; preds = %vsc8584_macsec_find_flow.exit.if.then3_crit_edge, %for.inc.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i15 = phi ptr [ %pos.031.i, %vsc8584_macsec_find_flow.exit.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.if.then3_crit_edge ]
  %14 = ptrtoint ptr %retval.0.i15 to i32
  br label %cleanup

if.end5:                                          ; preds = %vsc8584_macsec_find_flow.exit
  %bank12.i.le = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 2
  %15 = ptrtoint ptr %bank12.i.le to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bank12.i.le, align 4
  %index.i = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 3
  %17 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i, align 4
  %19 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %16, label %if.end5.if.end.i_crit_edge [
    i32 56, label %land.lhs.true.i12
    i32 60, label %land.lhs.true7.i
  ]

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i12:                                ; preds = %if.end5
  %20 = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %land.lhs.true.i12.if.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i12.if.end.i_crit_edge:             ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i12
  %active.i = getelementptr inbounds %struct.macsec_rx_sa, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %active.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool4.not.i = icmp eq i8 %24, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.cleanup_crit_edge, label %land.lhs.true3.i.if.end.i_crit_edge

land.lhs.true3.i.if.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true3.i.cleanup_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true7.i:                                 ; preds = %if.end5
  %25 = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool8.not.i = icmp eq ptr %27, null
  br i1 %tobool8.not.i, label %land.lhs.true7.i.if.end.i_crit_edge, label %land.lhs.true9.i

land.lhs.true7.i.if.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true7.i
  %active10.i = getelementptr inbounds %struct.macsec_tx_sa, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %active10.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %active10.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool11.not.i = icmp eq i8 %29, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.cleanup_crit_edge, label %land.lhs.true9.i.if.end.i_crit_edge

land.lhs.true9.i.if.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true9.i.cleanup_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true9.i.if.end.i_crit_edge, %land.lhs.true7.i.if.end.i_crit_edge, %land.lhs.true3.i.if.end.i_crit_edge, %land.lhs.true.i12.if.end.i_crit_edge, %if.end5.if.end.i_crit_edge
  %shl.i = shl nuw i32 1, %18
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %2, i32 noundef %16, i32 noundef 6152, i32 noundef %shl.i) #5
  %add.i = add i32 %18, 7168
  %call.i = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %2, i32 noundef %16, i32 noundef %add.i) #5
  %or.i = or i32 %call.i, 131072
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %2, i32 noundef %16, i32 noundef %add.i, i32 noundef %or.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %land.lhs.true9.i.cleanup_crit_edge, %land.lhs.true3.i.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %14, %if.then3 ], [ 0, %land.lhs.true3.i.cleanup_crit_edge ], [ 0, %land.lhs.true9.i.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8584_macsec_upd_rxsa(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %priv1.i = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %macsec_flows.i = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %macsec_flows.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %macsec_flows.i, align 4
  %cmp.not30.i = icmp eq ptr %5, %macsec_flows.i
  br i1 %cmp.not30.i, label %entry.if.then_crit_edge, label %for.body.lr.ph.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %sa.i = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4
  %6 = ptrtoint ptr %sa.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sa.i, align 4
  %conv.i = zext i8 %7 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.031.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %tmp.032.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %pos.031.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.032.i = load ptr, ptr %pos.031.i, align 4
  %assoc_num.i = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 4
  %9 = ptrtoint ptr %assoc_num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %assoc_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i)
  %cmp10.i = icmp eq i32 %10, %conv.i
  br i1 %cmp10.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bank12.i = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 2
  %11 = ptrtoint ptr %bank12.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bank12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %12)
  %cmp13.i = icmp eq i32 %12, 56
  br i1 %cmp13.i, label %vsc8584_macsec_find_flow.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.032.i, %macsec_flows.i
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

vsc8584_macsec_find_flow.exit:                    ; preds = %land.lhs.true.i
  %cmp.i = icmp ugt ptr %pos.031.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %vsc8584_macsec_find_flow.exit.if.then_crit_edge, label %if.end

vsc8584_macsec_find_flow.exit.if.then_crit_edge:  ; preds = %vsc8584_macsec_find_flow.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %vsc8584_macsec_find_flow.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i22 = phi ptr [ %pos.031.i, %vsc8584_macsec_find_flow.exit.if.then_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.if.then_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i22 to i32
  br label %cleanup

if.end:                                           ; preds = %vsc8584_macsec_find_flow.exit
  %bank12.i.le = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 2
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %14 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %15 = ptrtoint ptr %bank12.i.le to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bank12.i.le, align 4
  %index.i15 = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 3
  %17 = ptrtoint ptr %index.i15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i15, align 4
  br i1 %tobool.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = shl nuw i32 1, %18
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %1, i32 noundef %16, i32 noundef 6156, i32 noundef %shl.i) #5
  %add.i = add i32 %18, 7168
  %call.i = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %1, i32 noundef %16, i32 noundef %add.i) #5
  %and.i = and i32 %call.i, -131073
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %1, i32 noundef %16, i32 noundef %add.i, i32 noundef %and.i) #5
  %call4 = tail call fastcc i32 @__vsc8584_macsec_add_rxsa(ptr noundef %ctx, ptr noundef %pos.031.i, i1 noundef zeroext true)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %19 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %16, label %if.end5.if.end.i_crit_edge [
    i32 56, label %land.lhs.true.i16
    i32 60, label %land.lhs.true7.i
  ]

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i16:                                ; preds = %if.end5
  %20 = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %land.lhs.true.i16.if.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i16.if.end.i_crit_edge:             ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i16
  %active.i = getelementptr inbounds %struct.macsec_rx_sa, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %active.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool4.not.i = icmp eq i8 %24, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.cleanup_crit_edge, label %land.lhs.true3.i.if.end.i_crit_edge

land.lhs.true3.i.if.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true3.i.cleanup_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true7.i:                                 ; preds = %if.end5
  %25 = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool8.not.i = icmp eq ptr %27, null
  br i1 %tobool8.not.i, label %land.lhs.true7.i.if.end.i_crit_edge, label %land.lhs.true9.i

land.lhs.true7.i.if.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true7.i
  %active10.i = getelementptr inbounds %struct.macsec_tx_sa, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %active10.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %active10.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool11.not.i = icmp eq i8 %29, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.cleanup_crit_edge, label %land.lhs.true9.i.if.end.i_crit_edge

land.lhs.true9.i.if.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true9.i.cleanup_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true9.i.if.end.i_crit_edge, %land.lhs.true7.i.if.end.i_crit_edge, %land.lhs.true3.i.if.end.i_crit_edge, %land.lhs.true.i16.if.end.i_crit_edge, %if.end5.if.end.i_crit_edge
  %shl.i17 = shl nuw i32 1, %18
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %1, i32 noundef %16, i32 noundef 6152, i32 noundef %shl.i17) #5
  %add.i18 = add i32 %18, 7168
  %call.i19 = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %1, i32 noundef %16, i32 noundef %add.i18) #5
  %or.i = or i32 %call.i19, 131072
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %1, i32 noundef %16, i32 noundef %add.i18, i32 noundef %or.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %land.lhs.true9.i.cleanup_crit_edge, %land.lhs.true3.i.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ %13, %if.then ], [ %call4, %if.then3 ], [ 0, %land.lhs.true3.i.cleanup_crit_edge ], [ 0, %land.lhs.true9.i.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8584_macsec_del_rxsa(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %priv1.i = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %macsec_flows.i = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %macsec_flows.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %macsec_flows.i, align 4
  %cmp.not30.i = icmp eq ptr %5, %macsec_flows.i
  br i1 %cmp.not30.i, label %entry.if.then_crit_edge, label %for.body.lr.ph.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %sa.i = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4
  %6 = ptrtoint ptr %sa.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sa.i, align 4
  %conv.i = zext i8 %7 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.031.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %tmp.032.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %pos.031.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.032.i = load ptr, ptr %pos.031.i, align 4
  %assoc_num.i = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 4
  %9 = ptrtoint ptr %assoc_num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %assoc_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i)
  %cmp10.i = icmp eq i32 %10, %conv.i
  br i1 %cmp10.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bank12.i = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 2
  %11 = ptrtoint ptr %bank12.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bank12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %12)
  %cmp13.i = icmp eq i32 %12, 56
  br i1 %cmp13.i, label %vsc8584_macsec_find_flow.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.032.i, %macsec_flows.i
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

vsc8584_macsec_find_flow.exit:                    ; preds = %land.lhs.true.i
  %cmp.i = icmp ugt ptr %pos.031.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %vsc8584_macsec_find_flow.exit.if.then_crit_edge, label %if.end

vsc8584_macsec_find_flow.exit.if.then_crit_edge:  ; preds = %vsc8584_macsec_find_flow.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %vsc8584_macsec_find_flow.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i11 = phi ptr [ %pos.031.i, %vsc8584_macsec_find_flow.exit.if.then_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.if.then_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i11 to i32
  br label %cleanup

if.end:                                           ; preds = %vsc8584_macsec_find_flow.exit
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %14 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @vsc8584_macsec_del_flow(ptr noundef %1, ptr noundef %pos.031.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %13, %if.then ], [ 0, %if.end4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8584_macsec_add_txsa(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call fastcc i32 @__vsc8584_macsec_add_txsa(ptr noundef %ctx, ptr noundef null, i1 noundef zeroext false)
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %priv1.i = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 26
  %3 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1.i, align 8
  %macsec_flows.i = getelementptr inbounds %struct.vsc8531_private, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %macsec_flows.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %macsec_flows.i, align 4
  %cmp.not30.i = icmp eq ptr %6, %macsec_flows.i
  br i1 %cmp.not30.i, label %if.end.if.then3_crit_edge, label %for.body.lr.ph.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

for.body.lr.ph.i:                                 ; preds = %if.end
  %sa.i = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4
  %7 = ptrtoint ptr %sa.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sa.i, align 4
  %conv.i = zext i8 %8 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.031.i = phi ptr [ %6, %for.body.lr.ph.i ], [ %tmp.032.i, %for.inc.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %pos.031.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp.032.i = load ptr, ptr %pos.031.i, align 4
  %assoc_num.i = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 4
  %10 = ptrtoint ptr %assoc_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %assoc_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv.i)
  %cmp10.i = icmp eq i32 %11, %conv.i
  br i1 %cmp10.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bank12.i = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 2
  %12 = ptrtoint ptr %bank12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bank12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %13)
  %cmp13.i = icmp eq i32 %13, 60
  br i1 %cmp13.i, label %vsc8584_macsec_find_flow.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.032.i, %macsec_flows.i
  br i1 %cmp.not.i, label %for.inc.i.if.then3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.then3_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

vsc8584_macsec_find_flow.exit:                    ; preds = %land.lhs.true.i
  %cmp.i = icmp ugt ptr %pos.031.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %vsc8584_macsec_find_flow.exit.if.then3_crit_edge, label %if.end5

vsc8584_macsec_find_flow.exit.if.then3_crit_edge: ; preds = %vsc8584_macsec_find_flow.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then3:                                         ; preds = %vsc8584_macsec_find_flow.exit.if.then3_crit_edge, %for.inc.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i15 = phi ptr [ %pos.031.i, %vsc8584_macsec_find_flow.exit.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end.if.then3_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.if.then3_crit_edge ]
  %14 = ptrtoint ptr %retval.0.i15 to i32
  br label %cleanup

if.end5:                                          ; preds = %vsc8584_macsec_find_flow.exit
  %bank12.i.le = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 2
  %15 = ptrtoint ptr %bank12.i.le to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bank12.i.le, align 4
  %index.i = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 3
  %17 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i, align 4
  %19 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %16, label %if.end5.if.end.i_crit_edge [
    i32 56, label %land.lhs.true.i12
    i32 60, label %land.lhs.true7.i
  ]

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i12:                                ; preds = %if.end5
  %20 = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %land.lhs.true.i12.if.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i12.if.end.i_crit_edge:             ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i12
  %active.i = getelementptr inbounds %struct.macsec_rx_sa, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %active.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool4.not.i = icmp eq i8 %24, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.cleanup_crit_edge, label %land.lhs.true3.i.if.end.i_crit_edge

land.lhs.true3.i.if.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true3.i.cleanup_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true7.i:                                 ; preds = %if.end5
  %25 = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool8.not.i = icmp eq ptr %27, null
  br i1 %tobool8.not.i, label %land.lhs.true7.i.if.end.i_crit_edge, label %land.lhs.true9.i

land.lhs.true7.i.if.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true7.i
  %active10.i = getelementptr inbounds %struct.macsec_tx_sa, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %active10.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %active10.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool11.not.i = icmp eq i8 %29, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.cleanup_crit_edge, label %land.lhs.true9.i.if.end.i_crit_edge

land.lhs.true9.i.if.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true9.i.cleanup_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true9.i.if.end.i_crit_edge, %land.lhs.true7.i.if.end.i_crit_edge, %land.lhs.true3.i.if.end.i_crit_edge, %land.lhs.true.i12.if.end.i_crit_edge, %if.end5.if.end.i_crit_edge
  %shl.i = shl nuw i32 1, %18
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %2, i32 noundef %16, i32 noundef 6152, i32 noundef %shl.i) #5
  %add.i = add i32 %18, 7168
  %call.i = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %2, i32 noundef %16, i32 noundef %add.i) #5
  %or.i = or i32 %call.i, 131072
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %2, i32 noundef %16, i32 noundef %add.i, i32 noundef %or.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %land.lhs.true9.i.cleanup_crit_edge, %land.lhs.true3.i.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %14, %if.then3 ], [ 0, %land.lhs.true3.i.cleanup_crit_edge ], [ 0, %land.lhs.true9.i.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8584_macsec_upd_txsa(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %priv1.i = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %macsec_flows.i = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %macsec_flows.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %macsec_flows.i, align 4
  %cmp.not30.i = icmp eq ptr %5, %macsec_flows.i
  br i1 %cmp.not30.i, label %entry.if.then_crit_edge, label %for.body.lr.ph.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %sa.i = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4
  %6 = ptrtoint ptr %sa.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sa.i, align 4
  %conv.i = zext i8 %7 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.031.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %tmp.032.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %pos.031.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.032.i = load ptr, ptr %pos.031.i, align 4
  %assoc_num.i = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 4
  %9 = ptrtoint ptr %assoc_num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %assoc_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i)
  %cmp10.i = icmp eq i32 %10, %conv.i
  br i1 %cmp10.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bank12.i = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 2
  %11 = ptrtoint ptr %bank12.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bank12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %12)
  %cmp13.i = icmp eq i32 %12, 60
  br i1 %cmp13.i, label %vsc8584_macsec_find_flow.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.032.i, %macsec_flows.i
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

vsc8584_macsec_find_flow.exit:                    ; preds = %land.lhs.true.i
  %cmp.i = icmp ugt ptr %pos.031.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %vsc8584_macsec_find_flow.exit.if.then_crit_edge, label %if.end

vsc8584_macsec_find_flow.exit.if.then_crit_edge:  ; preds = %vsc8584_macsec_find_flow.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %vsc8584_macsec_find_flow.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i22 = phi ptr [ %pos.031.i, %vsc8584_macsec_find_flow.exit.if.then_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.if.then_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i22 to i32
  br label %cleanup

if.end:                                           ; preds = %vsc8584_macsec_find_flow.exit
  %bank12.i.le = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 2
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %14 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %15 = ptrtoint ptr %bank12.i.le to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bank12.i.le, align 4
  %index.i15 = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 3
  %17 = ptrtoint ptr %index.i15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i15, align 4
  br i1 %tobool.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = shl nuw i32 1, %18
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %1, i32 noundef %16, i32 noundef 6156, i32 noundef %shl.i) #5
  %add.i = add i32 %18, 7168
  %call.i = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %1, i32 noundef %16, i32 noundef %add.i) #5
  %and.i = and i32 %call.i, -131073
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %1, i32 noundef %16, i32 noundef %add.i, i32 noundef %and.i) #5
  %call4 = tail call fastcc i32 @__vsc8584_macsec_add_txsa(ptr noundef %ctx, ptr noundef %pos.031.i, i1 noundef zeroext true)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %19 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %16, label %if.end5.if.end.i_crit_edge [
    i32 56, label %land.lhs.true.i16
    i32 60, label %land.lhs.true7.i
  ]

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i16:                                ; preds = %if.end5
  %20 = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %land.lhs.true.i16.if.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i16.if.end.i_crit_edge:             ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i16
  %active.i = getelementptr inbounds %struct.macsec_rx_sa, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %active.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool4.not.i = icmp eq i8 %24, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.cleanup_crit_edge, label %land.lhs.true3.i.if.end.i_crit_edge

land.lhs.true3.i.if.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true3.i.cleanup_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true7.i:                                 ; preds = %if.end5
  %25 = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool8.not.i = icmp eq ptr %27, null
  br i1 %tobool8.not.i, label %land.lhs.true7.i.if.end.i_crit_edge, label %land.lhs.true9.i

land.lhs.true7.i.if.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true7.i
  %active10.i = getelementptr inbounds %struct.macsec_tx_sa, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %active10.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %active10.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool11.not.i = icmp eq i8 %29, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.cleanup_crit_edge, label %land.lhs.true9.i.if.end.i_crit_edge

land.lhs.true9.i.if.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true9.i.cleanup_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true9.i.if.end.i_crit_edge, %land.lhs.true7.i.if.end.i_crit_edge, %land.lhs.true3.i.if.end.i_crit_edge, %land.lhs.true.i16.if.end.i_crit_edge, %if.end5.if.end.i_crit_edge
  %shl.i17 = shl nuw i32 1, %18
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %1, i32 noundef %16, i32 noundef 6152, i32 noundef %shl.i17) #5
  %add.i18 = add i32 %18, 7168
  %call.i19 = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %1, i32 noundef %16, i32 noundef %add.i18) #5
  %or.i = or i32 %call.i19, 131072
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %1, i32 noundef %16, i32 noundef %add.i18, i32 noundef %or.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %land.lhs.true9.i.cleanup_crit_edge, %land.lhs.true3.i.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ %13, %if.then ], [ %call4, %if.then3 ], [ 0, %land.lhs.true3.i.cleanup_crit_edge ], [ 0, %land.lhs.true9.i.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8584_macsec_del_txsa(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %priv1.i = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %macsec_flows.i = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %macsec_flows.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %macsec_flows.i, align 4
  %cmp.not30.i = icmp eq ptr %5, %macsec_flows.i
  br i1 %cmp.not30.i, label %entry.if.then_crit_edge, label %for.body.lr.ph.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %sa.i = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4
  %6 = ptrtoint ptr %sa.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sa.i, align 4
  %conv.i = zext i8 %7 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.031.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %tmp.032.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %pos.031.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.032.i = load ptr, ptr %pos.031.i, align 4
  %assoc_num.i = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 4
  %9 = ptrtoint ptr %assoc_num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %assoc_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i)
  %cmp10.i = icmp eq i32 %10, %conv.i
  br i1 %cmp10.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bank12.i = getelementptr inbounds %struct.macsec_flow, ptr %pos.031.i, i32 0, i32 2
  %11 = ptrtoint ptr %bank12.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bank12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %12)
  %cmp13.i = icmp eq i32 %12, 60
  br i1 %cmp13.i, label %vsc8584_macsec_find_flow.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.032.i, %macsec_flows.i
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

vsc8584_macsec_find_flow.exit:                    ; preds = %land.lhs.true.i
  %cmp.i = icmp ugt ptr %pos.031.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %vsc8584_macsec_find_flow.exit.if.then_crit_edge, label %if.end

vsc8584_macsec_find_flow.exit.if.then_crit_edge:  ; preds = %vsc8584_macsec_find_flow.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %vsc8584_macsec_find_flow.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i11 = phi ptr [ %pos.031.i, %vsc8584_macsec_find_flow.exit.if.then_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.if.then_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i11 to i32
  br label %cleanup

if.end:                                           ; preds = %vsc8584_macsec_find_flow.exit
  %prepare = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 6
  %14 = ptrtoint ptr %prepare to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %prepare, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @vsc8584_macsec_del_flow(ptr noundef %1, ptr noundef %pos.031.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %13, %if.then ], [ 0, %if.end4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc8584_macsec_flow(ptr noundef %phydev, ptr nocapture noundef readonly %flow) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %bank2 = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 2
  %2 = ptrtoint ptr %bank2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bank2, align 4
  %index = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 3
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %match3 = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 9
  %6 = ptrtoint ptr %match3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %match3, align 4
  %7 = and i8 %bf.load, 96
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %3)
  %cmp = icmp eq i32 %3, 56
  br i1 %cmp, label %land.lhs.true, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true:                                    ; preds = %entry
  %assoc_num = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 4
  %10 = ptrtoint ptr %assoc_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %assoc_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp12 = icmp sgt i32 %11, -1
  %shl = shl i32 %11, 24
  %or15 = select i1 %cmp12, i32 %shl, i32 0
  %match.2.ph = or i32 %or15, %9
  %mask.0.ph = select i1 %cmp12, i32 50331648, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool23.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool23.not, label %land.lhs.true.if.end38_crit_edge, label %land.lhs.true24

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true24:                                  ; preds = %land.lhs.true
  %12 = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %sc = getelementptr inbounds %struct.macsec_rx_sa, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sc, align 4
  %sci = getelementptr inbounds %struct.macsec_rx_sc, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %sci to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %sci, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool25.not = icmp eq i64 %18, 0
  br i1 %tobool25.not, label %land.lhs.true24.if.end38_crit_edge, label %if.then26

land.lhs.true24.if.end38_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #7
  %or30 = or i32 %match.2.ph, 536870912
  %or31 = or i32 %mask.0.ph, 545259520
  %shl32 = shl i32 %5, 4
  %add = add i32 %shl32, 4101
  %conv33 = trunc i64 %18 to i32
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef 56, i32 noundef %add, i32 noundef %conv33)
  %add35 = add i32 %shl32, 4102
  %shr = lshr i64 %18, 32
  %conv37 = trunc i64 %shr to i32
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef 56, i32 noundef %add35, i32 noundef %conv37)
  br label %if.end38

if.end38:                                         ; preds = %if.then26, %land.lhs.true24.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %entry.if.end38_crit_edge
  %match.3 = phi i32 [ %or30, %if.then26 ], [ %match.2.ph, %land.lhs.true24.if.end38_crit_edge ], [ %match.2.ph, %land.lhs.true.if.end38_crit_edge ], [ %9, %entry.if.end38_crit_edge ]
  %mask.1 = phi i32 [ %or31, %if.then26 ], [ %mask.0.ph, %land.lhs.true24.if.end38_crit_edge ], [ %mask.0.ph, %land.lhs.true.if.end38_crit_edge ], [ 0, %entry.if.end38_crit_edge ]
  %19 = ptrtoint ptr %match3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load40 = load i8, ptr %match3, align 4
  %20 = and i8 %bf.load40, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool43.not = icmp eq i8 %20, 0
  br i1 %tobool43.not, label %if.end38.if.end50_crit_edge, label %if.then44

if.end38.if.end50_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = shl i32 %5, 4
  br label %if.end50

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %or45 = or i32 %mask.1, 4096
  %shl46 = shl i32 %5, 4
  %add47 = add i32 %shl46, 4097
  %etype = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 10
  %21 = ptrtoint ptr %etype to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %etype, align 2
  %conv48 = zext i16 %22 to i32
  %shl49 = shl nuw i32 %conv48, 16
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %3, i32 noundef %add47, i32 noundef %shl49)
  br label %if.end50

if.end50:                                         ; preds = %if.then44, %if.end38.if.end50_crit_edge
  %shl54.pre-phi = phi i32 [ %.pre, %if.end38.if.end50_crit_edge ], [ %shl46, %if.then44 ]
  %mask.2 = phi i32 [ %mask.1, %if.end38.if.end50_crit_edge ], [ %or45, %if.then44 ]
  %priority = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 6
  %23 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %priority, align 1
  %conv51 = zext i8 %24 to i32
  %shl52 = shl nuw nsw i32 %conv51, 16
  %or53 = or i32 %shl52, %match.3
  %add55 = add i32 %shl54.pre-phi, 4100
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %3, i32 noundef %add55, i32 noundef %or53)
  %add57 = add i32 %shl54.pre-phi, 4103
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %3, i32 noundef %add57, i32 noundef %mask.2)
  %action58 = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 11
  %25 = ptrtoint ptr %action58 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load59 = load i8, ptr %action58, align 4
  %26 = and i8 %bf.load59, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool62.not = icmp eq i8 %26, 0
  br i1 %tobool62.not, label %if.else, label %if.end50.if.end84_crit_edge

if.end50.if.end84_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.else:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load59)
  %tobool68.not = icmp sgt i8 %bf.load59, -1
  br i1 %tobool68.not, label %lor.lhs.false, label %if.else.if.end76.thread_crit_edge

if.else.if.end76.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76.thread

lor.lhs.false:                                    ; preds = %if.else
  %port = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 1
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp69 = icmp eq i32 %28, 3
  %cond = select i1 %cmp, i32 2, i32 3
  br i1 %cmp69, label %lor.lhs.false.if.end76.thread_crit_edge, label %lor.lhs.false.if.end84_crit_edge

lor.lhs.false.if.end84_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

lor.lhs.false.if.end76.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76.thread

if.end76.thread:                                  ; preds = %lor.lhs.false.if.end76.thread_crit_edge, %if.else.if.end76.thread_crit_edge
  %port78198 = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 1
  %29 = ptrtoint ptr %port78198 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port78198, align 4
  %shl79199 = shl i32 %30, 2
  %or80201 = or i32 %shl79199, 128
  br label %write_ctrl

if.end84:                                         ; preds = %lor.lhs.false.if.end84_crit_edge, %if.end50.if.end84_crit_edge
  %action.0 = phi i32 [ 1, %if.end50.if.end84_crit_edge ], [ %cond, %lor.lhs.false.if.end84_crit_edge ]
  %port78 = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 1
  %31 = ptrtoint ptr %port78 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port78, align 4
  %shl79 = shl i32 %32, 2
  %or77 = or i32 %shl79, %action.0
  %or80 = or i32 %or77, 128
  br i1 %cmp, label %if.then87, label %if.else106

if.then87:                                        ; preds = %if.end84
  %secy = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %secy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %secy, align 4
  %replay_protect = getelementptr inbounds %struct.macsec_secy, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %replay_protect to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %replay_protect, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool88.not = icmp eq i8 %36, 0
  %or90 = or i32 %or77, 65664
  %spec.select189 = select i1 %tobool88.not, i32 %or80, i32 %or90
  %validate_frames = getelementptr inbounds %struct.macsec_secy, ptr %34, i32 0, i32 5
  %37 = ptrtoint ptr %validate_frames to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %validate_frames, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %38, label %if.then87.write_ctrl_crit_edge [
    i32 2, label %if.then95
    i32 1, label %if.then102
  ]

if.then87.write_ctrl_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  br label %write_ctrl

if.then95:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  %or96 = or i32 %spec.select189, 1048576
  br label %write_ctrl

if.then102:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  %or103 = or i32 %spec.select189, 524288
  br label %write_ctrl

if.else106:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %3)
  %cmp107 = icmp eq i32 %3, 60
  br i1 %cmp107, label %if.then109, label %if.else106.write_ctrl_crit_edge

if.else106.write_ctrl_crit_edge:                  ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #7
  br label %write_ctrl

if.then109:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #7
  %secy110 = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 9
  %40 = ptrtoint ptr %secy110 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %secy110, align 4
  %protect_frames = getelementptr inbounds %struct.macsec_secy, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %protect_frames to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %protect_frames, align 2, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool111.not = icmp eq i8 %43, 0
  %or113 = or i32 %or77, 65664
  %spec.select190 = select i1 %tobool111.not, i32 %or80, i32 %or113
  %encrypt = getelementptr inbounds %struct.macsec_secy, ptr %41, i32 0, i32 11, i32 2
  %44 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %encrypt, align 2, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool116.not = icmp eq i8 %45, 0
  %or118 = or i32 %spec.select190, -2147483648
  %val.2 = select i1 %tobool116.not, i32 %spec.select190, i32 %or118
  %send_sci = getelementptr inbounds %struct.macsec_secy, ptr %41, i32 0, i32 11, i32 3
  %46 = ptrtoint ptr %send_sci to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %send_sci, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool122.not = icmp eq i8 %47, 0
  %or124 = or i32 %val.2, 262144
  %spec.select192 = select i1 %tobool122.not, i32 %val.2, i32 %or124
  br label %write_ctrl

write_ctrl:                                       ; preds = %if.then109, %if.else106.write_ctrl_crit_edge, %if.then102, %if.then95, %if.then87.write_ctrl_crit_edge, %if.end76.thread
  %val.3 = phi i32 [ %or96, %if.then95 ], [ %or103, %if.then102 ], [ %or80, %if.else106.write_ctrl_crit_edge ], [ %spec.select189, %if.then87.write_ctrl_crit_edge ], [ %spec.select192, %if.then109 ], [ %or80201, %if.end76.thread ]
  %add128 = add i32 %5, 7168
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %3, i32 noundef %add128, i32 noundef %val.3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc8584_macsec_del_flow(ptr noundef %phydev, ptr noundef %flow) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bank1.i = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 2
  %0 = ptrtoint ptr %bank1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bank1.i, align 4
  %index.i = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 3
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %shl.i = shl nuw i32 1, %3
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %1, i32 noundef 6156, i32 noundef %shl.i) #5
  %add.i = add i32 %3, 7168
  %call.i = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef %1, i32 noundef %add.i) #5
  %and.i = and i32 %call.i, -131073
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %1, i32 noundef %add.i, i32 noundef %and.i) #5
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %6 = ptrtoint ptr %bank1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bank1.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %flow) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.vsc8584_macsec_free_flow.exit_crit_edge

entry.vsc8584_macsec_free_flow.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vsc8584_macsec_free_flow.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %flow, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %flow, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %vsc8584_macsec_free_flow.exit

vsc8584_macsec_free_flow.exit:                    ; preds = %if.end.i.i.i, %entry.vsc8584_macsec_free_flow.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %7)
  %cmp.i = icmp eq i32 %7, 56
  %ingr_flows.i = getelementptr inbounds %struct.vsc8531_private, ptr %5, i32 0, i32 11
  %egr_flows.i = getelementptr inbounds %struct.vsc8531_private, ptr %5, i32 0, i32 12
  %cond.i = select i1 %cmp.i, ptr %ingr_flows.i, ptr %egr_flows.i
  %14 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %flow, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %flow, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i, align 4
  tail call void @_clear_bit(i32 noundef %17, ptr noundef %cond.i) #5
  tail call void @kfree(ptr noundef %flow) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__vsc8584_macsec_add_rxsa(ptr nocapture noundef readonly %ctx, ptr noundef %flow, i1 noundef zeroext %update) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %tobool.not = icmp eq ptr %flow, null
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %ingr_flows.i = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 11
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %ingr_flows.i, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 16
  br i1 %cmp1.i, label %if.then.if.then3_crit_edge, label %if.end.i

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 168) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then3_crit_edge, label %if.end6.i

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.end6.i:                                        ; preds = %if.end.i
  tail call void @_set_bit(i32 noundef %call.i, ptr noundef %ingr_flows.i) #5
  %index7.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %index7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %index7.i, align 8
  %bank8.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %bank8.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 56, ptr %bank8.i, align 4
  %priority.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %priority.i, align 1
  %assoc_num.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %assoc_num.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %assoc_num.i, align 4
  %macsec_flows.i = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 10
  %prev.i.i = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %10, ptr noundef %macsec_flows.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.i.vsc8584_macsec_alloc_flow.exit_crit_edge

if.end6.i.vsc8584_macsec_alloc_flow.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vsc8584_macsec_alloc_flow.exit

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %macsec_flows.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i.i, ptr %10, align 4
  br label %vsc8584_macsec_alloc_flow.exit

vsc8584_macsec_alloc_flow.exit:                   ; preds = %if.end.i.i.i, %if.end6.i.vsc8584_macsec_alloc_flow.exit_crit_edge
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %vsc8584_macsec_alloc_flow.exit.if.then3_crit_edge, label %if.end

vsc8584_macsec_alloc_flow.exit.if.then3_crit_edge: ; preds = %vsc8584_macsec_alloc_flow.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then3:                                         ; preds = %vsc8584_macsec_alloc_flow.exit.if.then3_crit_edge, %if.end.i.if.then3_crit_edge, %if.then.if.then3_crit_edge
  %retval.0.i44 = phi ptr [ %call7.i.i.i, %vsc8584_macsec_alloc_flow.exit.if.then3_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.if.then3_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then3_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i44 to i32
  br label %cleanup

if.end:                                           ; preds = %vsc8584_macsec_alloc_flow.exit
  call void @__sanitizer_cov_trace_pc() #7
  %key = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i, i32 0, i32 7
  %key5 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4, i32 1
  %secy = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %secy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %secy, align 4
  %key_len = getelementptr inbounds %struct.macsec_secy, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %key_len, align 8
  %conv = zext i16 %19 to i32
  %20 = call ptr @memcpy(ptr %key, ptr %key5, i32 %conv)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %flow.addr.0 = phi ptr [ %flow, %entry.if.end7_crit_edge ], [ %call7.i.i.i, %if.end ]
  %sa8 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4
  %21 = ptrtoint ptr %sa8 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sa8, align 4
  %conv9 = zext i8 %22 to i32
  %assoc_num10 = getelementptr inbounds %struct.macsec_flow, ptr %flow.addr.0, i32 0, i32 4
  %23 = ptrtoint ptr %assoc_num10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv9, ptr %assoc_num10, align 4
  %24 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = getelementptr inbounds %struct.macsec_flow, ptr %flow.addr.0, i32 0, i32 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %27, align 4
  %match = getelementptr inbounds %struct.macsec_flow, ptr %flow.addr.0, i32 0, i32 9
  %29 = ptrtoint ptr %match to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %match, align 4
  %bf.set15 = or i8 %bf.load, -64
  store i8 %bf.set15, ptr %match, align 4
  %secy16 = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 9
  %30 = ptrtoint ptr %secy16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %secy16, align 4
  %validate_frames = getelementptr inbounds %struct.macsec_secy, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %validate_frames to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %validate_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not = icmp eq i32 %33, 0
  br i1 %cmp.not, label %if.end7.if.end23_crit_edge, label %if.then18

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then18:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set22 = or i8 %bf.load, -32
  %34 = ptrtoint ptr %match to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %bf.set22, ptr %match, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end7.if.end23_crit_edge
  %call25 = tail call fastcc i32 @vsc8584_macsec_add_flow(ptr noundef %1, ptr noundef nonnull %flow.addr.0, i1 noundef zeroext %update)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then3
  %retval.0 = phi i32 [ %call25, %if.end23 ], [ %15, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc8584_macsec_add_flow(ptr noundef %phydev, ptr noundef %flow, i1 noundef zeroext %update) unnamed_addr #0 align 64 {
entry:
  %input.i.i = alloca [16 x i8], align 1
  %ctx.i.i = alloca %struct.crypto_aes_ctx, align 4
  %hkey.i = alloca [16 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %port, align 4
  tail call fastcc void @vsc8584_macsec_flow(ptr noundef %phydev, ptr noundef %flow)
  br i1 %update, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %1 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1.i, align 8
  %bank2.i = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 2
  %3 = ptrtoint ptr %bank2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bank2.i, align 4
  %index3.i = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 3
  %5 = ptrtoint ptr %index3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index3.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hkey.i) #5
  %7 = getelementptr inbounds [16 x i8], ptr %hkey.i, i32 0, i32 4
  %8 = getelementptr inbounds [16 x i8], ptr %hkey.i, i32 0, i32 8
  %9 = getelementptr inbounds [16 x i8], ptr %hkey.i, i32 0, i32 12
  %key.i = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 7
  %secy.i = getelementptr inbounds %struct.vsc8531_private, ptr %2, i32 0, i32 9
  %10 = call ptr @memset(ptr %hkey.i, i32 255, i32 16)
  %11 = ptrtoint ptr %secy.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %secy.i, align 4
  %key_len.i = getelementptr inbounds %struct.macsec_secy, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %key_len.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %input.i.i) #5
  %15 = call ptr @memset(ptr %input.i.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i.i) #5
  %16 = call ptr @memset(ptr %ctx.i.i, i32 255, i32 484)
  %conv.i.i = zext i16 %14 to i32
  %call.i.i = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i.i, ptr noundef %key.i, i32 noundef %conv.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %vsc8584_macsec_derive_key.exit.i

vsc8584_macsec_derive_key.exit.i:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %input.i.i) #5
  br label %if.then2

if.end.i:                                         ; preds = %if.end
  call void @aes_encrypt(ptr noundef nonnull %ctx.i.i, ptr noundef nonnull %hkey.i, ptr noundef nonnull %input.i.i) #5
  %17 = call ptr @memset(ptr %ctx.i.i, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i.i) #5, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %input.i.i) #5
  %18 = ptrtoint ptr %secy.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %secy.i, align 4
  %key_len6.i = getelementptr inbounds %struct.macsec_secy, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %key_len6.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %key_len6.i, align 8
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %21, label %if.end.i.if.then2_crit_edge [
    i16 16, label %if.end.i.sw.epilog.i_crit_edge
    i16 32, label %sw.bb7.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i.if.then2_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %if.end.i.sw.epilog.i_crit_edge
  %control.0.i = phi i32 [ -1840258976, %sw.bb7.i ], [ -1840521120, %if.end.i.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %4)
  %cmp.i = icmp eq i32 %4, 60
  br i1 %cmp.i, label %cond.true.i, label %sw.epilog.i.cond.end.i_crit_edge

sw.epilog.i.cond.end.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.true.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %encoding_sa.i = getelementptr inbounds %struct.macsec_secy, ptr %19, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %encoding_sa.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %encoding_sa.i, align 1
  %conv11.i = zext i8 %24 to i32
  %shl.i = shl i32 %conv11.i, 26
  %or12.i = or i32 %shl.i, 6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %sw.epilog.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %or12.i, %cond.true.i ], [ 1073741839, %sw.epilog.i.cond.end.i_crit_edge ]
  %or14.i = or i32 %cond.i, %control.0.i
  %shl15.i = shl i32 %6, 5
  call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %4, i32 noundef %shl15.i, i32 noundef %or14.i) #5
  %add18.i = or i32 %shl15.i, 1
  %25 = ptrtoint ptr %bank2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bank2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %26)
  %cmp.i.i = icmp eq i32 %26, 56
  %27 = ptrtoint ptr %index3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index3.i, align 4
  %add.i.i = add i32 %28, 16
  %retval.0.i.i = select i1 %cmp.i.i, i32 %add.i.i, i32 %28
  call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %4, i32 noundef %add18.i, i32 noundef %retval.0.i.i) #5
  %29 = ptrtoint ptr %secy.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %secy.i, align 4
  %key_len21159.i = getelementptr inbounds %struct.macsec_secy, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %key_len21159.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %key_len21159.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %32)
  %cmp23161.not.i = icmp ult i16 %32, 4
  br i1 %cmp23161.not.i, label %cond.end.i.for.cond31.preheader.i_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  br label %for.body.i

cond.end.i.for.cond31.preheader.i_crit_edge:      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond31.preheader.i

for.cond31.preheader.i:                           ; preds = %for.body.i.for.cond31.preheader.i_crit_edge, %cond.end.i.for.cond31.preheader.i_crit_edge
  %rec.0.lcssa.i = phi i32 [ 2, %cond.end.i.for.cond31.preheader.i_crit_edge ], [ %inc26.i, %for.body.i.for.cond31.preheader.i_crit_edge ]
  %add37.i = add i32 %rec.0.lcssa.i, %shl15.i
  %33 = ptrtoint ptr %hkey.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hkey.i, align 4
  call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %4, i32 noundef %add37.i, i32 noundef %34) #5
  %add37.1.i = add i32 %add37.i, 1
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %7, align 4
  call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %4, i32 noundef %add37.1.i, i32 noundef %36) #5
  %add37.2.i = add i32 %add37.i, 2
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %8, align 4
  call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %4, i32 noundef %add37.2.i, i32 noundef %38) #5
  %add37.3.i = add i32 %add37.i, 3
  %39 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %9, align 4
  call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %4, i32 noundef %add37.3.i, i32 noundef %40) #5
  %inc44.i = add i32 %rec.0.lcssa.i, 5
  %add45.i = add i32 %add37.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %4)
  %cmp46.i = icmp eq i32 %4, 56
  %41 = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  br i1 %cmp46.i, label %cond.true63.i, label %cond.false65.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cond.end.i.for.body.i_crit_edge
  %rec.0163.i = phi i32 [ %inc26.i, %for.body.i.for.body.i_crit_edge ], [ 2, %cond.end.i.for.body.i_crit_edge ]
  %i.0162.i = phi i32 [ %inc30.i, %for.body.i.for.body.i_crit_edge ], [ 0, %cond.end.i.for.body.i_crit_edge ]
  %inc26.i = add nuw nsw i32 %rec.0163.i, 1
  %add27.i = add i32 %rec.0163.i, %shl15.i
  %arrayidx.i = getelementptr i32, ptr %key.i, i32 %i.0162.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %arrayidx.i, align 2
  call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %4, i32 noundef %add27.i, i32 noundef %45) #5
  %inc30.i = add nuw nsw i32 %i.0162.i, 1
  %46 = ptrtoint ptr %secy.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %secy.i, align 4
  %key_len21.i = getelementptr inbounds %struct.macsec_secy, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %key_len21.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %key_len21.i, align 8
  %50 = lshr i16 %49, 2
  %div.i = zext i16 %50 to i32
  %cmp23.i = icmp ult i32 %inc30.i, %div.i
  br i1 %cmp23.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond31.preheader.i_crit_edge

for.body.i.for.cond31.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond31.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

cond.true63.i:                                    ; preds = %for.cond31.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = getelementptr inbounds %struct.macsec_rx_sa, ptr %43, i32 0, i32 3
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load8_noabort(i32 %52)
  %cond51.c154.i = load i64, ptr %51, align 8
  %conv52.c155.i = trunc i64 %cond51.c154.i to i32
  call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef 56, i32 noundef %add45.i, i32 noundef %conv52.c155.i) #5
  %inc57.i = add i32 %rec.0.lcssa.i, 6
  %add58.i = add i32 %inc44.i, %shl15.i
  %53 = ptrtoint ptr %secy.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %secy.i, align 4
  %replay_window.i = getelementptr inbounds %struct.macsec_secy, ptr %54, i32 0, i32 10
  %55 = ptrtoint ptr %replay_window.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %replay_window.i, align 4
  call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef 56, i32 noundef %add58.i, i32 noundef %56) #5
  %57 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %41, align 4
  %sc.i = getelementptr inbounds %struct.macsec_rx_sa, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %sc.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sc.i, align 4
  %sci64.i = getelementptr inbounds %struct.macsec_rx_sc, ptr %60, i32 0, i32 1
  br label %cond.end68.i

cond.false65.i:                                   ; preds = %for.cond31.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  %61 = getelementptr inbounds %struct.macsec_tx_sa, ptr %43, i32 0, i32 3
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load8_noabort(i32 %62)
  %cond51.c.i = load i64, ptr %61, align 8
  %conv52.c.i = trunc i64 %cond51.c.i to i32
  call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %4, i32 noundef %add45.i, i32 noundef %conv52.c.i) #5
  %63 = ptrtoint ptr %secy.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %secy.i, align 4
  %sci67.i = getelementptr inbounds %struct.macsec_secy, ptr %64, i32 0, i32 2
  br label %cond.end68.i

cond.end68.i:                                     ; preds = %cond.false65.i, %cond.true63.i
  %rec.2157.i = phi i32 [ %inc57.i, %cond.true63.i ], [ %inc44.i, %cond.false65.i ]
  %cond69.in.i = phi ptr [ %sci64.i, %cond.true63.i ], [ %sci67.i, %cond.false65.i ]
  %65 = ptrtoint ptr %cond69.in.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %cond69.i = load i64, ptr %cond69.in.i, align 8
  %add72.i = add i32 %rec.2157.i, %shl15.i
  %conv73.i = trunc i64 %cond69.i to i32
  call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %4, i32 noundef %add72.i, i32 noundef %conv73.i) #5
  %inc75.i = add i32 %rec.2157.i, 2
  %add76.i = add i32 %add72.i, 1
  %shr.i = lshr i64 %cond69.i, 32
  %conv78.i = trunc i64 %shr.i to i32
  call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %4, i32 noundef %add76.i, i32 noundef %conv78.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc75.i)
  %cmp79166.i = icmp ult i32 %inc75.i, 20
  br i1 %cmp79166.i, label %cond.end68.i.while.body.i_crit_edge, label %cond.end68.i.vsc8584_macsec_transformation.exit_crit_edge

cond.end68.i.vsc8584_macsec_transformation.exit_crit_edge: ; preds = %cond.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vsc8584_macsec_transformation.exit

cond.end68.i.while.body.i_crit_edge:              ; preds = %cond.end68.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %cond.end68.i.while.body.i_crit_edge
  %rec.3167.i = phi i32 [ %inc82.i, %while.body.i.while.body.i_crit_edge ], [ %inc75.i, %cond.end68.i.while.body.i_crit_edge ]
  %inc82.i = add nuw nsw i32 %rec.3167.i, 1
  %add83.i = add i32 %rec.3167.i, %shl15.i
  call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %4, i32 noundef %add83.i, i32 noundef 0) #5
  %exitcond.not.i = icmp eq i32 %inc82.i, 20
  br i1 %exitcond.not.i, label %while.body.i.vsc8584_macsec_transformation.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.vsc8584_macsec_transformation.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vsc8584_macsec_transformation.exit

vsc8584_macsec_transformation.exit:               ; preds = %while.body.i.vsc8584_macsec_transformation.exit_crit_edge, %cond.end68.i.vsc8584_macsec_transformation.exit_crit_edge
  %has_transformation.i = getelementptr inbounds %struct.macsec_flow, ptr %flow, i32 0, i32 5
  %66 = ptrtoint ptr %has_transformation.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %has_transformation.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hkey.i) #5
  br label %cleanup

if.then2:                                         ; preds = %if.end.i.if.then2_crit_edge, %vsc8584_macsec_derive_key.exit.i
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.if.then2_crit_edge ], [ %call.i.i, %vsc8584_macsec_derive_key.exit.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hkey.i) #5
  %67 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv1.i, align 8
  %69 = ptrtoint ptr %bank2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bank2.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %flow) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then2.vsc8584_macsec_free_flow.exit_crit_edge

if.then2.vsc8584_macsec_free_flow.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %vsc8584_macsec_free_flow.exit

if.end.i.i.i:                                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %flow, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i.i, align 4
  %73 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %flow, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %vsc8584_macsec_free_flow.exit

vsc8584_macsec_free_flow.exit:                    ; preds = %if.end.i.i.i, %if.then2.vsc8584_macsec_free_flow.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %70)
  %cmp.i10 = icmp eq i32 %70, 56
  %ingr_flows.i = getelementptr inbounds %struct.vsc8531_private, ptr %68, i32 0, i32 11
  %egr_flows.i = getelementptr inbounds %struct.vsc8531_private, ptr %68, i32 0, i32 12
  %cond.i11 = select i1 %cmp.i10, ptr %ingr_flows.i, ptr %egr_flows.i
  %77 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 256 to ptr), ptr %flow, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %flow, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %79 = ptrtoint ptr %index3.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %index3.i, align 4
  call void @_clear_bit(i32 noundef %80, ptr noundef %cond.i11) #5
  call void @kfree(ptr noundef %flow) #5
  br label %cleanup

cleanup:                                          ; preds = %vsc8584_macsec_free_flow.exit, %vsc8584_macsec_transformation.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %vsc8584_macsec_free_flow.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %vsc8584_macsec_transformation.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aes_expandkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aes_encrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__vsc8584_macsec_add_txsa(ptr nocapture noundef readonly %ctx, ptr noundef %flow, i1 noundef zeroext %update) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %tobool.not = icmp eq ptr %flow, null
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %egr_flows.i = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 12
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %egr_flows.i, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 16
  br i1 %cmp1.i, label %if.then.if.then3_crit_edge, label %if.end.i

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 168) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then3_crit_edge, label %if.end6.i

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.end6.i:                                        ; preds = %if.end.i
  tail call void @_set_bit(i32 noundef %call.i, ptr noundef %egr_flows.i) #5
  %index7.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %index7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %index7.i, align 8
  %bank8.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %bank8.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 60, ptr %bank8.i, align 4
  %priority.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %priority.i, align 1
  %assoc_num.i = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %assoc_num.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %assoc_num.i, align 4
  %macsec_flows.i = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 10
  %prev.i.i = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %10, ptr noundef %macsec_flows.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.i.vsc8584_macsec_alloc_flow.exit_crit_edge

if.end6.i.vsc8584_macsec_alloc_flow.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vsc8584_macsec_alloc_flow.exit

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %macsec_flows.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i.i, ptr %10, align 4
  br label %vsc8584_macsec_alloc_flow.exit

vsc8584_macsec_alloc_flow.exit:                   ; preds = %if.end.i.i.i, %if.end6.i.vsc8584_macsec_alloc_flow.exit_crit_edge
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %vsc8584_macsec_alloc_flow.exit.if.then3_crit_edge, label %if.end

vsc8584_macsec_alloc_flow.exit.if.then3_crit_edge: ; preds = %vsc8584_macsec_alloc_flow.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then3:                                         ; preds = %vsc8584_macsec_alloc_flow.exit.if.then3_crit_edge, %if.end.i.if.then3_crit_edge, %if.then.if.then3_crit_edge
  %retval.0.i29 = phi ptr [ %call7.i.i.i, %vsc8584_macsec_alloc_flow.exit.if.then3_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.if.then3_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then3_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i29 to i32
  br label %cleanup

if.end:                                           ; preds = %vsc8584_macsec_alloc_flow.exit
  call void @__sanitizer_cov_trace_pc() #7
  %key = getelementptr inbounds %struct.macsec_flow, ptr %call7.i.i.i, i32 0, i32 7
  %key5 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4, i32 1
  %secy = getelementptr inbounds %struct.vsc8531_private, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %secy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %secy, align 4
  %key_len = getelementptr inbounds %struct.macsec_secy, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %key_len, align 8
  %conv = zext i16 %19 to i32
  %20 = call ptr @memcpy(ptr %key, ptr %key5, i32 %conv)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %flow.addr.0 = phi ptr [ %flow, %entry.if.end7_crit_edge ], [ %call7.i.i.i, %if.end ]
  %sa8 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4
  %21 = ptrtoint ptr %sa8 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sa8, align 4
  %conv9 = zext i8 %22 to i32
  %assoc_num10 = getelementptr inbounds %struct.macsec_flow, ptr %flow.addr.0, i32 0, i32 4
  %23 = ptrtoint ptr %assoc_num10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv9, ptr %assoc_num10, align 4
  %24 = getelementptr inbounds %struct.macsec_context, ptr %ctx, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = getelementptr inbounds %struct.macsec_flow, ptr %flow.addr.0, i32 0, i32 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %27, align 4
  %match = getelementptr inbounds %struct.macsec_flow, ptr %flow.addr.0, i32 0, i32 9
  %29 = ptrtoint ptr %match to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %match, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %match, align 4
  %call13 = tail call fastcc i32 @vsc8584_macsec_add_flow(ptr noundef %1, ptr noundef nonnull %flow.addr.0, i1 noundef zeroext %update)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then3
  %retval.0 = phi i32 [ %call13, %if.end7 ], [ %15, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc8584_macsec_block_init(ptr noundef %phydev, i32 noundef %bank) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 2048, i32 noundef 258)
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 2048, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %bank)
  %cmp = icmp eq i32 %bank, 56
  %cond = select i1 %cmp, i32 -444071404, i32 -444071400
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 15618, i32 noundef %cond)
  %or = select i1 %cmp, i32 16777273, i32 33554472
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 7775, i32 noundef %or)
  %call = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef %bank, i32 noundef 12804)
  %or5 = or i32 %call, 8
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 12804, i32 noundef %or5)
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 15435, i32 noundef 1)
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 15628, i32 noundef 3)
  %call6 = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef %bank, i32 noundef 12804)
  %or7 = or i32 %call6, 1
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 12804, i32 noundef %or7)
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 15432, i32 noundef 65529)
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 15424, i32 noundef 65529)
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 15425, i32 noundef 65529)
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 15426, i32 noundef 65529)
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 15427, i32 noundef 65529)
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 15428, i32 noundef 65529)
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 15429, i32 noundef 65529)
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 15430, i32 noundef 65529)
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 15431, i32 noundef 65529)
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %bank)
  %cmp9 = icmp eq i32 %bank, 60
  br i1 %cmp9, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef 60, i32 noundef 15620)
  %and = and i32 %call10, 65535
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef 60, i32 noundef 15620, i32 noundef %and)
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef 60, i32 noundef 2052, i32 noundef 410641)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 7744, i32 noundef -536870912) #5
  %or16.i = select i1 %cmp, i32 -1936946036, i32 -2139062144
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 7761, i32 noundef %or16.i) #5
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 7762, i32 noundef %or16.i) #5
  br i1 %cmp, label %if.end.i, label %if.end.vsc8584_macsec_integrity_checks.exit_crit_edge

if.end.vsc8584_macsec_integrity_checks.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %vsc8584_macsec_integrity_checks.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef 56, i32 noundef 14864) #5
  %or.i = or i32 %call.i, 49152
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef 56, i32 noundef 14864, i32 noundef %or.i) #5
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef 56, i32 noundef 14868, i32 noundef -536870912) #5
  br label %vsc8584_macsec_integrity_checks.exit

vsc8584_macsec_integrity_checks.exit:             ; preds = %if.end.i, %if.end.vsc8584_macsec_integrity_checks.exit_crit_edge
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 2048, i32 noundef 5633)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc8584_macsec_mac_init(ptr noundef %phydev, i32 noundef %bank) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.065 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.065, 28
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef %add, i32 noundef 0)
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, 36
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef %bank, i32 noundef 11)
  %and = and i32 %call, 65532
  %or = or i32 %and, -65534
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 11, i32 noundef %or)
  %call1 = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef %bank, i32 noundef 12)
  %or2 = or i32 %call1, 65535
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 12, i32 noundef %or2)
  %call3 = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef %bank, i32 noundef 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %bank)
  %cmp4 = icmp eq i32 %bank, 5
  %cond = select i1 %cmp4, i32 -2113859311, i32 -2147413743
  %val.0.v = select i1 %cmp4, i32 4112, i32 65809
  %val.0 = or i32 %call3, %val.0.v
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 13, i32 noundef %val.0)
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 10, i32 noundef %cond)
  %call10 = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef %bank, i32 noundef 1)
  %and11 = and i32 %call10, -2
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 1, i32 noundef %and11)
  %call12 = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef %bank, i32 noundef 2)
  %and13 = and i32 %call12, -65536
  %or14 = or i32 %and13, 10240
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 2, i32 noundef %or14)
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 7, i32 noundef 65809)
  %call15 = tail call fastcc i32 @vsc8584_macsec_phy_read(ptr noundef %phydev, i32 noundef %bank, i32 noundef 8)
  %and16 = and i32 %call15, -2
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 8, i32 noundef %and16)
  tail call fastcc void @vsc8584_macsec_phy_write(ptr noundef %phydev, i32 noundef %bank, i32 noundef 0, i32 noundef 1114129)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_select_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_restore_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @vsc8584_macsec_ops, !1, !"vsc8584_macsec_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/mscc/mscc_macsec.c", i32 961, i32 32}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i8 0, i8 2}
!12 = !{i64 2149146785}
