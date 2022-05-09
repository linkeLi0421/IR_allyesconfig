; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.122, %struct.anon.123 }
%struct.anon.122 = type { i32, i32, i32 }
%struct.anon.123 = type { i32, i32, i32, i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
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
%struct.stmmac_mdio_bus_data = type { i32, i32, i32, ptr, i32, i8 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snps,reset\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snps,reset-delays-us\00", [43 x i8] zeroinitializer }, align 32
@stmmac_xpcs_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 428, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"No xPCS found\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stmmac_xpcs_setup\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stmmac_xpcs_setup._entry_ptr = internal global ptr @stmmac_xpcs_setup._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stmmac\00", [25 x i8] zeroinitializer }, align 32
@stmmac_mdio_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 475, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported phy_addr (max=%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stmmac_mdio_register\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@stmmac_mdio_register._entry_ptr = internal global ptr @stmmac_mdio_register._entry, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%x\00", [26 x i8] zeroinitializer }, align 32
@stmmac_mdio_register._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.4, i32 493, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot register the MDIO bus\0A\00", [34 x i8] zeroinitializer }, align 32
@stmmac_mdio_register._entry_ptr.14 = internal global ptr @stmmac_mdio_register._entry.12, section ".printk_index", align 4
@stmmac_mdio_register._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.4, i32 534, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"No PHY found\0A\00", [18 x i8] zeroinitializer }, align 32
@stmmac_mdio_register._entry_ptr.17 = internal global ptr @stmmac_mdio_register._entry.15, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 367, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 373, i32 13 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 428, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 460, i32 18 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 474, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 485, i32 41 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 493, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [53 x i8] c"../drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 534, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @stmmac_mdio_register._entry, ptr @stmmac_mdio_register._entry.12, ptr @stmmac_mdio_register._entry.15, ptr @stmmac_mdio_register._entry_ptr, ptr @stmmac_mdio_register._entry_ptr.14, ptr @stmmac_mdio_register._entry_ptr.17, ptr @stmmac_xpcs_setup._entry, ptr @stmmac_xpcs_setup._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_xpcs_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_mdio_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_mdio_register._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_mdio_register._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stmmac_mdio_reset(ptr nocapture noundef readonly %bus) #0 align 64 {
entry:
  %delays = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hw = getelementptr i8, ptr %1, i32 2476
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %mii = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii, align 4
  %device = getelementptr i8, ptr %1, i32 2472
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %if.then

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %delays) #7
  %10 = call ptr @memset(ptr %delays, i32 0, i32 12)
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device, align 8
  %call3 = tail call ptr @devm_gpiod_get_optional(ptr noundef %12, ptr noundef nonnull @.str, i32 noundef 3) #7
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 8
  %call8 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef nonnull %delays, i32 noundef 3) #7
  %15 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delays, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not = icmp eq i32 %16, 0
  br i1 %tobool9.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %16, 999
  %div = udiv i32 %sub, 1000
  call void @msleep(i32 noundef %div) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  call void @gpiod_set_value_cansleep(ptr noundef %call3, i32 noundef 1) #7
  %arrayidx13 = getelementptr inbounds [3 x i32], ptr %delays, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not = icmp eq i32 %18, 0
  br i1 %tobool14.not, label %if.end12.if.end20_crit_edge, label %if.then15

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %sub18 = add i32 %18, 999
  %div19 = udiv i32 %sub18, 1000
  call void @msleep(i32 noundef %div19) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end12.if.end20_crit_edge
  call void @gpiod_set_value_cansleep(ptr noundef %call3, i32 noundef 0) #7
  %arrayidx21 = getelementptr inbounds [3 x i32], ptr %delays, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool22.not = icmp eq i32 %20, 0
  br i1 %tobool22.not, label %if.end20.cleanup.thread_crit_edge, label %if.then23

if.end20.cleanup.thread_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %sub26 = add i32 %20, 999
  %div27 = udiv i32 %sub26, 1000
  call void @msleep(i32 noundef %div27) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then23, %if.end20.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %delays) #7
  br label %if.end30

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call3 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %delays) #7
  br label %cleanup34

if.end30:                                         ; preds = %cleanup.thread, %entry.if.end30_crit_edge
  %plat = getelementptr i8, ptr %1, i32 17408
  %22 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %plat, align 128
  %has_gmac4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %23, i32 0, i32 58
  %24 = ptrtoint ptr %has_gmac4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %has_gmac4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool31.not = icmp eq i32 %25, 0
  br i1 %tobool31.not, label %do.body, label %if.end30.cleanup34_crit_edge

if.end30.cleanup34_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

do.body:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  call void @arm_heavy_mb() #7
  %ioaddr = getelementptr i8, ptr %1, i32 2464
  %26 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr, align 32
  %add.ptr = getelementptr i8, ptr %27, i32 %5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !40
  br label %cleanup34

