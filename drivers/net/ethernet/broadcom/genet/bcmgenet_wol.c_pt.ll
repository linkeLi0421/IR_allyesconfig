; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/genet/bcmgenet_wol.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/genet/bcmgenet_wol.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
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
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.bcmgenet_priv = type { ptr, i32, ptr, ptr, ptr, i32, [17 x %struct.bcmgenet_tx_ring], ptr, ptr, i32, i32, [16 x %struct.bcmgenet_rxnfc_rule], %struct.list_head, [17 x %struct.bcmgenet_rx_ring], ptr, i8, %struct.wait_queue_head, i8, ptr, ptr, ptr, i16, ptr, i8, i32, i32, i32, i8, %struct.work_struct, i32, i32, i32, i8, %struct.spinlock, i32, i8, i32, i32, ptr, ptr, ptr, ptr, i32, [6 x i8], i8, %struct.bcmgenet_mib_counters, %struct.ethtool_eee }
%struct.bcmgenet_tx_ring = type { %struct.spinlock, %struct.napi_struct, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.bcmgenet_rxnfc_rule = type { %struct.list_head, %struct.ethtool_rx_flow_spec, i32 }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.bcmgenet_rx_ring = type { %struct.napi_struct, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.bcmgenet_net_dim, i32, i32, ptr, ptr, ptr }
%struct.bcmgenet_net_dim = type { i16, i16, i32, i32, %struct.dim }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.bcmgenet_mib_counters = type { %struct.bcmgenet_rx_counters, %struct.bcmgenet_tx_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_rx_counters = type { %struct.bcmgenet_pkt_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_pkt_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_tx_counters = type { %struct.bcmgenet_pkt_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.bcmgenet_hw_params = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unsupported mode: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcmgenet_wol_power_down_cfg.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"genet\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bcmgenet_wol_power_down_cfg\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/broadcom/genet/bcmgenet_wol.c\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MPD WOL-ready status set after %d msec\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid mode: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"polling wol mode timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 131, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 174, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 211, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [54 x i8] c"../drivers/net/ethernet/broadcom/genet/bcmgenet_wol.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 105, i32 21 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bcmgenet_get_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %wol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 18716
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  %supported3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  br i1 %tobool.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %supported3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %supported3, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wolopts, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %supported3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 224, ptr %supported3, align 4
  %wolopts4 = getelementptr i8, ptr %dev, i32 18728
  %6 = ptrtoint ptr %wolopts4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wolopts4, align 8
  %wolopts5 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %8 = ptrtoint ptr %wolopts5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %wolopts5, align 4
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %9 = call ptr @memset(ptr %sopass, i32 0, i32 6)
  %and = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sopass10 = getelementptr i8, ptr %dev, i32 18732
  %10 = call ptr @memcpy(ptr %sopass, ptr %sopass10, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcmgenet_set_wol(ptr nocapture noundef %dev, ptr nocapture noundef readonly %wol) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 18716
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wolopts, align 4
  %and = and i32 %4, -225
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and6 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.if.end11_crit_edge, label %if.then8

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %sopass = getelementptr i8, ptr %dev, i32 18732
  %sopass9 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %sopass, ptr %sopass9, i32 6)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end4.if.end11_crit_edge
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13.not = icmp eq i32 %7, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  %call15 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev1, i1 noundef zeroext true) #5
  %wol_irq_disabled = getelementptr i8, ptr %dev, i32 18648
  %8 = ptrtoint ptr %wol_irq_disabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wol_irq_disabled, align 8, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool16.not = icmp eq i8 %9, 0
  br i1 %tobool16.not, label %if.then14.if.end19_crit_edge, label %if.then17

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %wol_irq = getelementptr i8, ptr %dev, i32 18644
  %10 = ptrtoint ptr %wol_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wol_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %11, i32 noundef 1) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then14.if.end19_crit_edge
  %12 = ptrtoint ptr %wol_irq_disabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %wol_irq_disabled, align 8
  br label %if.end29

if.else:                                          ; preds = %if.end11
  %call21 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev1, i1 noundef zeroext false) #5
  %wol_irq_disabled22 = getelementptr i8, ptr %dev, i32 18648
  %13 = ptrtoint ptr %wol_irq_disabled22 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %wol_irq_disabled22, align 8, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool23.not = icmp eq i8 %14, 0
  br i1 %tobool23.not, label %if.then24, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %wol_irq25 = getelementptr i8, ptr %dev, i32 18644
  %15 = ptrtoint ptr %wol_irq25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wol_irq25, align 4
  %call.i47 = tail call i32 @irq_set_irq_wake(i32 noundef %16, i32 noundef 0) #5
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.else.if.end27_crit_edge
  %17 = ptrtoint ptr %wol_irq_disabled22 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %wol_irq_disabled22, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end19
  %18 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wolopts, align 4
  %wolopts31 = getelementptr i8, ptr %dev, i32 18728
  %20 = ptrtoint ptr %wolopts31 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %wolopts31, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -524, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcmgenet_wol_power_down_cfg(ptr noundef %priv, i32 noundef %mode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.not = icmp eq i32 %mode, 2
  br i1 %cmp.not, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 37
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %mode) #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %add.ptr1.i = getelementptr i8, ptr %5, i32 2056
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #5, !srcloc !22
  %7 = and i32 %6, -35651585
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %add.ptr1.i137 = getelementptr i8, ptr %9, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i137, i32 %7) #5, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #5
  %wolopts = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 42
  %20 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wolopts, align 8
  %and11 = and i32 %21, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end3.if.end21_crit_edge, label %if.then13

