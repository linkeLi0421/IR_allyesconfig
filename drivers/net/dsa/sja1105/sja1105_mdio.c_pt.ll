; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/sja1105/sja1105_mdio.c_pt.bc'
source_filename = "../drivers/net/dsa/sja1105/sja1105_mdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sja1105_private = type { %struct.sja1105_static_config, [11 x i32], [11 x i32], [11 x i32], [11 x i8], i32, i32, i32, ptr, i32, ptr, ptr, [11 x i16], [11 x i16], %struct.sja1105_flow_block, %struct.mutex, %struct.spinlock, i8, %struct.mutex, ptr, ptr, ptr, ptr, ptr, [11 x ptr], %struct.sja1105_ptp_data, %struct.sja1105_tas_data }
%struct.sja1105_static_config = type { i64, [21 x %struct.sja1105_table] }
%struct.sja1105_table = type { ptr, i32, ptr }
%struct.sja1105_flow_block = type { %struct.list_head, [110 x i8], i32 }
%struct.sja1105_ptp_data = type { %struct.timer_list, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ptp_clock_info, ptr, %struct.sja1105_ptp_cmd, %struct.mutex, i8, i64 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sja1105_ptp_cmd = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_tas_data = type { [11 x ptr], %struct.sja1105_gating_config, i32, i32, %struct.work_struct, i64, i64, i64, i8 }
%struct.sja1105_gating_config = type { i64, i64, i32, %struct.list_head }
%struct.sja1105_info = type { i64, i64, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i32], [5 x i64] }
%struct.sja1105_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [4 x [11 x i64]], i64, i64, [11 x i64] }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.dsa_port = type { %union.anon.150, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.150 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.139 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.139 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/dsa/sja1105/sja1105_mdio.c\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mdios\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SJA1105 PCS MDIO bus\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-pcs\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nxp,sja1110-base-tx-mdio\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SJA1110 100base-TX MDIO bus\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-base-tx\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nxp,sja1110-base-t1-mdio\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SJA1110 100base-T1 MDIO bus\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-base-t1\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2031618, i64 2031619]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 2031618, i64 2031619]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 22]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 92, i32 6 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 501, i32 48 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 402, i32 14 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 403, i32 37 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 287, i32 42 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 300, i32 14 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 301, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 341, i32 42 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 354, i32 14 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [42 x i8] c"../drivers/net/dsa/sja1105/sja1105_mdio.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 355, i32 37 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_pcs_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phy, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp, align 4, !annotation !29
  %and = and i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %urem = and i32 %reg, 2097151
  %conv6 = zext i32 %urem to i64
  %5 = and i32 %reg, 1966080
  call void @__sanitizer_cov_trace_const_cmp4(i32 1966080, i32 %5)
  %switch = icmp eq i32 %5, 1966080
  br i1 %switch, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %6 = zext i32 %urem to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %urem, label %if.end31 [
    i32 2031618, label %if.end13.cleanup_crit_edge
    i32 2031619, label %cleanup.fold.split
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end13
  %call = call i32 @sja1105_xfer_u32(ptr noundef %3, i32 noundef 0, i64 noundef %conv6, ptr noundef nonnull %tmp, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp32 = icmp slt i32 %call, 0
  br i1 %cmp32, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tmp, align 4
  %and36 = and i32 %8, 65535
  br label %cleanup

cleanup.fold.split:                               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split, %if.end35, %if.end31.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and36, %if.end35 ], [ -22, %entry.cleanup_crit_edge ], [ 65535, %if.end.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ %call, %if.end31.cleanup_crit_edge ], [ 16, %cleanup.fold.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_xfer_u32(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_pcs_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phy, i32 noundef %reg, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %and = and i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv7 = zext i16 %val to i32
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv7, ptr %tmp, align 4
  %5 = and i32 %reg, 1966080
  call void @__sanitizer_cov_trace_const_cmp4(i32 1966080, i32 %5)
  %switch = icmp eq i32 %5, 1966080
  br i1 %switch, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or = and i32 %reg, 2097151
  %conv6 = zext i32 %or to i64
  %call = call i32 @sja1105_xfer_u32(ptr noundef %3, i32 noundef 1, i64 noundef %conv6, ptr noundef nonnull %tmp, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1110_pcs_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phy, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %info = getelementptr inbounds %struct.sja1105_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %regs3 = getelementptr inbounds %struct.sja1105_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %and = and i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.sja1105_regs, ptr %7, i32 0, i32 31, i32 %phy
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %9)
  %cmp = icmp eq i64 %9, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = and i32 %reg, 2097151
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %10, label %if.end26 [
    i32 2031618, label %if.end5.cleanup_crit_edge
    i32 2031619, label %cleanup.fold.split
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end5
  %12 = and i32 %reg, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %12)
  %cmp31 = icmp eq i32 %12, 255
  br i1 %cmp31, label %do.end, label %if.end57, !prof !30

do.end:                                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 92, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end57:                                         ; preds = %if.end26
  %urem = lshr i32 %reg, 8
  %shr27 = and i32 %urem, 8191
  %13 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr27, ptr %tmp, align 4
  %add = add i64 %9, 255
  %call = call i32 @sja1105_xfer_u32(ptr noundef %3, i32 noundef 1, i64 noundef %add, ptr noundef nonnull %tmp, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp60 = icmp slt i32 %call, 0
  br i1 %cmp60, label %if.end57.cleanup_crit_edge, label %if.end63

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end63:                                         ; preds = %if.end57
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx, align 8
  %conv66 = zext i32 %12 to i64
  %add67 = add i64 %15, %conv66
  %call68 = call i32 @sja1105_xfer_u32(ptr noundef %3, i32 noundef 0, i64 noundef %add67, ptr noundef nonnull %tmp, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.end63.cleanup_crit_edge, label %if.end72

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end72:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tmp, align 4
  %and73 = and i32 %17, 65535
  br label %cleanup

cleanup.fold.split:                               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split, %if.end72, %if.end63.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %do.end, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %and73, %if.end72 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call, %if.end57.cleanup_crit_edge ], [ %call68, %if.end63.cleanup_crit_edge ], [ 32, %cleanup.fold.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1110_pcs_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phy, i32 noundef %reg, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %info = getelementptr inbounds %struct.sja1105_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %regs3 = getelementptr inbounds %struct.sja1105_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %and = and i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.sja1105_regs, ptr %7, i32 0, i32 31, i32 %phy
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %9)
  %cmp = icmp eq i64 %9, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = and i32 %reg, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %10)
  %cmp14 = icmp eq i32 %10, 255
  br i1 %cmp14, label %do.end, label %if.end40, !prof !30

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end40:                                         ; preds = %if.end5
  %or = lshr i32 %reg, 8
  %shr10 = and i32 %or, 8191
  %11 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr10, ptr %tmp, align 4
  %add = add i64 %9, 255
  %call = call i32 @sja1105_xfer_u32(ptr noundef %3, i32 noundef 1, i64 noundef %add, ptr noundef nonnull %tmp, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp43 = icmp slt i32 %call, 0
  br i1 %cmp43, label %if.end40.cleanup_crit_edge, label %if.end46

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %conv47 = zext i16 %val to i32
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv47, ptr %tmp, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx, align 8
  %conv50 = zext i32 %10 to i64
  %add51 = add i64 %14, %conv50
  %call52 = call i32 @sja1105_xfer_u32(ptr noundef %3, i32 noundef 1, i64 noundef %add51, ptr noundef nonnull %tmp, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end40.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call52, %if.end46 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_mdiobus_register(ptr nocapture noundef readonly %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %regs2 = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs2, align 4
  %6 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %ds1.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds1.i, align 8
  %pcs_mdio_read.i = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 21
  %12 = ptrtoint ptr %pcs_mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcs_mdio_read.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %pcs_mdio_write.i = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 22
  %14 = ptrtoint ptr %pcs_mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcs_mdio_write.i, align 8
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = tail call ptr @mdiobus_alloc_size(i32 noundef 4) #5
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %name.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.2, ptr %name.i, align 4
  %id.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %11, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end6.i.dev_name.exit.i_crit_edge

if.end6.i.dev_name.exit.i_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end6.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %22, %if.end.i.i ], [ %20, %if.end6.i.dev_name.exit.i_crit_edge ]
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id.i, i32 noundef 61, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i.i) #5
  %23 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %info, align 4
  %pcs_mdio_read10.i = getelementptr inbounds %struct.sja1105_info, ptr %24, i32 0, i32 21
  %25 = ptrtoint ptr %pcs_mdio_read10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcs_mdio_read10.i, align 4
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %read.i, align 4
  %28 = load ptr, ptr %info, align 4
  %pcs_mdio_write12.i = getelementptr inbounds %struct.sja1105_info, ptr %28, i32 0, i32 22
  %29 = ptrtoint ptr %pcs_mdio_write12.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcs_mdio_write12.i, align 8
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %write.i, align 8
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %11, align 4
  %parent.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 9
  %34 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %parent.i, align 4
  %phy_mask.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 13
  %35 = ptrtoint ptr %phy_mask.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %phy_mask.i, align 8
  %priv14.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %36 = ptrtoint ptr %priv14.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv14.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %1, ptr %37, align 4
  %call16.i = tail call i32 @__mdiobus_register(ptr noundef nonnull %call.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.cond.preheader.i, label %if.then18.i

for.cond.preheader.i:                             ; preds = %dev_name.exit.i
  %num_ports.i = getelementptr inbounds %struct.dsa_switch, ptr %11, i32 0, i32 18
  %39 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp126.not.i = icmp eq i32 %40, 0
  br i1 %cmp126.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %11, i32 0, i32 1
  br label %for.body.i

if.then18.i:                                      ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mdiobus_free(ptr noundef nonnull %call.i) #5
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %port.0127.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %41 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %for.body.i.dsa_is_unused_port.exit.i_crit_edge, label %for.body.i.for.body.i.i.i_crit_edge

for.body.i.for.body.i.i.i_crit_edge:              ; preds = %for.body.i
  br label %for.body.i.i.i

for.body.i.dsa_is_unused_port.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dsa_is_unused_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %for.body.i.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %44 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %45, %11
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %46 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %port.0127.i)
  %cmp5.i.i.i = icmp eq i32 %47, %port.0127.i
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %48 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dsa_is_unused_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_unused_port.exit.i

dsa_is_unused_port.exit.i:                        ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge, %for.body.i.dsa_is_unused_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %for.body.i.dsa_is_unused_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %49 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i.i = icmp eq i32 %50, 0
  br i1 %cmp.i.i, label %dsa_is_unused_port.exit.i.for.inc.i_crit_edge, label %if.end22.i

dsa_is_unused_port.exit.i.for.inc.i_crit_edge:    ; preds = %dsa_is_unused_port.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end22.i:                                       ; preds = %dsa_is_unused_port.exit.i
  %arrayidx.i = getelementptr %struct.sja1105_private, ptr %1, i32 0, i32 3, i32 %port.0127.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %52, label %if.end22.i.for.inc.i_crit_edge [
    i32 4, label %if.end22.i.if.end28.i_crit_edge
    i32 22, label %if.end22.i.if.end28.i_crit_edge124
  ]

if.end22.i.if.end28.i_crit_edge124:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.end22.i.if.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.end22.i.for.inc.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end28.i:                                       ; preds = %if.end22.i.if.end28.i_crit_edge, %if.end22.i.if.end28.i_crit_edge124
  %call29.i = tail call ptr @mdio_device_create(ptr noundef nonnull %call.i, i32 noundef %port.0127.i) #5
  %cmp.i119.i = icmp ugt ptr %call29.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119.i, label %if.end28.i.cleanup.i_crit_edge, label %if.end33.i

if.end28.i.cleanup.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end33.i:                                       ; preds = %if.end28.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i, align 4
  %call36.i = tail call ptr @xpcs_create(ptr noundef %call29.i, i32 noundef %55) #5
  %cmp.i120.i = icmp ugt ptr %call36.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120.i, label %if.end33.i.cleanup.i_crit_edge, label %if.end40.i

if.end33.i.cleanup.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end40.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx42.i = getelementptr %struct.sja1105_private, ptr %1, i32 0, i32 24, i32 %port.0127.i
  %56 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call36.i, ptr %arrayidx42.i, align 4
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end33.i.cleanup.i_crit_edge, %if.end28.i.cleanup.i_crit_edge
  %rc.1.in.i = phi ptr [ %call29.i, %if.end28.i.cleanup.i_crit_edge ], [ %call36.i, %if.end33.i.cleanup.i_crit_edge ]
  %rc.1.i = ptrtoint ptr %rc.1.in.i to i32
  %57 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp46130.not.i = icmp eq i32 %58, 0
  br i1 %cmp46130.not.i, label %cleanup.i.sja1105_mdiobus_pcs_register.exit_crit_edge, label %cleanup.i.for.body47.i_crit_edge

cleanup.i.for.body47.i_crit_edge:                 ; preds = %cleanup.i
  br label %for.body47.i

cleanup.i.sja1105_mdiobus_pcs_register.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sja1105_mdiobus_pcs_register.exit

for.inc.i:                                        ; preds = %if.end40.i, %if.end22.i.for.inc.i_crit_edge, %dsa_is_unused_port.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %port.0127.i, 1
  %59 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_ports.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %60
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %mdio_pcs.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 23
  %61 = ptrtoint ptr %mdio_pcs.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i, ptr %mdio_pcs.i, align 4
  br label %if.end

for.body47.i:                                     ; preds = %for.inc60.i.for.body47.i_crit_edge, %cleanup.i.for.body47.i_crit_edge
  %port.1131.i = phi i32 [ %inc61.i, %for.inc60.i.for.body47.i_crit_edge ], [ 0, %cleanup.i.for.body47.i_crit_edge ]
  %arrayidx49.i = getelementptr %struct.sja1105_private, ptr %1, i32 0, i32 24, i32 %port.1131.i
  %62 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx49.i, align 4
  %tobool50.not.i = icmp eq ptr %63, null
  br i1 %tobool50.not.i, label %for.body47.i.for.inc60.i_crit_edge, label %if.end52.i

for.body47.i.for.inc60.i_crit_edge:               ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc60.i

if.end52.i:                                       ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  tail call void @mdio_device_free(ptr noundef %65) #5
  %66 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx49.i, align 4
  tail call void @xpcs_destroy(ptr noundef %67) #5
  %68 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %arrayidx49.i, align 4
  br label %for.inc60.i

for.inc60.i:                                      ; preds = %if.end52.i, %for.body47.i.for.inc60.i_crit_edge
  %inc61.i = add nuw i32 %port.1131.i, 1
  %69 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_ports.i, align 4
  %cmp46.i = icmp ult i32 %inc61.i, %70
  br i1 %cmp46.i, label %for.inc60.i.for.body47.i_crit_edge, label %for.inc60.i.sja1105_mdiobus_pcs_register.exit_crit_edge

for.inc60.i.sja1105_mdiobus_pcs_register.exit_crit_edge: ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sja1105_mdiobus_pcs_register.exit

for.inc60.i.for.body47.i_crit_edge:               ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body47.i

sja1105_mdiobus_pcs_register.exit:                ; preds = %for.inc60.i.sja1105_mdiobus_pcs_register.exit_crit_edge, %cleanup.i.sja1105_mdiobus_pcs_register.exit_crit_edge
  tail call void @mdiobus_unregister(ptr noundef nonnull %call.i) #5
  tail call void @mdiobus_free(ptr noundef nonnull %call.i) #5
  %tobool.not = icmp eq ptr %rc.1.in.i, null
  br i1 %tobool.not, label %sja1105_mdiobus_pcs_register.exit.if.end_crit_edge, label %sja1105_mdiobus_pcs_register.exit.cleanup_crit_edge

sja1105_mdiobus_pcs_register.exit.cleanup_crit_edge: ; preds = %sja1105_mdiobus_pcs_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sja1105_mdiobus_pcs_register.exit.if.end_crit_edge: ; preds = %sja1105_mdiobus_pcs_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %sja1105_mdiobus_pcs_register.exit.if.end_crit_edge, %for.end.i, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call ptr @of_get_child_by_name(ptr noundef %9, ptr noundef nonnull @.str.1) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call3) #5
  br i1 %call7, label %if.end9, label %if.end6.out_put_mdio_node_crit_edge

if.end6.out_put_mdio_node_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put_mdio_node

if.end9:                                          ; preds = %if.end6
  %mdio_100base_tx = getelementptr inbounds %struct.sja1105_regs, ptr %5, i32 0, i32 29
  %71 = ptrtoint ptr %mdio_100base_tx to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %mdio_100base_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %72)
  %cmp.not = icmp eq i64 %72, -1
  br i1 %cmp.not, label %if.end9.if.end15_crit_edge, label %if.then10

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then10:                                        ; preds = %if.end9
  %call.i43 = tail call ptr @of_get_compatible_child(ptr noundef nonnull %call3, ptr noundef nonnull @.str.4) #5
  %tobool.not.i44 = icmp eq ptr %call.i43, null
  br i1 %tobool.not.i44, label %if.then10.if.end15_crit_edge, label %if.end.i45

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end.i45:                                       ; preds = %if.then10
  %call1.i = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call.i43) #5
  br i1 %call1.i, label %if.end3.i, label %if.end.i45.sja1105_mdiobus_base_tx_register.exit.thread110_crit_edge

if.end.i45.sja1105_mdiobus_base_tx_register.exit.thread110_crit_edge: ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %sja1105_mdiobus_base_tx_register.exit.thread110

if.end3.i:                                        ; preds = %if.end.i45
  %call4.i = tail call ptr @mdiobus_alloc_size(i32 noundef 4) #5
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end3.i.sja1105_mdiobus_base_tx_register.exit_crit_edge, label %if.end7.i

if.end3.i.sja1105_mdiobus_base_tx_register.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sja1105_mdiobus_base_tx_register.exit

if.end7.i:                                        ; preds = %if.end3.i
  %name.i46 = getelementptr inbounds %struct.mii_bus, ptr %call4.i, i32 0, i32 1
  %73 = ptrtoint ptr %name.i46 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.5, ptr %name.i46, align 4
  %id.i47 = getelementptr inbounds %struct.mii_bus, ptr %call4.i, i32 0, i32 2
  %74 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ds1.i, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %init_name.i.i48 = getelementptr inbounds %struct.device, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %init_name.i.i48 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %init_name.i.i48, align 8
  %tobool.not.i.i49 = icmp eq ptr %79, null
  br i1 %tobool.not.i.i49, label %if.end.i.i50, label %if.end7.i.dev_name.exit.i55_crit_edge

if.end7.i.dev_name.exit.i55_crit_edge:            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i55

if.end.i.i50:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %77, align 4
  br label %dev_name.exit.i55

dev_name.exit.i55:                                ; preds = %if.end.i.i50, %if.end7.i.dev_name.exit.i55_crit_edge
  %retval.0.i.i51 = phi ptr [ %81, %if.end.i.i50 ], [ %79, %if.end7.i.dev_name.exit.i55_crit_edge ]
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id.i47, i32 noundef 61, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i.i51) #5
  %read.i52 = getelementptr inbounds %struct.mii_bus, ptr %call4.i, i32 0, i32 4
  %82 = ptrtoint ptr %read.i52 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @sja1105_base_tx_mdio_read, ptr %read.i52, align 4
  %write.i53 = getelementptr inbounds %struct.mii_bus, ptr %call4.i, i32 0, i32 5
  %83 = ptrtoint ptr %write.i53 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @sja1105_base_tx_mdio_write, ptr %write.i53, align 8
  %84 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ds1.i, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %parent.i54 = getelementptr inbounds %struct.mii_bus, ptr %call4.i, i32 0, i32 9
  %88 = ptrtoint ptr %parent.i54 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %parent.i54, align 4
  %priv12.i = getelementptr inbounds %struct.mii_bus, ptr %call4.i, i32 0, i32 3
  %89 = ptrtoint ptr %priv12.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %priv12.i, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %1, ptr %90, align 4
  %call14.i = tail call i32 @of_mdiobus_register(ptr noundef nonnull %call4.i, ptr noundef nonnull %call.i43) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.then16.i

