; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/en_cq.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/en_cq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx4_en_cq = type { %struct.mlx4_cq, %struct.mlx4_hwq_resources, i32, ptr, %union.anon.127, i32, i32, i32, i32, i16, i16, ptr, ptr }
%struct.mlx4_cq = type { ptr, ptr, ptr, i32, i16, ptr, ptr, i32, i32, i32, %struct.refcount_struct, %struct.completion, %struct.anon.126, i32, %struct.list_head, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.126 = type { %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mlx4_hwq_resources = type { %struct.mlx4_db, %struct.mlx4_mtt, %struct.mlx4_buf }
%struct.mlx4_db = type { ptr, %union.anon.122, i32, i32, i32 }
%union.anon.122 = type { ptr }
%struct.mlx4_mtt = type { i32, i32, i32 }
%struct.mlx4_buf = type { %struct.mlx4_buf_list, ptr, i32, i32, i32 }
%struct.mlx4_buf_list = type { ptr, i32 }
%union.anon.127 = type { %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mlx4_en_priv = type { ptr, ptr, ptr, [128 x i32], %struct.mlx4_en_port_state, %struct.spinlock, [256 x %struct.ethtool_flow_id], %struct.list_head, [128 x i32], i32, [128 x i32], i32, [128 x i32], i16, i16, i16, i16, i32, i16, i32, i16, i32, i32, i32, i32, i32, %struct.mlx4_hwq_resources, i32, i8, i32, i32, i32, i32, [8 x i8], i32, i32, i32, i32, i32, %struct.mlx4_en_rss_map, i32, i32, i8, i32, [2 x i32], i32, i32, [4 x %struct.mlx4_en_frag_info], i8, i8, i8, i16, [2 x ptr], [128 x ptr], [2 x ptr], [128 x ptr], %struct.mlx4_qp, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.mlx4_en_pkt_stats, %struct.mlx4_en_counter_stats, [8 x %struct.mlx4_en_flow_stats_rx], [8 x %struct.mlx4_en_flow_stats_tx], %struct.mlx4_en_flow_stats_rx, %struct.mlx4_en_flow_stats_tx, %struct.mlx4_en_port_stats, %struct.mlx4_en_xdp_stats, %struct.mlx4_en_phy_stats, %struct.mlx4_en_stats_bitmap, %struct.list_head, %struct.list_head, i64, %struct.mlx4_en_stat_out_mbox, [128 x i32], i8, ptr, [256 x %struct.hlist_head], %struct.hwtstamp_config, i32, %struct.ieee_ets, [8 x i16], [8 x i32], %struct.mlx4_en_cee_config, i8, %struct.spinlock, i32, %struct.list_head, [16 x %struct.hlist_head], i64, i16, i32, [40 x i8], i8, i32 }
%struct.mlx4_en_port_state = type { i32, i32, i32, i32 }
%struct.ethtool_flow_id = type { %struct.list_head, %struct.ethtool_rx_flow_spec, i64 }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.mlx4_en_rss_map = type { i32, [128 x %struct.mlx4_qp], [128 x i32], ptr, i32 }
%struct.mlx4_en_frag_info = type { i16, i32 }
%struct.mlx4_qp = type { ptr, i32, %struct.refcount_struct, %struct.completion, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mlx4_en_pkt_stats = type { i32, i32, i32, i32, i32, i32, i32, [9 x [2 x i32]], [9 x [2 x i32]] }
%struct.mlx4_en_counter_stats = type { i32, i32, i32, i32 }
%struct.mlx4_en_flow_stats_rx = type { i64, i64, i64 }
%struct.mlx4_en_flow_stats_tx = type { i64, i64, i64 }
%struct.mlx4_en_port_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_en_xdp_stats = type { i32, i32, i32, i32, i32 }
%struct.mlx4_en_phy_stats = type { i32, i32, i32, i32 }
%struct.mlx4_en_stats_bitmap = type { [5 x i32], %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx4_en_stat_out_mbox = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.mlx4_en_cee_config = type { i8, [8 x i32] }
%struct.mlx4_en_dev = type { ptr, ptr, %struct.mutex, [3 x ptr], [3 x ptr], i32, i8, %struct.mlx4_en_profile, i32, ptr, ptr, ptr, %struct.mlx4_uar, %struct.mlx4_mr, i32, %struct.spinlock, [3 x i8], i32, %struct.cyclecounter, %struct.seqlock_t, %struct.timecounter, i32, ptr, %struct.ptp_clock_info, %struct.notifier_block }
%struct.mlx4_en_profile = type { i32, i8, i32, i32, i8, i8, [3 x %struct.mlx4_en_port_profile] }
%struct.mlx4_en_port_profile = type { i32, [2 x i32], i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, %struct.hwtstamp_config }
%struct.mlx4_uar = type { i32, i32, %struct.list_head, i32, ptr, ptr }
%struct.mlx4_mr = type { %struct.mlx4_mtt, i64, i64, i32, i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx4_en_rx_ring = type { %struct.mlx4_hwq_resources, i32, i32, i32, i16, i16, i16, i32, i32, i32, i8, ptr, ptr, ptr, %struct.mlx4_en_page_cache, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [92 x i8], %struct.xdp_rxq_info }
%struct.mlx4_en_page_cache = type { i32, [128 x %struct.anon.123] }
%struct.anon.123 = type { ptr, i32 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate CQ structure\0A\00", [63 x i8] zeroinitializer }, align 32
@mlx4_en_activate_cq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013mlx4_en %s: Failed assigning an EQ to CQ vector %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx4_en_activate_cq\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlx4/en_cq.c\00", [53 x i8] zeroinitializer }, align 32
@mlx4_en_activate_cq._entry_ptr = internal global ptr @mlx4_en_activate_cq._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 57, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlx4/en_cq.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 112, i32 5 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @mlx4_en_activate_cq._entry, ptr @mlx4_en_activate_cq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_activate_cq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_create_cq(ptr noundef %priv, ptr nocapture noundef writeonly %pcq, i32 noundef %entries, i32 noundef %ring, i32 noundef %mode, i32 noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 456) #8
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.1) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.mlx4_en_cq, ptr %call.i.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %entries, ptr %size, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %cqe_size = getelementptr inbounds %struct.mlx4_dev, ptr %5, i32 0, i32 3, i32 83
  %6 = ptrtoint ptr %cqe_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cqe_size, align 4
  %mul = mul i32 %7, %entries
  %buf_size = getelementptr inbounds %struct.mlx4_en_cq, ptr %call.i.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %buf_size, align 4
  %ring3 = getelementptr inbounds %struct.mlx4_en_cq, ptr %call.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %ring3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %ring, ptr %ring3, align 4
  %type = getelementptr inbounds %struct.mlx4_en_cq, ptr %call.i.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mode, ptr %type, align 4
  %11 = load ptr, ptr %1, align 8
  %num_comp_vectors = getelementptr inbounds %struct.mlx4_dev, ptr %11, i32 0, i32 3, i32 39
  %12 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_comp_vectors, align 4
  %vector = getelementptr inbounds %struct.mlx4_en_cq, ptr %call.i.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %vector to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %vector, align 8
  %15 = load ptr, ptr %1, align 8
  %wqres = getelementptr inbounds %struct.mlx4_en_cq, ptr %call.i.i.i, i32 0, i32 1
  %call10 = tail call i32 @mlx4_alloc_hwq_res(ptr noundef %15, ptr noundef %wqres, i32 noundef %mul) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool16.not = icmp eq i32 %call10, 0
  br i1 %tobool16.not, label %if.end18, label %err_cq

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %buf = getelementptr inbounds %struct.mlx4_en_cq, ptr %call.i.i.i, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf, align 4
  %buf21 = getelementptr inbounds %struct.mlx4_en_cq, ptr %call.i.i.i, i32 0, i32 11
  %18 = ptrtoint ptr %buf21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %buf21, align 4
  %19 = ptrtoint ptr %pcq to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i.i, ptr %pcq, align 4
  br label %cleanup

err_cq:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #5
  %20 = ptrtoint ptr %pcq to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pcq, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_cq, %if.end18, %if.then
  %retval.0 = phi i32 [ %call10, %err_cq ], [ 0, %if.end18 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @en_print(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_alloc_hwq_res(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_activate_cq(ptr nocapture noundef readonly %priv, ptr noundef %cq, i32 noundef %cq_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %port = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 29
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %arrayidx = getelementptr %struct.mlx4_en_dev, ptr %1, i32 0, i32 3, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %dev = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %dev, align 8
  %wqres = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 1
  %7 = ptrtoint ptr %wqres to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wqres, align 4
  %set_ci_db = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 5
  %9 = ptrtoint ptr %set_ci_db to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %set_ci_db, align 4
  %add.ptr = getelementptr i32, ptr %8, i32 1
  %arm_db = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 6
  %10 = ptrtoint ptr %arm_db to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %arm_db, align 8
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %8, align 4
  %12 = load ptr, ptr %arm_db, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %12, align 4
  %buf = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 11
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf, align 4
  %buf_size = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 6
  %16 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_size, align 4
  %18 = call ptr @memset(ptr %15, i32 0, i32 %17)
  %type = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 8
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp = icmp eq i32 %20, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port, align 4
  %conv = trunc i32 %24 to i8
  %vector = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 7
  %25 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vector, align 8
  %call = tail call zeroext i1 @mlx4_is_eq_vector_valid(ptr noundef %22, i8 noundef zeroext %conv, i32 noundef %26) #5
  br i1 %call, label %if.then.if.end27_crit_edge, label %if.then13

if.then.if.end27_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then13:                                        ; preds = %if.then
  %ring = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 2
  %27 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ring, align 4
  %arrayidx14 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 53, i32 %28
  %29 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx14, align 4
  %affinity_mask = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %30, i32 0, i32 28
  %31 = ptrtoint ptr %affinity_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %affinity_mask, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %33 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %32, i32 noundef %33) #5
  %34 = ptrtoint ptr %vector to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i, ptr %vector, align 8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port, align 4
  %conv19 = trunc i32 %38 to i8
  %call21 = tail call i32 @mlx4_assign_eq(ptr noundef %36, i8 noundef zeroext %conv19, ptr noundef %vector) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.then13.if.end27_crit_edge, label %do.end

if.then13.if.end27_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

do.end:                                           ; preds = %if.then13
  %pdev = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44, i32 3
  %41 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.free_eq.thread_crit_edge

do.end.free_eq.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_eq.thread

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %43 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev23, align 4
  br label %free_eq.thread

free_eq.thread:                                   ; preds = %if.end.i, %do.end.free_eq.thread_crit_edge
  %retval.0.i = phi ptr [ %44, %if.end.i ], [ %42, %do.end.free_eq.thread_crit_edge ]
  %45 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vector, align 8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %retval.0.i, i32 noundef %46) #9
  br label %if.end85

if.end27:                                         ; preds = %if.then13.if.end27_crit_edge, %if.then.if.end27_crit_edge
  %47 = xor i1 %call, true
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %50 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vector, align 8
  %call30 = tail call i32 @mlx4_eq_get_irq(ptr noundef %49, i32 noundef %51) #5
  %call.i155 = tail call ptr @irq_get_irq_data(i32 noundef %call30) #5
  %tobool.not.i156 = icmp eq ptr %call.i155, null
  br i1 %tobool.not.i156, label %if.end27.irq_get_effective_affinity_mask.exit_crit_edge, label %cond.true.i

if.end27.irq_get_effective_affinity_mask.exit_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_get_effective_affinity_mask.exit

cond.true.i:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i155, i32 0, i32 3
  %52 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %common.i.i, align 4
  %effective_affinity.i.i = getelementptr inbounds %struct.irq_common_data, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %effective_affinity.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %effective_affinity.i.i, align 4
  br label %irq_get_effective_affinity_mask.exit

irq_get_effective_affinity_mask.exit:             ; preds = %cond.true.i, %if.end27.irq_get_effective_affinity_mask.exit_crit_edge
  %cond.i = phi ptr [ %55, %cond.true.i ], [ null, %if.end27.irq_get_effective_affinity_mask.exit_crit_edge ]
  %aff_mask = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 12
  %56 = ptrtoint ptr %aff_mask to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %cond.i, ptr %aff_mask, align 8
  br label %if.end36

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rx_ring_num = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 45
  %57 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_ring_num, align 4
  %rem = urem i32 %cq_idx, %58
  %arrayidx33 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 55, i32 %rem
  %59 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx33, align 4
  %vector34 = getelementptr inbounds %struct.mlx4_en_cq, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %vector34 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vector34, align 8
  %vector35 = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 7
  %63 = ptrtoint ptr %vector35 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %vector35, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.else, %irq_get_effective_affinity_mask.exit
  %assigned_eq.1.off0 = phi i1 [ %47, %irq_get_effective_affinity_mask.exit ], [ false, %if.else ]
  %64 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp38 = icmp eq i32 %65, 2
  br i1 %cmp38, label %land.lhs.true52, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end36
  %tx_type = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 80, i32 1
  %66 = ptrtoint ptr %tx_type to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool48.not = icmp eq i32 %67, 0
  br i1 %tobool48.not, label %land.lhs.true.if.end56_crit_edge, label %land.lhs.true.if.then55_crit_edge

land.lhs.true.if.then55_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then55

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

land.lhs.true52:                                  ; preds = %if.end36
  %ring42 = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 2
  %68 = ptrtoint ptr %ring42 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ring42, align 4
  %arrayidx43 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 53, i32 %69
  %70 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx43, align 4
  %actual_size = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %actual_size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %actual_size, align 4
  %size = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 5
  %74 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %size, align 8
  %rx_filter = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 80, i32 2
  %75 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rx_filter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool54.not = icmp eq i32 %76, 0
  br i1 %tobool54.not, label %land.lhs.true52.if.end56_crit_edge, label %land.lhs.true52.if.then55_crit_edge

land.lhs.true52.if.then55_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then55

land.lhs.true52.if.end56_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then55:                                        ; preds = %land.lhs.true52.if.then55_crit_edge, %land.lhs.true.if.then55_crit_edge
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %land.lhs.true52.if.end56_crit_edge, %land.lhs.true.if.end56_crit_edge
  %timestamp_en.0 = phi i32 [ 1, %if.then55 ], [ 0, %land.lhs.true52.if.end56_crit_edge ], [ 0, %land.lhs.true.if.end56_crit_edge ]
  %usage = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 15
  %77 = ptrtoint ptr %usage to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %usage, align 8
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 8
  %size59 = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 5
  %80 = ptrtoint ptr %size59 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %size59, align 8
  %mtt = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 1, i32 1
  %priv_uar = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 12
  %dma = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 1, i32 0, i32 2
  %82 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dma, align 4
  %conv63 = zext i32 %83 to i64
  %vector65 = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 7
  %84 = ptrtoint ptr %vector65 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vector65, align 8
  %buf67 = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 1, i32 2
  %call68 = tail call i32 @mlx4_cq_alloc(ptr noundef %79, i32 noundef %81, ptr noundef %mtt, ptr noundef %priv_uar, i64 noundef %conv63, ptr noundef %cq, i32 noundef %85, i32 noundef 0, i32 noundef %timestamp_en.0, ptr noundef %buf67, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %free_eq

if.end71:                                         ; preds = %if.end56
  %event = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 1
  %86 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @mlx4_en_cq_event, ptr %event, align 4
  %87 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %type, align 4
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values)
  switch i32 %88, label %if.end71.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb76
    i32 1, label %sw.bb80
  ]

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @mlx4_en_tx_irq, ptr %cq, align 8
  %91 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev, align 8
  %93 = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 4
  %state.i = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 4, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state.i) #5
  tail call void @netif_napi_add(ptr noundef %92, ptr noundef %93, ptr noundef nonnull @mlx4_en_poll_tx_cq, i32 noundef 64) #5
  tail call void @napi_enable(ptr noundef %93) #5
  br label %cleanup

sw.bb76:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @mlx4_en_rx_irq, ptr %cq, align 8
  %95 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev, align 8
  %97 = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 4
  tail call void @netif_napi_add(ptr noundef %96, ptr noundef %97, ptr noundef nonnull @mlx4_en_poll_rx_cq, i32 noundef 64) #5
  tail call void @napi_enable(ptr noundef %97) #5
  br label %cleanup

sw.bb80:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %98 = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %98, align 8
  br label %cleanup

free_eq:                                          ; preds = %if.end56
  br i1 %assigned_eq.1.off0, label %if.then82, label %free_eq.if.end85_crit_edge

free_eq.if.end85_crit_edge:                       ; preds = %free_eq
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

if.then82:                                        ; preds = %free_eq
  call void @__sanitizer_cov_trace_pc() #7
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 8
  %102 = ptrtoint ptr %vector65 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %vector65, align 8
  tail call void @mlx4_release_eq(ptr noundef %101, i32 noundef %103) #5
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %free_eq.if.end85_crit_edge, %free_eq.thread
  %err.0159 = phi i32 [ %call21, %free_eq.thread ], [ %call68, %if.then82 ], [ %call68, %free_eq.if.end85_crit_edge ]
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 8
  %num_comp_vectors = getelementptr inbounds %struct.mlx4_dev, ptr %105, i32 0, i32 3, i32 39
  %106 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %num_comp_vectors, align 4
  %vector87 = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 7
  %108 = ptrtoint ptr %vector87 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %vector87, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %sw.bb80, %sw.bb76, %sw.bb, %if.end71.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0159, %if.end85 ], [ 0, %if.end71.cleanup_crit_edge ], [ 0, %sw.bb80 ], [ 0, %sw.bb76 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx4_is_eq_vector_valid(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_assign_eq(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_eq_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_cq_alloc(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx4_en_cq_event(ptr nocapture noundef %cq, i32 noundef %event) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_tx_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_poll_tx_cq(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_rx_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_poll_rx_cq(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_release_eq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_destroy_cq(ptr nocapture noundef readonly %priv, ptr nocapture noundef %pcq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %pcq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcq, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %wqres = getelementptr inbounds %struct.mlx4_en_cq, ptr %3, i32 0, i32 1
  %buf_size = getelementptr inbounds %struct.mlx4_en_cq, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_size, align 4
  tail call void @mlx4_free_hwq_res(ptr noundef %5, ptr noundef %wqres, i32 noundef %7) #5
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %port = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 29
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %conv = trunc i32 %11 to i8
  %vector = getelementptr inbounds %struct.mlx4_en_cq, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vector, align 8
  %call = tail call zeroext i1 @mlx4_is_eq_vector_valid(ptr noundef %9, i8 noundef zeroext %conv, i32 noundef %13) #5
  br i1 %call, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.mlx4_en_cq, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp = icmp eq i32 %15, 2
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %20 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vector, align 8
  tail call void @mlx4_release_eq(ptr noundef %19, i32 noundef %21) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %22 = ptrtoint ptr %vector to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %vector, align 8
  %23 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %buf_size, align 4
  %buf = getelementptr inbounds %struct.mlx4_en_cq, ptr %3, i32 0, i32 11
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %buf, align 4
  tail call void @kfree(ptr noundef %3) #5
  %25 = ptrtoint ptr %pcq to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %pcq, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_free_hwq_res(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_deactivate_cq(ptr nocapture noundef readonly %priv, ptr noundef %cq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 8
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 4
  tail call void @napi_disable(ptr noundef %2) #5
  tail call void @__netif_napi_del(ptr noundef %2) #5
  tail call void @synchronize_net() #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  tail call void @mlx4_cq_free(ptr noundef %6, ptr noundef %cq) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_cq_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_set_cq_moder(ptr nocapture noundef readonly %priv, ptr noundef %cq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %moder_cnt = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 10
  %4 = ptrtoint ptr %moder_cnt to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %moder_cnt, align 2
  %moder_time = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 9
  %6 = ptrtoint ptr %moder_time to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %moder_time, align 8
  %call = tail call i32 @mlx4_cq_modify(ptr noundef %3, ptr noundef %cq, i16 noundef zeroext %5, i16 noundef zeroext %7) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_cq_modify(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_arm_cq(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %cq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %uar_map = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %uar_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uar_map, align 8
  %uar_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 15
  %arm_sn.i = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 7
  %4 = ptrtoint ptr %arm_sn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arm_sn.i, align 4
  %cons_index.i = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 3
  %6 = ptrtoint ptr %cons_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cons_index.i, align 4
  %and1.i = and i32 %7, 16777215
  %and.i = shl i32 %5, 28
  %shl.i = and i32 %and.i, 805306368
  %or.i = or i32 %shl.i, 33554432
  %or2.i = or i32 %or.i, %and1.i
  %arm_db.i = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 6
  %8 = ptrtoint ptr %arm_db.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arm_db.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or2.i, ptr %9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %cqn.i = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 8
  %11 = ptrtoint ptr %cqn.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cqn.i, align 4
  %or5.i = or i32 %12, %or.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %uar_lock) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or5.i) #5, !srcloc !19
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %and1.i) #5, !srcloc !19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %uar_lock, i32 noundef %call2.i.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_cq.c", i32 57, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_cq.c", i32 112, i32 5}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mlx4_en_activate_cq._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @mlx4_en_activate_cq._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 2155304275}
!19 = !{i64 6085409}