cleanup34:                                        ; preds = %do.body, %if.end30.cleanup34_crit_edge, %cleanup
  %retval.1 = phi i32 [ %21, %cleanup ], [ 0, %do.body ], [ 0, %if.end30.cleanup34_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stmmac_xpcs_setup(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %plat = getelementptr i8, ptr %1, i32 17408
  %2 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat, align 128
  %phy_interface = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %phy_interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_interface, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %addr.028 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call2 = tail call ptr @mdio_device_create(ptr noundef %bus, i32 noundef %addr.028) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call4 = tail call ptr @xpcs_create(ptr noundef %call2, i32 noundef %5) #7
  %tobool.not.i = icmp eq ptr %call4, null
  %cmp.i27 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i27
  br i1 %spec.select.i, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mdio_device_free(ptr noundef %call2) #7
  br label %for.inc

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %hw = getelementptr i8, ptr %1, i32 2476
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %xpcs8 = getelementptr inbounds %struct.mac_device_info, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %xpcs8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %xpcs8, align 4
  br label %for.end

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %addr.028, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end7
  %hw9 = getelementptr i8, ptr %1, i32 2476
  %9 = ptrtoint ptr %hw9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw9, align 4
  %xpcs10 = getelementptr inbounds %struct.mac_device_info, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %xpcs10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xpcs10, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %do.end, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr i8, ptr %1, i32 2472
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.2) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdio_device_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xpcs_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_device_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stmmac_mdio_register(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %plat = getelementptr i8, ptr %ndev, i32 17408
  %0 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat, align 128
  %mdio_bus_data1 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mdio_bus_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdio_bus_data1, align 4
  %mdio_node3 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %mdio_node3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdio_node3, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup83_crit_edge, label %if.end

entry.cleanup83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup83

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #7
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup83_crit_edge, label %if.end8

if.end.cleanup83_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup83

if.end8:                                          ; preds = %if.end
  %irqs = getelementptr inbounds %struct.stmmac_mdio_bus_data, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irqs, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %irq = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 15
  %10 = call ptr @memcpy(ptr %irq, ptr %9, i32 128)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.7, ptr %name, align 4
  %12 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %plat, align 128
  %has_gmac4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %13, i32 0, i32 58
  %14 = ptrtoint ptr %has_gmac4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %has_gmac4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %probe_capabilities = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 19
  %16 = ptrtoint ptr %probe_capabilities to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %probe_capabilities, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  %17 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %plat, align 128
  %has_xgmac = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %18, i32 0, i32 64
  %19 = ptrtoint ptr %has_xgmac to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %has_xgmac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool18.not = icmp eq i32 %20, 0
  %read23 = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 4
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end16
  %21 = ptrtoint ptr %read23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @stmmac_xgmac2_mdio_read, ptr %read23, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @stmmac_xgmac2_mdio_write, ptr %write, align 8
  %23 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %plat, align 128
  %phy_addr = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phy_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp = icmp sgt i32 %26, 3
  br i1 %cmp, label %do.end, label %if.then19.if.end25_crit_edge

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.end:                                           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.8, i32 noundef 3) #10
  br label %if.end25

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %read23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @stmmac_mdio_read, ptr %read23, align 4
  %write24 = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %write24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @stmmac_mdio_write, ptr %write24, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else, %do.end, %if.then19.if.end25_crit_edge
  %max_addr.0 = phi i32 [ 4, %do.end ], [ 4, %if.then19.if.end25_crit_edge ], [ 32, %if.else ]
  %needs_reset = getelementptr inbounds %struct.stmmac_mdio_bus_data, ptr %3, i32 0, i32 5
  %29 = ptrtoint ptr %needs_reset to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %needs_reset, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool26.not = icmp eq i8 %30, 0
  br i1 %tobool26.not, label %if.end25.if.end28_crit_edge, label %if.then27

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %reset = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @stmmac_mdio_reset, ptr %reset, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25.if.end28_crit_edge
  %id = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name, align 4
  %34 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %plat, align 128
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %call32 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.11, ptr noundef %33, i32 noundef %37)
  %priv33 = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %priv33 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %ndev, ptr %priv33, align 8
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %3, align 4
  %phy_mask34 = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 13
  %41 = ptrtoint ptr %phy_mask34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %phy_mask34, align 8
  %device = getelementptr i8, ptr %ndev, i32 2472
  %42 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device, align 8
  %parent35 = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 9
  %44 = ptrtoint ptr %parent35 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %parent35, align 4
  %call36 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %call.i, ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %if.end42, label %do.end41

do.end41:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13) #10
  br label %bus_register_fail

if.end42:                                         ; preds = %if.end28
  %45 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %plat, align 128
  %has_xgmac44 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %46, i32 0, i32 64
  %47 = ptrtoint ptr %has_xgmac44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %has_xgmac44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool45.not = icmp eq i32 %48, 0
  br i1 %tobool45.not, label %if.end42.if.end48_crit_edge, label %if.then46

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = tail call i32 @stmmac_xgmac2_mdio_read(ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef 1073741824)
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end42.if.end48_crit_edge
  %49 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %plat, align 128
  %phy_node = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phy_node, align 4
  %tobool50.not = icmp eq ptr %52, null
  %tobool51.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool50.not, i1 %tobool51.not, i1 false
  br i1 %or.cond, label %for.cond.preheader, label %if.end48.bus_register_done_crit_edge

if.end48.bus_register_done_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %bus_register_done

for.cond.preheader:                               ; preds = %if.end48
  %probed_phy_irq = getelementptr inbounds %struct.stmmac_mdio_bus_data, ptr %3, i32 0, i32 4
  br label %for.body.outer

for.body.outer:                                   ; preds = %cleanup.thread.for.body.outer_crit_edge, %for.cond.preheader
  %tobool75.not = phi i1 [ false, %cleanup.thread.for.body.outer_crit_edge ], [ true, %for.cond.preheader ]
  %addr.0146.ph = phi i32 [ %inc152, %cleanup.thread.for.body.outer_crit_edge ], [ 0, %for.cond.preheader ]
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.outer
  %addr.0146 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ %addr.0146.ph, %for.body.outer ]
  %call55 = tail call ptr @mdiobus_get_phy(ptr noundef nonnull %call.i, i32 noundef %addr.0146) #7
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %cleanup, label %if.end58

if.end58:                                         ; preds = %for.body
  %53 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %irqs, align 4
  %tobool60.not = icmp eq ptr %54, null
  br i1 %tobool60.not, label %land.lhs.true, label %if.end58.if.end67_crit_edge

if.end58.if.end67_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

land.lhs.true:                                    ; preds = %if.end58
  %55 = ptrtoint ptr %probed_phy_irq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %probed_phy_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp61 = icmp sgt i32 %56, 0
  br i1 %cmp61, label %if.then62, label %land.lhs.true.if.end67_crit_edge

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then62:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.mii_bus, ptr %call.i, i32 0, i32 15, i32 %addr.0146
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx, align 4
  %58 = ptrtoint ptr %probed_phy_irq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %probed_phy_irq, align 4
  %irq66 = getelementptr inbounds %struct.phy_device, ptr %call55, i32 0, i32 25
  %60 = ptrtoint ptr %irq66 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %irq66, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %land.lhs.true.if.end67_crit_edge, %if.end58.if.end67_crit_edge
  %61 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %plat, align 128
  %phy_addr69 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %phy_addr69 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %phy_addr69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp70 = icmp eq i32 %64, -1
  br i1 %cmp70, label %if.then71, label %if.end67.cleanup.thread_crit_edge

if.end67.cleanup.thread_crit_edge:                ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %phy_addr69 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %addr.0146, ptr %phy_addr69, align 4
  br label %cleanup.thread

cleanup:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %addr.0146, 1
  %exitcond.not = icmp eq i32 %inc, %max_addr.0
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.thread:                                   ; preds = %if.then71, %if.end67.cleanup.thread_crit_edge
  tail call void @phy_attached_info(ptr noundef nonnull %call55) #7
  %inc152 = add nuw nsw i32 %addr.0146, 1
  %exitcond.not153 = icmp eq i32 %inc152, %max_addr.0
  br i1 %exitcond.not153, label %cleanup.thread.bus_register_done_crit_edge, label %cleanup.thread.for.body.outer_crit_edge

cleanup.thread.for.body.outer_crit_edge:          ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.outer

cleanup.thread.bus_register_done_crit_edge:       ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %bus_register_done

for.end:                                          ; preds = %cleanup
  br i1 %tobool75.not, label %do.end81, label %for.end.bus_register_done_crit_edge

for.end.bus_register_done_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bus_register_done

do.end81:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.16) #10
  tail call void @mdiobus_unregister(ptr noundef nonnull %call.i) #7
  br label %bus_register_fail