if.then16.i:                                      ; preds = %dev_name.exit.i55
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mdiobus_free(ptr noundef nonnull %call4.i) #5
  br label %sja1105_mdiobus_base_tx_register.exit

if.end17.i:                                       ; preds = %dev_name.exit.i55
  call void @__sanitizer_cov_trace_pc() #7
  %mdio_base_tx.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 22
  %92 = ptrtoint ptr %mdio_base_tx.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call4.i, ptr %mdio_base_tx.i, align 8
  br label %sja1105_mdiobus_base_tx_register.exit.thread110

sja1105_mdiobus_base_tx_register.exit.thread110:  ; preds = %if.end17.i, %if.end.i45.sja1105_mdiobus_base_tx_register.exit.thread110_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call.i43) #5
  br label %if.end15

sja1105_mdiobus_base_tx_register.exit:            ; preds = %if.then16.i, %if.end3.i.sja1105_mdiobus_base_tx_register.exit_crit_edge
  %rc.0.i = phi i32 [ %call14.i, %if.then16.i ], [ -12, %if.end3.i.sja1105_mdiobus_base_tx_register.exit_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %call.i43) #5
  br label %err_put_mdio_node

if.end15:                                         ; preds = %sja1105_mdiobus_base_tx_register.exit.thread110, %if.then10.if.end15_crit_edge, %if.end9.if.end15_crit_edge
  %mdio_100base_t1 = getelementptr inbounds %struct.sja1105_regs, ptr %5, i32 0, i32 30
  %93 = ptrtoint ptr %mdio_100base_t1 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %mdio_100base_t1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %94)
  %cmp16.not = icmp eq i64 %94, -1
  br i1 %cmp16.not, label %if.end15.out_put_mdio_node_crit_edge, label %if.then17

