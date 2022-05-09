; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/prestera/prestera_rxtx.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/prestera/prestera_rxtx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.prestera_rxtx_params = type { i8, i32 }
%struct.prestera_switch = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.notifier_block, ptr, [6 x i8], %struct.list_head, %struct.rwlock_t, i32, i32, i32, i8, ptr, ptr, ptr, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.prestera_sdma = type { [8 x %struct.prestera_rx_ring], %struct.prestera_tx_ring, ptr, ptr, %struct.work_struct, %struct.napi_struct, [24 x i8], %struct.net_device, i32, i64, %struct.spinlock, [68 x i8] }
%struct.prestera_rx_ring = type { ptr, i32 }
%struct.prestera_tx_ring = type { ptr, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.prestera_device = type { ptr, ptr, ptr, %struct.prestera_fw_rev, ptr, ptr, ptr, ptr }
%struct.prestera_fw_rev = type { i16, i16, i16 }
%struct.prestera_sdma_buf = type { ptr, i32, ptr, i32, i8 }
%struct.prestera_sdma_desc = type { i32, i32, i32, i32 }
%struct.prestera_dsa = type { %struct.prestera_dsa_vlan, i32, i32, i8 }
%struct.prestera_dsa_vlan = type { i16, i8, i8, i8 }
%struct.prestera_port = type { ptr, ptr, ptr, %struct.devlink_port, %struct.list_head, ptr, i32, i32, i32, i16, i16, i8, i64, i8, %struct.prestera_port_caps, %struct.list_head, %struct.list_head, %struct.anon.121, %struct.prestera_port_mac_config, %struct.prestera_port_phy_config, %struct.prestera_port_mac_state, %struct.prestera_port_phy_state }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.108 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.108 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.prestera_port_caps = type { i64, i8, i8, i8 }
%struct.anon.121 = type { %struct.prestera_port_stats, %struct.delayed_work }
%struct.prestera_port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.prestera_port_mac_config = type { i32, i32, i8, i8, i8, i8 }
%struct.prestera_port_phy_config = type { i32, i8, i8 }
%struct.prestera_port_mac_state = type { i32, i32, i8, i8, i8, i8 }
%struct.prestera_port_phy_state = type { i64, %struct.anon.122, i8 }
%struct.anon.122 = type { i8, i8 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@prestera_sdma_switch_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 628, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to init rxtx by hw\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"prestera_sdma_switch_init\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/marvell/prestera/prestera_rxtx.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@prestera_sdma_switch_init._entry_ptr = internal global ptr @prestera_sdma_switch_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"desc_pool\00", [22 x i8] zeroinitializer }, align 32
@prestera_sdma_switch_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 644, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to init rx ring\0A\00", [40 x i8] zeroinitializer }, align 32
@prestera_sdma_switch_init._entry_ptr.8 = internal global ptr @prestera_sdma_switch_init._entry.6, section ".printk_index", align 4
@prestera_sdma_switch_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 650, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to init tx ring\0A\00", [40 x i8] zeroinitializer }, align 32
@prestera_sdma_switch_init._entry_ptr.11 = internal global ptr @prestera_sdma_switch_init._entry.9, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@prestera_sdma_tx_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&sdma->tx_work)\00", [62 x i8] zeroinitializer }, align 32
@prestera_sdma_tx_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sdma->tx_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@prestera_rxtx_process_skb._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.prestera_rxtx_process_skb = private unnamed_addr constant [26 x i8] c"prestera_rxtx_process_skb\00", align 1
@prestera_rxtx_process_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.prestera_rxtx_process_skb, ptr @.str.2, i32 237, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"received pkt for non-existent port(%u, %u)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@prestera_rxtx_process_skb._entry_ptr = internal global ptr @prestera_rxtx_process_skb._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 628, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 636, i32 36 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 644, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 650, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 326, i32 6 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 532, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 533, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 2789, i32 6 }
@___asan_gen_.75 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [57 x i8] c"../drivers/net/ethernet/marvell/prestera/prestera_rxtx.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 236, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @prestera_rxtx_process_skb._entry, ptr @prestera_rxtx_process_skb._entry_ptr, ptr @prestera_sdma_switch_init._entry, ptr @prestera_sdma_switch_init._entry.6, ptr @prestera_sdma_switch_init._entry.9, ptr @prestera_sdma_switch_init._entry_ptr, ptr @prestera_sdma_switch_init._entry_ptr.11, ptr @prestera_sdma_switch_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @prestera_sdma_tx_init.__key, ptr @.str.14, ptr @prestera_sdma_tx_init.__key.15, ptr @.str.16, ptr @.str.17, ptr @prestera_rxtx_process_skb._rs, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_sdma_switch_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_sdma_switch_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_sdma_switch_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_sdma_tx_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_sdma_tx_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_rxtx_process_skb._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_rxtx_process_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_rxtx_switch_init(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  %dma.i.i66.i = alloca i32, align 4
  %dma.i.i.i = alloca i32, align 4
  %p.i = alloca %struct.prestera_rxtx_params, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2816) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rxtx1 = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 2
  %1 = ptrtoint ptr %rxtx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %rxtx1, align 4
  %2 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #8
  %6 = ptrtoint ptr %p.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 144115188075855871, ptr %p.i, align 8, !annotation !47
  %call.i = call i32 @prestera_hw_rxtx_init(ptr noundef %sw, ptr noundef nonnull %p.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str) #12
  br label %prestera_sdma_switch_init.exit

if.end.i:                                         ; preds = %if.end
  %dma_mask.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 18
  %7 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_mask.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool2.not.i.i = icmp eq i64 %10, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.dma_get_mask.exit.i_crit_edge

land.lhs.true.i.i.dma_get_mask.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_get_mask.exit.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end.i.if.end.i.i_crit_edge
  br label %dma_get_mask.exit.i

dma_get_mask.exit.i:                              ; preds = %if.end.i.i, %land.lhs.true.i.i.dma_get_mask.exit.i_crit_edge
  %retval.0.i.i = phi i64 [ 4294967295, %if.end.i.i ], [ %10, %land.lhs.true.i.i.dma_get_mask.exit.i_crit_edge ]
  %dma_mask.i = getelementptr inbounds %struct.prestera_sdma, ptr %call7.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %retval.0.i.i, ptr %dma_mask.i, align 8
  %map_addr.i = getelementptr inbounds %struct.prestera_rxtx_params, ptr %p.i, i32 0, i32 1
  %12 = ptrtoint ptr %map_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %map_addr.i, align 4
  %map_addr5.i = getelementptr inbounds %struct.prestera_sdma, ptr %call7.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %map_addr5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %map_addr5.i, align 128
  %sw6.i = getelementptr inbounds %struct.prestera_sdma, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %sw6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sw, ptr %sw6.i, align 16
  %call7.i = call ptr @dma_pool_create(ptr noundef nonnull @.str.5, ptr noundef %5, i32 noundef 16, i32 noundef 16, i32 noundef 0) #8
  %desc_pool.i = getelementptr inbounds %struct.prestera_sdma, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i, ptr %desc_pool.i, align 4
  %tobool9.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool9.not.i, label %dma_get_mask.exit.i.prestera_sdma_switch_init.exit_crit_edge, label %if.end11.i

dma_get_mask.exit.i.prestera_sdma_switch_init.exit_crit_edge: ; preds = %dma_get_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_sdma_switch_init.exit

if.end11.i:                                       ; preds = %dma_get_mask.exit.i
  %17 = ptrtoint ptr %sw6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sw6.i, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %pp_regs.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %pp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pp_regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 9856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16711680) #8, !srcloc !49
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end11.i
  %q.079.i.i = phi i32 [ 0, %if.end11.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x %struct.prestera_rx_ring], ptr %call7.i.i, i32 0, i32 %q.079.i.i
  %call1.i.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 20000, i32 noundef 3264, i32 noundef 3) #13
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call1.i.i.i.i.i, ptr %arrayidx.i.i, align 8
  %tobool.not.i64.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool.not.i64.i, label %for.body.i.i.do.end17.i_crit_edge, label %if.end.i65.i

for.body.i.i.do.end17.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17.i

