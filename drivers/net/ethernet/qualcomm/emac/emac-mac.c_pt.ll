; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qualcomm/emac/emac-mac.c_pt.bc'
source_filename = "../drivers/net/ethernet/qualcomm/emac/emac-mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.emac_adapter = type { ptr, ptr, ptr, ptr, ptr, %struct.emac_sgmii, %struct.emac_stats, %struct.emac_irq, [7 x ptr], %struct.emac_ring_header, %struct.emac_tx_queue, %struct.emac_rx_queue, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, i16, %struct.mutex }
%struct.emac_sgmii = type { ptr, ptr, i32, %struct.atomic_t, ptr }
%struct.emac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.spinlock }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.emac_irq = type { i32, i32 }
%struct.emac_ring_header = type { ptr, i32, i32, i32 }
%struct.emac_tx_queue = type { %struct.emac_tpd_ring, i32, i32, i16, i16, i16, i8, i8 }
%struct.emac_tpd_ring = type { ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.emac_rx_queue = type { ptr, %struct.emac_rrd_ring, %struct.emac_rfd_ring, %struct.napi_struct, ptr, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8 }
%struct.emac_rrd_ring = type { ptr, i32, i32, i32, i32, i32 }
%struct.emac_rfd_ring = type { ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.emac_buffer = type { ptr, i16, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.111, [48 x i8], %union.anon.112, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.114, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.111 = type { i64 }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, ptr }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.116, i32, i32, i32, i16, i16, %union.anon.118, i32, %union.anon.119, %union.anon.120, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.116 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i16 }
%struct.page = type { i32, %union.anon.10, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.anon.117 = type { i16, i16 }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error: Tx Queue alloc failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error: Rx Queue alloc failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not connect phy\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error: multi-RFD not support yet!\0A\00", [61 x i8] zeroinitializer }, align 32
@emac_mac_rx_process.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 1, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom_emac\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"emac_mac_rx_process\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/qualcomm/emac/emac-mac.c\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Drop error packet[RRD: 0x%x:0x%x:0x%x:0x%x]\0A\00", [51 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"error: multi-RFD not support yet! nor:%lu\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tso not needed for packet with 0 data\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error: payload offset should be even\0A\00", [58 x i8] zeroinitializer }, align 32
@switch.table.emac_mac_up = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1025, i32 1026, i32 1024, i32 1028], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 782, i32 28 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 788, i32 28 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 944, i32 28 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1122, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1134, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 326, i32 6 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1010, i32 7 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1270, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [49 x i8] c"../drivers/net/ethernet/qualcomm/emac/emac-mac.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1313, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant [25 x i8] c"switch.table.emac_mac_up\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @switch.table.emac_mac_up], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.emac_mac_up to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @emac_mac_multicast_addr_set(ptr nocapture noundef readonly %adpt, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #10
  %0 = and i32 %call, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %2 to i32
  %shr24 = lshr i32 %conv2.i.i, 2
  %and25 = and i32 %shr24, 31
  %base = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 3
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 5264
  %5 = lshr i32 %conv2.i.i, 5
  %shl26 = and i32 %5, 4
  %add.ptr27 = getelementptr i8, ptr %add.ptr, i32 %shl26
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #7, !srcloc !35
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %shl31 = shl nuw i32 1, %and25
  %or32 = or i32 %7, %shl31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %or32)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr34 = getelementptr i8, ptr %10, i32 5264
  %add.ptr36 = getelementptr i8, ptr %add.ptr34, i32 %shl26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %8) #7, !srcloc !38
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @emac_mac_multicast_addr_clear(ptr nocapture noundef readonly %adpt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %base = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 5264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 5268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #7, !srcloc !38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @emac_mac_mode_config(ptr nocapture noundef readonly %adpt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adpt, align 8
  %base = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5248
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  %5 = and i32 %4, -281018371
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %7 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %features, align 16
  %9 = trunc i64 %8 to i32
  %10 = shl i32 %9, 6
  %11 = and i32 %10, 16384
  %12 = or i32 %11, %6
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 8
  %and4 = shl i32 %14, 7
  %15 = and i32 %and4, 32768
  %16 = or i32 %12, %15
  %and10 = shl i32 %14, 16
  %17 = and i32 %and10, 33554432
  %18 = or i32 %16, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr16 = getelementptr i8, ptr %21, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %19) #7, !srcloc !38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @emac_mac_reset(ptr nocapture noundef readonly %adpt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 5536
  tail call void @emac_reg_update32(ptr noundef %add.ptr.i, i32 noundef -2147483648, i32 noundef 0) #7
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 5520
  tail call void @emac_reg_update32(ptr noundef %add.ptr2.i, i32 noundef 32, i32 noundef 0) #7
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %5, i32 5248
  tail call void @emac_reg_update32(ptr noundef %add.ptr4.i, i32 noundef 3, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1050, i32 noundef 2) #7
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 5120
  tail call void @emac_reg_update32(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #7
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr2 = getelementptr i8, ptr %9, i32 5120
  tail call void @emac_reg_update32(ptr noundef %add.ptr2, i32 noundef 0, i32 noundef 16384) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @emac_mac_stop(ptr nocapture noundef readonly %adpt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 5536
  tail call void @emac_reg_update32(ptr noundef %add.ptr, i32 noundef -2147483648, i32 noundef 0) #7
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 5520
  tail call void @emac_reg_update32(ptr noundef %add.ptr2, i32 noundef 32, i32 noundef 0) #7
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 5248
  tail call void @emac_reg_update32(ptr noundef %add.ptr4, i32 noundef 3, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1050, i32 noundef 2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @emac_reg_update32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @emac_mac_rx_tx_rings_alloc_all(ptr noundef %adpt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_header1 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 9
  %0 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adpt, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tx_desc_cnt = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 12
  %4 = ptrtoint ptr %tx_desc_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_desc_cnt, align 8
  %rx_desc_cnt = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 13
  %6 = ptrtoint ptr %rx_desc_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_desc_cnt, align 4
  %count = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %count, align 4
  %count5 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 1, i32 3
  %9 = ptrtoint ptr %count5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %count5, align 4
  %count8 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2, i32 4
  %10 = ptrtoint ptr %count8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %count8, align 4
  %tpd_size = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 16
  %11 = ptrtoint ptr %tpd_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tpd_size, align 8
  %mul9 = mul i32 %12, %5
  %rfd_size = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 15
  %13 = ptrtoint ptr %rfd_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rfd_size, align 4
  %rrd_size = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 14
  %15 = ptrtoint ptr %rrd_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rrd_size, align 8
  %reass.add129 = add i32 %16, %14
  %reass.mul130 = mul i32 %reass.add129, %7
  %reass.add128 = add i32 %reass.mul130, %mul9
  %reass.mul = shl i32 %reass.add128, 2
  %add16 = add i32 %reass.mul, 24
  %size = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 9, i32 2
  %17 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add16, ptr %size, align 4
  %used = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 9, i32 3
  %18 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %used, align 4
  %dma_addr = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 9, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %add16, ptr noundef %dma_addr, i32 noundef 3264, i32 noundef 0) #7
  %19 = ptrtoint ptr %ring_header1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %ring_header1, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_q = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10
  %20 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_addr, align 4
  %add20 = add i32 %21, 7
  %and = and i32 %add20, -8
  %sub = sub i32 %and, %21
  %22 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %used, align 4
  %23 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count, align 4
  %mul.i = mul i32 %24, 12
  %call.i1.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3520) #11
  %25 = ptrtoint ptr %tx_q to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i1.i.i.i, ptr %tx_q, align 4
  %tobool.not.i = icmp eq ptr %call.i1.i.i.i, null
  br i1 %tobool.not.i, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adpt, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str) #12
  br label %err_alloc_tx

if.end28:                                         ; preds = %if.end
  %28 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count, align 4
  %30 = ptrtoint ptr %tpd_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tpd_size, align 8
  %mul8.i = shl i32 %31, 2
  %mul9.i = mul i32 %mul8.i, %29
  %size11.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 0, i32 3
  %32 = ptrtoint ptr %size11.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul9.i, ptr %size11.i, align 4
  %33 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_addr, align 4
  %35 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %used, align 4
  %add.i = add i32 %36, %34
  %dma_addr13.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 0, i32 2
  %37 = ptrtoint ptr %dma_addr13.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add.i, ptr %dma_addr13.i, align 4
  %38 = ptrtoint ptr %ring_header1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ring_header1, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 %36
  %v_addr16.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 0, i32 1
  %40 = ptrtoint ptr %v_addr16.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i, ptr %v_addr16.i, align 4
  %add19.i = add i32 %mul9.i, 7
  %and.i = and i32 %add19.i, -8
  %add21.i = add i32 %and.i, %36
  store i32 %add21.i, ptr %used, align 4
  %produce_idx.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 0, i32 5
  %41 = ptrtoint ptr %produce_idx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %produce_idx.i, align 4
  %consume_idx.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 0, i32 6
  %42 = ptrtoint ptr %consume_idx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %consume_idx.i, align 4
  %rfd.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2
  %43 = ptrtoint ptr %count8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count8, align 4
  %mul.i83 = mul i32 %44, 12
  %call.i1.i.i.i106 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i83, i32 noundef 3520) #11
  %45 = ptrtoint ptr %rfd.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i1.i.i.i106, ptr %rfd.i, align 4
  %tobool.not.i109 = icmp eq ptr %call.i1.i.i.i106, null
  br i1 %tobool.not.i109, label %if.then31, label %emac_rx_descs_alloc.exit.thread

emac_rx_descs_alloc.exit.thread:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %rrd.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 1
  %46 = ptrtoint ptr %count5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count5, align 4
  %48 = ptrtoint ptr %rrd_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rrd_size, align 8
  %mul8.i112 = shl i32 %49, 2
  %mul9.i113 = mul i32 %mul8.i112, %47
  %size11.i114 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 1, i32 2
  %50 = ptrtoint ptr %size11.i114 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %mul9.i113, ptr %size11.i114, align 4
  %51 = ptrtoint ptr %count8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count8, align 4
  %53 = ptrtoint ptr %rfd_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rfd_size, align 4
  %mul14.i = shl i32 %54, 2
  %mul15.i = mul i32 %mul14.i, %52
  %size17.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2, i32 3
  %55 = ptrtoint ptr %size17.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul15.i, ptr %size17.i, align 4
  %56 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_addr, align 4
  %58 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %used, align 4
  %add.i117 = add i32 %59, %57
  %dma_addr19.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 1, i32 1
  %60 = ptrtoint ptr %dma_addr19.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add.i117, ptr %dma_addr19.i, align 4
  %61 = ptrtoint ptr %ring_header1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ring_header1, align 4
  %add.ptr.i118 = getelementptr i8, ptr %62, i32 %59
  %63 = ptrtoint ptr %rrd.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr.i118, ptr %rrd.i, align 4
  %add25.i = add i32 %mul9.i113, 7
  %and.i119 = and i32 %add25.i, -8
  %add27.i = add i32 %59, %and.i119
  %add30.i = add i32 %add27.i, %57
  %dma_addr32.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2, i32 2
  %64 = ptrtoint ptr %dma_addr32.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add30.i, ptr %dma_addr32.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %62, i32 %add27.i
  %v_addr37.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2, i32 1
  %65 = ptrtoint ptr %v_addr37.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr35.i, ptr %v_addr37.i, align 4
  %add40.i = add i32 %mul15.i, 7
  %and41.i = and i32 %add40.i, -8
  %add43.i = add i32 %add27.i, %and41.i
  store i32 %add43.i, ptr %used, align 4
  %produce_idx.i120 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 1, i32 4
  %66 = ptrtoint ptr %produce_idx.i120 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %produce_idx.i120, align 4
  %consume_idx.i121 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 1, i32 5
  %67 = ptrtoint ptr %consume_idx.i121 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %consume_idx.i121, align 4
  %produce_idx47.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2, i32 5
  %68 = ptrtoint ptr %produce_idx47.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %produce_idx47.i, align 4
  %consume_idx49.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2, i32 7
  %69 = ptrtoint ptr %consume_idx49.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %consume_idx49.i, align 4
  br label %cleanup

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %adpt, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %71, ptr noundef nonnull @.str.1) #12
  tail call fastcc void @emac_tx_q_descs_free(ptr noundef %adpt) #7
  %72 = ptrtoint ptr %tx_q to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tx_q, align 4
  tail call void @kfree(ptr noundef %73) #7
  %74 = call ptr @memset(ptr %tx_q, i32 0, i32 16)
  br label %err_alloc_tx

