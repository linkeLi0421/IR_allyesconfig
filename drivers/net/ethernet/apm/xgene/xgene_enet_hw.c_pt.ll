; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/apm/xgene/xgene_enet_hw.c_pt.bc'
source_filename = "../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.xgene_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgene_port_ops = type { ptr, ptr, ptr, ptr }
%struct.xgene_ring_ops = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.xgene_enet_desc_ring = type { ptr, i16, i16, i16, i16, i16, i16, i16, [16 x i8], i32, [6 x i32], ptr, ptr, i32, i32, ptr, i16, i16, i32, i8, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.napi_struct, %union.anon.144, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.144 = type { ptr }
%struct.xgene_enet_pdata = type { ptr, ptr, i32, ptr, ptr, i32, [8 x ptr], [8 x ptr], [8 x i16], [8 x i16], ptr, i32, i32, [16 x i32], i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.xgene_enet_cle, ptr, i64, i64, %struct.spinlock, ptr, %struct.spinlock, ptr, ptr, ptr, %struct.delayed_work, i32, i8, i8, i8, i16, [4 x i32], [4 x i32], %struct.spinlock, i8, i8, i8, ptr, i8, i32, i8, i8 }
%struct.xgene_enet_cle = type { ptr, %struct.xgene_cle_ptree, i32, i32, i32, i32, i32 }
%struct.xgene_cle_ptree = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.xgene_enet_raw_desc = type { i64, i64, i64, i64 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mac write failed, addr: %04x data: %08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mac read failed, addr: %04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mac stats read failed, addr: %04x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not connect to PHY\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"APM X-Gene MDIO bus\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xgene-mii\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to register MDIO bus\0A\00", [35 x i8] zeroinitializer }, align 32
@xgene_gmac_ops = dso_local constant { %struct.xgene_mac_ops, [36 x i8] } { %struct.xgene_mac_ops { ptr @xgene_gmac_init, ptr @xgene_gmac_reset, ptr @xgene_gmac_tx_enable, ptr @xgene_gmac_rx_enable, ptr @xgene_gmac_tx_disable, ptr @xgene_gmac_rx_disable, ptr @xgene_gmac_get_drop_cnt, ptr @xgene_gmac_set_speed, ptr @xgene_gmac_set_mac_addr, ptr @xgene_enet_set_frame_size, ptr null, ptr null, ptr @xgene_gmac_enable_tx_pause, ptr @xgene_gmac_flowctl_rx, ptr @xgene_gmac_flowctl_tx }, [36 x i8] zeroinitializer }, align 32
@xgene_gport_ops = dso_local constant { %struct.xgene_port_ops, [16 x i8] } { %struct.xgene_port_ops { ptr @xgene_enet_reset, ptr @xgene_enet_clear, ptr @xgene_enet_cle_bypass, ptr @xgene_gport_shutdown }, [16 x i8] zeroinitializer }, align 32
@xgene_ring1_ops = dso_local global { %struct.xgene_ring_ops, [40 x i8] } { %struct.xgene_ring_ops { i8 5, i8 6, ptr @xgene_enet_setup_ring, ptr @xgene_enet_clear_ring, ptr @xgene_enet_wr_cmd, ptr @xgene_enet_ring_len, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apm,xgene-mdio\00", [17 x i8] zeroinitializer }, align 32
@xgene_mdiobus_register.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, i8 0, i8 -28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xgene_enet\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xgene_mdiobus_register\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/apm/xgene/xgene_enet_hw.c\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No mdio node in the dts\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"phy-channel\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy-addr\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to release memory from shutdown\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 26]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 283, i32 20 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 341, i32 20 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 369, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 853, i32 40 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 863, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 953, i32 19 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 956, i32 42 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 956, i32 51 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 964, i32 20 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"xgene_gmac_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 997, i32 28 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"xgene_gport_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1013, i32 29 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"xgene_ring1_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1020, i32 23 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 908, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 915, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 930, i32 38 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 932, i32 39 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [50 x i8] c"../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 405, i32 20 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @xgene_gmac_ops, ptr @xgene_gport_ops, ptr @xgene_ring1_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_gmac_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_gport_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_ring1_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xgene_enet_parse_error(ptr nocapture noundef %ring, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status, label %entry.sw.epilog_crit_edge [
    i32 16, label %sw.bb
    i32 17, label %entry.sw.bb1_crit_edge
    i32 26, label %entry.sw.bb1_crit_edge18
    i32 18, label %sw.bb3
    i32 19, label %sw.bb5
    i32 20, label %sw.bb7
    i32 21, label %sw.bb10
  ]

entry.sw.bb1_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_crc_errors = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 41
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge18
  %rx_errors = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 39
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_frame_errors = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 42
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_length_errors = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 40
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_frame_errors8 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 42
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_fifo_errors = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 43
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb10, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %rx_fifo_errors.sink17 = phi ptr [ %rx_fifo_errors, %sw.bb10 ], [ %rx_frame_errors8, %sw.bb7 ], [ %rx_length_errors, %sw.bb5 ], [ %rx_frame_errors, %sw.bb3 ], [ %rx_errors, %sw.bb1 ], [ %rx_crc_errors, %sw.bb ]
  %1 = ptrtoint ptr %rx_fifo_errors.sink17 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %rx_fifo_errors.sink17, align 8
  %inc11 = add i64 %2, 1
  store i64 %inc11, ptr %rx_fifo_errors.sink17, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef %wr_addr, i32 noundef %wr_data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %mdio_driver = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 50
  %2 = ptrtoint ptr %mdio_driver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mdio_driver, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %phy_mode = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 27
  %6 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_mode, align 8
  %8 = add i32 %7, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %if.then, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  %bus5 = getelementptr inbounds %struct.mdio_device, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %bus5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus5, align 8
  %priv = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  tail call void @xgene_mdio_wr_mac(ptr noundef %13, i32 noundef %wr_addr, i32 noundef %wr_data) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mcx_mac_addr = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 20
  %14 = ptrtoint ptr %mcx_mac_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mcx_mac_addr, align 4
  %add.ptr7 = getelementptr i8, ptr %15, i32 8
  %add.ptr9 = getelementptr i8, ptr %15, i32 4
  %add.ptr11 = getelementptr i8, ptr %15, i32 16
  %mac_lock = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %mac_lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %wr_addr) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %16) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %wr_data) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %17) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 128) #7, !srcloc !49
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool13.not40 = icmp eq i32 %18, 0
  br i1 %tobool13.not40, label %if.end.while.body_crit_edge, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %wait.042 = phi i8 [ %dec, %while.body.while.body_crit_edge ], [ 10, %if.end.while.body_crit_edge ]
  %dec = add nsw i8 %wait.042, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #7
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool13.not = icmp eq i32 %20, 0
  %tobool13.not.not = xor i1 %tobool13.not, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool14.not = icmp eq i8 %dec, 0
  %or.cond = select i1 %tobool13.not.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %tobool13.not, label %if.then16, label %while.end.if.end17_crit_edge

