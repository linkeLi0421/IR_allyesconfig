; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mscc/ocelot_fdma.c_pt.bc'
source_filename = "../drivers/net/ethernet/mscc/ocelot_fdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ocelot = type { ptr, ptr, ptr, ptr, [14 x ptr], [60 x ptr], ptr, ptr, i32, [2 x [2 x i32]], i32, i32, i32, ptr, [6 x i8], %struct.list_head, i32, i8, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, [3 x %struct.ocelot_vcap_block], %struct.ocelot_vcap_policer, ptr, %struct.ocelot_psfp_list, %struct.mutex, ptr, %struct.delayed_work, ptr, %struct.mutex, %struct.mutex, ptr, i8, ptr, %struct.ptp_clock_info, %struct.hwtstamp_config, i32, %struct.spinlock, %struct.mutex, %struct.spinlock, [4 x %struct.ptp_pin_desc], ptr }
%struct.list_head = type { ptr, ptr }
%struct.ocelot_vcap_block = type { %struct.list_head, i32 }
%struct.ocelot_vcap_policer = type { %struct.list_head, i16, i16, i16, i16 }
%struct.ocelot_psfp_list = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.ocelot_fdma = type { i32, ptr, ptr, i32, %struct.ocelot_fdma_tx_ring, %struct.ocelot_fdma_rx_ring, %struct.napi_struct, ptr }
%struct.ocelot_fdma_tx_ring = type { ptr, i32, [128 x %struct.ocelot_fdma_tx_buf], %struct.spinlock, i16, i16 }
%struct.ocelot_fdma_tx_buf = type { ptr, i32 }
%struct.ocelot_fdma_rx_ring = type { ptr, i32, [512 x %struct.ocelot_fdma_rx_buf], ptr, i16, i16, i16 }
%struct.ocelot_fdma_rx_buf = type { ptr, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.129, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.129 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.160 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.51, %union.anon.54, %union.anon.55, [48 x i8], %union.anon.56, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.58, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr, %union.anon.53 }
%union.anon.53 = type { ptr }
%union.anon.54 = type { ptr }
%union.anon.55 = type { i64 }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { i32, ptr }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.60, i32, i32, i32, i16, i16, %union.anon.62, i32, %union.anon.63, %union.anon.64, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.60 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i32 }
%union.anon.64 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ocelot_fdma_dcb = type { i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.3, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.ocelot_port_private = type { %struct.ocelot_port, ptr, ptr, %struct.phylink_config, i8, %struct.ocelot_port_tc }
%struct.ocelot_port = type { ptr, ptr, i8, ptr, i32, i8, %struct.sk_buff_head, i8, i32, ptr, i8, i8, ptr, i8, i16, ptr, i8, i32 }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.ocelot_port_tc = type { i8, i32, i32 }

@ocelot_fdma_enabled = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fdma\00", [27 x i8] zeroinitializer }, align 32
@ocelot_fdma_prepare_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: skb_linearize error (%d)!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ocelot_fdma_prepare_skb\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/mscc/ocelot_fdma.c\00", [56 x i8] zeroinitializer }, align 32
@ocelot_fdma_prepare_skb._entry_ptr = internal global ptr @ocelot_fdma_prepare_skb._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@ocelot_fdma_tx_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 538, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to wait for TX channel to stop\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ocelot_fdma_tx_cleanup\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ocelot_fdma_tx_cleanup._entry_ptr = internal global ptr @ocelot_fdma_tx_cleanup._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ocelot_fdma_rx_get._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ocelot_fdma_rx_get = private unnamed_addr constant [19 x i8] c"ocelot_fdma_rx_get\00", align 1
@ocelot_fdma_rx_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.ocelot_fdma_rx_get, ptr @.str.3, i32 436, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DCB aborted or pruned\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ocelot_fdma_rx_get._entry_ptr = internal global ptr @ocelot_fdma_rx_get._entry, section ".printk_index", align 4
@ocelot_fdma_get_skb._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ocelot_fdma_get_skb = private unnamed_addr constant [20 x i8] c"ocelot_fdma_get_skb\00", align 1
@ocelot_fdma_get_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.ocelot_fdma_get_skb, ptr @.str.3, i32 330, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"build_skb failed !\0A\00", [44 x i8] zeroinitializer }, align 32
@ocelot_fdma_get_skb._entry_ptr = internal global ptr @ocelot_fdma_get_skb._entry, section ".printk_index", align 4
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@ocelot_fdma_alloc_rx_buffs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ocelot_fdma_alloc_rx_buffs = private unnamed_addr constant [27 x i8] c"ocelot_fdma_alloc_rx_buffs\00", align 1
@ocelot_fdma_alloc_rx_buffs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.ocelot_fdma_alloc_rx_buffs, ptr @.str.3, i32 167, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to allocate rx\0A\00", [41 x i8] zeroinitializer }, align 32
@ocelot_fdma_alloc_rx_buffs._entry_ptr = internal global ptr @ocelot_fdma_alloc_rx_buffs._entry, section ".printk_index", align 4
@ocelot_fdma_rx_restart._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ocelot_fdma_rx_restart = private unnamed_addr constant [23 x i8] c"ocelot_fdma_rx_restart\00", align 1
@ocelot_fdma_rx_restart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.ocelot_fdma_rx_restart, ptr @.str.3, i32 250, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to stop RX channel\0A\00", [37 x i8] zeroinitializer }, align 32
@ocelot_fdma_rx_restart._entry_ptr = internal global ptr @ocelot_fdma_rx_restart._entry, section ".printk_index", align 4
@ocelot_fdma_interrupt._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ocelot_fdma_interrupt = private unnamed_addr constant [22 x i8] c"ocelot_fdma_interrupt\00", align 1
@ocelot_fdma_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.ocelot_fdma_interrupt, ptr @.str.3, i32 599, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error ! chans mask: %#x, code: %#x\0A\00", [60 x i8] zeroinitializer }, align 32
@ocelot_fdma_interrupt._entry_ptr = internal global ptr @ocelot_fdma_interrupt._entry, section ".printk_index", align 4
@ocelot_fdma_rings_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&fdma->tx_ring.xmit_lock\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"ocelot_fdma_enabled\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 21, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 832, i32 44 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 661, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 326, i32 6 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 537, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 435, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 329, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 166, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 249, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 597, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [43 x i8] c"../drivers/net/ethernet/mscc/ocelot_fdma.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 771, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @ocelot_fdma_alloc_rx_buffs._entry, ptr @ocelot_fdma_alloc_rx_buffs._entry_ptr, ptr @ocelot_fdma_get_skb._entry, ptr @ocelot_fdma_get_skb._entry_ptr, ptr @ocelot_fdma_interrupt._entry, ptr @ocelot_fdma_interrupt._entry_ptr, ptr @ocelot_fdma_prepare_skb._entry, ptr @ocelot_fdma_prepare_skb._entry_ptr, ptr @ocelot_fdma_rx_get._entry, ptr @ocelot_fdma_rx_get._entry_ptr, ptr @ocelot_fdma_rx_restart._entry, ptr @ocelot_fdma_rx_restart._entry_ptr, ptr @ocelot_fdma_tx_cleanup._entry, ptr @ocelot_fdma_tx_cleanup._entry_ptr, ptr @ocelot_fdma_enabled, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ocelot_fdma_rx_get._rs, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ocelot_fdma_get_skb._rs, ptr @.str.13, ptr @ocelot_fdma_alloc_rx_buffs._rs, ptr @.str.15, ptr @ocelot_fdma_rx_restart._rs, ptr @.str.17, ptr @ocelot_fdma_interrupt._rs, ptr @.str.18, ptr @ocelot_fdma_rings_alloc.__key, ptr @.str.19], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_fdma_enabled to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_fdma_prepare_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_fdma_tx_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_fdma_rx_get._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_fdma_rx_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_fdma_get_skb._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_fdma_get_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_fdma_alloc_rx_buffs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_fdma_alloc_rx_buffs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_fdma_rx_restart._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_fdma_rx_restart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_fdma_interrupt._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_fdma_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_fdma_rings_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocelot_fdma_inject_frame(ptr nocapture noundef readonly %ocelot, i32 noundef %port, i32 noundef %rew_op, ptr noundef %skb, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fdma1 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 44
  %0 = ptrtoint ptr %fdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdma1, align 4
  %xmit_lock = getelementptr inbounds %struct.ocelot_fdma, ptr %1, i32 0, i32 4, i32 3
  tail call void @_raw_spin_lock(ptr noundef %xmit_lock) #6
  %next_to_use.i = getelementptr inbounds %struct.ocelot_fdma, ptr %1, i32 0, i32 4, i32 5
  %2 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next_to_use.i, align 2
  %conv.i = zext i16 %3 to i32
  %next_to_clean.i = getelementptr inbounds %struct.ocelot_fdma, ptr %1, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %next_to_clean.i, align 4
  %conv2.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.not.i = icmp ult i16 %3, %5
  %sub.neg.i = sub nsw i32 127, %conv.i
  %6 = xor i32 %conv.i, -1
  %retval.0.v.i = select i1 %cmp.not.i, i32 %6, i32 %sub.neg.i
  %retval.0.i = sub nsw i32 0, %conv2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.v.i, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.v.i, %retval.0.i
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %out

if.end:                                           ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.lhs.cast.i.i
  %sub.i = add i32 %sub.ptr.sub.i.neg.i, 16
  %13 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #6
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

skb_tailroom.exit.i:                              ; preds = %if.end
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %16 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i1.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i2.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i3.neg.i = sub i32 4, %sub.ptr.lhs.cast.i1.i
  %phi.bo.i = add i32 %sub.ptr.sub.i3.neg.i, %sub.ptr.rhs.cast.i2.i
  %20 = tail call i32 @llvm.smax.i32(i32 %phi.bo.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %tobool.not.i = icmp slt i32 %sub.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %phi.bo.i)
  %tobool9.not.i = icmp slt i32 %phi.bo.i, 1
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool9.not.i, i1 false
  br i1 %or.cond.i, label %lor.rhs.i, label %skb_tailroom.exit.i.if.then.i_crit_edge, !prof !70

skb_tailroom.exit.i.if.then.i_crit_edge:          ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.rhs.i:                                        ; preds = %skb_tailroom.exit.i
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %21 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %lor.rhs.i.if.end23.i_crit_edge, label %skb_header_cloned.exit.i

lor.rhs.i.if.end23.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

skb_header_cloned.exit.i:                         ; preds = %lor.rhs.i
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #6
  %22 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %23, 65535
  %shr.i.i = ashr i32 %23, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp.i.not.i, label %skb_header_cloned.exit.i.if.end23.i_crit_edge, label %skb_header_cloned.exit.i.if.then.i_crit_edge, !prof !71

skb_header_cloned.exit.i.if.then.i_crit_edge:     ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

skb_header_cloned.exit.i.if.end23.i_crit_edge:    ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then.i:                                        ; preds = %skb_header_cloned.exit.i.if.then.i_crit_edge, %skb_tailroom.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %24 = phi i32 [ %20, %skb_tailroom.exit.i.if.then.i_crit_edge ], [ %20, %skb_header_cloned.exit.i.if.then.i_crit_edge ], [ 4, %if.end.if.then.i_crit_edge ]
  %call14.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %13, i32 noundef %24, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then.i.if.end23.i_crit_edge, label %if.then22.i, !prof !71

if.then.i.if.end23.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then22.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  br label %out

if.end23.i:                                       ; preds = %if.then.i.if.end23.i_crit_edge, %skb_header_cloned.exit.i.if.end23.i_crit_edge, %lor.rhs.i.if.end23.i_crit_edge
  %25 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i5.i = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i5.i, label %if.end23.i.if.end4_crit_edge, label %cond.true.i.i

if.end23.i.if.end4_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

cond.true.i.i:                                    ; preds = %if.end23.i
  %call.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %26) #6
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.body.i, label %cond.true.i.i.if.end4_crit_edge

