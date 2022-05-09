; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c_pt.bc'
source_filename = "../drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sxgbe_plat_data = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sxgbe_mdio_bus_data = type { i32, ptr, i32 }
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
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.sxgbe_ops = type { ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, i32, i32 }
%struct.mii_regs = type { i32, i32 }
%struct.mac_link = type { i32, i32, i32 }
%struct.sxgbe_priv_data = type { [8 x ptr], [16 x ptr], i8, i32, i32, i32, i32, %struct.napi_struct, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, i32, i32, i32, ptr, [32 x i32], i8, i8, %struct.sxgbe_extra_stats, ptr, %struct.sxgbe_hw_features, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.timer_list, i8, i32, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.sxgbe_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sxgbe_hw_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: mii bus allocation failed\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.sxgbe_mdio_register = private unnamed_addr constant [20 x i8] c"sxgbe_mdio_register\00", align 1
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sxgbe\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%x\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mdiobus register failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"POLL\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MAC\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PHY ID %08x at %d IRQ %s (%s)%s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" active\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PHY not found\0A\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 153, i32 20 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 163, i32 19 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 166, i32 42 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 175, i32 20 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 204, i32 15 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 207, i32 15 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 210, i32 22 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 214, i32 22 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 216, i32 33 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 216, i32 45 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [51 x i8] c"../drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 222, i32 20 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sxgbe_mdio_register(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  %irq_num = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plat = getelementptr i8, ptr %ndev, i32 3184
  %0 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat, align 8
  %mdio_bus_data = getelementptr inbounds %struct.sxgbe_plat_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mdio_bus_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdio_bus_data, align 4
  %call.i = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sxgbe_mdio_register) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %irqs = getelementptr inbounds %struct.sxgbe_mdio_bus_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irqs, align 4
  %tobool2.not = icmp eq ptr %5, null
  %mii_irq = getelementptr i8, ptr %ndev, i32 2736
  %irqlist.0 = select i1 %tobool2.not, ptr %mii_irq, ptr %5
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.1, ptr %name, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sxgbe_mdio_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sxgbe_mdio_write, ptr %write, align 8
  %id = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %plat, align 8
  %bus_id = getelementptr inbounds %struct.sxgbe_plat_data, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %bus_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bus_id, align 4
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %12)
  %priv10 = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %priv10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ndev, ptr %priv10, align 8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  %phy_mask11 = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 13
  %16 = ptrtoint ptr %phy_mask11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %phy_mask11, align 8
  %device = getelementptr i8, ptr %ndev, i32 2656
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 8
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 9
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %parent, align 4
  %call12 = tail call i32 @__mdiobus_register(ptr noundef nonnull %call.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp.not = icmp eq i32 %call12, 0
  br i1 %cmp.not, label %for.cond.preheader, label %if.then13

for.cond.preheader:                               ; preds = %if.end
  %probed_phy_irq = getelementptr inbounds %struct.sxgbe_mdio_bus_data, ptr %3, i32 0, i32 2
  br label %for.body.outer

for.body.outer:                                   ; preds = %if.end44.thread.for.body.outer_crit_edge, %for.cond.preheader
  %phy_found.0.off0104.ph = phi i1 [ true, %if.end44.thread.for.body.outer_crit_edge ], [ false, %for.cond.preheader ]
  %phy_addr.0100.ph = phi i32 [ %inc106, %if.end44.thread.for.body.outer_crit_edge ], [ 0, %for.cond.preheader ]
  br label %for.body

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.3) #9
  br label %mdiobus_err

for.body:                                         ; preds = %if.end44.for.body_crit_edge, %for.body.outer
  %phy_addr.0100 = phi i32 [ %inc, %if.end44.for.body_crit_edge ], [ %phy_addr.0100.ph, %for.body.outer ]
  %call16 = call ptr @mdiobus_get_phy(ptr noundef nonnull %call.i, i32 noundef %phy_addr.0100) #6
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end44, label %if.then18

