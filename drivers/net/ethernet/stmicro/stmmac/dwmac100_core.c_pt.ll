; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac100_core.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac100_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.169, %struct.anon.170 }
%struct.anon.169 = type { i32, i32, i32 }
%struct.anon.170 = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.159, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.159 = type { ptr }
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
%struct.dsa_port = type { %union.anon.145, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.145 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.134 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.134 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [112 x i8], [8 x %struct.stmmac_rx_queue], i32, [124 x i8], [8 x %struct.stmmac_tx_queue], i32, [124 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [84 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr }
%struct.stmmac_rx_queue = type { i32, i32, [120 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [108 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.163, [84 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.163 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, [64 x i8], ptr, ptr, ptr, %union.anon.164, ptr, ptr, i32, i32, i32, i32, i32, i32, [80 x i8] }
%union.anon.164 = type { ptr }
%struct.stmmac_channel = type { %struct.napi_struct, [32 x i8], %struct.napi_struct, [32 x i8], %struct.napi_struct, ptr, %struct.spinlock, i32, [108 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }

@dwmac100_ops = dso_local constant { %struct.stmmac_ops, [52 x i8] } { %struct.stmmac_ops { ptr @dwmac100_core_init, ptr @stmmac_set_mac, ptr @dwmac100_rx_ipc_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwmac100_dump_mac_regs, ptr @dwmac100_irq_status, ptr null, ptr @dwmac100_set_filter, ptr @dwmac100_flow_ctrl, ptr @dwmac100_pmt, ptr @dwmac100_set_umac_addr, ptr @dwmac100_get_umac_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwmac100_set_mac_loopback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@dwmac100_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 183, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\09DWMAC100\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dwmac100_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac100_core.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwmac100_setup._entry_ptr = internal global ptr @dwmac100_setup._entry, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"dwmac100_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 165, i32 25 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [55 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac100_core.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 183, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @dwmac100_setup._entry, ptr @dwmac100_setup._entry_ptr, ptr @dwmac100_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac100_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac100_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac100_core_init(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !20
  %3 = or i32 %2, 65552
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %5 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsa_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.netdev_uses_dsa.exit.thread_crit_edge, label %netdev_uses_dsa.exit

entry.netdev_uses_dsa.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %netdev_uses_dsa.exit.thread

netdev_uses_dsa.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rcv.i = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %rcv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rcv.i, align 4
  %tobool2.i.not = icmp eq ptr %8, null
  %and = and i32 %4, -257
  %spec.select = select i1 %tobool2.i.not, i32 %4, i32 %and
  br label %netdev_uses_dsa.exit.thread

netdev_uses_dsa.exit.thread:                      ; preds = %netdev_uses_dsa.exit, %entry.netdev_uses_dsa.exit.thread_crit_edge
  %9 = phi i32 [ %4, %entry.netdev_uses_dsa.exit.thread_crit_edge ], [ %spec.select, %netdev_uses_dsa.exit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %10) #7, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %add.ptr7 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 8454144) #7, !srcloc !22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_set_mac(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwmac100_rx_ipc_enable(ptr nocapture noundef readnone %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac100_dump_mac_regs(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %reg_space) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !19
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %4 = ptrtoint ptr %reg_space to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %reg_space, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !19
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  %arrayidx8 = getelementptr i32, ptr %reg_space, i32 1
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx8, align 4
  %add.ptr11 = getelementptr i8, ptr %1, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !19
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  %arrayidx15 = getelementptr i32, ptr %reg_space, i32 2
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx15, align 4
  %add.ptr18 = getelementptr i8, ptr %1, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #7, !srcloc !19
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %arrayidx22 = getelementptr i32, ptr %reg_space, i32 3
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx22, align 4
  %add.ptr25 = getelementptr i8, ptr %1, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #7, !srcloc !19
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %arrayidx29 = getelementptr i32, ptr %reg_space, i32 4
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx29, align 4
  %add.ptr32 = getelementptr i8, ptr %1, i32 28
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #7, !srcloc !19
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %arrayidx36 = getelementptr i32, ptr %reg_space, i32 7
  %19 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx36, align 4
  %add.ptr39 = getelementptr i8, ptr %1, i32 32
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #7, !srcloc !19
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  %arrayidx43 = getelementptr i32, ptr %reg_space, i32 8
  %22 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx43, align 4
  %add.ptr46 = getelementptr i8, ptr %1, i32 36
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #7, !srcloc !19
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  %arrayidx50 = getelementptr i32, ptr %reg_space, i32 9
  %25 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx50, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwmac100_irq_status(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %x) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac100_set_filter(ptr nocapture noundef readnone %hw, ptr noundef readonly %dev) #0 align 64 {
entry:
  %mc_filter = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !19
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = and i32 %4, -958465
  %and2 = or i32 %or, 262144
  br label %do.body78

if.else:                                          ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %8)
  %cmp = icmp slt i32 %8, 65
  %and4 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = select i1 %cmp, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %if.else14, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %or7 = and i32 %4, -950273
  %and8 = or i32 %or7, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %add.ptr9 = getelementptr i8, ptr %2, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 -1) #7, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %add.ptr13 = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 -1) #7, !srcloc !22
  br label %do.body78

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp17 = icmp eq i32 %8, 0
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  %and19 = and i32 %4, -958465
  br label %do.body78

if.else20:                                        ; preds = %if.else14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_filter) #7
  %9 = getelementptr inbounds [2 x i32], ptr %mc_filter, i32 0, i32 1
  %or21 = and i32 %4, -958465
  %and22 = or i32 %or21, 8192
  %10 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %mc_filter, align 8
  %11 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %11)
  %ha.0115 = load ptr, ptr %mc, align 4
  %cmp29.not116 = icmp eq ptr %ha.0115, %mc
  br i1 %cmp29.not116, label %if.else20.do.body66_crit_edge, label %if.else20.cond.end_crit_edge

if.else20.cond.end_crit_edge:                     ; preds = %if.else20
  br label %cond.end

if.else20.do.body66_crit_edge:                    ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body66

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.else20.cond.end_crit_edge
  %ha.0117 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.0115, %if.else20.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0117, i32 0, i32 2
  %call31 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #10
  %12 = and i32 %call31, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %14 to i32
  %shr56 = lshr i32 %conv2.i.i, 2
  %and57 = and i32 %shr56, 31
  %shl58 = shl nuw i32 1, %and57
  %15 = lshr i32 %conv2.i.i, 7
  %arrayidx = getelementptr [2 x i32], ptr %mc_filter, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %or60 = or i32 %shl58, %17
  store i32 %or60, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %ha.0117 to i32
  call void @__asan_load4_noabort(i32 %18)
  %ha.0 = load ptr, ptr %ha.0117, align 4
  %cmp29.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp29.not, label %cond.end.do.body66_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.end.do.body66_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body66

do.body66:                                        ; preds = %cond.end.do.body66_crit_edge, %if.else20.do.body66_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mc_filter, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %add.ptr70 = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %21) #7, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %9, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %add.ptr75 = getelementptr i8, ptr %2, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %24) #7, !srcloc !22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_filter) #7
  br label %do.body78

do.body78:                                        ; preds = %do.body66, %if.then18, %if.then6, %if.then
  %value.0 = phi i32 [ %and2, %if.then ], [ %and8, %if.then6 ], [ %and19, %if.then18 ], [ %and22, %do.body66 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %25) #7, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac100_flow_ctrl(ptr nocapture noundef readonly %hw, i32 noundef %duplex, i32 noundef %fc, i32 noundef %pause_time, i32 noundef %tx_cnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duplex)
  %tobool.not = icmp eq i32 %duplex, 0
  %shl = shl i32 %pause_time, 16
  %or = or i32 %shl, 2
  %flow.0 = select i1 %tobool.not, i32 2, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %flow.0)
  %add.ptr = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwmac100_pmt(ptr nocapture noundef %hw, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac100_set_umac_addr(ptr nocapture noundef readonly %hw, ptr noundef %addr, i32 noundef %reg_n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  tail call void @stmmac_set_mac_addr(ptr noundef %1, ptr noundef %addr, i32 noundef 4, i32 noundef 8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac100_get_umac_addr(ptr nocapture noundef readonly %hw, ptr noundef %addr, i32 noundef %reg_n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  tail call void @stmmac_get_mac_addr(ptr noundef %1, ptr noundef %addr, i32 noundef 4, i32 noundef 8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac100_set_mac_loopback(ptr noundef %ioaddr, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ioaddr) #7, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %1 = and i32 %0, -8193
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %masksel = select i1 %enable, i32 2097152, i32 0
  %value.0 = or i32 %2, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 %3) #7, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwmac100_setup(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %device = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str) #11
  %ioaddr = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 13
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 32
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %pcsr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pcsr, align 4
  %link = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9
  %duplex = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 5
  %7 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1048576, ptr %duplex, align 4
  %speed10 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %speed10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %speed10, align 4
  %speed100 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %speed100 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %speed100, align 4
  %speed1000 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 3
  %10 = ptrtoint ptr %speed1000 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %speed1000, align 4
  %11 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 134217728, ptr %link, align 4
  %mii = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 20, ptr %mii, align 4
  %data = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 24, ptr %data, align 4
  %addr_shift = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 2
  %14 = ptrtoint ptr %addr_shift to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 11, ptr %addr_shift, align 4
  %addr_mask = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 4
  %15 = ptrtoint ptr %addr_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 63488, ptr %addr_mask, align 4
  %reg_shift = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 3
  %16 = ptrtoint ptr %reg_shift to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6, ptr %reg_shift, align 4
  %reg_mask = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 5
  %17 = ptrtoint ptr %reg_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1984, ptr %reg_mask, align 4
  %clk_csr_shift = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 6
  %18 = ptrtoint ptr %clk_csr_shift to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %clk_csr_shift, align 4
  %clk_csr_mask = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 7
  %19 = ptrtoint ptr %clk_csr_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 60, ptr %clk_csr_mask, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_set_mac_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_get_mac_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @dwmac100_ops, !1, !"dwmac100_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac100_core.c", i32 165, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac100_core.c", i32 183, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dwmac100_setup._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @dwmac100_setup._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 6141295}
!20 = !{i64 2158777738}
!21 = !{i64 2158778037}
!22 = !{i64 6140877}
!23 = !{i64 2158778457}
!24 = !{i64 2158779159}
!25 = !{i64 2158779675}
!26 = !{i64 2158780191}
!27 = !{i64 2158780707}
!28 = !{i64 2158781223}
!29 = !{i64 2158781739}
!30 = !{i64 2158782255}
!31 = !{i64 2158782771}
!32 = !{i64 2158783320}
!33 = !{i64 2158783749}
!34 = !{i64 2158784181}
!35 = !{i64 2158788876}
!36 = !{i64 2158789316}
!37 = !{i64 2158789749}
!38 = !{i64 2158790174}
!39 = !{i64 2158790859}
!40 = !{i64 2158791110}