if.end.i65.i:                                     ; preds = %for.body.i.i
  %next_rx.i.i = getelementptr [8 x %struct.prestera_rx_ring], ptr %call7.i.i, i32 0, i32 %q.079.i.i, i32 1
  %24 = ptrtoint ptr %next_rx.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %next_rx.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.prestera_sdma_buf, ptr %call1.i.i.i.i.i, i32 999
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end13.i.i.do.body.i.i_crit_edge, %if.end.i65.i
  %next.0.i.i = phi ptr [ %call1.i.i.i.i.i, %if.end.i65.i ], [ %incdec.ptr.i.i, %if.end13.i.i.do.body.i.i_crit_edge ]
  %prev.0.i.i = phi ptr [ %call1.i.i.i.i.i, %if.end.i65.i ], [ %next.0.i.i, %if.end13.i.i.do.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma.i.i.i) #8
  %25 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %dma.i.i.i, align 4, !annotation !47
  %26 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc_pool.i, align 4
  %call.i.i.i = call ptr @dma_pool_alloc(ptr noundef %27, i32 noundef 3265, ptr noundef nonnull %dma.i.i.i) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %prestera_sdma_buf_init.exit.i.i, label %if.end9.i.i

prestera_sdma_buf_init.exit.i.i:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i.i.i) #8
  br label %do.end17.i

if.end9.i.i:                                      ; preds = %do.body.i.i
  %buf_dma.i.i.i = getelementptr inbounds %struct.prestera_sdma_buf, ptr %next.0.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %buf_dma.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %buf_dma.i.i.i, align 4
  %29 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma.i.i.i, align 4
  %desc_dma.i.i.i = getelementptr inbounds %struct.prestera_sdma_buf, ptr %next.0.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %desc_dma.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %desc_dma.i.i.i, align 4
  %32 = ptrtoint ptr %next.0.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i.i, ptr %next.0.i.i, align 4
  %skb.i.i.i = getelementptr inbounds %struct.prestera_sdma_buf, ptr %next.0.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %skb.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %skb.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i.i.i) #8
  %call10.i.i = call fastcc i32 @prestera_sdma_rx_skb_alloc(ptr noundef %call7.i.i, ptr noundef %next.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %if.end9.i.i.do.end17.i_crit_edge

if.end9.i.i.do.end17.i_crit_edge:                 ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17.i

if.end13.i.i:                                     ; preds = %if.end9.i.i
  %34 = ptrtoint ptr %next.0.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %next.0.i.i, align 4
  %36 = ptrtoint ptr %buf_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf_dma.i.i.i, align 4
  %word2.i.i.i = getelementptr inbounds %struct.prestera_sdma_desc, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %word2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %word2.i.i.i, align 4
  %40 = and i32 %39, 65535
  %41 = or i32 %40, 134610944
  store i32 %41, ptr %word2.i.i.i, align 4
  %42 = ptrtoint ptr %map_addr5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %map_addr5.i, align 128
  %add.i.i.i.i = add i32 %43, %37
  %44 = call i32 @llvm.bswap.i32(i32 %add.i.i.i.i) #8
  %buff.i.i.i = getelementptr inbounds %struct.prestera_sdma_desc, ptr %35, i32 0, i32 2
  %45 = ptrtoint ptr %buff.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %buff.i.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 160, ptr %35, align 16
  %47 = ptrtoint ptr %prev.0.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.0.i.i, align 4
  %49 = ptrtoint ptr %desc_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %desc_dma.i.i.i, align 4
  %51 = ptrtoint ptr %map_addr5.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %map_addr5.i, align 128
  %add.i.i65.i.i = add i32 %52, %50
  %53 = call i32 @llvm.bswap.i32(i32 %add.i.i65.i.i) #8
  %next1.i.i.i = getelementptr inbounds %struct.prestera_sdma_desc, ptr %48, i32 0, i32 3
  %54 = ptrtoint ptr %next1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %next1.i.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.prestera_sdma_buf, ptr %next.0.i.i, i32 1
  %cmp15.not.i.i = icmp eq ptr %next.0.i.i, %arrayidx3.i.i
  br i1 %cmp15.not.i.i, label %for.inc.i.i, label %if.end13.i.i.do.body.i.i_crit_edge

if.end13.i.i.do.body.i.i_crit_edge:               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

for.inc.i.i:                                      ; preds = %if.end13.i.i
  %55 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx3.i.i, align 4
  %desc_dma17.i.i = getelementptr inbounds %struct.prestera_sdma_buf, ptr %call1.i.i.i.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %desc_dma17.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %desc_dma17.i.i, align 4
  %59 = ptrtoint ptr %map_addr5.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %map_addr5.i, align 128
  %add.i.i67.i.i = add i32 %60, %58
  %61 = call i32 @llvm.bswap.i32(i32 %add.i.i67.i.i) #8
  %next1.i68.i.i = getelementptr inbounds %struct.prestera_sdma_desc, ptr %56, i32 0, i32 3
  %62 = ptrtoint ptr %next1.i68.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %next1.i68.i.i, align 4
  %63 = ptrtoint ptr %sw6.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sw6.i, align 16
  %mul.i.i = shl i32 %q.079.i.i, 4
  %add.i.i = add nuw nsw i32 %mul.i.i, 9740
  %65 = ptrtoint ptr %desc_dma17.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %desc_dma17.i.i, align 4
  %67 = ptrtoint ptr %map_addr5.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %map_addr5.i, align 128
  %add.i.i.i = add i32 %68, %66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  call void @arm_heavy_mb() #8
  %69 = call i32 @llvm.bswap.i32(i32 %add.i.i.i) #8
  %70 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %64, align 4
  %pp_regs.i69.i.i = getelementptr inbounds %struct.prestera_device, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %pp_regs.i69.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pp_regs.i69.i.i, align 4
  %add.ptr.i70.i.i = getelementptr i8, ptr %73, i32 %add.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i.i, i32 %69) #8, !srcloc !49
  %inc.i.i = add nuw nsw i32 %q.079.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %if.end18.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

do.end17.i:                                       ; preds = %if.end9.i.i.do.end17.i_crit_edge, %prestera_sdma_buf_init.exit.i.i, %for.body.i.i.do.end17.i_crit_edge
  %retval.2.i.ph.i = phi i32 [ -12, %prestera_sdma_buf_init.exit.i.i ], [ %call10.i.i, %if.end9.i.i.do.end17.i_crit_edge ], [ -12, %for.body.i.i.do.end17.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7) #12
  br label %err_rx_init.i

if.end18.i:                                       ; preds = %for.inc.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @arm_heavy_mb() #8
  %74 = ptrtoint ptr %sw6.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sw6.i, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %pp_regs.i71.i.i = getelementptr inbounds %struct.prestera_device, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %pp_regs.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pp_regs.i71.i.i, align 4
  %add.ptr.i72.i.i = getelementptr i8, ptr %79, i32 9856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i.i, i32 -16777216) #8, !srcloc !49
  %tx_ring1.i.i = getelementptr inbounds %struct.prestera_sdma, ptr %call7.i.i, i32 0, i32 1
  %tx_work.i.i = getelementptr inbounds %struct.prestera_sdma, ptr %call7.i.i, i32 0, i32 4
  call void @__init_work(ptr noundef %tx_work.i.i, i32 noundef 0) #8
  %80 = ptrtoint ptr %tx_work.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -64, ptr %tx_work.i.i, align 8
  %lockdep_map.i.i = getelementptr inbounds %struct.prestera_sdma, ptr %call7.i.i, i32 0, i32 4, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @prestera_sdma_tx_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry5.i.i = getelementptr inbounds %struct.prestera_sdma, ptr %call7.i.i, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %entry5.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %entry5.i.i, ptr %entry5.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.prestera_sdma, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %82 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %entry5.i.i, ptr %prev.i.i.i, align 8
  %func.i.i = getelementptr inbounds %struct.prestera_sdma, ptr %call7.i.i, i32 0, i32 4, i32 2
  %83 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @prestera_sdma_tx_recycle_work_fn, ptr %func.i.i, align 4
  %tx_lock.i.i = getelementptr inbounds %struct.prestera_sdma, ptr %call7.i.i, i32 0, i32 10
  call void @__raw_spin_lock_init(ptr noundef %tx_lock.i.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @prestera_sdma_tx_init.__key.15, i16 noundef signext 3) #8
  %call1.i.i.i.i67.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 20000, i32 noundef 3264, i32 noundef 3) #13
  %84 = ptrtoint ptr %tx_ring1.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call1.i.i.i.i67.i, ptr %tx_ring1.i.i, align 8
  %tobool.not.i68.i = icmp eq ptr %call1.i.i.i.i67.i, null
  br i1 %tobool.not.i68.i, label %if.end18.i.do.end24.i_crit_edge, label %if.end.i72.i

if.end18.i.do.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24.i