if.then18:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_num) #6
  %20 = ptrtoint ptr %irq_num to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %irq_num, align 4
  %21 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irqs, align 4
  %cmp20 = icmp eq ptr %22, null
  br i1 %cmp20, label %land.lhs.true, label %if.then18.if.end25_crit_edge

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

land.lhs.true:                                    ; preds = %if.then18
  %23 = ptrtoint ptr %probed_phy_irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %probed_phy_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp21 = icmp sgt i32 %24, 0
  br i1 %cmp21, label %if.then22, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i32, ptr %irqlist.0, i32 %phy_addr.0100
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx, align 4
  %26 = ptrtoint ptr %probed_phy_irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %probed_phy_irq, align 4
  %irq = getelementptr inbounds %struct.phy_device, ptr %call16, i32 0, i32 25
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %irq, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %land.lhs.true.if.end25_crit_edge, %if.then18.if.end25_crit_edge
  %29 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %plat, align 8
  %phy_addr27 = getelementptr inbounds %struct.sxgbe_plat_data, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %phy_addr27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phy_addr27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp28 = icmp eq i32 %32, -1
  br i1 %cmp28, label %if.then29, label %if.end25.if.end32_crit_edge

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %phy_addr27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %phy_addr.0100, ptr %phy_addr27, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end25.if.end32_crit_edge
  %34 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %plat, align 8
  %phy_addr34 = getelementptr inbounds %struct.sxgbe_plat_data, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %phy_addr34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phy_addr34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %phy_addr.0100)
  %cmp35 = icmp eq i32 %37, %phy_addr.0100
  %irq36 = getelementptr inbounds %struct.phy_device, ptr %call16, i32 0, i32 25
  %38 = ptrtoint ptr %irq36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq36, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %39, label %sw.default [
    i32 -1, label %if.end32.sw.epilog_crit_edge
    i32 -2, label %sw.bb37
  ]

if.end32.sw.epilog_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %call40 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %irq_num, ptr noundef nonnull @.str.6, i32 noundef %39)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb37, %if.end32.sw.epilog_crit_edge
  %irq_str.0 = phi ptr [ %irq_num, %sw.default ], [ @.str.5, %sw.bb37 ], [ @.str.4, %if.end32.sw.epilog_crit_edge ]
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %call16, i32 0, i32 2
  %41 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %phy_id, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %call16, i32 0, i32 3
  %43 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.epilog.if.end44.thread_crit_edge

sw.epilog.if.end44.thread_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.thread

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call16, align 4
  br label %if.end44.thread

if.end44:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %phy_addr.0100, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %if.end44.for.body_crit_edge

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end44.thread:                                  ; preds = %if.end.i.i, %sw.epilog.if.end44.thread_crit_edge
  %retval.0.i.i = phi ptr [ %46, %if.end.i.i ], [ %44, %sw.epilog.if.end44.thread_crit_edge ]
  %cond = select i1 %cmp35, ptr @.str.8, ptr @.str.9
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.7, i32 noundef %42, i32 noundef %phy_addr.0100, ptr noundef nonnull %irq_str.0, ptr noundef %retval.0.i.i, ptr noundef nonnull %cond) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_num) #6
  %inc106 = add nuw nsw i32 %phy_addr.0100, 1
  %exitcond.not107 = icmp eq i32 %inc106, 32
  br i1 %exitcond.not107, label %if.end44.thread.if.end47_crit_edge, label %if.end44.thread.for.body.outer_crit_edge

if.end44.thread.for.body.outer_crit_edge:         ; preds = %if.end44.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.outer

if.end44.thread.if.end47_crit_edge:               ; preds = %if.end44.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

for.end:                                          ; preds = %if.end44
  br i1 %phy_found.0.off0104.ph, label %for.end.if.end47_crit_edge, label %if.then46

for.end.if.end47_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then46:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.10) #9
  call void @mdiobus_unregister(ptr noundef nonnull %call.i) #6
  br label %mdiobus_err

if.end47:                                         ; preds = %for.end.if.end47_crit_edge, %if.end44.thread.if.end47_crit_edge
  %mii = getelementptr i8, ptr %ndev, i32 2732
  %47 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %mii, align 4
  br label %cleanup