cond.true.i.i.if.end4_crit_edge:                  ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.body.i:                                        ; preds = %cond.true.i.i
  %call27.i = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %do.body.i.do.end35.i_crit_edge, label %do.end.i

do.body.i.do.end35.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end35.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %dev, i32 noundef -12) #9
  br label %do.end35.i

do.end35.i:                                       ; preds = %do.end.i, %do.body.i.do.end35.i_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  br label %out

if.end4:                                          ; preds = %cond.true.i.i.if.end4_crit_edge, %if.end23.i.if.end4_crit_edge
  %call37.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 16) #6
  %call38.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 4) #6
  %27 = call ptr @memset(ptr %call37.i, i32 0, i32 16)
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %28 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vlan_tci.i, align 2
  %conv.i14 = zext i16 %29 to i32
  tail call void @ocelot_ifh_port_set(ptr noundef %call37.i, i32 noundef %port, i32 noundef %rew_op, i32 noundef %conv.i14) #6
  %tx_ring1.i = getelementptr inbounds %struct.ocelot_fdma, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_ring1.i, align 4
  %32 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %next_to_use.i, align 2
  %idxprom.i = zext i16 %33 to i32
  %arrayidx.i = getelementptr %struct.ocelot_fdma_dcb, ptr %31, i32 %idxprom.i
  %arrayidx4.i = getelementptr %struct.ocelot_fdma, ptr %1, i32 0, i32 4, i32 2, i32 %idxprom.i
  %34 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ocelot, align 4
  %36 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %38 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i.i, align 4
  %call.i.i.i18 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %37) #6
  br i1 %call.i.i.i18, label %land.rhs.i.i.i, label %dma_map_single_attrs.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.end4
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge, label %if.then.i.i.i, !prof !71

land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %35) #6
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %40 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %35, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %43, %if.end.i.i.i.i ], [ %41, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #6
  br label %dma_map_single_attrs.exit.thread.i.i

dma_map_single_attrs.exit.thread.i.i:             ; preds = %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge
  %44 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ocelot, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %45, i32 noundef -1) #6
  br label %if.then.i19

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end4
  tail call void @debug_dma_map_single(ptr noundef %35, ptr noundef %37, i32 noundef %39) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %46 = load ptr, ptr @mem_map, align 4
  %47 = ptrtoint ptr %37 to i32
  %sub.i.i.i = add i32 %47, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %46, i32 %shr.i.i.i
  %and.i.i.i = and i32 %47, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %35, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef %39, i32 noundef 1, i32 noundef 0) #6
  %48 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ocelot, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %49, i32 noundef %call41.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call41.i.i.i, -1
  br i1 %cmp.i.i.i, label %dma_map_single_attrs.exit.i.i.if.then.i19_crit_edge, label %if.end.i

dma_map_single_attrs.exit.i.i.if.then.i19_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i19

if.then.i19:                                      ; preds = %dma_map_single_attrs.exit.i.i.if.then.i19_crit_edge, %dma_map_single_attrs.exit.thread.i.i
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  br label %out

if.end.i:                                         ; preds = %dma_map_single_attrs.exit.i.i
  %dma_addr.i.i = getelementptr %struct.ocelot_fdma, ptr %1, i32 0, i32 4, i32 2, i32 %idxprom.i, i32 1
  %50 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call41.i.i.i, ptr %dma_addr.i.i, align 4
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 0, ptr %arrayidx.i, align 1
  %and1.i.i.i = and i32 %call41.i.i.i, -4
  %datap.i.i.i = getelementptr %struct.ocelot_fdma_dcb, ptr %31, i32 %idxprom.i, i32 1
  %52 = ptrtoint ptr %datap.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %and1.i.i.i, ptr %datap.i.i.i, align 1
  %datal.i.i.i = getelementptr %struct.ocelot_fdma_dcb, ptr %31, i32 %idxprom.i, i32 2
  %53 = ptrtoint ptr %datal.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 2048, ptr %datal.i.i.i, align 1
  %and.i18.i.i = shl i32 %call41.i.i.i, 20
  %shl.i.i.i = and i32 %and.i18.i.i, 3145728
  %stat.i.i.i = getelementptr %struct.ocelot_fdma_dcb, ptr %31, i32 %idxprom.i, i32 3
  %54 = ptrtoint ptr %stat.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %shl.i.i.i, ptr %stat.i.i.i, align 1
  %55 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %skb, ptr %arrayidx4.i, align 4
  %56 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len.i.i, align 4
  %and.i.i20 = and i32 %57, 65535
  %58 = load i32, ptr %stat.i.i.i, align 1
  %or.i.i = or i32 %and.i.i20, %58
  %or8.i.i = or i32 %or.i.i, 196608
  store i32 %or8.i.i, ptr %stat.i.i.i, align 1
  %59 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %next_to_use.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %60)
  %cmp.i.i = icmp eq i16 %60, 127
  %add.i.i = add i16 %60, 1
  %spec.select.i.i = select i1 %cmp.i.i, i16 0, i16 %add.i.i, !prof !72
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #6
  %end.i.i.i21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %61 = ptrtoint ptr %end.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i.i.i21, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %tx_flags.i.i, align 1
  %65 = and i8 %64, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i.i22 = icmp eq i8 %65, 0
  br i1 %tobool.not.i.i22, label %if.end.i.skb_tx_timestamp.exit.i_crit_edge, label %if.then.i.i

if.end.i.skb_tx_timestamp.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_tx_timestamp.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #6
  br label %skb_tx_timestamp.exit.i

skb_tx_timestamp.exit.i:                          ; preds = %if.then.i.i, %if.end.i.skb_tx_timestamp.exit.i_crit_edge
  %66 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %next_to_clean.i, align 4
  %68 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %next_to_use.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %67, i16 %69)
  %cmp.i34.i = icmp eq i16 %67, %69
  %dcbs_dma.i = getelementptr inbounds %struct.ocelot_fdma, ptr %1, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %dcbs_dma.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dcbs_dma.i, align 4
  br i1 %cmp.i34.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %skb_tx_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i35.i = zext i16 %67 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i35.i, 4
  %add.i36.i = add i32 %71, %mul.i.i
  %arrayidx.i.i.i = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 4, i32 11
  %72 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i37.i = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 8, i32 noundef %add.i36.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i4.i.i = tail call i32 @regmap_write(ptr noundef %75, i32 noundef 208, i32 noundef 4) #6
  br label %if.end13.i

if.else.i:                                        ; preds = %skb_tx_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i38.i = zext i16 %spec.select.i.i to i32
  %mul.i39.i = shl nuw nsw i32 %conv.i38.i, 4
  %add.i40.i = add i32 %71, %mul.i39.i
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %add.i40.i, ptr %arrayidx.i, align 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then8.i
  %77 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %spec.select.i.i, ptr %next_to_use.i, align 2
  br label %out

out:                                              ; preds = %if.end13.i, %if.then.i19, %do.end35.i, %if.then22.i, %if.then
  %ret.0 = phi i32 [ 16, %if.then ], [ 0, %if.then.i19 ], [ 0, %if.end13.i ], [ 0, %if.then22.i ], [ 0, %do.end35.i ]
  tail call void @_raw_spin_unlock(ptr noundef %xmit_lock) #6
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocelot_fdma_netdev_init(ptr nocapture noundef readonly %ocelot, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fdma1 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 44
  %0 = ptrtoint ptr %fdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdma1, align 4
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %2 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 16, ptr %needed_headroom, align 8
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 22
  %3 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 4, ptr %needed_tailroom, align 2
  %ndev = getelementptr inbounds %struct.ocelot_fdma, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %ndev, align 4
  %napi = getelementptr inbounds %struct.ocelot_fdma, ptr %1, i32 0, i32 6
  tail call void @netif_napi_add(ptr noundef %dev, ptr noundef %napi, ptr noundef nonnull @ocelot_fdma_napi_poll, i32 noundef 32) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_fdma_napi_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  %retval1.i.i49 = alloca i32, align 4
  %retval1.i.i.i50 = alloca i32, align 4
  %timestamp.i.i = alloca i64, align 8
  %src_port.i.i = alloca i64, align 8
  %retval1.i.i = alloca i32, align 4
  %retval1.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ocelot1 = getelementptr i8, ptr %napi, i32 224
  %0 = ptrtoint ptr %ocelot1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ocelot1, align 8
  %fdma1.i = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %fdma1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fdma1.i, align 4
  %tx_ring2.i = getelementptr inbounds %struct.ocelot_fdma, ptr %3, i32 0, i32 4
  %next_to_clean.i.i = getelementptr inbounds %struct.ocelot_fdma, ptr %3, i32 0, i32 4, i32 4
  %next_to_use.i.i = getelementptr inbounds %struct.ocelot_fdma, ptr %3, i32 0, i32 4, i32 5
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i.while.cond.i_crit_edge, %entry
  %4 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %next_to_clean.i.i, align 4
  %6 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %next_to_use.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp.i.i = icmp eq i16 %5, %7
  br i1 %cmp.i.i, label %while.cond.i.while.end.i_crit_edge, label %while.body.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %8 = ptrtoint ptr %tx_ring2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ring2.i, align 4
  %idxprom.i = zext i16 %5 to i32
  %stat.i = getelementptr %struct.ocelot_fdma_dcb, ptr %9, i32 %idxprom.i, i32 3
  %10 = ptrtoint ptr %stat.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %stat.i, align 1
  %and.i = and i32 %11, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.while.end.i_crit_edge, label %if.end.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  %arrayidx.i = getelementptr %struct.ocelot_fdma_dcb, ptr %9, i32 %idxprom.i
  %arrayidx4.i = getelementptr %struct.ocelot_fdma, ptr %3, i32 0, i32 4, i32 2, i32 %idxprom.i
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %dma_addr.i = getelementptr %struct.ocelot_fdma, ptr %3, i32 0, i32 4, i32 2, i32 %idxprom.i, i32 1
  %16 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 6
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef 1, i32 noundef 0) #6
  tail call void @napi_consume_skb(ptr noundef %13, i32 noundef %budget) #6
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %5)
  %cmp.i60.i = icmp eq i16 %5, 127
  %add.i.i = add i16 %5, 1
  %spec.select.i.i = select i1 %cmp.i60.i, i16 0, i16 %add.i.i, !prof !72
  %22 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %spec.select.i.i, ptr %next_to_clean.i.i, align 4
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.cond.i_crit_edge

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %end_of_list.0.off0.i = phi i1 [ false, %while.body.i.while.end.i_crit_edge ], [ false, %while.cond.i.while.end.i_crit_edge ], [ true, %if.end.i.while.end.i_crit_edge ]
  %23 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %next_to_use.i.i, align 2
  %conv.i62.i = zext i16 %24 to i32
  %25 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %next_to_clean.i.i, align 4
  %conv2.i.i = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp.not.i.i = icmp ult i16 %24, %26
  %sub.neg.i.i = sub nsw i32 127, %conv.i62.i
  %27 = xor i32 %conv.i62.i, -1
  %retval.0.v.i.i = select i1 %cmp.not.i.i, i32 %27, i32 %sub.neg.i.i
  %retval.0.i.i = sub nsw i32 0, %conv2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.v.i.i, i32 %retval.0.i.i)
  %tobool11.not.i = icmp eq i32 %retval.0.v.i.i, %retval.0.i.i
  br i1 %tobool11.not.i, label %while.end.i.if.end13.i_crit_edge, label %if.then12.i