while.end.if.end17_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %wr_addr, i32 noundef %wr_data) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %while.end.if.end17_crit_edge, %if.end.if.end17_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #7, !srcloc !49
  tail call void @_raw_spin_unlock(ptr noundef %mac_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgene_mdio_wr_mac(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef %rd_addr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %mdio_driver = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 50
  %2 = ptrtoint ptr %mdio_driver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mdio_driver, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %phy_mode = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 27
  %6 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_mode, align 8
  %8 = add i32 %7, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %if.then, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  %bus5 = getelementptr inbounds %struct.mdio_device, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %bus5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus5, align 8
  %priv = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %call6 = tail call i32 @xgene_mdio_rd_mac(ptr noundef %13, i32 noundef %rd_addr) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mcx_mac_addr = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 20
  %14 = ptrtoint ptr %mcx_mac_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mcx_mac_addr, align 4
  %add.ptr8 = getelementptr i8, ptr %15, i32 12
  %add.ptr10 = getelementptr i8, ptr %15, i32 4
  %add.ptr12 = getelementptr i8, ptr %15, i32 16
  %mac_lock = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %mac_lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %rd_addr) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %16) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 64) #7, !srcloc !49
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool14.not41 = icmp eq i32 %17, 0
  br i1 %tobool14.not41, label %if.end.while.body_crit_edge, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %wait.043 = phi i8 [ %dec, %while.body.while.body_crit_edge ], [ 10, %if.end.while.body_crit_edge ]
  %dec = add nsw i8 %wait.043, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #7
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool14.not = icmp eq i32 %19, 0
  %tobool14.not.not = xor i1 %tobool14.not, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool15.not = icmp eq i8 %dec, 0
  %or.cond = select i1 %tobool14.not.not, i1 true, i1 %tobool15.not
  br i1 %or.cond, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %tobool14.not, label %if.then17, label %while.end.if.end18_crit_edge

while.end.if.end18_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then17:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %rd_addr) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %while.end.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !50
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #7, !srcloc !49
  tail call void @_raw_spin_unlock(ptr noundef %mac_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then
  %retval.0 = phi i32 [ %call6, %if.then ], [ %21, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgene_mdio_rd_mac(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xgene_enet_rd_stat(ptr noundef %pdata, i32 noundef %rd_addr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mcx_stats_addr = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 22
  %0 = ptrtoint ptr %mcx_stats_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcx_stats_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %add.ptr4 = getelementptr i8, ptr %1, i32 24
  %add.ptr6 = getelementptr i8, ptr %1, i32 36
  %stats_lock = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %stats_lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %rd_addr) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 64) #7, !srcloc !49
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not19 = icmp eq i32 %3, 0
  br i1 %tobool.not19, label %entry.while.body_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %wait.021 = phi i8 [ %dec, %while.body.while.body_crit_edge ], [ 10, %entry.while.body_crit_edge ]
  %dec = add nsw i8 %wait.021, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #7
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool7.not = icmp eq i8 %dec, 0
  %or.cond = select i1 %tobool.not.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %tobool.not, label %if.then, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef %rd_addr) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr2 = getelementptr i8, ptr %1, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !50
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #7, !srcloc !49
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock) #7
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xgene_ring_mgr_init(ptr nocapture noundef readonly %p) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_csr_addr = getelementptr inbounds %struct.xgene_enet_pdata, ptr %p, i32 0, i32 25
  %0 = ptrtoint ptr %ring_csr_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring_csr_addr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 49672
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %ring_csr_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ring_csr_addr, align 8
  %add.ptr2 = getelementptr i8, ptr %4, i32 49664
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %tobool4.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xgene_enet_phy_connect(ptr noundef %ndev) local_unnamed_addr #1 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %ndev, i32 2320
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %phy_mode = getelementptr i8, ptr %ndev, i32 2544
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %6 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.cond.preheader.of_parse_phandle.exit_crit_edge

for.cond.preheader.of_parse_phandle.exit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_parse_phandle.exit

for.cond:                                         ; preds = %of_parse_phandle.exit
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %9 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i.1 = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %for.cond.of_parse_phandle.exit.1_crit_edge

for.cond.of_parse_phandle.exit.1_crit_edge:       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_parse_phandle.exit.1

if.end.i.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit.1