if.end3.if.end21_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then13:                                        ; preds = %if.end3
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 8
  %add.ptr1.i139 = getelementptr i8, ptr %23, i32 3616
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i139) #5, !srcloc !22
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  %or = or i32 %25, 1
  %26 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wolopts, align 8
  %and16 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then13.if.end20_crit_edge, label %if.then18

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then18:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %sopass.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 43
  %28 = ptrtoint ptr %sopass.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %sopass.i, align 1
  %conv.i = zext i16 %29 to i32
  %30 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #5
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %32, i32 3620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %30) #5, !srcloc !23
  %arrayidx2.i = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 43, i32 2
  %33 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %arrayidx2.i, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %add.ptr1.i8.i = getelementptr i8, ptr %37, i32 3624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8.i, i32 %35) #5, !srcloc !23
  %or19 = or i32 %25, 134217729
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then13.if.end20_crit_edge
  %reg.1 = phi i32 [ %or19, %if.then18 ], [ %or, %if.then13.if.end20_crit_edge ]
  %38 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #5
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 8
  %add.ptr1.i141 = getelementptr i8, ptr %40, i32 3616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i141, i32 %38) #5, !srcloc !23
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end3.if.end21_crit_edge
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 8
  %hw_params.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 14
  %43 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %hfb_reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hfb_reg_offset.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %42, i32 %46
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142) #5, !srcloc !22
  %48 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %wolopts, align 8
  %and24 = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end21.if.end41_crit_edge, label %if.then26

if.end21.if.end41_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then26:                                        ; preds = %if.end21
  %rxnfc_list = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 12
  %50 = ptrtoint ptr %rxnfc_list to i32
  call void @__asan_load4_noabort(i32 %50)
  %rule.0173 = load ptr, ptr %rxnfc_list, align 8
  %cmp28.not174 = icmp eq ptr %rule.0173, %rxnfc_list
  br i1 %cmp28.not174, label %if.then26.for.end_crit_edge, label %if.then26.for.body_crit_edge

