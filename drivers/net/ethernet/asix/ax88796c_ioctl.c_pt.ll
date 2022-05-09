; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/asix/ax88796c_ioctl.c_pt.bc'
source_filename = "../drivers/net/ethernet/asix/ax88796c_ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ax88796c_device = type { ptr, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.sk_buff_head, %struct.axspi_data, ptr, ptr, i32, i16, [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.axspi_data = type { ptr, %struct.spi_message, [2 x %struct.spi_transfer], [6 x i8], [6 x i8], i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@ax88796c_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ax88796c_get_drvinfo, ptr @ax88796c_get_regs_len, ptr @ax88796c_get_regs, ptr null, ptr null, ptr @ax88796c_get_msglevel, ptr @ax88796c_set_msglevel, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ax88796c_get_pauseparam, ptr @ax88796c_set_pauseparam, ptr null, ptr @ax88796c_get_strings, ptr null, ptr null, ptr null, ptr null, ptr @ax88796c_get_priv_flags, ptr @ax88796c_set_priv_flags, ptr @ax88796c_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ax88796c_no_regs_mask = external dso_local global [0 x i32], align 4
@ax88796c_priv_flag_names = internal constant { [1 x [32 x i8]], [32 x i8] } { [1 x [32 x i8]] [[32 x i8] c"SPICompression\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ax88796c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [21 x i8] c"ax88796c_ethtool_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 214, i32 26 }
@___asan_gen_.5 = private unnamed_addr constant [25 x i8] c"ax88796c_priv_flag_names\00", align 1
@___asan_gen_.6 = private constant [46 x i8] c"../drivers/net/ethernet/asix/ax88796c_ioctl.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 19, i32 19 }
@___asan_gen_.8 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @ax88796c_ethtool_ops, ptr @ax88796c_priv_flag_names, ptr @str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_priv_flag_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax88796c_mdio_read(ptr nocapture noundef readonly %mdiobus, i32 noundef %phy_id, i32 noundef %loc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %mdiobus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %spi_lock = getelementptr inbounds %struct.ax88796c_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %spi_lock, i32 noundef 0) #8
  %ax_spi = getelementptr inbounds %struct.ax88796c_device, ptr %1, i32 0, i32 6
  %and = and i32 %loc, 31
  %and1 = shl i32 %phy_id, 8
  %shl = and i32 %and1, 7936
  %or = or i32 %and, %shl
  %2 = trunc i32 %or to i16
  %conv = or i16 %2, 16384
  %call.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi, i8 noundef zeroext 74, i16 noundef zeroext %conv) #8
  %call3 = tail call i32 @jiffies_to_usecs(i32 noundef 1) #8
  %conv4 = zext i32 %call3 to i64
  %call5 = tail call i64 @ktime_get() #8
  %mul.i = mul nuw nsw i64 %conv4, 1000
  %add.i = add i64 %mul.i, %call5
  %call.i5460 = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 74) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i5460)
  %cmp17.not61 = icmp eq i16 %call.i5460, 0
  br i1 %cmp17.not61, label %if.end20.lr.ph, label %entry.if.then36_crit_edge

entry.if.then36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

if.end20.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br label %if.end20

if.end20:                                         ; preds = %if.end32.if.end20_crit_edge, %if.end20.lr.ph
  br i1 %tobool.not, label %if.end20.if.end32_crit_edge, label %land.lhs.true

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end20
  %call21 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call21, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call21, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true.if.end32_crit_edge, %if.end20.if.end32_crit_edge
  %call.i54 = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 74) #8
  %cmp17.not = icmp eq i16 %call.i54, 0
  br i1 %cmp17.not, label %if.end32.if.end20_crit_edge, label %if.end32.if.then36_crit_edge

if.end32.if.then36_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

if.end32.if.end20_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

for.end:                                          ; preds = %land.lhs.true
  %call.i55 = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 74) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i55)
  %cmp33.not = icmp eq i16 %call.i55, 0
  br i1 %cmp33.not, label %for.end.if.end40_crit_edge, label %for.end.if.then36_crit_edge