mdiobus_err:                                      ; preds = %if.then46, %if.then13
  %err.0 = phi i32 [ %call12, %if.then13 ], [ -19, %if.then46 ]
  call void @mdiobus_free(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %mdiobus_err, %if.end47, %if.then
  %retval.0 = phi i32 [ %err.0, %mdiobus_err ], [ 0, %if.end47 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phyaddr, i32 noundef %phyreg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call fastcc i32 @sxgbe_mdio_access(ptr noundef %add.ptr.i, i32 noundef 3, i32 noundef %phyaddr, i32 noundef %phyreg, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr = getelementptr i8, ptr %1, i32 2648
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 8
  %hw = getelementptr i8, ptr %1, i32 2660
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %data = getelementptr inbounds %struct.sxgbe_ops, ptr %5, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %9 = and i32 %8, -65536
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phyaddr, i32 noundef %phyreg, i16 noundef zeroext %phydata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call fastcc i32 @sxgbe_mdio_access(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef %phyaddr, i32 noundef %phyreg, i16 noundef zeroext %phydata)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sxgbe_mdio_unregister(ptr nocapture noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %ndev, i32 2732
  %0 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mii, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mdiobus_unregister(ptr noundef nonnull %1) #6
  %2 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mii, align 4
  %priv3 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priv3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %priv3, align 8
  %5 = load ptr, ptr %mii, align 4
  tail call void @mdiobus_free(ptr noundef %5) #6
  %6 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %mii, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sxgbe_mdio_access(ptr nocapture noundef readonly %sp, i32 noundef %cmd, i32 noundef %phyaddr, i32 noundef %phyreg, i16 noundef zeroext %phydata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.sxgbe_priv_data, ptr %sp, i32 0, i32 11
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %ioaddr = getelementptr inbounds %struct.sxgbe_priv_data, ptr %sp, i32 0, i32 8
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 8
  %data = getelementptr inbounds %struct.sxgbe_ops, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %6, 300
  %add.ptr.i = getelementptr i8, ptr %3, i32 %5
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub9.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub9.i)
  %cmp10.i = icmp sgt i32 %sub9.i, -1
  br i1 %cmp10.i, label %entry.while.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  %9 = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %10
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %do.end.i.while.body.i_crit_edge, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end:                                           ; preds = %while.body.i
  %and = and i32 %phyreg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = shl i32 %phyreg, 5
  %shl.i = and i32 %11, 65011712
  %shl1.i = shl i32 %phyaddr, 16
  %and2.i = and i32 %phyreg, 65535
  %or.i = or i32 %and2.i, %shl1.i
  %or3.i = or i32 %shl.i, %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #6
  %13 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr, align 8
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %mii.i = getelementptr inbounds %struct.sxgbe_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mii.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %14, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %12) #6, !srcloc !39
  %conv.i.i = zext i16 %phydata to i32
  %shl.i.i = shl i32 %cmd, 16
  %clk_csr.i.i = getelementptr inbounds %struct.sxgbe_priv_data, ptr %sp, i32 0, i32 28
  %19 = ptrtoint ptr %clk_csr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clk_csr.i.i, align 8
  %and.i.i = shl i32 %20, 19
  %shl1.i.i = and i32 %and.i.i, 3670016
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %or3.i.i = or i32 %or.i.i, %shl1.i.i
  %or4.i.i = or i32 %or3.i.i, 4456448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #6
  %22 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr, align 8
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %data.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %25, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %21) #6, !srcloc !39
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %phyaddr)
  %cmp3 = icmp sgt i32 %phyaddr, 3
  br i1 %cmp3, label %if.else.cleanup_crit_edge, label %if.end5

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %shl.i24 = shl nuw nsw i32 1, %phyaddr
  %28 = tail call i32 @llvm.bswap.i32(i32 %shl.i24) #6
  %29 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr, align 8
  %add.ptr.i26 = getelementptr i8, ptr %30, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %28) #6, !srcloc !39
  %shl1.i27 = shl i32 %phyaddr, 16
  %and.i = and i32 %phyreg, 31
  %or.i28 = or i32 %and.i, %shl1.i27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i28) #6
  %32 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioaddr, align 8
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %mii.i30 = getelementptr inbounds %struct.sxgbe_ops, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %mii.i30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mii.i30, align 4
  %add.ptr6.i = getelementptr i8, ptr %33, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %31) #6, !srcloc !39
  %conv.i.i31 = zext i16 %phydata to i32
  %shl.i.i32 = shl i32 %cmd, 16
  %clk_csr.i.i33 = getelementptr inbounds %struct.sxgbe_priv_data, ptr %sp, i32 0, i32 28
  %38 = ptrtoint ptr %clk_csr.i.i33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %clk_csr.i.i33, align 8
  %and.i.i34 = shl i32 %39, 19
  %shl1.i.i35 = and i32 %and.i.i34, 3670016
  %or.i.i36 = or i32 %shl.i.i32, %conv.i.i31
  %or3.i.i37 = or i32 %or.i.i36, %shl1.i.i35
  %or4.i.i38 = or i32 %or3.i.i37, 4456448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i38) #6
  %41 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioaddr, align 8
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 4
  %data.i.i39 = getelementptr inbounds %struct.sxgbe_ops, ptr %44, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %data.i.i39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data.i.i39, align 4
  %add.ptr.i.i40 = getelementptr i8, ptr %42, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i40, i32 %40) #6, !srcloc !39
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.then2
  %47 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioaddr, align 8
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %add.i41 = add i32 %51, 300
  %add.ptr.i42 = getelementptr i8, ptr %48, i32 %50
  %52 = load volatile i32, ptr @jiffies, align 128
  %sub9.i43 = sub i32 %add.i41, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub9.i43)
  %cmp10.i44 = icmp sgt i32 %sub9.i43, -1
  br i1 %cmp10.i44, label %if.end6.while.body.i46_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.while.body.i46_crit_edge:                 ; preds = %if.end6
  br label %while.body.i46

