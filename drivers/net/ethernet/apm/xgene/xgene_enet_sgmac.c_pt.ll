; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c_pt.bc'
source_filename = "../drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xgene_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgene_port_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.xgene_enet_pdata = type { ptr, ptr, i32, ptr, ptr, i32, [8 x ptr], [8 x ptr], [8 x i16], [8 x i16], ptr, i32, i32, [16 x i32], i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.xgene_enet_cle, ptr, i64, i64, %struct.spinlock, ptr, %struct.spinlock, ptr, ptr, ptr, %struct.delayed_work, i32, i8, i8, i8, i16, [4 x i32], [4 x i32], %struct.spinlock, i8, i8, i8, ptr, i8, i32, i8, i8 }
%struct.xgene_enet_cle = type { ptr, %struct.xgene_cle_ptree, i32, i32, i32, i32, i32 }
%struct.xgene_cle_ptree = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.xgene_enet_desc_ring = type { ptr, i16, i16, i16, i16, i16, i16, i16, [16 x i8], i32, [6 x i32], ptr, ptr, i32, i32, ptr, i16, i16, i32, i8, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.napi_struct, %union.anon.144, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%union.anon.144 = type { ptr }

@xgene_sgmac_ops = dso_local constant { %struct.xgene_mac_ops, [36 x i8] } { %struct.xgene_mac_ops { ptr @xgene_sgmac_init, ptr @xgene_sgmac_reset, ptr @xgene_sgmac_tx_enable, ptr @xgene_sgmac_rx_enable, ptr @xgene_sgmac_tx_disable, ptr @xgene_sgmac_rx_disable, ptr @xgene_sgmac_get_drop_cnt, ptr @xgene_sgmac_set_speed, ptr @xgene_sgmac_set_mac_addr, ptr @xgene_sgmac_set_frame_size, ptr null, ptr @xgene_enet_link_state, ptr @xgene_sgmac_enable_tx_pause, ptr @xgene_sgmac_flowctl_rx, ptr @xgene_sgmac_flowctl_tx }, [36 x i8] zeroinitializer }, align 32
@xgene_sgport_ops = dso_local constant { %struct.xgene_port_ops, [16 x i8] } { %struct.xgene_port_ops { ptr @xgene_enet_reset, ptr @xgene_enet_clear, ptr @xgene_enet_cle_bypass, ptr @xgene_enet_shutdown }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Auto-negotiation failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MII_MGMT write failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MII_MGMT read failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Link is Up - %dMbps\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Link is Down\0A\00", [18 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@xgene_enet_ecc_init.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xgene_enet\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xgene_enet_ecc_init\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"+ ecc_init done, skipping\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to release memory from shutdown\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"xgene_sgmac_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 584, i32 28 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"xgene_sgport_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 601, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 300, i32 23 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 132, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 155, i32 22 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 548, i32 22 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 557, i32 22 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 70, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [53 x i8] c"../drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 82, i32 19 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @xgene_sgmac_ops, ptr @xgene_sgport_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_sgmac_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_sgport_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_sgmac_init(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enet_id = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 5
  %0 = ptrtoint ptr %enet_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enet_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %mdio_driver = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 50
  %2 = ptrtoint ptr %mdio_driver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mdio_driver, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 0, i32 noundef -2147483648) #4
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 0, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  tail call fastcc void @xgene_mii_phy_write(ptr noundef %p, i32 noundef 17, i16 noundef zeroext -32768) #4
  tail call fastcc void @xgene_mii_phy_write(ptr noundef %p, i32 noundef 0, i16 noundef zeroext -28672) #4
  tail call fastcc void @xgene_mii_phy_write(ptr noundef %p, i32 noundef 17, i16 noundef zeroext 0) #4
  %call.i = tail call fastcc i32 @xgene_mii_phy_read(ptr noundef %p, i32 noundef 1) #4
  %4 = and i32 %call.i, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %4)
  %.not.i = icmp eq i32 %4, 36
  br i1 %.not.i, label %if.end.xgene_sgmii_enable_autoneg.exit_crit_edge, label %if.end.i

if.end.xgene_sgmii_enable_autoneg.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %xgene_sgmii_enable_autoneg.exit

if.end.i:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.1.i = tail call fastcc i32 @xgene_mii_phy_read(ptr noundef %p, i32 noundef 1) #4
  %5 = and i32 %call.1.i, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %5)
  %.not.1.i = icmp eq i32 %5, 36
  br i1 %.not.1.i, label %if.end.i.xgene_sgmii_enable_autoneg.exit_crit_edge, label %if.end.1.i

if.end.i.xgene_sgmii_enable_autoneg.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xgene_sgmii_enable_autoneg.exit

if.end.1.i:                                       ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.2.i = tail call fastcc i32 @xgene_mii_phy_read(ptr noundef %p, i32 noundef 1) #4
  %6 = and i32 %call.2.i, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %6)
  %.not.2.i = icmp eq i32 %6, 36
  br i1 %.not.2.i, label %if.end.1.i.xgene_sgmii_enable_autoneg.exit_crit_edge, label %if.end.2.i

if.end.1.i.xgene_sgmii_enable_autoneg.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xgene_sgmii_enable_autoneg.exit

if.end.2.i:                                       ; preds = %if.end.1.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.3.i = tail call fastcc i32 @xgene_mii_phy_read(ptr noundef %p, i32 noundef 1) #4
  %7 = and i32 %call.3.i, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %7)
  %.not.3.i = icmp eq i32 %7, 36
  br i1 %.not.3.i, label %if.end.2.i.xgene_sgmii_enable_autoneg.exit_crit_edge, label %if.end.3.i

if.end.2.i.xgene_sgmii_enable_autoneg.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xgene_sgmii_enable_autoneg.exit

if.end.3.i:                                       ; preds = %if.end.2.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.4.i = tail call fastcc i32 @xgene_mii_phy_read(ptr noundef %p, i32 noundef 1) #4
  %8 = and i32 %call.4.i, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %8)
  %.not.4.i = icmp eq i32 %8, 36
  br i1 %.not.4.i, label %if.end.3.i.xgene_sgmii_enable_autoneg.exit_crit_edge, label %if.end.4.i