if.end.i72.i:                                     ; preds = %if.end18.i
  %arrayidx.i69.i = getelementptr %struct.prestera_sdma_buf, ptr %call1.i.i.i.i67.i, i32 999
  %max_burst.i.i = getelementptr inbounds %struct.prestera_sdma, ptr %call7.i.i, i32 0, i32 1, i32 2
  %85 = ptrtoint ptr %max_burst.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 64, ptr %max_burst.i.i, align 8
  %burst.i.i = getelementptr inbounds %struct.prestera_sdma, ptr %call7.i.i, i32 0, i32 1, i32 3
  %86 = ptrtoint ptr %burst.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 64, ptr %burst.i.i, align 4
  %next_tx.i.i = getelementptr inbounds %struct.prestera_sdma, ptr %call7.i.i, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %next_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %next_tx.i.i, align 4
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %if.end20.i.i.do.body16.i.i_crit_edge, %if.end.i72.i
  %next.0.i73.i = phi ptr [ %call1.i.i.i.i67.i, %if.end.i72.i ], [ %incdec.ptr.i84.i, %if.end20.i.i.do.body16.i.i_crit_edge ]
  %prev.0.i74.i = phi ptr [ %call1.i.i.i.i67.i, %if.end.i72.i ], [ %next.0.i73.i, %if.end20.i.i.do.body16.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma.i.i66.i) #8
  %88 = ptrtoint ptr %dma.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %dma.i.i66.i, align 4, !annotation !47
  %89 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %desc_pool.i, align 4
  %call.i.i75.i = call ptr @dma_pool_alloc(ptr noundef %90, i32 noundef 3265, ptr noundef nonnull %dma.i.i66.i) #8
  %tobool.not.i.i76.i = icmp eq ptr %call.i.i75.i, null
  br i1 %tobool.not.i.i76.i, label %prestera_sdma_buf_init.exit.i77.i, label %if.end20.i.i

prestera_sdma_buf_init.exit.i77.i:                ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i.i66.i) #8
  br label %do.end24.i

if.end20.i.i:                                     ; preds = %do.body16.i.i
  %buf_dma.i.i78.i = getelementptr inbounds %struct.prestera_sdma_buf, ptr %next.0.i73.i, i32 0, i32 3
  %91 = ptrtoint ptr %buf_dma.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %buf_dma.i.i78.i, align 4
  %92 = ptrtoint ptr %dma.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dma.i.i66.i, align 4
  %desc_dma.i.i79.i = getelementptr inbounds %struct.prestera_sdma_buf, ptr %next.0.i73.i, i32 0, i32 1
  %94 = ptrtoint ptr %desc_dma.i.i79.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %desc_dma.i.i79.i, align 4
  %95 = ptrtoint ptr %next.0.i73.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i.i75.i, ptr %next.0.i73.i, align 4
  %skb.i.i80.i = getelementptr inbounds %struct.prestera_sdma_buf, ptr %next.0.i73.i, i32 0, i32 2
  %96 = ptrtoint ptr %skb.i.i80.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %skb.i.i80.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i.i66.i) #8
  %is_used.i.i = getelementptr inbounds %struct.prestera_sdma_buf, ptr %next.0.i73.i, i32 0, i32 4
  %97 = ptrtoint ptr %is_used.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %is_used.i.i, align 4
  %98 = ptrtoint ptr %call.i.i75.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1060864, ptr %call.i.i75.i, align 16
  %word2.i.i81.i = getelementptr inbounds %struct.prestera_sdma_desc, ptr %call.i.i75.i, i32 0, i32 1
  %99 = ptrtoint ptr %word2.i.i81.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %word2.i.i81.i, align 4
  %100 = ptrtoint ptr %prev.0.i74.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.0.i74.i, align 4
  %102 = ptrtoint ptr %desc_dma.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %desc_dma.i.i79.i, align 4
  %104 = ptrtoint ptr %map_addr5.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %map_addr5.i, align 128
  %add.i.i.i82.i = add i32 %105, %103
  %106 = call i32 @llvm.bswap.i32(i32 %add.i.i.i82.i) #8
  %next1.i.i83.i = getelementptr inbounds %struct.prestera_sdma_desc, ptr %101, i32 0, i32 3
  %107 = ptrtoint ptr %next1.i.i83.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %next1.i.i83.i, align 4
  %incdec.ptr.i84.i = getelementptr %struct.prestera_sdma_buf, ptr %next.0.i73.i, i32 1
  %cmp.not.i.i = icmp eq ptr %next.0.i73.i, %arrayidx.i69.i
  br i1 %cmp.not.i.i, label %if.end25.i, label %if.end20.i.i.do.body16.i.i_crit_edge

if.end20.i.i.do.body16.i.i_crit_edge:             ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16.i.i

do.end24.i:                                       ; preds = %prestera_sdma_buf_init.exit.i77.i, %if.end18.i.do.end24.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.10) #12
  br label %err_tx_init.i