for.end.if.then36_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then36:                                        ; preds = %for.end.if.then36_crit_edge, %if.end32.if.then36_crit_edge, %entry.if.then36_crit_edge
  %call.i56 = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 72) #8
  %conv39 = zext i16 %call.i56 to i32
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %for.end.if.end40_crit_edge
  %ret.1 = phi i32 [ -110, %for.end.if.end40_crit_edge ], [ %conv39, %if.then36 ]
  tail call void @mutex_unlock(ptr noundef %spi_lock) #8
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax88796c_mdio_write(ptr nocapture noundef readonly %mdiobus, i32 noundef %phy_id, i32 noundef %loc, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %mdiobus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %spi_lock = getelementptr inbounds %struct.ax88796c_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %spi_lock, i32 noundef 0) #8
  %ax_spi = getelementptr inbounds %struct.ax88796c_device, ptr %1, i32 0, i32 6
  %call.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi, i8 noundef zeroext 72, i16 noundef zeroext %val) #8
  %and = and i32 %loc, 31
  %and2 = shl i32 %phy_id, 8
  %shl = and i32 %and2, 7936
  %or = or i32 %and, %shl
  %2 = trunc i32 %or to i16
  %conv = or i16 %2, -32768
  %call.i51 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi, i8 noundef zeroext 74, i16 noundef zeroext %conv) #8
  %call5 = tail call i32 @jiffies_to_usecs(i32 noundef 1) #8
  %conv6 = zext i32 %call5 to i64
  %call7 = tail call i64 @ktime_get() #8
  %mul.i = mul nuw nsw i64 %conv6, 1000
  %add.i = add i64 %mul.i, %call7
  %call.i5255 = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 74) #8
  %3 = and i16 %call.i5255, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp20.not58 = icmp eq i16 %3, 0
  br i1 %cmp20.not58, label %if.end23.lr.ph, label %entry.for.end.thread_crit_edge

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

if.end23.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br label %if.end23

if.end23:                                         ; preds = %if.end35.if.end23_crit_edge, %if.end23.lr.ph
  br i1 %tobool.not, label %if.end23.if.end35_crit_edge, label %land.lhs.true

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end23
  %call24 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call24, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call24, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %if.end23.if.end35_crit_edge
  %call.i52 = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 74) #8
  %4 = and i16 %call.i52, 8192
  %cmp20.not = icmp eq i16 %4, 0
  br i1 %cmp20.not, label %if.end35.if.end23_crit_edge, label %if.end35.for.end.thread_crit_edge

if.end35.for.end.thread_crit_edge:                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

if.end35.if.end23_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