if.end15.out_put_mdio_node_crit_edge:             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put_mdio_node

if.then17:                                        ; preds = %if.end15
  %call.i58 = tail call ptr @of_get_compatible_child(ptr noundef nonnull %call3, ptr noundef nonnull @.str.7) #5
  %tobool.not.i59 = icmp eq ptr %call.i58, null
  br i1 %tobool.not.i59, label %if.then17.out_put_mdio_node_crit_edge, label %if.end.i61

if.then17.out_put_mdio_node_crit_edge:            ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put_mdio_node

if.end.i61:                                       ; preds = %if.then17
  %call1.i60 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call.i58) #5
  br i1 %call1.i60, label %if.end3.i64, label %if.end.i61.sja1105_mdiobus_base_t1_register.exit.thread115_crit_edge

if.end.i61.sja1105_mdiobus_base_t1_register.exit.thread115_crit_edge: ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %sja1105_mdiobus_base_t1_register.exit.thread115

if.end3.i64:                                      ; preds = %if.end.i61
  %call4.i62 = tail call ptr @mdiobus_alloc_size(i32 noundef 4) #5
  %tobool5.not.i63 = icmp eq ptr %call4.i62, null
  br i1 %tobool5.not.i63, label %if.end3.i64.err_free_base_tx_mdiobus_crit_edge, label %if.end7.i70