err_alloc_tx:                                     ; preds = %if.then31, %if.then26
  %75 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size, align 4
  %77 = ptrtoint ptr %ring_header1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ring_header1, align 4
  %79 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %76, ptr noundef %78, i32 noundef %80, i32 noundef 0) #7
  %81 = call ptr @memset(ptr %ring_header1, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_tx, %emac_rx_descs_alloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_alloc_tx ], [ -12, %entry.cleanup_crit_edge ], [ 0, %emac_rx_descs_alloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @emac_mac_rx_tx_rings_free_all(ptr nocapture noundef %adpt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_header1 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 9
  %0 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adpt, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tx_q1.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10
  tail call fastcc void @emac_tx_q_descs_free(ptr noundef %adpt) #7
  %4 = ptrtoint ptr %tx_q1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_q1.i, align 4
  tail call void @kfree(ptr noundef %5) #7
  %6 = call ptr @memset(ptr %tx_q1.i, i32 0, i32 16)
  tail call fastcc void @emac_rx_q_free_descs(ptr noundef %adpt) #7
  %rfd.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2
  %7 = ptrtoint ptr %rfd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rfd.i, align 4
  tail call void @kfree(ptr noundef %8) #7
  %rrd.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %rrd.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rrd.i, align 4
  %dma_addr9.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 1, i32 1
  %10 = ptrtoint ptr %dma_addr9.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dma_addr9.i, align 4
  %size11.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 1, i32 2
  %11 = ptrtoint ptr %size11.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %size11.i, align 4
  %12 = call ptr @memset(ptr %rfd.i, i32 0, i32 16)
  %size = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 9, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  %15 = ptrtoint ptr %ring_header1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring_header1, align 4
  %dma_addr = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef 0) #7
  %19 = call ptr @memset(ptr %ring_header1, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @emac_mac_up(ptr noundef %adpt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adpt, align 8
  %tx_q.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10
  %produce_idx.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 0, i32 5
  %2 = ptrtoint ptr %produce_idx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %produce_idx.i, align 4
  %consume_idx.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 0, i32 6
  %3 = ptrtoint ptr %consume_idx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %consume_idx.i, align 4
  %count.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 0, i32 4
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp43.not.i = icmp eq i32 %5, 0
  br i1 %cmp43.not.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.044.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %tx_q.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_q.i, align 4
  %dma_addr.i = getelementptr %struct.emac_buffer, ptr %7, i32 %i.044.i, i32 2
  %8 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dma_addr.i, align 4
  %inc.i = add nuw i32 %i.044.i, 1
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %10
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %produce_idx7.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 1, i32 4
  %11 = ptrtoint ptr %produce_idx7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %produce_idx7.i, align 4
  %consume_idx10.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 1, i32 5
  %12 = ptrtoint ptr %consume_idx10.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %consume_idx10.i, align 4
  %rfd.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2
  %produce_idx12.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2, i32 5
  %13 = ptrtoint ptr %produce_idx12.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %produce_idx12.i, align 4
  %consume_idx15.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2, i32 7
  %14 = ptrtoint ptr %consume_idx15.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %consume_idx15.i, align 4
  %count19.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2, i32 4
  %15 = ptrtoint ptr %count19.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp2045.not.i = icmp eq i32 %16, 0
  br i1 %cmp2045.not.i, label %for.end.i.emac_mac_rx_tx_ring_reset_all.exit_crit_edge, label %for.end.i.for.body21.i_crit_edge

for.end.i.for.body21.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body21.i

for.end.i.emac_mac_rx_tx_ring_reset_all.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %emac_mac_rx_tx_ring_reset_all.exit

for.body21.i:                                     ; preds = %for.body21.i.for.body21.i_crit_edge, %for.end.i.for.body21.i_crit_edge
  %i.146.i = phi i32 [ %inc27.i, %for.body21.i.for.body21.i_crit_edge ], [ 0, %for.end.i.for.body21.i_crit_edge ]
  %17 = ptrtoint ptr %rfd.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rfd.i, align 4
  %dma_addr25.i = getelementptr %struct.emac_buffer, ptr %18, i32 %i.146.i, i32 2
  %19 = ptrtoint ptr %dma_addr25.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dma_addr25.i, align 4
  %inc27.i = add nuw i32 %i.146.i, 1
  %20 = ptrtoint ptr %count19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count19.i, align 4
  %cmp20.i = icmp ult i32 %inc27.i, %21
  br i1 %cmp20.i, label %for.body21.i.for.body21.i_crit_edge, label %for.body21.i.emac_mac_rx_tx_ring_reset_all.exit_crit_edge

for.body21.i.emac_mac_rx_tx_ring_reset_all.exit_crit_edge: ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %emac_mac_rx_tx_ring_reset_all.exit

for.body21.i.for.body21.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21.i

emac_mac_rx_tx_ring_reset_all.exit:               ; preds = %for.body21.i.emac_mac_rx_tx_ring_reset_all.exit_crit_edge, %for.end.i.emac_mac_rx_tx_ring_reset_all.exit_crit_edge
  %22 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adpt, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 86
  %24 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx.i.i = getelementptr i8, ptr %25, i32 2
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %27 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %25, i32 3
  %28 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %29 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %25, i32 4
  %30 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %31 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %25, i32 5
  %32 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %33 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %34 = tail call i32 @llvm.bswap.i32(i32 %or10.i.i) #7
  %base.i.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 3
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 5256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %34) #7, !srcloc !38
  %37 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %25, align 1
  %conv12.i.i = zext i8 %38 to i32
  %shl13.i.i = shl nuw nsw i32 %conv12.i.i, 8
  %arrayidx14.i.i = getelementptr i8, ptr %25, i32 1
  %39 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i.i = zext i8 %40 to i32
  %or16.i.i = or i32 %shl13.i.i, %conv15.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %41 = tail call i32 @llvm.bswap.i32(i32 %or16.i.i) #7
  %42 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %43, i32 5260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 %41) #7, !srcloc !38
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 20
  %44 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %45)
  %cmp.i29 = icmp ugt i32 %45, 1536
  %add5.i = add i32 %45, 29
  %and.i = and i32 %add5.i, -8
  %cond.i = select i1 %cmp.i29, i32 %and.i, i32 1536
  %rxbuf_size.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 17
  %46 = ptrtoint ptr %rxbuf_size.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond.i, ptr %rxbuf_size.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %dma_addr.i.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 0, i32 2
  %47 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %48, i32 5444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_addr.i.i, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %53, i32 5504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %51) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %54 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count.i, align 4
  %and13.i.i = and i32 %55, 65535
  %56 = tail call i32 @llvm.bswap.i32(i32 %and13.i.i) #7
  %57 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %58, i32 5508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i, i32 %56) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %dma_addr18.i.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2, i32 2
  %59 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i, align 4
  %add.ptr22.i.i = getelementptr i8, ptr %60, i32 5440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.i, i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %61 = ptrtoint ptr %dma_addr18.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dma_addr18.i.i, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #7
  %64 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i.i, align 4
  %add.ptr30.i.i = getelementptr i8, ptr %65, i32 5456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i, i32 %63) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %dma_addr34.i.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 1, i32 1
  %66 = ptrtoint ptr %dma_addr34.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma_addr34.i.i, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #7
  %69 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i, align 4
  %add.ptr37.i.i = getelementptr i8, ptr %70, i32 5480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i.i, i32 %68) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %71 = ptrtoint ptr %count19.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count19.i, align 4
  %and43.i.i = and i32 %72, 4095
  %73 = tail call i32 @llvm.bswap.i32(i32 %and43.i.i) #7
  %74 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i.i, align 4
  %add.ptr45.i.i = getelementptr i8, ptr %75, i32 5472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i.i, i32 %73) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %count50.i.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 1, i32 3
  %76 = ptrtoint ptr %count50.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %count50.i.i, align 4
  %and51.i.i = and i32 %77, 4095
  %78 = tail call i32 @llvm.bswap.i32(i32 %and51.i.i) #7
  %79 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i.i, align 4
  %add.ptr53.i.i = getelementptr i8, ptr %80, i32 5496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i.i, i32 %78) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  %81 = ptrtoint ptr %rxbuf_size.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rxbuf_size.i, align 4
  %and56.i.i = and i32 %82, 65535
  %83 = tail call i32 @llvm.bswap.i32(i32 %and56.i.i) #7
  %84 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i.i, align 4
  %add.ptr58.i.i = getelementptr i8, ptr %85, i32 5476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.i.i, i32 %83) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %86 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i.i, align 4
  %add.ptr62.i.i = getelementptr i8, ptr %87, i32 5512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i.i, i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %88 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i.i, align 4
  %add.ptr66.i.i = getelementptr i8, ptr %89, i32 5428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i.i, i32 16777216) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @arm_heavy_mb() #7
  %90 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mtu.i, align 4
  %add9.i = add i32 %91, 22
  %92 = tail call i32 @llvm.bswap.i32(i32 %add9.i) #7
  %93 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %94, i32 5276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %92) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %95 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %96, i32 5524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 -2147221504) #7, !srcloc !38
  %tpd_burst.i.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 22
  %97 = ptrtoint ptr %tpd_burst.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %tpd_burst.i.i, align 4
  %99 = and i8 %98, 15
  %or.i49.i = zext i8 %99 to i32
  %or1.i.i = or i32 %or.i49.i, 16777408
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %100 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i) #7
  %101 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %102, i32 5520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %100) #7, !srcloc !38
  %103 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i.i, align 4
  %add.ptr8.i50.i = getelementptr i8, ptr %104, i32 5528
  tail call void @emac_reg_update32(ptr noundef %add.ptr8.i50.i, i32 noundef 268374015, i32 noundef 0) #7
  %rfd_burst.i.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 23
  %105 = ptrtoint ptr %rfd_burst.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %rfd_burst.i.i, align 1
  %conv.i51.i = zext i8 %106 to i32
  %shl.i52.i = shl nuw nsw i32 %conv.i51.i, 20
  %and.i.i = and i32 %shl.i52.i, 66060288
  %or.i53.i = or i32 %and.i.i, 1073741952
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %107 = tail call i32 @llvm.bswap.i32(i32 %or.i53.i) #7
  %108 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %109, i32 5536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 %107) #7, !srcloc !38
  %110 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %111, i32 5540
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %113 = and i32 %112, 65535
  %114 = or i32 %113, 272891904
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %115 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base.i.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %116, i32 5540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 %114) #7, !srcloc !38
  %117 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base.i.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %118, i32 5544
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  %120 = and i32 %119, 15728880
  %121 = or i32 %120, -1107255295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @arm_heavy_mb() #7
  %122 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base.i.i, align 4
  %add.ptr24.i.i = getelementptr i8, ptr %123, i32 5544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i.i, i32 %121) #7, !srcloc !38
  %124 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i.i, align 4
  %add.ptr28.i.i = getelementptr i8, ptr %125, i32 5548
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %and32.i.i = and i32 %126, 15728640
  %or33.i.i = or i32 %and32.i.i, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %127 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base.i.i, align 4
  %add.ptr38.i.i = getelementptr i8, ptr %128, i32 5548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i.i, i32 %or33.i.i) #7, !srcloc !38
  %dma_order.i.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 28
  %129 = ptrtoint ptr %dma_order.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dma_order.i.i, align 8
  %switch.tableidx = add i32 %130, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %131 = icmp ult i32 %switch.tableidx, 4
  br i1 %131, label %switch.lookup, label %emac_mac_rx_tx_ring_reset_all.exit.emac_mac_config.exit_crit_edge

emac_mac_rx_tx_ring_reset_all.exit.emac_mac_config.exit_crit_edge: ; preds = %emac_mac_rx_tx_ring_reset_all.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %emac_mac_config.exit

switch.lookup:                                    ; preds = %emac_mac_rx_tx_ring_reset_all.exit
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.emac_mac_up, i32 0, i32 %switch.tableidx
  %132 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %132)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %emac_mac_config.exit

emac_mac_config.exit:                             ; preds = %switch.lookup, %emac_mac_rx_tx_ring_reset_all.exit.emac_mac_config.exit_crit_edge
  %dma_ctrl.0.i.i = phi i32 [ 1024, %emac_mac_rx_tx_ring_reset_all.exit.emac_mac_config.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %dmar_block.i.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 26
  %133 = ptrtoint ptr %dmar_block.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dmar_block.i.i, align 8
  %shl.i56.i = shl i32 %134, 4
  %and.i57.i = and i32 %shl.i56.i, 112
  %or5.i.i = or i32 %and.i57.i, %dma_ctrl.0.i.i
  %dmaw_block.i.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 27
  %135 = ptrtoint ptr %dmaw_block.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dmaw_block.i.i, align 4
  %shl6.i58.i = shl i32 %136, 7
  %and7.i.i = and i32 %shl6.i58.i, 896
  %or8.i.i = or i32 %or5.i.i, %and7.i.i
  %dmar_dly_cnt.i.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 25
  %137 = ptrtoint ptr %dmar_dly_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %dmar_dly_cnt.i.i, align 4
  %shl9.i.i = shl i32 %138, 11
  %and10.i.i = and i32 %shl9.i.i, 63488
  %or11.i.i = or i32 %or8.i.i, %and10.i.i
  %dmaw_dly_cnt.i.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 24
  %139 = ptrtoint ptr %dmaw_dly_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dmaw_dly_cnt.i.i, align 8
  %shl12.i.i = shl i32 %140, 16
  %and13.i59.i = and i32 %shl12.i.i, 983040
  %or14.i.i = or i32 %or11.i.i, %and13.i59.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %141 = tail call i32 @llvm.bswap.i32(i32 %or14.i.i) #7
  %142 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %143, i32 5568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %141) #7, !srcloc !38
  %144 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base.i.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %145, i32 5648
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  %147 = and i32 %146, -184549377
  %148 = or i32 %147, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %149 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base.i.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %150, i32 5648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %148) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  %151 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base.i.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %152, i32 6164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %153 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base.i.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %154, i32 6544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 16777216) #7, !srcloc !38
  %rx_q = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11
  tail call fastcc void @emac_mac_rx_descs_refill(ptr noundef %adpt, ptr noundef %rx_q)
  %phydev = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 2
  %155 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %phydev, align 8
  %irq = getelementptr inbounds %struct.phy_device, ptr %156, i32 0, i32 25
  %157 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 -1, ptr %irq, align 4
  %158 = load ptr, ptr %phydev, align 8
  %call = tail call i32 @phy_connect_direct(ptr noundef %1, ptr noundef %158, ptr noundef nonnull @emac_adjust_link, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %emac_mac_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  %159 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %adpt, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %160, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end:                                           ; preds = %emac_mac_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  %161 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %phydev, align 8
  tail call void (ptr, ptr, ...) @phy_attached_print(ptr noundef %162, ptr noundef null) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %163 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %base.i.i, align 4
  %add.ptr = getelementptr i8, ptr %164, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -129) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %mask = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 7, i32 1
  %165 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %mask, align 4
  %167 = tail call i32 @llvm.bswap.i32(i32 %166)
  %168 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %base.i.i, align 4
  %add.ptr10 = getelementptr i8, ptr %169, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %167) #7, !srcloc !38
  %170 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %phydev, align 8
  tail call void @phy_start(ptr noundef %171) #7
  %napi = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 3
  tail call void @napi_enable(ptr noundef %napi) #7
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %172 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %173, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emac_mac_rx_descs_refill(ptr nocapture noundef readonly %adpt, ptr nocapture noundef %rx_q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rfd = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 2
  %produce_idx = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %produce_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %produce_idx, align 4
  %add = add i32 %1, 1
  %count2 = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp eq i32 %add, %3
  %spec.store.select = select i1 %cmp, i32 0, i32 %add
  %4 = ptrtoint ptr %rfd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rfd, align 4
  %dma_addr98 = getelementptr %struct.emac_buffer, ptr %5, i32 %spec.store.select, i32 2
  %6 = ptrtoint ptr %dma_addr98 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not99 = icmp eq i32 %7, 0
  br i1 %tobool.not99, label %while.body.lr.ph, label %entry.if.end52_crit_edge

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

while.body.lr.ph:                                 ; preds = %entry
  %arrayidx = getelementptr %struct.emac_buffer, ptr %5, i32 %1
  %rxbuf_size = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 17
  %v_addr.i = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 2, i32 1
  %rfd_size.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %curr_rxbuf.0101 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %arrayidx40, %cleanup.while.body_crit_edge ]
  %count.0100 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %cleanup.while.body_crit_edge ]
  %8 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adpt, align 8
  %10 = ptrtoint ptr %rxbuf_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxbuf_size, align 4
  %add.i.i = add i32 %11, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %9, i32 noundef %add.i.i, i32 noundef 2592) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %while.body.while.end_crit_edge, label %if.end11

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end11:                                         ; preds = %while.body
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %15, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %16 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adpt, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 133, i32 1
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent, align 8
  %20 = ptrtoint ptr %rxbuf_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rxbuf_size, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i) #7
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end11
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !73

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %19) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i87 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i87, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %25, %if.end.i.i ], [ %23, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %19, ptr noundef %add.ptr.i.i.i, i32 noundef %21) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %26 = load ptr, ptr @mem_map, align 4
  %27 = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.i = add i32 %27, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %26, i32 %shr.i
  %and.i = and i32 %27, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %19, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %21, i32 noundef 2, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_addr15 = getelementptr inbounds %struct.emac_buffer, ptr %curr_rxbuf.0101, i32 0, i32 2
  %28 = ptrtoint ptr %dma_addr15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i, ptr %dma_addr15, align 4
  %29 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adpt, align 8
  %parent18 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 133, i32 1
  %31 = ptrtoint ptr %parent18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent18, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %32, i32 noundef %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then22, label %cleanup