bus_register_done:                                ; preds = %for.end.bus_register_done_crit_edge, %cleanup.thread.bus_register_done_crit_edge, %if.end48.bus_register_done_crit_edge
  %mii = getelementptr i8, ptr %ndev, i32 16268
  %66 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i, ptr %mii, align 4
  br label %cleanup83

bus_register_fail:                                ; preds = %do.end81, %do.end41
  %err.0 = phi i32 [ %call36, %do.end41 ], [ -19, %do.end81 ]
  tail call void @mdiobus_free(ptr noundef nonnull %call.i) #7
  br label %cleanup83

cleanup83:                                        ; preds = %bus_register_fail, %bus_register_done, %if.end.cleanup83_crit_edge, %entry.cleanup83_crit_edge
  %retval.0 = phi i32 [ %err.0, %bus_register_fail ], [ 0, %bus_register_done ], [ 0, %entry.cleanup83_crit_edge ], [ -12, %if.end.cleanup83_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_xgmac2_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phyaddr, i32 noundef %phyreg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hw = getelementptr i8, ptr %1, i32 2476
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %mii = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii, align 4
  %data = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %device = getelementptr i8, ptr %1, i32 2472
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !43
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !44
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call7, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 99) #7
  %ioaddr = getelementptr i8, ptr %1, i32 2464
  %13 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr, align 32
  %add.ptr293 = getelementptr i8, ptr %14, i32 %7
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr293) #7, !srcloc !45
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  %and294 = and i32 %16, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and294)
  %tobool.not295 = icmp eq i32 %and294, 0
  br i1 %tobool.not295, label %if.end.for.end_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %if.then37.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call24 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call24, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call24, %add.i
  br i1 %cmp3.i, label %if.then27, label %if.then37

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr, align 32
  %add.ptr31 = getelementptr i8, ptr %18, i32 %7
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #7, !srcloc !45
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  br label %for.end

if.then37:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %21 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr, align 32
  %add.ptr = getelementptr i8, ptr %22, i32 %7
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !45
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  %and = and i32 %24, 4194304
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then37.for.end_crit_edge, label %if.then37.land.lhs.true_crit_edge

if.then37.land.lhs.true_crit_edge:                ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then37.for.end_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.then37.for.end_crit_edge, %if.then27, %if.end.for.end_crit_edge
  %tmp.0 = phi i32 [ %20, %if.then27 ], [ %16, %if.end.for.end_crit_edge ], [ %24, %if.then37.for.end_crit_edge ]
  %and40 = and i32 %tmp.0, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end44, label %for.end.err_disable_clks_crit_edge

for.end.err_disable_clks_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clks

if.end44:                                         ; preds = %for.end
  %and45 = and i32 %phyreg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr, align 32
  %add.ptr.i259 = getelementptr i8, ptr %26, i32 544
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i259) #7, !srcloc !45
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %shl.i = shl nuw i32 1, %phyaddr
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %28, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %30 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr, align 32
  %add.ptr4.i = getelementptr i8, ptr %31, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %29) #7, !srcloc !40
  %shl5.i = shl i32 %phyaddr, 16
  %and6.i = and i32 %phyreg, 65535
  %or.i = or i32 %and6.i, %shl5.i
  %32 = shl i32 %phyreg, 5
  %shl7.i = and i32 %32, -2097152
  %or8.i = or i32 %or.i, %shl7.i
  br label %if.end57

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %phyaddr)
  %cmp.i260 = icmp sgt i32 %phyaddr, 3
  br i1 %cmp.i260, label %if.else.err_disable_clks_crit_edge, label %stmmac_xgmac2_c22_format.exit.thread

if.else.err_disable_clks_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clks

stmmac_xgmac2_c22_format.exit.thread:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioaddr, align 32
  %add.ptr.i262 = getelementptr i8, ptr %34, i32 544
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i262) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %36 = and i32 %35, -251658241
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  %shl.i263 = shl nuw nsw i32 1, %phyaddr
  %or.i264 = or i32 %37, %shl.i263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i264) #7
  %39 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ioaddr, align 32
  %add.ptr4.i265 = getelementptr i8, ptr %40, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i265, i32 %38) #7, !srcloc !40
  %shl5.i266 = shl i32 %phyaddr, 16
  %and6.i267 = and i32 %phyreg, 31
  %or7.i = or i32 %and6.i267, %shl5.i266
  br label %if.end57

if.end57:                                         ; preds = %stmmac_xgmac2_c22_format.exit.thread, %if.then47
  %addr4.1 = phi i32 [ %or8.i, %if.then47 ], [ %or7.i, %stmmac_xgmac2_c22_format.exit.thread ]
  %value.0 = phi i32 [ 4390912, %if.then47 ], [ 4653056, %stmmac_xgmac2_c22_format.exit.thread ]
  %clk_csr = getelementptr i8, ptr %1, i32 17960
  %41 = ptrtoint ptr %clk_csr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %clk_csr, align 8
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 4
  %clk_csr_shift = getelementptr inbounds %struct.mac_device_info, ptr %44, i32 0, i32 8, i32 6
  %45 = ptrtoint ptr %clk_csr_shift to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %clk_csr_shift, align 4
  %shl = shl i32 %42, %46
  %clk_csr_mask = getelementptr inbounds %struct.mac_device_info, ptr %44, i32 0, i32 8, i32 7
  %47 = ptrtoint ptr %clk_csr_mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %clk_csr_mask, align 4
  %and62 = and i32 %shl, %48
  %or64 = or i32 %value.0, %and62
  %call68 = tail call i64 @ktime_get() #7
  %add.i269 = add i64 %call68, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 124) #7
  %49 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ioaddr, align 32
  %add.ptr86296 = getelementptr i8, ptr %50, i32 %7
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86296) #7, !srcloc !45
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  %and90297 = and i32 %52, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90297)
  %tobool91.not298 = icmp eq i32 %and90297, 0
  br i1 %tobool91.not298, label %if.end57.for.end113_crit_edge, label %if.end57.land.lhs.true95_crit_edge

if.end57.land.lhs.true95_crit_edge:               ; preds = %if.end57
  br label %land.lhs.true95

if.end57.for.end113_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end113

land.lhs.true95:                                  ; preds = %if.then109.land.lhs.true95_crit_edge, %if.end57.land.lhs.true95_crit_edge
  %call96 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call96, i64 %add.i269)
  %cmp3.i271 = icmp sgt i64 %call96, %add.i269
  br i1 %cmp3.i271, label %if.then99, label %if.then109

if.then99:                                        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ioaddr, align 32
  %add.ptr103 = getelementptr i8, ptr %54, i32 %7
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #7, !srcloc !45
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  br label %for.end113