if.end3.i64.err_free_base_tx_mdiobus_crit_edge:   ; preds = %if.end3.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_base_tx_mdiobus

if.end7.i70:                                      ; preds = %if.end3.i64
  %name.i65 = getelementptr inbounds %struct.mii_bus, ptr %call4.i62, i32 0, i32 1
  %95 = ptrtoint ptr %name.i65 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @.str.8, ptr %name.i65, align 4
  %id.i66 = getelementptr inbounds %struct.mii_bus, ptr %call4.i62, i32 0, i32 2
  %96 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ds1.i, align 8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %init_name.i.i68 = getelementptr inbounds %struct.device, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %init_name.i.i68 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %init_name.i.i68, align 8
  %tobool.not.i.i69 = icmp eq ptr %101, null
  br i1 %tobool.not.i.i69, label %if.end.i.i71, label %if.end7.i70.dev_name.exit.i80_crit_edge

if.end7.i70.dev_name.exit.i80_crit_edge:          ; preds = %if.end7.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i80

if.end.i.i71:                                     ; preds = %if.end7.i70
  call void @__sanitizer_cov_trace_pc() #7
  %102 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %99, align 4
  br label %dev_name.exit.i80

dev_name.exit.i80:                                ; preds = %if.end.i.i71, %if.end7.i70.dev_name.exit.i80_crit_edge
  %retval.0.i.i72 = phi ptr [ %103, %if.end.i.i71 ], [ %101, %if.end7.i70.dev_name.exit.i80_crit_edge ]
  %call9.i73 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id.i66, i32 noundef 61, ptr noundef nonnull @.str.9, ptr noundef %retval.0.i.i72) #5
  %read.i74 = getelementptr inbounds %struct.mii_bus, ptr %call4.i62, i32 0, i32 4
  %104 = ptrtoint ptr %read.i74 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @sja1105_base_t1_mdio_read, ptr %read.i74, align 4
  %write.i75 = getelementptr inbounds %struct.mii_bus, ptr %call4.i62, i32 0, i32 5
  %105 = ptrtoint ptr %write.i75 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @sja1105_base_t1_mdio_write, ptr %write.i75, align 8
  %106 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ds1.i, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %parent.i76 = getelementptr inbounds %struct.mii_bus, ptr %call4.i62, i32 0, i32 9
  %110 = ptrtoint ptr %parent.i76 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %109, ptr %parent.i76, align 4
  %priv12.i77 = getelementptr inbounds %struct.mii_bus, ptr %call4.i62, i32 0, i32 3
  %111 = ptrtoint ptr %priv12.i77 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %priv12.i77, align 8
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %1, ptr %112, align 4
  %call14.i78 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %call4.i62, ptr noundef nonnull %call.i58) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i78)
  %tobool15.not.i79 = icmp eq i32 %call14.i78, 0
  br i1 %tobool15.not.i79, label %if.end17.i82, label %if.then16.i81