if.then22:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #7
  br label %while.end

cleanup:                                          ; preds = %dma_map_single_attrs.exit
  %33 = ptrtoint ptr %curr_rxbuf.0101 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i.i, ptr %curr_rxbuf.0101, align 4
  %34 = ptrtoint ptr %rxbuf_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rxbuf_size, align 4
  %conv = trunc i32 %35 to i16
  %length = getelementptr inbounds %struct.emac_buffer, ptr %curr_rxbuf.0101, i32 0, i32 1
  %36 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv, ptr %length, align 4
  %37 = ptrtoint ptr %dma_addr15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_addr15, align 4
  %39 = ptrtoint ptr %v_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %v_addr.i, align 4
  %41 = ptrtoint ptr %rfd_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rfd_size.i, align 4
  %43 = ptrtoint ptr %produce_idx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %produce_idx, align 4
  %mul.i = mul i32 %44, %42
  %add.ptr.i88 = getelementptr i32, ptr %40, i32 %mul.i
  %incdec.ptr.i = getelementptr i32, ptr %add.ptr.i88, i32 1
  %45 = ptrtoint ptr %add.ptr.i88 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %38, ptr %add.ptr.i88, align 4
  %46 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %incdec.ptr.i, align 4
  %47 = load i32, ptr %produce_idx, align 4
  %inc.i = add i32 %47, 1
  %48 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %49)
  %cmp.i89 = icmp eq i32 %inc.i, %49
  %spec.store.select.i = select i1 %cmp.i89, i32 0, i32 %inc.i
  %50 = ptrtoint ptr %produce_idx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %spec.store.select.i, ptr %produce_idx, align 4
  %add29 = add i32 %spec.store.select.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add29, i32 %49)
  %cmp32 = icmp eq i32 %add29, %49
  %spec.store.select53 = select i1 %cmp32, i32 0, i32 %add29
  %51 = ptrtoint ptr %rfd to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rfd, align 4
  %arrayidx40 = getelementptr %struct.emac_buffer, ptr %52, i32 %spec.store.select.i
  %inc = add i32 %count.0100, 1
  %dma_addr = getelementptr %struct.emac_buffer, ptr %52, i32 %spec.store.select53, i32 2
  %53 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_addr, align 4
  %tobool.not = icmp eq i32 %54, 0
  br i1 %tobool.not, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then22, %while.body.while.end_crit_edge
  %count.097 = phi i32 [ %count.0100, %if.then22 ], [ %inc, %cleanup.while.end_crit_edge ], [ %count.0100, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.097)
  %tobool45.not = icmp eq i32 %count.097, 0
  br i1 %tobool45.not, label %while.end.if.end52_crit_edge, label %if.then46

while.end.if.end52_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then46:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %produce_idx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %produce_idx, align 4
  %produce_shift = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 12
  %57 = ptrtoint ptr %produce_shift to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %produce_shift, align 2
  %conv49 = zext i8 %58 to i32
  %shl = shl i32 %56, %conv49
  %produce_mask = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 6
  %59 = ptrtoint ptr %produce_mask to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %produce_mask, align 8
  %and = and i32 %shl, %60
  %base = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 3
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 4
  %produce_reg = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 9
  %63 = ptrtoint ptr %produce_reg to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %produce_reg, align 4
  %conv50 = zext i16 %64 to i32
  %add.ptr = getelementptr i8, ptr %62, i32 %conv50
  tail call void @emac_reg_update32(ptr noundef %add.ptr, i32 noundef %60, i32 noundef %and) #7
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %while.end.if.end52_crit_edge, %entry.if.end52_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_adjust_link(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link, align 8
  %3 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %phydev1.i = getelementptr i8, ptr %netdev, i32 2312
  %4 = ptrtoint ptr %phydev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev1.i, align 8
  %base.i = getelementptr i8, ptr %netdev, i32 2316
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %7, i32 5520
  tail call void @emac_reg_update32(ptr noundef %add.ptr.i9, i32 noundef 0, i32 noundef 32) #7
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %9, i32 5536
  tail call void @emac_reg_update32(ptr noundef %add.ptr3.i, i32 noundef 0, i32 noundef -2147483648) #7
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %11, i32 5248
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %csr.i = getelementptr i8, ptr %netdev, i32 2320
  %13 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csr.i, align 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %automatic.i = getelementptr i8, ptr %netdev, i32 3248
  %16 = ptrtoint ptr %automatic.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %automatic.i, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.then.emac_mac_start.exit_crit_edge, label %if.then.i

if.then.emac_mac_start.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %emac_mac_start.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %pause.i = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 11
  %18 = ptrtoint ptr %pause.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pause.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.i = icmp ne i32 %19, 0
  %rx_flow_control.i = getelementptr i8, ptr %netdev, i32 3250
  %frombool.i = zext i1 %tobool13.i to i8
  %20 = ptrtoint ptr %rx_flow_control.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool.i, ptr %rx_flow_control.i, align 2
  %21 = ptrtoint ptr %pause.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pause.i, align 4
  %asym_pause.i = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 12
  %23 = ptrtoint ptr %asym_pause.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %asym_pause.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.i = icmp ne i32 %22, %24
  %tx_flow_control.i = getelementptr i8, ptr %netdev, i32 3249
  %frombool15.i = zext i1 %cmp.i to i8
  %25 = ptrtoint ptr %tx_flow_control.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool15.i, ptr %tx_flow_control.i, align 1
  br label %emac_mac_start.exit

emac_mac_start.exit:                              ; preds = %if.then.i, %if.then.emac_mac_start.exit_crit_edge
  %rx_flow_control16.i = getelementptr i8, ptr %netdev, i32 3250
  %26 = ptrtoint ptr %rx_flow_control16.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rx_flow_control16.i, align 2, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool17.not.i = icmp eq i8 %27, 0
  %cond.i = select i1 %tobool17.not.i, i32 0, i32 8
  %tx_flow_control19.i = getelementptr i8, ptr %netdev, i32 3249
  %28 = ptrtoint ptr %tx_flow_control19.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tx_flow_control19.i, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool20.not.i = icmp eq i8 %29, 0
  %cond21.i = select i1 %tobool20.not.i, i32 0, i32 4
  %speed.i = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 8
  %30 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %31)
  %cmp24.i = icmp eq i32 %31, 1000
  %32 = and i32 %15, -131073
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  %masksel.i = select i1 %cmp24.i, i32 512, i32 0
  %csr1.0.i = or i32 %masksel.i, %33
  %mac.0.v.i = select i1 %cmp24.i, i32 2097152, i32 1048576
  %duplex.i = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 9
  %34 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp31.i = icmp eq i32 %35, 1
  %masksel97.i = select i1 %cmp31.i, i32 32, i32 0
  %preamble.i = getelementptr i8, ptr %netdev, i32 3280
  %36 = ptrtoint ptr %preamble.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %preamble.i, align 8
  %shl.i = shl i32 %37, 10
  %and38.i = and i32 %shl.i, 15360
  %38 = and i32 %12, 280774368
  %single_pause_mode.i = getelementptr i8, ptr %netdev, i32 3251
  %39 = ptrtoint ptr %single_pause_mode.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %single_pause_mode.i, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool44.not.i = icmp eq i8 %40, 0
  %cond45.i = select i1 %tobool44.not.i, i32 0, i32 268435456
  %41 = or i32 %38, -1023344636
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  %and23.masked.masked.i = or i32 %cond.i, %42
  %and35.masked.i = or i32 %and23.masked.masked.i, %cond21.i
  %mac.1.masked.i = or i32 %and35.masked.i, %mac.0.v.i
  %or41.i = or i32 %mac.1.masked.i, %masksel97.i
  %and42.i = or i32 %or41.i, %and38.i
  %or46.i = or i32 %and42.i, %cond45.i
  %43 = tail call i32 @llvm.bswap.i32(i32 %csr1.0.i) #7
  %44 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %csr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #7, !srcloc !38
  %46 = tail call i32 @llvm.bswap.i32(i32 %or46.i) #7
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %48, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %46) #7, !srcloc !38
  %irq_mod.i = getelementptr i8, ptr %netdev, i32 3276
  %49 = ptrtoint ptr %irq_mod.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq_mod.i, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %53, i32 5128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 %51) #7, !srcloc !38
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr54.i = getelementptr i8, ptr %55, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 273416192) #7, !srcloc !38
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 8
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 5248
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  %61 = and i32 %60, -281018371
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #7
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 23
  %63 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %features.i.i, align 16
  %65 = trunc i64 %64 to i32
  %66 = shl i32 %65, 6
  %67 = and i32 %66, 16384
  %68 = or i32 %67, %62
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 14
  %69 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags.i.i, align 8
  %and4.i.i = shl i32 %70, 7
  %71 = and i32 %and4.i.i, 32768
  %72 = or i32 %68, %71
  %and10.i.i = shl i32 %70, 16
  %73 = and i32 %and10.i.i, 33554432
  %74 = or i32 %72, %73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #7
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %77, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 %75) #7, !srcloc !38
  %78 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i, align 4
  %add.ptr56.i = getelementptr i8, ptr %79, i32 5664
  tail call void @emac_reg_update32(ptr noundef %add.ptr56.i, i32 noundef 3, i32 noundef 0) #7
  %call2 = tail call i32 @emac_sgmii_link_change(ptr noundef %add.ptr.i, i1 noundef zeroext true) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @emac_sgmii_link_change(ptr noundef %add.ptr.i, i1 noundef zeroext false) #7
  %base.i10 = getelementptr i8, ptr %netdev, i32 2316
  %80 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %81, i32 5536
  tail call void @emac_reg_update32(ptr noundef %add.ptr.i11, i32 noundef -2147483648, i32 noundef 0) #7
  %82 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i10, align 4
  %add.ptr2.i = getelementptr i8, ptr %83, i32 5520
  tail call void @emac_reg_update32(ptr noundef %add.ptr2.i, i32 noundef 32, i32 noundef 0) #7
  %84 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i10, align 4
  %add.ptr4.i = getelementptr i8, ptr %85, i32 5248
  tail call void @emac_reg_update32(ptr noundef %add.ptr4.i, i32 noundef 3, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1050, i32 noundef 2) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %emac_mac_start.exit
  tail call void @phy_print_status(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_print(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @emac_mac_down(ptr noundef %adpt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adpt, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  %napi = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 3
  tail call void @napi_disable(ptr noundef %napi) #7
  %phydev = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 2
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 8
  tail call void @phy_stop(ptr noundef %5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %base = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 3
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 128) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #7, !srcloc !38
  %irq = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 7
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 8
  tail call void @synchronize_irq(i32 noundef %11) #7
  %12 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phydev, align 8
  tail call void @phy_disconnect(ptr noundef %13) #7
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 5536
  tail call void @emac_reg_update32(ptr noundef %add.ptr.i.i, i32 noundef -2147483648, i32 noundef 0) #7
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %17, i32 5520
  tail call void @emac_reg_update32(ptr noundef %add.ptr2.i.i, i32 noundef 32, i32 noundef 0) #7
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %19, i32 5248
  tail call void @emac_reg_update32(ptr noundef %add.ptr4.i.i, i32 noundef 3, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1050, i32 noundef 2) #7
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 5120
  tail call void @emac_reg_update32(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #7
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr2.i = getelementptr i8, ptr %23, i32 5120
  tail call void @emac_reg_update32(ptr noundef %add.ptr2.i, i32 noundef 0, i32 noundef 16384) #7
  tail call fastcc void @emac_tx_q_descs_free(ptr noundef %adpt)
  %24 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adpt, align 8
  %_tx.i.i20 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 103
  %26 = ptrtoint ptr %_tx.i.i20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i20, align 128
  %state.i.i21 = getelementptr inbounds %struct.netdev_queue, ptr %27, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i21) #7
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %27, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #7
  tail call fastcc void @emac_rx_q_free_descs(ptr noundef %adpt)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emac_tx_q_descs_free(ptr nocapture noundef %adpt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_q1 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10
  %0 = ptrtoint ptr %tx_q1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_q1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 0, i32 4
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp45.not = icmp eq i32 %3, 0
  br i1 %cmp45.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.046 = phi i32 [ %inc, %if.end14.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %tx_q1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_q1, align 4
  %arrayidx = getelementptr %struct.emac_buffer, ptr %5, i32 %i.046
  %dma_addr = getelementptr %struct.emac_buffer, ptr %5, i32 %i.046, i32 2
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %for.body.if.end9_crit_edge, label %if.then6

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adpt, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 133, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %length = getelementptr %struct.emac_buffer, ptr %5, i32 %i.046, i32 1
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length, align 4
  %conv = zext i16 %13 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %7, i32 noundef %conv, i32 noundef 1, i32 noundef 0) #7
  %14 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dma_addr, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %for.body.if.end9_crit_edge
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %16, null
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %16, i32 noundef 1) #7
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %inc = add nuw i32 %i.046, 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %if.end14.for.body_crit_edge, label %for.end.loopexit

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = mul i32 %19, 12
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %20 = ptrtoint ptr %tx_q1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_q1, align 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 %.lcssa)
  %v_addr = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 0, i32 1
  %23 = ptrtoint ptr %v_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %v_addr, align 4
  %size21 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 0, i32 3
  %25 = ptrtoint ptr %size21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size21, align 4
  %27 = call ptr @memset(ptr %24, i32 0, i32 %26)
  %consume_idx = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 0, i32 6
  %28 = ptrtoint ptr %consume_idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %consume_idx, align 4
  %produce_idx = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 0, i32 5
  %29 = ptrtoint ptr %produce_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %produce_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emac_rx_q_free_descs(ptr nocapture noundef %adpt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adpt, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %rfd = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %rfd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rfd, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2, i32 4
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp58.not = icmp eq i32 %7, 0
  br i1 %cmp58.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.059 = phi i32 [ %inc, %if.end15.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %8 = ptrtoint ptr %rfd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rfd, align 4
  %arrayidx = getelementptr %struct.emac_buffer, ptr %9, i32 %i.059
  %dma_addr = getelementptr %struct.emac_buffer, ptr %9, i32 %i.059, i32 2
  %10 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %for.body.if.end10_crit_edge, label %if.then7

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %length = getelementptr %struct.emac_buffer, ptr %9, i32 %i.059, i32 1
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length, align 4
  %conv = zext i16 %13 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %11, i32 noundef %conv, i32 noundef 2, i32 noundef 0) #7
  %14 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dma_addr, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %for.body.if.end10_crit_edge
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.end10.if.end15_crit_edge, label %if.then12

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef nonnull %16) #7
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge
  %inc = add nuw i32 %i.059, 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %if.end15.for.body_crit_edge, label %for.end.loopexit

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = mul i32 %19, 12
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %20 = ptrtoint ptr %rfd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rfd, align 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 %.lcssa)
  %rrd = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %rrd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rrd, align 4
  %size21 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 1, i32 2
  %25 = ptrtoint ptr %size21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size21, align 4
  %27 = call ptr @memset(ptr %24, i32 0, i32 %26)
  %produce_idx = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 1, i32 4
  %28 = ptrtoint ptr %produce_idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %produce_idx, align 4
  %consume_idx = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 1, i32 5
  %29 = ptrtoint ptr %consume_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %consume_idx, align 4
  %v_addr25 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2, i32 1
  %30 = ptrtoint ptr %v_addr25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %v_addr25, align 4
  %size27 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2, i32 3
  %32 = ptrtoint ptr %size27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size27, align 4
  %34 = call ptr @memset(ptr %31, i32 0, i32 %33)
  %produce_idx29 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2, i32 5
  %35 = ptrtoint ptr %produce_idx29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %produce_idx29, align 4
  %consume_idx31 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 2, i32 7
  %36 = ptrtoint ptr %consume_idx31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %consume_idx31, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @emac_mac_rx_process(ptr nocapture noundef readonly %adpt, ptr noundef %rx_q, ptr nocapture noundef %num_pkts, i32 noundef %max_pkts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adpt, align 8
  %base = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %consume_reg = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 11
  %4 = ptrtoint ptr %consume_reg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %consume_reg, align 8
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !35
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %consume_mask = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 8
  %8 = ptrtoint ptr %consume_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %consume_mask, align 8
  %and = and i32 %7, %9
  %consume_shift = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 14
  %10 = ptrtoint ptr %consume_shift to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %consume_shift, align 4
  %conv2 = zext i8 %11 to i32
  %shr = lshr i32 %and, %conv2
  %consume_idx = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %consume_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %consume_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %13)
  %cmp.not = icmp ult i32 %shr, %13
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %count8 = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %count8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count8, align 4
  %add = add i32 %15, %shr
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %shr.pn = phi i32 [ %add, %cond.false ], [ %shr, %entry.cond.end_crit_edge ]
  %cond = sub i32 %shr.pn, %13
  %rrd1.i = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 1
  %rrd_size.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 14
  %count.i = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 1, i32 3
  %rfd = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 2
  %count.i153 = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 2, i32 4
  %consume_idx10.i = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 2, i32 7
  %process_idx.i = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 2, i32 6
  %msg_enable = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 32
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %napi.i = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.cond98.do.body_crit_edge, %cond.end
  %count.0 = phi i32 [ 0, %cond.end ], [ %inc, %do.cond98.do.body_crit_edge ]
  %num_consume_pkts.0 = phi i32 [ %cond, %cond.end ], [ %dec, %do.cond98.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_consume_pkts.0)
  %tobool.not = icmp eq i32 %num_consume_pkts.0, 0
  br i1 %tobool.not, label %do.body.do.end101_crit_edge, label %if.end

do.body.do.end101_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end101

if.end:                                           ; preds = %do.body
  %16 = ptrtoint ptr %rrd1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rrd1.i, align 4
  %18 = ptrtoint ptr %rrd_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rrd_size.i, align 8
  %20 = ptrtoint ptr %consume_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %consume_idx, align 4
  %mul.i = mul i32 %21, %19
  %add.ptr.i = getelementptr i32, ptr %17, i32 %mul.i
  %add.ptr3.i = getelementptr i32, ptr %add.ptr.i, i32 3
  %22 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr3.i, align 4
  %24 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.end.do.end101_crit_edge, label %if.end.i

if.end.do.end101_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end101

if.end.i:                                         ; preds = %if.end
  %incdec.ptr.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 4
  %incdec.ptr12.i = getelementptr i32, ptr %incdec.ptr.i, i32 1
  %27 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %incdec.ptr.i, align 4
  %incdec.ptr15.i = getelementptr i32, ptr %incdec.ptr12.i, i32 1
  %29 = ptrtoint ptr %incdec.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %incdec.ptr12.i, align 4
  %31 = lshr i32 %26, 8
  %shr21.i = and i32 %31, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr21.i)
  %cmp.not.i = icmp eq i32 %shr21.i, 1
  br i1 %cmp.not.i, label %if.end.i.if.end14_crit_edge, label %if.then24.i, !prof !73

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adpt, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.10, i32 noundef %shr21.i) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then24.i, %if.end.i.if.end14_crit_edge
  %34 = and i32 %23, -129
  %35 = ptrtoint ptr %incdec.ptr15.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %incdec.ptr15.i, align 4
  %36 = ptrtoint ptr %consume_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %consume_idx, align 4
  %inc.i = add i32 %37, 1
  %38 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %39)
  %cmp40.i = icmp eq i32 %inc.i, %39
  %spec.store.select.i = select i1 %cmp40.i, i32 0, i32 %inc.i
  %40 = ptrtoint ptr %consume_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.store.select.i, ptr %consume_idx, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %26)
  %42 = and i32 %41, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %42)
  %cmp17 = icmp eq i32 %42, 65536
  br i1 %cmp17, label %if.then21, label %if.else, !prof !73