while.end.i.if.end13.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then12.i:                                      ; preds = %while.end.i
  %num_phys_ports.i.i = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 17
  %28 = ptrtoint ptr %num_phys_ports.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_phys_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp14.not.i.i = icmp eq i8 %29, 0
  br i1 %cmp14.not.i.i, label %if.then12.i.if.end13.i_crit_edge, label %for.body.lr.ph.i.i

if.then12.i.if.end13.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

for.body.lr.ph.i.i:                               ; preds = %if.then12.i
  %ports.i.i = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 13
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %port.015.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %30 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ports.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %31, i32 %port.015.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %dev2.i.i = getelementptr inbounds %struct.ocelot_port_private, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev2.i.i, align 4
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 103
  %36 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i.i.i, align 128
  %state.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.then5.i.i, !prof !71

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netif_tx_wake_queue(ptr noundef %37) #6
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then5.i.i, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %port.015.i.i, 1
  %40 = ptrtoint ptr %num_phys_ports.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_phys_ports.i.i, align 4
  %conv.i64.i = zext i8 %41 to i32
  %cmp.i65.i = icmp ult i32 %inc.i.i, %conv.i64.i
  br i1 %cmp.i65.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end13.i_crit_edge

for.inc.i.i.if.end13.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.end13.i:                                       ; preds = %for.inc.i.i.if.end13.i_crit_edge, %if.then12.i.if.end13.i_crit_edge, %while.end.i.if.end13.i_crit_edge
  br i1 %end_of_list.0.off0.i, label %lor.lhs.false.i, label %if.end13.i.ocelot_fdma_tx_cleanup.exit_crit_edge

if.end13.i.ocelot_fdma_tx_cleanup.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_fdma_tx_cleanup.exit

lor.lhs.false.i:                                  ; preds = %if.end13.i
  %42 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %next_to_clean.i.i, align 4
  %44 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %next_to_use.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %45)
  %cmp.i68.i = icmp eq i16 %43, %45
  br i1 %cmp.i68.i, label %lor.lhs.false.i.ocelot_fdma_tx_cleanup.exit_crit_edge, label %if.end17.i

lor.lhs.false.i.ocelot_fdma_tx_cleanup.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_fdma_tx_cleanup.exit

if.end17.i:                                       ; preds = %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %call.i.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call.i.i.i)
  %cmp.i.i.i = icmp ult i32 %call.i.i.i, 10
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 1073741822, i32 1
  %add.i69.i = add i32 %spec.select.i.i.i, %46
  %arrayidx.i.i.i = getelementptr %struct.ocelot, ptr %1, i32 0, i32 4, i32 11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end17.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1.i.i.i) #6
  %47 = ptrtoint ptr %retval1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %retval1.i.i.i, align 4, !annotation !74
  %48 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i3.i.i = call i32 @regmap_read(ptr noundef %49, i32 noundef 204, ptr noundef nonnull %retval1.i.i.i) #6
  %50 = ptrtoint ptr %retval1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %retval1.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i.i.i) #6
  %and.i.i = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i70.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i70.i, label %do.cond.i.i, label %if.end22.i

do.cond.i.i:                                      ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i69.i, %52
  %cmp.i71.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i71.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %do.end.i

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

do.end.i:                                         ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.6) #9
  br label %ocelot_fdma_tx_cleanup.exit

if.end22.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %next_to_use.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp.i73.i = icmp eq i16 %56, 0
  %.op.i = add i16 %56, -1
  %cond.i.i = select i1 %cmp.i73.i, i16 127, i16 %.op.i, !prof !72
  %conv.i = zext i16 %cond.i.i to i32
  %57 = ptrtoint ptr %tx_ring2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tx_ring2.i, align 4
  %arrayidx25.i = getelementptr %struct.ocelot_fdma_dcb, ptr %58, i32 %conv.i
  %59 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 0, ptr %arrayidx25.i, align 1
  %dcbs_dma.i = getelementptr inbounds %struct.ocelot_fdma, ptr %3, i32 0, i32 4, i32 1
  %60 = ptrtoint ptr %dcbs_dma.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dcbs_dma.i, align 4
  %62 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %next_to_clean.i.i, align 4
  %conv.i74.i = zext i16 %63 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i74.i, 4
  %add.i75.i = add i32 %mul.i.i, %61
  %64 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i77.i = call i32 @regmap_write(ptr noundef %65, i32 noundef 8, i32 noundef %add.i75.i) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  call void @arm_heavy_mb() #6
  %66 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i4.i.i = call i32 @regmap_write(ptr noundef %67, i32 noundef 208, i32 noundef 4) #6
  br label %ocelot_fdma_tx_cleanup.exit

ocelot_fdma_tx_cleanup.exit:                      ; preds = %if.end22.i, %do.end.i, %lor.lhs.false.i.ocelot_fdma_tx_cleanup.exit_crit_edge, %if.end13.i.ocelot_fdma_tx_cleanup.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1.i.i) #6
  %68 = ptrtoint ptr %retval1.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %retval1.i.i, align 4, !annotation !74
  %arrayidx.i.i16 = getelementptr %struct.ocelot, ptr %1, i32 0, i32 4, i32 11
  %69 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i.i16, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %70, i32 noundef 0, ptr noundef nonnull %retval1.i.i) #6
  %71 = ptrtoint ptr %retval1.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %retval1.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i17 = icmp eq i32 %72, 0
  br i1 %tobool.not.i17, label %if.end.i18, label %ocelot_fdma_tx_cleanup.exit.ocelot_fdma_check_stop_rx.exit_crit_edge, !prof !71

ocelot_fdma_tx_cleanup.exit.ocelot_fdma_check_stop_rx.exit_crit_edge: ; preds = %ocelot_fdma_tx_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_fdma_check_stop_rx.exit

if.end.i18:                                       ; preds = %ocelot_fdma_tx_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i.i16, align 4
  %call.i5.i = call i32 @regmap_write(ptr noundef %74, i32 noundef 212, i32 noundef 1) #6
  br label %ocelot_fdma_check_stop_rx.exit

ocelot_fdma_check_stop_rx.exit:                   ; preds = %if.end.i18, %ocelot_fdma_tx_cleanup.exit.ocelot_fdma_check_stop_rx.exit_crit_edge
  %75 = ptrtoint ptr %fdma1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fdma1.i, align 4
  %next_to_use.i.i20 = getelementptr inbounds %struct.ocelot_fdma, ptr %76, i32 0, i32 5, i32 5
  %77 = ptrtoint ptr %next_to_use.i.i20 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %next_to_use.i.i20, align 2
  %conv.i.i = zext i16 %78 to i32
  %next_to_clean.i.i21 = getelementptr inbounds %struct.ocelot_fdma, ptr %76, i32 0, i32 5, i32 4
  %79 = ptrtoint ptr %next_to_clean.i.i21 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %next_to_clean.i.i21, align 4
  %conv2.i.i22 = zext i16 %80 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %78, i16 %80)
  %cmp.not.i.i23 = icmp ult i16 %78, %80
  %sub.neg.i.i24 = sub nsw i32 511, %conv.i.i
  %81 = xor i32 %conv.i.i, -1
  %retval.0.v.i.i25 = select i1 %cmp.not.i.i23, i32 %81, i32 %sub.neg.i.i24
  %retval.0.i.i26 = add nsw i32 %retval.0.v.i.i25, %conv2.i.i22
  %rx_ring2.i = getelementptr inbounds %struct.ocelot_fdma, ptr %76, i32 0, i32 5
  %skb3.i = getelementptr inbounds %struct.ocelot_fdma, ptr %76, i32 0, i32 5, i32 3
  %82 = ptrtoint ptr %skb3.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %skb3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %tobool.not121.i = icmp eq i32 %budget, 0
  br i1 %tobool.not121.i, label %ocelot_fdma_check_stop_rx.exit.while.end.i47_crit_edge, label %while.body.lr.ph.i

ocelot_fdma_check_stop_rx.exit.while.end.i47_crit_edge: ; preds = %ocelot_fdma_check_stop_rx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i47

while.body.lr.ph.i:                               ; preds = %ocelot_fdma_check_stop_rx.exit
  %num_phys_ports.i.i27 = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 17
  %ptp.i.i = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 35
  %84 = add i32 %retval.0.i.i26, %budget
  br label %while.body.i31

while.body.i31:                                   ; preds = %while.cond.backedge.i.while.body.i31_crit_edge, %while.body.lr.ph.i
  %dec127.in.i = phi i32 [ %budget, %while.body.lr.ph.i ], [ %dec127.i, %while.cond.backedge.i.while.body.i31_crit_edge ]
  %cleaned_cnt.0125.i = phi i32 [ %retval.0.i.i26, %while.body.lr.ph.i ], [ %inc26.i, %while.cond.backedge.i.while.body.i31_crit_edge ]
  %work_done.0123.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %while.cond.backedge.i.while.body.i31_crit_edge ]
  %skb.0122.i = phi ptr [ %83, %while.body.lr.ph.i ], [ %skb.0.be.i, %while.cond.backedge.i.while.body.i31_crit_edge ]
  %dec127.i = add i32 %dec127.in.i, -1
  %85 = ptrtoint ptr %next_to_clean.i.i21 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %next_to_clean.i.i21, align 4
  %87 = ptrtoint ptr %rx_ring2.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rx_ring2.i, align 4
  %idxprom.i28 = zext i16 %86 to i32
  %stat4.i = getelementptr %struct.ocelot_fdma_dcb, ptr %88, i32 %idxprom.i28, i32 3
  %89 = ptrtoint ptr %stat4.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %stat4.i, align 1
  %and.i29 = and i32 %90, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %cmp.i30 = icmp eq i32 %and.i29, 0
  br i1 %cmp.i30, label %while.body.i31.while.end.i47_crit_edge, label %if.end.i32

while.body.i31.while.end.i47_crit_edge:           ; preds = %while.body.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i47