if.end25.i:                                       ; preds = %if.end20.i.i
  %108 = ptrtoint ptr %arrayidx.i69.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i69.i, align 4
  %desc_dma25.i.i = getelementptr inbounds %struct.prestera_sdma_buf, ptr %call1.i.i.i.i67.i, i32 0, i32 1
  %110 = ptrtoint ptr %desc_dma25.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %desc_dma25.i.i, align 4
  %112 = ptrtoint ptr %map_addr5.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %map_addr5.i, align 128
  %add.i.i69.i.i = add i32 %113, %111
  %114 = call i32 @llvm.bswap.i32(i32 %add.i.i69.i.i) #8
  %next1.i70.i.i = getelementptr inbounds %struct.prestera_sdma_desc, ptr %109, i32 0, i32 3
  %115 = ptrtoint ptr %next1.i70.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %next1.i70.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  call void @arm_heavy_mb() #8
  %116 = ptrtoint ptr %sw6.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sw6.i, align 16
  %118 = ptrtoint ptr %desc_dma25.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %desc_dma25.i.i, align 4
  %120 = ptrtoint ptr %map_addr5.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %map_addr5.i, align 128
  %add.i.i86.i = add i32 %121, %119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  call void @arm_heavy_mb() #8
  %122 = call i32 @llvm.bswap.i32(i32 %add.i.i86.i) #8
  %123 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %117, align 4
  %pp_regs.i.i87.i = getelementptr inbounds %struct.prestera_device, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %pp_regs.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pp_regs.i.i87.i, align 4
  %add.ptr.i.i88.i = getelementptr i8, ptr %126, i32 9920
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i88.i, i32 %122) #8, !srcloc !49
  %call26.i = call i32 @prestera_hw_event_handler_register(ptr noundef %sw, i32 noundef 3, ptr noundef nonnull @prestera_rxtx_handle_event, ptr noundef %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end25.i.err_tx_init.i_crit_edge

if.end25.i.err_tx_init.i_crit_edge:               ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_tx_init.i

if.end29.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %napi_dev.i = getelementptr inbounds %struct.prestera_sdma, ptr %call7.i.i, i32 0, i32 7
  %call30.i = call i32 @init_dummy_netdev(ptr noundef %napi_dev.i) #8
  %rx_napi.i = getelementptr inbounds %struct.prestera_sdma, ptr %call7.i.i, i32 0, i32 5
  call void @netif_napi_add(ptr noundef %napi_dev.i, ptr noundef %rx_napi.i, ptr noundef nonnull @prestera_sdma_rx_poll, i32 noundef 64) #8
  call void @napi_enable(ptr noundef %rx_napi.i) #8
  br label %prestera_sdma_switch_init.exit

err_tx_init.i:                                    ; preds = %if.end25.i.err_tx_init.i_crit_edge, %do.end24.i
  %err.0.i = phi i32 [ -12, %do.end24.i ], [ %call26.i, %if.end25.i.err_tx_init.i_crit_edge ]
  call fastcc void @prestera_sdma_tx_fini(ptr noundef %call7.i.i) #8
  br label %err_rx_init.i

err_rx_init.i:                                    ; preds = %err_tx_init.i, %do.end17.i
  %err.1.i = phi i32 [ %retval.2.i.ph.i, %do.end17.i ], [ %err.0.i, %err_tx_init.i ]
  call fastcc void @prestera_sdma_rx_fini(ptr noundef %call7.i.i) #8
  %127 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %desc_pool.i, align 4
  call void @dma_pool_destroy(ptr noundef %128) #8
  br label %prestera_sdma_switch_init.exit

prestera_sdma_switch_init.exit:                   ; preds = %err_rx_init.i, %if.end29.i, %dma_get_mask.exit.i.prestera_sdma_switch_init.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %err.1.i, %err_rx_init.i ], [ 0, %if.end29.i ], [ -12, %dma_get_mask.exit.i.prestera_sdma_switch_init.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #8
  br label %cleanup

cleanup:                                          ; preds = %prestera_sdma_switch_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %prestera_sdma_switch_init.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_rxtx_switch_fini(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rxtx.i = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 2
  %0 = ptrtoint ptr %rxtx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxtx.i, align 4
  %rx_napi.i = getelementptr inbounds %struct.prestera_sdma, ptr %1, i32 0, i32 5
  tail call void @napi_disable(ptr noundef %rx_napi.i) #8
  tail call void @__netif_napi_del(ptr noundef %rx_napi.i) #8
  tail call void @synchronize_net() #8
  tail call void @prestera_hw_event_handler_unregister(ptr noundef %sw, i32 noundef 3, ptr noundef nonnull @prestera_rxtx_handle_event) #8
  tail call fastcc void @prestera_sdma_tx_fini(ptr noundef %1) #8
  tail call fastcc void @prestera_sdma_rx_fini(ptr noundef %1) #8
  %desc_pool.i = getelementptr inbounds %struct.prestera_sdma, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc_pool.i, align 4
  tail call void @dma_pool_destroy(ptr noundef %3) #8
  %4 = ptrtoint ptr %rxtx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rxtx.i, align 4
  tail call void @kfree(ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @prestera_rxtx_port_init(ptr nocapture noundef readonly %port) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 16, ptr %needed_headroom, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_rxtx_xmit(ptr nocapture noundef readonly %port, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %dsa = alloca %struct.prestera_dsa, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dsa) #8
  %0 = call ptr @memset(ptr %dsa, i32 255, i32 20)
  %dev_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 8
  %1 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev_id, align 4
  %hw_dev_num = getelementptr inbounds %struct.prestera_dsa, ptr %dsa, i32 0, i32 1
  %3 = ptrtoint ptr %hw_dev_num to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %hw_dev_num, align 4
  %hw_id = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 7
  %4 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_id, align 8
  %port_num = getelementptr inbounds %struct.prestera_dsa, ptr %dsa, i32 0, i32 2
  %6 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %port_num, align 4
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %7 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %skb_header_cloned.exit.thread.i, label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #8
  %10 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dataref1.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i1.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i1.i, label %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge, label %if.end.i2.i

skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread.i.i

skb_header_cloned.exit.thread.i:                  ; preds = %entry
  %data.i.i5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i5.i, align 4
  %head.i.i6.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %18 = ptrtoint ptr %head.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i6.i, align 8
  %sub.ptr.lhs.cast.i.i7.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i8.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.i9.i = sub i32 %sub.ptr.lhs.cast.i.i7.i, %sub.ptr.rhs.cast.i.i8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i9.i)
  %cmp.i110.i = icmp ult i32 %sub.ptr.sub.i.i9.i, 16
  br i1 %cmp.i110.i, label %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.if.end_crit_edge

skb_header_cloned.exit.thread.i.if.end_crit_edge: ; preds = %skb_header_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread.i.i

if.end.thread.i.i:                                ; preds = %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge, %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge
  %sub.ptr.sub.i.i12.i = phi i32 [ %sub.ptr.sub.i.i9.i, %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i, %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge ]
  %phi.bo.i.i = sub nuw nsw i32 143, %sub.ptr.sub.i.i12.i
  %phi.bo11.i.i = and i32 %phi.bo.i.i, -128
  br label %skb_cow_head.exit

if.end.i2.i:                                      ; preds = %skb_header_cloned.exit.i
  %and.i.i = and i32 %11, 65535
  %shr.i.i = ashr i32 %11, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp.i.not.i, label %if.end.i2.i.if.end_crit_edge, label %if.end.i2.i.skb_cow_head.exit_crit_edge

if.end.i2.i.skb_cow_head.exit_crit_edge:          ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_cow_head.exit

if.end.i2.i.if.end_crit_edge:                     ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

skb_cow_head.exit:                                ; preds = %if.end.i2.i.skb_cow_head.exit_crit_edge, %if.end.thread.i.i
  %delta.010.i.i = phi i32 [ %phi.bo11.i.i, %if.end.thread.i.i ], [ 0, %if.end.i2.i.skb_cow_head.exit_crit_edge ]
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %delta.010.i.i, i32 noundef 0, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp = icmp slt i32 %call4.i.i, 0
  br i1 %cmp, label %skb_cow_head.exit.cleanup_crit_edge, label %skb_cow_head.exit.if.end_crit_edge

skb_cow_head.exit.if.end_crit_edge:               ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

skb_cow_head.exit.cleanup_crit_edge:              ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %skb_cow_head.exit.if.end_crit_edge, %if.end.i2.i.if.end_crit_edge, %skb_header_cloned.exit.thread.i.if.end_crit_edge
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 16) #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 16
  %22 = call ptr @memcpy(ptr %21, ptr %add.ptr, i32 12)
  %23 = load ptr, ptr %data, align 4
  %add.ptr4 = getelementptr i8, ptr %23, i32 12
  %call5 = call i32 @prestera_dsa_build(ptr noundef nonnull %dsa, ptr noundef %add.ptr4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %24 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sw, align 4
  %rxtx = getelementptr inbounds %struct.prestera_switch, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %rxtx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rxtx, align 4
  %sw.i = getelementptr inbounds %struct.prestera_sdma, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sw.i, align 16
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %tx_lock.i = getelementptr inbounds %struct.prestera_sdma, ptr %27, i32 0, i32 10
  call void @_raw_spin_lock(ptr noundef %tx_lock.i) #8
  %tx_ring3.i = getelementptr inbounds %struct.prestera_sdma, ptr %27, i32 0, i32 1
  %37 = ptrtoint ptr %tx_ring3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_ring3.i, align 4
  %next_tx.i = getelementptr inbounds %struct.prestera_sdma, ptr %27, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %next_tx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %next_tx.i, align 4
  %arrayidx.i = getelementptr %struct.prestera_sdma_buf, ptr %38, i32 %40
  %is_used.i = getelementptr %struct.prestera_sdma_buf, ptr %38, i32 %40, i32 4
  %41 = ptrtoint ptr %is_used.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_used.i, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %tx_work.i = getelementptr inbounds %struct.prestera_sdma, ptr %27, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %tx_work.i) #8
  br label %drop_skb.i

if.end.i:                                         ; preds = %if.end8
  %len1.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %44 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %45)
  %cmp.i.i.i.i = icmp ult i32 %45, 60
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.if.end9.i_crit_edge, !prof !54

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then.i.i.i.i:                                  ; preds = %if.end.i
  %sub.i.i.i.i = sub nuw nsw i32 60, %45
  %call.i.i.i.i17 = call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i.i.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i17)
  %tobool4.not.i.i.i.i = icmp eq i32 %call.i.i.i.i17, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i.drop_skb_nofree.i_crit_edge

if.then.i.i.i.i.drop_skb_nofree.i_crit_edge:      ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop_skb_nofree.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %46 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %__skb_put.exit.i.i.i.i, label %do.body3.i.i.i.i.i, !prof !55

do.body3.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #8, !srcloc !56
  unreachable

__skb_put.exit.i.i.i.i:                           ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %49, i32 %sub.i.i.i.i
  store ptr %add.ptr.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %50 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len1.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %51, %sub.i.i.i.i
  store i32 %add.i.i.i.i.i, ptr %len1.i.i.i.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %__skb_put.exit.i.i.i.i, %if.end.i.if.end9.i_crit_edge
  %52 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sw.i, align 16
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %60 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len1.i.i.i.i, align 4
  %call.i.i1.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %59) #8
  br i1 %call.i.i1.i, label %land.rhs.i.i.i, label %dma_map_single_attrs.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.end9.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge, label %if.then.i.i.i, !prof !55

land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %57) #8
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 3
  %62 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %63, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i2.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i.i

if.end.i.i.i2.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %57, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i2.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i3.i = phi ptr [ %65, %if.end.i.i.i2.i ], [ %63, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i3.i) #8
  br label %dma_map_single_attrs.exit.thread.i.i