if.then21:                                        ; preds = %if.end14
  %43 = ptrtoint ptr %rfd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rfd, align 4
  %shr25 = lshr i32 %41, 20
  %arrayidx26 = getelementptr %struct.emac_buffer, ptr %44, i32 %shr25
  %45 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adpt, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 133, i32 1
  %47 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %parent, align 8
  %dma_addr = getelementptr %struct.emac_buffer, ptr %44, i32 %shr25, i32 2
  %49 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_addr, align 4
  %length = getelementptr %struct.emac_buffer, ptr %44, i32 %shr25, i32 1
  %51 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %length, align 4
  %conv28 = zext i16 %52 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %48, i32 noundef %50, i32 noundef %conv28, i32 noundef 2, i32 noundef 0) #7
  %53 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %dma_addr, align 4
  %54 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx26, align 4
  %56 = ptrtoint ptr %rfd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rfd, align 4
  %58 = and i32 %26, 61695
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #7
  %shr.i = lshr exact i32 %59, 20
  %60 = and i32 %26, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp21.not.i = icmp eq i32 %60, 0
  br i1 %cmp21.not.i, label %if.then21.emac_rx_rfd_clean.exit_crit_edge, label %for.body.lr.ph.i

if.then21.emac_rx_rfd_clean.exit_crit_edge:       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %emac_rx_rfd_clean.exit

for.body.lr.ph.i:                                 ; preds = %if.then21
  %umax = call i32 @llvm.umax.i32(i32 %shr21.i, i32 1)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.023.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc8.i, %for.body.i.for.body.i_crit_edge ]
  %consume_idx.022.i = phi i32 [ %shr.i, %for.body.lr.ph.i ], [ %spec.store.select.i155, %for.body.i.for.body.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.emac_buffer, ptr %57, i32 %consume_idx.022.i
  %61 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %arrayidx5.i, align 4
  %inc.i154 = add i32 %consume_idx.022.i, 1
  %62 = ptrtoint ptr %count.i153 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %count.i153, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i154, i32 %63)
  %cmp7.i = icmp eq i32 %inc.i154, %63
  %spec.store.select.i155 = select i1 %cmp7.i, i32 0, i32 %inc.i154
  %inc8.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not = icmp eq i32 %inc8.i, %umax
  br i1 %exitcond.not, label %for.body.i.emac_rx_rfd_clean.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.emac_rx_rfd_clean.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %emac_rx_rfd_clean.exit

emac_rx_rfd_clean.exit:                           ; preds = %for.body.i.emac_rx_rfd_clean.exit_crit_edge, %if.then21.emac_rx_rfd_clean.exit_crit_edge
  %consume_idx.0.lcssa.i = phi i32 [ %shr.i, %if.then21.emac_rx_rfd_clean.exit_crit_edge ], [ %spec.store.select.i155, %for.body.i.emac_rx_rfd_clean.exit_crit_edge ]
  %64 = ptrtoint ptr %consume_idx10.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %consume_idx.0.lcssa.i, ptr %consume_idx10.i, align 4
  %65 = ptrtoint ptr %process_idx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %consume_idx.0.lcssa.i, ptr %process_idx.i, align 4
  %dec = add i32 %num_consume_pkts.0, -1
  %inc = add i32 %count.0, 1
  %and35 = and i32 %23, 1675657216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end67, label %do.body38

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adpt, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %67, ptr noundef nonnull @.str.3) #12
  br label %do.end101

do.body38:                                        ; preds = %emac_rx_rfd_clean.exit
  %68 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %msg_enable, align 8
  %70 = and i16 %69, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool41.not = icmp eq i16 %70, 0
  br i1 %tobool41.not, label %do.body38.do.end66_crit_edge, label %do.body43

do.body38.do.end66_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

do.body43:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_mac_rx_process.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_mac_rx_process, %if.then53)) #7
          to label %do.end66 [label %if.then53], !srcloc !79

if.then53:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %adpt, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @emac_mac_rx_process.__UNIQUE_ID_ddebug504, ptr noundef %72, ptr noundef nonnull @.str.7, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %34) #7
  br label %do.end66

do.end66:                                         ; preds = %if.then53, %do.body43, %do.body38.do.end66_crit_edge
  tail call void @consume_skb(ptr noundef %55) #7
  br label %do.cond98

if.end67:                                         ; preds = %emac_rx_rfd_clean.exit
  %73 = and i32 %23, -12648448
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %sub72 = add nsw i32 %74, -4
  %call73 = tail call ptr @skb_put(ptr noundef %55, i32 noundef %sub72) #7
  %75 = getelementptr inbounds %struct.anon.0, ptr %55, i32 0, i32 2
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %1, ptr %75, align 8
  %call74 = tail call zeroext i16 @eth_type_trans(ptr noundef %55, ptr noundef %1) #7
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 15, i32 0, i32 18
  %77 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %call74, ptr %protocol, align 8
  %78 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %features, align 16
  %and75 = and i64 %79, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and75)
  %tobool76.not = icmp eq i64 %and75, 0
  br i1 %tobool76.not, label %if.end67.if.end86_crit_edge, label %if.then77

if.end67.if.end86_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then77:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %80 = lshr i32 %23, 22
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  %83 = xor i8 %82, 1
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 15
  %84 = zext i8 %83 to i16
  %85 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %85)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.shl = shl nuw nsw i16 %84, 9
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then77, %if.end67.if.end86_crit_edge
  %86 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool96.not = icmp eq i32 %86, 0
  br i1 %tobool96.not, label %if.end86.emac_receive_skb.exit_crit_edge, label %if.then.i