if.then109:                                       ; preds = %land.lhs.true95
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %57 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ioaddr, align 32
  %add.ptr86 = getelementptr i8, ptr %58, i32 %7
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86) #7, !srcloc !45
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  %and90 = and i32 %60, 4194304
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.then109.for.end113_crit_edge, label %if.then109.land.lhs.true95_crit_edge

if.then109.land.lhs.true95_crit_edge:             ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true95

if.then109.for.end113_crit_edge:                  ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end113

for.end113:                                       ; preds = %if.then109.for.end113_crit_edge, %if.then99, %if.end57.for.end113_crit_edge
  %tmp.1 = phi i32 [ %56, %if.then99 ], [ %52, %if.end57.for.end113_crit_edge ], [ %60, %if.then109.for.end113_crit_edge ]
  %and115 = and i32 %tmp.1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %do.body122, label %for.end113.err_disable_clks_crit_edge

for.end113.err_disable_clks_crit_edge:            ; preds = %for.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clks

do.body122:                                       ; preds = %for.end113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %61 = tail call i32 @llvm.bswap.i32(i32 %addr4.1)
  %62 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ioaddr, align 32
  %add.ptr126 = getelementptr i8, ptr %63, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %61) #7, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %64 = tail call i32 @llvm.bswap.i32(i32 %or64)
  %65 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ioaddr, align 32
  %add.ptr131 = getelementptr i8, ptr %66, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 %64) #7, !srcloc !40
  %call135 = tail call i64 @ktime_get() #7
  %add.i274 = add i64 %call135, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 135) #7
  %67 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ioaddr, align 32
  %add.ptr153300 = getelementptr i8, ptr %68, i32 %7
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr153300) #7, !srcloc !45
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %and157301 = and i32 %70, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157301)
  %tobool158.not302 = icmp eq i32 %and157301, 0
  br i1 %tobool158.not302, label %do.body122.for.end180_crit_edge, label %do.body122.land.lhs.true162_crit_edge

do.body122.land.lhs.true162_crit_edge:            ; preds = %do.body122
  br label %land.lhs.true162

do.body122.for.end180_crit_edge:                  ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end180

land.lhs.true162:                                 ; preds = %if.then176.land.lhs.true162_crit_edge, %do.body122.land.lhs.true162_crit_edge
  %call163 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call163, i64 %add.i274)
  %cmp3.i276 = icmp sgt i64 %call163, %add.i274
  br i1 %cmp3.i276, label %if.then166, label %if.then176

if.then166:                                       ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ioaddr, align 32
  %add.ptr170 = getelementptr i8, ptr %72, i32 %7
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr170) #7, !srcloc !45
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  br label %for.end180

if.then176:                                       ; preds = %land.lhs.true162
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %75 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ioaddr, align 32
  %add.ptr153 = getelementptr i8, ptr %76, i32 %7
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr153) #7, !srcloc !45
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %and157 = and i32 %78, 4194304
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %if.then176.for.end180_crit_edge, label %if.then176.land.lhs.true162_crit_edge

if.then176.land.lhs.true162_crit_edge:            ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true162

if.then176.for.end180_crit_edge:                  ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end180

for.end180:                                       ; preds = %if.then176.for.end180_crit_edge, %if.then166, %do.body122.for.end180_crit_edge
  %tmp.2 = phi i32 [ %74, %if.then166 ], [ %70, %do.body122.for.end180_crit_edge ], [ %78, %if.then176.for.end180_crit_edge ]
  %and182 = and i32 %tmp.2, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %if.end188, label %for.end180.err_disable_clks_crit_edge

for.end180.err_disable_clks_crit_edge:            ; preds = %for.end180
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clks

if.end188:                                        ; preds = %for.end180
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ioaddr, align 32
  %add.ptr192 = getelementptr i8, ptr %80, i32 %7
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr192) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %82 = and i32 %81, -65536
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  br label %err_disable_clks

err_disable_clks:                                 ; preds = %if.end188, %for.end180.err_disable_clks_crit_edge, %for.end113.err_disable_clks_crit_edge, %if.else.err_disable_clks_crit_edge, %for.end.err_disable_clks_crit_edge
  %ret.0 = phi i32 [ %83, %if.end188 ], [ -16, %for.end.err_disable_clks_crit_edge ], [ -16, %for.end113.err_disable_clks_crit_edge ], [ -16, %for.end180.err_disable_clks_crit_edge ], [ -19, %if.else.err_disable_clks_crit_edge ]
  %84 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %device, align 8
  %call.i279 = tail call i32 @__pm_runtime_idle(ptr noundef %85, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clks, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_disable_clks ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_xgmac2_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phyaddr, i32 noundef %phyreg, i16 noundef zeroext %phydata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hw = getelementptr i8, ptr %1, i32 2476
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %mii = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii, align 4
  %data = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %device = getelementptr i8, ptr %1, i32 2472
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !43
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !44
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call7, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 167) #7
  %ioaddr = getelementptr i8, ptr %1, i32 2464
  %13 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr, align 32
  %add.ptr285 = getelementptr i8, ptr %14, i32 %7
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr285) #7, !srcloc !45
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %and286 = and i32 %16, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and286)
  %tobool.not287 = icmp eq i32 %and286, 0
  br i1 %tobool.not287, label %if.end.for.end_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %if.then37.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call24 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call24, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call24, %add.i
  br i1 %cmp3.i, label %if.then27, label %if.then37

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr, align 32
  %add.ptr31 = getelementptr i8, ptr %18, i32 %7
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #7, !srcloc !45
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  br label %for.end

if.then37:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %21 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr, align 32
  %add.ptr = getelementptr i8, ptr %22, i32 %7
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !45
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %and = and i32 %24, 4194304
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then37.for.end_crit_edge, label %if.then37.land.lhs.true_crit_edge

if.then37.land.lhs.true_crit_edge:                ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then37.for.end_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.then37.for.end_crit_edge, %if.then27, %if.end.for.end_crit_edge
  %tmp.0 = phi i32 [ %20, %if.then27 ], [ %16, %if.end.for.end_crit_edge ], [ %24, %if.then37.for.end_crit_edge ]
  %and40 = and i32 %tmp.0, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end44, label %for.end.err_disable_clks_crit_edge

for.end.err_disable_clks_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clks

if.end44:                                         ; preds = %for.end
  %and45 = and i32 %phyreg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr, align 32
  %add.ptr.i252 = getelementptr i8, ptr %26, i32 544
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i252) #7, !srcloc !45
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %shl.i = shl nuw i32 1, %phyaddr
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %28, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %30 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr, align 32
  %add.ptr4.i = getelementptr i8, ptr %31, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %29) #7, !srcloc !40
  %shl5.i = shl i32 %phyaddr, 16
  %and6.i = and i32 %phyreg, 65535
  %or.i = or i32 %and6.i, %shl5.i
  %32 = shl i32 %phyreg, 5
  %shl7.i = and i32 %32, -2097152
  %or8.i = or i32 %or.i, %shl7.i
  br label %if.end57

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %phyaddr)
  %cmp.i253 = icmp sgt i32 %phyaddr, 3
  br i1 %cmp.i253, label %if.else.err_disable_clks_crit_edge, label %stmmac_xgmac2_c22_format.exit.thread