dma_map_single_attrs.exit.thread.i.i:             ; preds = %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge
  call void @debug_dma_mapping_error(ptr noundef %57, i32 noundef -1) #8
  br label %drop_skb.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end9.i
  call void @debug_dma_map_single(ptr noundef %57, ptr noundef %59, i32 noundef %61) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %66 = load ptr, ptr @mem_map, align 4
  %67 = ptrtoint ptr %59 to i32
  %sub.i.i.i = add i32 %67, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %66, i32 %shr.i.i.i
  %and.i.i.i = and i32 %67, 4095
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %57, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef %61, i32 noundef 1, i32 noundef 0) #8
  call void @debug_dma_mapping_error(ptr noundef %57, i32 noundef %call41.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call41.i.i.i, -1
  br i1 %cmp.i.i.i, label %dma_map_single_attrs.exit.i.i.drop_skb.i_crit_edge, label %if.end13.i

dma_map_single_attrs.exit.i.i.drop_skb.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop_skb.i

if.end13.i:                                       ; preds = %dma_map_single_attrs.exit.i.i
  %buf_dma.i.i = getelementptr %struct.prestera_sdma_buf, ptr %38, i32 %40, i32 3
  %68 = ptrtoint ptr %buf_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call41.i.i.i, ptr %buf_dma.i.i, align 4
  %skb3.i.i = getelementptr %struct.prestera_sdma_buf, ptr %38, i32 %40, i32 2
  %69 = ptrtoint ptr %skb3.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %skb, ptr %skb3.i.i, align 4
  %70 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len1.i.i.i.i, align 4
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i, align 4
  %word2.i.i = getelementptr inbounds %struct.prestera_sdma_desc, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %word2.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %word2.i.i, align 4
  %76 = and i32 %75, -65408
  %77 = call i32 @llvm.bswap.i32(i32 %76) #8
  %add.i.i = shl i32 %71, 16
  %78 = add i32 %add.i.i, 262144
  %79 = and i32 %78, 2147418112
  %or.i.i.i = or i32 %77, %79
  %map_addr.i.i.i = getelementptr inbounds %struct.prestera_sdma, ptr %27, i32 0, i32 8
  %80 = ptrtoint ptr %map_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %map_addr.i.i.i, align 128
  %add.i.i.i = add i32 %81, %call41.i.i.i
  %82 = call i32 @llvm.bswap.i32(i32 %add.i.i.i) #8
  %buff.i.i = getelementptr inbounds %struct.prestera_sdma_desc, ptr %73, i32 0, i32 2
  %83 = ptrtoint ptr %buff.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %buff.i.i, align 8
  %84 = call i32 @llvm.bswap.i32(i32 %or.i.i.i) #8
  %85 = ptrtoint ptr %word2.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %word2.i.i, align 4
  %86 = ptrtoint ptr %buf_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %buf_dma.i.i, align 4
  %88 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len1.i.i.i.i, align 4
  call void @dma_sync_single_for_device(ptr noundef %33, i32 noundef %87, i32 noundef %89, i32 noundef 1) #8
  %burst.i = getelementptr inbounds %struct.prestera_sdma, ptr %27, i32 0, i32 1, i32 3
  %90 = ptrtoint ptr %burst.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %burst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool16.not.i = icmp eq i32 %91, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add i32 %91, -1
  %92 = ptrtoint ptr %burst.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %dec.i, ptr %burst.i, align 4
  br label %if.end24.i

if.else.i:                                        ; preds = %if.end13.i
  %max_burst.i = getelementptr inbounds %struct.prestera_sdma, ptr %27, i32 0, i32 1, i32 2
  %93 = ptrtoint ptr %max_burst.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max_burst.i, align 4
  %95 = ptrtoint ptr %burst.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %burst.i, align 4
  %mul.i.i = mul i32 %94, 10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i6.i.do.body.i.i_crit_edge, %if.else.i
  %tx_wait_num.0.i.i = phi i32 [ %mul.i.i, %if.else.i ], [ %dec.i.i, %if.end.i6.i.do.body.i.i_crit_edge ]
  %96 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sw.i, align 16
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %pp_regs.i.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %pp_regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pp_regs.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %101, i32 10344
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  %103 = and i32 %102, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i.i.i = icmp eq i32 %103, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.if.end24.i_crit_edge, label %if.end.i6.i

do.body.i.i.if.end24.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.end.i6.i:                                      ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %104(i32 noundef 214748) #8
  %dec.i.i = add i32 %tx_wait_num.0.i.i, -1
  %tobool.not.i.i18 = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i18, label %drop_skb_unmap.i, label %if.end.i6.i.do.body.i.i_crit_edge

if.end.i6.i.do.body.i.i_crit_edge:                ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

if.end24.i:                                       ; preds = %do.body.i.i.if.end24.i_crit_edge, %if.then17.i
  %105 = ptrtoint ptr %next_tx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %next_tx.i, align 4
  %add.i = add i32 %106, 1
  %rem.i = srem i32 %add.i, 1000
  store i32 %rem.i, ptr %next_tx.i, align 4
  %107 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 16
  %111 = or i32 %110, 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  call void @arm_heavy_mb() #8
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %108, align 16
  %113 = ptrtoint ptr %is_used.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %is_used.i, align 4
  %114 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sw.i, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  call void @arm_heavy_mb() #8
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %pp_regs.i.i.i = getelementptr inbounds %struct.prestera_device, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %pp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pp_regs.i.i.i, align 4
  %add.ptr.i.i9.i = getelementptr i8, ptr %119, i32 10344
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9.i, i32 16777216) #8, !srcloc !49
  %tx_work.i.i = getelementptr inbounds %struct.prestera_sdma, ptr %27, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %120 = load ptr, ptr @system_wq, align 4
  %call.i.i.i10.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %120, ptr noundef %tx_work.i.i) #8
  br label %prestera_sdma_xmit.exit

drop_skb_unmap.i:                                 ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %sw.i, align 16
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %127 = ptrtoint ptr %buf_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %buf_dma.i.i, align 4
  %129 = ptrtoint ptr %skb3.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %skb3.i.i, align 4
  %len.i13.i = getelementptr inbounds %struct.sk_buff, ptr %130, i32 0, i32 6
  %131 = ptrtoint ptr %len.i13.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %len.i13.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %126, i32 noundef %128, i32 noundef %132, i32 noundef 1, i32 noundef 0) #8
  br label %drop_skb.i

drop_skb.i:                                       ; preds = %drop_skb_unmap.i, %dma_map_single_attrs.exit.i.i.drop_skb.i_crit_edge, %dma_map_single_attrs.exit.thread.i.i, %if.then.i
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #8
  br label %drop_skb_nofree.i

drop_skb_nofree.i:                                ; preds = %drop_skb.i, %if.then.i.i.i.i.drop_skb_nofree.i_crit_edge
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 36, i32 7
  %133 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %134, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %prestera_sdma_xmit.exit

prestera_sdma_xmit.exit:                          ; preds = %drop_skb_nofree.i, %if.end24.i
  call void @_raw_spin_unlock(ptr noundef %tx_lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %prestera_sdma_xmit.exit, %if.end.cleanup_crit_edge, %skb_cow_head.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %prestera_sdma_xmit.exit ], [ 1, %skb_cow_head.exit.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dsa) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_dsa_build(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_rxtx_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_event_handler_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prestera_rxtx_handle_event(ptr nocapture noundef readnone %sw, ptr nocapture noundef readonly %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %evt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %evt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp.not = icmp eq i16 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sw2 = getelementptr inbounds %struct.prestera_sdma, ptr %arg, i32 0, i32 2
  %2 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw2, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %pp_regs.i = getelementptr inbounds %struct.prestera_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pp_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 10260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !49
  %rx_napi = getelementptr inbounds %struct.prestera_sdma, ptr %arg, i32 0, i32 5
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %rx_napi) #8
  br i1 %call.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__napi_schedule(ptr noundef %rx_napi) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_dummy_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_sdma_rx_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  %dsa.i = alloca %struct.prestera_dsa, align 4
  %rx_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rx_list) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %rx_list, i32 0, i32 1
  %1 = ptrtoint ptr %rx_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %rx_list, ptr %rx_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rx_list, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %napi, i32 -136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp87 = icmp sgt i32 %budget, 0
  br i1 %cmp87, label %for.cond.preheader.lr.ph, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

for.cond.preheader.lr.ph:                         ; preds = %entry
  %map_addr.i.i.i = getelementptr i8, ptr %napi, i32 2552
  %hw_dev_num.i = getelementptr inbounds %struct.prestera_dsa, ptr %dsa.i, i32 0, i32 1
  %port_num.i = getelementptr inbounds %struct.prestera_dsa, ptr %dsa.i, i32 0, i32 2
  %sw.i = getelementptr i8, ptr %napi, i32 -56
  %is_tagged.i = getelementptr inbounds %struct.prestera_dsa_vlan, ptr %dsa.i, i32 0, i32 3
  %vpt.i = getelementptr inbounds %struct.prestera_dsa_vlan, ptr %dsa.i, i32 0, i32 1
  %cfi_bit.i = getelementptr inbounds %struct.prestera_dsa_vlan, ptr %dsa.i, i32 0, i32 2
  %cpu_code54.i = getelementptr inbounds %struct.prestera_dsa, ptr %dsa.i, i32 0, i32 3
  br label %for.cond.preheader