while.body.i46:                                   ; preds = %do.end.i49.while.body.i46_crit_edge, %if.end6.while.body.i46_crit_edge
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  %54 = and i32 %53, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i45 = icmp eq i32 %54, 0
  br i1 %tobool.not.i45, label %while.body.i46.cleanup_crit_edge, label %do.end.i49

while.body.i46.cleanup_crit_edge:                 ; preds = %while.body.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i49:                                       ; preds = %while.body.i46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %sub.i47 = sub i32 %add.i41, %55
  %cmp.i48 = icmp sgt i32 %sub.i47, -1
  br i1 %cmp.i48, label %do.end.i49.while.body.i46_crit_edge, label %do.end.i49.cleanup_crit_edge

do.end.i49.cleanup_crit_edge:                     ; preds = %do.end.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i49.while.body.i46_crit_edge:              ; preds = %do.end.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i46

cleanup:                                          ; preds = %do.end.i49.cleanup_crit_edge, %while.body.i46.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.else.cleanup_crit_edge ], [ -16, %if.end6.cleanup_crit_edge ], [ -16, %entry.cleanup_crit_edge ], [ 0, %while.body.i46.cleanup_crit_edge ], [ -16, %do.end.i49.cleanup_crit_edge ], [ -16, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c", i32 153, i32 20}
!2 = !{ptr @__func__.sxgbe_mdio_register, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c", i32 153, i32 55}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c", i32 163, i32 19}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c", i32 166, i32 42}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c", i32 175, i32 20}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c", i32 204, i32 15}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c", i32 207, i32 15}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c", i32 210, i32 22}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c", i32 214, i32 22}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c", i32 216, i32 33}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c", i32 216, i32 45}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c", i32 222, i32 20}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 689840}
!34 = !{i64 2156419288}
!35 = !{i64 2156416736}
!36 = !{i64 2156417022}
!37 = !{i64 2156416864}
!38 = !{i64 2156417686}
!39 = !{i64 689422}
!40 = !{i64 2156417273}
!41 = !{i64 2156418105}
!42 = !{i64 2156418535}