of_parse_phandle.exit.1:                          ; preds = %if.end.i.1, %for.cond.of_parse_phandle.exit.1_crit_edge
  %retval.0.i.1 = phi ptr [ %11, %if.end.i.1 ], [ null, %for.cond.of_parse_phandle.exit.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %12 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phy_mode, align 8
  %call4.1 = call ptr @of_phy_connect(ptr noundef %ndev, ptr noundef %retval.0.i.1, ptr noundef nonnull @xgene_enet_adjust_link, i32 noundef 0, i32 noundef %13) #7
  call void @of_node_put(ptr noundef %retval.0.i.1) #7
  %tobool5.not.1 = icmp eq ptr %call4.1, null
  br i1 %tobool5.not.1, label %for.cond.1, label %of_parse_phandle.exit.1.if.end10_crit_edge

of_parse_phandle.exit.1.if.end10_crit_edge:       ; preds = %of_parse_phandle.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

for.cond.1:                                       ; preds = %of_parse_phandle.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end.i:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %for.cond.preheader.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ null, %for.cond.preheader.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %16 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phy_mode, align 8
  %call4 = call ptr @of_phy_connect(ptr noundef %ndev, ptr noundef %retval.0.i, ptr noundef nonnull @xgene_enet_adjust_link, i32 noundef 0, i32 noundef %17) #7
  call void @of_node_put(ptr noundef %retval.0.i) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %for.cond, label %of_parse_phandle.exit.if.end10_crit_edge

of_parse_phandle.exit.if.end10_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %of_parse_phandle.exit.if.end10_crit_edge, %of_parse_phandle.exit.1.if.end10_crit_edge
  %call4.lcssa = phi ptr [ %call4, %of_parse_phandle.exit.if.end10_crit_edge ], [ %call4.1, %of_parse_phandle.exit.1.if.end10_crit_edge ]
  %phy_speed = getelementptr i8, ptr %ndev, i32 2312
  %18 = ptrtoint ptr %phy_speed to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %phy_speed, align 8
  call void @phy_remove_link_mode(ptr noundef nonnull %call4.lcssa, i32 noundef 0) #7
  call void @phy_remove_link_mode(ptr noundef nonnull %call4.lcssa, i32 noundef 2) #7
  call void @phy_remove_link_mode(ptr noundef nonnull %call4.lcssa, i32 noundef 4) #7
  call void @phy_support_asym_pause(ptr noundef nonnull %call4.lcssa) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %for.cond.1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -19, %for.cond.1 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_adjust_link(ptr noundef %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %mac_ops1 = getelementptr i8, ptr %ndev, i32 2668
  %0 = ptrtoint ptr %mac_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_ops1, align 4
  %phydev2 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev2, align 16
  %link = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %link, align 8
  %5 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %phy_speed = getelementptr i8, ptr %ndev, i32 2312
  %6 = ptrtoint ptr %phy_speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_speed, align 8
  %speed = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp eq i32 %7, %9
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %phy_speed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %phy_speed, align 8
  %set_speed = getelementptr inbounds %struct.xgene_mac_ops, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %set_speed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_speed, align 4
  tail call void %12(ptr noundef %add.ptr.i) #7
  %rx_enable = getelementptr inbounds %struct.xgene_mac_ops, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %rx_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_enable, align 4
  tail call void %14(ptr noundef %add.ptr.i) #7
  %tx_enable = getelementptr inbounds %struct.xgene_mac_ops, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %tx_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_enable, align 4
  tail call void %16(ptr noundef %add.ptr.i) #7
  tail call void @phy_print_status(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %17 = ptrtoint ptr %phydev2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phydev2, align 16
  %duplex.i = getelementptr inbounds %struct.phy_device, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.end.if.end8_crit_edge, label %lor.lhs.false.i

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

lor.lhs.false.i:                                  ; preds = %if.end
  %pause_autoneg.i = getelementptr i8, ptr %ndev, i32 2928
  %21 = ptrtoint ptr %pause_autoneg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pause_autoneg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not.i = icmp eq i32 %22, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end8_crit_edge, label %if.end.i

lor.lhs.false.i.if.end8_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.i:                                         ; preds = %lor.lhs.false.i
  %tx_pause3.i = getelementptr i8, ptr %ndev, i32 2932
  %23 = ptrtoint ptr %tx_pause3.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tx_pause3.i, align 4, !range !47
  %rx_pause8.i = getelementptr i8, ptr %ndev, i32 2933
  %25 = ptrtoint ptr %rx_pause8.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rx_pause8.i, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool9.not.i = icmp eq i8 %26, 0
  %27 = or i8 %24, 2
  %flowctl.1.i = select i1 %tobool9.not.i, i8 %24, i8 %27
  %conv15.i = zext i8 %flowctl.1.i to i32
  %and.i.i = and i32 %conv15.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.store.select.i.i = select i1 %tobool.not.i.i, i16 0, i16 3072
  %and1.i.i = and i32 %conv15.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  %28 = xor i16 %spec.store.select.i.i, 2048
  %spec.select.i.i = select i1 %tobool2.not.i.i, i16 %spec.store.select.i.i, i16 %28
  %pause.i = getelementptr inbounds %struct.phy_device, ptr %18, i32 0, i32 11
  %29 = ptrtoint ptr %pause.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pause.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool17.not.i = icmp eq i32 %30, 0
  %rmtadv.0.i = select i1 %tobool17.not.i, i16 0, i16 1024
  %asym_pause.i = getelementptr inbounds %struct.phy_device, ptr %18, i32 0, i32 12
  %31 = ptrtoint ptr %asym_pause.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %asym_pause.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool20.not.i = icmp eq i32 %32, 0
  %33 = or i16 %rmtadv.0.i, 2048
  %rmtadv.1.i = select i1 %tobool20.not.i, i16 %rmtadv.0.i, i16 %33
  %and25.i.i = and i16 %spec.select.i.i, %rmtadv.1.i
  %and.i2.i = zext i16 %and25.i.i to i32
  %and2.i.i = and i32 %and.i2.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i3.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i3.i, label %if.else.i.i, label %if.end.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge

if.end.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mii_resolve_flowctrl_fdx.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  %and6.i.i = and i32 %and.i2.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge, label %if.then8.i.i

if.else.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mii_resolve_flowctrl_fdx.exit.i

if.then8.i.i:                                     ; preds = %if.else.i.i
  %34 = and i16 %spec.select.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool11.not.i.i = icmp eq i16 %34, 0
  br i1 %tobool11.not.i.i, label %if.else13.i.i, label %if.then8.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge

if.then8.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mii_resolve_flowctrl_fdx.exit.i

if.else13.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = lshr exact i16 %rmtadv.1.i, 10
  %36 = and i16 %35, 1
  %37 = zext i16 %36 to i32
  br label %mii_resolve_flowctrl_fdx.exit.i

mii_resolve_flowctrl_fdx.exit.i:                  ; preds = %if.else13.i.i, %if.then8.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge, %if.else.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge, %if.end.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge
  %cap.0.i.i = phi i32 [ 0, %if.else.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge ], [ 3, %if.end.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge ], [ 2, %if.then8.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge ], [ %37, %if.else13.i.i ]
  %and.i = and i32 %cap.0.i.i, 1
  %and31.i = and i32 %cap.0.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.i = icmp ne i32 %and31.i, 0
  %and31.lobit.i = lshr exact i32 %and31.i, 1
  %38 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %38)
  %cmp.not.i = icmp eq i32 %and.i, %38
  br i1 %cmp.not.i, label %mii_resolve_flowctrl_fdx.exit.i.if.end46.i_crit_edge, label %if.then41.i

mii_resolve_flowctrl_fdx.exit.i.if.end46.i_crit_edge: ; preds = %mii_resolve_flowctrl_fdx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

if.then41.i:                                      ; preds = %mii_resolve_flowctrl_fdx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool28.i = icmp ne i32 %and.i, 0
  %39 = trunc i32 %and.i to i8
  %40 = ptrtoint ptr %tx_pause3.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %tx_pause3.i, align 4
  %41 = ptrtoint ptr %mac_ops1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mac_ops1, align 4
  %flowctl_tx.i = getelementptr inbounds %struct.xgene_mac_ops, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %flowctl_tx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %flowctl_tx.i, align 4
  tail call void %44(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool28.i) #7
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then41.i, %mii_resolve_flowctrl_fdx.exit.i.if.end46.i_crit_edge
  %45 = ptrtoint ptr %rx_pause8.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rx_pause8.i, align 1, !range !47
  %47 = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and31.lobit.i, i32 %47)
  %cmp50.not.i = icmp eq i32 %and31.lobit.i, %47
  br i1 %cmp50.not.i, label %if.end46.i.if.end8_crit_edge, label %if.then52.i

if.end46.i.if.end8_crit_edge:                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then52.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = trunc i32 %and31.lobit.i to i8
  %49 = ptrtoint ptr %rx_pause8.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %rx_pause8.i, align 1
  %50 = ptrtoint ptr %mac_ops1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mac_ops1, align 4
  %flowctl_rx.i = getelementptr inbounds %struct.xgene_mac_ops, ptr %51, i32 0, i32 13
  %52 = ptrtoint ptr %flowctl_rx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %flowctl_rx.i, align 4
  tail call void %53(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool32.i) #7
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_disable = getelementptr inbounds %struct.xgene_mac_ops, ptr %1, i32 0, i32 5
  %54 = ptrtoint ptr %rx_disable to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_disable, align 4
  tail call void %55(ptr noundef %add.ptr.i) #7
  %tx_disable = getelementptr inbounds %struct.xgene_mac_ops, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %tx_disable to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx_disable, align 4
  tail call void %57(ptr noundef %add.ptr.i) #7
  %phy_speed7 = getelementptr i8, ptr %ndev, i32 2312
  %58 = ptrtoint ptr %phy_speed7 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %phy_speed7, align 8
  tail call void @phy_print_status(ptr noundef %3) #7
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then52.i, %if.end46.i.if.end8_crit_edge, %lor.lhs.false.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_remove_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_asym_pause(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xgene_enet_mdio_config(ptr nocapture noundef %pdata) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %call.i = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.5, ptr %name, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @xgene_mdio_rgmii_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xgene_mdio_rgmii_write, ptr %write, align 8
  %id = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 2
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef %1)
  %mcx_mac_addr = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 20
  %5 = ptrtoint ptr %mcx_mac_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mcx_mac_addr, align 4
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %priv, align 8
  %pdev = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 4
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 9
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 4
  %call5 = tail call fastcc i32 @xgene_mdiobus_register(ptr noundef %pdata, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.8) #10
  tail call void @mdiobus_free(ptr noundef nonnull %call.i) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %mdio_bus9 = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 1
  %11 = ptrtoint ptr %mdio_bus9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %mdio_bus9, align 4
  %call10 = tail call i32 @xgene_enet_phy_connect(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.then12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end8
  %12 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata, align 8
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 145
  %14 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phydev.i, align 16
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then12.xgene_enet_mdio_remove.exit_crit_edge, label %if.then.i

if.then12.xgene_enet_mdio_remove.exit_crit_edge:  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_enet_mdio_remove.exit

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_disconnect(ptr noundef nonnull %15) #7
  br label %xgene_enet_mdio_remove.exit

xgene_enet_mdio_remove.exit:                      ; preds = %if.then.i, %if.then12.xgene_enet_mdio_remove.exit_crit_edge
  %16 = ptrtoint ptr %mdio_bus9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdio_bus9, align 4
  tail call void @mdiobus_unregister(ptr noundef %17) #7
  %18 = ptrtoint ptr %mdio_bus9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdio_bus9, align 4
  tail call void @mdiobus_free(ptr noundef %19) #7
  %20 = ptrtoint ptr %mdio_bus9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %mdio_bus9, align 4
  br label %cleanup

cleanup:                                          ; preds = %xgene_enet_mdio_remove.exit, %if.end8.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %xgene_enet_mdio_remove.exit ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgene_mdio_rgmii_read(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgene_mdio_rgmii_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgene_mdiobus_register(ptr nocapture noundef readonly %pdata, ptr noundef %mdio) unnamed_addr #1 align 64 {
entry:
  %phy_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_addr) #7
  %4 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %phy_addr, align 4, !annotation !52
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end22, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @of_get_next_child(ptr noundef nonnull %6, ptr noundef null) #7
  %cmp.not66 = icmp eq ptr %call, null
  br i1 %cmp.not66, label %if.then.do.body11_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.do.body11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %child_np.067 = phi ptr [ %call8, %for.inc.for.body_crit_edge ], [ %call, %if.then.for.body_crit_edge ]
  %call4 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %child_np.067, ptr noundef nonnull @.str.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.inc, label %if.end20

for.inc:                                          ; preds = %for.body
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call8 = tail call ptr @of_get_next_child(ptr noundef %8, ptr noundef nonnull %child_np.067) #7
  %cmp.not = icmp eq ptr %call8, null
  br i1 %cmp.not, label %for.inc.do.body11_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.body11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

do.body11:                                        ; preds = %for.inc.do.body11_crit_edge, %if.then.do.body11_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_mdiobus_register.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_mdiobus_register, %if.then16)) #7
          to label %cleanup [label %if.then16], !srcloc !53

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgene_mdiobus_register.__UNIQUE_ID_ddebug504, ptr noundef %3, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end20:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 @of_mdiobus_register(ptr noundef %mdio, ptr noundef nonnull %child_np.067) #7
  br label %cleanup