if.end.3.i.xgene_sgmii_enable_autoneg.exit_crit_edge: ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xgene_sgmii_enable_autoneg.exit

if.end.4.i:                                       ; preds = %if.end.3.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.5.i = tail call fastcc i32 @xgene_mii_phy_read(ptr noundef %p, i32 noundef 1) #4
  %9 = and i32 %call.5.i, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %9)
  %.not.5.i = icmp eq i32 %9, 36
  br i1 %.not.5.i, label %if.end.4.i.xgene_sgmii_enable_autoneg.exit_crit_edge, label %if.end.5.i

if.end.4.i.xgene_sgmii_enable_autoneg.exit_crit_edge: ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xgene_sgmii_enable_autoneg.exit

if.end.5.i:                                       ; preds = %if.end.4.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.6.i = tail call fastcc i32 @xgene_mii_phy_read(ptr noundef %p, i32 noundef 1) #4
  %10 = and i32 %call.6.i, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %10)
  %.not.6.i = icmp eq i32 %10, 36
  br i1 %.not.6.i, label %if.end.5.i.xgene_sgmii_enable_autoneg.exit_crit_edge, label %if.end.6.i

if.end.5.i.xgene_sgmii_enable_autoneg.exit_crit_edge: ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xgene_sgmii_enable_autoneg.exit

if.end.6.i:                                       ; preds = %if.end.5.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.7.i = tail call fastcc i32 @xgene_mii_phy_read(ptr noundef %p, i32 noundef 1) #4
  %11 = and i32 %call.7.i, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %11)
  %.not.7.i = icmp eq i32 %11, 36
  br i1 %.not.7.i, label %if.end.6.i.xgene_sgmii_enable_autoneg.exit_crit_edge, label %if.end.7.i

if.end.6.i.xgene_sgmii_enable_autoneg.exit_crit_edge: ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xgene_sgmii_enable_autoneg.exit

if.end.7.i:                                       ; preds = %if.end.6.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.8.i = tail call fastcc i32 @xgene_mii_phy_read(ptr noundef %p, i32 noundef 1) #4
  %12 = and i32 %call.8.i, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %12)
  %.not.8.i = icmp eq i32 %12, 36
  br i1 %.not.8.i, label %if.end.7.i.xgene_sgmii_enable_autoneg.exit_crit_edge, label %if.end.8.i

if.end.7.i.xgene_sgmii_enable_autoneg.exit_crit_edge: ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xgene_sgmii_enable_autoneg.exit

if.end.8.i:                                       ; preds = %if.end.7.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.9.i = tail call fastcc i32 @xgene_mii_phy_read(ptr noundef %p, i32 noundef 1) #4
  %13 = and i32 %call.9.i, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %13)
  %.not.9.i = icmp eq i32 %13, 36
  br i1 %.not.9.i, label %if.end.8.i.xgene_sgmii_enable_autoneg.exit_crit_edge, label %if.then8.i

if.end.8.i.xgene_sgmii_enable_autoneg.exit_crit_edge: ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xgene_sgmii_enable_autoneg.exit

if.then8.i:                                       ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %14 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str) #7
  br label %xgene_sgmii_enable_autoneg.exit

xgene_sgmii_enable_autoneg.exit:                  ; preds = %if.then8.i, %if.end.8.i.xgene_sgmii_enable_autoneg.exit_crit_edge, %if.end.7.i.xgene_sgmii_enable_autoneg.exit_crit_edge, %if.end.6.i.xgene_sgmii_enable_autoneg.exit_crit_edge, %if.end.5.i.xgene_sgmii_enable_autoneg.exit_crit_edge, %if.end.4.i.xgene_sgmii_enable_autoneg.exit_crit_edge, %if.end.3.i.xgene_sgmii_enable_autoneg.exit_crit_edge, %if.end.2.i.xgene_sgmii_enable_autoneg.exit_crit_edge, %if.end.1.i.xgene_sgmii_enable_autoneg.exit_crit_edge, %if.end.i.xgene_sgmii_enable_autoneg.exit_crit_edge, %if.end.xgene_sgmii_enable_autoneg.exit_crit_edge
  tail call void @xgene_sgmac_set_speed(ptr noundef %p)
  %16 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p, align 8
  %dev_addr1.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 86
  %18 = ptrtoint ptr %dev_addr1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr1.i, align 64
  %arrayidx.i = getelementptr i8, ptr %19, i32 3
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %21 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx2.i = getelementptr i8, ptr %19, i32 2
  %22 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %23 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 16
  %or.i = or i32 %shl4.i, %shl.i
  %arrayidx5.i = getelementptr i8, ptr %19, i32 1
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %25 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 8
  %or8.i = or i32 %or.i, %shl7.i
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %19, align 1
  %conv10.i = zext i8 %27 to i32
  %or11.i = or i32 %or8.i, %conv10.i
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 64, i32 noundef %or11.i) #4
  %call.i92 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 68) #4
  %arrayidx12.i = getelementptr i8, ptr %19, i32 5
  %28 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %29 to i32
  %shl14.i = shl nuw i32 %conv13.i, 24
  %arrayidx15.i = getelementptr i8, ptr %19, i32 4
  %30 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %31 to i32
  %shl17.i = shl nuw nsw i32 %conv16.i, 16
  %or18.i = or i32 %shl14.i, %call.i92
  %or19.i = or i32 %or18.i, %shl17.i
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 68, i32 noundef %or19.i) #4
  %32 = ptrtoint ptr %enet_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %enet_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp2 = icmp eq i32 %33, 1
  br i1 %cmp2, label %if.then3, label %xgene_sgmii_enable_autoneg.exit.if.end4_crit_edge