for.end:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call.i53 = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 74) #8
  %5 = and i16 %call.i53, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp37.not = icmp eq i16 %5, 0
  %spec.select = select i1 %cmp37.not, i32 -110, i32 0
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %if.end35.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %6 = phi i32 [ 0, %entry.for.end.thread_crit_edge ], [ %spec.select, %for.end ], [ 0, %if.end35.for.end.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %spi_lock) #8
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ax88796c_get_drvinfo(ptr nocapture noundef readnone %ndev, ptr nocapture noundef writeonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %driver, ptr @str, i32 32)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ax88796c_get_regs_len(ptr nocapture noundef readnone %ndev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 270
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax88796c_get_regs(ptr noundef %ndev, ptr nocapture noundef readnone %regs, ptr nocapture noundef writeonly %_p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %_p, i32 0, i32 270)
  %spi_lock = getelementptr i8, ptr %ndev, i32 2360
  tail call void @mutex_lock_nested(ptr noundef %spi_lock, i32 noundef 0) #8
  %ax_spi = getelementptr i8, ptr %ndev, i32 2508
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %p.030 = phi ptr [ %_p, %entry ], [ %incdec.ptr, %if.end.for.body_crit_edge ]
  %offset.029 = phi i32 [ 0, %entry ], [ %add, %if.end.for.body_crit_edge ]
  %div28 = lshr exact i32 %offset.029, 1
  %div3.i = lshr i32 %offset.029, 6
  %arrayidx.i = getelementptr i32, ptr @ax88796c_no_regs_mask, i32 %div3.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %div28, 31
  %3 = shl nuw i32 1, %and.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %offset.029 to i8
  %call.i = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext %conv) #8
  %5 = ptrtoint ptr %p.030 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %call.i, ptr %p.030, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %incdec.ptr = getelementptr i16, ptr %p.030, i32 1
  %add = add nuw nsw i32 %offset.029, 2
  %cmp = icmp ult i32 %offset.029, 254
  br i1 %cmp, label %if.end.for.body_crit_edge, label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %spi_lock) #8
  %phydev = getelementptr i8, ptr %ndev, i32 2780
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 4
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i27 = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 0) #8
  %conv10 = trunc i32 %call.i27 to i16
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv10, ptr %incdec.ptr, align 2
  %incdec.ptr11 = getelementptr i16, ptr %p.030, i32 2
  %13 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phydev, align 4
  %bus.i.1 = getelementptr inbounds %struct.mdio_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %bus.i.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i.1, align 8
  %addr.i.1 = getelementptr inbounds %struct.mdio_device, ptr %14, i32 0, i32 6
  %17 = ptrtoint ptr %addr.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i.1, align 8
  %call.i27.1 = tail call i32 @mdiobus_read(ptr noundef %16, i32 noundef %18, i32 noundef 1) #8
  %conv10.1 = trunc i32 %call.i27.1 to i16
  %19 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv10.1, ptr %incdec.ptr11, align 2
  %incdec.ptr11.1 = getelementptr i16, ptr %p.030, i32 3
  %20 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phydev, align 4
  %bus.i.2 = getelementptr inbounds %struct.mdio_device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %bus.i.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i.2, align 8
  %addr.i.2 = getelementptr inbounds %struct.mdio_device, ptr %21, i32 0, i32 6
  %24 = ptrtoint ptr %addr.i.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i.2, align 8
  %call.i27.2 = tail call i32 @mdiobus_read(ptr noundef %23, i32 noundef %25, i32 noundef 2) #8
  %conv10.2 = trunc i32 %call.i27.2 to i16
  %26 = ptrtoint ptr %incdec.ptr11.1 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv10.2, ptr %incdec.ptr11.1, align 2
  %incdec.ptr11.2 = getelementptr i16, ptr %p.030, i32 4
  %27 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phydev, align 4
  %bus.i.3 = getelementptr inbounds %struct.mdio_device, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %bus.i.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus.i.3, align 8
  %addr.i.3 = getelementptr inbounds %struct.mdio_device, ptr %28, i32 0, i32 6
  %31 = ptrtoint ptr %addr.i.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr.i.3, align 8
  %call.i27.3 = tail call i32 @mdiobus_read(ptr noundef %30, i32 noundef %32, i32 noundef 3) #8
  %conv10.3 = trunc i32 %call.i27.3 to i16
  %33 = ptrtoint ptr %incdec.ptr11.2 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv10.3, ptr %incdec.ptr11.2, align 2
  %incdec.ptr11.3 = getelementptr i16, ptr %p.030, i32 5
  %34 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phydev, align 4
  %bus.i.4 = getelementptr inbounds %struct.mdio_device, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %bus.i.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i.4, align 8
  %addr.i.4 = getelementptr inbounds %struct.mdio_device, ptr %35, i32 0, i32 6
  %38 = ptrtoint ptr %addr.i.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i.4, align 8
  %call.i27.4 = tail call i32 @mdiobus_read(ptr noundef %37, i32 noundef %39, i32 noundef 4) #8
  %conv10.4 = trunc i32 %call.i27.4 to i16
  %40 = ptrtoint ptr %incdec.ptr11.3 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv10.4, ptr %incdec.ptr11.3, align 2
  %incdec.ptr11.4 = getelementptr i16, ptr %p.030, i32 6
  %41 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phydev, align 4
  %bus.i.5 = getelementptr inbounds %struct.mdio_device, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %bus.i.5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i.5, align 8
  %addr.i.5 = getelementptr inbounds %struct.mdio_device, ptr %42, i32 0, i32 6
  %45 = ptrtoint ptr %addr.i.5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr.i.5, align 8
  %call.i27.5 = tail call i32 @mdiobus_read(ptr noundef %44, i32 noundef %46, i32 noundef 5) #8
  %conv10.5 = trunc i32 %call.i27.5 to i16
  %47 = ptrtoint ptr %incdec.ptr11.4 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv10.5, ptr %incdec.ptr11.4, align 2
  %incdec.ptr11.5 = getelementptr i16, ptr %p.030, i32 7
  %48 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %phydev, align 4
  %bus.i.6 = getelementptr inbounds %struct.mdio_device, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %bus.i.6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus.i.6, align 8
  %addr.i.6 = getelementptr inbounds %struct.mdio_device, ptr %49, i32 0, i32 6
  %52 = ptrtoint ptr %addr.i.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %addr.i.6, align 8
  %call.i27.6 = tail call i32 @mdiobus_read(ptr noundef %51, i32 noundef %53, i32 noundef 6) #8
  %conv10.6 = trunc i32 %call.i27.6 to i16
  %54 = ptrtoint ptr %incdec.ptr11.5 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv10.6, ptr %incdec.ptr11.5, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ax88796c_get_msglevel(ptr nocapture noundef readonly %ndev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2784
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ax88796c_set_msglevel(ptr nocapture noundef writeonly %ndev, i32 noundef %level) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2784
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %level, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ax88796c_get_pauseparam(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %pause) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flowctrl = getelementptr i8, ptr %ndev, i32 2820
  %0 = ptrtoint ptr %flowctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flowctrl, align 4
  %and = lshr i32 %1, 1
  %and.lobit = and i32 %and, 1
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %2 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and.lobit, ptr %tx_pause, align 4
  %3 = load i32, ptr %flowctrl, align 4
  %and3 = and i32 %3, 1
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %4 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and3, ptr %rx_pause, align 4
  %5 = load i32, ptr %flowctrl, align 4
  %and10 = lshr i32 %5, 2
  %and10.lobit = and i32 %and10, 1
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %6 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and10.lobit, ptr %autoneg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88796c_set_pauseparam(ptr noundef %ndev, ptr nocapture noundef readonly %pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %0 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool.not, i32 0, i32 2
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %2 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp ne i32 %3, 0
  %cond2 = zext i1 %tobool1.not to i32
  %or = or i32 %cond, %cond2
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  %cond4 = select i1 %tobool3.not, i32 0, i32 4
  %or5 = or i32 %or, %cond4
  %flowctrl = getelementptr i8, ptr %ndev, i32 2820
  %6 = ptrtoint ptr %flowctrl to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or5, ptr %flowctrl, align 4
  %7 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  %phydev12 = getelementptr i8, ptr %ndev, i32 2780
  %9 = ptrtoint ptr %phydev12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phydev12, align 4
  br i1 %tobool7.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9 = icmp ne i32 %12, 0
  %13 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11 = icmp ne i32 %14, 0
  tail call void @phy_set_asym_pause(ptr noundef %10, i1 noundef zeroext %tobool9, i1 noundef zeroext %tobool11) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @phy_set_asym_pause(ptr noundef %10, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %15 = ptrtoint ptr %flowctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flowctrl, align 4
  %spi_lock = getelementptr i8, ptr %ndev, i32 2360
  tail call void @mutex_lock_nested(ptr noundef %spi_lock, i32 noundef 0) #8
  %ax_spi = getelementptr i8, ptr %ndev, i32 2508
  %call.i = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 14) #8
  %17 = and i16 %call.i, -25
  %.tr = trunc i32 %16 to i16
  %18 = shl i16 %.tr, 3
  %19 = and i16 %18, 24
  %conv26 = or i16 %17, %19
  %call.i47 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi, i8 noundef zeroext 14, i16 noundef zeroext %conv26) #8
  tail call void @mutex_unlock(ptr noundef %spi_lock) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ax88796c_get_strings(ptr nocapture noundef readnone %ndev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stringset)
  %cond = icmp eq i32 %stringset, 2
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = call ptr @memcpy(ptr %data, ptr @ax88796c_priv_flag_names, i32 32)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ax88796c_get_priv_flags(ptr nocapture noundef readonly %ndev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags = getelementptr i8, ptr %ndev, i32 2824
  %0 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv_flags, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ax88796c_set_priv_flags(ptr noundef %ndev, i32 noundef %flags) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv_flags = getelementptr i8, ptr %ndev, i32 2824
  %0 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv_flags, align 4
  %xor = xor i32 %1, %flags
  %and1 = and i32 %xor, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then3.if.end7_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %if.then3.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %4 = ptrtoint ptr %priv_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flags, ptr %priv_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -95, %entry.cleanup_crit_edge ], [ -16, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ax88796c_get_sset_count(ptr nocapture noundef readnone %ndev, i32 noundef %stringset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stringset)
  %cond = icmp eq i32 %stringset, 2
  %. = select i1 %cond, i32 1, i32 -95
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax88796c_ioctl(ptr nocapture noundef readonly %ndev, ptr noundef %ifr, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %call = tail call i32 @phy_mii_ioctl(ptr noundef %1, ptr noundef %ifr, i32 noundef %cmd) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @axspi_write_reg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @axspi_read_reg(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_set_asym_pause(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/asix/ax88796c_ioctl.c", i32 180, i32 8}
!2 = !{ptr @ax88796c_ethtool_ops, !3, !"ax88796c_ethtool_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/asix/ax88796c_ioctl.c", i32 214, i32 26}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/asix/ax88796c_ioctl.c", i32 27, i32 24}
!6 = !{ptr @ax88796c_priv_flag_names, !7, !"ax88796c_priv_flag_names", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/asix/ax88796c_ioctl.c", i32 19, i32 19}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