if.then26.for.body_crit_edge:                     ; preds = %if.then26
  br label %for.body

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then26.for.body_crit_edge
  %rule.0176 = phi ptr [ %rule.0, %for.inc.for.body_crit_edge ], [ %rule.0173, %if.then26.for.body_crit_edge ]
  %hfb_enable.0175 = phi i32 [ %hfb_enable.1, %for.inc.for.body_crit_edge ], [ 0, %if.then26.for.body_crit_edge ]
  %ring_cookie = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule.0176, i32 0, i32 1, i32 5
  %51 = ptrtoint ptr %ring_cookie to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ring_cookie, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %52)
  %cmp29 = icmp eq i64 %52, -2
  br i1 %cmp29, label %if.then30, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %location = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule.0176, i32 0, i32 1, i32 6
  %53 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %location, align 8
  %shl = shl nuw i32 1, %54
  %or32 = or i32 %shl, %hfb_enable.0175
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %for.body.for.inc_crit_edge
  %hfb_enable.1 = phi i32 [ %or32, %if.then30 ], [ %hfb_enable.0175, %for.body.for.inc_crit_edge ]
  %55 = ptrtoint ptr %rule.0176 to i32
  call void @__asan_load4_noabort(i32 %55)
  %rule.0 = load ptr, ptr %rule.0176, align 8
  %cmp28.not = icmp eq ptr %rule.0, %rxnfc_list
  br i1 %cmp28.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then26.for.end_crit_edge
  %hfb_enable.0.lcssa = phi i32 [ 0, %if.then26.for.end_crit_edge ], [ %hfb_enable.1, %for.inc.for.end_crit_edge ]
  %56 = and i32 %47, -83886081
  %57 = or i32 %56, 67108864
  %58 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv, align 8
  %60 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i144 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %hfb_reg_offset.i144 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hfb_reg_offset.i144, align 4
  %add.ptr.i145 = getelementptr i8, ptr %59, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 %57) #5, !srcloc !23
  br label %if.end41

if.end41:                                         ; preds = %for.end, %if.end21.if.end41_crit_edge
  %hfb_enable.2 = phi i32 [ %hfb_enable.0.lcssa, %for.end ], [ 0, %if.end21.if.end41_crit_edge ]
  %64 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev1, align 8
  %66 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv, align 8
  %add.ptr1.i7.i = getelementptr i8, ptr %67, i32 780
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i7.i) #5, !srcloc !22
  %69 = and i32 %68, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not8.i = icmp eq i32 %69, 0
  br i1 %tobool.not8.i, label %while.body.preheader.i, label %if.end41.do.body48_crit_edge

if.end41.do.body48_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body48

while.body.preheader.i:                           ; preds = %if.end41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #5
  %71 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv, align 8
  %add.ptr1.i.i146 = getelementptr i8, ptr %72, i32 780
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i146) #5, !srcloc !22
  %74 = and i32 %73, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i, label %while.body.1.i, label %while.body.preheader.i.do.body48_crit_edge

while.body.preheader.i.do.body48_crit_edge:       ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body48

while.body.1.i:                                   ; preds = %while.body.preheader.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #5
  %76 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv, align 8
  %add.ptr1.i.1.i = getelementptr i8, ptr %77, i32 780
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.1.i) #5, !srcloc !22
  %79 = and i32 %78, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.1.i = icmp eq i32 %79, 0
  br i1 %tobool.not.1.i, label %while.body.2.i, label %while.body.1.i.do.body48_crit_edge

while.body.1.i.do.body48_crit_edge:               ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body48

while.body.2.i:                                   ; preds = %while.body.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 214748000) #5
  %81 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %priv, align 8
  %add.ptr1.i.2.i = getelementptr i8, ptr %82, i32 780
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.2.i) #5, !srcloc !22
  %84 = and i32 %83, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.2.i = icmp eq i32 %84, 0
  br i1 %tobool.not.2.i, label %while.body.3.i, label %while.body.2.i.do.body48_crit_edge

while.body.2.i.do.body48_crit_edge:               ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body48

while.body.3.i:                                   ; preds = %while.body.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748000) #5
  %86 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv, align 8
  %add.ptr1.i.3.i = getelementptr i8, ptr %87, i32 780
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.3.i) #5, !srcloc !22
  %89 = and i32 %88, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.3.i = icmp eq i32 %89, 0
  br i1 %tobool.not.3.i, label %while.body.4.i, label %while.body.3.i.do.body48_crit_edge

while.body.3.i.do.body48_crit_edge:               ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body48

while.body.4.i:                                   ; preds = %while.body.3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748000) #5
  %91 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %priv, align 8
  %add.ptr1.i.4.i = getelementptr i8, ptr %92, i32 780
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.4.i) #5, !srcloc !22
  %94 = and i32 %93, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.4.i = icmp eq i32 %94, 0
  br i1 %tobool.not.4.i, label %if.then44, label %while.body.4.i.do.body48_crit_edge