xgene_sgmii_enable_autoneg.exit.if.end4_crit_edge: ; preds = %xgene_sgmii_enable_autoneg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %xgene_sgmii_enable_autoneg.exit
  call void @__sanitizer_cov_trace_pc() #6
  %port_id = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 40
  %34 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port_id, align 4
  %mul = shl i32 %35, 2
  %add = add i32 %mul, 1532
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %xgene_sgmii_enable_autoneg.exit.if.end4_crit_edge
  %enet_spare_cfg_reg.0 = phi i32 [ 1872, %if.then3 ], [ 1036, %xgene_sgmii_enable_autoneg.exit.if.end4_crit_edge ]
  %rsif_config_reg.0 = phi i32 [ 16, %if.then3 ], [ 160, %xgene_sgmii_enable_autoneg.exit.if.end4_crit_edge ]
  %cfg_bypass_reg.0 = phi i32 [ 660, %if.then3 ], [ 516, %xgene_sgmii_enable_autoneg.exit.if.end4_crit_edge ]
  %rx_dv_gate_reg.0 = phi i32 [ %add, %if.then3 ], [ 4, %xgene_sgmii_enable_autoneg.exit.if.end4_crit_edge ]
  %eth_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 17
  %36 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %37, i32 %enet_spare_cfg_reg.0
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %39 = or i32 %38, 1048576
  %40 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i94 = getelementptr i8, ptr %41, i32 %enet_spare_cfg_reg.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %39) #4, !srcloc !35
  %call5 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 32) #4
  %or.i95 = or i32 %call5, 7
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 32, i32 noundef %or.i95) #4
  %42 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i97 = getelementptr i8, ptr %43, i32 %rsif_config_reg.0
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %45 = or i32 %44, 128
  %46 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i99 = getelementptr i8, ptr %47, i32 %rsif_config_reg.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %45) #4, !srcloc !35
  %48 = ptrtoint ptr %enet_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %enet_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp9 = icmp eq i32 %49, 1
  %cond = select i1 %cmp9, i32 560, i32 124
  %mcx_mac_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 21
  %50 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i100 = getelementptr i8, ptr %51, i32 %cond
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %53 = and i32 %52, -65536
  %54 = or i32 %53, 128
  %55 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i102 = getelementptr i8, ptr %56, i32 %cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %54) #4, !srcloc !35
  %57 = ptrtoint ptr %enet_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %enet_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp13.not = icmp eq i32 %58, 1
  br i1 %cmp13.not, label %if.end4.if.then27_crit_edge, label %if.end18

if.end4.if.then27_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then27

if.end18:                                         ; preds = %if.end4
  %59 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i104 = getelementptr i8, ptr %60, i32 128
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %62 = and i32 %61, -65536
  %63 = or i32 %62, 256
  %64 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i106 = getelementptr i8, ptr %65, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %63) #4, !srcloc !35
  %66 = ptrtoint ptr %enet_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pr = load i32, ptr %enet_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp20 = icmp eq i32 %.pr, 1
  br i1 %cmp20, label %if.end18.if.then27_crit_edge, label %if.else43

if.end18.if.then27_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then27

if.then27:                                        ; preds = %if.end18.if.then27_crit_edge, %if.end4.if.then27_crit_edge
  %67 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i108 = getelementptr i8, ptr %68, i32 1332
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #4, !srcloc !32
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %71 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i110 = getelementptr i8, ptr %72, i32 1344
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110) #4, !srcloc !32
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %port_id30 = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 40
  %75 = ptrtoint ptr %port_id30 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %port_id30, align 4
  %rem = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool31.not = icmp eq i32 %rem, 0
  %. = select i1 %tobool31.not, i32 -65536, i32 65535
  %.136 = select i1 %tobool31.not, i32 125, i32 8192000
  %.137 = select i1 %tobool31.not, i32 109, i32 7143424
  %and38 = and i32 %70, %.
  %or39 = or i32 %and38, %.136
  %and40 = and i32 %74, %.
  %or41 = or i32 %and40, %.137
  %77 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i112 = getelementptr i8, ptr %78, i32 1332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %79 = tail call i32 @llvm.bswap.i32(i32 %or39) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %79) #4, !srcloc !35
  %80 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i114 = getelementptr i8, ptr %81, i32 1344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %82 = tail call i32 @llvm.bswap.i32(i32 %or41) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %82) #4, !srcloc !35
  br label %if.end44

if.else43:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %83 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i116 = getelementptr i8, ptr %84, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 2097179904) #4, !srcloc !35
  br label %if.end44

if.end44:                                         ; preds = %if.else43, %if.then27
  %tx_pause = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 54
  %85 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %tx_pause, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool45 = icmp ne i8 %86, 0
  %call.i.i = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 0) #4
  %and.i.i = and i32 %call.i.i, -17
  %masksel.i = select i1 %tobool45, i32 16, i32 0
  %data.0.i.i = or i32 %and.i.i, %masksel.i
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 0, i32 noundef %data.0.i.i) #4
  %mac_ops.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 34
  %87 = ptrtoint ptr %mac_ops.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mac_ops.i, align 4
  %enable_tx_pause.i = getelementptr inbounds %struct.xgene_mac_ops, ptr %88, i32 0, i32 12
  %89 = ptrtoint ptr %enable_tx_pause.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %enable_tx_pause.i, align 4
  tail call void %90(ptr noundef %p, i1 noundef zeroext %tobool45) #4
  %rx_pause = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 55
  %91 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %rx_pause, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool46.not = icmp eq i8 %92, 0
  %call.i.i117 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 0) #4
  %and.i.i118 = and i32 %call.i.i117, -33
  %masksel.i119 = select i1 %tobool46.not, i32 0, i32 32
  %data.0.i.i120 = or i32 %and.i.i118, %masksel.i119
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 0, i32 noundef %data.0.i.i120) #4
  %93 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i122 = getelementptr i8, ptr %94, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 -2080374784) #4, !srcloc !35
  %95 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i124 = getelementptr i8, ptr %96, i32 %cfg_bypass_reg.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 16777216) #4, !srcloc !35
  %97 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i126 = getelementptr i8, ptr %98, i32 %rx_dv_gate_reg.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 16777216) #4, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_sgmac_reset(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 0, i32 noundef -2147483648) #4
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 0, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_sgmac_tx_enable(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 0) #4
  %or.i = or i32 %call.i, 1
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 0, i32 noundef %or.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_sgmac_rx_enable(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 0) #4
  %or.i = or i32 %call.i, 4
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 0, i32 noundef %or.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_sgmac_tx_disable(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 0) #4
  %and.i = and i32 %call.i, -2
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 0, i32 noundef %and.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_sgmac_rx_disable(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 0) #4
  %and.i = and i32 %call.i, -5
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 0, i32 noundef %and.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_sgmac_get_drop_cnt(ptr nocapture noundef readonly %pdata, ptr nocapture noundef writeonly %rx, ptr nocapture noundef writeonly %tx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enet_id = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 5
  %0 = ptrtoint ptr %enet_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enet_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %port_id = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 40
  %2 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_id, align 4
  %mul = shl i32 %3, 2
  %add = add i32 %mul, 1288
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 292, %entry.cond.end_crit_edge ]
  %mcx_mac_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 21
  %4 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %cond
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !32
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %shr4.i = lshr i32 %7, 16
  %8 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr4.i, ptr %rx, align 4
  %and3.i = and i32 %7, 65535
  %9 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and3.i, ptr %tx, align 4
  %10 = ptrtoint ptr %enet_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enet_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp4.not = icmp eq i32 %11, 1
  br i1 %cmp4.not, label %cond.false6, label %cond.end.cond.end10_crit_edge