if.else.err_disable_clks_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clks

stmmac_xgmac2_c22_format.exit.thread:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioaddr, align 32
  %add.ptr.i255 = getelementptr i8, ptr %34, i32 544
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i255) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %36 = and i32 %35, -251658241
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  %shl.i256 = shl nuw nsw i32 1, %phyaddr
  %or.i257 = or i32 %37, %shl.i256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i257) #7
  %39 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ioaddr, align 32
  %add.ptr4.i258 = getelementptr i8, ptr %40, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i258, i32 %38) #7, !srcloc !40
  %shl5.i259 = shl i32 %phyaddr, 16
  %and6.i260 = and i32 %phyreg, 31
  %or7.i = or i32 %and6.i260, %shl5.i259
  br label %if.end57

if.end57:                                         ; preds = %stmmac_xgmac2_c22_format.exit.thread, %if.then47
  %addr4.1 = phi i32 [ %or8.i, %if.then47 ], [ %or7.i, %stmmac_xgmac2_c22_format.exit.thread ]
  %value.0 = phi i32 [ 4194304, %if.then47 ], [ 4456448, %stmmac_xgmac2_c22_format.exit.thread ]
  %clk_csr = getelementptr i8, ptr %1, i32 17960
  %41 = ptrtoint ptr %clk_csr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %clk_csr, align 8
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 4
  %clk_csr_shift = getelementptr inbounds %struct.mac_device_info, ptr %44, i32 0, i32 8, i32 6
  %45 = ptrtoint ptr %clk_csr_shift to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %clk_csr_shift, align 4
  %shl = shl i32 %42, %46
  %clk_csr_mask = getelementptr inbounds %struct.mac_device_info, ptr %44, i32 0, i32 8, i32 7
  %47 = ptrtoint ptr %clk_csr_mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %clk_csr_mask, align 4
  %and62 = and i32 %shl, %48
  %conv = zext i16 %phydata to i32
  %or63 = or i32 %value.0, %conv
  %or64 = or i32 %or63, %and62
  %or65 = or i32 %or64, 65536
  %call69 = tail call i64 @ktime_get() #7
  %add.i262 = add i64 %call69, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 193) #7
  %49 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ioaddr, align 32
  %add.ptr88288 = getelementptr i8, ptr %50, i32 %7
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88288) #7, !srcloc !45
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  %and92289 = and i32 %52, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92289)
  %tobool93.not290 = icmp eq i32 %and92289, 0
  br i1 %tobool93.not290, label %if.end57.for.end116_crit_edge, label %if.end57.land.lhs.true97_crit_edge

if.end57.land.lhs.true97_crit_edge:               ; preds = %if.end57
  br label %land.lhs.true97

if.end57.for.end116_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end116

land.lhs.true97:                                  ; preds = %if.then112.land.lhs.true97_crit_edge, %if.end57.land.lhs.true97_crit_edge
  %call98 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call98, i64 %add.i262)
  %cmp3.i264 = icmp sgt i64 %call98, %add.i262
  br i1 %cmp3.i264, label %if.then102, label %if.then112

if.then102:                                       ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ioaddr, align 32
  %add.ptr106 = getelementptr i8, ptr %54, i32 %7
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106) #7, !srcloc !45
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  br label %for.end116

if.then112:                                       ; preds = %land.lhs.true97
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %57 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ioaddr, align 32
  %add.ptr88 = getelementptr i8, ptr %58, i32 %7
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #7, !srcloc !45
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  %and92 = and i32 %60, 4194304
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.then112.for.end116_crit_edge, label %if.then112.land.lhs.true97_crit_edge

if.then112.land.lhs.true97_crit_edge:             ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true97

if.then112.for.end116_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end116

for.end116:                                       ; preds = %if.then112.for.end116_crit_edge, %if.then102, %if.end57.for.end116_crit_edge
  %tmp.1 = phi i32 [ %56, %if.then102 ], [ %52, %if.end57.for.end116_crit_edge ], [ %60, %if.then112.for.end116_crit_edge ]
  %and118 = and i32 %tmp.1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %do.body125, label %for.end116.err_disable_clks_crit_edge

for.end116.err_disable_clks_crit_edge:            ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clks

do.body125:                                       ; preds = %for.end116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @arm_heavy_mb() #7
  %61 = tail call i32 @llvm.bswap.i32(i32 %addr4.1)
  %62 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ioaddr, align 32
  %add.ptr129 = getelementptr i8, ptr %63, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %61) #7, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %64 = tail call i32 @llvm.bswap.i32(i32 %or65)
  %65 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ioaddr, align 32
  %add.ptr134 = getelementptr i8, ptr %66, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 %64) #7, !srcloc !40
  %call138 = tail call i64 @ktime_get() #7
  %add.i267 = add i64 %call138, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 204) #7
  %67 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ioaddr, align 32
  %add.ptr157292 = getelementptr i8, ptr %68, i32 %7
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr157292) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  %70 = and i32 %69, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool162.not294 = icmp eq i32 %70, 0
  br i1 %tobool162.not294, label %do.body125.for.end185.thread_crit_edge, label %do.body125.land.lhs.true166_crit_edge

do.body125.land.lhs.true166_crit_edge:            ; preds = %do.body125
  br label %land.lhs.true166

do.body125.for.end185.thread_crit_edge:           ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end185.thread

land.lhs.true166:                                 ; preds = %if.then181.land.lhs.true166_crit_edge, %do.body125.land.lhs.true166_crit_edge
  %call167 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call167, i64 %add.i267)
  %cmp3.i269 = icmp sgt i64 %call167, %add.i267
  br i1 %cmp3.i269, label %for.end185, label %if.then181

if.then181:                                       ; preds = %land.lhs.true166
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %71 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ioaddr, align 32
  %add.ptr157 = getelementptr i8, ptr %72, i32 %7
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr157) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  %74 = and i32 %73, 16384
  %tobool162.not = icmp eq i32 %74, 0
  br i1 %tobool162.not, label %if.then181.for.end185.thread_crit_edge, label %if.then181.land.lhs.true166_crit_edge

if.then181.land.lhs.true166_crit_edge:            ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true166

if.then181.for.end185.thread_crit_edge:           ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end185.thread

for.end185:                                       ; preds = %land.lhs.true166
  %75 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ioaddr, align 32
  %add.ptr175 = getelementptr i8, ptr %76, i32 %7
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr175) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %78 = and i32 %77, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool188.not = icmp eq i32 %78, 0
  br i1 %tobool188.not, label %for.end185.for.end185.thread_crit_edge, label %for.end185.err_disable_clks_crit_edge