while.cond.loopexit:                              ; preds = %cleanup.while.cond.loopexit_crit_edge, %for.cond.preheader.while.cond.loopexit_crit_edge
  %pkts_done.1.lcssa = phi i32 [ %pkts_done.089, %for.cond.preheader.while.cond.loopexit_crit_edge ], [ %pkts_done.2, %cleanup.while.cond.loopexit_crit_edge ]
  %rxq_done_map.1.lcssa = phi i32 [ %rxq_done_map.090, %for.cond.preheader.while.cond.loopexit_crit_edge ], [ %rxq_done_map.2, %cleanup.while.cond.loopexit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pkts_done.1.lcssa, i32 %budget)
  %cmp = icmp slt i32 %pkts_done.1.lcssa, %budget
  %cmp.not = xor i1 %cmp, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %rxq_done_map.1.lcssa)
  %cmp2.not = icmp eq i32 %rxq_done_map.1.lcssa, 255
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp2.not
  br i1 %or.cond, label %while.end, label %while.cond.loopexit.for.cond.preheader_crit_edge

while.cond.loopexit.for.cond.preheader_crit_edge: ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond.loopexit.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %rxq_done_map.090 = phi i32 [ 0, %for.cond.preheader.lr.ph ], [ %rxq_done_map.1.lcssa, %while.cond.loopexit.for.cond.preheader_crit_edge ]
  %pkts_done.089 = phi i32 [ 0, %for.cond.preheader.lr.ph ], [ %pkts_done.1.lcssa, %while.cond.loopexit.for.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pkts_done.089, i32 %budget)
  %cmp580 = icmp slt i32 %pkts_done.089, %budget
  br i1 %cmp580, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.while.cond.loopexit_crit_edge

for.cond.preheader.while.cond.loopexit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.loopexit

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %rxq_done_map.185 = phi i32 [ %rxq_done_map.2, %cleanup.for.body_crit_edge ], [ %rxq_done_map.090, %for.cond.preheader.for.body_crit_edge ]
  %q.083 = phi i32 [ %inc31, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %pkts_done.182 = phi i32 [ %pkts_done.2, %cleanup.for.body_crit_edge ], [ %pkts_done.089, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.prestera_rx_ring], ptr %add.ptr, i32 0, i32 %q.083
  %next_rx = getelementptr inbounds %struct.prestera_rx_ring, ptr %arrayidx, i32 0, i32 1
  %3 = ptrtoint ptr %next_rx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %next_rx, align 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr %struct.prestera_sdma_buf, ptr %6, i32 %4
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx7, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 16
  %11 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11 = icmp eq i32 %11, 0
  %shl = shl nuw nsw i32 1, %q.083
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %neg = xor i32 %shl, -1
  %and12 = and i32 %rxq_done_map.185, %neg
  %inc = add nsw i32 %pkts_done.182, 1
  %skb14 = getelementptr %struct.prestera_sdma_buf, ptr %6, i32 %4, i32 2
  %12 = ptrtoint ptr %skb14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb14, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i.i, label %if.end21.critedge.i.i, label %do.end.i.i, !prof !55

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 2789, i32 noundef 9, ptr noundef null) #8
  br label %__skb_trim.exit

if.end21.critedge.i.i:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %word2 = getelementptr inbounds %struct.prestera_sdma_desc, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %word2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %word2, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %shr15 = lshr i32 %18, 16
  %and16 = and i32 %shr15, 16383
  %len22.i.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 6
  %19 = ptrtoint ptr %len22.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and16, ptr %len22.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %and16
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  br label %__skb_trim.exit

__skb_trim.exit:                                  ; preds = %if.end21.critedge.i.i, %do.end.i.i
  %buf_dma1.i = getelementptr %struct.prestera_sdma_buf, ptr %6, i32 %4, i32 3
  %23 = ptrtoint ptr %buf_dma1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf_dma1.i, align 4
  %25 = ptrtoint ptr %skb14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb14, align 4
  %len3.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len3.i, align 4
  %call.i = call fastcc i32 @prestera_sdma_rx_skb_alloc(ptr noundef %add.ptr, ptr noundef %arrayidx7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__skb_trim.exit.prestera_sdma_rx_skb_get.exit_crit_edge, label %if.then.i

__skb_trim.exit.prestera_sdma_rx_skb_get.exit_crit_edge: ; preds = %__skb_trim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_sdma_rx_skb_get.exit

if.then.i:                                        ; preds = %__skb_trim.exit
  %29 = ptrtoint ptr %buf_dma1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %24, ptr %buf_dma1.i, align 4
  %30 = ptrtoint ptr %skb14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %26, ptr %skb14, align 4
  %31 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len3.i, align 4
  %call.i.i = call ptr @__alloc_skb(i32 noundef %32, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool8.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not.i, label %if.then.i.prestera_sdma_rx_skb_get.exit_crit_edge, label %if.then9.i

if.then.i.prestera_sdma_rx_skb_get.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_sdma_rx_skb_get.exit

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %28) #8
  %33 = ptrtoint ptr %skb14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skb14, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 19
  %37 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i, align 4
  %39 = call ptr @memcpy(ptr %36, ptr %38, i32 %28)
  br label %prestera_sdma_rx_skb_get.exit

prestera_sdma_rx_skb_get.exit:                    ; preds = %if.then9.i, %if.then.i.prestera_sdma_rx_skb_get.exit_crit_edge, %__skb_trim.exit.prestera_sdma_rx_skb_get.exit_crit_edge
  %skb.0.i = phi ptr [ %call.i.i, %if.then9.i ], [ null, %if.then.i.prestera_sdma_rx_skb_get.exit_crit_edge ], [ %26, %__skb_trim.exit.prestera_sdma_rx_skb_get.exit_crit_edge ]
  %40 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx7, align 4
  %42 = ptrtoint ptr %buf_dma1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buf_dma1.i, align 4
  %word2.i.i = getelementptr inbounds %struct.prestera_sdma_desc, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %word2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %word2.i.i, align 4
  %46 = and i32 %45, 65535
  %47 = or i32 %46, 134610944
  store i32 %47, ptr %word2.i.i, align 4
  %48 = ptrtoint ptr %map_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %map_addr.i.i.i, align 128
  %add.i.i.i = add i32 %49, %43
  %50 = call i32 @llvm.bswap.i32(i32 %add.i.i.i) #8
  %buff.i.i = getelementptr inbounds %struct.prestera_sdma_desc, ptr %41, i32 0, i32 2
  %51 = ptrtoint ptr %buff.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %buff.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 160, ptr %41, align 16
  %tobool.not = icmp eq ptr %skb.0.i, null
  br i1 %tobool.not, label %prestera_sdma_rx_skb_get.exit.rx_next_buf_crit_edge, label %if.end18

prestera_sdma_rx_skb_get.exit.rx_next_buf_crit_edge: ; preds = %prestera_sdma_rx_skb_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_next_buf

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %rxq_done_map.185, %shl
  br label %cleanup

if.end18:                                         ; preds = %prestera_sdma_rx_skb_get.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dsa.i) #8
  %53 = call ptr @memset(ptr %dsa.i, i32 255, i32 20)
  %call.i70 = call ptr @skb_pull(ptr noundef nonnull %skb.0.i, i32 noundef 14) #8
  %data.i71 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 19
  %54 = ptrtoint ptr %data.i71 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i71, align 4
  %add.ptr.i = getelementptr i8, ptr %55, i32 -2
  %call1.i = call i32 @prestera_dsa_parse(ptr noundef nonnull %dsa.i, ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i72 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i72, label %if.end.i, label %if.end18.prestera_rxtx_process_skb.exit.thread_crit_edge

if.end18.prestera_rxtx_process_skb.exit.thread_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_rxtx_process_skb.exit.thread

if.end.i:                                         ; preds = %if.end18
  %56 = ptrtoint ptr %hw_dev_num.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hw_dev_num.i, align 4
  %58 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port_num.i, align 4
  %60 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sw.i, align 16
  %call2.i = call ptr @prestera_port_find_by_hwid(ptr noundef %61, i32 noundef %57, i32 noundef %59) #8
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.body.i, label %if.end17.i, !prof !54

do.body.i:                                        ; preds = %if.end.i
  %call8.i = call i32 @___ratelimit(ptr noundef nonnull @prestera_rxtx_process_skb._rs, ptr noundef nonnull @__func__.prestera_rxtx_process_skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %do.body.i.prestera_rxtx_process_skb.exit.thread_crit_edge, label %do.end.i

do.body.i.prestera_rxtx_process_skb.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_rxtx_process_skb.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sw.i, align 16
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %67, ptr noundef nonnull @.str.19, i32 noundef %57, i32 noundef %59) #12
  br label %prestera_rxtx_process_skb.exit.thread

if.end17.i:                                       ; preds = %if.end.i
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 6
  %68 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i73 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 7
  %70 = ptrtoint ptr %data_len.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %data_len.i.i.i73, align 8
  %sub.i.i.i = sub i32 %69, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.i.i.i)
  %cmp.i.i = icmp ugt i32 %sub.i.i.i, 15
  br i1 %cmp.i.i, label %if.end17.i.if.end28.i_crit_edge, label %if.end.i.i, !prof !55