cond.end.cond.end10_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end10

cond.false6:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %port_id7 = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 40
  %12 = ptrtoint ptr %port_id7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_id7, align 4
  %mul8 = shl i32 %13, 2
  %add9 = add i32 %mul8, 1280
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false6, %cond.end.cond.end10_crit_edge
  %cond11 = phi i32 [ %add9, %cond.false6 ], [ 112, %cond.end.cond.end10_crit_edge ]
  %14 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i21 = getelementptr i8, ptr %15, i32 %cond11
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_sgmac_set_speed(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_speed.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %phy_speed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i = icmp eq i32 %1, -1
  br i1 %cmp.i, label %entry.xgene_sgmii_reset.exit_crit_edge, label %if.end.i

entry.xgene_sgmii_reset.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %xgene_sgmii_reset.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call fastcc i32 @xgene_mii_phy_read(ptr noundef %p, i32 noundef 5) #4
  %and.i = and i32 %call.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then1.i, label %if.end.i.xgene_sgmii_reset.exit_crit_edge

if.end.i.xgene_sgmii_reset.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xgene_sgmii_reset.exit

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @xgene_mii_phy_write(ptr noundef %p, i32 noundef 17, i16 noundef zeroext -32768) #4
  tail call fastcc void @xgene_mii_phy_write(ptr noundef %p, i32 noundef 17, i16 noundef zeroext 0) #4
  br label %xgene_sgmii_reset.exit

xgene_sgmii_reset.exit:                           ; preds = %if.then1.i, %if.end.i.xgene_sgmii_reset.exit_crit_edge, %entry.xgene_sgmii_reset.exit_crit_edge
  %enet_id = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %enet_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enet_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %xgene_sgmii_reset.exit.if.end_crit_edge

xgene_sgmii_reset.exit.if.end_crit_edge:          ; preds = %xgene_sgmii_reset.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %xgene_sgmii_reset.exit
  call void @__sanitizer_cov_trace_pc() #6
  %port_id = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 40
  %4 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_id, align 4
  %mul = shl i32 %5, 3
  %add = add i32 %mul, 1024
  %mul2 = shl i32 %5, 2
  %add3 = add i32 %mul2, 1040
  br label %if.end

if.end:                                           ; preds = %if.then, %xgene_sgmii_reset.exit.if.end_crit_edge
  %icm0_addr.0 = phi i32 [ %add, %if.then ], [ 224, %xgene_sgmii_reset.exit.if.end_crit_edge ]
  %icm2_addr.0 = phi i32 [ %add3, %if.then ], [ 232, %xgene_sgmii_reset.exit.if.end_crit_edge ]
  %debug_addr.0 = phi i32 [ 1792, %if.then ], [ 1024, %xgene_sgmii_reset.exit.if.end_crit_edge ]
  %mcx_mac_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 21
  %6 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 %icm0_addr.0
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !32
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %10 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i38 = getelementptr i8, ptr %11, i32 %icm2_addr.0
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #4, !srcloc !32
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %call5 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 4) #4
  %call6 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 56) #4
  %14 = ptrtoint ptr %phy_speed.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy_speed.i, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %sw.default [
    i32 10, label %sw.bb
    i32 100, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and5.i = and i32 %call5, -769
  %or.i = or i32 %and5.i, 256
  %and = and i32 %call6, -100663297
  %and5.i39 = and i32 %9, -786433
  %and5.i40 = and i32 %13, -65536
  %or.i41 = or i32 %and5.i40, 500
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and5.i42 = and i32 %call5, -769
  %or.i43 = or i32 %and5.i42, 256
  %and8 = and i32 %call6, -100663297
  %or = or i32 %and8, 33554432
  %and5.i44 = and i32 %9, -786433
  %or.i45 = or i32 %and5.i44, 262144
  %and5.i46 = and i32 %13, -65536
  %or.i47 = or i32 %and5.i46, 80
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and5.i48 = and i32 %call5, -769
  %or.i49 = or i32 %and5.i48, 512
  %and9 = and i32 %call6, -100663297
  %or10 = or i32 %and9, 67108864
  %and5.i50 = and i32 %9, -786433
  %or.i51 = or i32 %and5.i50, 524288
  %and5.i52 = and i32 %13, -65536
  %or.i53 = or i32 %and5.i52, 16
  %eth_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 17
  %17 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i54 = getelementptr i8, ptr %18, i32 %debug_addr.0
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %20 = or i32 %19, 100663296
  %21 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i56 = getelementptr i8, ptr %22, i32 %debug_addr.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %20) #4, !srcloc !35
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb
  %icm0.0 = phi i32 [ %or.i51, %sw.default ], [ %or.i45, %sw.bb7 ], [ %and5.i39, %sw.bb ]
  %icm2.0 = phi i32 [ %or.i53, %sw.default ], [ %or.i47, %sw.bb7 ], [ %or.i41, %sw.bb ]
  %mc2.0 = phi i32 [ %or.i49, %sw.default ], [ %or.i43, %sw.bb7 ], [ %or.i, %sw.bb ]
  %intf_ctl.0 = phi i32 [ %or10, %sw.default ], [ %or, %sw.bb7 ], [ %and, %sw.bb ]
  %or13 = or i32 %mc2.0, 5
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 4, i32 noundef %or13) #4
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 56, i32 noundef %intf_ctl.0) #4
  %23 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i58 = getelementptr i8, ptr %24, i32 %icm0_addr.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %25 = tail call i32 @llvm.bswap.i32(i32 %icm0.0) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %25) #4, !srcloc !35
  %26 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i60 = getelementptr i8, ptr %27, i32 %icm2_addr.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %28 = tail call i32 @llvm.bswap.i32(i32 %icm2.0) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %28) #4, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_sgmac_set_mac_addr(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %dev_addr1 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr1, align 64
  %arrayidx = getelementptr i8, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx2 = getelementptr i8, ptr %3, i32 2
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  %shl4 = shl nuw nsw i32 %conv3, 16
  %or = or i32 %shl4, %shl
  %arrayidx5 = getelementptr i8, ptr %3, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %9 to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %or8 = or i32 %or, %shl7
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 1
  %conv10 = zext i8 %11 to i32
  %or11 = or i32 %or8, %conv10
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 64, i32 noundef %or11) #4
  %call = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 68) #4
  %arrayidx12 = getelementptr i8, ptr %3, i32 5
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %13 to i32
  %shl14 = shl nuw i32 %conv13, 24
  %arrayidx15 = getelementptr i8, ptr %3, i32 4
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %15 to i32
  %shl17 = shl nuw nsw i32 %conv16, 16
  %or18 = or i32 %shl14, %call
  %or19 = or i32 %or18, %shl17
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 68, i32 noundef %or19) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_sgmac_set_frame_size(ptr noundef %pdata, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 16, i32 noundef %size) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_link_state(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -424
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call.i = tail call fastcc i32 @xgene_mii_phy_read(ptr noundef %add.ptr, i32 noundef 5) #4
  %and.i = lshr i32 %call.i, 10
  %shr.i = and i32 %and.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %switch.selectcmp.i = icmp eq i32 %shr.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 100, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %switch.selectcmp15.i = icmp eq i32 %shr.i, 2
  %switch.select16.i = select i1 %switch.selectcmp15.i, i32 1000, i32 %switch.select.i
  %phy_speed5.i = getelementptr i8, ptr %work, i32 -416
  %2 = ptrtoint ptr %phy_speed5.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %switch.select16.i, ptr %phy_speed5.i, align 8
  %and9.i = and i32 %call.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not = icmp eq i32 %and9.i, 0
  %state.i25 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %state.i25 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i25, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i26 = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i26, label %if.then.if.end8_crit_edge, label %if.then4

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @netif_carrier_on(ptr noundef %1) #4
  tail call void @xgene_sgmac_set_speed(ptr noundef %add.ptr)
  %call.i.i = tail call i32 @xgene_enet_rd_mac(ptr noundef %add.ptr, i32 noundef 0) #4
  %or.i.i = or i32 %call.i.i, 4
  tail call void @xgene_enet_wr_mac(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %or.i.i) #4
  %call.i.i23 = tail call i32 @xgene_enet_rd_mac(ptr noundef %add.ptr, i32 noundef 0) #4
  %or.i.i24 = or i32 %call.i.i23, 1
  tail call void @xgene_enet_wr_mac(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %or.i.i24) #4
  %6 = ptrtoint ptr %phy_speed5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_speed5.i, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %7) #7
  br label %if.end8

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i26, label %if.then6, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i27 = tail call i32 @xgene_enet_rd_mac(ptr noundef %add.ptr, i32 noundef 0) #4
  %and.i.i = and i32 %call.i.i27, -5
  tail call void @xgene_enet_wr_mac(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %and.i.i) #4
  %call.i.i28 = tail call i32 @xgene_enet_rd_mac(ptr noundef %add.ptr, i32 noundef 0) #4
  %and.i.i29 = and i32 %call.i.i28, -2
  tail call void @xgene_enet_wr_mac(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %and.i.i29) #4
  tail call void @netif_carrier_off(ptr noundef %1) #4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.4) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.else.if.end8_crit_edge, %if.then4, %if.then.if.end8_crit_edge
  %poll_interval.0 = phi i32 [ 1000, %if.then4 ], [ 1000, %if.then.if.end8_crit_edge ], [ 200, %if.then6 ], [ 200, %if.else.if.end8_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i30 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work, i32 noundef %poll_interval.0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_sgmac_enable_tx_pause(ptr nocapture noundef readonly %p, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enet_id = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 5
  %0 = ptrtoint ptr %enet_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enet_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %port_id = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 40
  %2 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_id, align 4
  %rem = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %cond = select i1 %tobool.not, i32 544, i32 548
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ecm_cfg_addr.0 = phi i32 [ %cond, %if.then ], [ 116, %entry.if.end_crit_edge ]
  %mcx_mac_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 21
  %4 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %ecm_cfg_addr.0
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %7 = and i32 %6, -81
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %masksel = select i1 %enable, i32 1342177280, i32 0
  %data.0 = or i32 %8, %masksel
  %9 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i12 = getelementptr i8, ptr %10, i32 %ecm_cfg_addr.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %11 = tail call i32 @llvm.bswap.i32(i32 %data.0) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %11) #4, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_sgmac_flowctl_rx(ptr noundef %pdata, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 0) #4
  %and.i = and i32 %call.i, -33
  %masksel = select i1 %enable, i32 32, i32 0
  %data.0.i = or i32 %and.i, %masksel
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 0, i32 noundef %data.0.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_sgmac_flowctl_tx(ptr noundef %p, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 0) #4
  %and.i = and i32 %call.i, -17
  %masksel = select i1 %enable, i32 16, i32 0
  %data.0.i = or i32 %and.i, %masksel
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 0, i32 noundef %data.0.i) #4
  %mac_ops = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 34
  %0 = ptrtoint ptr %mac_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_ops, align 4
  %enable_tx_pause = getelementptr inbounds %struct.xgene_mac_ops, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %enable_tx_pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_tx_pause, align 4
  tail call void %3(ptr noundef %p, i1 noundef zeroext %enable) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_enet_reset(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call = tail call zeroext i1 @xgene_ring_mgr_init(ptr noundef %p) #4
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %mdio_driver = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 50
  %2 = ptrtoint ptr %mdio_driver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mdio_driver, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %enet_id = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 5
  %4 = ptrtoint ptr %enet_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enet_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then2, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %eth_ring_if_addr.i.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 18
  %6 = ptrtoint ptr %eth_ring_if_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eth_ring_if_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #4, !srcloc !35
  %8 = ptrtoint ptr %eth_ring_if_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eth_ring_if_addr.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %9, i32 220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #4, !srcloc !35
  br label %cleanup

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %enet_id4 = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 5
  %10 = ptrtoint ptr %enet_id4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enet_id4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp5 = icmp eq i32 %11, 2
  br i1 %cmp5, label %if.then6, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %base_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 23
  %12 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #4, !srcloc !35
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3.if.end7_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.end7.if.end18_crit_edge, label %if.then9

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then9:                                         ; preds = %if.end7
  %clk = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 3
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  %cmp.i36 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %if.then9.if.end18_crit_edge, label %if.then11

if.then9.if.end18_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then11:                                        ; preds = %if.then9
  %call.i = tail call i32 @clk_prepare(ptr noundef %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then11.clk_prepare_enable.exit_crit_edge

if.then11.clk_prepare_enable.exit_crit_edge:      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then11
  %call1.i = tail call i32 @clk_enable(ptr noundef %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %17) #4
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then11.clk_prepare_enable.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 1073740) #4
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %20) #4
  tail call void @clk_unprepare(ptr noundef %20) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 1073740) #4
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 4
  %call.i37 = tail call i32 @clk_prepare(ptr noundef %23) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not.i38 = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i38, label %if.end.i41, label %clk_prepare_enable.exit.clk_prepare_enable.exit43_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit43_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit43