if.end22:                                         ; preds = %entry
  %phy_mask = getelementptr inbounds %struct.mii_bus, ptr %mdio, i32 0, i32 13
  %9 = ptrtoint ptr %phy_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %phy_mask, align 8
  %call23 = tail call i32 @__mdiobus_register(ptr noundef %mdio, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef nonnull %phy_addr, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not = icmp eq i32 %call.i, 0
  br i1 %tobool28.not, label %if.end26.if.end34_crit_edge, label %if.then29

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then29:                                        ; preds = %if.end26
  %call.i61 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull %phy_addr, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %phi.cmp = icmp eq i32 %call.i61, 0
  br i1 %phi.cmp, label %if.then29.if.end34_crit_edge, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.end34:                                         ; preds = %if.then29.if.end34_crit_edge, %if.end26.if.end34_crit_edge
  %10 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy_addr, align 4
  %call35 = call ptr @xgene_enet_phy_register(ptr noundef %mdio, i32 noundef %11) #7
  %tobool36.not = icmp eq ptr %call35, null
  %. = select i1 %tobool36.not, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then29.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end20, %if.then16, %do.body11
  %retval.0 = phi i32 [ %call21, %if.end20 ], [ -6, %if.then16 ], [ %call23, %if.end22.cleanup_crit_edge ], [ -22, %if.then29.cleanup_crit_edge ], [ %., %if.end34 ], [ -6, %do.body11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_addr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgene_enet_mdio_remove(ptr nocapture noundef %pdata) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_disconnect(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mdio_bus = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 1
  %4 = ptrtoint ptr %mdio_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdio_bus, align 4
  tail call void @mdiobus_unregister(ptr noundef %5) #7
  %6 = ptrtoint ptr %mdio_bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_bus, align 4
  tail call void @mdiobus_free(ptr noundef %7) #7
  %8 = ptrtoint ptr %mdio_bus to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %mdio_bus, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgene_enet_phy_disconnect(ptr nocapture noundef readonly %pdata) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_disconnect(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_gmac_init(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_driver = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 50
  %0 = ptrtoint ptr %mdio_driver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mdio_driver, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 0, i32 noundef -2147483648) #7
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 0, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @xgene_gmac_set_speed(ptr noundef %pdata)
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 8
  %dev_addr1.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr1.i, align 64
  %arrayidx.i = getelementptr i8, ptr %5, i32 3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx2.i = getelementptr i8, ptr %5, i32 2
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %9 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 16
  %or.i = or i32 %shl4.i, %shl.i
  %arrayidx5.i = getelementptr i8, ptr %5, i32 1
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %11 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 8
  %or8.i = or i32 %or.i, %shl7.i
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %5, align 1
  %conv10.i = zext i8 %13 to i32
  %or11.i = or i32 %or8.i, %conv10.i
  %arrayidx12.i = getelementptr i8, ptr %5, i32 5
  %14 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %15 to i32
  %shl14.i = shl nuw i32 %conv13.i, 24
  %arrayidx15.i = getelementptr i8, ptr %5, i32 4
  %16 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %17 to i32
  %shl17.i = shl nuw nsw i32 %conv16.i, 16
  %or18.i = or i32 %shl17.i, %shl14.i
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 64, i32 noundef %or11.i) #7
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 68, i32 noundef %or18.i) #7
  %call = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 32)
  %or.i27 = or i32 %call, 7
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 32, i32 noundef %or.i27)
  %eth_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 17
  %18 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %21 = or i32 %20, 128
  %22 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i29 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %21) #7, !srcloc !49
  %24 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i31 = getelementptr i8, ptr %25, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 0) #7, !srcloc !49
  %mcx_mac_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 21
  %26 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i32 = getelementptr i8, ptr %27, i32 560
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %29 = and i32 %28, -65536
  %30 = or i32 %29, 128
  %31 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i34 = getelementptr i8, ptr %32, i32 560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %30) #7, !srcloc !49
  %33 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i36 = getelementptr i8, ptr %34, i32 1332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 2097152000) #7, !srcloc !49
  %35 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i38 = getelementptr i8, ptr %36, i32 1344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 1828716544) #7, !srcloc !49
  %tx_pause = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 54
  %37 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tx_pause, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool2 = icmp ne i8 %38, 0
  %call.i = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 0) #7
  %and.i = and i32 %call.i, -17
  %masksel.i = select i1 %tobool2, i32 16, i32 0
  %data.0.i = or i32 %and.i, %masksel.i
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 0, i32 noundef %data.0.i) #7
  %mac_ops.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 34
  %39 = ptrtoint ptr %mac_ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mac_ops.i, align 4
  %enable_tx_pause.i = getelementptr inbounds %struct.xgene_mac_ops, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %enable_tx_pause.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %enable_tx_pause.i, align 4
  tail call void %42(ptr noundef %pdata, i1 noundef zeroext %tobool2) #7
  %rx_pause = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 55
  %43 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rx_pause, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool3.not = icmp eq i8 %44, 0
  %call.i39 = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 0) #7
  %and.i40 = and i32 %call.i39, -33
  %masksel.i41 = select i1 %tobool3.not, i32 0, i32 32
  %data.0.i42 = or i32 %and.i40, %masksel.i41
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 0, i32 noundef %data.0.i42) #7
  %45 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i44 = getelementptr i8, ptr %46, i32 1992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 16777216) #7, !srcloc !49
  %47 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i46 = getelementptr i8, ptr %48, i32 1532
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %50 = and i32 %49, -117440513
  %51 = or i32 %50, 16777216
  %52 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i48 = getelementptr i8, ptr %53, i32 1532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %51) #7, !srcloc !49
  %54 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i50 = getelementptr i8, ptr %55, i32 660
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 16777216) #7, !srcloc !49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_gmac_reset(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 0, i32 noundef -2147483648)
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_gmac_tx_enable(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 0)
  %or = or i32 %call, 1
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 0, i32 noundef %or)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_gmac_rx_enable(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 0)
  %or = or i32 %call, 4
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 0, i32 noundef %or)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_gmac_tx_disable(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 0)
  %and = and i32 %call, -2
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 0, i32 noundef %and)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_gmac_rx_disable(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 0)
  %and = and i32 %call, -5
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 0, i32 noundef %and)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_gmac_get_drop_cnt(ptr nocapture noundef readonly %pdata, ptr nocapture noundef writeonly %rx, ptr nocapture noundef writeonly %tx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mcx_mac_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 21
  %0 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1288
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !50
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %shr4.i = lshr i32 %3, 16
  %4 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr4.i, ptr %rx, align 4
  %and3.i = and i32 %3, 65535
  %5 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and3.i, ptr %tx, align 4
  %6 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %7, i32 1280
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_gmac_set_speed(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mcx_mac_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 21
  %0 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1024
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !50
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %4 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i33 = getelementptr i8, ptr %5, i32 1040
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #7, !srcloc !50
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %call = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 4)
  %call1 = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 56)
  %eth_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 17
  %8 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i34 = getelementptr i8, ptr %9, i32 2016
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #7, !srcloc !50
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %phy_speed = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 2
  %12 = ptrtoint ptr %phy_speed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phy_speed, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %13, label %sw.default [
    i32 10, label %sw.bb
    i32 100, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and5.i = and i32 %call, -769
  %or.i = or i32 %and5.i, 256
  %and = and i32 %call1, -100663297
  %and5.i35 = and i32 %3, -786433
  %and5.i36 = and i32 %7, -65536
  %or.i37 = or i32 %and5.i36, 500
  %and2 = and i32 %11, -16777217
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and5.i38 = and i32 %call, -769
  %or.i39 = or i32 %and5.i38, 256
  %and4 = and i32 %call1, -100663297
  %or = or i32 %and4, 33554432
  %and5.i40 = and i32 %3, -786433
  %or.i41 = or i32 %and5.i40, 262144
  %and5.i42 = and i32 %7, -65536
  %or.i43 = or i32 %and5.i42, 80
  %and5 = and i32 %11, -16777217
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and5.i44 = and i32 %call, -769
  %or.i45 = or i32 %and5.i44, 512
  %and6 = and i32 %call1, -100663297
  %or7 = or i32 %and6, 67108864
  %and5.i46 = and i32 %3, -786433
  %or.i47 = or i32 %and5.i46, 524288
  %and5.i48 = and i32 %7, -65536
  %tx_delay = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 48
  %15 = ptrtoint ptr %tx_delay to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tx_delay, align 4
  %conv = zext i8 %16 to i32
  %and5.i49 = and i32 %11, 50331647
  %shl6.i = shl i32 %conv, 29
  %or.i50 = or i32 %shl6.i, %and5.i49
  %rx_delay = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 49
  %17 = ptrtoint ptr %rx_delay to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rx_delay, align 1
  %conv8 = zext i8 %18 to i32
  %shl6.i52 = shl i32 %conv8, 26
  %and7.i = and i32 %shl6.i52, 469762048
  %or.i53 = or i32 %and7.i, %or.i50
  %or9 = or i32 %or.i53, 16777216
  %19 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i55 = getelementptr i8, ptr %20, i32 1792
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %22 = or i32 %21, 100663296
  %23 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i57 = getelementptr i8, ptr %24, i32 1792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %22) #7, !srcloc !49
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  %icm0.0 = phi i32 [ %or.i47, %sw.default ], [ %or.i41, %sw.bb3 ], [ %and5.i35, %sw.bb ]
  %icm2.0 = phi i32 [ %and5.i48, %sw.default ], [ %or.i43, %sw.bb3 ], [ %or.i37, %sw.bb ]
  %mc2.0 = phi i32 [ %or.i45, %sw.default ], [ %or.i39, %sw.bb3 ], [ %or.i, %sw.bb ]
  %rgmii.0 = phi i32 [ %or9, %sw.default ], [ %and5, %sw.bb3 ], [ %and2, %sw.bb ]
  %intf_ctl.0 = phi i32 [ %or7, %sw.default ], [ %or, %sw.bb3 ], [ %and, %sw.bb ]
  %or11 = or i32 %mc2.0, 21
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 4, i32 noundef %or11)
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 56, i32 noundef %intf_ctl.0)
  %25 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i59 = getelementptr i8, ptr %26, i32 2016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %rgmii.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %27) #7, !srcloc !49
  %pdev.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 4
  %28 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev.i, align 8
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3, i32 27
  %30 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %sw.epilog.xgene_enet_configure_clock.exit_crit_edge, label %if.then.i