for.end185.err_disable_clks_crit_edge:            ; preds = %for.end185
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clks

for.end185.for.end185.thread_crit_edge:           ; preds = %for.end185
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end185.thread

for.end185.thread:                                ; preds = %for.end185.for.end185.thread_crit_edge, %if.then181.for.end185.thread_crit_edge, %do.body125.for.end185.thread_crit_edge
  br label %err_disable_clks

err_disable_clks:                                 ; preds = %for.end185.thread, %for.end185.err_disable_clks_crit_edge, %for.end116.err_disable_clks_crit_edge, %if.else.err_disable_clks_crit_edge, %for.end.err_disable_clks_crit_edge
  %ret.0 = phi i32 [ -16, %for.end.err_disable_clks_crit_edge ], [ -16, %for.end116.err_disable_clks_crit_edge ], [ -19, %if.else.err_disable_clks_crit_edge ], [ 0, %for.end185.thread ], [ -110, %for.end185.err_disable_clks_crit_edge ]
  %79 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %device, align 8
  %call.i272 = tail call i32 @__pm_runtime_idle(ptr noundef %80, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clks, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_disable_clks ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phyaddr, i32 noundef %phyreg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hw = getelementptr i8, ptr %1, i32 2476
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %mii = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii, align 4
  %data = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %device = getelementptr i8, ptr %1, i32 2472
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !43
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !44
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %addr_shift = getelementptr inbounds %struct.mac_device_info, ptr %14, i32 0, i32 8, i32 2
  %15 = ptrtoint ptr %addr_shift to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr_shift, align 4
  %shl = shl i32 %phyaddr, %16
  %addr_mask = getelementptr inbounds %struct.mac_device_info, ptr %14, i32 0, i32 8, i32 4
  %17 = ptrtoint ptr %addr_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr_mask, align 4
  %and = and i32 %shl, %18
  %reg_shift = getelementptr inbounds %struct.mac_device_info, ptr %14, i32 0, i32 8, i32 3
  %19 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_shift, align 4
  %shl13 = shl i32 %phyreg, %20
  %reg_mask = getelementptr inbounds %struct.mac_device_info, ptr %14, i32 0, i32 8, i32 5
  %21 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_mask, align 4
  %and16 = and i32 %shl13, %22
  %or = or i32 %and16, %and
  %clk_csr = getelementptr i8, ptr %1, i32 17960
  %23 = ptrtoint ptr %clk_csr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk_csr, align 8
  %clk_csr_shift = getelementptr inbounds %struct.mac_device_info, ptr %14, i32 0, i32 8, i32 6
  %25 = ptrtoint ptr %clk_csr_shift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clk_csr_shift, align 4
  %shl20 = shl i32 %24, %26
  %clk_csr_mask = getelementptr inbounds %struct.mac_device_info, ptr %14, i32 0, i32 8, i32 7
  %27 = ptrtoint ptr %clk_csr_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clk_csr_mask, align 4
  %and23 = and i32 %shl20, %28
  %or17 = or i32 %or, %and23
  %or24 = or i32 %or17, 1
  %plat = getelementptr i8, ptr %1, i32 17408
  %29 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %plat, align 128
  %has_gmac4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %30, i32 0, i32 58
  %31 = ptrtoint ptr %has_gmac4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %has_gmac4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not = icmp eq i32 %32, 0
  br i1 %tobool.not, label %if.end.if.end48_crit_edge, label %if.then25

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then25:                                        ; preds = %if.end
  %or26 = or i32 %or17, 13
  %and27 = and i32 %phyreg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then25.if.end48_crit_edge, label %if.then29

if.then25.if.end48_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %or30 = or i32 %or17, 15
  %neg = xor i32 %22, -1
  %and34 = and i32 %or30, %neg
  %shr = ashr i32 %phyreg, 16
  %shl38 = shl i32 %shr, %20
  %and42 = and i32 %shl38, %22
  %or43 = or i32 %and34, %and42
  %shl45 = shl i32 %phyreg, 16
  %or46 = or i32 %call.i, %shl45
  br label %if.end48

if.end48:                                         ; preds = %if.then29, %if.then25.if.end48_crit_edge, %if.end.if.end48_crit_edge
  %data4.0 = phi i32 [ %or46, %if.then29 ], [ %call.i, %if.then25.if.end48_crit_edge ], [ %call.i, %if.end.if.end48_crit_edge ]
  %value.0 = phi i32 [ %or43, %if.then29 ], [ %or26, %if.then25.if.end48_crit_edge ], [ %or24, %if.end.if.end48_crit_edge ]
  %call49 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call49, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 258) #7
  %ioaddr = getelementptr i8, ptr %1, i32 2464
  %33 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioaddr, align 32
  %add.ptr237 = getelementptr i8, ptr %34, i32 %5
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr237) #7, !srcloc !45
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  %and62238 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62238)
  %tobool63.not239 = icmp eq i32 %and62238, 0
  br i1 %tobool63.not239, label %if.end48.for.end_crit_edge, label %if.end48.land.lhs.true_crit_edge

if.end48.land.lhs.true_crit_edge:                 ; preds = %if.end48
  br label %land.lhs.true

if.end48.for.end_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %if.then80.land.lhs.true_crit_edge, %if.end48.land.lhs.true_crit_edge
  %call67 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call67, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call67, %add.i
  br i1 %cmp3.i, label %if.then70, label %if.then80

if.then70:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr, align 32
  %add.ptr74 = getelementptr i8, ptr %38, i32 %5
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #7, !srcloc !45
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  br label %for.end

if.then80:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %41 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioaddr, align 32
  %add.ptr = getelementptr i8, ptr %42, i32 %5
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !45
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  %and62 = and i32 %44, 1
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then80.for.end_crit_edge, label %if.then80.land.lhs.true_crit_edge

if.then80.land.lhs.true_crit_edge:                ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then80.for.end_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.then80.for.end_crit_edge, %if.then70, %if.end48.for.end_crit_edge
  %v.0 = phi i32 [ %40, %if.then70 ], [ %36, %if.end48.for.end_crit_edge ], [ %44, %if.then80.for.end_crit_edge ]
  %and84 = and i32 %v.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %do.body89, label %for.end.err_disable_clks_crit_edge

for.end.err_disable_clks_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clks

do.body89:                                        ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %data4.0)
  %46 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ioaddr, align 32
  %add.ptr93 = getelementptr i8, ptr %47, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %45) #7, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  %49 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ioaddr, align 32
  %add.ptr98 = getelementptr i8, ptr %50, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %48) #7, !srcloc !40
  %call102 = tail call i64 @ktime_get() #7
  %add.i224 = add i64 %call102, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 267) #7
  %51 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ioaddr, align 32
  %add.ptr120240 = getelementptr i8, ptr %52, i32 %5
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120240) #7, !srcloc !45
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  %and124241 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124241)
  %tobool125.not242 = icmp eq i32 %and124241, 0
  br i1 %tobool125.not242, label %do.body89.for.end147_crit_edge, label %do.body89.land.lhs.true129_crit_edge