if.end.i41:                                       ; preds = %clk_prepare_enable.exit
  %call1.i39 = tail call i32 @clk_enable(ptr noundef %23) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39)
  %tobool2.not.i40 = icmp eq i32 %call1.i39, 0
  br i1 %tobool2.not.i40, label %if.end.i41.clk_prepare_enable.exit43_crit_edge, label %if.then3.i42

if.end.i41.clk_prepare_enable.exit43_crit_edge:   ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit43

if.then3.i42:                                     ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %23) #4
  br label %clk_prepare_enable.exit43

clk_prepare_enable.exit43:                        ; preds = %if.then3.i42, %if.end.i41.clk_prepare_enable.exit43_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit43_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 1073740) #4
  br label %if.end18

if.end18:                                         ; preds = %clk_prepare_enable.exit43, %if.then9.if.end18_crit_edge, %if.end7.if.end18_crit_edge
  %port_id = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 40
  %25 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool19.not = icmp eq i32 %26, 0
  br i1 %tobool19.not, label %if.then20, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @xgene_enet_ecc_init(ptr noundef %p)
  %27 = ptrtoint ptr %enet_id4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %enet_id4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i45 = icmp eq i32 %28, 1
  %cond.i46 = sext i1 %cmp.i45 to i32
  %eth_ring_if_addr.i.i47 = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 18
  %29 = ptrtoint ptr %eth_ring_if_addr.i.i47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %eth_ring_if_addr.i.i47, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %30, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %31 = tail call i32 @llvm.bswap.i32(i32 %cond.i46) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i48, i32 %31) #4, !srcloc !35
  %32 = ptrtoint ptr %eth_ring_if_addr.i.i47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %eth_ring_if_addr.i.i47, align 4
  %add.ptr.i5.i49 = getelementptr i8, ptr %33, i32 220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i49, i32 %31) #4, !srcloc !35
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end18.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then20 ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_clear(ptr nocapture noundef readonly %pdata, ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  %2 = and i16 %1, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.i.not = icmp eq i16 %2, 0
  %3 = and i16 %1, 63
  %narrow = add nuw nsw i16 %3, 224
  %addr.0 = select i1 %cmp.i.not, i32 28, i32 20
  %conv.pn.in.v = select i1 %cmp.i.not, i16 %3, i16 %narrow
  %4 = and i16 %conv.pn.in.v, 255
  %conv.pn = zext i16 %4 to i32
  %data.0 = shl nuw i32 1, %conv.pn
  %eth_ring_if_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 18
  %5 = ptrtoint ptr %eth_ring_if_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eth_ring_if_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %addr.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %data.0) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #4, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_cle_bypass(ptr nocapture noundef readonly %p, i32 noundef %dst_ring_num, i16 noundef zeroext %bufpool_id, i16 noundef zeroext %nxtbufpool_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_id = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 40
  %0 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_id, align 4
  %enet_id = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %enet_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enet_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %. = select i1 %cmp, i32 1168, i32 352
  %.13 = select i1 %cmp, i32 1172, i32 356
  %mul = mul i32 %1, 48
  %add = add i32 %., %mul
  %eth_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 17
  %4 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 128) #4, !srcloc !35
  %6 = and i16 %bufpool_id, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.i.not.i = icmp eq i16 %6, 0
  %7 = and i16 %bufpool_id, 15
  %narrow20 = select i1 %cmp.i.not.i, i16 0, i16 %7
  %conv = zext i16 %narrow20 to i32
  %8 = and i16 %nxtbufpool_id, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.i.not.i14 = icmp eq i16 %8, 0
  %9 = and i16 %nxtbufpool_id, 15
  %narrow22 = select i1 %cmp.i.not.i14, i16 0, i16 %9
  %conv2 = zext i16 %narrow22 to i32
  %and = and i32 %dst_ring_num, 4095
  %shl = shl nuw nsw i32 %conv, 16
  %or = or i32 %shl, %and
  %shl4 = shl nuw nsw i32 %conv2, 20
  %or6 = or i32 %or, %shl4
  %add7 = add i32 %.13, %mul
  %10 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i19 = getelementptr i8, ptr %11, i32 %add7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %12 = tail call i32 @llvm.bswap.i32(i32 %or6) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %12) #4, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_shutdown(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.if.end4_crit_edge, label %if.then2

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef %5) #4
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgene_enet_rd_mac(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgene_enet_wr_mac(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgene_mii_phy_read(ptr noundef %p, i32 noundef %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = and i32 %reg, 31
  %or = or i32 %and1, 7680
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 40, i32 noundef %or) #4
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 36, i32 noundef 1) #4
  %call = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and3 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %if.end.8.if.then_crit_edge, %if.end.7.if.then_crit_edge, %if.end.6.if.then_crit_edge, %if.end.5.if.then_crit_edge, %if.end.4.if.then_crit_edge, %if.end.3.if.then_crit_edge, %if.end.2.if.then_crit_edge, %if.end.1.if.then_crit_edge, %if.end.if.then_crit_edge, %entry.if.then_crit_edge
  %call4 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 48) #4
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 36, i32 noundef 0) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %call.1 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and3.1 = and i32 %call.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.1)
  %tobool.not.1 = icmp eq i32 %and3.1, 0
  br i1 %tobool.not.1, label %if.end.if.then_crit_edge, label %if.end.1

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.1:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %call.2 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and3.2 = and i32 %call.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.2)
  %tobool.not.2 = icmp eq i32 %and3.2, 0
  br i1 %tobool.not.2, label %if.end.1.if.then_crit_edge, label %if.end.2