while.body.4.i.do.body48_crit_edge:               ; preds = %while.body.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body48

if.then44:                                        ; preds = %while.body.4.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @netdev_crit(ptr noundef %65, ptr noundef nonnull @.str.6) #8
  %95 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %priv, align 8
  %add.ptr1.i149 = getelementptr i8, ptr %96, i32 3616
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i149) #5, !srcloc !22
  %98 = and i32 %97, -16777225
  %99 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %priv, align 8
  %add.ptr1.i151 = getelementptr i8, ptr %100, i32 3616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i151, i32 %98) #5, !srcloc !23
  %101 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %priv, align 8
  %103 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i153 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %104, i32 0, i32 11
  %105 = ptrtoint ptr %hfb_reg_offset.i153 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %hfb_reg_offset.i153, align 4
  %add.ptr.i154 = getelementptr i8, ptr %102, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 %47) #5, !srcloc !23
  br label %cleanup

do.body48:                                        ; preds = %while.body.4.i.do.body48_crit_edge, %while.body.3.i.do.body48_crit_edge, %while.body.2.i.do.body48_crit_edge, %while.body.1.i.do.body48_crit_edge, %while.body.preheader.i.do.body48_crit_edge, %if.end41.do.body48_crit_edge
  %retval.0.i147.ph = phi i32 [ 5, %while.body.4.i.do.body48_crit_edge ], [ 4, %while.body.3.i.do.body48_crit_edge ], [ 3, %while.body.2.i.do.body48_crit_edge ], [ 2, %while.body.1.i.do.body48_crit_edge ], [ 1, %while.body.preheader.i.do.body48_crit_edge ], [ 0, %if.end41.do.body48_crit_edge ]
  %msg_enable49 = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 37
  %107 = ptrtoint ptr %msg_enable49 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %msg_enable49, align 4
  %and50 = and i32 %108, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body48.do.end66_crit_edge, label %do.body53

do.body48.do.end66_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

do.body53:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcmgenet_wol_power_down_cfg.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcmgenet_wol_power_down_cfg, %if.then60)) #5
          to label %do.end66 [label %if.then60], !srcloc !24

if.then60:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcmgenet_wol_power_down_cfg.__UNIQUE_ID_ddebug488, ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i147.ph) #5
  br label %do.end66

do.end66:                                         ; preds = %if.then60, %do.body53, %do.body48.do.end66_crit_edge
  %clk_wol = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 41
  %109 = ptrtoint ptr %clk_wol to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %clk_wol, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %110) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i155 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i155, label %if.end.i, label %do.end66.clk_prepare_enable.exit_crit_edge

do.end66.clk_prepare_enable.exit_crit_edge:       ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %do.end66
  %call1.i = tail call i32 @clk_enable(ptr noundef %110) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %110) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %do.end66.clk_prepare_enable.exit_crit_edge
  %wol_active = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 44
  %111 = ptrtoint ptr %wol_active to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %wol_active, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hfb_enable.2)
  %tobool68.not = icmp eq i32 %hfb_enable.2, 0
  br i1 %tobool68.not, label %clk_prepare_enable.exit.if.end70_crit_edge, label %if.then69