if.then16.i81:                                    ; preds = %dev_name.exit.i80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mdiobus_free(ptr noundef nonnull %call4.i62) #5
  br label %err_free_base_tx_mdiobus

if.end17.i82:                                     ; preds = %dev_name.exit.i80
  call void @__sanitizer_cov_trace_pc() #7
  %mdio_base_t1.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 21
  %114 = ptrtoint ptr %mdio_base_t1.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call4.i62, ptr %mdio_base_t1.i, align 4
  br label %sja1105_mdiobus_base_t1_register.exit.thread115

sja1105_mdiobus_base_t1_register.exit.thread115:  ; preds = %if.end17.i82, %if.end.i61.sja1105_mdiobus_base_t1_register.exit.thread115_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call.i58) #5
  br label %out_put_mdio_node

out_put_mdio_node:                                ; preds = %sja1105_mdiobus_base_t1_register.exit.thread115, %if.then17.out_put_mdio_node_crit_edge, %if.end15.out_put_mdio_node_crit_edge, %if.end6.out_put_mdio_node_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call3) #5
  br label %cleanup

err_free_base_tx_mdiobus:                         ; preds = %if.then16.i81, %if.end3.i64.err_free_base_tx_mdiobus_crit_edge
  %rc.0.i83 = phi i32 [ %call14.i78, %if.then16.i81 ], [ -12, %if.end3.i64.err_free_base_tx_mdiobus_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %call.i58) #5
  %mdio_base_tx.i87 = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 22
  %115 = ptrtoint ptr %mdio_base_tx.i87 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mdio_base_tx.i87, align 8
  %tobool.not.i88 = icmp eq ptr %116, null
  br i1 %tobool.not.i88, label %err_free_base_tx_mdiobus.err_put_mdio_node_crit_edge, label %if.end.i89

err_free_base_tx_mdiobus.err_put_mdio_node_crit_edge: ; preds = %err_free_base_tx_mdiobus
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_put_mdio_node

if.end.i89:                                       ; preds = %err_free_base_tx_mdiobus
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mdiobus_unregister(ptr noundef nonnull %116) #5
  %117 = ptrtoint ptr %mdio_base_tx.i87 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mdio_base_tx.i87, align 8
  tail call void @mdiobus_free(ptr noundef %118) #5
  %119 = ptrtoint ptr %mdio_base_tx.i87 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %mdio_base_tx.i87, align 8
  br label %err_put_mdio_node

err_put_mdio_node:                                ; preds = %if.end.i89, %err_free_base_tx_mdiobus.err_put_mdio_node_crit_edge, %sja1105_mdiobus_base_tx_register.exit
  %rc.0 = phi i32 [ %rc.0.i, %sja1105_mdiobus_base_tx_register.exit ], [ %rc.0.i83, %err_free_base_tx_mdiobus.err_put_mdio_node_crit_edge ], [ %rc.0.i83, %if.end.i89 ]
  tail call void @of_node_put(ptr noundef nonnull %call3) #5
  %mdio_pcs.i90 = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 23
  %120 = ptrtoint ptr %mdio_pcs.i90 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mdio_pcs.i90, align 4
  %tobool.not.i91 = icmp eq ptr %121, null
  br i1 %tobool.not.i91, label %err_put_mdio_node.cleanup_crit_edge, label %for.cond.preheader.i94