sw.epilog.xgene_enet_configure_clock.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_enet_configure_clock.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %clk.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 3
  %32 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk.i, align 4
  %call.i = tail call ptr @clk_get_parent(ptr noundef %33) #7
  %34 = ptrtoint ptr %phy_speed to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %phy_speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %35)
  %switch.selectcmp.i = icmp eq i32 %35, 100
  %switch.select.i = select i1 %switch.selectcmp.i, i32 25000000, i32 125000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %35)
  %switch.selectcmp10.i = icmp eq i32 %35, 10
  %switch.select11.i = select i1 %switch.selectcmp10.i, i32 2500000, i32 %switch.select.i
  %call2.i = tail call i32 @clk_set_rate(ptr noundef %call.i, i32 noundef %switch.select11.i) #7
  br label %xgene_enet_configure_clock.exit

xgene_enet_configure_clock.exit:                  ; preds = %if.then.i, %sw.epilog.xgene_enet_configure_clock.exit_crit_edge
  %36 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i61 = getelementptr i8, ptr %37, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %38 = tail call i32 @llvm.bswap.i32(i32 %icm0.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %38) #7, !srcloc !49
  %39 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i63 = getelementptr i8, ptr %40, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %41 = tail call i32 @llvm.bswap.i32(i32 %icm2.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %41) #7, !srcloc !49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_gmac_set_mac_addr(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
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
  %or18 = or i32 %shl17, %shl14
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 64, i32 noundef %or11)
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 68, i32 noundef %or18)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_set_frame_size(ptr noundef %pdata, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 16, i32 noundef %size)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_gmac_enable_tx_pause(ptr nocapture noundef readonly %pdata, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mcx_mac_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 21
  %0 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 544
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %3 = and i32 %2, -81
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %enable, i32 1342177280, i32 0
  %storemerge = or i32 %4, %masksel
  %5 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i3 = getelementptr i8, ptr %6, i32 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %storemerge) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %7) #7, !srcloc !49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_gmac_flowctl_rx(ptr noundef %pdata, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 0)
  %and = and i32 %call, -33
  %masksel = select i1 %enable, i32 32, i32 0
  %data.0 = or i32 %and, %masksel
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 0, i32 noundef %data.0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_gmac_flowctl_tx(ptr noundef %pdata, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 0)
  %and = and i32 %call, -17
  %masksel = select i1 %enable, i32 16, i32 0
  %data.0 = or i32 %and, %masksel
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 0, i32 noundef %data.0)
  %mac_ops = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 34
  %0 = ptrtoint ptr %mac_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_ops, align 4
  %enable_tx_pause = getelementptr inbounds %struct.xgene_mac_ops, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %enable_tx_pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_tx_pause, align 4
  tail call void %3(ptr noundef %pdata, i1 noundef zeroext %enable) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_enet_reset(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %ring_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 25
  %2 = ptrtoint ptr %ring_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 49672
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %xgene_ring_mgr_init.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xgene_ring_mgr_init.exit:                         ; preds = %entry
  %5 = ptrtoint ptr %ring_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ring_csr_addr.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %6, i32 49664
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not.i = icmp eq i32 %7, 0
  br i1 %tobool4.not.i, label %if.end, label %xgene_ring_mgr_init.exit.cleanup_crit_edge

xgene_ring_mgr_init.exit.cleanup_crit_edge:       ; preds = %xgene_ring_mgr_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %xgene_ring_mgr_init.exit
  %mdio_driver = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 50
  %8 = ptrtoint ptr %mdio_driver to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mdio_driver, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %eth_ring_if_addr.i.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 18
  %10 = ptrtoint ptr %eth_ring_if_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eth_ring_if_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #7, !srcloc !49
  %12 = ptrtoint ptr %eth_ring_if_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eth_ring_if_addr.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %13, i32 220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 -1) #7, !srcloc !49
  %14 = ptrtoint ptr %eth_ring_if_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eth_ring_if_addr.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %15, i32 244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 -1) #7, !srcloc !49
  %16 = ptrtoint ptr %eth_ring_if_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eth_ring_if_addr.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %17, i32 240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 -1) #7, !srcloc !49
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %tobool4.not = icmp eq ptr %19, null
  br i1 %tobool4.not, label %if.end3.if.end10_crit_edge, label %if.then5

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then5:                                         ; preds = %if.end3
  %clk = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 3
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i20 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i20, label %if.end.i21, label %if.then5.clk_prepare_enable.exit_crit_edge