do.body89.land.lhs.true129_crit_edge:             ; preds = %do.body89
  br label %land.lhs.true129

do.body89.for.end147_crit_edge:                   ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end147

land.lhs.true129:                                 ; preds = %if.then143.land.lhs.true129_crit_edge, %do.body89.land.lhs.true129_crit_edge
  %call130 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call130, i64 %add.i224)
  %cmp3.i226 = icmp sgt i64 %call130, %add.i224
  br i1 %cmp3.i226, label %if.then133, label %if.then143

if.then133:                                       ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ioaddr, align 32
  %add.ptr137 = getelementptr i8, ptr %56, i32 %5
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137) #7, !srcloc !45
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  br label %for.end147

if.then143:                                       ; preds = %land.lhs.true129
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %59 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ioaddr, align 32
  %add.ptr120 = getelementptr i8, ptr %60, i32 %5
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #7, !srcloc !45
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  %and124 = and i32 %62, 1
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.then143.for.end147_crit_edge, label %if.then143.land.lhs.true129_crit_edge

if.then143.land.lhs.true129_crit_edge:            ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true129

if.then143.for.end147_crit_edge:                  ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end147

for.end147:                                       ; preds = %if.then143.for.end147_crit_edge, %if.then133, %do.body89.for.end147_crit_edge
  %v.1 = phi i32 [ %58, %if.then133 ], [ %54, %do.body89.for.end147_crit_edge ], [ %62, %if.then143.for.end147_crit_edge ]
  %and149 = and i32 %v.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end155, label %for.end147.err_disable_clks_crit_edge

for.end147.err_disable_clks_crit_edge:            ; preds = %for.end147
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clks

if.end155:                                        ; preds = %for.end147
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ioaddr, align 32
  %add.ptr159 = getelementptr i8, ptr %64, i32 %7
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr159) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %66 = and i32 %65, -65536
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  br label %err_disable_clks

err_disable_clks:                                 ; preds = %if.end155, %for.end147.err_disable_clks_crit_edge, %for.end.err_disable_clks_crit_edge
  %data4.1 = phi i32 [ %67, %if.end155 ], [ -16, %for.end.err_disable_clks_crit_edge ], [ -16, %for.end147.err_disable_clks_crit_edge ]
  %68 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device, align 8
  %call.i229 = tail call i32 @__pm_runtime_idle(ptr noundef %69, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clks, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %data4.1, %err_disable_clks ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phyaddr, i32 noundef %phyreg, i16 noundef zeroext %phydata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hw = getelementptr i8, ptr %1, i32 2476
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %mii = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii, align 4
  %data = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %conv = zext i16 %phydata to i32
  %device = getelementptr i8, ptr %1, i32 2472
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !43
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !44
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %addr_shift = getelementptr inbounds %struct.mac_device_info, ptr %14, i32 0, i32 8, i32 2
  %15 = ptrtoint ptr %addr_shift to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr_shift, align 4
  %shl = shl i32 %phyaddr, %16
  %addr_mask = getelementptr inbounds %struct.mac_device_info, ptr %14, i32 0, i32 8, i32 4
  %17 = ptrtoint ptr %addr_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr_mask, align 4
  %and = and i32 %shl, %18
  %reg_shift = getelementptr inbounds %struct.mac_device_info, ptr %14, i32 0, i32 8, i32 3
  %19 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_shift, align 4
  %shl14 = shl i32 %phyreg, %20
  %reg_mask = getelementptr inbounds %struct.mac_device_info, ptr %14, i32 0, i32 8, i32 5
  %21 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_mask, align 4
  %and17 = and i32 %shl14, %22
  %or = or i32 %and17, %and
  %clk_csr = getelementptr i8, ptr %1, i32 17960
  %23 = ptrtoint ptr %clk_csr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk_csr, align 8
  %clk_csr_shift = getelementptr inbounds %struct.mac_device_info, ptr %14, i32 0, i32 8, i32 6
  %25 = ptrtoint ptr %clk_csr_shift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clk_csr_shift, align 4
  %shl21 = shl i32 %24, %26
  %clk_csr_mask = getelementptr inbounds %struct.mac_device_info, ptr %14, i32 0, i32 8, i32 7
  %27 = ptrtoint ptr %clk_csr_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clk_csr_mask, align 4
  %and24 = and i32 %shl21, %28
  %or18 = or i32 %or, %and24
  %plat = getelementptr i8, ptr %1, i32 17408
  %29 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %plat, align 128
  %has_gmac4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %30, i32 0, i32 58
  %31 = ptrtoint ptr %has_gmac4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %has_gmac4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not = icmp eq i32 %32, 0
  br i1 %tobool.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end
  %or27 = or i32 %or18, 5
  %and28 = and i32 %phyreg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then26.if.end50_crit_edge, label %if.then30

if.then26.if.end50_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %or31 = or i32 %or18, 7
  %neg = xor i32 %22, -1
  %and35 = and i32 %or31, %neg
  %shr = ashr i32 %phyreg, 16
  %shl39 = shl i32 %shr, %20
  %and43 = and i32 %shl39, %22
  %or44 = or i32 %and35, %and43
  %shl46 = shl i32 %phyreg, 16
  %or47 = or i32 %shl46, %conv
  br label %if.end50

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or49 = or i32 %or18, 3
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then30, %if.then26.if.end50_crit_edge
  %value.0 = phi i32 [ %or44, %if.then30 ], [ %or27, %if.then26.if.end50_crit_edge ], [ %or49, %if.else ]
  %data4.0 = phi i32 [ %or47, %if.then30 ], [ %conv, %if.then26.if.end50_crit_edge ], [ %conv, %if.else ]
  %call51 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call51, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 330) #7
  %ioaddr = getelementptr i8, ptr %1, i32 2464
  %33 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioaddr, align 32
  %add.ptr230 = getelementptr i8, ptr %34, i32 %5
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr230) #7, !srcloc !45
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %and65231 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65231)
  %tobool66.not232 = icmp eq i32 %and65231, 0
  br i1 %tobool66.not232, label %if.end50.for.end_crit_edge, label %if.end50.land.lhs.true_crit_edge

if.end50.land.lhs.true_crit_edge:                 ; preds = %if.end50
  br label %land.lhs.true

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %if.then84.land.lhs.true_crit_edge, %if.end50.land.lhs.true_crit_edge
  %call70 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call70, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call70, %add.i
  br i1 %cmp3.i, label %if.then74, label %if.then84

if.then74:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr, align 32
  %add.ptr78 = getelementptr i8, ptr %38, i32 %5
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #7, !srcloc !45
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  br label %for.end