if.end86.emac_receive_skb.exit_crit_edge:         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %emac_receive_skb.exit

if.then.i:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  %87 = lshr i32 %30, 16
  %rev.i = trunc i32 %87 to i16
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 15, i32 0, i32 9
  %88 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 15, i32 0, i32 10
  %89 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %rev.i, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 15, i32 0, i32 3
  %90 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  br label %emac_receive_skb.exit

emac_receive_skb.exit:                            ; preds = %if.then.i, %if.end86.emac_receive_skb.exit_crit_edge
  %call.i = tail call i32 @napi_gro_receive(ptr noundef %napi.i, ptr noundef %55) #7
  %91 = ptrtoint ptr %num_pkts to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_pkts, align 4
  %inc97 = add i32 %92, 1
  store i32 %inc97, ptr %num_pkts, align 4
  br label %do.cond98

do.cond98:                                        ; preds = %emac_receive_skb.exit, %do.end66
  %93 = ptrtoint ptr %num_pkts to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_pkts, align 4
  %cmp99 = icmp slt i32 %94, %max_pkts
  br i1 %cmp99, label %do.cond98.do.body_crit_edge, label %do.cond98.do.end101_crit_edge

do.cond98.do.end101_crit_edge:                    ; preds = %do.cond98
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end101

do.cond98.do.body_crit_edge:                      ; preds = %do.cond98
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end101:                                        ; preds = %do.cond98.do.end101_crit_edge, %if.else, %if.end.do.end101_crit_edge, %do.body.do.end101_crit_edge
  %count.1 = phi i32 [ %count.0, %if.else ], [ %count.0, %if.end.do.end101_crit_edge ], [ %cond, %do.body.do.end101_crit_edge ], [ %inc, %do.cond98.do.end101_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %tobool102.not = icmp eq i32 %count.1, 0
  br i1 %tobool102.not, label %do.end101.if.end111_crit_edge, label %if.then103

do.end101.if.end111_crit_edge:                    ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then103:                                       ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %process_idx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %process_idx.i, align 4
  %process_shft = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 13
  %97 = ptrtoint ptr %process_shft to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %process_shft, align 1
  %conv105 = zext i8 %98 to i32
  %shl = shl i32 %96, %conv105
  %process_mask = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 7
  %99 = ptrtoint ptr %process_mask to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %process_mask, align 4
  %and106 = and i32 %shl, %100
  %101 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base, align 4
  %process_reg = getelementptr inbounds %struct.emac_rx_queue, ptr %rx_q, i32 0, i32 10
  %103 = ptrtoint ptr %process_reg to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %process_reg, align 2
  %conv108 = zext i16 %104 to i32
  %add.ptr109 = getelementptr i8, ptr %102, i32 %conv108
  tail call void @emac_reg_update32(ptr noundef %add.ptr109, i32 noundef %100, i32 noundef %and106) #7
  tail call fastcc void @emac_mac_rx_descs_refill(ptr noundef %adpt, ptr noundef %rx_q)
  br label %if.end111

if.end111:                                        ; preds = %if.then103, %do.end101.if.end111_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @emac_mac_tx_process(ptr nocapture noundef readonly %adpt, ptr nocapture noundef %tx_q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %consume_reg = getelementptr inbounds %struct.emac_tx_queue, ptr %tx_q, i32 0, i32 5
  %2 = ptrtoint ptr %consume_reg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %consume_reg, align 4
  %conv = zext i16 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !35
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %consume_mask = getelementptr inbounds %struct.emac_tx_queue, ptr %tx_q, i32 0, i32 2
  %6 = ptrtoint ptr %consume_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %consume_mask, align 4
  %and = and i32 %5, %7
  %consume_shift = getelementptr inbounds %struct.emac_tx_queue, ptr %tx_q, i32 0, i32 7
  %8 = ptrtoint ptr %consume_shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %consume_shift, align 1
  %conv1 = zext i8 %9 to i32
  %shr = lshr i32 %and, %conv1
  %consume_idx = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 6
  %10 = ptrtoint ptr %consume_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %consume_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %shr)
  %cmp.not63 = icmp eq i32 %11, %shr
  br i1 %cmp.not63, label %entry.netdev_completed_queue.exit_crit_edge, label %while.body.lr.ph

entry.netdev_completed_queue.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %netdev_completed_queue.exit

while.body.lr.ph:                                 ; preds = %entry
  %count = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %while.body.lr.ph
  %12 = phi i32 [ %11, %while.body.lr.ph ], [ %spec.store.select, %if.end14.while.body_crit_edge ]
  %bytes_compl.065 = phi i32 [ 0, %while.body.lr.ph ], [ %bytes_compl.1, %if.end14.while.body_crit_edge ]
  %13 = ptrtoint ptr %tx_q to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_q, align 4
  %arrayidx = getelementptr %struct.emac_buffer, ptr %14, i32 %12
  %dma_addr = getelementptr %struct.emac_buffer, ptr %14, i32 %12, i32 2
  %15 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adpt, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 133, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  %length = getelementptr %struct.emac_buffer, ptr %14, i32 %12, i32 1
  %21 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %length, align 4
  %conv7 = zext i16 %22 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %20, i32 noundef %16, i32 noundef %conv7, i32 noundef 1, i32 noundef 0) #7
  %23 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %dma_addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %25, null
  br i1 %tobool9.not, label %if.end.if.end14_crit_edge, label %if.then10

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %len = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %add = add i32 %27, %bytes_compl.065
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %25, i32 noundef 0) #7
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge
  %bytes_compl.1 = phi i32 [ %add, %if.then10 ], [ %bytes_compl.065, %if.end.if.end14_crit_edge ]
  %29 = ptrtoint ptr %consume_idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %consume_idx, align 4
  %inc17 = add i32 %30, 1
  %31 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc17, i32 %32)
  %cmp19 = icmp eq i32 %inc17, %32
  %spec.store.select = select i1 %cmp19, i32 0, i32 %inc17
  %33 = ptrtoint ptr %consume_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.store.select, ptr %consume_idx, align 4
  %cmp.not = icmp eq i32 %spec.store.select, %shr
  br i1 %cmp.not, label %while.end, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end14
  %34 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adpt, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 103
  %36 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_compl.1)
  %tobool.not.i.i = icmp eq i32 %bytes_compl.1, 0
  br i1 %tobool.not.i.i, label %while.end.netdev_completed_queue.exit_crit_edge, label %if.end.i.i, !prof !80

while.end.netdev_completed_queue.exit_crit_edge:  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %netdev_completed_queue.exit

if.end.i.i:                                       ; preds = %while.end
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 15
  tail call void @dql_completed(ptr noundef %dql.i.i, i32 noundef %bytes_compl.1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !81
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 15, i32 1
  %38 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %40 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %39, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.netdev_completed_queue.exit_crit_edge, label %if.end14.i.i, !prof !80

if.end.i.i.netdev_completed_queue.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netdev_completed_queue.exit

if.end14.i.i:                                     ; preds = %if.end.i.i
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 13
  %call15.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.netdev_completed_queue.exit_crit_edge, label %if.then17.i.i

if.end14.i.i.netdev_completed_queue.exit_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netdev_completed_queue.exit

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @netif_schedule_queue(ptr noundef %37) #7
  br label %netdev_completed_queue.exit

netdev_completed_queue.exit:                      ; preds = %if.then17.i.i, %if.end14.i.i.netdev_completed_queue.exit_crit_edge, %if.end.i.i.netdev_completed_queue.exit_crit_edge, %while.end.netdev_completed_queue.exit_crit_edge, %entry.netdev_completed_queue.exit_crit_edge
  %42 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adpt, align 8
  %_tx.i.i60 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 103
  %44 = ptrtoint ptr %_tx.i.i60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %_tx.i.i60, align 128
  %state.i.i61 = getelementptr inbounds %struct.netdev_queue, ptr %45, i32 0, i32 13
  %46 = ptrtoint ptr %state.i.i61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %state.i.i61, align 4
  %and1.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %netdev_completed_queue.exit.if.end35_crit_edge, label %if.then28

netdev_completed_queue.exit.if.end35_crit_edge:   ; preds = %netdev_completed_queue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then28:                                        ; preds = %netdev_completed_queue.exit
  %produce_idx1.i = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 5
  %48 = ptrtoint ptr %produce_idx1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %produce_idx1.i, align 4
  %50 = ptrtoint ptr %consume_idx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %consume_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %49)
  %cmp.i = icmp ugt i32 %51, %49
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %52 = xor i32 %49, -1
  %sub4.i = add i32 %51, %52
  br label %emac_tpd_num_free_descs.exit

cond.false.i:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %count.i = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 4
  %53 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count.i, align 4
  %55 = xor i32 %49, -1
  %add.i = add i32 %51, %55
  %sub7.i = add i32 %add.i, %54
  br label %emac_tpd_num_free_descs.exit

emac_tpd_num_free_descs.exit:                     ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %sub4.i, %cond.true.i ], [ %sub7.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %cond.i)
  %cmp30 = icmp ugt i32 %cond.i, 18
  br i1 %cmp30, label %if.then32, label %emac_tpd_num_free_descs.exit.if.end35_crit_edge

emac_tpd_num_free_descs.exit.if.end35_crit_edge:  ; preds = %emac_tpd_num_free_descs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then32:                                        ; preds = %emac_tpd_num_free_descs.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @netif_tx_wake_queue(ptr noundef %45) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %emac_tpd_num_free_descs.exit.if.end35_crit_edge, %netdev_completed_queue.exit.if.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @emac_mac_rx_tx_ring_init_all(ptr nocapture noundef readnone %pdev, ptr noundef %adpt) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adpt, align 8
  %rx_q = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11
  %2 = ptrtoint ptr %rx_q to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %rx_q, align 8
  %produce_reg = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 9
  %3 = ptrtoint ptr %produce_reg to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 5600, ptr %produce_reg, align 4
  %produce_mask = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 6
  %4 = ptrtoint ptr %produce_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4095, ptr %produce_mask, align 8
  %produce_shift = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 12
  %5 = ptrtoint ptr %produce_shift to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %produce_shift, align 2
  %process_reg = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 10
  %6 = ptrtoint ptr %process_reg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 5600, ptr %process_reg, align 2
  %process_mask = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 7
  %7 = ptrtoint ptr %process_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 268369920, ptr %process_mask, align 4
  %process_shft = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 13
  %8 = ptrtoint ptr %process_shft to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %process_shft, align 1
  %consume_reg = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 11
  %9 = ptrtoint ptr %consume_reg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 5624, ptr %consume_reg, align 8
  %consume_mask = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 8
  %10 = ptrtoint ptr %consume_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4095, ptr %consume_mask, align 8
  %consume_shift = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 14
  %11 = ptrtoint ptr %consume_shift to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %consume_shift, align 4
  %irq = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 7
  %irq12 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 4
  %12 = ptrtoint ptr %irq12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %irq, ptr %irq12, align 8
  %mask = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  %and = and i32 %14, 983040
  %intr = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 11, i32 5
  %15 = ptrtoint ptr %intr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %intr, align 4
  %produce_reg15 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 4
  %16 = ptrtoint ptr %produce_reg15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 7124, ptr %produce_reg15, align 2
  %produce_mask17 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %produce_mask17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 65535, ptr %produce_mask17, align 4
  %produce_shift19 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 6
  %18 = ptrtoint ptr %produce_shift19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %produce_shift19, align 2
  %consume_reg21 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 5
  %19 = ptrtoint ptr %consume_reg21 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 5620, ptr %consume_reg21, align 4
  %consume_mask23 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 2
  %20 = ptrtoint ptr %consume_mask23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -65536, ptr %consume_mask23, align 4
  %consume_shift25 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 10, i32 7
  %21 = ptrtoint ptr %consume_shift25 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 16, ptr %consume_shift25, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @emac_mac_tx_buf_send(ptr nocapture noundef readonly %adpt, ptr noundef %tx_q, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.i.not.i = icmp eq i16 %3, 0
  br i1 %tobool.i.not.i, label %entry.do_csum.i_crit_edge, label %if.then.i

entry.do_csum.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_csum.i

if.then.i:                                        ; preds = %entry
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %4 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then.i.if.end8.i_crit_edge, label %skb_header_cloned.exit.i

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

skb_header_cloned.exit.i:                         ; preds = %if.then.i
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #7
  %5 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %6, 65535
  %shr.i.i = ashr i32 %6, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp.i.not.i, label %skb_header_cloned.exit.i.if.end8.i_crit_edge, label %if.then2.i

skb_header_cloned.exit.i.if.end8.i_crit_edge:     ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then2.i:                                       ; preds = %skb_header_cloned.exit.i
  %call3.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then2.i.if.end8.i_crit_edge, label %if.then2.i.if.then_crit_edge, !prof !73

if.then2.i.if.then_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then2.i.if.end8.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then2.i.if.end8.i_crit_edge, %skb_header_cloned.exit.i.if.end8.i_crit_edge, %if.then.i.if.end8.i_crit_edge
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %7 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %8)
  %cmp.i = icmp eq i16 %8, 2048
  br i1 %cmp.i, label %if.then10.i, label %if.end8.i.if.end19.i_crit_edge

if.end8.i.if.end19.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then10.i:                                      ; preds = %if.end8.i
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %11 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %12 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tot_len.i, align 2
  %conv13.i = zext i16 %16 to i32
  %add.i = add i32 %sub.ptr.sub.i, %conv13.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add.i)
  %cmp14.i = icmp ugt i32 %18, %add.i
  br i1 %cmp14.i, label %cond.true.i.i, label %if.then10.i.if.end19.i_crit_edge

if.then10.i.if.end19.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

cond.true.i.i:                                    ; preds = %if.then10.i
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.i, label %__skb_trim.exit.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %add.i) #7
  br label %if.end19.i