if.then5.clk_prepare_enable.exit_crit_edge:       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i21:                                       ; preds = %if.then5
  %call1.i = tail call i32 @clk_enable(ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i21.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i21.clk_prepare_enable.exit_crit_edge:     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %21) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i21.clk_prepare_enable.exit_crit_edge, %if.then5.clk_prepare_enable.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 1073740) #7
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %24) #7
  tail call void @clk_unprepare(ptr noundef %24) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 1073740) #7
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 4
  %call.i22 = tail call i32 @clk_prepare(ptr noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %if.end.i26, label %clk_prepare_enable.exit.clk_prepare_enable.exit28_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit28_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit28

if.end.i26:                                       ; preds = %clk_prepare_enable.exit
  %call1.i24 = tail call i32 @clk_enable(ptr noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool2.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool2.not.i25, label %if.end.i26.clk_prepare_enable.exit28_crit_edge, label %if.then3.i27

if.end.i26.clk_prepare_enable.exit28_crit_edge:   ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit28

if.then3.i27:                                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %27) #7
  br label %clk_prepare_enable.exit28

clk_prepare_enable.exit28:                        ; preds = %if.then3.i27, %if.end.i26.clk_prepare_enable.exit28_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit28_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 1073740) #7
  br label %if.end10

if.end10:                                         ; preds = %clk_prepare_enable.exit28, %if.end3.if.end10_crit_edge
  %29 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdata, align 8
  %eth_diag_csr_addr.i.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 19
  %31 = ptrtoint ptr %eth_diag_csr_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %eth_diag_csr_addr.i.i, align 8
  %add.ptr.i.i29 = getelementptr i8, ptr %32, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i29, i32 0) #7, !srcloc !49
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end10
  %wait.0.i = phi i8 [ 10, %if.end10 ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #7
  %33 = ptrtoint ptr %eth_diag_csr_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %eth_diag_csr_addr.i.i, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %34, i32 116
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.not.i = icmp eq i32 %35, -1
  %dec.i = add nsw i8 %wait.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wait.0.i)
  %tobool.not.i30 = icmp eq i8 %wait.0.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %tobool.not.i30
  br i1 %or.cond.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  br i1 %cmp.not.i, label %do.end.i.xgene_enet_ecc_init.exit_crit_edge, label %if.then.i

do.end.i.xgene_enet_ecc_init.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_enet_ecc_init.exit

if.then.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.16) #10
  br label %xgene_enet_ecc_init.exit

xgene_enet_ecc_init.exit:                         ; preds = %if.then.i, %do.end.i.xgene_enet_ecc_init.exit_crit_edge
  %eth_ring_if_addr.i.i31 = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 18
  %36 = ptrtoint ptr %eth_ring_if_addr.i.i31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %eth_ring_if_addr.i.i31, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %37, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32, i32 -1) #7, !srcloc !49
  %38 = ptrtoint ptr %eth_ring_if_addr.i.i31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %eth_ring_if_addr.i.i31, align 4
  %add.ptr.i8.i33 = getelementptr i8, ptr %39, i32 220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i33, i32 -1) #7, !srcloc !49
  %40 = ptrtoint ptr %eth_ring_if_addr.i.i31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %eth_ring_if_addr.i.i31, align 4
  %add.ptr.i10.i34 = getelementptr i8, ptr %41, i32 244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i34, i32 -1) #7, !srcloc !49
  %42 = ptrtoint ptr %eth_ring_if_addr.i.i31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %eth_ring_if_addr.i.i31, align 4
  %add.ptr.i12.i35 = getelementptr i8, ptr %43, i32 240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i35, i32 -1) #7, !srcloc !49
  br label %cleanup

cleanup:                                          ; preds = %xgene_enet_ecc_init.exit, %if.then2, %xgene_ring_mgr_init.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %xgene_enet_ecc_init.exit ], [ -19, %xgene_ring_mgr_init.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_clear(ptr nocapture noundef readonly %pdata, ptr nocapture noundef readonly %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %data.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #7, !srcloc !49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_cle_bypass(ptr nocapture noundef readonly %pdata, i32 noundef %dst_ring_num, i16 noundef zeroext %bufpool_id, i16 noundef zeroext %nxtbufpool_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %bufpool_id, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %cmp.i.not.i = icmp eq i16 %0, 0
  %1 = and i16 %bufpool_id, 15
  %narrow33 = select i1 %cmp.i.not.i, i16 0, i16 %1
  %conv = zext i16 %narrow33 to i32
  %2 = and i16 %nxtbufpool_id, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.i.not.i6 = icmp eq i16 %2, 0
  %3 = and i16 %nxtbufpool_id, 15
  %narrow35 = select i1 %cmp.i.not.i6, i16 0, i16 %3
  %conv2 = zext i16 %narrow35 to i32
  %eth_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 17
  %4 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 1168
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %7 = and i32 %6, -2032513
  %8 = or i32 %7, 896
  %9 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i12 = getelementptr i8, ptr %10, i32 1168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %8) #7, !srcloc !49
  %11 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i14 = getelementptr i8, ptr %12, i32 1172
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %and7.i = and i32 %dst_ring_num, 4095
  %shl6.i = shl nuw nsw i32 %conv, 16
  %14 = and i32 %13, 15728895
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %and5.i17.masked = or i32 %and7.i, %15
  %and5.i20 = or i32 %and5.i17.masked, %shl6.i
  %shl6.i21 = shl nuw nsw i32 %conv2, 20
  %or.i23 = or i32 %and5.i20, %shl6.i21
  %16 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i25 = getelementptr i8, ptr %17, i32 1172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i23) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %18) #7, !srcloc !49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_gport_shutdown(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 4
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.if.end4_crit_edge, label %if.then2

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xgene_enet_setup_ring(ptr noundef returned %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %size1 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 9
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size1, align 4
  %state.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10
  %2 = call ptr @memset(ptr %state.i, i32 0, i32 24)
  %3 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ring, align 8
  %num.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 2
  %5 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %ring_csr_addr.i.i.i = getelementptr i8, ptr %4, i32 2536
  %7 = ptrtoint ptr %ring_csr_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ring_csr_addr.i.i.i, align 8
  %add.ptr.i10.i.i = getelementptr i8, ptr %8, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %9) #7, !srcloc !49
  %ring_ops.i.i = getelementptr i8, ptr %4, i32 2720
  %10 = ptrtoint ptr %ring_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring_ops.i.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp14.not.i.i = icmp eq i8 %13, 0
  br i1 %cmp14.not.i.i, label %entry.xgene_enet_clr_ring_state.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.xgene_enet_clr_ring_state.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_enet_clr_ring_state.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.015.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %i.015.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 112
  %arrayidx.i.i = getelementptr %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10, i32 %i.015.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %16 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i11.i.i = getelementptr i8, ptr %17, i32 2536
  %18 = ptrtoint ptr %ring_csr_addr.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring_csr_addr.i11.i.i, align 8
  %add.ptr.i12.i.i = getelementptr i8, ptr %19, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 %20) #7, !srcloc !49
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %21 = ptrtoint ptr %ring_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring_ops.i.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %conv1.i.i = zext i8 %24 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv1.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.xgene_enet_clr_ring_state.exit_crit_edge