if.end.i32:                                       ; preds = %while.body.i31
  %tobool5.not.i = icmp ne ptr %skb.0122.i, null
  %and6.i = and i32 %90, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.i = icmp ne i32 %and6.i, 0
  %91 = select i1 %tobool5.not.i, i1 %tobool7.i, i1 false
  br i1 %91, label %if.end11.thread.i, label %if.end11.i, !prof !72

if.end11.thread.i:                                ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #8
  call void @consume_skb(ptr noundef nonnull %skb.0122.i) #6
  %arrayidx13106.i = getelementptr %struct.ocelot_fdma, ptr %76, i32 0, i32 5, i32 2, i32 %idxprom.i28
  br label %if.then.i.i

if.end11.i:                                       ; preds = %if.end.i32
  %arrayidx13.i = getelementptr %struct.ocelot_fdma, ptr %76, i32 0, i32 5, i32 2, i32 %idxprom.i28
  %tobool.not.i.i33 = icmp eq ptr %skb.0122.i, null
  br i1 %tobool.not.i.i33, label %if.end11.i.if.then.i.i_crit_edge, label %if.end11.i.if.end22.i.i_crit_edge, !prof !71

if.end11.i.if.end22.i.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i.i

if.end11.i.if.then.i.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end11.i.if.then.i.i_crit_edge, %if.end11.thread.i
  %arrayidx13109.i = phi ptr [ %arrayidx13106.i, %if.end11.thread.i ], [ %arrayidx13.i, %if.end11.i.if.then.i.i_crit_edge ]
  %92 = ptrtoint ptr %arrayidx13109.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx13109.i, align 4
  %call.i.i34 = call ptr @page_address(ptr noundef %93) #6
  %page_offset.i.i = getelementptr %struct.ocelot_fdma, ptr %76, i32 0, i32 5, i32 2, i32 %idxprom.i28, i32 1
  %94 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %page_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i34, i32 %95
  %call4.i.i = call ptr @build_skb(ptr noundef %add.ptr.i.i, i32 noundef 2048) #6
  %tobool5.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool5.not.i.i, label %do.body.i.i35, label %if.then.i.i.if.end22.i.i_crit_edge, !prof !72

if.then.i.i.if.end22.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i.i

do.body.i.i35:                                    ; preds = %if.then.i.i
  %call15.i.i = call i32 @___ratelimit(ptr noundef nonnull @ocelot_fdma_get_skb._rs, ptr noundef nonnull @__func__.ocelot_fdma_get_skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %do.body.i.i35.while.end.i47_crit_edge, label %do.end.i.i

do.body.i.i35.while.end.i47_crit_edge:            ; preds = %do.body.i.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i47

do.end.i.i:                                       ; preds = %do.body.i.i35
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.13) #9
  br label %while.end.i47

if.end22.i.i:                                     ; preds = %if.then.i.i.if.end22.i.i_crit_edge, %if.end11.i.if.end22.i.i_crit_edge
  %tobool.not.i110.i = phi i1 [ false, %if.end11.i.if.end22.i.i_crit_edge ], [ true, %if.then.i.i.if.end22.i.i_crit_edge ]
  %arrayidx13108.i = phi ptr [ %arrayidx13.i, %if.end11.i.if.end22.i.i_crit_edge ], [ %arrayidx13109.i, %if.then.i.i.if.end22.i.i_crit_edge ]
  %skb.addr.0.i.i = phi ptr [ %skb.0122.i, %if.end11.i.if.end22.i.i_crit_edge ], [ %call4.i.i, %if.then.i.i.if.end22.i.i_crit_edge ]
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 4
  %dma_addr.i.i = getelementptr inbounds %struct.ocelot_fdma_rx_buf, ptr %arrayidx13108.i, i32 0, i32 2
  %100 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dma_addr.i.i, align 4
  %page_offset24.i.i = getelementptr inbounds %struct.ocelot_fdma_rx_buf, ptr %arrayidx13108.i, i32 0, i32 1
  %102 = ptrtoint ptr %page_offset24.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %page_offset24.i.i, align 4
  %add.i.i.i = add i32 %103, %101
  call void @dma_sync_single_for_cpu(ptr noundef %99, i32 noundef %add.i.i.i, i32 noundef 2048, i32 noundef 2) #6
  %call26.i.i = call fastcc zeroext i1 @ocelot_fdma_add_rx_frag(ptr noundef %arrayidx13108.i, i32 noundef %90, ptr noundef nonnull %skb.addr.0.i.i, i1 noundef zeroext %tobool.not.i110.i) #6
  br i1 %call26.i.i, label %if.then27.i.i, label %if.else.i.i

if.then27.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %fdma1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fdma1.i, align 4
  %next_to_alloc.i.i.i = getelementptr inbounds %struct.ocelot_fdma, ptr %105, i32 0, i32 5, i32 6
  %106 = ptrtoint ptr %next_to_alloc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %next_to_alloc.i.i.i, align 4
  %idxprom.i.i.i = zext i16 %107 to i32
  %arrayidx.i.i.i36 = getelementptr %struct.ocelot_fdma, ptr %105, i32 0, i32 5, i32 2, i32 %idxprom.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %107)
  %cmp.i.i.i.i = icmp eq i16 %107, 511
  %add.i.i.i.i = add i16 %107, 1
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i, i16 0, i16 %add.i.i.i.i, !prof !72
  %108 = ptrtoint ptr %next_to_alloc.i.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %spec.select.i.i.i.i, ptr %next_to_alloc.i.i.i, align 4
  %109 = call ptr @memcpy(ptr %arrayidx.i.i.i36, ptr %arrayidx13108.i, i32 12)
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  %112 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dma_addr.i.i, align 4
  %114 = ptrtoint ptr %page_offset24.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %page_offset24.i.i, align 4
  %add.i10.i.i.i = add i32 %115, %113
  call void @dma_sync_single_for_device(ptr noundef %111, i32 noundef %add.i10.i.i.i, i32 noundef 2048, i32 noundef 2) #6
  br label %if.end25.i

if.else.i.i:                                      ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 4
  %118 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dma_addr.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %117, i32 noundef %119, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #6
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i.i, %if.then27.i.i
  %120 = ptrtoint ptr %arrayidx13108.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %arrayidx13108.i, align 4
  %inc.i = add nuw i32 %work_done.0123.i, 1
  %inc26.i = add i32 %cleaned_cnt.0125.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %86)
  %cmp.i.i37 = icmp eq i16 %86, 511
  %add.i.i38 = add i16 %86, 1
  %spec.select.i.i39 = select i1 %cmp.i.i37, i16 0, i16 %add.i.i38, !prof !72
  %121 = ptrtoint ptr %next_to_clean.i.i21 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %spec.select.i.i39, ptr %next_to_clean.i.i21, align 4
  %122 = and i32 %90, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %.not.i = icmp eq i32 %122, 0
  br i1 %.not.i, label %if.end47.i, label %do.body.i, !prof !71

do.body.i:                                        ; preds = %if.end25.i
  %call40.i = call i32 @___ratelimit(ptr noundef nonnull @ocelot_fdma_rx_get._rs, ptr noundef nonnull @__func__.ocelot_fdma_rx_get) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %do.body.i.do.end46.i_crit_edge, label %do.end.i40

do.body.i.do.end46.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end46.i

do.end.i40:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.11) #9
  br label %do.end46.i

do.end46.i:                                       ; preds = %do.end.i40, %do.body.i.do.end46.i_crit_edge
  call void @consume_skb(ptr noundef nonnull %skb.addr.0.i.i) #6
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.then61.i, %ocelot_fdma_receive_skb.exit.thread.i, %if.end47.i.while.cond.backedge.i_crit_edge, %do.end46.i
  %skb.0.be.i = phi ptr [ null, %do.end46.i ], [ %skb.addr.0.i.i, %if.end47.i.while.cond.backedge.i_crit_edge ], [ null, %ocelot_fdma_receive_skb.exit.thread.i ], [ null, %if.then61.i ]
  %tobool.not.i41 = icmp eq i32 %dec127.i, 0
  br i1 %tobool.not.i41, label %while.cond.backedge.i.while.end.i47_crit_edge, label %while.cond.backedge.i.while.body.i31_crit_edge

while.cond.backedge.i.while.body.i31_crit_edge:   ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i31

while.cond.backedge.i.while.end.i47_crit_edge:    ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i47

if.end47.i:                                       ; preds = %if.end25.i
  %and48.i = and i32 %90, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.end47.i.while.cond.backedge.i_crit_edge, label %if.end51.i

if.end47.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.i

if.end51.i:                                       ; preds = %if.end47.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 19
  %125 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %timestamp.i.i) #6
  %127 = ptrtoint ptr %timestamp.i.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 -1, ptr %timestamp.i.i, align 8, !annotation !74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_port.i.i) #6
  %128 = ptrtoint ptr %src_port.i.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 -1, ptr %src_port.i.i, align 8, !annotation !74
  %call.i97.i = call ptr @skb_pull(ptr noundef nonnull %skb.addr.0.i.i, i32 noundef 16) #6
  %call.i.i.i42 = call i32 @packing(ptr noundef %126, ptr noundef nonnull %src_port.i.i, i32 noundef 46, i32 noundef 43, i32 noundef 16, i32 noundef 1, i8 noundef zeroext 0) #6
  %129 = ptrtoint ptr %src_port.i.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %src_port.i.i, align 8
  %131 = ptrtoint ptr %num_phys_ports.i.i27 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %num_phys_ports.i.i27, align 4
  %conv.i98.i = zext i8 %132 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %130, i64 %conv.i98.i)
  %cmp.not.i99.i = icmp ult i64 %130, %conv.i98.i
  br i1 %cmp.not.i99.i, label %if.end.i.i43, label %if.end51.i.if.then61.i_crit_edge, !prof !71

if.end51.i.if.then61.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then61.i

if.end.i.i43:                                     ; preds = %if.end51.i
  %conv3.i.i = trunc i64 %130 to i32
  %call4.i100.i = call ptr @ocelot_port_to_netdev(ptr noundef %1, i32 noundef %conv3.i.i) #6
  %tobool5.not.i101.i = icmp eq ptr %call4.i100.i, null
  br i1 %tobool5.not.i101.i, label %if.end.i.i43.if.then61.i_crit_edge, label %if.end15.i.i, !prof !72

if.end.i.i43.if.then61.i_crit_edge:               ; preds = %if.end.i.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then61.i

if.end15.i.i:                                     ; preds = %if.end.i.i43
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 6
  %133 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %len.i.i, align 4
  %sub.i.i44 = add i32 %134, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %134)
  %cmp.i.i.i45 = icmp ugt i32 %134, 3
  br i1 %cmp.i.i.i45, label %cond.true.i.i.i, label %if.end15.i.i.pskb_trim.exit.i.i_crit_edge

if.end15.i.i.pskb_trim.exit.i.i_crit_edge:        ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pskb_trim.exit.i.i

cond.true.i.i.i:                                  ; preds = %if.end15.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 7
  %135 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.not.i.i.i.i = icmp eq i32 %136, 0
  br i1 %tobool.not.i.i.i.i, label %__skb_trim.exit.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i.i = call i32 @___pskb_trim(ptr noundef nonnull %skb.addr.0.i.i, i32 noundef %sub.i.i44) #6
  br label %pskb_trim.exit.i.i