__skb_trim.exit.i.i.i:                            ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i, ptr %len.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %14, i32 %add.i
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %__skb_trim.exit.i.i.i, %if.then.i.i.i, %if.then10.i.if.end19.i_crit_edge, %if.end8.i.if.end19.i_crit_edge
  %head.i.i210.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i210.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i210.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %25 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i211.i = zext i16 %26 to i32
  %add.ptr.i.i212.i = getelementptr i8, ptr %24, i32 %conv.i.i211.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i212.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i212.i, i32 0, i32 4
  %29 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i.i.i = load i16, ptr %doff.i.i.i, align 4
  %30 = lshr i16 %bf.load.i.i.i, 10
  %31 = and i16 %30, 60
  %mul.i.i.i = zext i16 %31 to i32
  %add22.i = add i32 %sub.ptr.sub.i.i, %mul.i.i.i
  %len23.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %32 = ptrtoint ptr %len23.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add22.i)
  %cmp24.i = icmp eq i32 %33, %add22.i
  br i1 %cmp24.i, label %do.body.i, label %if.end37.i, !prof !80

do.body.i:                                        ; preds = %if.end19.i
  %msg_enable.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 32
  %34 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %msg_enable.i, align 8
  %36 = and i16 %35, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool34.not.i = icmp eq i16 %36, 0
  br i1 %tobool34.not.i, label %do.body.i.do_csum.i_crit_edge, label %if.then35.i

do.body.i.do_csum.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_csum.i

if.then35.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adpt, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %38, ptr noundef nonnull @.str.11) #12
  br label %do_csum.i

if.end37.i:                                       ; preds = %if.end19.i
  %39 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i.i.i, align 4
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %gso_type.i, align 8
  %and39.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end37.i.if.end53.i_crit_edge, label %if.then41.i

if.end37.i.if.end53.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

if.then41.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %network_header.i.i214.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %43 = ptrtoint ptr %network_header.i.i214.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %network_header.i.i214.i, align 4
  %conv.i.i215.i = zext i16 %44 to i32
  %add.ptr.i.i216.i = getelementptr i8, ptr %24, i32 %conv.i.i215.i
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i216.i, i32 0, i32 7
  %45 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %check.i, align 2
  %46 = ptrtoint ptr %head.i.i210.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i210.i, align 8
  %48 = load i16, ptr %network_header.i.i214.i, align 4
  %conv.i.i219.i = zext i16 %48 to i32
  %add.ptr.i.i220.i = getelementptr i8, ptr %47, i32 %conv.i.i219.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i220.i, i32 0, i32 8
  %49 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i220.i, i32 0, i32 9
  %51 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %daddr.i, align 4
  %53 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %52, i32 %50, i32 6) #13, !srcloc !82
  %54 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %53) #13, !srcloc !83
  %neg.i.i.i = xor i32 %54, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i225.i = trunc i32 %shr.i.i.i to i16
  %neg.i = xor i16 %conv.i.i225.i, -1
  %55 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i228.i = zext i16 %56 to i32
  %add.ptr.i.i229.i = getelementptr i8, ptr %47, i32 %conv.i.i228.i
  %check49.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i229.i, i32 0, i32 6
  %57 = ptrtoint ptr %check49.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %neg.i, ptr %check49.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then41.i, %if.end37.i.if.end53.i_crit_edge
  %tpd.sroa.14.0 = phi i32 [ 0, %if.end37.i.if.end53.i_crit_edge ], [ 256, %if.then41.i ]
  %58 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %end.i.i.i, align 4
  %gso_type55.i = getelementptr inbounds %struct.skb_shared_info, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %gso_type55.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %gso_type55.i, align 8
  %and56.i = and i32 %61, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.end53.i.if.end80.i_crit_edge, label %if.then58.i

if.end53.i.if.end80.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

if.then58.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %head.i.i210.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i.i210.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %64 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i232.i = zext i16 %65 to i32
  %add.ptr.i.i.i233.i = getelementptr i8, ptr %63, i32 %conv.i.i.i232.i
  %66 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i8.i.i = zext i16 %67 to i32
  %add.ptr.i.i9.i.i = getelementptr i8, ptr %63, i32 %conv.i.i8.i.i
  %payload_len.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i233.i, i32 0, i32 2
  %68 = ptrtoint ptr %payload_len.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %payload_len.i.i, align 4
  %saddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i233.i, i32 0, i32 5
  %daddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i233.i, i32 0, i32 6
  %call.i.i.i235.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i.i, ptr noundef %daddr.i.i, i32 noundef 0, i32 noundef 6, i32 noundef 0) #7
  %69 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i.i235.i) #13, !srcloc !83
  %neg.i.i.i.i.i = xor i32 %69, -1
  %shr.i.i.i.i.i = lshr i32 %neg.i.i.i.i.i, 16
  %conv.i.i.i.i.i = trunc i32 %shr.i.i.i.i.i to i16
  %neg.i.i = xor i16 %conv.i.i.i.i.i, -1
  %check.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i9.i.i, i32 0, i32 6
  %70 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %neg.i.i, ptr %check.i.i, align 4
  %71 = ptrtoint ptr %len23.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len23.i, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #7
  %produce_idx.i.i = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 5
  %74 = ptrtoint ptr %produce_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %produce_idx.i.i, align 4
  %last_produce_idx.i.i = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 7
  %76 = ptrtoint ptr %last_produce_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %last_produce_idx.i.i, align 4
  %v_addr.i.i = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 1
  %77 = ptrtoint ptr %v_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %v_addr.i.i, align 4
  %tpd_size.i.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 16
  %79 = ptrtoint ptr %tpd_size.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tpd_size.i.i, align 8
  %inc.i.i = add i32 %75, 1
  %count.i.i = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 4
  %81 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %82)
  %cmp.i236.i = icmp eq i32 %inc.i.i, %82
  %spec.store.select.i.i = select i1 %cmp.i236.i, i32 0, i32 %inc.i.i
  %83 = ptrtoint ptr %produce_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %spec.store.select.i.i, ptr %produce_idx.i.i, align 4
  %mul.i.i = mul i32 %80, %75
  %add.ptr.i.i = getelementptr i32, ptr %78, i32 %mul.i.i
  %incdec.ptr.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 1
  %84 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %add.ptr.i.i, align 4
  %incdec.ptr13.i.i = getelementptr i32, ptr %incdec.ptr.i.i, i32 1
  %85 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 3145728, ptr %incdec.ptr.i.i, align 4
  %incdec.ptr16.i.i = getelementptr i32, ptr %incdec.ptr13.i.i, i32 1
  %86 = ptrtoint ptr %incdec.ptr13.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %73, ptr %incdec.ptr13.i.i, align 4
  %87 = ptrtoint ptr %incdec.ptr16.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %incdec.ptr16.i.i, align 4
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then58.i, %if.end53.i.if.end80.i_crit_edge
  %tpd.sroa.14.1 = phi i32 [ %tpd.sroa.14.0, %if.end53.i.if.end80.i_crit_edge ], [ 2097152, %if.then58.i ]
  %88 = ptrtoint ptr %head.i.i210.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %head.i.i210.i, align 8
  %90 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i239.i = zext i16 %91 to i32
  %add.ptr.i.i240.i = getelementptr i8, ptr %89, i32 %conv.i.i239.i
  %92 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i242.i = ptrtoint ptr %add.ptr.i.i240.i to i32
  %sub.ptr.rhs.cast.i243.i = ptrtoint ptr %93 to i32
  %sub.ptr.sub.i244.i = sub i32 %sub.ptr.lhs.cast.i242.i, %sub.ptr.rhs.cast.i243.i
  %and91.i = and i32 %sub.ptr.sub.i244.i, 255
  %94 = and i32 %tpd.sroa.14.1, 15664000
  %95 = or i32 %94, 1048576
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  %and97.i = or i32 %and91.i, %96
  %97 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %gso_size.i, align 4
  %conv99.i = zext i16 %100 to i32
  %shl100.i = shl i32 %conv99.i, 18
  %and101.i = and i32 %shl100.i, 2147221504
  %or102.i = or i32 %and97.i, %and101.i
  %101 = tail call i32 @llvm.bswap.i32(i32 %or102.i) #7
  br label %if.end

do_csum.i:                                        ; preds = %if.then35.i, %do.body.i.do_csum.i_crit_edge, %entry.do_csum.i_crit_edge
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %102 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %103 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %103)
  %cmp107.i = icmp eq i16 %103, 1536
  br i1 %cmp107.i, label %if.then115.i, label %do_csum.i.if.end_crit_edge, !prof !73

do_csum.i.if.end_crit_edge:                       ; preds = %do_csum.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then115.i:                                     ; preds = %do_csum.i
  %head.i.i246.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %104 = ptrtoint ptr %head.i.i246.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %head.i.i246.i, align 8
  %transport_header.i.i247.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %106 = ptrtoint ptr %transport_header.i.i247.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %transport_header.i.i247.i, align 2
  %conv.i.i248.i = zext i16 %107 to i32
  %add.ptr.i.i249.i = getelementptr i8, ptr %105, i32 %conv.i.i248.i
  %data.i250.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %108 = ptrtoint ptr %data.i250.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data.i250.i, align 4
  %sub.ptr.lhs.cast.i251.i = ptrtoint ptr %add.ptr.i.i249.i to i32
  %sub.ptr.rhs.cast.i252.i = ptrtoint ptr %109 to i32
  %sub.ptr.sub.i253.i = sub i32 %sub.ptr.lhs.cast.i251.i, %sub.ptr.rhs.cast.i252.i
  %and117.i = and i32 %sub.ptr.sub.i253.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117.i)
  %tobool118.not.i = icmp eq i32 %and117.i, 0
  br i1 %tobool118.not.i, label %if.end127.i, label %if.then125.i, !prof !73

if.then125.i:                                     ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %adpt, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %111, ptr noundef nonnull @.str.12) #12
  br label %if.then

if.end127.i:                                      ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #9
  %112 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %csum_offset.i = getelementptr inbounds %struct.anon.117, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %csum_offset.i, align 2
  %conv128.i = zext i16 %114 to i32
  %add129.i = add i32 %sub.ptr.sub.i253.i, %conv128.i
  %shr.i = lshr i32 %sub.ptr.sub.i253.i, 1
  %and134.i = and i32 %shr.i, 255
  %115 = shl i32 %add129.i, 17
  %and143.i = and i32 %115, 66846720
  %and149.i = or i32 %and134.i, %and143.i
  %or150.i = or i32 %and149.i, 256
  %116 = tail call i32 @llvm.bswap.i32(i32 %or150.i) #7
  br label %if.end

if.then:                                          ; preds = %if.then125.i, %if.then2.i.if.then_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  br label %cleanup

if.end:                                           ; preds = %if.end127.i, %do_csum.i.if.end_crit_edge, %if.end80.i
  %tpd.sroa.14.2.ph = phi i32 [ %101, %if.end80.i ], [ 0, %do_csum.i.if.end_crit_edge ], [ %116, %if.end127.i ]
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %117 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %if.end.if.end19_crit_edge, label %if.then1

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %118 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %vlan_tci, align 2
  %rev = tail call i16 @llvm.bswap.i16(i16 %119)
  %conv7 = zext i16 %rev to i32
  %or16 = or i32 %conv7, 131072
  %120 = tail call i32 @llvm.bswap.i32(i32 %or16)
  br label %if.end19

if.end19:                                         ; preds = %if.then1, %if.end.if.end19_crit_edge
  %tpd.sroa.38.2 = phi i32 [ 0, %if.end.if.end19_crit_edge ], [ %120, %if.then1 ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %121 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %123 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %124 to i32
  %add.ptr.i.i64 = getelementptr i8, ptr %122, i32 %conv.i.i
  %data.i65 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %125 = ptrtoint ptr %data.i65 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data.i65, align 4
  %sub.ptr.lhs.cast.i66 = ptrtoint ptr %add.ptr.i.i64 to i32
  %sub.ptr.rhs.cast.i67 = ptrtoint ptr %126 to i32
  %sub.ptr.sub.i68 = sub i32 %sub.ptr.lhs.cast.i66, %sub.ptr.rhs.cast.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i68)
  %cmp21.not = icmp eq i32 %sub.ptr.sub.i68, 14
  %127 = or i32 %tpd.sroa.14.2.ph, 512
  %spec.select = select i1 %cmp21.not, i32 %tpd.sroa.14.2.ph, i32 %127
  %len31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %128 = ptrtoint ptr %len31 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %len31, align 4
  %130 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags1.i = getelementptr inbounds %struct.skb_shared_info, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %nr_frags1.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %nr_frags1.i, align 2
  %conv.i = zext i8 %133 to i32
  %produce_idx.i = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 5
  %134 = ptrtoint ptr %produce_idx.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %produce_idx.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %136 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i69 = sub i32 %129, %137
  %138 = and i32 %spec.select, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not.i = icmp eq i32 %138, 0
  br i1 %tobool.not.i, label %if.end19.if.end49.i_crit_edge, label %if.then.i84

if.end19.if.end49.i_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