for.body.i.i.xgene_enet_clr_ring_state.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_enet_clr_ring_state.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

xgene_enet_clr_ring_state.exit:                   ; preds = %for.body.i.i.xgene_enet_clr_ring_state.exit_crit_edge, %entry.xgene_enet_clr_ring_state.exit_crit_edge
  %id.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 1
  %25 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %id.i.i, align 4
  %27 = and i16 %26, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.i.not.i.i = icmp eq i16 %27, 0
  %cond.i.i = select i1 %cmp.i.not.i.i, i32 524288, i32 1048576
  %arrayidx.i.i31 = getelementptr %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10, i32 4
  %28 = ptrtoint ptr %arrayidx.i.i31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i31, align 4
  %or.i.i = or i32 %cond.i.i, %29
  store i32 %or.i.i, ptr %arrayidx.i.i31, align 4
  br i1 %cmp.i.not.i.i, label %xgene_enet_clr_ring_state.exit.xgene_enet_ring_set_type.exit.i_crit_edge, label %if.then.i.i

xgene_enet_clr_ring_state.exit.xgene_enet_ring_set_type.exit.i_crit_edge: ; preds = %xgene_enet_clr_ring_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_enet_ring_set_type.exit.i

if.then.i.i:                                      ; preds = %xgene_enet_clr_ring_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx2.i.i = getelementptr %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10, i32 3
  %30 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx2.i.i, align 4
  %or3.i.i = or i32 %31, 3145728
  store i32 %or3.i.i, ptr %arrayidx2.i.i, align 4
  br label %xgene_enet_ring_set_type.exit.i

xgene_enet_ring_set_type.exit.i:                  ; preds = %if.then.i.i, %xgene_enet_clr_ring_state.exit.xgene_enet_ring_set_type.exit.i_crit_edge
  %32 = and i16 %26, 896
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %switch.i = icmp eq i16 %32, 0
  br i1 %switch.i, label %if.then.i, label %xgene_enet_ring_set_type.exit.i.if.end.i_crit_edge

xgene_enet_ring_set_type.exit.i.if.end.i_crit_edge: ; preds = %xgene_enet_ring_set_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %xgene_enet_ring_set_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i10.i = getelementptr %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10, i32 3
  %33 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i10.i, align 4
  %or2.i.i = or i32 %34, -134217728
  store i32 %or2.i.i, ptr %arrayidx.i10.i, align 4
  %or4.i.i = or i32 %or.i.i, 7
  %35 = ptrtoint ptr %arrayidx.i.i31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or4.i.i, ptr %arrayidx.i.i31, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %xgene_enet_ring_set_type.exit.i.if.end.i_crit_edge
  %dma.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 13
  %36 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma.i.i, align 8
  %cfgsize1.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 25
  %38 = ptrtoint ptr %cfgsize1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cfgsize1.i.i, align 4
  %40 = ptrtoint ptr %arrayidx.i.i31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i31, align 4
  %or.i12.i = or i32 %41, 8
  store i32 %or.i12.i, ptr %arrayidx.i.i31, align 4
  %arrayidx2.i13.i = getelementptr %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10, i32 3
  %42 = ptrtoint ptr %arrayidx2.i13.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx2.i13.i, align 4
  %arrayidx4.i.i = getelementptr %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10, i32 2
  %44 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx4.i.i, align 4
  %46 = lshr i32 %37, 3
  %47 = and i32 %46, 536870880
  %or5.i.i = or i32 %47, %45
  %or830.i.i = or i32 %or5.i.i, 16
  store i32 %or830.i.i, ptr %arrayidx4.i.i, align 4
  %shl16.i.i = shl i32 %39, 23
  %and17.i.i = and i32 %shl16.i.i, 58720256
  %or3.i14.i = or i32 %and17.i.i, %43
  %or19.i.i = or i32 %or3.i14.i, 524288
  store i32 %or19.i.i, ptr %arrayidx2.i13.i, align 4
  %48 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ring, align 8
  %50 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %num.i.i, align 2
  %conv.i.i33 = zext i16 %51 to i32
  %ring_csr_addr.i.i.i34 = getelementptr i8, ptr %49, i32 2536
  %52 = ptrtoint ptr %ring_csr_addr.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ring_csr_addr.i.i.i34, align 8
  %add.ptr.i10.i.i35 = getelementptr i8, ptr %53, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %54 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i33) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i35, i32 %54) #7, !srcloc !49
  %ring_ops.i.i36 = getelementptr i8, ptr %49, i32 2720
  %55 = ptrtoint ptr %ring_ops.i.i36 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ring_ops.i.i36, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp14.not.i.i37 = icmp eq i8 %58, 0
  br i1 %cmp14.not.i.i37, label %if.end.i.xgene_enet_set_ring_state.exit_crit_edge, label %if.end.i.for.body.i.i46_crit_edge

if.end.i.for.body.i.i46_crit_edge:                ; preds = %if.end.i
  br label %for.body.i.i46

if.end.i.xgene_enet_set_ring_state.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_enet_set_ring_state.exit

for.body.i.i46:                                   ; preds = %for.body.i.i46.for.body.i.i46_crit_edge, %if.end.i.for.body.i.i46_crit_edge
  %i.015.i.i38 = phi i32 [ %inc.i.i43, %for.body.i.i46.for.body.i.i46_crit_edge ], [ 0, %if.end.i.for.body.i.i46_crit_edge ]
  %mul.i.i39 = shl i32 %i.015.i.i38, 2
  %add.i.i40 = add nuw nsw i32 %mul.i.i39, 112
  %arrayidx.i15.i = getelementptr %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10, i32 %i.015.i.i38
  %59 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i15.i, align 4
  %61 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i11.i.i41 = getelementptr i8, ptr %62, i32 2536
  %63 = ptrtoint ptr %ring_csr_addr.i11.i.i41 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ring_csr_addr.i11.i.i41, align 8
  %add.ptr.i12.i.i42 = getelementptr i8, ptr %64, i32 %add.i.i40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %65 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i42, i32 %65) #7, !srcloc !49
  %inc.i.i43 = add nuw nsw i32 %i.015.i.i38, 1
  %66 = ptrtoint ptr %ring_ops.i.i36 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ring_ops.i.i36, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 4
  %conv1.i.i44 = zext i8 %69 to i32
  %cmp.i.i45 = icmp ult i32 %inc.i.i43, %conv1.i.i44
  br i1 %cmp.i.i45, label %for.body.i.i46.for.body.i.i46_crit_edge, label %for.body.i.i46.xgene_enet_set_ring_state.exit_crit_edge

for.body.i.i46.xgene_enet_set_ring_state.exit_crit_edge: ; preds = %for.body.i.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_enet_set_ring_state.exit

for.body.i.i46.for.body.i.i46_crit_edge:          ; preds = %for.body.i.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i46