clk_prepare_enable.exit.if.end70_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then69:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %112 = tail call i32 @llvm.bswap.i32(i32 %hfb_enable.2) #5
  %113 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %priv, align 8
  %115 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i157 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %116, i32 0, i32 11
  %117 = ptrtoint ptr %hfb_reg_offset.i157 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %hfb_reg_offset.i157, align 4
  %add.ptr.i158 = getelementptr i8, ptr %114, i32 %118
  %add.ptr1.i159 = getelementptr i8, ptr %add.ptr.i158, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i159, i32 %112) #5, !srcloc !23
  %119 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %priv, align 8
  %121 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i161 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %122, i32 0, i32 11
  %123 = ptrtoint ptr %hfb_reg_offset.i161 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %hfb_reg_offset.i161, align 4
  %add.ptr.i162 = getelementptr i8, ptr %120, i32 %124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 83886080) #5, !srcloc !23
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %clk_prepare_enable.exit.if.end70_crit_edge
  %spec.select135 = phi i32 [ 1835008, %if.then69 ], [ 1048576, %clk_prepare_enable.exit.if.end70_crit_edge ]
  %125 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %priv, align 8
  %add.ptr1.i164 = getelementptr i8, ptr %126, i32 2056
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i164) #5, !srcloc !22
  %crc_fwd_en = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 35
  %128 = ptrtoint ptr %crc_fwd_en to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %crc_fwd_en, align 4
  %129 = or i32 %127, 1107296256
  %130 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %priv, align 8
  %add.ptr1.i166 = getelementptr i8, ptr %131, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i166, i32 %129) #5, !srcloc !23
  %132 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %priv, align 8
  %add.ptr1.i167 = getelementptr i8, ptr %133, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i167, i32 %spec.select135) #5, !srcloc !23
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then44, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then44 ], [ 0, %if.end70 ], [ -22, %if.then2 ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcmgenet_wol_power_up_cfg(ptr nocapture noundef %priv, i32 noundef %mode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.not = icmp eq i32 %mode, 2
  br i1 %cmp.not, label %if.end2, label %do.body

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 37
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then1

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %mode) #8
  br label %cleanup

if.end2:                                          ; preds = %entry
  %wol_active = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 44
  %4 = ptrtoint ptr %wol_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wol_active, align 2, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %6 = ptrtoint ptr %wol_active to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %wol_active, align 2
  %clk_wol = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 41
  %7 = ptrtoint ptr %clk_wol to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_wol, align 4
  tail call void @clk_disable(ptr noundef %8) #5
  tail call void @clk_unprepare(ptr noundef %8) #5
  %crc_fwd_en = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 35
  %9 = ptrtoint ptr %crc_fwd_en to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %crc_fwd_en, align 4
  %wolopts = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 42
  %10 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wolopts, align 8
  %and7 = and i32 %11, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.if.end15_crit_edge, label %if.then9

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then9:                                         ; preds = %if.end5
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %add.ptr1.i = getelementptr i8, ptr %13, i32 3616
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #5, !srcloc !22
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %and10 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then9.cleanup_crit_edge, label %if.end13

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %and14 = and i32 %15, -134217730
  %16 = tail call i32 @llvm.bswap.i32(i32 %and14) #5
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  %add.ptr1.i51 = getelementptr i8, ptr %18, i32 3616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i51, i32 %16) #5, !srcloc !23
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.end5.if.end15_crit_edge
  %19 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wolopts, align 8
  %and17 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end26_crit_edge, label %if.then19

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then19:                                        ; preds = %if.end15
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 8
  %hw_params.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 14
  %23 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %hfb_reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hfb_reg_offset.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %22, i32 %26
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #5, !srcloc !22
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  %and21 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then19.cleanup_crit_edge, label %if.end24

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %and25 = and i32 %28, -6
  %29 = tail call i32 @llvm.bswap.i32(i32 %and25) #5
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 8
  %32 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i54 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %hfb_reg_offset.i54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hfb_reg_offset.i54, align 4
  %add.ptr.i55 = getelementptr i8, ptr %31, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %29) #5, !srcloc !23
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.end15.if.end26_crit_edge
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %add.ptr1.i57 = getelementptr i8, ptr %37, i32 2056
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i57) #5, !srcloc !22
  %39 = and i32 %38, -1073741825
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 8
  %add.ptr1.i59 = getelementptr i8, ptr %41, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i59, i32 %39) #5, !srcloc !23
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then19.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet_wol.c", i32 131, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet_wol.c", i32 174, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @bcmgenet_wol_power_down_cfg.__UNIQUE_ID_ddebug488, !3, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet_wol.c", i32 211, i32 3}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet_wol.c", i32 105, i32 21}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i8 0, i8 2}
!22 = !{i64 4620824}
!23 = !{i64 4620406}
!24 = !{i64 2148696029, i64 2148696034, i64 2148696047, i64 2148696091, i64 2148696125, i64 2148696146}