if.then.i84:                                      ; preds = %if.end19
  %transport_header.i.i.i72 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %139 = ptrtoint ptr %transport_header.i.i.i72 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %transport_header.i.i.i72, align 2
  %conv.i.i.i73 = zext i16 %140 to i32
  %add.ptr.i.i.i74 = getelementptr i8, ptr %122, i32 %conv.i.i.i73
  %sub.ptr.lhs.cast.i.i76 = ptrtoint ptr %add.ptr.i.i.i74 to i32
  %sub.ptr.sub.i.i78 = sub i32 %sub.ptr.lhs.cast.i.i76, %sub.ptr.rhs.cast.i67
  %doff.i.i.i79 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i74, i32 0, i32 4
  %141 = ptrtoint ptr %doff.i.i.i79 to i32
  call void @__asan_load2_noabort(i32 %141)
  %bf.load.i.i.i80 = load i16, ptr %doff.i.i.i79, align 4
  %142 = lshr i16 %bf.load.i.i.i80, 10
  %143 = and i16 %142, 60
  %mul.i.i.i81 = zext i16 %143 to i32
  %add.i82 = add i32 %sub.ptr.sub.i.i78, %mul.i.i.i81
  %144 = ptrtoint ptr %tx_q to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %tx_q, align 4
  %conv10.i = trunc i32 %add.i82 to i16
  %length.i = getelementptr %struct.emac_buffer, ptr %145, i32 %135, i32 1
  %146 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv10.i, ptr %length.i, align 4
  %147 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %adpt, align 8
  %parent.i = getelementptr inbounds %struct.net_device, ptr %148, i32 0, i32 133, i32 1
  %149 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %parent.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %151 = load ptr, ptr @mem_map, align 4
  %152 = ptrtoint ptr %data.i65 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %data.i65, align 4
  %154 = ptrtoint ptr %153 to i32
  %sub.i = add i32 %154, 1073741824
  %shr11.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %151, i32 %shr11.i
  %and15.i = and i32 %154, 4095
  %conv17.i = and i32 %add.i82, 65535
  %call18.i = tail call i32 @dma_map_page_attrs(ptr noundef %150, ptr noundef %add.ptr.i, i32 noundef %and15.i, i32 noundef %conv17.i, i32 noundef 1, i32 noundef 0) #7
  %dma_addr.i = getelementptr %struct.emac_buffer, ptr %145, i32 %135, i32 2
  %155 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %call18.i, ptr %dma_addr.i, align 4
  %156 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %adpt, align 8
  %parent21.i = getelementptr inbounds %struct.net_device, ptr %157, i32 0, i32 133, i32 1
  %158 = ptrtoint ptr %parent21.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %parent21.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %159, i32 noundef %call18.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18.i)
  %cmp.i.not.i83 = icmp eq i32 %call18.i, -1
  br i1 %cmp.i.not.i83, label %error.thread.i, label %if.end.i

error.thread.i:                                   ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #9
  %160 = ptrtoint ptr %produce_idx.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %135, ptr %produce_idx.i, align 4
  br label %while.end.i

if.end.i:                                         ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9.i = getelementptr %struct.emac_buffer, ptr %145, i32 %135
  %161 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %dma_addr.i, align 4
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #7
  %164 = and i32 %tpd.sroa.38.2, -64768
  %165 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %length.i, align 4
  %conv43.i = zext i16 %166 to i32
  %167 = tail call i32 @llvm.bswap.i32(i32 %conv43.i) #7
  %168 = ptrtoint ptr %produce_idx.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %produce_idx.i, align 4
  %last_produce_idx.i.i85 = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 7
  %170 = ptrtoint ptr %last_produce_idx.i.i85 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %last_produce_idx.i.i85, align 4
  %v_addr.i.i86 = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 1
  %171 = ptrtoint ptr %v_addr.i.i86 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %v_addr.i.i86, align 4
  %tpd_size.i.i87 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 16
  %173 = ptrtoint ptr %tpd_size.i.i87 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %tpd_size.i.i87, align 8
  %inc.i.i88 = add i32 %169, 1
  %count.i.i89 = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 4
  %175 = ptrtoint ptr %count.i.i89 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %count.i.i89, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i88, i32 %176)
  %cmp.i290.i = icmp eq i32 %inc.i.i88, %176
  %spec.store.select.i.i90 = select i1 %cmp.i290.i, i32 0, i32 %inc.i.i88
  %177 = ptrtoint ptr %produce_idx.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %spec.store.select.i.i90, ptr %produce_idx.i, align 4
  %mul.i.i91 = mul i32 %174, %169
  %add.ptr.i.i92 = getelementptr i32, ptr %172, i32 %mul.i.i91
  %incdec.ptr.i.i93 = getelementptr i32, ptr %add.ptr.i.i92, i32 1
  %178 = ptrtoint ptr %add.ptr.i.i92 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %167, ptr %add.ptr.i.i92, align 4
  %incdec.ptr13.i.i94 = getelementptr i32, ptr %incdec.ptr.i.i93, i32 1
  %179 = ptrtoint ptr %incdec.ptr.i.i93 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %spec.select, ptr %incdec.ptr.i.i93, align 4
  %incdec.ptr16.i.i95 = getelementptr i32, ptr %incdec.ptr13.i.i94, i32 1
  %180 = ptrtoint ptr %incdec.ptr13.i.i94 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %163, ptr %incdec.ptr13.i.i94, align 4
  %181 = ptrtoint ptr %incdec.ptr16.i.i95 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %164, ptr %incdec.ptr16.i.i95, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end.i, %if.end19.if.end49.i_crit_edge
  %tpd.sroa.0.2 = phi i32 [ 0, %if.end19.if.end49.i_crit_edge ], [ %167, %if.end.i ]
  %tpd.sroa.38.3 = phi i32 [ %tpd.sroa.38.2, %if.end19.if.end49.i_crit_edge ], [ %164, %if.end.i ]
  %tpbuf.0.i = phi ptr [ null, %if.end19.if.end49.i_crit_edge ], [ %arrayidx9.i, %if.end.i ]
  %mapped_len.0.i = phi i32 [ 0, %if.end19.if.end49.i_crit_edge ], [ %add.i82, %if.end.i ]
  %count.0.i = phi i32 [ 0, %if.end19.if.end49.i_crit_edge ], [ 1, %if.end.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i69, i32 %mapped_len.0.i)
  %cmp.i96 = icmp ugt i32 %sub.i.i69, %mapped_len.0.i
  br i1 %cmp.i96, label %if.then51.i, label %if.end49.i.if.end111.i_crit_edge

if.end49.i.if.end111.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111.i

if.then51.i:                                      ; preds = %if.end49.i
  %182 = ptrtoint ptr %tx_q to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %tx_q, align 4
  %184 = ptrtoint ptr %produce_idx.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %produce_idx.i, align 4
  %sub57.i = sub i32 %sub.i.i69, %mapped_len.0.i
  %conv58.i = trunc i32 %sub57.i to i16
  %length59.i = getelementptr %struct.emac_buffer, ptr %183, i32 %185, i32 1
  %186 = ptrtoint ptr %length59.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %conv58.i, ptr %length59.i, align 4
  %187 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %adpt, align 8
  %parent62.i = getelementptr inbounds %struct.net_device, ptr %188, i32 0, i32 133, i32 1
  %189 = ptrtoint ptr %parent62.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %parent62.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %191 = load ptr, ptr @mem_map, align 4
  %192 = ptrtoint ptr %data.i65 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %data.i65, align 4
  %add.ptr64.i = getelementptr i8, ptr %193, i32 %mapped_len.0.i
  %194 = ptrtoint ptr %add.ptr64.i to i32
  %sub65.i = add i32 %194, 1073741824
  %shr66.i = lshr i32 %sub65.i, 12
  %add.ptr69.i = getelementptr %struct.page, ptr %191, i32 %shr66.i
  %and72.i = and i32 %194, 4095
  %conv74.i = and i32 %sub57.i, 65535
  %call75.i = tail call i32 @dma_map_page_attrs(ptr noundef %190, ptr noundef %add.ptr69.i, i32 noundef %and72.i, i32 noundef %conv74.i, i32 noundef 1, i32 noundef 0) #7
  %dma_addr76.i = getelementptr %struct.emac_buffer, ptr %183, i32 %185, i32 2
  %195 = ptrtoint ptr %dma_addr76.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %call75.i, ptr %dma_addr76.i, align 4
  %196 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %adpt, align 8
  %parent79.i = getelementptr inbounds %struct.net_device, ptr %197, i32 0, i32 133, i32 1
  %198 = ptrtoint ptr %parent79.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %parent79.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %199, i32 noundef %call75.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call75.i)
  %cmp.i291.not.i = icmp eq i32 %call75.i, -1
  br i1 %cmp.i291.not.i, label %if.then51.i.error.i_crit_edge, label %if.end84.i

if.then51.i.error.i_crit_edge:                    ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error.i

if.end84.i:                                       ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx56.i = getelementptr %struct.emac_buffer, ptr %183, i32 %185
  %200 = ptrtoint ptr %dma_addr76.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %dma_addr76.i, align 4
  %202 = tail call i32 @llvm.bswap.i32(i32 %201) #7
  %203 = and i32 %tpd.sroa.38.3, -64768
  %204 = and i32 %tpd.sroa.0.2, 65535
  %205 = tail call i32 @llvm.bswap.i32(i32 %204) #7
  %206 = ptrtoint ptr %length59.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %length59.i, align 4
  %conv104.i = zext i16 %207 to i32
  %or107.i = or i32 %205, %conv104.i
  %208 = tail call i32 @llvm.bswap.i32(i32 %or107.i) #7
  %209 = ptrtoint ptr %produce_idx.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %produce_idx.i, align 4
  %last_produce_idx.i294.i = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 7
  %211 = ptrtoint ptr %last_produce_idx.i294.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %last_produce_idx.i294.i, align 4
  %v_addr.i295.i = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 1
  %212 = ptrtoint ptr %v_addr.i295.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %v_addr.i295.i, align 4
  %tpd_size.i296.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 16
  %214 = ptrtoint ptr %tpd_size.i296.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %tpd_size.i296.i, align 8
  %inc.i297.i = add i32 %210, 1
  %count.i298.i = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 4
  %216 = ptrtoint ptr %count.i298.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %count.i298.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i297.i, i32 %217)
  %cmp.i299.i = icmp eq i32 %inc.i297.i, %217
  %spec.store.select.i300.i = select i1 %cmp.i299.i, i32 0, i32 %inc.i297.i
  %218 = ptrtoint ptr %produce_idx.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %spec.store.select.i300.i, ptr %produce_idx.i, align 4
  %mul.i301.i = mul i32 %215, %210
  %add.ptr.i302.i = getelementptr i32, ptr %213, i32 %mul.i301.i
  %incdec.ptr.i303.i = getelementptr i32, ptr %add.ptr.i302.i, i32 1
  %219 = ptrtoint ptr %add.ptr.i302.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %208, ptr %add.ptr.i302.i, align 4
  %incdec.ptr13.i305.i = getelementptr i32, ptr %incdec.ptr.i303.i, i32 1
  %220 = ptrtoint ptr %incdec.ptr.i303.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %spec.select, ptr %incdec.ptr.i303.i, align 4
  %incdec.ptr16.i307.i = getelementptr i32, ptr %incdec.ptr13.i305.i, i32 1
  %221 = ptrtoint ptr %incdec.ptr13.i305.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %202, ptr %incdec.ptr13.i305.i, align 4
  %222 = ptrtoint ptr %incdec.ptr16.i307.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %203, ptr %incdec.ptr16.i307.i, align 4
  %inc110.i = add nuw nsw i32 %count.0.i, 1
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.end84.i, %if.end49.i.if.end111.i_crit_edge
  %tpd.sroa.0.3 = phi i32 [ %208, %if.end84.i ], [ %tpd.sroa.0.2, %if.end49.i.if.end111.i_crit_edge ]
  %tpd.sroa.38.4 = phi i32 [ %203, %if.end84.i ], [ %tpd.sroa.38.3, %if.end49.i.if.end111.i_crit_edge ]
  %tpbuf.1.i = phi ptr [ %arrayidx56.i, %if.end84.i ], [ %tpbuf.0.i, %if.end49.i.if.end111.i_crit_edge ]
  %count.1.i = phi i32 [ %inc110.i, %if.end84.i ], [ %count.0.i, %if.end49.i.if.end111.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp112339.not.i = icmp eq i8 %133, 0
  br i1 %cmp112339.not.i, label %if.end111.i.do.body.i98_crit_edge, label %for.body.lr.ph.i

if.end111.i.do.body.i98_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i98

for.body.lr.ph.i:                                 ; preds = %if.end111.i
  %last_produce_idx.i313.i = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 7
  %v_addr.i314.i = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 1
  %tpd_size.i315.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 16
  %count.i317.i = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 4
  %223 = and i32 %tpd.sroa.38.4, -64768
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tpd.sroa.0.4 = phi i32 [ %tpd.sroa.0.3, %for.body.lr.ph.i ], [ %253, %for.inc.i.for.body.i_crit_edge ]
  %count.2341.i = phi i32 [ %count.1.i, %for.body.lr.ph.i ], [ %inc164.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0340.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc165.i, %for.inc.i.for.body.i_crit_edge ]
  %224 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %end.i.i.i, align 4
  %arrayidx115.i = getelementptr %struct.skb_shared_info, ptr %225, i32 0, i32 12, i32 %i.0340.i
  %226 = ptrtoint ptr %tx_q to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %tx_q, align 4
  %228 = ptrtoint ptr %produce_idx.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %produce_idx.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %225, i32 0, i32 12, i32 %i.0340.i, i32 1
  %230 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %bv_len.i.i, align 4
  %conv122.i = trunc i32 %231 to i16
  %length123.i = getelementptr %struct.emac_buffer, ptr %227, i32 %229, i32 1
  %232 = ptrtoint ptr %length123.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %conv122.i, ptr %length123.i, align 4
  %233 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %adpt, align 8
  %parent126.i = getelementptr inbounds %struct.net_device, ptr %234, i32 0, i32 133, i32 1
  %235 = ptrtoint ptr %parent126.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %parent126.i, align 8
  %conv128.i97 = and i32 %231, 65535
  %237 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %arrayidx115.i, align 4
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %225, i32 0, i32 12, i32 %i.0340.i, i32 2
  %239 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %236, ptr noundef %238, i32 noundef %240, i32 noundef %conv128.i97, i32 noundef 1, i32 noundef 0) #7
  %dma_addr130.i = getelementptr %struct.emac_buffer, ptr %227, i32 %229, i32 2
  %241 = ptrtoint ptr %dma_addr130.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %call2.i.i, ptr %dma_addr130.i, align 4
  %242 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %adpt, align 8
  %parent133.i = getelementptr inbounds %struct.net_device, ptr %243, i32 0, i32 133, i32 1
  %244 = ptrtoint ptr %parent133.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %parent133.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %245, i32 noundef %call2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i310.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i310.not.i, label %for.body.i.error.i_crit_edge, label %for.inc.i