if.end17.i.if.end28.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.end.i.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %69)
  %cmp3.i.i = icmp ult i32 %69, 16
  br i1 %cmp3.i.i, label %if.end.i.i.prestera_rxtx_process_skb.exit.thread_crit_edge, label %pskb_may_pull.exit.i, !prof !54

if.end.i.i.prestera_rxtx_process_skb.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_rxtx_process_skb.exit.thread

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub nuw nsw i32 16, %sub.i.i.i
  %call13.i.i = call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.0.i, i32 noundef %sub.i.i) #8
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.prestera_rxtx_process_skb.exit.thread_crit_edge, label %pskb_may_pull.exit.i.if.end28.i_crit_edge, !prof !54

pskb_may_pull.exit.i.if.end28.i_crit_edge:        ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

pskb_may_pull.exit.i.prestera_rxtx_process_skb.exit.thread_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_rxtx_process_skb.exit.thread

if.end28.i:                                       ; preds = %pskb_may_pull.exit.i.if.end28.i_crit_edge, %if.end17.i.if.end28.i_crit_edge
  %call29.i = call ptr @skb_pull_rcsum(ptr noundef nonnull %skb.0.i, i32 noundef 16) #8
  %72 = ptrtoint ptr %data.i71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i71, align 4
  %add.ptr31.i = getelementptr i8, ptr %73, i32 -14
  %add.ptr34.i = getelementptr i8, ptr %73, i32 -30
  %74 = call ptr @memcpy(ptr %add.ptr31.i, ptr %add.ptr34.i, i32 12)
  %call35.i = call ptr @skb_push(ptr noundef nonnull %skb.0.i, i32 noundef 14) #8
  %75 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call2.i, align 8
  %call37.i = call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb.0.i, ptr noundef %76) #8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 18
  %77 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %call37.i, ptr %protocol.i, align 8
  %78 = ptrtoint ptr %is_tagged.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %is_tagged.i, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool38.not.i = icmp eq i8 %79, 0
  br i1 %tobool38.not.i, label %if.end28.i.if.end24_crit_edge, label %if.then39.i

if.end28.i.if.end24_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then39.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %dsa.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %dsa.i, align 4
  %82 = and i16 %81, 4095
  %83 = ptrtoint ptr %vpt.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %vpt.i, align 2
  %conv43.i = zext i8 %84 to i16
  %shl.i = shl i16 %conv43.i, 13
  %or.i = or i16 %shl.i, %82
  %85 = ptrtoint ptr %cfi_bit.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %cfi_bit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool47.not.i = icmp eq i8 %86, 0
  %87 = or i16 %or.i, 4096
  %spec.select.i = select i1 %tobool47.not.i, i16 %or.i, i16 %87
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 9
  %88 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 10
  %89 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %spec.select.i, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 3
  %90 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  br label %if.end24

prestera_rxtx_process_skb.exit.thread:            ; preds = %pskb_may_pull.exit.i.prestera_rxtx_process_skb.exit.thread_crit_edge, %if.end.i.i.prestera_rxtx_process_skb.exit.thread_crit_edge, %do.end.i, %do.body.i.prestera_rxtx_process_skb.exit.thread_crit_edge, %if.end18.prestera_rxtx_process_skb.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dsa.i) #8
  br label %rx_next_buf

if.end24:                                         ; preds = %if.then39.i, %if.end28.i.if.end24_crit_edge
  %91 = ptrtoint ptr %cpu_code54.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %cpu_code54.i, align 4
  call void @prestera_devlink_trap_report(ptr noundef nonnull %call2.i, ptr noundef nonnull %skb.0.i, i8 noundef zeroext %92) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dsa.i) #8
  %93 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %0, align 4
  %call.i.i75 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %skb.0.i, ptr noundef %94, ptr noundef nonnull %rx_list) #8
  br i1 %call.i.i75, label %if.end.i.i76, label %if.end24.rx_next_buf_crit_edge

if.end24.rx_next_buf_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_next_buf

if.end.i.i76:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %skb.0.i, ptr %0, align 4
  %96 = ptrtoint ptr %skb.0.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %rx_list, ptr %skb.0.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %skb.0.i, i32 0, i32 1
  %97 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev3.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %skb.0.i, ptr %94, align 4
  br label %rx_next_buf

rx_next_buf:                                      ; preds = %if.end.i.i76, %if.end24.rx_next_buf_crit_edge, %prestera_rxtx_process_skb.exit.thread, %prestera_sdma_rx_skb_get.exit.rx_next_buf_crit_edge
  %add.i = add i32 %4, 1
  %rem.i = srem i32 %add.i, 1000
  %99 = ptrtoint ptr %next_rx to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %rem.i, ptr %next_rx, align 4
  br label %cleanup

cleanup:                                          ; preds = %rx_next_buf, %if.else
  %pkts_done.2 = phi i32 [ %inc, %rx_next_buf ], [ %pkts_done.182, %if.else ]
  %rxq_done_map.2 = phi i32 [ %and12, %rx_next_buf ], [ %or, %if.else ]
  %inc31 = add nuw nsw i32 %q.083, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %q.083)
  %cmp3 = icmp ult i32 %q.083, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %pkts_done.2, i32 %budget)
  %cmp5 = icmp slt i32 %pkts_done.2, %budget
  %or.cond69 = select i1 %cmp3, i1 %cmp5, i1 false
  br i1 %or.cond69, label %cleanup.for.body_crit_edge, label %cleanup.while.cond.loopexit_crit_edge

cleanup.while.cond.loopexit_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.loopexit

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

while.end:                                        ; preds = %while.cond.loopexit
  br i1 %cmp, label %land.lhs.true, label %while.end.if.end35_crit_edge

while.end.if.end35_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true:                                    ; preds = %while.end
  %call33 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %pkts_done.1.lcssa) #8
  br i1 %call33, label %if.then34, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %sw = getelementptr i8, ptr %napi, i32 -56
  %100 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sw, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  call void @arm_heavy_mb() #8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %pp_regs.i = getelementptr inbounds %struct.prestera_device, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %pp_regs.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pp_regs.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %105, i32 10260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 -66912256) #8, !srcloc !49
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %land.lhs.true.if.end35_crit_edge, %while.end.if.end35_crit_edge, %entry.if.end35_crit_edge
  %pkts_done.0.lcssa96 = phi i32 [ %pkts_done.1.lcssa, %if.then34 ], [ %pkts_done.1.lcssa, %land.lhs.true.if.end35_crit_edge ], [ %pkts_done.1.lcssa, %while.end.if.end35_crit_edge ], [ 0, %entry.if.end35_crit_edge ]
  call void @netif_receive_skb_list(ptr noundef nonnull %rx_list) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rx_list) #8
  ret i32 %pkts_done.0.lcssa96
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prestera_sdma_tx_fini(ptr noundef %sdma) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring = getelementptr inbounds %struct.prestera_sdma, ptr %sdma, i32 0, i32 1
  %tx_work = getelementptr inbounds %struct.prestera_sdma, ptr %sdma, i32 0, i32 4
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_work) #8
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup12_crit_edge, label %for.cond.preheader

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup12