err_put_mdio_node.cleanup_crit_edge:              ; preds = %err_put_mdio_node
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.i94:                           ; preds = %err_put_mdio_node
  %122 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ds1.i, align 8
  %num_ports.i93 = getelementptr inbounds %struct.dsa_switch, ptr %123, i32 0, i32 18
  %124 = ptrtoint ptr %num_ports.i93 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %num_ports.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp28.not.i = icmp eq i32 %125, 0
  br i1 %cmp28.not.i, label %for.cond.preheader.i94.for.end.i100_crit_edge, label %for.cond.preheader.i94.for.body.i96_crit_edge

for.cond.preheader.i94.for.body.i96_crit_edge:    ; preds = %for.cond.preheader.i94
  br label %for.body.i96

for.cond.preheader.i94.for.end.i100_crit_edge:    ; preds = %for.cond.preheader.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i100

for.body.i96:                                     ; preds = %for.inc.i99.for.body.i96_crit_edge, %for.cond.preheader.i94.for.body.i96_crit_edge
  %port.029.i = phi i32 [ %inc.i97, %for.inc.i99.for.body.i96_crit_edge ], [ 0, %for.cond.preheader.i94.for.body.i96_crit_edge ]
  %arrayidx.i95 = getelementptr %struct.sja1105_private, ptr %1, i32 0, i32 24, i32 %port.029.i
  %126 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i95, align 4
  %tobool2.not.i = icmp eq ptr %127, null
  br i1 %tobool2.not.i, label %for.body.i96.for.inc.i99_crit_edge, label %if.end4.i

for.body.i96.for.inc.i99_crit_edge:               ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i99

if.end4.i:                                        ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #7
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  tail call void @mdio_device_free(ptr noundef %129) #5
  %130 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx.i95, align 4
  tail call void @xpcs_destroy(ptr noundef %131) #5
  %132 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %arrayidx.i95, align 4
  br label %for.inc.i99

for.inc.i99:                                      ; preds = %if.end4.i, %for.body.i96.for.inc.i99_crit_edge
  %inc.i97 = add nuw i32 %port.029.i, 1
  %133 = ptrtoint ptr %num_ports.i93 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_ports.i93, align 4
  %cmp.i98 = icmp ult i32 %inc.i97, %134
  br i1 %cmp.i98, label %for.inc.i99.for.body.i96_crit_edge, label %for.inc.i99.for.end.i100_crit_edge

for.inc.i99.for.end.i100_crit_edge:               ; preds = %for.inc.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i100

for.inc.i99.for.body.i96_crit_edge:               ; preds = %for.inc.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i96