if.end.1.if.then_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.2:                                         ; preds = %if.end.1
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %call.3 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and3.3 = and i32 %call.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.3)
  %tobool.not.3 = icmp eq i32 %and3.3, 0
  br i1 %tobool.not.3, label %if.end.2.if.then_crit_edge, label %if.end.3

if.end.2.if.then_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.3:                                         ; preds = %if.end.2
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %call.4 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and3.4 = and i32 %call.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.4)
  %tobool.not.4 = icmp eq i32 %and3.4, 0
  br i1 %tobool.not.4, label %if.end.3.if.then_crit_edge, label %if.end.4

if.end.3.if.then_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.4:                                         ; preds = %if.end.3
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %call.5 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and3.5 = and i32 %call.5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.5)
  %tobool.not.5 = icmp eq i32 %and3.5, 0
  br i1 %tobool.not.5, label %if.end.4.if.then_crit_edge, label %if.end.5

if.end.4.if.then_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.5:                                         ; preds = %if.end.4
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %call.6 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and3.6 = and i32 %call.6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.6)
  %tobool.not.6 = icmp eq i32 %and3.6, 0
  br i1 %tobool.not.6, label %if.end.5.if.then_crit_edge, label %if.end.6

if.end.5.if.then_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.6:                                         ; preds = %if.end.5
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %call.7 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and3.7 = and i32 %call.7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.7)
  %tobool.not.7 = icmp eq i32 %and3.7, 0
  br i1 %tobool.not.7, label %if.end.6.if.then_crit_edge, label %if.end.7