for.cond.preheader:                               ; preds = %entry
  %desc_pool = getelementptr inbounds %struct.prestera_sdma, ptr %sdma, i32 0, i32 3
  %sw = getelementptr inbounds %struct.prestera_sdma, ptr %sdma, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader
  %b.030 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 4
  %arrayidx = getelementptr %struct.prestera_sdma_buf, ptr %3, i32 %b.030
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %for.body.if.end5_crit_edge, label %if.then3

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_pool, align 4
  %desc_dma = getelementptr %struct.prestera_sdma_buf, ptr %3, i32 %b.030, i32 1
  %8 = ptrtoint ptr %desc_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc_dma, align 4
  tail call void @dma_pool_free(ptr noundef %7, ptr noundef nonnull %5, i32 noundef %9) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %for.body.if.end5_crit_edge
  %skb = getelementptr %struct.prestera_sdma_buf, ptr %3, i32 %b.030, i32 2
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw, align 16
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %buf_dma = getelementptr %struct.prestera_sdma_buf, ptr %3, i32 %b.030, i32 3
  %18 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_dma, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef 1, i32 noundef 0) #8
  %22 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %23, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge
  %inc = add nuw nsw i32 %b.030, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %cleanup.cleanup12_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.cleanup12_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup12

cleanup12:                                        ; preds = %cleanup.cleanup12_crit_edge, %entry.cleanup12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prestera_sdma_rx_fini(ptr nocapture noundef readonly %sdma) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sw = getelementptr inbounds %struct.prestera_sdma, ptr %sdma, i32 0, i32 2
  %0 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pp_regs.i = getelementptr inbounds %struct.prestera_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pp_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pp_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 9856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16711680) #8, !srcloc !49
  %desc_pool = getelementptr inbounds %struct.prestera_sdma, ptr %sdma, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc24.for.body_crit_edge, %entry
  %q.048 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.prestera_rx_ring], ptr %sdma, i32 0, i32 %q.048
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.end26_crit_edge, label %for.body.for.body3_crit_edge

for.body.for.body3_crit_edge:                     ; preds = %for.body
  br label %for.body3

for.body.for.end26_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end26

for.body3:                                        ; preds = %cleanup.for.body3_crit_edge, %for.body.for.body3_crit_edge
  %b.046 = phi i32 [ %inc, %cleanup.for.body3_crit_edge ], [ 0, %for.body.for.body3_crit_edge ]
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %desc_dma = getelementptr %struct.prestera_sdma_buf, ptr %9, i32 %b.046, i32 1
  %10 = ptrtoint ptr %desc_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %desc_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %for.body3.if.end9_crit_edge, label %if.then7

for.body3.if.end9_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5 = getelementptr %struct.prestera_sdma_buf, ptr %9, i32 %b.046
  %12 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc_pool, align 4
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx5, align 4
  tail call void @dma_pool_free(ptr noundef %13, ptr noundef %15, i32 noundef %11) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %for.body3.if.end9_crit_edge
  %skb = getelementptr %struct.prestera_sdma_buf, ptr %9, i32 %b.046, i32 2
  %16 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb, align 4
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %buf_dma = getelementptr %struct.prestera_sdma_buf, ptr %9, i32 %b.046, i32 3
  %18 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp13.not = icmp eq i32 %19, -1
  br i1 %cmp13.not, label %if.end12.if.end19_crit_edge, label %if.then14

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sw, align 16
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %25, i32 noundef %19, i32 noundef %27, i32 noundef 2, i32 noundef 0) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end12.if.end19_crit_edge
  %28 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %29, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end9.cleanup_crit_edge
  %inc = add nuw nsw i32 %b.046, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.inc24, label %cleanup.for.body3_crit_edge

cleanup.for.body3_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3

for.inc24:                                        ; preds = %cleanup
  %inc25 = add nuw nsw i32 %q.048, 1
  %exitcond49.not = icmp eq i32 %inc25, 8
  br i1 %exitcond49.not, label %for.inc24.for.end26_crit_edge, label %for.inc24.for.body_crit_edge

for.inc24.for.body_crit_edge:                     ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc24.for.end26_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end26

for.end26:                                        ; preds = %for.inc24.for.end26_crit_edge, %for.body.for.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prestera_sdma_rx_skb_alloc(ptr nocapture noundef readonly %sdma, ptr nocapture noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sw = getelementptr inbounds %struct.prestera_sdma, ptr %sdma, i32 0, i32 2
  %0 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef 1544, i32 noundef 2593, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %call.i29 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %7) #8
  br i1 %call.i29, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !55

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %5) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %5, i32 noundef -1) #8
  br label %err_dma_map

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %5, ptr noundef %7, i32 noundef %9) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %7 to i32
  %sub.i = add i32 %15, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %14, i32 %shr.i
  %and.i = and i32 %15, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %9, i32 noundef 2, i32 noundef 0) #8
  tail call void @debug_dma_mapping_error(ptr noundef %5, i32 noundef %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.err_dma_map_crit_edge, label %if.end7

dma_map_single_attrs.exit.err_dma_map_crit_edge:  ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_dma_map

if.end7:                                          ; preds = %dma_map_single_attrs.exit
  %skb8 = getelementptr inbounds %struct.prestera_sdma_buf, ptr %buf, i32 0, i32 2
  %16 = ptrtoint ptr %skb8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb8, align 4
  %tobool9.not = icmp eq ptr %17, null
  br i1 %tobool9.not, label %if.end7.if.end13_crit_edge, label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %buf_dma = getelementptr inbounds %struct.prestera_sdma_buf, ptr %buf, i32 0, i32 3
  %18 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_dma, align 4
  %len12 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %20 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len12, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %19, i32 noundef %21, i32 noundef 2, i32 noundef 0) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %buf_dma14 = getelementptr inbounds %struct.prestera_sdma_buf, ptr %buf, i32 0, i32 3
  %22 = ptrtoint ptr %buf_dma14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call41.i, ptr %buf_dma14, align 4
  %23 = ptrtoint ptr %skb8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %skb8, align 4
  br label %cleanup

err_dma_map:                                      ; preds = %dma_map_single_attrs.exit.err_dma_map_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %err_dma_map, %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_dma_map ], [ 0, %if.end13 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prestera_sdma_tx_recycle_work_fn(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring1 = getelementptr i8, ptr %work, i32 -24
  %sw.i = getelementptr i8, ptr %work, i32 -8
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %b.015 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %0 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring1, align 4
  %is_used = getelementptr %struct.prestera_sdma_buf, ptr %1, i32 %b.015, i32 4
  %2 = ptrtoint ptr %is_used to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_used, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.prestera_sdma_buf, ptr %1, i32 %b.015
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 16
  %8 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sw.i, align 16
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %buf_dma.i = getelementptr %struct.prestera_sdma_buf, ptr %1, i32 %b.015, i32 3
  %15 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_dma.i, align 4
  %skb.i = getelementptr %struct.prestera_sdma_buf, ptr %1, i32 %b.015, i32 2
  %17 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %14, i32 noundef %16, i32 noundef %20, i32 noundef 1, i32 noundef 0) #8
  %21 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skb.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %22, i32 noundef 0) #8
  %23 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %skb.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %is_used to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %is_used, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %b.015, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_receive_skb_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_dsa_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prestera_port_find_by_hwid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_devlink_trap_report(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_hw_event_handler_unregister(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !30, !32, !33, !34, !35, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_rxtx.c", i32 628, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @prestera_sdma_switch_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @prestera_sdma_switch_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_rxtx.c", i32 636, i32 36}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_rxtx.c", i32 644, i32 3}
!12 = !{ptr @prestera_sdma_switch_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @prestera_sdma_switch_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_rxtx.c", i32 650, i32 3}
!16 = !{ptr @prestera_sdma_switch_init._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @prestera_sdma_switch_init._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @prestera_sdma_tx_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_rxtx.c", i32 532, i32 2}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @prestera_sdma_tx_init.__key.15, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_rxtx.c", i32 533, i32 2}
!27 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_rxtx.c", i32 236, i32 3}
!32 = !{ptr @prestera_rxtx_process_skb._rs, !31, !"_rs", i1 false, i1 false}
!33 = !{ptr @__func__.prestera_rxtx_process_skb, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @prestera_rxtx_process_skb._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @prestera_rxtx_process_skb._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
!48 = !{i64 2156353703}
!49 = !{i64 5834512}
!50 = !{i64 2156374074}
!51 = !{i64 2156384053}
!52 = !{i64 2156390131}
!53 = !{i8 0, i8 2}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2154630970, i64 2154631458, i64 2154631007, i64 2154631063, i64 2154631097, i64 2154631121, i64 2154631162, i64 2154631183, i64 2154631211, i64 2154631245}
!57 = !{i64 5834930}
!58 = !{i64 2156354558}
!59 = !{i64 2156386876}
!60 = !{i64 2156388884}