for.end.i100:                                     ; preds = %for.inc.i99.for.end.i100_crit_edge, %for.cond.preheader.i94.for.end.i100_crit_edge
  %135 = ptrtoint ptr %mdio_pcs.i90 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mdio_pcs.i90, align 4
  tail call void @mdiobus_unregister(ptr noundef %136) #5
  %137 = ptrtoint ptr %mdio_pcs.i90 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mdio_pcs.i90, align 4
  tail call void @mdiobus_free(ptr noundef %138) #5
  %139 = ptrtoint ptr %mdio_pcs.i90 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %mdio_pcs.i90, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end.i100, %err_put_mdio_node.cleanup_crit_edge, %out_put_mdio_node, %if.end.cleanup_crit_edge, %sja1105_mdiobus_pcs_register.exit.cleanup_crit_edge, %if.then18.i, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out_put_mdio_node ], [ %rc.1.i, %sja1105_mdiobus_pcs_register.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %rc.0, %err_put_mdio_node.cleanup_crit_edge ], [ %rc.0, %for.end.i100 ], [ -12, %if.end.i.cleanup_crit_edge ], [ %call16.i, %if.then18.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_mdiobus_unregister(ptr nocapture noundef readonly %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %mdio_base_t1.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %mdio_base_t1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdio_base_t1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.sja1105_mdiobus_base_t1_unregister.exit_crit_edge, label %if.end.i

entry.sja1105_mdiobus_base_t1_unregister.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sja1105_mdiobus_base_t1_unregister.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mdiobus_unregister(ptr noundef nonnull %3) #5
  %4 = ptrtoint ptr %mdio_base_t1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdio_base_t1.i, align 4
  tail call void @mdiobus_free(ptr noundef %5) #5
  %6 = ptrtoint ptr %mdio_base_t1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %mdio_base_t1.i, align 4
  br label %sja1105_mdiobus_base_t1_unregister.exit

sja1105_mdiobus_base_t1_unregister.exit:          ; preds = %if.end.i, %entry.sja1105_mdiobus_base_t1_unregister.exit_crit_edge
  %mdio_base_tx.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %mdio_base_tx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio_base_tx.i, align 8
  %tobool.not.i4 = icmp eq ptr %8, null
  br i1 %tobool.not.i4, label %sja1105_mdiobus_base_t1_unregister.exit.sja1105_mdiobus_base_tx_unregister.exit_crit_edge, label %if.end.i5

sja1105_mdiobus_base_t1_unregister.exit.sja1105_mdiobus_base_tx_unregister.exit_crit_edge: ; preds = %sja1105_mdiobus_base_t1_unregister.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sja1105_mdiobus_base_tx_unregister.exit

if.end.i5:                                        ; preds = %sja1105_mdiobus_base_t1_unregister.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mdiobus_unregister(ptr noundef nonnull %8) #5
  %9 = ptrtoint ptr %mdio_base_tx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdio_base_tx.i, align 8
  tail call void @mdiobus_free(ptr noundef %10) #5
  %11 = ptrtoint ptr %mdio_base_tx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %mdio_base_tx.i, align 8
  br label %sja1105_mdiobus_base_tx_unregister.exit

sja1105_mdiobus_base_tx_unregister.exit:          ; preds = %if.end.i5, %sja1105_mdiobus_base_t1_unregister.exit.sja1105_mdiobus_base_tx_unregister.exit_crit_edge
  %mdio_pcs.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %mdio_pcs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_pcs.i, align 4
  %tobool.not.i6 = icmp eq ptr %13, null
  br i1 %tobool.not.i6, label %sja1105_mdiobus_base_tx_unregister.exit.sja1105_mdiobus_pcs_unregister.exit_crit_edge, label %for.cond.preheader.i

sja1105_mdiobus_base_tx_unregister.exit.sja1105_mdiobus_pcs_unregister.exit_crit_edge: ; preds = %sja1105_mdiobus_base_tx_unregister.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sja1105_mdiobus_pcs_unregister.exit

for.cond.preheader.i:                             ; preds = %sja1105_mdiobus_base_tx_unregister.exit
  %ds1.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ds1.i, align 8
  %num_ports.i = getelementptr inbounds %struct.dsa_switch, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp28.not.i = icmp eq i32 %17, 0
  br i1 %cmp28.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %port.029.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sja1105_private, ptr %1, i32 0, i32 24, i32 %port.029.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %19, null
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  tail call void @mdio_device_free(ptr noundef %21) #5
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  tail call void @xpcs_destroy(ptr noundef %23) #5
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end4.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %port.029.i, 1
  %25 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_ports.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %26
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %27 = ptrtoint ptr %mdio_pcs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdio_pcs.i, align 4
  tail call void @mdiobus_unregister(ptr noundef %28) #5
  %29 = ptrtoint ptr %mdio_pcs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdio_pcs.i, align 4
  tail call void @mdiobus_free(ptr noundef %30) #5
  %31 = ptrtoint ptr %mdio_pcs.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %mdio_pcs.i, align 4
  br label %sja1105_mdiobus_pcs_unregister.exit

sja1105_mdiobus_pcs_unregister.exit:              ; preds = %for.end.i, %sja1105_mdiobus_base_tx_unregister.exit.sja1105_mdiobus_pcs_unregister.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdio_device_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xpcs_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_device_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xpcs_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_base_tx_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phy, i32 noundef %reg) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %info = getelementptr inbounds %struct.sja1105_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %regs3 = getelementptr inbounds %struct.sja1105_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %tmp, align 4, !annotation !29
  %mdio_100base_tx = getelementptr inbounds %struct.sja1105_regs, ptr %7, i32 0, i32 29
  %9 = ptrtoint ptr %mdio_100base_tx to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %mdio_100base_tx, align 8
  %conv = sext i32 %reg to i64
  %add = add i64 %10, %conv
  %call = call i32 @sja1105_xfer_u32(ptr noundef %3, i32 noundef 0, i64 noundef %add, ptr noundef nonnull %tmp, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tmp, align 4
  %and = and i32 %12, 65535
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_base_tx_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phy, i32 noundef %reg, i16 noundef zeroext %val) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %info = getelementptr inbounds %struct.sja1105_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %regs3 = getelementptr inbounds %struct.sja1105_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %conv = zext i16 %val to i32
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %tmp, align 4
  %mdio_100base_tx = getelementptr inbounds %struct.sja1105_regs, ptr %7, i32 0, i32 29
  %9 = ptrtoint ptr %mdio_100base_tx to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %mdio_100base_tx, align 8
  %conv4 = sext i32 %reg to i64
  %add = add i64 %10, %conv4
  %call = call i32 @sja1105_xfer_u32(ptr noundef %3, i32 noundef 1, i64 noundef %add, ptr noundef nonnull %tmp, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_base_t1_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phy, i32 noundef %reg) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp, align 4, !annotation !29
  %and = and i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.then

if.then:                                          ; preds = %entry
  %5 = lshr i32 %reg, 16
  %conv = and i32 %5, 31
  %info.i = getelementptr inbounds %struct.sja1105_private, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info.i, align 4
  %regs1.i = getelementptr inbounds %struct.sja1105_info, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs1.i, align 4
  %mdio_100base_t1.i = getelementptr inbounds %struct.sja1105_regs, ptr %9, i32 0, i32 30
  %10 = ptrtoint ptr %mdio_100base_t1.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %mdio_100base_t1.i, align 8
  %shl.i = shl i32 %phy, 7
  %conv.i = sext i32 %shl.i to i64
  %12 = zext i32 %conv to i64
  %or4.i = or i64 %12, %conv.i
  %or7.i = or i64 %or4.i, %11
  %and5 = and i32 %reg, 65535
  %13 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and5, ptr %tmp, align 4
  %call6 = call i32 @sja1105_xfer_u32(ptr noundef %3, i32 noundef 1, i64 noundef %or7.i, ptr noundef nonnull %tmp, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then.cleanup26_crit_edge, label %if.end

if.then.cleanup26_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup26

if.end:                                           ; preds = %if.then
  %14 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info.i, align 4
  %regs1.i50 = getelementptr inbounds %struct.sja1105_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %regs1.i50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs1.i50, align 4
  %mdio_100base_t1.i51 = getelementptr inbounds %struct.sja1105_regs, ptr %17, i32 0, i32 30
  %18 = ptrtoint ptr %mdio_100base_t1.i51 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %mdio_100base_t1.i51, align 8
  %or4.i54 = or i64 %or4.i, %19
  %or7.i55 = or i64 %or4.i54, 64
  %call11 = call i32 @sja1105_xfer_u32(ptr noundef %3, i32 noundef 0, i64 noundef %or7.i55, ptr noundef nonnull %tmp, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end.cleanup26_crit_edge, label %if.end15

if.end.cleanup26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup26

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tmp, align 4
  %and16 = and i32 %21, 65535
  br label %cleanup26

if.end17:                                         ; preds = %entry
  %and18 = and i32 %reg, 31
  %info.i56 = getelementptr inbounds %struct.sja1105_private, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %info.i56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %info.i56, align 4
  %regs1.i57 = getelementptr inbounds %struct.sja1105_info, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %regs1.i57 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs1.i57, align 4
  %mdio_100base_t1.i58 = getelementptr inbounds %struct.sja1105_regs, ptr %25, i32 0, i32 30
  %26 = ptrtoint ptr %mdio_100base_t1.i58 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %mdio_100base_t1.i58, align 8
  %shl.i59 = shl i32 %phy, 7
  %28 = zext i32 %and18 to i64
  %29 = or i32 %shl.i59, 32
  %or.i61 = sext i32 %29 to i64
  %or4.i62 = or i64 %or.i61, %28
  %or7.i63 = or i64 %or4.i62, %27
  %call20 = call i32 @sja1105_xfer_u32(ptr noundef %3, i32 noundef 0, i64 noundef %or7.i63, ptr noundef nonnull %tmp, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end17.cleanup26_crit_edge, label %if.end24

if.end17.cleanup26_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup26

if.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tmp, align 4
  %and25 = and i32 %31, 65535
  br label %cleanup26

cleanup26:                                        ; preds = %if.end24, %if.end17.cleanup26_crit_edge, %if.end15, %if.end.cleanup26_crit_edge, %if.then.cleanup26_crit_edge
  %retval.1 = phi i32 [ %and25, %if.end24 ], [ %and16, %if.end15 ], [ %call6, %if.then.cleanup26_crit_edge ], [ %call11, %if.end.cleanup26_crit_edge ], [ %call20, %if.end17.cleanup26_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_base_t1_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phy, i32 noundef %reg, i16 noundef zeroext %val) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %and = and i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end18, label %if.then

if.then:                                          ; preds = %entry
  %4 = lshr i32 %reg, 16
  %conv = and i32 %4, 31
  %info.i = getelementptr inbounds %struct.sja1105_private, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info.i, align 4
  %regs1.i = getelementptr inbounds %struct.sja1105_info, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs1.i, align 4
  %mdio_100base_t1.i = getelementptr inbounds %struct.sja1105_regs, ptr %8, i32 0, i32 30
  %9 = ptrtoint ptr %mdio_100base_t1.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %mdio_100base_t1.i, align 8
  %shl.i = shl i32 %phy, 7
  %conv.i = sext i32 %shl.i to i64
  %11 = zext i32 %conv to i64
  %or4.i = or i64 %11, %conv.i
  %or7.i = or i64 %or4.i, %10
  %and5 = and i32 %reg, 65535
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and5, ptr %tmp, align 4
  %call6 = call i32 @sja1105_xfer_u32(ptr noundef %3, i32 noundef 1, i64 noundef %or7.i, ptr noundef nonnull %tmp, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then.cleanup24_crit_edge, label %if.end

if.then.cleanup24_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup24

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info.i, align 4
  %regs1.i47 = getelementptr inbounds %struct.sja1105_info, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %regs1.i47 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs1.i47, align 4
  %mdio_100base_t1.i48 = getelementptr inbounds %struct.sja1105_regs, ptr %16, i32 0, i32 30
  %17 = ptrtoint ptr %mdio_100base_t1.i48 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %mdio_100base_t1.i48, align 8
  %or4.i51 = or i64 %or4.i, %18
  %or7.i52 = or i64 %or4.i51, 64
  %conv11 = zext i16 %val to i32
  %19 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv11, ptr %tmp, align 4
  %call13 = call i32 @sja1105_xfer_u32(ptr noundef %3, i32 noundef 1, i64 noundef %or7.i52, ptr noundef nonnull %tmp, ptr noundef null) #5
  %20 = call i32 @llvm.smin.i32(i32 %call13, i32 0)
  br label %cleanup24

if.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and19 = and i32 %reg, 31
  %info.i53 = getelementptr inbounds %struct.sja1105_private, ptr %3, i32 0, i32 8
  %21 = ptrtoint ptr %info.i53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info.i53, align 4
  %regs1.i54 = getelementptr inbounds %struct.sja1105_info, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %regs1.i54 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs1.i54, align 4
  %mdio_100base_t1.i55 = getelementptr inbounds %struct.sja1105_regs, ptr %24, i32 0, i32 30
  %25 = ptrtoint ptr %mdio_100base_t1.i55 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %mdio_100base_t1.i55, align 8
  %shl.i56 = shl i32 %phy, 7
  %27 = zext i32 %and19 to i64
  %28 = or i32 %shl.i56, 32
  %or.i58 = sext i32 %28 to i64
  %or4.i59 = or i64 %or.i58, %27
  %or7.i60 = or i64 %or4.i59, %26
  %conv21 = zext i16 %val to i32
  %29 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv21, ptr %tmp, align 4
  %call23 = call i32 @sja1105_xfer_u32(ptr noundef %3, i32 noundef 1, i64 noundef %or7.i60, ptr noundef nonnull %tmp, ptr noundef null) #5
  br label %cleanup24

cleanup24:                                        ; preds = %if.end18, %if.end, %if.then.cleanup24_crit_edge
  %retval.1 = phi i32 [ %call23, %if.end18 ], [ %call6, %if.then.cleanup24_crit_edge ], [ %20, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/sja1105/sja1105_mdio.c", i32 92, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/sja1105/sja1105_mdio.c", i32 501, i32 48}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/dsa/sja1105/sja1105_mdio.c", i32 402, i32 14}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/dsa/sja1105/sja1105_mdio.c", i32 403, i32 37}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/sja1105/sja1105_mdio.c", i32 287, i32 42}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/sja1105/sja1105_mdio.c", i32 300, i32 14}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/sja1105/sja1105_mdio.c", i32 301, i32 37}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/sja1105/sja1105_mdio.c", i32 341, i32 42}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/sja1105/sja1105_mdio.c", i32 354, i32 14}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/dsa/sja1105/sja1105_mdio.c", i32 355, i32 37}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
!30 = !{!"branch_weights", i32 1, i32 2000}