__skb_trim.exit.i.i.i.i:                          ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %137 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %sub.i.i44, ptr %len.i.i, align 4
  %138 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i.i.i.i.i = getelementptr i8, ptr %139, i32 %sub.i.i44
  %tail.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 16
  %140 = ptrtoint ptr %tail.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %add.ptr.i.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i.i, align 8
  br label %pskb_trim.exit.i.i

pskb_trim.exit.i.i:                               ; preds = %__skb_trim.exit.i.i.i.i, %if.then.i.i.i.i, %if.end15.i.i.pskb_trim.exit.i.i_crit_edge
  %141 = getelementptr inbounds %struct.anon.52, ptr %skb.addr.0.i.i, i32 0, i32 2
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call4.i100.i, ptr %141, align 8
  %call17.i.i = call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb.addr.0.i.i, ptr noundef nonnull %call4.i100.i) #6
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 15, i32 0, i32 18
  %143 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %call17.i.i, ptr %protocol.i.i, align 8
  %144 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %len.i.i, align 4
  %146 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %141, align 8
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %147, i32 0, i32 36, i32 2
  %148 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rx_bytes.i.i, align 8
  %add.i102.i = add i32 %149, %145
  store i32 %add.i102.i, ptr %rx_bytes.i.i, align 8
  %150 = load ptr, ptr %141, align 8
  %stats19.i.i = getelementptr inbounds %struct.net_device, ptr %150, i32 0, i32 36
  %151 = ptrtoint ptr %stats19.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %stats19.i.i, align 8
  %inc.i.i46 = add i32 %152, 1
  store i32 %inc.i.i46, ptr %stats19.i.i, align 8
  %153 = ptrtoint ptr %ptp.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %bf.load.i.i = load i8, ptr %ptp.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool20.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool20.not.i.i, label %pskb_trim.exit.i.i.if.end22.i103.i_crit_edge, label %if.then21.i.i

pskb_trim.exit.i.i.if.end22.i103.i_crit_edge:     ; preds = %pskb_trim.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i103.i

if.then21.i.i:                                    ; preds = %pskb_trim.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i56.i.i = call i32 @packing(ptr noundef %126, ptr noundef nonnull %timestamp.i.i, i32 noundef 116, i32 noundef 85, i32 noundef 16, i32 noundef 1, i8 noundef zeroext 0) #6
  %154 = ptrtoint ptr %timestamp.i.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %timestamp.i.i, align 8
  call void @ocelot_ptp_rx_timestamp(ptr noundef %1, ptr noundef nonnull %skb.addr.0.i.i, i64 noundef %155) #6
  br label %if.end22.i103.i

if.end22.i103.i:                                  ; preds = %if.then21.i.i, %pskb_trim.exit.i.i.if.end22.i103.i_crit_edge
  %call23.i.i = call zeroext i1 @skb_defer_rx_timestamp(ptr noundef nonnull %skb.addr.0.i.i) #6
  br i1 %call23.i.i, label %if.end22.i103.i.ocelot_fdma_receive_skb.exit.thread.i_crit_edge, label %if.then32.i.i, !prof !72

if.end22.i103.i.ocelot_fdma_receive_skb.exit.thread.i_crit_edge: ; preds = %if.end22.i103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_fdma_receive_skb.exit.thread.i

if.then32.i.i:                                    ; preds = %if.end22.i103.i
  call void @__sanitizer_cov_trace_pc() #8
  %call33.i.i = call i32 @netif_receive_skb(ptr noundef nonnull %skb.addr.0.i.i) #6
  br label %ocelot_fdma_receive_skb.exit.thread.i

ocelot_fdma_receive_skb.exit.thread.i:            ; preds = %if.then32.i.i, %if.end22.i103.i.ocelot_fdma_receive_skb.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_port.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %timestamp.i.i) #6
  br label %while.cond.backedge.i

if.then61.i:                                      ; preds = %if.end.i.i43.if.then61.i_crit_edge, %if.end51.i.if.then61.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_port.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %timestamp.i.i) #6
  call void @consume_skb(ptr noundef nonnull %skb.addr.0.i.i) #6
  br label %while.cond.backedge.i

while.end.i47:                                    ; preds = %while.cond.backedge.i.while.end.i47_crit_edge, %do.end.i.i, %do.body.i.i35.while.end.i47_crit_edge, %while.body.i31.while.end.i47_crit_edge, %ocelot_fdma_check_stop_rx.exit.while.end.i47_crit_edge
  %work_done.0118.i = phi i32 [ %work_done.0123.i, %do.end.i.i ], [ %work_done.0123.i, %do.body.i.i35.while.end.i47_crit_edge ], [ 0, %ocelot_fdma_check_stop_rx.exit.while.end.i47_crit_edge ], [ %work_done.0123.i, %while.body.i31.while.end.i47_crit_edge ], [ %budget, %while.cond.backedge.i.while.end.i47_crit_edge ]
  %cleaned_cnt.0116.i = phi i32 [ %cleaned_cnt.0125.i, %do.end.i.i ], [ %cleaned_cnt.0125.i, %do.body.i.i35.while.end.i47_crit_edge ], [ %retval.0.i.i26, %ocelot_fdma_check_stop_rx.exit.while.end.i47_crit_edge ], [ %cleaned_cnt.0125.i, %while.body.i31.while.end.i47_crit_edge ], [ %84, %while.cond.backedge.i.while.end.i47_crit_edge ]
  %skb.2.i = phi ptr [ null, %do.end.i.i ], [ null, %do.body.i.i35.while.end.i47_crit_edge ], [ %83, %ocelot_fdma_check_stop_rx.exit.while.end.i47_crit_edge ], [ %skb.0122.i, %while.body.i31.while.end.i47_crit_edge ], [ %skb.0.be.i, %while.cond.backedge.i.while.end.i47_crit_edge ]
  %156 = ptrtoint ptr %skb3.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %skb.2.i, ptr %skb3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cleaned_cnt.0116.i)
  %tobool64.not.i = icmp eq i32 %cleaned_cnt.0116.i, 0
  br i1 %tobool64.not.i, label %while.end.i47.ocelot_fdma_rx_get.exit_crit_edge, label %if.then65.i

while.end.i47.ocelot_fdma_rx_get.exit_crit_edge:  ; preds = %while.end.i47
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_fdma_rx_get.exit

if.then65.i:                                      ; preds = %while.end.i47
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i48 = trunc i32 %cleaned_cnt.0116.i to i16
  %call66.i = call fastcc i32 @ocelot_fdma_alloc_rx_buffs(ptr noundef %1, i16 noundef zeroext %conv.i48) #6
  br label %ocelot_fdma_rx_get.exit

ocelot_fdma_rx_get.exit:                          ; preds = %if.then65.i, %while.end.i47.ocelot_fdma_rx_get.exit_crit_edge
  br i1 %tobool.not.i17, label %if.then, label %ocelot_fdma_rx_get.exit.if.end_crit_edge

ocelot_fdma_rx_get.exit.if.end_crit_edge:         ; preds = %ocelot_fdma_rx_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %ocelot_fdma_rx_get.exit
  %157 = ptrtoint ptr %fdma1.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %fdma1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %159 = load volatile i32, ptr @jiffies, align 128
  %call.i.i.i52 = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call.i.i.i52)
  %cmp.i.i.i53 = icmp ult i32 %call.i.i.i52, 10
  %spec.select.i.i.i54 = select i1 %cmp.i.i.i53, i32 1073741822, i32 1
  %add.i.i55 = add i32 %spec.select.i.i.i54, %159
  br label %do.body.i.i60

do.body.i.i60:                                    ; preds = %do.cond.i.i63.do.body.i.i60_crit_edge, %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1.i.i.i50) #6
  %160 = ptrtoint ptr %retval1.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 -1, ptr %retval1.i.i.i50, align 4, !annotation !74
  %161 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx.i.i16, align 4
  %call.i3.i.i57 = call i32 @regmap_read(ptr noundef %162, i32 noundef 204, ptr noundef nonnull %retval1.i.i.i50) #6
  %163 = ptrtoint ptr %retval1.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %retval1.i.i.i50, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i.i.i50) #6
  %and.i.i58 = and i32 %164, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i58)
  %tobool.not.i.i59 = icmp eq i32 %and.i.i58, 0
  br i1 %tobool.not.i.i59, label %do.cond.i.i63, label %if.end9.i

do.cond.i.i63:                                    ; preds = %do.body.i.i60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %165 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i61 = sub i32 %add.i.i55, %165
  %cmp.i.i62 = icmp slt i32 %sub.i.i61, 0
  br i1 %cmp.i.i62, label %do.cond.i.i63.do.body.i.i60_crit_edge, label %do.body.i64

do.cond.i.i63.do.body.i.i60_crit_edge:            ; preds = %do.cond.i.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i60

do.body.i64:                                      ; preds = %do.cond.i.i63
  %call3.i = call i32 @___ratelimit(ptr noundef nonnull @ocelot_fdma_rx_restart._rs, ptr noundef nonnull @__func__.ocelot_fdma_rx_restart) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %do.body.i64.if.end_crit_edge, label %do.end.i65

do.body.i64.if.end_crit_edge:                     ; preds = %do.body.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i65:                                       ; preds = %do.body.i64
  call void @__sanitizer_cov_trace_pc() #8
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.17) #9
  br label %if.end