for.body.i.error.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error.i

for.inc.i:                                        ; preds = %for.body.i
  %246 = ptrtoint ptr %dma_addr130.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %dma_addr130.i, align 4
  %248 = tail call i32 @llvm.bswap.i32(i32 %247) #7
  %249 = and i32 %tpd.sroa.0.4, 65535
  %250 = tail call i32 @llvm.bswap.i32(i32 %249) #7
  %251 = ptrtoint ptr %length123.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %length123.i, align 4
  %conv158.i = zext i16 %252 to i32
  %or161.i = or i32 %250, %conv158.i
  %253 = tail call i32 @llvm.bswap.i32(i32 %or161.i) #7
  %254 = ptrtoint ptr %produce_idx.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %produce_idx.i, align 4
  %256 = ptrtoint ptr %last_produce_idx.i313.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %last_produce_idx.i313.i, align 4
  %257 = ptrtoint ptr %v_addr.i314.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %v_addr.i314.i, align 4
  %259 = ptrtoint ptr %tpd_size.i315.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %tpd_size.i315.i, align 8
  %inc.i316.i = add i32 %255, 1
  %261 = ptrtoint ptr %count.i317.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %count.i317.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i316.i, i32 %262)
  %cmp.i318.i = icmp eq i32 %inc.i316.i, %262
  %spec.store.select.i319.i = select i1 %cmp.i318.i, i32 0, i32 %inc.i316.i
  %263 = ptrtoint ptr %produce_idx.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %spec.store.select.i319.i, ptr %produce_idx.i, align 4
  %mul.i320.i = mul i32 %260, %255
  %add.ptr.i321.i = getelementptr i32, ptr %258, i32 %mul.i320.i
  %incdec.ptr.i322.i = getelementptr i32, ptr %add.ptr.i321.i, i32 1
  %264 = ptrtoint ptr %add.ptr.i321.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %253, ptr %add.ptr.i321.i, align 4
  %incdec.ptr13.i324.i = getelementptr i32, ptr %incdec.ptr.i322.i, i32 1
  %265 = ptrtoint ptr %incdec.ptr.i322.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %spec.select, ptr %incdec.ptr.i322.i, align 4
  %incdec.ptr16.i326.i = getelementptr i32, ptr %incdec.ptr13.i324.i, i32 1
  %266 = ptrtoint ptr %incdec.ptr13.i324.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %248, ptr %incdec.ptr13.i324.i, align 4
  %267 = ptrtoint ptr %incdec.ptr16.i326.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %223, ptr %incdec.ptr16.i326.i, align 4
  %inc164.i = add nuw nsw i32 %count.2341.i, 1
  %inc165.i = add nuw nsw i32 %i.0340.i, 1
  %exitcond.not.i = icmp eq i32 %inc165.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.do.body_crit_edge.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.do.body_crit_edge.i:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx120.le.i = getelementptr %struct.emac_buffer, ptr %227, i32 %229
  br label %do.body.i98

do.body.i98:                                      ; preds = %for.cond.do.body_crit_edge.i, %if.end111.i.do.body.i98_crit_edge
  %tpbuf.2.lcssa.i = phi ptr [ %arrayidx120.le.i, %for.cond.do.body_crit_edge.i ], [ %tpbuf.1.i, %if.end111.i.do.body.i98_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %v_addr.i328.i = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 1
  %268 = ptrtoint ptr %v_addr.i328.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %v_addr.i328.i, align 4
  %tpd_size.i329.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 16
  %270 = ptrtoint ptr %tpd_size.i329.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %tpd_size.i329.i, align 8
  %last_produce_idx.i330.i = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 7
  %272 = ptrtoint ptr %last_produce_idx.i330.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %last_produce_idx.i330.i, align 4
  %mul.i331.i = mul i32 %273, %271
  %add.ptr.i332.i = getelementptr i32, ptr %269, i32 %mul.i331.i
  %add.ptr2.i.i = getelementptr i32, ptr %add.ptr.i332.i, i32 1
  %274 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %add.ptr2.i.i, align 4
  %or.i.i = or i32 %275, -2147483648
  store i32 %or.i.i, ptr %add.ptr2.i.i, align 4
  %276 = ptrtoint ptr %tpbuf.2.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %skb, ptr %tpbuf.2.lcssa.i, align 4
  br label %emac_tx_fill_tpd.exit

error.i:                                          ; preds = %for.body.i.error.i_crit_edge, %if.then51.i.error.i_crit_edge
  %count.4.i = phi i32 [ %count.0.i, %if.then51.i.error.i_crit_edge ], [ %count.2341.i, %for.body.i.error.i_crit_edge ]
  %277 = ptrtoint ptr %produce_idx.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %135, ptr %produce_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.4.i)
  %tobool169.not343.i = icmp eq i32 %count.4.i, 0
  br i1 %tobool169.not343.i, label %error.i.while.end.i_crit_edge, label %while.body.lr.ph.i

error.i.while.end.i_crit_edge:                    ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %error.i
  %count183.i = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %count.5345.i = phi i32 [ %count.4.i, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %first.0344.i = phi i32 [ %135, %while.body.lr.ph.i ], [ %spec.store.select.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %count.5345.i, -1
  %278 = ptrtoint ptr %tx_q to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %tx_q, align 4
  %280 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %adpt, align 8
  %parent175.i = getelementptr inbounds %struct.net_device, ptr %281, i32 0, i32 133, i32 1
  %282 = ptrtoint ptr %parent175.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %parent175.i, align 8
  %dma_addr176.i = getelementptr %struct.emac_buffer, ptr %279, i32 %first.0344.i, i32 2
  %284 = ptrtoint ptr %dma_addr176.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %dma_addr176.i, align 4
  %length177.i = getelementptr %struct.emac_buffer, ptr %279, i32 %first.0344.i, i32 1
  %286 = ptrtoint ptr %length177.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %length177.i, align 4
  %conv178.i = zext i16 %287 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %283, i32 noundef %285, i32 noundef %conv178.i, i32 noundef 1, i32 noundef 0) #7
  %288 = ptrtoint ptr %dma_addr176.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 0, ptr %dma_addr176.i, align 4
  %289 = ptrtoint ptr %length177.i to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 0, ptr %length177.i, align 4
  %inc181.i = add i32 %first.0344.i, 1
  %290 = ptrtoint ptr %count183.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %count183.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc181.i, i32 %291)
  %cmp184.i = icmp eq i32 %inc181.i, %291
  %spec.store.select.i = select i1 %cmp184.i, i32 0, i32 %inc181.i
  %tobool169.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool169.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %error.i.while.end.i_crit_edge, %error.thread.i
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %emac_tx_fill_tpd.exit

emac_tx_fill_tpd.exit:                            ; preds = %while.end.i, %do.body.i98
  %292 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %adpt, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %293, i32 0, i32 103
  %294 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %_tx.i.i, align 128
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %295, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %129)
  %cmp.i.i.i = icmp ugt i32 %129, 268435455
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !80

do.body2.i.i.i:                                   ; preds = %emac_tx_fill_tpd.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #7, !srcloc !85
  unreachable

dql_queued.exit.i.i:                              ; preds = %emac_tx_fill_tpd.exit
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %295, i32 0, i32 15, i32 2
  %296 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %129, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !86
  %297 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %298, %129
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %295, i32 0, i32 15, i32 1
  %299 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %301 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %300, %301
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i, label %dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge, label %if.end.i.i, !prof !73

dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge: ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netdev_sent_queue.exit

if.end.i.i:                                       ; preds = %dql_queued.exit.i.i
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %295, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !87
  %302 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %304 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %303, %305
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i.netdev_sent_queue.exit_crit_edge, !prof !80

if.end.i.i.netdev_sent_queue.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netdev_sent_queue.exit

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #7
  br label %netdev_sent_queue.exit

netdev_sent_queue.exit:                           ; preds = %if.then14.i.i, %if.end.i.i.netdev_sent_queue.exit_crit_edge, %dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge
  %306 = ptrtoint ptr %produce_idx.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %produce_idx.i, align 4
  %consume_idx3.i = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 6
  %308 = ptrtoint ptr %consume_idx3.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %consume_idx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %309, i32 %307)
  %cmp.i99 = icmp ugt i32 %309, %307
  br i1 %cmp.i99, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %netdev_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #9
  %310 = xor i32 %307, -1
  %sub4.i = add i32 %309, %310
  br label %emac_tpd_num_free_descs.exit

cond.false.i:                                     ; preds = %netdev_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #9
  %count.i = getelementptr inbounds %struct.emac_tpd_ring, ptr %tx_q, i32 0, i32 4
  %311 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %count.i, align 4
  %313 = xor i32 %307, -1
  %add.i100 = add i32 %309, %313
  %sub7.i = add i32 %add.i100, %312
  br label %emac_tpd_num_free_descs.exit

emac_tpd_num_free_descs.exit:                     ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %sub4.i, %cond.true.i ], [ %sub7.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %cond.i)
  %cmp33 = icmp ult i32 %cond.i, 20
  br i1 %cmp33, label %if.then35, label %emac_tpd_num_free_descs.exit.if.end37_crit_edge

emac_tpd_num_free_descs.exit.if.end37_crit_edge:  ; preds = %emac_tpd_num_free_descs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then35:                                        ; preds = %emac_tpd_num_free_descs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %314 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %adpt, align 8
  %_tx.i.i101 = getelementptr inbounds %struct.net_device, ptr %315, i32 0, i32 103
  %316 = ptrtoint ptr %_tx.i.i101 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %_tx.i.i101, align 128
  %state.i.i102 = getelementptr inbounds %struct.netdev_queue, ptr %317, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i102) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %emac_tpd_num_free_descs.exit.if.end37_crit_edge
  %318 = ptrtoint ptr %produce_idx.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %produce_idx.i, align 4
  %produce_shift = getelementptr inbounds %struct.emac_tx_queue, ptr %tx_q, i32 0, i32 6
  %320 = ptrtoint ptr %produce_shift to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %produce_shift, align 2
  %conv39 = zext i8 %321 to i32
  %shl40 = shl i32 %319, %conv39
  %produce_mask = getelementptr inbounds %struct.emac_tx_queue, ptr %tx_q, i32 0, i32 1
  %322 = ptrtoint ptr %produce_mask to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %produce_mask, align 4
  %and41 = and i32 %shl40, %323
  %base = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 3
  %324 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %base, align 4
  %produce_reg = getelementptr inbounds %struct.emac_tx_queue, ptr %tx_q, i32 0, i32 4
  %326 = ptrtoint ptr %produce_reg to i32
  call void @__asan_load2_noabort(i32 %326)
  %327 = load i16, ptr %produce_reg, align 2
  %conv42 = zext i16 %327 to i32
  %add.ptr = getelementptr i8, ptr %325, i32 %conv42
  tail call void @emac_reg_update32(ptr noundef %add.ptr, i32 noundef %323, i32 noundef %and41) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @emac_sgmii_link_change(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-mac.c", i32 782, i32 28}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-mac.c", i32 788, i32 28}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-mac.c", i32 944, i32 28}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-mac.c", i32 1122, i32 8}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-mac.c", i32 1134, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @emac_mac_rx_process.__UNIQUE_ID_ddebug504, !9, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-mac.c", i32 1010, i32 7}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-mac.c", i32 1270, i32 4}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-mac.c", i32 1313, i32 8}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 6084505}
!36 = !{i64 2157996894}
!37 = !{i64 2157997207}
!38 = !{i64 6084087}
!39 = !{i64 2157997618}
!40 = !{i64 2157998010}
!41 = !{i64 2157998682}
!42 = !{i64 2157999174}
!43 = !{i64 2158010293}
!44 = !{i64 2158010693}
!45 = !{i64 2157999672}
!46 = !{i64 2158000309}
!47 = !{i64 2158000880}
!48 = !{i64 2158001456}
!49 = !{i64 2158002093}
!50 = !{i64 2158002727}
!51 = !{i64 2158003296}
!52 = !{i64 2158003802}
!53 = !{i64 2158004306}
!54 = !{i64 2158004770}
!55 = !{i64 2158005162}
!56 = !{i64 2158011371}
!57 = !{i64 2158005596}
!58 = !{i64 2158006095}
!59 = !{i64 2158006620}
!60 = !{i64 2158007298}
!61 = !{i64 2158007560}
!62 = !{i64 2158008238}
!63 = !{i64 2158008493}
!64 = !{i64 2158009171}
!65 = !{i64 2158009419}
!66 = !{i64 2158009878}
!67 = !{i64 2158012112}
!68 = !{i64 2158012347}
!69 = !{i64 2158012745}
!70 = !{i64 2158013143}
!71 = !{i64 2158018872}
!72 = !{i64 2158019379}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2158013949}
!75 = !{i64 2158014456}
!76 = !{i8 0, i8 2}
!77 = !{i64 2158019921}
!78 = !{i64 2158020394}
!79 = !{i64 2148890678, i64 2148890683, i64 2148890696, i64 2148890740, i64 2148890774, i64 2148890795}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i64 2155901932}
!82 = !{i64 6510876, i64 6510917, i64 6510962}
!83 = !{i64 6509774}
!84 = !{i64 2158103532}
!85 = !{i64 2154971544, i64 2154972044, i64 2154971581, i64 2154971637, i64 2154971671, i64 2154971695, i64 2154971736, i64 2154971757, i64 2154971785, i64 2154971819}
!86 = !{i64 2154972888}
!87 = !{i64 2155900861}