if.end.6.if.then_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.7:                                         ; preds = %if.end.6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %call.8 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and3.8 = and i32 %call.8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.8)
  %tobool.not.8 = icmp eq i32 %and3.8, 0
  br i1 %tobool.not.8, label %if.end.7.if.then_crit_edge, label %if.end.8

if.end.7.if.then_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.8:                                         ; preds = %if.end.7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %call.9 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and3.9 = and i32 %call.9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.9)
  %tobool.not.9 = icmp eq i32 %and3.9, 0
  br i1 %tobool.not.9, label %if.end.8.if.then_crit_edge, label %if.end.9

if.end.8.if.then_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ 0, %if.end.9 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_mii_phy_write(ptr noundef %p, i32 noundef %reg, i16 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = and i32 %reg, 31
  %or = or i32 %and1, 7680
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 40, i32 noundef %or) #4
  %conv2 = zext i16 %data to i32
  tail call void @xgene_enet_wr_mac(ptr noundef %p, i32 noundef 44, i32 noundef %conv2) #4
  %call = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and5 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %call.1 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and5.1 = and i32 %call.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.1)
  %tobool.not.1 = icmp eq i32 %and5.1, 0
  br i1 %tobool.not.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %call.2 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and5.2 = and i32 %call.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.2)
  %tobool.not.2 = icmp eq i32 %and5.2, 0
  br i1 %tobool.not.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %call.3 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and5.3 = and i32 %call.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.3)
  %tobool.not.3 = icmp eq i32 %and5.3, 0
  br i1 %tobool.not.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %call.4 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and5.4 = and i32 %call.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.4)
  %tobool.not.4 = icmp eq i32 %and5.4, 0
  br i1 %tobool.not.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %call.5 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and5.5 = and i32 %call.5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.5)
  %tobool.not.5 = icmp eq i32 %and5.5, 0
  br i1 %tobool.not.5, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %call.6 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and5.6 = and i32 %call.6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.6)
  %tobool.not.6 = icmp eq i32 %and5.6, 0
  br i1 %tobool.not.6, label %if.end.5.cleanup_crit_edge, label %if.end.6

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %call.7 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and5.7 = and i32 %call.7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.7)
  %tobool.not.7 = icmp eq i32 %and5.7, 0
  br i1 %tobool.not.7, label %if.end.6.cleanup_crit_edge, label %if.end.7

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %call.8 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and5.8 = and i32 %call.8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.8)
  %tobool.not.8 = icmp eq i32 %and5.8, 0
  br i1 %tobool.not.8, label %if.end.7.cleanup_crit_edge, label %if.end.8

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %call.9 = tail call i32 @xgene_enet_rd_mac(ptr noundef %p, i32 noundef 52) #4
  %and5.9 = and i32 %call.9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.9)
  %tobool.not.9 = icmp eq i32 %and5.9, 0
  br i1 %tobool.not.9, label %if.end.8.cleanup_crit_edge, label %if.end.9

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.end.8.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xgene_ring_mgr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_enet_ecc_init(ptr nocapture noundef readonly %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %eth_diag_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 19
  %2 = ptrtoint ptr %eth_diag_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eth_diag_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 112
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %5 = ptrtoint ptr %eth_diag_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eth_diag_csr_addr.i, align 8
  %add.ptr.i2 = getelementptr i8, ptr %6, i32 116
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp eq i32 %7, -1
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %do.body3, label %if.end11

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_enet_ecc_init.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_enet_ecc_init, %if.then8)) #4
          to label %cleanup [label %if.then8], !srcloc !36

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgene_enet_ecc_init.__UNIQUE_ID_ddebug504, ptr noundef %1, ptr noundef nonnull @.str.8) #4
  br label %cleanup