if.end9.i:                                        ; preds = %do.body.i.i60
  call void @__sanitizer_cov_trace_pc() #8
  %rx_ring2.i66 = getelementptr inbounds %struct.ocelot_fdma, ptr %158, i32 0, i32 5
  %next_to_use.i.i67 = getelementptr inbounds %struct.ocelot_fdma, ptr %158, i32 0, i32 5, i32 5
  %168 = ptrtoint ptr %next_to_use.i.i67 to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %next_to_use.i.i67, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %169)
  %cmp.i.i31.i = icmp eq i16 %169, 0
  %.op.i.i = add i16 %169, -1
  %cond.i.i.i = select i1 %cmp.i.i31.i, i16 511, i16 %.op.i.i, !prof !72
  %conv.i.i68 = zext i16 %cond.i.i.i to i32
  %170 = ptrtoint ptr %rx_ring2.i66 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %rx_ring2.i66, align 4
  %arrayidx.i.i69 = getelementptr %struct.ocelot_fdma_dcb, ptr %171, i32 %conv.i.i68
  %172 = ptrtoint ptr %arrayidx.i.i69 to i32
  call void @__asan_storeN_noabort(i32 %172, i32 4)
  store i32 0, ptr %arrayidx.i.i69, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1.i.i49) #6
  %173 = ptrtoint ptr %retval1.i.i49 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 -1, ptr %retval1.i.i49, align 4, !annotation !74
  %174 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx.i.i16, align 4
  %call.i.i70 = call i32 @regmap_read(ptr noundef %175, i32 noundef 160, ptr noundef nonnull %retval1.i.i49) #6
  %176 = ptrtoint ptr %retval1.i.i49 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %retval1.i.i49, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i.i49) #6
  %dcbs_dma.i71 = getelementptr inbounds %struct.ocelot_fdma, ptr %158, i32 0, i32 5, i32 1
  %178 = ptrtoint ptr %dcbs_dma.i71 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %dcbs_dma.i71, align 4
  %sub.i33.i = sub i32 %177, %179
  %180 = and i32 %sub.i33.i, 1048560
  call void @__sanitizer_cov_trace_const_cmp4(i32 8176, i32 %180)
  %cmp.i36.i = icmp eq i32 %180, 8176
  %181 = add i32 %sub.i33.i, 16
  %.op.i72 = and i32 %181, 1048560
  %mul.i.i73 = select i1 %cmp.i36.i, i32 0, i32 %.op.i72, !prof !72
  %add.i39.i = add i32 %mul.i.i73, %179
  %182 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx.i.i16, align 4
  %call.i.i41.i = call i32 @regmap_write(ptr noundef %183, i32 noundef 0, i32 noundef %add.i39.i) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  call void @arm_heavy_mb() #6
  %184 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx.i.i16, align 4
  %call.i4.i.i74 = call i32 @regmap_write(ptr noundef %185, i32 noundef 208, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.end9.i, %do.end.i65, %do.body.i64.if.end_crit_edge, %ocelot_fdma_rx_get.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0118.i, i32 %budget)
  %cmp = icmp slt i32 %work_done.0118.i, %budget
  br i1 %cmp, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.0118.i) #6
  %186 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx.i.i16, align 4
  %call.i = call i32 @regmap_write(ptr noundef %187, i32 noundef 388, i32 noundef 5) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  ret i32 %work_done.0118.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocelot_fdma_netdev_deinit(ptr nocapture noundef readonly %ocelot, ptr noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fdma1 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 44
  %0 = ptrtoint ptr %fdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdma1, align 4
  %ndev = getelementptr inbounds %struct.ocelot_fdma, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %cmp = icmp eq ptr %3, %dev
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %napi = getelementptr inbounds %struct.ocelot_fdma, ptr %1, i32 0, i32 6
  tail call void @__netif_napi_del(ptr noundef %napi) #6
  tail call void @synchronize_net() #6
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ndev, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocelot_fdma_init(ptr noundef %pdev, ptr noundef %ocelot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ocelot, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 7496, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fdma2 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 44
  %2 = ptrtoint ptr %fdma2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %fdma2, align 4
  %3 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ocelot, align 4
  %coherent_dma_mask = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 4294967295, ptr %coherent_dma_mask, align 8
  %arrayidx.i = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 4, i32 11
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i39 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 388, i32 noundef 0) #6
  %ocelot4 = getelementptr inbounds %struct.ocelot_fdma, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %ocelot4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ocelot, ptr %ocelot4, align 8
  %call5 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str) #6
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call5, ptr %call.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %if.end.dev_name.exit_crit_edge ]
  %call.i40 = tail call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %call5, ptr noundef nonnull @ocelot_fdma_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %ocelot) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool9.not = icmp eq i32 %call.i40, 0
  br i1 %tobool9.not, label %if.end11, label %dev_name.exit.err_free_fdma_crit_edge

dev_name.exit.err_free_fdma_crit_edge:            ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_fdma

if.end11:                                         ; preds = %dev_name.exit
  %14 = ptrtoint ptr %fdma2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fdma2, align 4
  %16 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ocelot, align 4
  %dcbs_dma_base.i = getelementptr inbounds %struct.ocelot_fdma, ptr %15, i32 0, i32 3
  %call.i.i = tail call ptr @dmam_alloc_attrs(ptr noundef %17, i32 noundef 10244, ptr noundef %dcbs_dma_base.i, i32 noundef 3264, i32 noundef 0) #6
  %dcbs_base.i = getelementptr inbounds %struct.ocelot_fdma, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %dcbs_base.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i, ptr %dcbs_base.i, align 8
  %tobool.not.i41 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i41, label %if.end11.err_free_irq_crit_edge, label %if.end.i42

if.end11.err_free_irq_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_irq

if.end.i42:                                       ; preds = %if.end11
  %19 = ptrtoint ptr %dcbs_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dcbs_dma_base.i, align 4
  %and.i = and i32 %20, 3
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %and.i
  %.biased.i = add i32 %20, 3
  %dcbs_dma.0.i = and i32 %.biased.i, -4
  %tx_ring.i = getelementptr inbounds %struct.ocelot_fdma, ptr %15, i32 0, i32 4
  %21 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %tx_ring.i, align 8
  %dcbs_dma11.i = getelementptr inbounds %struct.ocelot_fdma, ptr %15, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %dcbs_dma11.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %dcbs_dma.0.i, ptr %dcbs_dma11.i, align 4
  %xmit_lock.i = getelementptr inbounds %struct.ocelot_fdma, ptr %15, i32 0, i32 4, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %xmit_lock.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @ocelot_fdma_rings_alloc.__key, i16 noundef signext 3) #6
  %add.ptr14.i = getelementptr %struct.ocelot_fdma_dcb, ptr %add.ptr.i, i32 128
  %rx_ring.i = getelementptr inbounds %struct.ocelot_fdma, ptr %15, i32 0, i32 5
  %23 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr14.i, ptr %rx_ring.i, align 8
  %add16.i = add i32 %dcbs_dma.0.i, 2048
  %dcbs_dma18.i = getelementptr inbounds %struct.ocelot_fdma, ptr %15, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %dcbs_dma18.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add16.i, ptr %dcbs_dma18.i, align 4
  %next_to_use.i.i = getelementptr inbounds %struct.ocelot_fdma, ptr %15, i32 0, i32 4, i32 5
  %25 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %next_to_use.i.i, align 2
  %next_to_clean.i.i = getelementptr inbounds %struct.ocelot_fdma, ptr %15, i32 0, i32 4, i32 4
  %27 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %next_to_clean.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %28)
  %cmp.not.i.i = icmp ult i16 %26, %28
  %sub.neg.i.i = sub i16 127, %26
  %29 = xor i16 %26, -1
  %retval.0.v.i.i = select i1 %cmp.not.i.i, i16 %29, i16 %sub.neg.i.i
  %retval.0.i.i = add i16 %retval.0.v.i.i, %28
  %call20.i = tail call fastcc i32 @ocelot_fdma_alloc_rx_buffs(ptr noundef %ocelot, i16 noundef zeroext %retval.0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %ocelot_fdma_rings_alloc.exit.thread, label %if.then22.i

if.then22.i:                                      ; preds = %if.end.i42
  %30 = ptrtoint ptr %fdma2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fdma2, align 4
  %next_to_clean.i50.i = getelementptr inbounds %struct.ocelot_fdma, ptr %31, i32 0, i32 5, i32 4
  %32 = ptrtoint ptr %next_to_clean.i50.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %next_to_clean.i50.i, align 4
  %next_to_use.i51.i = getelementptr inbounds %struct.ocelot_fdma, ptr %31, i32 0, i32 5, i32 5
  %34 = ptrtoint ptr %next_to_use.i51.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %next_to_use.i51.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %35)
  %cmp.not16.i.i = icmp eq i16 %33, %35
  br i1 %cmp.not16.i.i, label %if.then22.i.while.end.i.i_crit_edge, label %if.then22.i.while.body.i.i_crit_edge

if.then22.i.while.body.i.i_crit_edge:             ; preds = %if.then22.i
  br label %while.body.i.i

if.then22.i.while.end.i.i_crit_edge:              ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then22.i.while.body.i.i_crit_edge
  %idx.017.i.i = phi i16 [ %spec.select.i.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %33, %if.then22.i.while.body.i.i_crit_edge ]
  %conv.i52.i = zext i16 %idx.017.i.i to i32
  %arrayidx.i.i = getelementptr %struct.ocelot_fdma, ptr %31, i32 0, i32 5, i32 2, i32 %conv.i52.i
  %36 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ocelot, align 4
  %dma_addr.i.i = getelementptr %struct.ocelot_fdma, ptr %31, i32 0, i32 5, i32 2, i32 %conv.i52.i, i32 2
  %38 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_addr.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %37, i32 noundef %39, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #6
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @__free_pages(ptr noundef %41, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %idx.017.i.i)
  %cmp.i.i.i = icmp eq i16 %idx.017.i.i, 511
  %add.i.i.i = add i16 %idx.017.i.i, 1
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i16 0, i16 %add.i.i.i, !prof !72
  %42 = ptrtoint ptr %next_to_use.i51.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %next_to_use.i51.i, align 2
  %cmp.not.i53.i = icmp eq i16 %spec.select.i.i.i, %43
  br i1 %cmp.not.i53.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %if.then22.i.while.end.i.i_crit_edge
  %skb.i.i = getelementptr inbounds %struct.ocelot_fdma, ptr %31, i32 0, i32 5, i32 3
  %44 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skb.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %while.end.i.i.err_free_irq_crit_edge, label %if.then.i.i

while.end.i.i.err_free_irq_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_irq

if.then.i.i:                                      ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %45, i32 noundef 1) #6
  br label %err_free_irq

ocelot_fdma_rings_alloc.exit.thread:              ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #8
  %next_to_use.i54.i = getelementptr inbounds %struct.ocelot_fdma, ptr %15, i32 0, i32 5, i32 5
  %46 = ptrtoint ptr %next_to_use.i54.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %next_to_use.i54.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp.i.i55.i = icmp eq i16 %47, 0
  %.op.i.i = add i16 %47, -1
  %cond.i.i.i = select i1 %cmp.i.i55.i, i16 511, i16 %.op.i.i, !prof !72
  %conv.i56.i = zext i16 %cond.i.i.i to i32
  %48 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_ring.i, align 4
  %arrayidx.i57.i = getelementptr %struct.ocelot_fdma_dcb, ptr %49, i32 %conv.i56.i
  %50 = ptrtoint ptr %arrayidx.i57.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 0, ptr %arrayidx.i57.i, align 1
  tail call void @static_key_enable(ptr noundef nonnull @ocelot_fdma_enabled) #6
  br label %cleanup

err_free_irq:                                     ; preds = %if.then.i.i, %while.end.i.i.err_free_irq_crit_edge, %if.end11.err_free_irq_crit_edge
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %call.i, align 8
  tail call void @devm_free_irq(ptr noundef %1, i32 noundef %52, ptr noundef nonnull %call.i) #6
  br label %err_free_fdma