if.then84:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %41 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioaddr, align 32
  %add.ptr = getelementptr i8, ptr %42, i32 %5
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !45
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %and65 = and i32 %44, 1
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.then84.for.end_crit_edge, label %if.then84.land.lhs.true_crit_edge

if.then84.land.lhs.true_crit_edge:                ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then84.for.end_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.then84.for.end_crit_edge, %if.then74, %if.end50.for.end_crit_edge
  %v.0 = phi i32 [ %40, %if.then74 ], [ %36, %if.end50.for.end_crit_edge ], [ %44, %if.then84.for.end_crit_edge ]
  %and88 = and i32 %v.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.body93, label %for.end.err_disable_clks_crit_edge

for.end.err_disable_clks_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clks

do.body93:                                        ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %data4.0)
  %46 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ioaddr, align 32
  %add.ptr97 = getelementptr i8, ptr %47, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %45) #7, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  %49 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ioaddr, align 32
  %add.ptr102 = getelementptr i8, ptr %50, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 %48) #7, !srcloc !40
  %call106 = tail call i64 @ktime_get() #7
  %add.i218 = add i64 %call106, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 341) #7
  %51 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ioaddr, align 32
  %add.ptr125233 = getelementptr i8, ptr %52, i32 %5
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125233) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %54 = and i32 %53, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool130.not235 = icmp eq i32 %54, 0
  br i1 %tobool130.not235, label %do.body93.for.end153.thread_crit_edge, label %do.body93.land.lhs.true134_crit_edge

do.body93.land.lhs.true134_crit_edge:             ; preds = %do.body93
  br label %land.lhs.true134

do.body93.for.end153.thread_crit_edge:            ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end153.thread

land.lhs.true134:                                 ; preds = %if.then149.land.lhs.true134_crit_edge, %do.body93.land.lhs.true134_crit_edge
  %call135 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call135, i64 %add.i218)
  %cmp3.i220 = icmp sgt i64 %call135, %add.i218
  br i1 %cmp3.i220, label %for.end153, label %if.then149

if.then149:                                       ; preds = %land.lhs.true134
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %55 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ioaddr, align 32
  %add.ptr125 = getelementptr i8, ptr %56, i32 %5
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %58 = and i32 %57, 16777216
  %tobool130.not = icmp eq i32 %58, 0
  br i1 %tobool130.not, label %if.then149.for.end153.thread_crit_edge, label %if.then149.land.lhs.true134_crit_edge

if.then149.land.lhs.true134_crit_edge:            ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true134

if.then149.for.end153.thread_crit_edge:           ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end153.thread

for.end153:                                       ; preds = %land.lhs.true134
  %59 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ioaddr, align 32
  %add.ptr143 = getelementptr i8, ptr %60, i32 %5
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr143) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %62 = and i32 %61, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool156.not = icmp eq i32 %62, 0
  br i1 %tobool156.not, label %for.end153.for.end153.thread_crit_edge, label %for.end153.err_disable_clks_crit_edge

for.end153.err_disable_clks_crit_edge:            ; preds = %for.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clks

for.end153.for.end153.thread_crit_edge:           ; preds = %for.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end153.thread

for.end153.thread:                                ; preds = %for.end153.for.end153.thread_crit_edge, %if.then149.for.end153.thread_crit_edge, %do.body93.for.end153.thread_crit_edge
  br label %err_disable_clks

err_disable_clks:                                 ; preds = %for.end153.thread, %for.end153.err_disable_clks_crit_edge, %for.end.err_disable_clks_crit_edge
  %ret.0 = phi i32 [ -16, %for.end.err_disable_clks_crit_edge ], [ 0, %for.end153.thread ], [ -110, %for.end153.err_disable_clks_crit_edge ]
  %63 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device, align 8
  %call.i223 = tail call i32 @__pm_runtime_idle(ptr noundef %64, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clks, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_disable_clks ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stmmac_mdio_unregister(ptr nocapture noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %ndev, i32 16268
  %0 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mii, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr i8, ptr %ndev, i32 2476
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %xpcs = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %xpcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xpcs, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @mdio_device_free(ptr noundef %7) #7
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %xpcs6 = getelementptr inbounds %struct.mac_device_info, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %xpcs6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xpcs6, align 4
  tail call void @xpcs_destroy(ptr noundef %11) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  %12 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mii, align 4
  tail call void @mdiobus_unregister(ptr noundef %13) #7
  %14 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mii, align 4
  %priv10 = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %priv10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %priv10, align 8
  %17 = load ptr, ptr %mii, align 4
  tail call void @mdiobus_free(ptr noundef %17) #7
  %18 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %mii, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xpcs_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c", i32 367, i32 12}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c", i32 373, i32 13}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c", i32 428, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @stmmac_xpcs_setup._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @stmmac_xpcs_setup._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c", i32 460, i32 18}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c", i32 474, i32 4}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @stmmac_mdio_register._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @stmmac_mdio_register._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c", i32 485, i32 41}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c", i32 493, i32 3}
!24 = !{ptr @stmmac_mdio_register._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @stmmac_mdio_register._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c", i32 534, i32 3}
!28 = !{ptr @stmmac_mdio_register._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @stmmac_mdio_register._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2157515403}
!40 = !{i64 724212}
!41 = !{i8 0, i8 2}
!42 = !{i64 2148459709}
!43 = !{i64 946309, i64 946334, i64 946356, i64 946372, i64 946384, i64 946404, i64 946428, i64 946444, i64 946456}
!44 = !{i64 2148459897}
!45 = !{i64 724630}
!46 = !{i64 2157485415}
!47 = !{i64 2157485925}
!48 = !{i64 2157481275}
!49 = !{i64 2157481589}
!50 = !{i64 2157482315}
!51 = !{i64 2157483325}
!52 = !{i64 2157487883}
!53 = !{i64 2157488393}
!54 = !{i64 2157488624}
!55 = !{i64 2157489033}
!56 = !{i64 2157491041}
!57 = !{i64 2157491551}
!58 = !{i64 2157492068}
!59 = !{i64 2157494641}
!60 = !{i64 2157495151}
!61 = !{i64 2157497109}
!62 = !{i64 2157497619}
!63 = !{i64 2157497850}
!64 = !{i64 2157498259}
!65 = !{i64 2157500267}
!66 = !{i64 2157500777}
!67 = !{i64 2157503284}
!68 = !{i64 2157503806}
!69 = !{i64 2157504034}
!70 = !{i64 2157504443}
!71 = !{i64 2157506317}
!72 = !{i64 2157506839}
!73 = !{i64 2157507356}
!74 = !{i64 2157510553}
!75 = !{i64 2157511075}
!76 = !{i64 2157511303}
!77 = !{i64 2157511712}
!78 = !{i64 2157513586}
!79 = !{i64 2157514108}