if.end11:                                         ; preds = %entry
  %8 = ptrtoint ptr %eth_diag_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eth_diag_csr_addr.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %9, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 0) #4, !srcloc !35
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #4
  %10 = ptrtoint ptr %eth_diag_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eth_diag_csr_addr.i, align 8
  %add.ptr.i6 = getelementptr i8, ptr %11, i32 116
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp14 = icmp eq i32 %12, -1
  br i1 %cmp14, label %if.end11.cleanup_crit_edge, label %do.cond17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.cond17:                                        ; preds = %if.end11
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #4
  %13 = ptrtoint ptr %eth_diag_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %eth_diag_csr_addr.i, align 8
  %add.ptr.i6.1 = getelementptr i8, ptr %14, i32 116
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.1) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp14.1 = icmp eq i32 %15, -1
  br i1 %cmp14.1, label %do.cond17.cleanup_crit_edge, label %do.cond17.1

do.cond17.cleanup_crit_edge:                      ; preds = %do.cond17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.cond17.1:                                      ; preds = %do.cond17
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #4
  %16 = ptrtoint ptr %eth_diag_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eth_diag_csr_addr.i, align 8
  %add.ptr.i6.2 = getelementptr i8, ptr %17, i32 116
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.2) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp14.2 = icmp eq i32 %18, -1
  br i1 %cmp14.2, label %do.cond17.1.cleanup_crit_edge, label %do.cond17.2

do.cond17.1.cleanup_crit_edge:                    ; preds = %do.cond17.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.cond17.2:                                      ; preds = %do.cond17.1
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #4
  %19 = ptrtoint ptr %eth_diag_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eth_diag_csr_addr.i, align 8
  %add.ptr.i6.3 = getelementptr i8, ptr %20, i32 116
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.3) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp14.3 = icmp eq i32 %21, -1
  br i1 %cmp14.3, label %do.cond17.2.cleanup_crit_edge, label %do.cond17.3

do.cond17.2.cleanup_crit_edge:                    ; preds = %do.cond17.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.cond17.3:                                      ; preds = %do.cond17.2
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #4
  %22 = ptrtoint ptr %eth_diag_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %eth_diag_csr_addr.i, align 8
  %add.ptr.i6.4 = getelementptr i8, ptr %23, i32 116
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.4) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp14.4 = icmp eq i32 %24, -1
  br i1 %cmp14.4, label %do.cond17.3.cleanup_crit_edge, label %do.cond17.4

do.cond17.3.cleanup_crit_edge:                    ; preds = %do.cond17.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.cond17.4:                                      ; preds = %do.cond17.3
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #4
  %25 = ptrtoint ptr %eth_diag_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %eth_diag_csr_addr.i, align 8
  %add.ptr.i6.5 = getelementptr i8, ptr %26, i32 116
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.5) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp14.5 = icmp eq i32 %27, -1
  br i1 %cmp14.5, label %do.cond17.4.cleanup_crit_edge, label %do.cond17.5

do.cond17.4.cleanup_crit_edge:                    ; preds = %do.cond17.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.cond17.5:                                      ; preds = %do.cond17.4
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #4
  %28 = ptrtoint ptr %eth_diag_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %eth_diag_csr_addr.i, align 8
  %add.ptr.i6.6 = getelementptr i8, ptr %29, i32 116
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.6) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp14.6 = icmp eq i32 %30, -1
  br i1 %cmp14.6, label %do.cond17.5.cleanup_crit_edge, label %do.cond17.6

do.cond17.5.cleanup_crit_edge:                    ; preds = %do.cond17.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.cond17.6:                                      ; preds = %do.cond17.5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #4
  %31 = ptrtoint ptr %eth_diag_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %eth_diag_csr_addr.i, align 8
  %add.ptr.i6.7 = getelementptr i8, ptr %32, i32 116
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.7) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp14.7 = icmp eq i32 %33, -1
  br i1 %cmp14.7, label %do.cond17.6.cleanup_crit_edge, label %do.cond17.7

do.cond17.6.cleanup_crit_edge:                    ; preds = %do.cond17.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.cond17.7:                                      ; preds = %do.cond17.6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #4
  %34 = ptrtoint ptr %eth_diag_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %eth_diag_csr_addr.i, align 8
  %add.ptr.i6.8 = getelementptr i8, ptr %35, i32 116
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.8) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp14.8 = icmp eq i32 %36, -1
  br i1 %cmp14.8, label %do.cond17.7.cleanup_crit_edge, label %do.cond17.8

do.cond17.7.cleanup_crit_edge:                    ; preds = %do.cond17.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.cond17.8:                                      ; preds = %do.cond17.7
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #4
  %37 = ptrtoint ptr %eth_diag_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %eth_diag_csr_addr.i, align 8
  %add.ptr.i6.9 = getelementptr i8, ptr %38, i32 116
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.9) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp14.9 = icmp eq i32 %39, -1
  br i1 %cmp14.9, label %do.cond17.8.cleanup_crit_edge, label %do.cond17.9

do.cond17.8.cleanup_crit_edge:                    ; preds = %do.cond17.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.cond17.9:                                      ; preds = %do.cond17.8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.9) #7
  br label %cleanup

cleanup:                                          ; preds = %do.cond17.9, %do.cond17.8.cleanup_crit_edge, %do.cond17.7.cleanup_crit_edge, %do.cond17.6.cleanup_crit_edge, %do.cond17.5.cleanup_crit_edge, %do.cond17.4.cleanup_crit_edge, %do.cond17.3.cleanup_crit_edge, %do.cond17.2.cleanup_crit_edge, %do.cond17.1.cleanup_crit_edge, %do.cond17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then8, %do.body3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @xgene_sgmac_ops, !1, !"xgene_sgmac_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c", i32 584, i32 28}
!2 = !{ptr @xgene_sgport_ops, !3, !"xgene_sgport_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c", i32 601, i32 29}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c", i32 300, i32 23}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c", i32 132, i32 22}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c", i32 155, i32 22}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c", i32 548, i32 22}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c", i32 557, i32 22}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c", i32 70, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @xgene_enet_ecc_init.__UNIQUE_ID_ddebug504, !15, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c", i32 82, i32 19}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i8 0, i8 2}
!32 = !{i64 6717915}
!33 = !{i64 2154250774}
!34 = !{i64 2154252129}
!35 = !{i64 6717497}
!36 = !{i64 2148969076, i64 2148969081, i64 2148969094, i64 2148969138, i64 2148969172, i64 2148969193}