err_free_fdma:                                    ; preds = %err_free_irq, %dev_name.exit.err_free_fdma_crit_edge
  tail call void @devm_kfree(ptr noundef %1, ptr noundef nonnull %call.i) #6
  %53 = ptrtoint ptr %fdma2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %fdma2, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free_fdma, %ocelot_fdma_rings_alloc.exit.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_fdma_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  %retval1.i52 = alloca i32, align 4
  %retval1.i49 = alloca i32, align 4
  %retval1.i39 = alloca i32, align 4
  %retval1.i36 = alloca i32, align 4
  %retval1.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1.i) #6
  %0 = ptrtoint ptr %retval1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retval1.i, align 4, !annotation !74
  %arrayidx.i = getelementptr %struct.ocelot, ptr %dev_id, i32 0, i32 4, i32 11
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 392, ptr noundef nonnull %retval1.i) #6
  %3 = ptrtoint ptr %retval1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %retval1.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1.i36) #6
  %5 = ptrtoint ptr %retval1.i36 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %retval1.i36, align 4, !annotation !74
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i38 = call i32 @regmap_read(ptr noundef %7, i32 noundef 372, ptr noundef nonnull %retval1.i36) #6
  %8 = ptrtoint ptr %retval1.i36 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retval1.i36, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i36) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1.i39) #6
  %10 = ptrtoint ptr %retval1.i39 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %retval1.i39, align 4, !annotation !74
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %call.i41 = call i32 @regmap_read(ptr noundef %12, i32 noundef 364, ptr noundef nonnull %retval1.i39) #6
  %13 = ptrtoint ptr %retval1.i39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %retval1.i39, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i39) #6
  %and = and i32 %14, %4
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %call.i43 = call i32 @regmap_write(ptr noundef %16, i32 noundef 364, i32 noundef %and) #6
  %and3 = and i32 %9, %4
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %call.i45 = call i32 @regmap_write(ptr noundef %18, i32 noundef 372, i32 noundef %and3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  %or.cond = select i1 %tobool.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %call.i47 = call i32 @regmap_write(ptr noundef %20, i32 noundef 388, i32 noundef 0) #6
  %fdma = getelementptr inbounds %struct.ocelot, ptr %dev_id, i32 0, i32 44
  %21 = ptrtoint ptr %fdma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fdma, align 4
  %napi = getelementptr inbounds %struct.ocelot_fdma, ptr %22, i32 0, i32 6
  %call.i48 = call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #6
  br i1 %call.i48, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @__napi_schedule(ptr noundef %napi) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1.i49) #6
  %23 = ptrtoint ptr %retval1.i49 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %retval1.i49, align 4, !annotation !74
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %call.i51 = call i32 @regmap_read(ptr noundef %25, i32 noundef 356, ptr noundef nonnull %retval1.i49) #6
  %26 = ptrtoint ptr %retval1.i49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %retval1.i49, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool6.not = icmp eq i32 %27, 0
  br i1 %tobool6.not, label %if.end.if.end18_crit_edge, label %if.then9, !prof !71

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then9:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1.i52) #6
  %28 = ptrtoint ptr %retval1.i52 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %retval1.i52, align 4, !annotation !74
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %call.i54 = call i32 @regmap_read(ptr noundef %30, i32 noundef 360, ptr noundef nonnull %retval1.i52) #6
  %31 = ptrtoint ptr %retval1.i52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %retval1.i52, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i52) #6
  %call11 = call i32 @___ratelimit(ptr noundef nonnull @ocelot_fdma_interrupt._rs, ptr noundef nonnull @__func__.ocelot_fdma_interrupt) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then9.do.end17_crit_edge, label %do.end

if.then9.do.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.18, i32 noundef %27, i32 noundef %32) #9
  br label %do.end17

do.end17:                                         ; preds = %do.end, %if.then9.do.end17_crit_edge
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %call.i56 = call i32 @regmap_write(ptr noundef %36, i32 noundef 356, i32 noundef %27) #6
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %call.i58 = call i32 @regmap_write(ptr noundef %38, i32 noundef 360, i32 noundef %32) #6
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %if.end.if.end18_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocelot_fdma_start(ptr noundef %ocelot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fdma1 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 44
  %0 = ptrtoint ptr %fdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdma1, align 4
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef 8, i32 noundef 33554438, i32 noundef 0) #6
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef 0, i32 noundef 33554440, i32 noundef 0) #6
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef 8, i32 noundef 33554432, i32 noundef 0) #6
  %arrayidx.i = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 4, i32 11
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 364, i32 noundef -1) #6
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i14 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 372, i32 noundef -1) #6
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i16 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 368, i32 noundef 5) #6
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %call.i18 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 376, i32 noundef 1) #6
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %call.i20 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 388, i32 noundef 5) #6
  %napi = getelementptr inbounds %struct.ocelot_fdma, ptr %1, i32 0, i32 6
  tail call void @napi_enable(ptr noundef %napi) #6
  %12 = ptrtoint ptr %fdma1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fdma1, align 4
  %dcbs_dma = getelementptr inbounds %struct.ocelot_fdma, ptr %13, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %dcbs_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dcbs_dma, align 4
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 0, i32 noundef %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %call.i4.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 208, i32 noundef 1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ocelot_write_ix(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocelot_fdma_deinit(ptr nocapture noundef readonly %ocelot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fdma1 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 44
  %0 = ptrtoint ptr %fdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdma1, align 4
  %arrayidx.i = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 4, i32 11
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 388, i32 noundef 0) #6
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i10 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 216, i32 noundef 1) #6
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i12 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 216, i32 noundef 4) #6
  %napi = getelementptr inbounds %struct.ocelot_fdma, ptr %1, i32 0, i32 6
  %state.i = getelementptr inbounds %struct.ocelot_fdma, ptr %1, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i)
  %tobool.not2.i = icmp eq i32 %and1.i1.i, 0
  br i1 %tobool.not2.i, label %entry.napi_synchronize.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.napi_synchronize.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %while.body.i.napi_synchronize.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.napi_synchronize.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit

napi_synchronize.exit:                            ; preds = %while.body.i.napi_synchronize.exit_crit_edge, %entry.napi_synchronize.exit_crit_edge
  tail call void @napi_disable(ptr noundef %napi) #6
  %12 = ptrtoint ptr %fdma1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fdma1, align 4
  %next_to_clean.i = getelementptr inbounds %struct.ocelot_fdma, ptr %13, i32 0, i32 5, i32 4
  %14 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %next_to_clean.i, align 4
  %next_to_use.i = getelementptr inbounds %struct.ocelot_fdma, ptr %13, i32 0, i32 5, i32 5
  %16 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %next_to_use.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp.not16.i = icmp eq i16 %15, %17
  br i1 %cmp.not16.i, label %napi_synchronize.exit.while.end.i_crit_edge, label %napi_synchronize.exit.while.body.i14_crit_edge

napi_synchronize.exit.while.body.i14_crit_edge:   ; preds = %napi_synchronize.exit
  br label %while.body.i14

napi_synchronize.exit.while.end.i_crit_edge:      ; preds = %napi_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.i14:                                   ; preds = %while.body.i14.while.body.i14_crit_edge, %napi_synchronize.exit.while.body.i14_crit_edge
  %idx.017.i = phi i16 [ %spec.select.i.i, %while.body.i14.while.body.i14_crit_edge ], [ %15, %napi_synchronize.exit.while.body.i14_crit_edge ]
  %conv.i = zext i16 %idx.017.i to i32
  %arrayidx.i13 = getelementptr %struct.ocelot_fdma, ptr %13, i32 0, i32 5, i32 2, i32 %conv.i
  %18 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ocelot, align 4
  %dma_addr.i = getelementptr %struct.ocelot_fdma, ptr %13, i32 0, i32 5, i32 2, i32 %conv.i, i32 2
  %20 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %19, i32 noundef %21, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #6
  %22 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i13, align 4
  tail call void @__free_pages(ptr noundef %23, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %idx.017.i)
  %cmp.i.i = icmp eq i16 %idx.017.i, 511
  %add.i.i = add i16 %idx.017.i, 1
  %spec.select.i.i = select i1 %cmp.i.i, i16 0, i16 %add.i.i, !prof !72
  %24 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %next_to_use.i, align 2
  %cmp.not.i = icmp eq i16 %spec.select.i.i, %25
  br i1 %cmp.not.i, label %while.body.i14.while.end.i_crit_edge, label %while.body.i14.while.body.i14_crit_edge

while.body.i14.while.body.i14_crit_edge:          ; preds = %while.body.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i14

while.body.i14.while.end.i_crit_edge:             ; preds = %while.body.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i14.while.end.i_crit_edge, %napi_synchronize.exit.while.end.i_crit_edge
  %skb.i = getelementptr inbounds %struct.ocelot_fdma, ptr %13, i32 0, i32 5, i32 3
  %26 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skb.i, align 8
  %tobool.not.i15 = icmp eq ptr %27, null
  br i1 %tobool.not.i15, label %while.end.i.ocelot_fdma_free_rx_ring.exit_crit_edge, label %if.then.i

while.end.i.ocelot_fdma_free_rx_ring.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_fdma_free_rx_ring.exit

if.then.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %27, i32 noundef 1) #6
  br label %ocelot_fdma_free_rx_ring.exit

ocelot_fdma_free_rx_ring.exit:                    ; preds = %if.then.i, %while.end.i.ocelot_fdma_free_rx_ring.exit_crit_edge
  %28 = ptrtoint ptr %fdma1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fdma1, align 4
  %next_to_clean.i17 = getelementptr inbounds %struct.ocelot_fdma, ptr %29, i32 0, i32 4, i32 4
  %30 = ptrtoint ptr %next_to_clean.i17 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %next_to_clean.i17, align 4
  %next_to_use.i18 = getelementptr inbounds %struct.ocelot_fdma, ptr %29, i32 0, i32 4, i32 5
  %32 = ptrtoint ptr %next_to_use.i18 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %next_to_use.i18, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp.not13.i = icmp eq i16 %31, %33
  br i1 %cmp.not13.i, label %ocelot_fdma_free_rx_ring.exit.ocelot_fdma_free_tx_ring.exit_crit_edge, label %ocelot_fdma_free_rx_ring.exit.while.body.i26_crit_edge

ocelot_fdma_free_rx_ring.exit.while.body.i26_crit_edge: ; preds = %ocelot_fdma_free_rx_ring.exit
  br label %while.body.i26

ocelot_fdma_free_rx_ring.exit.ocelot_fdma_free_tx_ring.exit_crit_edge: ; preds = %ocelot_fdma_free_rx_ring.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_fdma_free_tx_ring.exit

while.body.i26:                                   ; preds = %while.body.i26.while.body.i26_crit_edge, %ocelot_fdma_free_rx_ring.exit.while.body.i26_crit_edge
  %idx.014.i = phi i16 [ %spec.select.i.i24, %while.body.i26.while.body.i26_crit_edge ], [ %31, %ocelot_fdma_free_rx_ring.exit.while.body.i26_crit_edge ]
  %conv.i19 = zext i16 %idx.014.i to i32
  %arrayidx.i20 = getelementptr %struct.ocelot_fdma, ptr %29, i32 0, i32 4, i32 2, i32 %conv.i19
  %34 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i20, align 4
  %36 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ocelot, align 4
  %dma_addr.i21 = getelementptr %struct.ocelot_fdma, ptr %29, i32 0, i32 4, i32 2, i32 %conv.i19, i32 1
  %38 = ptrtoint ptr %dma_addr.i21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_addr.i21, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 6
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef 1, i32 noundef 0) #6
  tail call void @__dev_kfree_skb_any(ptr noundef %35, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %idx.014.i)
  %cmp.i.i22 = icmp eq i16 %idx.014.i, 127
  %add.i.i23 = add i16 %idx.014.i, 1
  %spec.select.i.i24 = select i1 %cmp.i.i22, i16 0, i16 %add.i.i23, !prof !72
  %42 = ptrtoint ptr %next_to_use.i18 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %next_to_use.i18, align 2
  %cmp.not.i25 = icmp eq i16 %spec.select.i.i24, %43
  br i1 %cmp.not.i25, label %while.body.i26.ocelot_fdma_free_tx_ring.exit_crit_edge, label %while.body.i26.while.body.i26_crit_edge