xgene_enet_set_ring_state.exit:                   ; preds = %for.body.i.i46.xgene_enet_set_ring_state.exit_crit_edge, %if.end.i.xgene_enet_set_ring_state.exit_crit_edge
  %70 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %id.i.i, align 4
  %72 = and i16 %71, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %cmp.i.not.i = icmp eq i16 %72, 0
  %73 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %num.i.i, align 2
  %conv2.i = zext i16 %74 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 9
  %and3.i = and i32 %shl.i, 523776
  %spec.select.v.i = select i1 %cmp.i.not.i, i32 2097152, i32 3145728
  %spec.select.i = or i32 %and3.i, %spec.select.v.i
  %75 = and i16 %71, 1023
  %and.i = zext i16 %75 to i32
  %or.i = or i32 %and.i, -2147483648
  %76 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i.i = getelementptr i8, ptr %77, i32 2536
  %78 = ptrtoint ptr %ring_csr_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ring_csr_addr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %79, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %80 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %80) #7, !srcloc !49
  %81 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i13.i = getelementptr i8, ptr %82, i32 2536
  %83 = ptrtoint ptr %ring_csr_addr.i13.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ring_csr_addr.i13.i, align 8
  %add.ptr.i14.i = getelementptr i8, ptr %84, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %85 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %85) #7, !srcloc !49
  %86 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %id.i.i, align 4
  %88 = and i16 %87, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %cmp.i.not.i47 = icmp eq i16 %88, 0
  %cond.v.i = select i1 %cmp.i.not.i47, i32 5, i32 4
  %cond.i = lshr i32 %1, %cond.v.i
  %conv.i = trunc i32 %cond.i to i16
  %slots = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 6
  %89 = ptrtoint ptr %slots to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i, ptr %slots, align 2
  %90 = and i16 %87, 992
  call void @__sanitizer_cov_trace_const_cmp2(i16 960, i16 %90)
  %91 = icmp eq i16 %90, 960
  br i1 %91, label %for.cond.preheader, label %xgene_enet_set_ring_state.exit.cleanup_crit_edge

xgene_enet_set_ring_state.exit.cleanup_crit_edge: ; preds = %xgene_enet_set_ring_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %xgene_enet_set_ring_state.exit
  %92 = ptrtoint ptr %slots to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %slots, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %cmp751.not = icmp eq i16 %93, 0
  br i1 %cmp751.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %94 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 30
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  %arrayidx.i = getelementptr %struct.xgene_enet_raw_desc, ptr %96, i32 %i.052, i32 1
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 -1, ptr %arrayidx.i, align 8
  %inc = add nuw nsw i32 %i.052, 1
  %98 = ptrtoint ptr %slots to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %slots, align 2
  %conv = zext i16 %99 to i32
  %cmp7 = icmp ult i32 %inc, %conv
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %100 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i = getelementptr i8, ptr %101, i32 2536
  %102 = ptrtoint ptr %ring_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ring_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %103, i32 380
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !50
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %106 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %id.i.i, align 4
  %108 = and i16 %107, 63
  %conv1.i = zext i16 %108 to i32
  %shl = lshr i32 -2147483648, %conv1.i
  %or = or i32 %shl, %105
  %109 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i48 = getelementptr i8, ptr %110, i32 2536
  %111 = ptrtoint ptr %ring_csr_addr.i48 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ring_csr_addr.i48, align 8
  %add.ptr.i49 = getelementptr i8, ptr %112, i32 380
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %113 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %113) #7, !srcloc !49
  br label %cleanup

cleanup:                                          ; preds = %for.end, %xgene_enet_set_ring_state.exit.cleanup_crit_edge
  ret ptr %ring
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_clear_ring(ptr nocapture noundef %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  %2 = and i16 %1, 992
  call void @__sanitizer_cov_trace_const_cmp2(i16 960, i16 %2)
  %3 = icmp eq i16 %2, 960
  br i1 %3, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i = getelementptr i8, ptr %5, i32 2536
  %6 = ptrtoint ptr %ring_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 380
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !50
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %id, align 4
  %12 = and i16 %11, 63
  %conv1.i = zext i16 %12 to i32
  %shl = lshr i32 -2147483648, %conv1.i
  %neg = xor i32 %shl, -1
  %and = and i32 %9, %neg
  %13 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i11 = getelementptr i8, ptr %14, i32 2536
  %15 = ptrtoint ptr %ring_csr_addr.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring_csr_addr.i11, align 8
  %add.ptr.i12 = getelementptr i8, ptr %16, i32 380
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %17) #7, !srcloc !49
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %id, align 4
  %conv.i = zext i16 %19 to i32
  %or.i = or i32 %conv.i, -2147483648
  %20 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i.i = getelementptr i8, ptr %21, i32 2536
  %22 = ptrtoint ptr %ring_csr_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ring_csr_addr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %24) #7, !srcloc !49
  %25 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i3.i = getelementptr i8, ptr %26, i32 2536
  %27 = ptrtoint ptr %ring_csr_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ring_csr_addr.i3.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 0) #7, !srcloc !49
  %state.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10
  %29 = call ptr @memset(ptr %state.i, i32 0, i32 24)
  %30 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring, align 8
  %num.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 2
  %32 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num.i.i, align 2
  %conv.i.i = zext i16 %33 to i32
  %ring_csr_addr.i.i.i = getelementptr i8, ptr %31, i32 2536
  %34 = ptrtoint ptr %ring_csr_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ring_csr_addr.i.i.i, align 8
  %add.ptr.i10.i.i = getelementptr i8, ptr %35, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %36 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %36) #7, !srcloc !49
  %ring_ops.i.i = getelementptr i8, ptr %31, i32 2720
  %37 = ptrtoint ptr %ring_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ring_ops.i.i, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp14.not.i.i = icmp eq i8 %40, 0
  br i1 %cmp14.not.i.i, label %out.xgene_enet_clr_ring_state.exit_crit_edge, label %out.for.body.i.i_crit_edge

out.for.body.i.i_crit_edge:                       ; preds = %out
  br label %for.body.i.i

out.xgene_enet_clr_ring_state.exit_crit_edge:     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_enet_clr_ring_state.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %out.for.body.i.i_crit_edge
  %i.015.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %out.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %i.015.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 112
  %arrayidx.i.i = getelementptr %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10, i32 %i.015.i.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i, align 4
  %43 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i11.i.i = getelementptr i8, ptr %44, i32 2536
  %45 = ptrtoint ptr %ring_csr_addr.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ring_csr_addr.i11.i.i, align 8
  %add.ptr.i12.i.i = getelementptr i8, ptr %46, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 %47) #7, !srcloc !49
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %48 = ptrtoint ptr %ring_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ring_ops.i.i, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  %conv1.i.i = zext i8 %51 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv1.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.xgene_enet_clr_ring_state.exit_crit_edge

for.body.i.i.xgene_enet_clr_ring_state.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_enet_clr_ring_state.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

xgene_enet_clr_ring_state.exit:                   ; preds = %for.body.i.i.xgene_enet_clr_ring_state.exit_crit_edge, %out.xgene_enet_clr_ring_state.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_wr_cmd(ptr nocapture noundef readonly %ring, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 12
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %count) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %2) #7, !srcloc !49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_enet_ring_len(ptr nocapture noundef readonly %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_base1 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %cmd_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_base1, align 8
  %arrayidx = getelementptr i32, ptr %1, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #7, !srcloc !50
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %4 = lshr i32 %3, 1
  %5 = and i32 %4, 65535
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xgene_enet_phy_register(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c", i32 283, i32 20}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c", i32 341, i32 20}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c", i32 369, i32 27}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c", i32 853, i32 40}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c", i32 863, i32 21}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c", i32 953, i32 19}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c", i32 956, i32 42}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c", i32 956, i32 51}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c", i32 964, i32 20}
!18 = !{ptr @xgene_gmac_ops, !19, !"xgene_gmac_ops", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c", i32 997, i32 28}
!20 = !{ptr @xgene_gport_ops, !21, !"xgene_gport_ops", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c", i32 1013, i32 29}
!22 = !{ptr @xgene_ring1_ops, !23, !"xgene_ring1_ops", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c", i32 1020, i32 23}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c", i32 908, i32 11}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c", i32 915, i32 4}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @xgene_mdiobus_register.__UNIQUE_ID_ddebug504, !27, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c", i32 930, i32 38}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c", i32 932, i32 39}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_hw.c", i32 405, i32 20}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i8 0, i8 2}
!48 = !{i64 2154261757}
!49 = !{i64 6727125}
!50 = !{i64 6727543}
!51 = !{i64 2154260402}
!52 = !{!"auto-init"}
!53 = !{i64 2148978704, i64 2148978709, i64 2148978722, i64 2148978766, i64 2148978800, i64 2148978821}