while.body.i26.while.body.i26_crit_edge:          ; preds = %while.body.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i26

while.body.i26.ocelot_fdma_free_tx_ring.exit_crit_edge: ; preds = %while.body.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_fdma_free_tx_ring.exit

ocelot_fdma_free_tx_ring.exit:                    ; preds = %while.body.i26.ocelot_fdma_free_tx_ring.exit_crit_edge, %ocelot_fdma_free_rx_ring.exit.ocelot_fdma_free_tx_ring.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_ifh_port_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_consume_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocelot_fdma_alloc_rx_buffs(ptr nocapture noundef readonly %ocelot, i16 noundef zeroext %alloc_cnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fdma1 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 44
  %0 = ptrtoint ptr %fdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdma1, align 4
  %rx_ring2 = getelementptr inbounds %struct.ocelot_fdma, ptr %1, i32 0, i32 5
  %next_to_use = getelementptr inbounds %struct.ocelot_fdma, ptr %1, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next_to_use, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %alloc_cnt)
  %tobool.not51 = icmp eq i16 %alloc_cnt, 0
  br i1 %tobool.not51, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dcbs_dma = getelementptr inbounds %struct.ocelot_fdma, ptr %1, i32 0, i32 5, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %while.body.lr.ph
  %dec54.in = phi i16 [ %alloc_cnt, %while.body.lr.ph ], [ %dec54, %if.end23.while.body_crit_edge ]
  %idx.052 = phi i16 [ %3, %while.body.lr.ph ], [ %spec.select.i, %if.end23.while.body_crit_edge ]
  %dec54 = add i16 %dec54.in, -1
  %idxprom = zext i16 %idx.052 to i32
  %arrayidx = getelementptr %struct.ocelot_fdma, ptr %1, i32 0, i32 5, i32 2, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.then, label %while.body.if.end23_crit_edge, !prof !72

while.body.if.end23_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then:                                          ; preds = %while.body
  %call = tail call fastcc zeroext i1 @ocelot_fdma_rx_alloc_page(ptr noundef %ocelot, ptr noundef %arrayidx)
  br i1 %call, label %if.then.if.end23_crit_edge, label %do.body, !prof !71

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.body:                                          ; preds = %if.then
  %call16 = tail call i32 @___ratelimit(ptr noundef nonnull @ocelot_fdma_alloc_rx_buffs._rs, ptr noundef nonnull @__func__.ocelot_fdma_alloc_rx_buffs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body.while.end_crit_edge, label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ocelot, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.15) #9
  br label %while.end

if.end23:                                         ; preds = %if.then.if.end23_crit_edge, %while.body.if.end23_crit_edge
  %8 = ptrtoint ptr %rx_ring2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_ring2, align 4
  %arrayidx25 = getelementptr %struct.ocelot_fdma_dcb, ptr %9, i32 %idxprom
  %dma_addr26 = getelementptr %struct.ocelot_fdma, ptr %1, i32 0, i32 5, i32 2, i32 %idxprom, i32 2
  %10 = ptrtoint ptr %dma_addr26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_addr26, align 4
  %page_offset = getelementptr %struct.ocelot_fdma, ptr %1, i32 0, i32 5, i32 2, i32 %idxprom, i32 1
  %12 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_offset, align 4
  %add = add i32 %13, %11
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %arrayidx25, align 1
  %and1.i = and i32 %add, -4
  %datap.i = getelementptr %struct.ocelot_fdma_dcb, ptr %9, i32 %idxprom, i32 1
  %15 = ptrtoint ptr %datap.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %and1.i, ptr %datap.i, align 1
  %datal.i = getelementptr %struct.ocelot_fdma_dcb, ptr %9, i32 %idxprom, i32 2
  %16 = ptrtoint ptr %datal.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 1788, ptr %datal.i, align 1
  %and.i = shl i32 %add, 20
  %shl.i = and i32 %and.i, 3145728
  %stat.i = getelementptr %struct.ocelot_fdma_dcb, ptr %9, i32 %idxprom, i32 3
  %17 = ptrtoint ptr %stat.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %shl.i, ptr %stat.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %idx.052)
  %cmp.i = icmp eq i16 %idx.052, 511
  %add.i = add i16 %idx.052, 1
  %spec.select.i = select i1 %cmp.i, i16 0, i16 %add.i, !prof !72
  %18 = ptrtoint ptr %dcbs_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dcbs_dma, align 4
  %conv.i46 = zext i16 %spec.select.i to i32
  %mul.i = shl nuw nsw i32 %conv.i46, 4
  %add.i47 = add i32 %19, %mul.i
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %add.i47, ptr %arrayidx25, align 1
  %tobool.not = icmp eq i16 %dec54, 0
  br i1 %tobool.not, label %if.end23.while.end_crit_edge, label %if.end23.while.body_crit_edge

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end23.while.end_crit_edge, %do.end, %do.body.while.end_crit_edge, %entry.while.end_crit_edge
  %idx.049 = phi i16 [ %idx.052, %do.end ], [ %idx.052, %do.body.while.end_crit_edge ], [ %3, %entry.while.end_crit_edge ], [ %spec.select.i, %if.end23.while.end_crit_edge ]
  %ret.0 = phi i32 [ -12, %do.end ], [ -12, %do.body.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ], [ 0, %if.end23.while.end_crit_edge ]
  %21 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %idx.049, ptr %next_to_use, align 2
  %next_to_alloc = getelementptr inbounds %struct.ocelot_fdma, ptr %1, i32 0, i32 5, i32 6
  %22 = ptrtoint ptr %next_to_alloc to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %idx.049, ptr %next_to_alloc, align 4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ocelot_fdma_add_rx_frag(ptr nocapture noundef %rxb, i32 noundef %stat, ptr noundef %skb, i1 noundef zeroext %first) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %stat, 65535
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  br i1 %first, label %if.then, label %if.else, !prof !71

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %and) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %5 to i32
  %page_offset = getelementptr inbounds %struct.ocelot_fdma_rx_buf, ptr %rxb, i32 0, i32 1
  %6 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_offset, align 4
  tail call void @skb_add_rx_frag(ptr noundef %skb, i32 noundef %conv, ptr noundef %1, i32 noundef %7, i32 noundef %and, i32 noundef 2048) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %_refcount.i = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i, i32 noundef 4) #6
  %8 = ptrtoint ptr %_refcount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %_refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %lor.end, label %if.end.cleanup_crit_edge, !prof !71

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.end:                                          ; preds = %if.end
  %10 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %12 to i32
  %and.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end16, label %lor.end.cleanup_crit_edge, !prof !71

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  %page_offset17 = getelementptr inbounds %struct.ocelot_fdma_rx_buf, ptr %rxb, i32 0, i32 1
  %14 = ptrtoint ptr %page_offset17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page_offset17, align 4
  %xor = xor i32 %15, 2048
  store i32 %xor, ptr %page_offset17, align 4
  %call.i.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #6
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 1, ptr elementtype(i32) %_refcount.i) #6, !srcloc !75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@ocelot_fdma_add_rx_frag, %if.then.i)) #6
          to label %cleanup [label %if.then.i], !srcloc !76

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__page_ref_mod(ptr noundef %1, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end16, %lor.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %17 = phi i1 [ false, %lor.end.cleanup_crit_edge ], [ true, %if.end16 ], [ true, %if.then.i ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocelot_port_to_netdev(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_ptp_rx_timestamp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_defer_rx_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @packing(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ocelot_fdma_rx_alloc_page(ptr nocapture noundef readonly %ocelot, ptr nocapture noundef writeonly %rxb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 404000, i32 noundef 0, i32 noundef 0, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !72

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ocelot, align 4
  %call4 = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #6
  %2 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ocelot, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp.i.not = icmp eq i32 %call4, -1
  br i1 %cmp.i.not, label %if.then14, label %if.end15, !prof !72

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef 0) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %rxb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call38.i.i.i.i.i, ptr %rxb, align 4
  %page_offset = getelementptr inbounds %struct.ocelot_fdma_rx_buf, ptr %rxb, i32 0, i32 1
  %5 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %page_offset, align 4
  %dma_addr = getelementptr inbounds %struct.ocelot_fdma_rx_buf, ptr %rxb, i32 0, i32 2
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call4, ptr %dma_addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then14 ], [ true, %if.end15 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !39, !40, !41, !42, !43, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !57, !59}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @ocelot_fdma_enabled, !1, !"ocelot_fdma_enabled", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mscc/ocelot_fdma.c", i32 21, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mscc/ocelot_fdma.c", i32 832, i32 44}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mscc/ocelot_fdma.c", i32 661, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ocelot_fdma_prepare_skb._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @ocelot_fdma_prepare_skb._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mscc/ocelot_fdma.c", i32 537, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ocelot_fdma_tx_cleanup._entry, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @ocelot_fdma_tx_cleanup._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mscc/ocelot_fdma.c", i32 435, i32 4}
!23 = !{ptr @ocelot_fdma_rx_get._rs, !22, !"_rs", i1 false, i1 false}
!24 = !{ptr @__func__.ocelot_fdma_rx_get, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ocelot_fdma_rx_get._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @ocelot_fdma_rx_get._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @ocelot_fdma_get_skb._rs, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mscc/ocelot_fdma.c", i32 329, i32 4}
!31 = !{ptr @__func__.ocelot_fdma_get_skb, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ocelot_fdma_get_skb._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @ocelot_fdma_get_skb._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!37 = !{ptr @ocelot_fdma_alloc_rx_buffs._rs, !38, !"_rs", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mscc/ocelot_fdma.c", i32 166, i32 5}
!39 = !{ptr @__func__.ocelot_fdma_alloc_rx_buffs, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ocelot_fdma_alloc_rx_buffs._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @ocelot_fdma_alloc_rx_buffs._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!45 = !{ptr @ocelot_fdma_rx_restart._rs, !46, !"_rs", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mscc/ocelot_fdma.c", i32 249, i32 3}
!47 = !{ptr @__func__.ocelot_fdma_rx_restart, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ocelot_fdma_rx_restart._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @ocelot_fdma_rx_restart._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ocelot_fdma_interrupt._rs, !52, !"_rs", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mscc/ocelot_fdma.c", i32 597, i32 3}
!53 = !{ptr @__func__.ocelot_fdma_interrupt, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ocelot_fdma_interrupt._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @ocelot_fdma_interrupt._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @ocelot_fdma_rings_alloc.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/mscc/ocelot_fdma.c", i32 771, i32 2}
!59 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 4000000, i32 4001}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2158315450}
!74 = !{!"auto-init"}
!75 = !{i64 2148184026, i64 2148184052, i64 2148184081, i64 2148184115, i64 2148184146, i64 2148184169}
!76 = !{i64 2148706382, i64 2148706387, i64 2148706400, i64 2148706444, i64 2148706478, i64 2148706499}
