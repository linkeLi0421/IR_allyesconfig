; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/rx_common.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/rx_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.126 }
%union.anon.126 = type { i32 }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.efx_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.efx_special_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.efx_rx_queue, [4 x %struct.efx_tx_queue], [8 x ptr], i32, i32, i32, [84 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.efx_special_buffer = type { %struct.efx_buffer, i32, i32 }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.efx_rx_queue = type { ptr, i32, ptr, %struct.efx_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, [92 x i8], %struct.xdp_rxq_info, i8, [127 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.efx_tx_queue = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, %struct.efx_special_buffer, i32, ptr, i32, i8, i8, i8, [53 x i8], i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [72 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.efx_rx_buffer = type { i32, ptr, i16, i16, i16 }
%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.efx_link_state = type { i8, i8, i8, i32 }
%union.efx_multicast_hash = type { [2 x %union.efx_oword] }
%union.efx_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_async_filter_insertion = type { ptr, %struct.efx_filter_spec, %struct.work_struct, i16, i32 }
%struct.efx_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.153, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.153 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.135, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.152, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.135 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.152 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.efx_arfs_rule = type { %struct.hlist_node, %struct.efx_filter_spec, i16, i16, i32 }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.157, i16 }
%union.anon.157 = type { %struct.anon.158 }
%struct.anon.158 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.159 }
%union.anon.159 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.161, i16 }
%struct.anon.161 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.162 }
%union.anon.162 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.anon.160 = type { i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_rx_refill_threshold = internal constant [24 x i8] c"sfc.rx_refill_threshold\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@rx_refill_threshold = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rx_refill_threshold = internal constant %struct.kernel_param { ptr @__param_str_rx_refill_threshold, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @rx_refill_threshold } }, section "__param", align 4
@__UNIQUE_ID_rx_refill_thresholdtype524 = internal constant [38 x i8] c"sfc.parmtype=rx_refill_threshold:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_refill_threshold525 = internal constant [69 x i8] c"sfc.parm=rx_refill_threshold:RX descriptor ring refill threshold (%)\00", section ".modinfo", align 1
@efx_probe_rx_queue.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efx_probe_rx_queue\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/sfc/rx_common.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"creating RX queue %d size %#x mask %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@efx_init_rx_queue.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efx_init_rx_queue\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"initialising RX queue %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failure to initialise XDP queue information rc=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@efx_fini_rx_queue.__UNIQUE_ID_ddebug532 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efx_fini_rx_queue\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"shutting down RX queue %d\0A\00", [37 x i8] zeroinitializer }, align 32
@efx_remove_rx_queue.__UNIQUE_ID_ddebug533 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efx_remove_rx_queue\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"destroying RX queue %d\0A\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@efx_alloc_rss_context_entry.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@efx_filter_rfs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&req->work)\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"expired filter %d [channel %u flow %u]\0A\00", [56 x i8] zeroinitializer }, align 32
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.15 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@flow_keys_dissector = external dso_local global %struct.flow_dissector, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.16 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"steering %s %pI4:%u:%pI4:%u to queue %u [flow %u filter %d id %u]\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TCP\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UDP\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"steering %s [%pI6]:%u:[%pI6]:%u to queue %u [flow %u filter %d id %u]\0A\00", [57 x i8] zeroinitializer }, align 32
@efx_filter_rfs_work.__UNIQUE_ID_ddebug535 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efx_filter_rfs_work\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"failed to steer %s %pI4:%u:%pI4:%u to queue %u [flow %u rc %d id %u]\0A\00", [58 x i8] zeroinitializer }, align 32
@efx_filter_rfs_work.__UNIQUE_ID_ddebug536 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 0, i8 -21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"failed to steer %s [%pI6]:%u:[%pI6]:%u to queue %u [flow %u rc %d id %u]\0A\00", [54 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"rx_refill_threshold\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 21, i32 21 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 213, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 239, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 276, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 293, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 319, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1045, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1076, i32 5 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 717, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 1160, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 913, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 920, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 929, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [40 x i8] c"../drivers/net/ethernet/sfc/rx_common.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 936, i32 4 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_rx_refill_threshold525, ptr @__UNIQUE_ID_rx_refill_thresholdtype524, ptr @__param_rx_refill_threshold, ptr @rx_refill_threshold, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @efx_filter_rfs.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_refill_threshold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_filter_rfs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_recycle_rx_pages(ptr nocapture noundef %channel, ptr noundef readonly %rx_buf, i32 noundef %n_frags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %page_ring = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 12
  %0 = ptrtoint ptr %page_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page_ring, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body.preheader, !prof !64

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %ptr_mask.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 4
  %buffer.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %rx_buf.addr.0 = phi ptr [ %spec.select.i, %do.body.do.body_crit_edge ], [ %rx_buf, %do.body.preheader ]
  %n_frags.addr.0 = phi i32 [ %dec, %do.body.do.body_crit_edge ], [ %n_frags, %do.body.preheader ]
  tail call fastcc void @efx_recycle_rx_page(ptr noundef %channel, ptr noundef %rx_buf.addr.0)
  %2 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptr_mask.i, align 32
  %4 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.efx_rx_buffer, ptr %5, i32 %3
  %cmp.i = icmp eq ptr %arrayidx.i.i, %rx_buf.addr.0
  %add.ptr.i = getelementptr %struct.efx_rx_buffer, ptr %rx_buf.addr.0, i32 1
  %spec.select.i = select i1 %cmp.i, ptr %5, ptr %add.ptr.i, !prof !64
  %dec = add i32 %n_frags.addr.0, -1
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_recycle_rx_page(ptr nocapture noundef %channel, ptr nocapture noundef readonly %rx_buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_queue.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45
  %0 = ptrtoint ptr %rx_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue.i, align 128
  %page2 = getelementptr inbounds %struct.efx_rx_buffer, ptr %rx_buf, i32 0, i32 1
  %2 = ptrtoint ptr %page2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page2, align 4
  %flags = getelementptr inbounds %struct.efx_rx_buffer, ptr %rx_buf, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 4
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %page_add = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 13
  %7 = ptrtoint ptr %page_add to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %page_add, align 64
  %page_ptr_mask = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 18
  %9 = ptrtoint ptr %page_ptr_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %page_ptr_mask, align 4
  %and3 = and i32 %10, %8
  %page_ring = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 12
  %11 = ptrtoint ptr %page_ring to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %page_ring, align 4
  %arrayidx = getelementptr ptr, ptr %12, i32 %and3
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %14, null
  br i1 %cmp, label %if.then5, label %if.end17

if.then5:                                         ; preds = %if.end
  %page_remove = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 14
  %15 = ptrtoint ptr %page_remove to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %page_remove, align 4
  %and7 = and i32 %16, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %and7, i32 %and3)
  %cmp8 = icmp eq i32 %and7, %and3
  br i1 %cmp8, label %if.then10, label %if.then5.if.end12_crit_edge

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %inc = add i32 %16, 1
  %17 = ptrtoint ptr %page_remove to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc, ptr %page_remove, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then5.if.end12_crit_edge
  %18 = ptrtoint ptr %page_ring to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %page_ring, align 4
  %arrayidx14 = getelementptr ptr, ptr %19, i32 %and3
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %3, ptr %arrayidx14, align 4
  %21 = ptrtoint ptr %page_add to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %page_add, align 64
  %inc16 = add i32 %22, 1
  store i32 %inc16, ptr %page_add, align 64
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %page_recycle_full = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 17
  %23 = ptrtoint ptr %page_recycle_full to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page_recycle_full, align 16
  %inc18 = add i32 %24, 1
  store i32 %inc18, ptr %page_recycle_full, align 16
  %25 = ptrtoint ptr %page2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %page2, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end17.efx_unmap_rx_buffer.exit_crit_edge, label %if.then.i

if.end17.efx_unmap_rx_buffer.exit_crit_edge:      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %efx_unmap_rx_buffer.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call ptr @page_address(ptr noundef nonnull %26) #15
  %pci_dev.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i, align 128
  %rx_buffer_order.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 54
  %31 = ptrtoint ptr %rx_buffer_order.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_buffer_order.i, align 8
  %shl.i = shl i32 4096, %32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %30, i32 noundef %shl.i, i32 noundef 2, i32 noundef 0) #15
  br label %efx_unmap_rx_buffer.exit

efx_unmap_rx_buffer.exit:                         ; preds = %if.then.i, %if.end17.efx_unmap_rx_buffer.exit_crit_edge
  %33 = ptrtoint ptr %page2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %page2, align 4
  %35 = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %and.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !65

if.then.i.i:                                      ; preds = %efx_unmap_rx_buffer.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %37, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %efx_unmap_rx_buffer.exit
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %34 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %38, %if.end.i.i ]
  %39 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %40 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i.i.i = icmp eq i32 %41, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !64

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.13) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !66
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !68
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@efx_recycle_rx_page, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !70

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %39, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %39) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.end12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_discard_rx_packet(ptr nocapture noundef %channel, ptr noundef %rx_buf, i32 noundef %n_frags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %page_ring.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 12
  %0 = ptrtoint ptr %page_ring.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page_ring.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.efx_recycle_rx_pages.exit_crit_edge, label %do.body.preheader.i, !prof !64

entry.efx_recycle_rx_pages.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %efx_recycle_rx_pages.exit

do.body.preheader.i:                              ; preds = %entry
  %ptr_mask.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 4
  %buffer.i.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %rx_buf.addr.0.i = phi ptr [ %spec.select.i.i, %do.body.i.do.body.i_crit_edge ], [ %rx_buf, %do.body.preheader.i ]
  %n_frags.addr.0.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ %n_frags, %do.body.preheader.i ]
  tail call fastcc void @efx_recycle_rx_page(ptr noundef %channel, ptr noundef %rx_buf.addr.0.i) #15
  %2 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptr_mask.i.i, align 32
  %4 = ptrtoint ptr %buffer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.efx_rx_buffer, ptr %5, i32 %3
  %cmp.i.i = icmp eq ptr %arrayidx.i.i.i, %rx_buf.addr.0.i
  %add.ptr.i.i = getelementptr %struct.efx_rx_buffer, ptr %rx_buf.addr.0.i, i32 1
  %spec.select.i.i = select i1 %cmp.i.i, ptr %5, ptr %add.ptr.i.i, !prof !64
  %dec.i = add i32 %n_frags.addr.0.i, -1
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool5.not.i, label %do.body.i.efx_recycle_rx_pages.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

do.body.i.efx_recycle_rx_pages.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %efx_recycle_rx_pages.exit

efx_recycle_rx_pages.exit:                        ; preds = %do.body.i.efx_recycle_rx_pages.exit_crit_edge, %entry.efx_recycle_rx_pages.exit_crit_edge
  %rx_queue.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45
  tail call void @efx_free_rx_buffers(ptr noundef %rx_queue.i, ptr noundef %rx_buf, i32 noundef %n_frags)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_free_rx_buffers(ptr nocapture noundef readonly %rx_queue, ptr noundef %rx_buf, i32 noundef %num_bufs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ptr_mask.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 4
  %buffer.i.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %rx_buf.addr.0 = phi ptr [ %rx_buf, %entry ], [ %spec.select.i, %if.end.do.body_crit_edge ]
  %num_bufs.addr.0 = phi i32 [ %num_bufs, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  %page = getelementptr inbounds %struct.efx_rx_buffer, ptr %rx_buf.addr.0, i32 0, i32 1
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %do.body
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !65

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %7 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !64

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %9 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.13) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !66
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !68
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@efx_free_rx_buffers, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !70

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %6, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %6) #15
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %11 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %page, align 4
  br label %if.end

if.end:                                           ; preds = %put_page.exit, %do.body.if.end_crit_edge
  %12 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ptr_mask.i, align 32
  %14 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.efx_rx_buffer, ptr %15, i32 %13
  %cmp.i = icmp eq ptr %arrayidx.i.i, %rx_buf.addr.0
  %add.ptr.i = getelementptr %struct.efx_rx_buffer, ptr %rx_buf.addr.0, i32 1
  %spec.select.i = select i1 %cmp.i, ptr %15, ptr %add.ptr.i, !prof !64
  %dec = add i32 %num_bufs.addr.0, -1
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %do.end, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_probe_rx_queue(ptr noundef %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %rxq_entries = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %rxq_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxq_entries, align 4
  %sub.i83 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i83)
  %tobool.not.i.i.i = icmp eq i32 %sub.i83, 0
  br i1 %tobool.not.i.i.i, label %entry.cond.end24.thread_crit_edge, label %cond.end24

entry.cond.end24.thread_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end24.thread

cond.end24:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub.i83, i1 true) #15, !range !71
  %sub.i.i.i = sub nuw nsw i32 32, %4
  %cond25 = shl nuw i32 1, %sub.i.i.i
  %5 = tail call i32 @llvm.umax.i32(i32 %cond25, i32 512)
  br label %cond.end24.thread

cond.end24.thread:                                ; preds = %cond.end24, %entry.cond.end24.thread_crit_edge
  %6 = phi i32 [ 512, %entry.cond.end24.thread_crit_edge ], [ %5, %cond.end24 ]
  %sub32 = add i32 %6, -1
  %ptr_mask = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 4
  %7 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub32, ptr %ptr_mask, align 32
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.end24.thread.do.end48_crit_edge, label %do.body34

cond.end24.thread.do.end48_crit_edge:             ; preds = %cond.end24.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end48

do.body34:                                        ; preds = %cond.end24.thread
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_probe_rx_queue.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_probe_rx_queue, %if.then40)) #15
          to label %do.end48 [label %if.then40], !srcloc !70

if.then40:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %10 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev, align 4
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -508
  %12 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel.i, align 4
  %14 = ptrtoint ptr %rxq_entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rxq_entries, align 4
  %16 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ptr_mask, align 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_probe_rx_queue.__UNIQUE_ID_ddebug528, ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef %13, i32 noundef %15, i32 noundef %17) #15
  br label %do.end48

do.end48:                                         ; preds = %if.then40, %do.body34, %cond.end24.thread.do.end48_crit_edge
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 16) #15
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !64

kcalloc.exit.thread:                              ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #17
  %buffer88 = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 2
  br label %cleanup.sink.split

if.end7.i.i:                                      ; preds = %do.end48
  %20 = extractvalue { i32, i1 } %18, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #18
  %buffer = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 2
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i, ptr %buffer, align 8
  %tobool51.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool51.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end53

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end53:                                         ; preds = %if.end7.i.i
  %22 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_queue, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %type.i, align 4
  %rx_probe.i = getelementptr inbounds %struct.efx_nic_type, ptr %25, i32 0, i32 59
  %26 = ptrtoint ptr %rx_probe.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_probe.i, align 4
  %call.i = tail call i32 %27(ptr noundef %rx_queue) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool55.not = icmp eq i32 %call.i, 0
  br i1 %tobool55.not, label %if.end53.cleanup_crit_edge, label %if.then56

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 8
  tail call void @kfree(ptr noundef %29) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then56, %kcalloc.exit.thread
  %buffer88.sink = phi ptr [ %buffer88, %kcalloc.exit.thread ], [ %buffer, %if.then56 ]
  %retval.0.ph = phi i32 [ -12, %kcalloc.exit.thread ], [ %call.i, %if.then56 ]
  %30 = ptrtoint ptr %buffer88.sink to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %buffer88.sink, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end53.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_init_rx_queue(ptr noundef %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.body3

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end12

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_init_rx_queue.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_init_rx_queue, %if.then7)) #15
          to label %do.end12 [label %if.then7], !srcloc !70

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_queue, align 128
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -508
  %8 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_init_rx_queue.__UNIQUE_ID_ddebug529, ptr noundef %7, ptr noundef nonnull @.str.5, i32 noundef %9) #15
  br label %do.end12

do.end12:                                         ; preds = %if.then7, %do.body3, %entry.do.end12_crit_edge
  %added_count = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 7
  %10 = ptrtoint ptr %added_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %added_count, align 8
  %notified_count = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 8
  %11 = ptrtoint ptr %notified_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %notified_count, align 4
  %removed_count = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 9
  %12 = ptrtoint ptr %removed_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %removed_count, align 16
  %min_fill = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 21
  %13 = ptrtoint ptr %min_fill to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %min_fill, align 32
  %14 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_queue, align 128
  %call.i = tail call zeroext i1 @iommu_present(ptr noundef nonnull @pci_bus_type) #15
  %..i = select i1 %call.i, i32 4096, i32 16
  %rx_bufs_per_page.i = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 57
  %16 = ptrtoint ptr %rx_bufs_per_page.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_bufs_per_page.i, align 4
  %div.i = udiv i32 %..i, %17
  %sub.i57.i = add nsw i32 %div.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i57.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i57.i, 0
  %18 = tail call i32 @llvm.ctlz.i32(i32 %sub.i57.i, i1 true) #15, !range !71
  %sub.i.i.i.i = sub nuw nsw i32 32, %18
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %shl.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl.i.i, i32 4) #15
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !64

kcalloc.exit.thread.i:                            ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #17
  %page_ring59.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 12
  %21 = ptrtoint ptr %page_ring59.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %page_ring59.i, align 4
  br label %efx_init_rx_recycle_ring.exit

if.end7.i.i.i:                                    ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #17
  %22 = extractvalue { i32, i1 } %19, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #18
  %page_ring.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 12
  %23 = ptrtoint ptr %page_ring.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8.i.i.i, ptr %page_ring.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  %sub37.i = add nsw i32 %shl.i.i, -1
  %spec.select = select i1 %tobool.not.i, i32 0, i32 %sub37.i
  br label %efx_init_rx_recycle_ring.exit

efx_init_rx_recycle_ring.exit:                    ; preds = %if.end7.i.i.i, %kcalloc.exit.thread.i
  %sub37.sink.i = phi i32 [ 0, %kcalloc.exit.thread.i ], [ %spec.select, %if.end7.i.i.i ]
  %page_ptr_mask38.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 18
  %24 = ptrtoint ptr %page_ptr_mask38.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub37.sink.i, ptr %page_ptr_mask38.i, align 4
  %page_remove = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 14
  %25 = ptrtoint ptr %page_remove to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %page_remove, align 4
  %add = add nsw i32 %sub37.sink.i, 1
  %page_add = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 13
  %26 = ptrtoint ptr %page_add to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %page_add, align 64
  %page_recycle_count = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 15
  %27 = ptrtoint ptr %page_recycle_count to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %page_recycle_count, align 8
  %page_recycle_failed = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 16
  %28 = ptrtoint ptr %page_recycle_failed to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %page_recycle_failed, align 4
  %page_recycle_full = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 17
  %29 = ptrtoint ptr %page_recycle_full to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %page_recycle_full, align 16
  %rxq_entries = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 31
  %30 = ptrtoint ptr %rxq_entries to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rxq_entries, align 4
  %sub = add i32 %31, -7
  %rx_pages_per_batch = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 58
  %32 = ptrtoint ptr %rx_pages_per_batch to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_pages_per_batch, align 8
  %rx_bufs_per_page = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 57
  %34 = ptrtoint ptr %rx_bufs_per_page to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_bufs_per_page, align 4
  %mul = mul i32 %35, %33
  %sub13 = sub i32 %sub, %mul
  %36 = load i32, ptr @rx_refill_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.not = icmp eq i32 %36, 0
  br i1 %cmp.not, label %efx_init_rx_recycle_ring.exit.if.end21_crit_edge, label %if.then14

efx_init_rx_recycle_ring.exit.if.end21_crit_edge: ; preds = %efx_init_rx_recycle_ring.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then14:                                        ; preds = %efx_init_rx_recycle_ring.exit
  call void @__sanitizer_cov_trace_pc() #17
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 100)
  %mul17 = mul i32 %37, %sub
  %div = udiv i32 %mul17, 100
  %38 = tail call i32 @llvm.umin.i32(i32 %div, i32 %sub13)
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %efx_init_rx_recycle_ring.exit.if.end21_crit_edge
  %trigger.0 = phi i32 [ %sub13, %efx_init_rx_recycle_ring.exit.if.end21_crit_edge ], [ %38, %if.then14 ]
  %max_fill22 = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 19
  %39 = ptrtoint ptr %max_fill22 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub, ptr %max_fill22, align 8
  %fast_fill_trigger = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 20
  %40 = ptrtoint ptr %fast_fill_trigger to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %trigger.0, ptr %fast_fill_trigger, align 4
  %refill_enabled = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 5
  %41 = ptrtoint ptr %refill_enabled to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %refill_enabled, align 4
  %xdp_rxq_info = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 28
  %net_dev23 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %42 = ptrtoint ptr %net_dev23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net_dev23, align 4
  %core_index = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 1
  %44 = ptrtoint ptr %core_index to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %core_index, align 4
  %call24 = tail call i32 @xdp_rxq_info_reg(ptr noundef %xdp_rxq_info, ptr noundef %43, i32 noundef %45, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.else36, label %do.body27

do.body27:                                        ; preds = %if.end21
  %46 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_enable, align 4
  %and29 = and i32 %47, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body27.do.end35_crit_edge, label %if.then31

do.body27.do.end35_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end35

if.then31:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %net_dev23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net_dev23, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %49, ptr noundef nonnull @.str.6, i32 noundef %call24) #19
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %do.body27.do.end35_crit_edge
  %xdp_rxq_info_failed = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 126
  %50 = ptrtoint ptr %xdp_rxq_info_failed to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %xdp_rxq_info_failed, align 8
  br label %if.end37

if.else36:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %xdp_rxq_info_valid = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 29
  %51 = ptrtoint ptr %xdp_rxq_info_valid to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %xdp_rxq_info_valid, align 128
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %do.end35
  %52 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rx_queue, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %type.i, align 4
  %rx_init.i = getelementptr inbounds %struct.efx_nic_type, ptr %55, i32 0, i32 60
  %56 = ptrtoint ptr %rx_init.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rx_init.i, align 8
  tail call void %57(ptr noundef %rx_queue) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_fini_rx_queue(ptr noundef %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_fini_rx_queue.__UNIQUE_ID_ddebug532, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_fini_rx_queue, %if.then5)) #15
          to label %do.end10 [label %if.then5], !srcloc !70

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_queue, align 128
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -508
  %8 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_fini_rx_queue.__UNIQUE_ID_ddebug532, ptr noundef %7, ptr noundef nonnull @.str.8, i32 noundef %9) #15
  br label %do.end10

do.end10:                                         ; preds = %if.then5, %do.body1, %entry.do.end10_crit_edge
  %slow_fill = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 24
  %call11 = tail call i32 @del_timer_sync(ptr noundef %slow_fill) #15
  %buffer = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 2
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 8
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %do.end10.if.end16_crit_edge, label %if.then13

do.end10.if.end16_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then13:                                        ; preds = %do.end10
  %removed_count = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 9
  %12 = ptrtoint ptr %removed_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %removed_count, align 16
  %added_count = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 7
  %14 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %added_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp37 = icmp ult i32 %13, %15
  br i1 %cmp37, label %for.body.lr.ph, label %if.then13.if.end16_crit_edge

if.then13.if.end16_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

for.body.lr.ph:                                   ; preds = %if.then13
  %ptr_mask = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ %13, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %16 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ptr_mask, align 32
  %and14 = and i32 %17, %i.038
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 8
  %arrayidx.i = getelementptr %struct.efx_rx_buffer, ptr %19, i32 %and14
  tail call fastcc void @efx_fini_rx_buffer(ptr noundef %rx_queue, ptr noundef %arrayidx.i)
  %inc = add nuw i32 %i.038, 1
  %20 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %added_count, align 8
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end16:                                         ; preds = %for.body.if.end16_crit_edge, %if.then13.if.end16_crit_edge, %do.end10.if.end16_crit_edge
  tail call fastcc void @efx_fini_rx_recycle_ring(ptr noundef %rx_queue)
  %xdp_rxq_info_valid = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 29
  %22 = ptrtoint ptr %xdp_rxq_info_valid to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %xdp_rxq_info_valid, align 128, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool17.not = icmp eq i8 %23, 0
  br i1 %tobool17.not, label %if.end16.if.end19_crit_edge, label %if.then18

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %xdp_rxq_info = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 28
  tail call void @xdp_rxq_info_unreg(ptr noundef %xdp_rxq_info) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16.if.end19_crit_edge
  %24 = ptrtoint ptr %xdp_rxq_info_valid to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %xdp_rxq_info_valid, align 128
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_fini_rx_buffer(ptr nocapture noundef readonly %rx_queue, ptr noundef %rx_buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %page = getelementptr inbounds %struct.efx_rx_buffer, ptr %rx_buf, i32 0, i32 1
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !65

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %7 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !64

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.13) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !66
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !68
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@efx_fini_rx_buffer, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !70

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %6, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end_crit_edge

folio_put_testzero.exit.i.i.if.end_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %6) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.efx_rx_buffer, ptr %rx_buf, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 4
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool2.not = icmp eq i16 %12, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %page, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then3.efx_unmap_rx_buffer.exit_crit_edge, label %if.then.i

if.then3.efx_unmap_rx_buffer.exit_crit_edge:      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %efx_unmap_rx_buffer.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_queue, align 128
  %call.i = tail call ptr @page_address(ptr noundef nonnull %14) #15
  %pci_dev.i = getelementptr inbounds %struct.efx_nic, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call.i, align 128
  %rx_buffer_order.i = getelementptr inbounds %struct.efx_nic, ptr %16, i32 0, i32 54
  %21 = ptrtoint ptr %rx_buffer_order.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_buffer_order.i, align 8
  %shl.i = shl i32 4096, %22
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %20, i32 noundef %shl.i, i32 noundef 2, i32 noundef 0) #15
  br label %efx_unmap_rx_buffer.exit

efx_unmap_rx_buffer.exit:                         ; preds = %if.then.i, %if.then3.efx_unmap_rx_buffer.exit_crit_edge
  tail call void @efx_free_rx_buffers(ptr noundef %rx_queue, ptr noundef %rx_buf, i32 noundef 1)
  br label %if.end4

if.end4:                                          ; preds = %efx_unmap_rx_buffer.exit, %if.end.if.end4_crit_edge
  %23 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %page, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_fini_rx_recycle_ring(ptr nocapture noundef %rx_queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %page_ptr_mask = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 18
  %page_ring = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 12
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 4
  %rx_buffer_order = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 54
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %page_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page_ring, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.015
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call = tail call ptr @page_address(ptr noundef nonnull %5) #15
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call, align 128
  %10 = ptrtoint ptr %rx_buffer_order to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_buffer_order, align 8
  %shl = shl i32 4096, %11
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %9, i32 noundef %shl, i32 noundef 2, i32 noundef 0) #15
  %12 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !65

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %14, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %15, %if.end.i.i ]
  %16 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %17 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i.i.i = icmp eq i32 %18, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !64

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %19 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.13) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !66
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !68
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@efx_fini_rx_recycle_ring, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !70

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %16, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %16) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add i32 %i.015, 1
  %21 = ptrtoint ptr %page_ptr_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %page_ptr_mask, align 4
  %cmp.not = icmp ugt i32 %inc, %22
  br i1 %cmp.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %page_ring to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %page_ring, align 4
  tail call void @kfree(ptr noundef %24) #15
  %25 = ptrtoint ptr %page_ring to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %page_ring, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_rxq_info_unreg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_remove_rx_queue(ptr noundef %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_remove_rx_queue.__UNIQUE_ID_ddebug533, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_remove_rx_queue, %if.then5)) #15
          to label %do.end9 [label %if.then5], !srcloc !70

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_queue, align 128
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -508
  %8 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_remove_rx_queue.__UNIQUE_ID_ddebug533, ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef %9) #15
  br label %do.end9

do.end9:                                          ; preds = %if.then5, %do.body1, %entry.do.end9_crit_edge
  %10 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_queue, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type.i, align 4
  %rx_remove.i = getelementptr inbounds %struct.efx_nic_type, ptr %13, i32 0, i32 61
  %14 = ptrtoint ptr %rx_remove.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_remove.i, align 4
  tail call void %15(ptr noundef %rx_queue) #15
  %buffer = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 2
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 8
  tail call void @kfree(ptr noundef %17) #15
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %buffer, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_unmap_rx_buffer(ptr nocapture noundef readonly %efx, ptr nocapture noundef readonly %rx_buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %page1 = getelementptr inbounds %struct.efx_rx_buffer, ptr %rx_buf, i32 0, i32 1
  %0 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call ptr @page_address(ptr noundef nonnull %1) #15
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call, align 128
  %rx_buffer_order = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 54
  %6 = ptrtoint ptr %rx_buffer_order to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_buffer_order, align 8
  %shl = shl i32 4096, %7
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %5, i32 noundef %shl, i32 noundef 2, i32 noundef 0) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_rx_slow_fill(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -108
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %rx_defer_refill.i = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 63
  %4 = ptrtoint ptr %rx_defer_refill.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_defer_refill.i, align 4
  tail call void %5(ptr noundef %add.ptr) #15
  %slow_fill_count = getelementptr i8, ptr %t, i32 48
  %6 = ptrtoint ptr %slow_fill_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slow_fill_count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %slow_fill_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_schedule_slow_fill(ptr noundef %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %slow_fill = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 1
  %call1 = tail call i32 @mod_timer(ptr noundef %slow_fill, i32 noundef %add) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @efx_rx_config_page_split(ptr nocapture noundef %efx) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma_len = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 53
  %0 = ptrtoint ptr %rx_dma_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_dma_len, align 4
  %rx_ip_align = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 52
  %2 = ptrtoint ptr %rx_ip_align to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_ip_align, align 16
  %add = add i32 %1, 387
  %add3 = add i32 %add, %3
  %and = and i32 %add3, -4
  %rx_page_buf_step = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 56
  %4 = ptrtoint ptr %rx_page_buf_step to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %rx_page_buf_step, align 32
  %rx_buffer_order = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 54
  %5 = ptrtoint ptr %rx_buffer_order to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_buffer_order, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %div = udiv i32 3968, %and
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.false ], [ 1, %entry.cond.end_crit_edge ]
  %rx_bufs_per_page = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 57
  %7 = ptrtoint ptr %rx_bufs_per_page to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %rx_bufs_per_page, align 4
  %shl = shl i32 4096, %6
  %div7 = udiv i32 %shl, %cond
  %rx_buffer_truesize = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 55
  %8 = ptrtoint ptr %rx_buffer_truesize to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div7, ptr %rx_buffer_truesize, align 4
  %9 = trunc i32 %cond to i16
  %div11.lhs.trunc = add nuw nsw i16 %9, 7
  %div1123 = udiv i16 %div11.lhs.trunc, %9
  %div11.zext = zext i16 %div1123 to i32
  %rx_pages_per_batch = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 58
  %10 = ptrtoint ptr %rx_pages_per_batch to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div11.zext, ptr %rx_pages_per_batch, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_fast_push_rx_descriptors(ptr noundef %rx_queue, i1 noundef zeroext %atomic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %refill_enabled = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 5
  %2 = ptrtoint ptr %refill_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %refill_enabled, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %added_count = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 7
  %4 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %added_count, align 8
  %removed_count = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 9
  %6 = ptrtoint ptr %removed_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %removed_count, align 16
  %sub = sub i32 %5, %7
  %fast_fill_trigger = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 20
  %8 = ptrtoint ptr %fast_fill_trigger to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fast_fill_trigger, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp.not = icmp ult i32 %sub, %9
  br i1 %cmp.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end3:                                          ; preds = %if.end
  %min_fill = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 21
  %10 = ptrtoint ptr %min_fill to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_fill, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %11)
  %cmp4 = icmp ult i32 %sub, %11
  br i1 %cmp4, label %if.then7, label %if.end3.if.end12_crit_edge, !prof !64

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %tobool8.not = icmp eq i32 %5, %7
  br i1 %tobool8.not, label %if.then7.if.end12_crit_edge, label %if.then9

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %min_fill to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %min_fill, align 32
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then7.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  %rx_pages_per_batch = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 58
  %13 = ptrtoint ptr %rx_pages_per_batch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_pages_per_batch, align 8
  %rx_bufs_per_page = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 57
  %15 = ptrtoint ptr %rx_bufs_per_page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_bufs_per_page, align 4
  %mul = mul i32 %16, %14
  %max_fill = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 19
  %17 = ptrtoint ptr %max_fill to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_fill, align 8
  %sub13 = sub i32 %18, %sub
  br label %do.body17

do.body17:                                        ; preds = %do.cond28.do.body17_crit_edge, %if.end12
  %space.0 = phi i32 [ %sub13, %if.end12 ], [ %sub29, %do.cond28.do.body17_crit_edge ]
  %call = tail call fastcc i32 @efx_init_rx_buffers(ptr noundef %rx_queue, i1 noundef zeroext %atomic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool19.not = icmp eq i32 %call, 0
  br i1 %tobool19.not, label %do.cond28, label %if.then26, !prof !65

if.then26:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #17
  %slow_fill.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %19, 1
  %call1.i = tail call i32 @mod_timer(ptr noundef %slow_fill.i, i32 noundef %add.i) #15
  br label %out

do.cond28:                                        ; preds = %do.body17
  %sub29 = sub i32 %space.0, %mul
  %cmp30.not = icmp ult i32 %sub29, %mul
  br i1 %cmp30.not, label %do.cond28.out_crit_edge, label %do.cond28.do.body17_crit_edge

do.cond28.do.body17_crit_edge:                    ; preds = %do.cond28
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body17

do.cond28.out_crit_edge:                          ; preds = %do.cond28
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out:                                              ; preds = %do.cond28.out_crit_edge, %if.then26, %if.end.out_crit_edge
  %notified_count = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 8
  %20 = ptrtoint ptr %notified_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %notified_count, align 4
  %22 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %added_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp34.not = icmp eq i32 %21, %23
  br i1 %cmp34.not, label %out.cleanup_crit_edge, label %if.then35

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then35:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_queue, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %type.i, align 4
  %rx_write.i = getelementptr inbounds %struct.efx_nic_type, ptr %27, i32 0, i32 62
  %28 = ptrtoint ptr %rx_write.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_write.i, align 8
  tail call void %29(ptr noundef %rx_queue) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_init_rx_buffers(ptr nocapture noundef %rx_queue, i1 noundef zeroext %atomic) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %or = select i1 %atomic, i32 264736, i32 265408
  %rx_buffer_order = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 54
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 4
  %added_count = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 7
  %ptr_mask = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 4
  %buffer.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 2
  %rx_ip_align = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 52
  %rx_dma_len = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 53
  %rx_page_buf_step = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 56
  %rx_pages_per_batch = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 58
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %inc48, %do.end.do.body_crit_edge ]
  %call = tail call fastcc ptr @efx_reuse_page(ptr noundef %rx_queue)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = ptrtoint ptr %rx_buffer_order to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_buffer_order, align 8
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %or, i32 noundef %3, i32 noundef 0, ptr noundef null) #15
  %cmp3 = icmp eq ptr %call38.i.i.i, null
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.end, !prof !64

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %rx_buffer_order to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_buffer_order, align 8
  %shl = shl i32 4096, %7
  %call8 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef nonnull %call38.i.i.i, i32 noundef 0, i32 noundef %shl, i32 noundef 2, i32 noundef 0) #15
  %8 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev10, i32 noundef %call8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp.i.not = icmp eq i32 %call8, -1
  br i1 %cmp.i.not, label %if.then19, label %if.end21, !prof !64

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %rx_buffer_order to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_buffer_order, align 8
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef %11) #15
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call22 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #15
  %12 = ptrtoint ptr %call22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call8, ptr %call22, align 128
  br label %if.end26

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call24 = tail call ptr @page_address(ptr noundef nonnull %call) #15
  %13 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call24, align 128
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end21
  %dma_addr.0 = phi i32 [ %call8, %if.end21 ], [ %14, %if.else ]
  %page.0 = phi ptr [ %call38.i.i.i, %if.end21 ], [ %call, %if.else ]
  %add = add i32 %dma_addr.0, 128
  %15 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %16 = ptrtoint ptr %page.0 to i32
  br label %do.body27

do.body27:                                        ; preds = %get_page.exit.do.body27_crit_edge, %if.end26
  %page_offset.0 = phi i32 [ 128, %if.end26 ], [ %add41, %get_page.exit.do.body27_crit_edge ]
  %dma_addr.1 = phi i32 [ %add, %if.end26 ], [ %add39, %get_page.exit.do.body27_crit_edge ]
  %17 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %added_count, align 8
  %19 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ptr_mask, align 32
  %and = and i32 %20, %18
  %21 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer.i, align 8
  %arrayidx.i = getelementptr %struct.efx_rx_buffer, ptr %22, i32 %and
  %23 = ptrtoint ptr %rx_ip_align to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_ip_align, align 16
  %add29 = add i32 %dma_addr.1, 128
  %add30 = add i32 %add29, %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add30, ptr %arrayidx.i, align 4
  %page32 = getelementptr %struct.efx_rx_buffer, ptr %22, i32 %and, i32 1
  %26 = ptrtoint ptr %page32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %page.0, ptr %page32, align 4
  %27 = load i32, ptr %rx_ip_align, align 16
  %add34 = add i32 %27, %page_offset.0
  %28 = trunc i32 %add34 to i16
  %conv = add i16 %28, 128
  %page_offset36 = getelementptr %struct.efx_rx_buffer, ptr %22, i32 %and, i32 2
  %29 = ptrtoint ptr %page_offset36 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv, ptr %page_offset36, align 4
  %30 = ptrtoint ptr %rx_dma_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_dma_len, align 4
  %conv37 = trunc i32 %31 to i16
  %len = getelementptr %struct.efx_rx_buffer, ptr %22, i32 %and, i32 3
  %32 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv37, ptr %len, align 2
  %flags = getelementptr %struct.efx_rx_buffer, ptr %22, i32 %and, i32 4
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags, align 4
  %34 = load i32, ptr %added_count, align 8
  %inc = add i32 %34, 1
  store i32 %inc, ptr %added_count, align 8
  %35 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %15, align 4
  %and.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body27._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !65

do.body27._compound_head.exit.i_crit_edge:        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %36, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %do.body27._compound_head.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %do.body27._compound_head.exit.i_crit_edge ]
  %37 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  %38 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %39, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !64

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %40 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.15) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #15, !srcloc !73
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #15
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #15, !srcloc !74
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@efx_init_rx_buffers, %if.then.i.i.i.i)) #15
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !70

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__page_ref_mod(ptr noundef %37, i32 noundef 1) #15
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %42 = ptrtoint ptr %rx_page_buf_step to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_page_buf_step, align 32
  %add39 = add i32 %43, %dma_addr.1
  %add41 = add i32 %43, %page_offset.0
  %add43 = add i32 %add41, %43
  %cmp44 = icmp ult i32 %add43, 4097
  br i1 %cmp44, label %get_page.exit.do.body27_crit_edge, label %do.end

get_page.exit.do.body27_crit_edge:                ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body27

do.end:                                           ; preds = %get_page.exit
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %flags, align 4
  %inc48 = add nuw i32 %count.0, 1
  %45 = ptrtoint ptr %rx_pages_per_batch to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_pages_per_batch, align 8
  %cmp49 = icmp ult i32 %inc48, %46
  br i1 %cmp49, label %do.end.do.body_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

cleanup:                                          ; preds = %do.end.cleanup_crit_edge, %if.then19, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then19 ], [ 0, %do.end.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_rx_packet_gro(ptr noundef %channel, ptr noundef %rx_buf, i32 noundef %n_frags, ptr noundef %eh, i32 noundef %csum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %napi_str = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 8
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %call = tail call ptr @napi_get_frags(ptr noundef %napi_str) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !64

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %rx_queue.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45
  tail call void @efx_free_rx_buffers(ptr noundef %rx_queue.i, ptr noundef %rx_buf, i32 noundef %n_frags)
  br label %cleanup

if.end:                                           ; preds = %entry
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features, align 16
  %and = and i64 %5, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool6.not = icmp eq i64 %and, 0
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type.i, align 4
  %rx_buf_hash_valid.i = getelementptr inbounds %struct.efx_nic_type, ptr %7, i32 0, i32 65
  %8 = ptrtoint ptr %rx_buf_hash_valid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_buf_hash_valid.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %land.lhs.true.if.then8_crit_edge, label %efx_rx_buf_hash_valid.exit

land.lhs.true.if.then8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8

efx_rx_buf_hash_valid.exit:                       ; preds = %land.lhs.true
  %call.i = tail call zeroext i1 %9(ptr noundef %eh) #15
  br i1 %call.i, label %efx_rx_buf_hash_valid.exit.if.then8_crit_edge, label %efx_rx_buf_hash_valid.exit.if.end10_crit_edge

efx_rx_buf_hash_valid.exit.if.end10_crit_edge:    ; preds = %efx_rx_buf_hash_valid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

efx_rx_buf_hash_valid.exit.if.then8_crit_edge:    ; preds = %efx_rx_buf_hash_valid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8

if.then8:                                         ; preds = %efx_rx_buf_hash_valid.exit.if.then8_crit_edge, %land.lhs.true.if.then8_crit_edge
  %rx_packet_hash_offset.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 60
  %10 = ptrtoint ptr %rx_packet_hash_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_packet_hash_offset.i, align 16
  %add.ptr.i = getelementptr i8, ptr %eh, i32 %11
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #15
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15
  %15 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i.i = load i16, ptr %l4_hash.i.i, align 8
  %bf.clear7.i.i = and i16 %bf.load.i.i, -193
  store i16 %bf.clear7.i.i, ptr %l4_hash.i.i, align 8
  %hash10.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 8
  %16 = ptrtoint ptr %hash10.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %hash10.i.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %efx_rx_buf_hash_valid.exit.if.end10_crit_edge, %if.end.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %csum)
  %tobool11.not = icmp eq i32 %csum, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %17 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %csum, ptr %17, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15
  %19 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  br label %if.end20

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.efx_rx_buffer, ptr %rx_buf, i32 0, i32 4
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags, align 4
  %22 = trunc i16 %21 to i8
  %23 = lshr i8 %22, 1
  %ip_summed16 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15
  %24 = ptrtoint ptr %ip_summed16 to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load17 = load i16, ptr %ip_summed16, align 8
  %25 = and i8 %23, 1
  %bf.value = zext i8 %25 to i16
  %bf.shl = shl nuw nsw i16 %bf.value, 9
  %bf.clear18 = and i16 %bf.load17, -1537
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then12
  %bf.clear18.sink = phi i16 [ %bf.clear18, %if.else ], [ 1024, %if.then12 ]
  %bf.shl.sink = phi i16 [ %bf.shl, %if.else ], [ %bf.clear, %if.then12 ]
  %ip_summed16.sink = phi ptr [ %ip_summed16, %if.else ], [ %ip_summed, %if.then12 ]
  %bf.set19 = or i16 %bf.shl.sink, %bf.clear18.sink
  %26 = ptrtoint ptr %ip_summed16.sink to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %bf.set19, ptr %ip_summed16.sink, align 8
  %flags21 = getelementptr inbounds %struct.efx_rx_buffer, ptr %rx_buf, i32 0, i32 4
  %27 = ptrtoint ptr %flags21 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags21, align 4
  %29 = lshr i16 %28, 9
  %csum_level = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 3
  %30 = ptrtoint ptr %csum_level to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %bf.load30 = load i32, ptr %csum_level, align 2
  %31 = and i16 %29, 1
  %bf.value31 = zext i16 %31 to i32
  %bf.shl32 = shl nuw nsw i32 %bf.value31, 28
  %bf.clear33 = and i32 %bf.load30, -805306369
  %bf.set34 = or i32 %bf.shl32, %bf.clear33
  store i32 %bf.set34, ptr %csum_level, align 2
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 17
  %len43 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 12
  %ptr_mask.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 4
  %buffer.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 2
  br label %for.cond

for.cond:                                         ; preds = %if.end49, %if.end20
  %rx_buf.addr.0 = phi ptr [ %rx_buf, %if.end20 ], [ %spec.select.i, %if.end49 ]
  %32 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %nr_frags, align 2
  %conv37 = zext i8 %35 to i32
  %page = getelementptr inbounds %struct.efx_rx_buffer, ptr %rx_buf.addr.0, i32 0, i32 1
  %36 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %page, align 4
  %page_offset = getelementptr inbounds %struct.efx_rx_buffer, ptr %rx_buf.addr.0, i32 0, i32 2
  %38 = ptrtoint ptr %page_offset to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %page_offset, align 4
  %conv38 = zext i16 %39 to i32
  %len = getelementptr inbounds %struct.efx_rx_buffer, ptr %rx_buf.addr.0, i32 0, i32 3
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %len, align 2
  %conv39 = zext i16 %41 to i32
  %arrayidx.i.i = getelementptr %struct.skb_shared_info, ptr %33, i32 0, i32 12, i32 %conv37
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %37, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %33, i32 0, i32 12, i32 %conv37, i32 2
  %43 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv38, ptr %bv_offset.i.i, align 4
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %33, i32 0, i32 12, i32 %conv37, i32 1
  %44 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv39, ptr %bv_len.i.i.i, align 4
  %45 = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %and.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !65

if.then.i.i.i:                                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i = add i32 %47, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %37 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %48, %if.end.i.i.i ]
  %49 = inttoptr i32 %retval.0.i.i.i to ptr
  %50 = getelementptr inbounds %struct.page, ptr %49, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %52 to i32
  %and.i8.i.i = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i8.i.i, 0
  br i1 %tobool.i.not.i.i, label %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge, label %if.then.i.i

_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_fill_page_desc.exit

if.then.i.i:                                      ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %54 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.i.i92 = load i8, ptr %pfmemalloc.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i92, 2
  store i8 %bf.set.i.i, ptr %pfmemalloc.i.i, align 2
  br label %skb_fill_page_desc.exit

skb_fill_page_desc.exit:                          ; preds = %if.then.i.i, %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge
  %conv.i = add i8 %35, 1
  %55 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %end.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv.i, ptr %nr_frags.i, align 2
  %58 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %page, align 4
  %59 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %len, align 2
  %conv42 = zext i16 %60 to i32
  %61 = ptrtoint ptr %len43 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len43, align 4
  %add = add i32 %62, %conv42
  store i32 %add, ptr %len43, align 4
  %63 = load ptr, ptr %end.i, align 4
  %nr_frags45 = getelementptr inbounds %struct.skb_shared_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %nr_frags45 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %nr_frags45, align 2
  %conv46 = zext i8 %65 to i32
  %cmp = icmp eq i32 %conv46, %n_frags
  br i1 %cmp, label %for.end, label %if.end49

if.end49:                                         ; preds = %skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #17
  %66 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ptr_mask.i, align 32
  %68 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buffer.i.i, align 8
  %arrayidx.i.i94 = getelementptr %struct.efx_rx_buffer, ptr %69, i32 %67
  %cmp.i = icmp eq ptr %arrayidx.i.i94, %rx_buf.addr.0
  %add.ptr.i95 = getelementptr %struct.efx_rx_buffer, ptr %rx_buf.addr.0, i32 1
  %spec.select.i = select i1 %cmp.i, ptr %69, ptr %add.ptr.i95, !prof !64
  br label %for.cond

for.end:                                          ; preds = %skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #17
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 7
  %70 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add, ptr %data_len, align 8
  %rx_buffer_truesize = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 55
  %71 = ptrtoint ptr %rx_buffer_truesize to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_buffer_truesize, align 4
  %mul = mul i32 %72, %n_frags
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 20
  %73 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %truesize, align 8
  %add53 = add i32 %74, %mul
  store i32 %add53, ptr %truesize, align 8
  %core_index = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 1
  %75 = ptrtoint ptr %core_index to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %core_index, align 4
  %conv55 = trunc i32 %76 to i16
  %add.i = add i16 %conv55, 1
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 10
  %77 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %add.i, ptr %queue_mapping.i, align 8
  %call56 = tail call i32 @napi_gro_frags(ptr noundef %napi_str) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @napi_get_frags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_frags(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efx_alloc_rss_context_entry(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_context = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64
  %rss_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 65
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %rss_lock) #15
  br i1 %call, label %entry.for.cond.preheader_crit_edge, label %do.end, !prof !65

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 578, i32 noundef 9, ptr noundef null) #15
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end, %entry.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %if.end26.for.cond_crit_edge, %for.cond.preheader
  %id.0 = phi i32 [ %inc, %if.end26.for.cond_crit_edge ], [ 1, %for.cond.preheader ]
  %ctx.0.in = phi ptr [ %ctx.0, %if.end26.for.cond_crit_edge ], [ %rss_context, %for.cond.preheader ]
  %0 = ptrtoint ptr %ctx.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ctx.0 = load ptr, ptr %ctx.0.in, align 4
  %cmp.not = icmp eq ptr %ctx.0, %rss_context
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.cond
  %user_id = getelementptr inbounds %struct.efx_rss_context, ptr %ctx.0, i32 0, i32 2
  %1 = ptrtoint ptr %user_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %user_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %id.0)
  %cmp24.not = icmp eq i32 %2, %id.0
  br i1 %cmp24.not, label %if.end26, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end26:                                         ; preds = %for.body
  %inc = add i32 %id.0, 1
  %tobool27.not = icmp eq i32 %inc, 0
  br i1 %tobool27.not, label %land.rhs, label %if.end26.for.cond_crit_edge

if.end26.for.cond_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

land.rhs:                                         ; preds = %if.end26
  %.b113 = load i1, ptr @efx_alloc_rss_context_entry.__already_done, align 1
  br i1 %.b113, label %land.rhs.cleanup_crit_edge, label %if.then44, !prof !65

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then44:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @efx_alloc_rss_context_entry.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 588, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %ctx.0.lcssa = phi ptr [ %ctx.0, %for.body.for.end_crit_edge ], [ %rss_context, %for.cond.for.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 572) #20
  %tobool88.not = icmp eq ptr %call7.i, null
  br i1 %tobool88.not, label %for.end.cleanup_crit_edge, label %if.end90

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end90:                                         ; preds = %for.end
  %context_id = getelementptr inbounds %struct.efx_rss_context, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %context_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %context_id, align 8
  %rx_hash_udp_4tuple = getelementptr inbounds %struct.efx_rss_context, ptr %call7.i, i32 0, i32 3
  %5 = ptrtoint ptr %rx_hash_udp_4tuple to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %rx_hash_udp_4tuple, align 8
  %user_id91 = getelementptr inbounds %struct.efx_rss_context, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %user_id91 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %id.0, ptr %user_id91, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ctx.0.lcssa, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %8, ptr noundef %ctx.0.lcssa) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end90.cleanup_crit_edge

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %prev.i, align 4
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ctx.0.lcssa, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i, ptr %8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end90.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then44, %land.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then44 ], [ null, %for.end.cleanup_crit_edge ], [ null, %land.rhs.cleanup_crit_edge ], [ %call7.i, %if.end90.cleanup_crit_edge ], [ %call7.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efx_find_rss_context_entry(ptr noundef %efx, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_context = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64
  %rss_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 65
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %rss_lock) #15
  br i1 %call, label %entry.for.cond.preheader_crit_edge, label %do.end, !prof !65

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 610, i32 noundef 9, ptr noundef null) #15
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end, %entry.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %ctx.0.in = phi ptr [ %ctx.0, %for.body.for.cond_crit_edge ], [ %rss_context, %for.cond.preheader ]
  %0 = ptrtoint ptr %ctx.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ctx.0 = load ptr, ptr %ctx.0.in, align 4
  %cmp.not = icmp eq ptr %ctx.0, %rss_context
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %user_id = getelementptr inbounds %struct.efx_rss_context, ptr %ctx.0, i32 0, i32 2
  %1 = ptrtoint ptr %user_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %user_id, align 4
  %cmp24 = icmp eq i32 %2, %id
  br i1 %cmp24, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %ctx.0, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_free_rss_context_entry(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ctx) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %ctx, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %ctx) #15
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_set_default_rx_indir_table(ptr nocapture noundef readonly %efx, ptr nocapture noundef writeonly %ctx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_spread = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %rss_spread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rss_spread, align 16
  %rem.i = urem i32 %i.04, %1
  %arrayidx = getelementptr %struct.efx_rss_context, ptr %ctx, i32 0, i32 5, i32 %i.04
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rem.i, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @efx_filter_is_mc_recipient(ptr nocapture noundef readonly %spec) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %spec, align 4
  %1 = and i32 %bf.load, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %bf.clear2 = and i32 %bf.load, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %bf.clear2)
  %cmp = icmp eq i32 %bf.clear2, 4095
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %2 = and i32 %bf.load, 1090519040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool6.not = icmp eq i32 %2, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %loc_mac = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 4
  %3 = ptrtoint ptr %loc_mac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %loc_mac, align 4
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %6 = and i32 %bf.load, 69206016
  call void @__sanitizer_cov_trace_const_cmp4(i32 69206016, i32 %6)
  %cmp12 = icmp eq i32 %6, 69206016
  br i1 %cmp12, label %if.then13, label %if.end8.if.end34_crit_edge

if.end8.if.end34_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then13:                                        ; preds = %if.end8
  %ether_type = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 6
  %7 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ether_type, align 4
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %if.then13.if.end34_crit_edge [
    i16 2048, label %land.lhs.true16
    i16 -31011, label %land.lhs.true25
  ]

if.then13.if.end34_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

land.lhs.true16:                                  ; preds = %if.then13
  %loc_host = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 8
  %10 = ptrtoint ptr %loc_host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %loc_host, align 4
  %and.i = and i32 %11, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %land.lhs.true16.return_crit_edge, label %land.lhs.true16.if.end34_crit_edge

land.lhs.true16.if.end34_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

land.lhs.true16.return_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true25:                                  ; preds = %if.then13
  %loc_host26 = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 8
  %12 = ptrtoint ptr %loc_host26 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %loc_host26, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp30 = icmp eq i8 %13, -1
  br i1 %cmp30, label %land.lhs.true25.return_crit_edge, label %land.lhs.true25.if.end34_crit_edge

land.lhs.true25.if.end34_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

land.lhs.true25.return_crit_edge:                 ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end34:                                         ; preds = %land.lhs.true25.if.end34_crit_edge, %land.lhs.true16.if.end34_crit_edge, %if.then13.if.end34_crit_edge, %if.end8.if.end34_crit_edge
  br label %return

return:                                           ; preds = %if.end34, %land.lhs.true25.return_crit_edge, %land.lhs.true16.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end34 ], [ false, %entry.return_crit_edge ], [ true, %land.lhs.true.return_crit_edge ], [ true, %land.lhs.true16.return_crit_edge ], [ true, %land.lhs.true25.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @efx_filter_spec_equal(ptr nocapture noundef readonly %left, ptr nocapture noundef readonly %right) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %left, align 4
  %1 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load1 = load i32, ptr %right, align 4
  %bf.lshr14 = xor i32 %bf.load1, %bf.load
  %xor = lshr i32 %bf.lshr14, 20
  %bf.clear15 = lshr i32 %bf.lshr14, 12
  %and = and i32 %bf.clear15, 24
  %or = or i32 %and, %xor
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %outer_vid = getelementptr inbounds %struct.efx_filter_spec, ptr %left, i32 0, i32 2
  %outer_vid9 = getelementptr inbounds %struct.efx_filter_spec, ptr %right, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(60) %outer_vid, ptr noundef dereferenceable(60) %outer_vid9, i32 60) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_filter_spec_hash(ptr nocapture noundef readonly %spec) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %outer_vid = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %c.017.i = phi i32 [ -559038677, %entry ], [ %xor26.i, %while.body.i.while.body.i_crit_edge ]
  %b.016.i = phi i32 [ -559038677, %entry ], [ %add27.i, %while.body.i.while.body.i_crit_edge ]
  %a.015.i = phi i32 [ -559038677, %entry ], [ %add23.i, %while.body.i.while.body.i_crit_edge ]
  %k.addr.014.i = phi ptr [ %outer_vid, %entry ], [ %add.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %length.addr.013.i = phi i32 [ 15, %entry ], [ %sub28.i, %while.body.i.while.body.i_crit_edge ]
  %0 = ptrtoint ptr %k.addr.014.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %k.addr.014.i, align 4
  %add2.i = add i32 %1, %a.015.i
  %arrayidx3.i = getelementptr i32, ptr %k.addr.014.i, i32 1
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %3, %b.016.i
  %arrayidx5.i = getelementptr i32, ptr %k.addr.014.i, i32 2
  %4 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5.i, align 4
  %add6.i = add i32 %5, %c.017.i
  %sub.i = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #15
  %xor.i = xor i32 %sub.i, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #15
  %xor10.i = xor i32 %sub8.i, %or.i1.i
  %add11.i = add i32 %xor.i, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #15
  %xor14.i = xor i32 %sub12.i, %or.i2.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #15
  %xor18.i = xor i32 %sub16.i, %or.i3.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i4.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #15
  %xor22.i = xor i32 %sub20.i, %or.i4.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #15
  %xor26.i = xor i32 %sub24.i, %or.i5.i
  %add27.i = add i32 %xor22.i, %add23.i
  %sub28.i = add nsw i32 %length.addr.013.i, -3
  %add.ptr.i = getelementptr i32, ptr %k.addr.014.i, i32 3
  %cmp.i = icmp ugt i32 %sub28.i, 3
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %jhash2.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

jhash2.exit:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %uglygep18.i = getelementptr %struct.efx_filter_spec, ptr %spec, i32 0, i32 9, i32 3
  %arrayidx29.i = getelementptr %struct.efx_filter_spec, ptr %spec, i32 0, i32 12
  %6 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx29.i, align 4
  %add30.i = add i32 %7, %xor26.i
  %arrayidx32.i = getelementptr %struct.efx_filter_spec, ptr %spec, i32 0, i32 10
  %8 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %9, %add27.i
  %10 = ptrtoint ptr %uglygep18.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uglygep18.i, align 4
  %add36.i = add i32 %11, %add23.i
  %xor37.i = xor i32 %add33.i, %add30.i
  %or.i6.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #15
  %sub39.i = sub i32 %xor37.i, %or.i6.i
  %xor40.i = xor i32 %sub39.i, %add36.i
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #15
  %sub42.i = sub i32 %xor40.i, %or.i7.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i8.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #15
  %sub45.i = sub i32 %xor43.i, %or.i8.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #15
  %sub48.i = sub i32 %xor46.i, %or.i9.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i10.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #15
  %sub51.i = sub i32 %xor49.i, %or.i10.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i11.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #15
  %sub54.i = sub i32 %xor52.i, %or.i11.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i12.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #15
  %sub57.i = sub i32 %xor55.i, %or.i12.i
  ret i32 %sub57.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @efx_rps_check_rule(ptr nocapture noundef %rule, i32 noundef %filter_idx, ptr nocapture noundef writeonly %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_id = getelementptr inbounds %struct.efx_arfs_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %filter_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %filter_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %1)
  %cmp2 = icmp eq i32 %1, -2
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %filter_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -3, ptr %filter_id, align 4
  br label %return.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %filter_idx)
  %cmp6.not = icmp eq i32 %1, %filter_idx
  br i1 %cmp6.not, label %if.else.return_crit_edge, label %do.end, !prof !65

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 705, i32 noundef 9, ptr noundef null) #15
  br label %return.sink.split

return.sink.split:                                ; preds = %do.end, %if.then3
  %3 = ptrtoint ptr %force to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %force, align 1
  br label %return

return:                                           ; preds = %return.sink.split, %if.else.return_crit_edge, %entry.return_crit_edge
  %4 = xor i1 %cmp, true
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efx_rps_hash_find(ptr noundef %efx, ptr nocapture noundef readonly %spec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @efx_filter_spec_hash(ptr noundef %spec) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.efx_rps_hash_bucket.exit_crit_edge, label %land.rhs.i

entry.efx_rps_hash_bucket.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %efx_rps_hash_bucket.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 113, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.efx_rps_hash_bucket.exit_crit_edge, !prof !64

land.rhs.i.efx_rps_hash_bucket.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %efx_rps_hash_bucket.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 723, i32 noundef 9, ptr noundef null) #15
  br label %efx_rps_hash_bucket.exit

efx_rps_hash_bucket.exit:                         ; preds = %do.end.i, %land.rhs.i.efx_rps_hash_bucket.exit_crit_edge, %entry.efx_rps_hash_bucket.exit_crit_edge
  %rps_hash_table.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 114
  %1 = ptrtoint ptr %rps_hash_table.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rps_hash_table.i, align 8
  %tobool25.not.i = icmp eq ptr %2, null
  %rem.i = and i32 %call.i, 511
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %2, i32 %rem.i
  %tobool.not15 = icmp eq ptr %arrayidx.i, null
  %tobool.not = select i1 %tobool25.not.i, i1 true, i1 %tobool.not15
  br i1 %tobool.not, label %efx_rps_hash_bucket.exit.cleanup_crit_edge, label %for.cond.preheader

efx_rps_hash_bucket.exit.cleanup_crit_edge:       ; preds = %efx_rps_hash_bucket.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %efx_rps_hash_bucket.exit
  %outer_vid.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %node.016 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not17 = icmp eq ptr %node.016, null
  br i1 %tobool1.not17, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %4 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %spec, align 4
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %node.018 = phi ptr [ %node.016, %for.body.lr.ph ], [ %node.0, %for.cond.backedge.for.body_crit_edge ]
  %spec2 = getelementptr inbounds %struct.efx_arfs_rule, ptr %node.018, i32 0, i32 1
  %5 = ptrtoint ptr %spec2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load1.i = load i32, ptr %spec2, align 4
  %bf.lshr14.i = xor i32 %bf.load1.i, %bf.load.i
  %xor.i = lshr i32 %bf.lshr14.i, 20
  %bf.clear15.i = lshr i32 %bf.lshr14.i, 12
  %and.i = and i32 %bf.clear15.i, 24
  %or.i = or i32 %and.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i13 = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i13, label %if.end.i, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge

if.end.i:                                         ; preds = %for.body
  %outer_vid9.i = getelementptr inbounds %struct.efx_arfs_rule, ptr %node.018, i32 0, i32 1, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(60) %outer_vid.i, ptr noundef dereferenceable(60) %outer_vid9.i, i32 60) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.cond.backedge_crit_edge

if.end.i.for.cond.backedge_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.backedge:                                ; preds = %if.end.i.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %6 = ptrtoint ptr %node.018 to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.0 = load ptr, ptr %node.018, align 4
  %tobool1.not = icmp eq ptr %node.0, null
  br i1 %tobool1.not, label %for.cond.backedge.cleanup_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.cond.backedge.cleanup_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.cond.backedge.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %efx_rps_hash_bucket.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %efx_rps_hash_bucket.exit.cleanup_crit_edge ], [ null, %for.cond.preheader.cleanup_crit_edge ], [ null, %for.cond.backedge.cleanup_crit_edge ], [ %node.018, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efx_rps_hash_add(ptr noundef %efx, ptr nocapture noundef readonly %spec, ptr nocapture noundef writeonly %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @efx_filter_spec_hash(ptr noundef %spec) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.efx_rps_hash_bucket.exit_crit_edge, label %land.rhs.i

entry.efx_rps_hash_bucket.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %efx_rps_hash_bucket.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 113, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.efx_rps_hash_bucket.exit_crit_edge, !prof !64

land.rhs.i.efx_rps_hash_bucket.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %efx_rps_hash_bucket.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 723, i32 noundef 9, ptr noundef null) #15
  br label %efx_rps_hash_bucket.exit

efx_rps_hash_bucket.exit:                         ; preds = %do.end.i, %land.rhs.i.efx_rps_hash_bucket.exit_crit_edge, %entry.efx_rps_hash_bucket.exit_crit_edge
  %rps_hash_table.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 114
  %1 = ptrtoint ptr %rps_hash_table.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rps_hash_table.i, align 8
  %tobool25.not.i = icmp eq ptr %2, null
  %rem.i = and i32 %call.i, 511
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %2, i32 %rem.i
  %tobool.not33 = icmp eq ptr %arrayidx.i, null
  %tobool.not = select i1 %tobool25.not.i, i1 true, i1 %tobool.not33
  br i1 %tobool.not, label %efx_rps_hash_bucket.exit.cleanup_crit_edge, label %for.cond.preheader

efx_rps_hash_bucket.exit.cleanup_crit_edge:       ; preds = %efx_rps_hash_bucket.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %efx_rps_hash_bucket.exit
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %node.030 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not31 = icmp eq ptr %node.030, null
  br i1 %tobool1.not31, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %4 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %spec, align 4
  %outer_vid.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %node.032 = phi ptr [ %node.030, %for.body.lr.ph ], [ %node.0, %for.cond.backedge.for.body_crit_edge ]
  %spec2 = getelementptr inbounds %struct.efx_arfs_rule, ptr %node.032, i32 0, i32 1
  %5 = ptrtoint ptr %spec2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load1.i = load i32, ptr %spec2, align 4
  %bf.lshr14.i = xor i32 %bf.load1.i, %bf.load.i
  %xor.i = lshr i32 %bf.lshr14.i, 20
  %bf.clear15.i = lshr i32 %bf.lshr14.i, 12
  %and.i = and i32 %bf.clear15.i, 24
  %or.i = or i32 %and.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i26 = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i26, label %if.end.i, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge

if.end.i:                                         ; preds = %for.body
  %outer_vid9.i = getelementptr inbounds %struct.efx_arfs_rule, ptr %node.032, i32 0, i32 1, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(60) %outer_vid.i, ptr noundef dereferenceable(60) %outer_vid9.i, i32 60) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.then4, label %if.end.i.for.cond.backedge_crit_edge

if.end.i.for.cond.backedge_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end.i.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %6 = ptrtoint ptr %node.032 to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.0 = load ptr, ptr %node.032, align 4
  %tobool1.not = icmp eq ptr %node.0, null
  br i1 %tobool1.not, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.then4:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %new to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %new, align 1
  br label %cleanup

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2592, i32 noundef 84) #20
  %9 = ptrtoint ptr %new to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %new, align 1
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %for.end.cleanup_crit_edge, label %if.then8

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then8:                                         ; preds = %for.end
  %spec9 = getelementptr inbounds %struct.efx_arfs_rule, ptr %call7.i, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %spec9, ptr %spec, i32 68)
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %call7.i, align 8
  %tobool.not.i28 = icmp eq ptr %12, null
  br i1 %tobool.not.i28, label %if.then8.hlist_add_head.exit_crit_edge, label %do.body12.i

if.then8.hlist_add_head.exit_crit_edge:           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.then8.hlist_add_head.exit_crit_edge
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i, ptr %arrayidx.i, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %arrayidx.i, ptr %pprev34.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head.exit, %for.end.cleanup_crit_edge, %if.then4, %efx_rps_hash_bucket.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %node.032, %if.then4 ], [ null, %efx_rps_hash_bucket.exit.cleanup_crit_edge ], [ %call7.i, %hlist_add_head.exit ], [ null, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_rps_hash_del(ptr noundef %efx, ptr nocapture noundef readonly %spec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @efx_filter_spec_hash(ptr noundef %spec) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.efx_rps_hash_bucket.exit_crit_edge, label %land.rhs.i

entry.efx_rps_hash_bucket.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %efx_rps_hash_bucket.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 113, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.efx_rps_hash_bucket.exit_crit_edge, !prof !64

land.rhs.i.efx_rps_hash_bucket.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %efx_rps_hash_bucket.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 723, i32 noundef 9, ptr noundef null) #15
  br label %efx_rps_hash_bucket.exit

efx_rps_hash_bucket.exit:                         ; preds = %do.end.i, %land.rhs.i.efx_rps_hash_bucket.exit_crit_edge, %entry.efx_rps_hash_bucket.exit_crit_edge
  %rps_hash_table.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 114
  %1 = ptrtoint ptr %rps_hash_table.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rps_hash_table.i, align 8
  %tobool25.not.i = icmp eq ptr %2, null
  %rem.i = and i32 %call.i, 511
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %2, i32 %rem.i
  %tobool.not71 = icmp eq ptr %arrayidx.i, null
  %tobool.not = select i1 %tobool25.not.i, i1 true, i1 %tobool.not71
  br i1 %tobool.not, label %do.end, label %for.cond.preheader, !prof !64

for.cond.preheader:                               ; preds = %efx_rps_hash_bucket.exit
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %node.073 = load ptr, ptr %arrayidx.i, align 4
  %tobool24.not74 = icmp eq ptr %node.073, null
  br i1 %tobool24.not74, label %for.cond.preheader.do.end44_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.end44_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end44

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %4 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %spec, align 4
  %outer_vid.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 2
  br label %for.body

do.end:                                           ; preds = %efx_rps_hash_bucket.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 781, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %node.075 = phi ptr [ %node.073, %for.body.lr.ph ], [ %node.0, %for.cond.backedge.for.body_crit_edge ]
  %spec26 = getelementptr inbounds %struct.efx_arfs_rule, ptr %node.075, i32 0, i32 1
  %5 = ptrtoint ptr %spec26 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load1.i = load i32, ptr %spec26, align 4
  %bf.lshr14.i = xor i32 %bf.load1.i, %bf.load.i
  %xor.i = lshr i32 %bf.lshr14.i, 20
  %bf.clear15.i = lshr i32 %bf.lshr14.i, 12
  %and.i = and i32 %bf.clear15.i, 24
  %or.i = or i32 %and.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i69 = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i69, label %if.end.i, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge

if.end.i:                                         ; preds = %for.body
  %outer_vid9.i = getelementptr inbounds %struct.efx_arfs_rule, ptr %node.075, i32 0, i32 1, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(60) %outer_vid.i, ptr noundef dereferenceable(60) %outer_vid9.i, i32 60) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.then28, label %if.end.i.for.cond.backedge_crit_edge

if.end.i.for.cond.backedge_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end.i.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %6 = ptrtoint ptr %node.075 to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.0 = load ptr, ptr %node.075, align 4
  %tobool24.not = icmp eq ptr %node.0, null
  br i1 %tobool24.not, label %for.cond.backedge.do.end44_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.cond.backedge.do.end44_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end44

if.then28:                                        ; preds = %if.end.i
  %filter_id = getelementptr inbounds %struct.efx_arfs_rule, ptr %node.075, i32 0, i32 4
  %7 = ptrtoint ptr %filter_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %filter_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %8)
  %cmp.not = icmp eq i32 %8, -3
  br i1 %cmp.not, label %if.end30, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end30:                                         ; preds = %if.then28
  %9 = ptrtoint ptr %node.075 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node.075, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %node.075, i32 0, i32 1
  %11 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pprev2.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %10, ptr %12, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end30.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end30.hlist_del.exit_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end30.hlist_del.exit_crit_edge
  %15 = ptrtoint ptr %node.075 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %node.075, align 4
  %16 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %node.075) #15
  br label %cleanup

do.end44:                                         ; preds = %for.cond.backedge.do.end44_crit_edge, %for.cond.preheader.do.end44_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 800, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %hlist_del.exit, %if.then28.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_probe_filters(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 78
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #15
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @down_write(ptr noundef %filter_sem) #15
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %filter_table_probe = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 73
  %2 = ptrtoint ptr %filter_table_probe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filter_table_probe, align 4
  %call = tail call i32 %3(ptr noundef %efx) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %offload_features = getelementptr inbounds %struct.efx_nic_type, ptr %5, i32 0, i32 134
  %6 = ptrtoint ptr %offload_features to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offload_features, align 8
  %and = and i64 %7, 274877906944
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %if.end.out_unlock_crit_edge, label %if.then3

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.then3:                                         ; preds = %if.end
  %channel4 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %8 = ptrtoint ptr %channel4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channel4, align 8
  %tobool5.not92 = icmp eq ptr %9, null
  br i1 %tobool5.not92, label %if.then3.out_unlock_crit_edge, label %for.body.lr.ph

if.then3.out_unlock_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

for.body.lr.ph:                                   ; preds = %if.then3
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %success.095 = phi i32 [ 1, %for.body.lr.ph ], [ %success.1, %cond.end.for.body_crit_edge ]
  %channel.093 = phi ptr [ %9, %for.body.lr.ph ], [ %37, %cond.end.for.body_crit_edge ]
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type, align 4
  %max_rx_ip_filters = getelementptr inbounds %struct.efx_nic_type, ptr %11, i32 0, i32 136
  %12 = ptrtoint ptr %max_rx_ip_filters to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_rx_ip_filters, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 4) #15
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !64

kcalloc.exit.thread:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %rps_flow_id87 = getelementptr inbounds %struct.efx_channel, ptr %channel.093, i32 0, i32 22
  %16 = ptrtoint ptr %rps_flow_id87 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rps_flow_id87, align 4
  br label %if.end17

if.end7.i.i:                                      ; preds = %for.body
  %17 = extractvalue { i32, i1 } %14, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #18
  %rps_flow_id = getelementptr inbounds %struct.efx_channel, ptr %channel.093, i32 0, i32 22
  %18 = ptrtoint ptr %rps_flow_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8.i.i, ptr %rps_flow_id, align 4
  %tobool9.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not, label %if.end7.i.i.if.end17_crit_edge, label %for.cond11.preheader

if.end7.i.i.if.end17_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

for.cond11.preheader:                             ; preds = %if.end7.i.i
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %type, align 4
  %max_rx_ip_filters1389 = getelementptr inbounds %struct.efx_nic_type, ptr %20, i32 0, i32 136
  %21 = ptrtoint ptr %max_rx_ip_filters1389 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_rx_ip_filters1389, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp90.not = icmp eq i32 %22, 0
  br i1 %cmp90.not, label %for.cond11.preheader.if.end17_crit_edge, label %for.cond11.preheader.for.body14_crit_edge

for.cond11.preheader.for.body14_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body14

for.cond11.preheader.if.end17_crit_edge:          ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.cond11.preheader.for.body14_crit_edge
  %i.091 = phi i32 [ %inc, %for.body14.for.body14_crit_edge ], [ 0, %for.cond11.preheader.for.body14_crit_edge ]
  %23 = ptrtoint ptr %rps_flow_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rps_flow_id, align 4
  %arrayidx16 = getelementptr i32, ptr %24, i32 %i.091
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %arrayidx16, align 4
  %inc = add nuw i32 %i.091, 1
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %type, align 4
  %max_rx_ip_filters13 = getelementptr inbounds %struct.efx_nic_type, ptr %27, i32 0, i32 136
  %28 = ptrtoint ptr %max_rx_ip_filters13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_rx_ip_filters13, align 4
  %cmp = icmp ult i32 %inc, %29
  br i1 %cmp, label %for.body14.for.body14_crit_edge, label %for.body14.if.end17_crit_edge

for.body14.if.end17_crit_edge:                    ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body14

if.end17:                                         ; preds = %for.body14.if.end17_crit_edge, %for.cond11.preheader.if.end17_crit_edge, %if.end7.i.i.if.end17_crit_edge, %kcalloc.exit.thread
  %success.1 = phi i32 [ 0, %if.end7.i.i.if.end17_crit_edge ], [ 0, %kcalloc.exit.thread ], [ %success.095, %for.cond11.preheader.if.end17_crit_edge ], [ %success.095, %for.body14.if.end17_crit_edge ]
  %rfs_expire_index = getelementptr inbounds %struct.efx_channel, ptr %channel.093, i32 0, i32 18
  %30 = ptrtoint ptr %rfs_expire_index to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %rfs_expire_index, align 4
  %rfs_filter_count = getelementptr inbounds %struct.efx_channel, ptr %channel.093, i32 0, i32 16
  %31 = ptrtoint ptr %rfs_filter_count to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %rfs_filter_count, align 4
  %channel19 = getelementptr inbounds %struct.efx_channel, ptr %channel.093, i32 0, i32 1
  %32 = ptrtoint ptr %channel19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel19, align 4
  %add = add i32 %33, 1
  %34 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %35)
  %cmp20 = icmp ult i32 %add, %35
  br i1 %cmp20, label %cond.end, label %if.end17.for.end25_crit_edge

if.end17.for.end25_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end25

cond.end:                                         ; preds = %if.end17
  %arrayidx24 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %36 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx24, align 4
  %tobool5.not = icmp eq ptr %37, null
  br i1 %tobool5.not, label %cond.end.for.end25_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cond.end.for.end25_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end25

for.end25:                                        ; preds = %cond.end.for.end25_crit_edge, %if.end17.for.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %success.1)
  %tobool26.not = icmp eq i32 %success.1, 0
  br i1 %tobool26.not, label %if.then27, label %for.end25.out_unlock_crit_edge

for.end25.out_unlock_crit_edge:                   ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.then27:                                        ; preds = %for.end25
  %38 = ptrtoint ptr %channel4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %channel4, align 8
  %tobool31.not96 = icmp eq ptr %39, null
  br i1 %tobool31.not96, label %if.then27.for.end47_crit_edge, label %for.body32.lr.ph

if.then27.for.end47_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end47

for.body32.lr.ph:                                 ; preds = %if.then27
  %n_channels37 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body32

for.body32:                                       ; preds = %cond.end45.for.body32_crit_edge, %for.body32.lr.ph
  %channel.197 = phi ptr [ %39, %for.body32.lr.ph ], [ %47, %cond.end45.for.body32_crit_edge ]
  %rps_flow_id33 = getelementptr inbounds %struct.efx_channel, ptr %channel.197, i32 0, i32 22
  %40 = ptrtoint ptr %rps_flow_id33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rps_flow_id33, align 4
  tail call void @kfree(ptr noundef %41) #15
  %channel35 = getelementptr inbounds %struct.efx_channel, ptr %channel.197, i32 0, i32 1
  %42 = ptrtoint ptr %channel35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %channel35, align 4
  %add36 = add i32 %43, 1
  %44 = ptrtoint ptr %n_channels37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n_channels37, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add36, i32 %45)
  %cmp38 = icmp ult i32 %add36, %45
  br i1 %cmp38, label %cond.end45, label %for.body32.for.end47_crit_edge

for.body32.for.end47_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end47

cond.end45:                                       ; preds = %for.body32
  %arrayidx43 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add36
  %46 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx43, align 4
  %tobool31.not = icmp eq ptr %47, null
  br i1 %tobool31.not, label %cond.end45.for.end47_crit_edge, label %cond.end45.for.body32_crit_edge

cond.end45.for.body32_crit_edge:                  ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body32

cond.end45.for.end47_crit_edge:                   ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end47

for.end47:                                        ; preds = %cond.end45.for.end47_crit_edge, %for.body32.for.end47_crit_edge, %if.then27.for.end47_crit_edge
  %48 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %type, align 4
  %filter_table_remove = getelementptr inbounds %struct.efx_nic_type, ptr %49, i32 0, i32 75
  %50 = ptrtoint ptr %filter_table_remove to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %filter_table_remove, align 4
  tail call void %51(ptr noundef %efx) #15
  br label %out_unlock

out_unlock:                                       ; preds = %for.end47, %for.end25.out_unlock_crit_edge, %if.then3.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %rc.1 = phi i32 [ %call, %entry.out_unlock_crit_edge ], [ 0, %if.end.out_unlock_crit_edge ], [ -12, %for.end47 ], [ 0, %for.end25.out_unlock_crit_edge ], [ 0, %if.then3.out_unlock_crit_edge ]
  tail call void @up_write(ptr noundef %filter_sem) #15
  tail call void @mutex_unlock(ptr noundef %mac_lock) #15
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_remove_filters(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 8
  %tobool.not20 = icmp eq ptr %1, null
  br i1 %tobool.not20, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.021 = phi ptr [ %1, %for.body.lr.ph ], [ %10, %cond.end.for.body_crit_edge ]
  %filter_work = getelementptr inbounds %struct.efx_channel, ptr %channel.021, i32 0, i32 21
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %filter_work) #15
  %rps_flow_id = getelementptr inbounds %struct.efx_channel, ptr %channel.021, i32 0, i32 22
  %2 = ptrtoint ptr %rps_flow_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rps_flow_id, align 4
  tail call void @kfree(ptr noundef %3) #15
  %4 = ptrtoint ptr %rps_flow_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rps_flow_id, align 4
  %channel3 = getelementptr inbounds %struct.efx_channel, ptr %channel.021, i32 0, i32 1
  %5 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel3, align 4
  %add = add i32 %6, 1
  %7 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp = icmp ult i32 %add, %8
  br i1 %cmp, label %cond.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cond.end:                                         ; preds = %for.body
  %arrayidx7 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx7, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @down_write(ptr noundef %filter_sem) #15
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type, align 4
  %filter_table_remove = getelementptr inbounds %struct.efx_nic_type, ptr %12, i32 0, i32 75
  %13 = ptrtoint ptr %filter_table_remove to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %filter_table_remove, align 4
  tail call void %14(ptr noundef %efx) #15
  tail call void @up_write(ptr noundef %filter_sem) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_filter_rfs(ptr noundef %net_dev, ptr noundef %skb, i16 noundef zeroext %rxq_index, i32 noundef %flow_id) local_unnamed_addr #0 align 64 {
entry:
  %fk = alloca %struct.flow_keys, align 8
  %new = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fk) #15
  %0 = call ptr @memset(ptr %fk, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new) #15
  %1 = ptrtoint ptr %new to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %new, align 1, !annotation !75
  %rps_slot_map = getelementptr i8, ptr %net_dev, i32 5112
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %rps_slot_map) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %for.inc

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

for.inc:                                          ; preds = %entry
  %call1.1 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %rps_slot_map) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %tobool.not.1 = icmp eq i32 %call1.1, 0
  br i1 %tobool.not.1, label %for.inc.if.end4_crit_edge, label %for.inc.1

for.inc.if.end4_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

for.inc.1:                                        ; preds = %for.inc
  %call1.2 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %rps_slot_map) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %tobool.not.2 = icmp eq i32 %call1.2, 0
  br i1 %tobool.not.2, label %for.inc.1.if.end4_crit_edge, label %for.inc.2

for.inc.1.if.end4_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

for.inc.2:                                        ; preds = %for.inc.1
  %call1.3 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %rps_slot_map) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %tobool.not.3 = icmp eq i32 %call1.3, 0
  br i1 %tobool.not.3, label %for.inc.2.if.end4_crit_edge, label %for.inc.3

for.inc.2.if.end4_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

for.inc.3:                                        ; preds = %for.inc.2
  %call1.4 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %rps_slot_map) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4)
  %tobool.not.4 = icmp eq i32 %call1.4, 0
  br i1 %tobool.not.4, label %for.inc.3.if.end4_crit_edge, label %for.inc.4

for.inc.3.if.end4_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

for.inc.4:                                        ; preds = %for.inc.3
  %call1.5 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %rps_slot_map) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.5)
  %tobool.not.5 = icmp eq i32 %call1.5, 0
  br i1 %tobool.not.5, label %for.inc.4.if.end4_crit_edge, label %for.inc.5

for.inc.4.if.end4_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

for.inc.5:                                        ; preds = %for.inc.4
  %call1.6 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %rps_slot_map) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.6)
  %tobool.not.6 = icmp eq i32 %call1.6, 0
  br i1 %tobool.not.6, label %for.inc.5.if.end4_crit_edge, label %for.inc.6

for.inc.5.if.end4_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

for.inc.6:                                        ; preds = %for.inc.5
  %call1.7 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %rps_slot_map) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.7)
  %tobool.not.7 = icmp eq i32 %call1.7, 0
  br i1 %tobool.not.7, label %for.inc.6.if.end4_crit_edge, label %for.inc.6.cleanup_crit_edge

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.6.if.end4_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.end4:                                          ; preds = %for.inc.6.if.end4_crit_edge, %for.inc.5.if.end4_crit_edge, %for.inc.4.if.end4_crit_edge, %for.inc.3.if.end4_crit_edge, %for.inc.2.if.end4_crit_edge, %for.inc.1.if.end4_crit_edge, %for.inc.if.end4_crit_edge, %entry.if.end4_crit_edge
  %slot_idx.0162.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 1, %for.inc.if.end4_crit_edge ], [ 2, %for.inc.1.if.end4_crit_edge ], [ 3, %for.inc.2.if.end4_crit_edge ], [ 4, %for.inc.3.if.end4_crit_edge ], [ 5, %for.inc.4.if.end4_crit_edge ], [ 6, %for.inc.5.if.end4_crit_edge ], [ 7, %for.inc.6.if.end4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %flow_id)
  %cmp5 = icmp eq i32 %flow_id, -1
  br i1 %cmp5, label %if.end4.out_clear_crit_edge, label %if.end7

if.end4.out_clear_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_clear

if.end7:                                          ; preds = %if.end4
  %2 = call ptr @memset(ptr %fk, i32 0, i32 72)
  %call.i = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %skb, ptr noundef nonnull @flow_keys_dissector, ptr noundef nonnull %fk, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  br i1 %call.i, label %if.end10, label %if.end7.out_clear_crit_edge

if.end7.out_clear_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_clear

if.end10:                                         ; preds = %if.end7
  %basic = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 1
  %3 = ptrtoint ptr %basic to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %basic, align 8
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %4, label %if.end10.out_clear_crit_edge [
    i16 2048, label %if.end10.if.end19_crit_edge
    i16 -31011, label %if.end10.if.end19_crit_edge166
  ]

if.end10.if.end19_crit_edge166:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.end10.out_clear_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_clear

if.end19:                                         ; preds = %if.end10.if.end19_crit_edge, %if.end10.if.end19_crit_edge166
  %flags = getelementptr inbounds %struct.flow_dissector_key_control, ptr %fk, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end22, label %if.end19.out_clear_crit_edge

if.end19.out_clear_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_clear

if.end22:                                         ; preds = %if.end19
  %rps_slot = getelementptr i8, ptr %net_dev, i32 5116
  %add.ptr = getelementptr %struct.efx_async_filter_insertion, ptr %rps_slot, i32 %slot_idx.0162.lcssa
  %spec = getelementptr %struct.efx_async_filter_insertion, ptr %rps_slot, i32 %slot_idx.0162.lcssa, i32 1
  %rx_scatter = getelementptr i8, ptr %net_dev, i32 3772
  %8 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rx_scatter, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool23.not = icmp eq i8 %9, 0
  %cond = select i1 %tobool23.not, i32 0, i32 8192
  %rss_context.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 1
  %10 = and i16 %rxq_index, 4095
  %bf.value7.i = zext i16 %10 to i32
  %bf.set5.i = or i32 %cond, %bf.value7.i
  %bf.set = or i32 %bf.set5.i, 649101312
  %11 = call ptr @memset(ptr %rss_context.i, i32 0, i32 64)
  %12 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %bf.set, ptr %spec, align 4
  %ether_type = getelementptr %struct.efx_async_filter_insertion, ptr %rps_slot, i32 %slot_idx.0162.lcssa, i32 1, i32 6
  %13 = ptrtoint ptr %ether_type to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %4, ptr %ether_type, align 4
  %ip_proto = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ip_proto, align 2
  %ip_proto32 = getelementptr %struct.efx_async_filter_insertion, ptr %rps_slot, i32 %slot_idx.0162.lcssa, i32 1, i32 7
  %16 = ptrtoint ptr %ip_proto32 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %ip_proto32, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %4)
  %cmp36 = icmp eq i16 %4, 2048
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %addrs = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8
  %17 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addrs, align 4
  %rem_host = getelementptr %struct.efx_async_filter_insertion, ptr %rps_slot, i32 %slot_idx.0162.lcssa, i32 1, i32 9
  %19 = ptrtoint ptr %rem_host to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rem_host, align 4
  %dst = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst, align 8
  %loc_host = getelementptr %struct.efx_async_filter_insertion, ptr %rps_slot, i32 %slot_idx.0162.lcssa, i32 1, i32 8
  %22 = ptrtoint ptr %loc_host to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %loc_host, align 4
  br label %if.end53

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %rem_host44 = getelementptr %struct.efx_async_filter_insertion, ptr %rps_slot, i32 %slot_idx.0162.lcssa, i32 1, i32 9
  %addrs46 = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8
  %23 = call ptr @memcpy(ptr %rem_host44, ptr %addrs46, i32 16)
  %loc_host49 = getelementptr %struct.efx_async_filter_insertion, ptr %rps_slot, i32 %slot_idx.0162.lcssa, i32 1, i32 8
  %dst52 = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8, i32 0, i32 0, i32 1
  %24 = call ptr @memcpy(ptr %loc_host49, ptr %dst52, i32 16)
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then38
  %ports = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 6
  %25 = ptrtoint ptr %ports to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ports, align 4
  %rem_port = getelementptr %struct.efx_async_filter_insertion, ptr %rps_slot, i32 %slot_idx.0162.lcssa, i32 1, i32 11
  %27 = ptrtoint ptr %rem_port to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %rem_port, align 2
  %dst57 = getelementptr inbounds %struct.anon.160, ptr %ports, i32 0, i32 1
  %28 = ptrtoint ptr %dst57 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dst57, align 2
  %loc_port = getelementptr %struct.efx_async_filter_insertion, ptr %rps_slot, i32 %slot_idx.0162.lcssa, i32 1, i32 10
  %30 = ptrtoint ptr %loc_port to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %loc_port, align 4
  %rps_hash_table = getelementptr i8, ptr %net_dev, i32 6152
  %31 = ptrtoint ptr %rps_hash_table to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rps_hash_table, align 8
  %tobool59.not = icmp eq ptr %32, null
  br i1 %tobool59.not, label %if.end53.if.end89_crit_edge, label %if.then60

if.end53.if.end89_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

if.then60:                                        ; preds = %if.end53
  %rps_hash_lock = getelementptr i8, ptr %net_dev, i32 6108
  call void @_raw_spin_lock(ptr noundef %rps_hash_lock) #15
  %call62 = call ptr @efx_rps_hash_add(ptr noundef %add.ptr.i, ptr noundef %spec, ptr noundef nonnull %new)
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.then60.out_unlock_crit_edge, label %if.end65

if.then60.out_unlock_crit_edge:                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end65:                                         ; preds = %if.then60
  %33 = ptrtoint ptr %new to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %new, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool66.not = icmp eq i8 %34, 0
  br i1 %tobool66.not, label %land.lhs.true74, label %if.end70

if.end70:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  %rps_next_id = getelementptr i8, ptr %net_dev, i32 6156
  %35 = ptrtoint ptr %rps_next_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rps_next_id, align 4
  %inc68 = add i32 %36, 1
  store i32 %inc68, ptr %rps_next_id, align 4
  %rem = urem i32 %36, 65535
  %conv69 = trunc i32 %rem to i16
  %arfs_id = getelementptr inbounds %struct.efx_arfs_rule, ptr %call62, i32 0, i32 3
  %37 = ptrtoint ptr %arfs_id to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv69, ptr %arfs_id, align 2
  br label %if.end84

land.lhs.true74:                                  ; preds = %if.end65
  %arfs_id71154 = getelementptr inbounds %struct.efx_arfs_rule, ptr %call62, i32 0, i32 3
  %38 = ptrtoint ptr %arfs_id71154 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arfs_id71154, align 2
  %conv72155 = zext i16 %39 to i32
  %rxq_index75 = getelementptr inbounds %struct.efx_arfs_rule, ptr %call62, i32 0, i32 2
  %40 = ptrtoint ptr %rxq_index75 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %rxq_index75, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %rxq_index)
  %cmp78 = icmp eq i16 %41, %rxq_index
  br i1 %cmp78, label %land.lhs.true80, label %land.lhs.true74.if.end84_crit_edge

land.lhs.true74.if.end84_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

land.lhs.true80:                                  ; preds = %land.lhs.true74
  %filter_id = getelementptr inbounds %struct.efx_arfs_rule, ptr %call62, i32 0, i32 4
  %42 = ptrtoint ptr %filter_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %filter_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %43)
  %cmp81 = icmp sgt i32 %43, -2
  br i1 %cmp81, label %land.lhs.true80.out_unlock_crit_edge, label %land.lhs.true80.if.end84_crit_edge

land.lhs.true80.if.end84_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

land.lhs.true80.out_unlock_crit_edge:             ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end84:                                         ; preds = %land.lhs.true80.if.end84_crit_edge, %land.lhs.true74.if.end84_crit_edge, %if.end70
  %conv72156 = phi i32 [ %conv72155, %land.lhs.true80.if.end84_crit_edge ], [ %conv72155, %land.lhs.true74.if.end84_crit_edge ], [ %rem, %if.end70 ]
  %rxq_index85 = getelementptr inbounds %struct.efx_arfs_rule, ptr %call62, i32 0, i32 2
  %44 = ptrtoint ptr %rxq_index85 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %rxq_index, ptr %rxq_index85, align 4
  %filter_id86 = getelementptr inbounds %struct.efx_arfs_rule, ptr %call62, i32 0, i32 4
  %45 = ptrtoint ptr %filter_id86 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %filter_id86, align 4
  call void @_raw_spin_unlock(ptr noundef %rps_hash_lock) #15
  br label %if.end89

if.end89:                                         ; preds = %if.end84, %if.end53.if.end89_crit_edge
  %rc.0 = phi i32 [ %conv72156, %if.end84 ], [ 0, %if.end53.if.end89_crit_edge ]
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %net_dev, ptr %add.ptr, align 4
  %tobool.not.i = icmp eq ptr %net_dev, null
  br i1 %tobool.not.i, label %if.end89.dev_hold.exit_crit_edge, label %do.body1.i

if.end89.dev_hold.exit_crit_edge:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.end89
  %47 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !76
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 118
  %48 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcpu_refcnt.i, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = call i32 @llvm.read_register.i32(metadata !54) #15
  %and.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %56, %50
  %57 = inttoptr i32 %add.i to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %add13.i = add i32 %59, 1
  store i32 %add13.i, ptr %57, align 4
  %60 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !77
  %and.i.i.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !64

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #15, !srcloc !78
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.end89.dev_hold.exit_crit_edge
  %work = getelementptr %struct.efx_async_filter_insertion, ptr %rps_slot, i32 %slot_idx.0162.lcssa, i32 2
  call void @__init_work(ptr noundef %work, i32 noundef 0) #15
  %61 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr %struct.efx_async_filter_insertion, ptr %rps_slot, i32 %slot_idx.0162.lcssa, i32 2, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @efx_filter_rfs.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry94 = getelementptr %struct.efx_async_filter_insertion, ptr %rps_slot, i32 %slot_idx.0162.lcssa, i32 2, i32 1
  %62 = ptrtoint ptr %entry94 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %entry94, ptr %entry94, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry94, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %entry94, ptr %prev.i, align 4
  %func = getelementptr %struct.efx_async_filter_insertion, ptr %rps_slot, i32 %slot_idx.0162.lcssa, i32 2, i32 2
  %64 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @efx_filter_rfs_work, ptr %func, align 4
  %rxq_index96 = getelementptr %struct.efx_async_filter_insertion, ptr %rps_slot, i32 %slot_idx.0162.lcssa, i32 3
  %65 = ptrtoint ptr %rxq_index96 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %rxq_index, ptr %rxq_index96, align 4
  %flow_id97 = getelementptr %struct.efx_async_filter_insertion, ptr %rps_slot, i32 %slot_idx.0162.lcssa, i32 4
  %66 = ptrtoint ptr %flow_id97 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %flow_id, ptr %flow_id97, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %67 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %67, ptr noundef %work) #15
  br label %cleanup

out_unlock:                                       ; preds = %land.lhs.true80.out_unlock_crit_edge, %if.then60.out_unlock_crit_edge
  %rc.1 = phi i32 [ %conv72155, %land.lhs.true80.out_unlock_crit_edge ], [ -12, %if.then60.out_unlock_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %rps_hash_lock) #15
  br label %out_clear

out_clear:                                        ; preds = %out_unlock, %if.end19.out_clear_crit_edge, %if.end10.out_clear_crit_edge, %if.end7.out_clear_crit_edge, %if.end4.out_clear_crit_edge
  %rc.2 = phi i32 [ %rc.1, %out_unlock ], [ -22, %if.end4.out_clear_crit_edge ], [ -93, %if.end7.out_clear_crit_edge ], [ -93, %if.end10.out_clear_crit_edge ], [ -93, %if.end19.out_clear_crit_edge ]
  call void @_clear_bit(i32 noundef %slot_idx.0162.lcssa, ptr noundef %rps_slot_map) #15
  br label %cleanup

cleanup:                                          ; preds = %out_clear, %dev_hold.exit, %for.inc.6.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %out_clear ], [ %rc.0, %dev_hold.exit ], [ -16, %for.inc.6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new) #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fk) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_filter_rfs_work(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -72
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %rxq_index = getelementptr i8, ptr %data, i32 44
  %2 = ptrtoint ptr %rxq_index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rxq_index, align 4
  %conv = zext i16 %3 to i32
  %arrayidx.i = getelementptr %struct.efx_nic, ptr %add.ptr.i, i32 0, i32 25, i32 %conv
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %type = getelementptr i8, ptr %1, i32 2348
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type, align 4
  %filter_insert = getelementptr inbounds %struct.efx_nic_type, ptr %7, i32 0, i32 77
  %8 = ptrtoint ptr %filter_insert to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %filter_insert, align 4
  %spec = getelementptr i8, ptr %data, i32 -68
  %call2 = tail call i32 %9(ptr noundef %add.ptr.i, ptr noundef %spec, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp = icmp sgt i32 %call2, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type, align 4
  %max_rx_ip_filters = getelementptr inbounds %struct.efx_nic_type, ptr %11, i32 0, i32 136
  %12 = ptrtoint ptr %max_rx_ip_filters to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_rx_ip_filters, align 4
  %rem = urem i32 %call2, %13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %rem, %if.then ], [ %call2, %entry.if.end_crit_edge ]
  %rps_hash_table = getelementptr i8, ptr %1, i32 6152
  %14 = ptrtoint ptr %rps_hash_table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rps_hash_table, align 8
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %if.then5

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then5:                                         ; preds = %if.end
  %rps_hash_lock = getelementptr i8, ptr %1, i32 6108
  tail call void @_raw_spin_lock_bh(ptr noundef %rps_hash_lock) #15
  %call7 = tail call ptr @efx_rps_hash_find(ptr noundef %add.ptr.i, ptr noundef %spec)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then5.if.end16_crit_edge, label %if.then9

if.then5.if.end16_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp10 = icmp slt i32 %rc.0, 0
  %spec.select = select i1 %cmp10, i32 -2, i32 %rc.0
  %16 = getelementptr inbounds %struct.efx_arfs_rule, ptr %call7, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select, ptr %16, align 4
  %arfs_id15 = getelementptr inbounds %struct.efx_arfs_rule, ptr %call7, i32 0, i32 3
  %18 = ptrtoint ptr %arfs_id15 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arfs_id15, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.then5.if.end16_crit_edge
  %arfs_id.0 = phi i16 [ %19, %if.then9 ], [ 0, %if.then5.if.end16_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %rps_hash_lock) #15
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %if.end.if.end18_crit_edge
  %arfs_id.1 = phi i16 [ %arfs_id.0, %if.end16 ], [ 0, %if.end.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rc.0)
  %cmp19 = icmp sgt i32 %rc.0, -1
  br i1 %cmp19, label %if.then21, label %if.else88

if.then21:                                        ; preds = %if.end18
  %rps_mutex = getelementptr i8, ptr %1, i32 5020
  tail call void @mutex_lock_nested(ptr noundef %rps_mutex, i32 noundef 0) #15
  %rps_flow_id = getelementptr inbounds %struct.efx_channel, ptr %5, i32 0, i32 22
  %20 = ptrtoint ptr %rps_flow_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rps_flow_id, align 4
  %arrayidx = getelementptr i32, ptr %21, i32 %rc.0
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp22 = icmp eq i32 %23, -1
  br i1 %cmp22, label %if.then24, label %if.then21.if.end25_crit_edge

if.then21.if.end25_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  %rfs_filter_count = getelementptr inbounds %struct.efx_channel, ptr %5, i32 0, i32 16
  %24 = ptrtoint ptr %rfs_filter_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rfs_filter_count, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %rfs_filter_count, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then21.if.end25_crit_edge
  %flow_id = getelementptr i8, ptr %data, i32 48
  %26 = ptrtoint ptr %flow_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flow_id, align 4
  %28 = ptrtoint ptr %rps_flow_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rps_flow_id, align 4
  %arrayidx27 = getelementptr i32, ptr %29, i32 %rc.0
  %30 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %arrayidx27, align 4
  tail call void @mutex_unlock(ptr noundef %rps_mutex) #15
  %msg_enable = getelementptr i8, ptr %1, i32 2460
  %31 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable, align 4
  %and = and i32 %32, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.end25.if.end86_crit_edge, label %if.end86.sink.split

if.end25.if.end86_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

if.end86.sink.split:                              ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %ether_type = getelementptr i8, ptr %data, i32 -44
  %33 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ether_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %34)
  %cmp31 = icmp eq i16 %34, 2048
  %.str.16..str.19 = select i1 %cmp31, ptr @.str.16, ptr @.str.19
  %net_dev60 = getelementptr i8, ptr %1, i32 4732
  %35 = ptrtoint ptr %net_dev60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net_dev60, align 4
  %ip_proto62 = getelementptr i8, ptr %data, i32 -42
  %37 = ptrtoint ptr %ip_proto62 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ip_proto62, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %38)
  %cmp64 = icmp eq i8 %38, 6
  %cond66 = select i1 %cmp64, ptr @.str.17, ptr @.str.18
  %rem_host68 = getelementptr i8, ptr %data, i32 -24
  %rem_port71 = getelementptr i8, ptr %data, i32 -6
  %39 = ptrtoint ptr %rem_port71 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %rem_port71, align 2
  %conv72 = zext i16 %40 to i32
  %loc_host74 = getelementptr i8, ptr %data, i32 -40
  %loc_port77 = getelementptr i8, ptr %data, i32 -8
  %41 = ptrtoint ptr %loc_port77 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %loc_port77, align 4
  %conv78 = zext i16 %42 to i32
  %43 = ptrtoint ptr %rxq_index to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %rxq_index, align 4
  %conv80 = zext i16 %44 to i32
  %45 = ptrtoint ptr %flow_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flow_id, align 4
  %conv82 = zext i16 %arfs_id.1 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %36, ptr noundef nonnull %.str.16..str.19, ptr noundef nonnull %cond66, ptr noundef %rem_host68, i32 noundef %conv72, ptr noundef %loc_host74, i32 noundef %conv78, i32 noundef %conv80, i32 noundef %46, i32 noundef %rc.0, i32 noundef %conv82) #19
  br label %if.end86

if.end86:                                         ; preds = %if.end86.sink.split, %if.end25.if.end86_crit_edge
  %n_rfs_succeeded = getelementptr inbounds %struct.efx_channel, ptr %5, i32 0, i32 19
  %47 = ptrtoint ptr %n_rfs_succeeded to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n_rfs_succeeded, align 8
  %inc87 = add i32 %48, 1
  store i32 %inc87, ptr %n_rfs_succeeded, align 8
  br label %if.end192

if.else88:                                        ; preds = %if.end18
  %ether_type90 = getelementptr i8, ptr %data, i32 -44
  %49 = ptrtoint ptr %ether_type90 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ether_type90, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %50)
  %cmp92 = icmp eq i16 %50, 2048
  %msg_enable96 = getelementptr i8, ptr %1, i32 2460
  %51 = ptrtoint ptr %msg_enable96 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %msg_enable96, align 4
  %and97 = and i32 %52, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %cmp92, label %do.body95, label %do.body137

do.body95:                                        ; preds = %if.else88
  br i1 %tobool98.not, label %do.body95.if.end184_crit_edge, label %do.body100

do.body95.if.end184_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end184

do.body100:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_filter_rfs_work.__UNIQUE_ID_ddebug535, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_filter_rfs_work, %if.then106)) #15
          to label %if.end184 [label %if.then106], !srcloc !70

if.then106:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev107 = getelementptr i8, ptr %1, i32 4732
  %53 = ptrtoint ptr %net_dev107 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %net_dev107, align 4
  %ip_proto109 = getelementptr i8, ptr %data, i32 -42
  %55 = ptrtoint ptr %ip_proto109 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ip_proto109, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %56)
  %cmp111 = icmp eq i8 %56, 6
  %cond113 = select i1 %cmp111, ptr @.str.17, ptr @.str.18
  %rem_host115 = getelementptr i8, ptr %data, i32 -24
  %rem_port118 = getelementptr i8, ptr %data, i32 -6
  %57 = ptrtoint ptr %rem_port118 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %rem_port118, align 2
  %conv119 = zext i16 %58 to i32
  %loc_host121 = getelementptr i8, ptr %data, i32 -40
  %loc_port124 = getelementptr i8, ptr %data, i32 -8
  %59 = ptrtoint ptr %loc_port124 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %loc_port124, align 4
  %conv125 = zext i16 %60 to i32
  %61 = ptrtoint ptr %rxq_index to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %rxq_index, align 4
  %conv127 = zext i16 %62 to i32
  %flow_id128 = getelementptr i8, ptr %data, i32 48
  %63 = ptrtoint ptr %flow_id128 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flow_id128, align 4
  %conv129 = zext i16 %arfs_id.1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_filter_rfs_work.__UNIQUE_ID_ddebug535, ptr noundef %54, ptr noundef nonnull @.str.21, ptr noundef nonnull %cond113, ptr noundef %rem_host115, i32 noundef %conv119, ptr noundef %loc_host121, i32 noundef %conv125, i32 noundef %conv127, i32 noundef %64, i32 noundef %rc.0, i32 noundef %conv129) #15
  br label %if.end184

do.body137:                                       ; preds = %if.else88
  br i1 %tobool98.not, label %do.body137.if.end184_crit_edge, label %do.body142

do.body137.if.end184_crit_edge:                   ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end184

do.body142:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_filter_rfs_work.__UNIQUE_ID_ddebug536, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_filter_rfs_work, %if.then154)) #15
          to label %if.end184 [label %if.then154], !srcloc !70

if.then154:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev155 = getelementptr i8, ptr %1, i32 4732
  %65 = ptrtoint ptr %net_dev155 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net_dev155, align 4
  %ip_proto157 = getelementptr i8, ptr %data, i32 -42
  %67 = ptrtoint ptr %ip_proto157 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ip_proto157, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %68)
  %cmp159 = icmp eq i8 %68, 6
  %cond161 = select i1 %cmp159, ptr @.str.17, ptr @.str.18
  %rem_host163 = getelementptr i8, ptr %data, i32 -24
  %rem_port166 = getelementptr i8, ptr %data, i32 -6
  %69 = ptrtoint ptr %rem_port166 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %rem_port166, align 2
  %conv167 = zext i16 %70 to i32
  %loc_host169 = getelementptr i8, ptr %data, i32 -40
  %loc_port172 = getelementptr i8, ptr %data, i32 -8
  %71 = ptrtoint ptr %loc_port172 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %loc_port172, align 4
  %conv173 = zext i16 %72 to i32
  %73 = ptrtoint ptr %rxq_index to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %rxq_index, align 4
  %conv175 = zext i16 %74 to i32
  %flow_id176 = getelementptr i8, ptr %data, i32 48
  %75 = ptrtoint ptr %flow_id176 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flow_id176, align 4
  %conv177 = zext i16 %arfs_id.1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_filter_rfs_work.__UNIQUE_ID_ddebug536, ptr noundef %66, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond161, ptr noundef %rem_host163, i32 noundef %conv167, ptr noundef %loc_host169, i32 noundef %conv173, i32 noundef %conv175, i32 noundef %76, i32 noundef %rc.0, i32 noundef %conv177) #15
  br label %if.end184

if.end184:                                        ; preds = %if.then154, %do.body142, %do.body137.if.end184_crit_edge, %if.then106, %do.body100, %do.body95.if.end184_crit_edge
  %n_rfs_failed = getelementptr inbounds %struct.efx_channel, ptr %5, i32 0, i32 20
  %77 = ptrtoint ptr %n_rfs_failed to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %n_rfs_failed, align 4
  %inc185 = add i32 %78, 1
  store i32 %inc185, ptr %n_rfs_failed, align 4
  %rfs_filter_count186 = getelementptr inbounds %struct.efx_channel, ptr %5, i32 0, i32 16
  %79 = ptrtoint ptr %rfs_filter_count186 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rfs_filter_count186, align 4
  %81 = tail call i32 @llvm.umin.i32(i32 %80, i32 100)
  %call191 = tail call zeroext i1 @__efx_filter_rfs_expire(ptr noundef %5, i32 noundef %81)
  br label %if.end192

if.end192:                                        ; preds = %if.end184, %if.end86
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %rps_slot = getelementptr i8, ptr %1, i32 5116
  %sub.ptr.rhs.cast = ptrtoint ptr %rps_slot to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 124
  %rps_slot_map = getelementptr i8, ptr %1, i32 5112
  tail call void @_clear_bit(i32 noundef %sub.ptr.div, ptr noundef %rps_slot_map) #15
  %82 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i = icmp eq ptr %83, null
  br i1 %tobool.not.i, label %if.end192.dev_put.exit_crit_edge, label %do.body1.i

if.end192.dev_put.exit_crit_edge:                 ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put.exit

do.body1.i:                                       ; preds = %if.end192
  %84 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !76
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 118
  %85 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pcpu_refcnt.i, align 4
  %87 = ptrtoint ptr %86 to i32
  %88 = tail call i32 @llvm.read_register.i32(metadata !54) #15
  %and.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cpu.i, align 4
  %arrayidx.i276 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %91
  %92 = ptrtoint ptr %arrayidx.i276 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i276, align 4
  %add.i = add i32 %93, %87
  %94 = inttoptr i32 %add.i to ptr
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  %add13.i = add i32 %96, -1
  store i32 %add13.i, ptr %94, align 4
  %97 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !77
  %and.i.i.i = and i32 %97, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !64

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %84) #15, !srcloc !78
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %if.end192.dev_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__efx_filter_rfs_expire(ptr nocapture noundef %channel, i32 noundef %quota) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %rps_mutex = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 110
  %call = tail call i32 @mutex_trylock(ptr noundef %rps_mutex) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %filter_rfs_expire_one = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 84
  %4 = ptrtoint ptr %filter_rfs_expire_one to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %filter_rfs_expire_one, align 8
  %rfs_expire_index = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 18
  %6 = ptrtoint ptr %rfs_expire_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rfs_expire_index, align 4
  %max_rx_ip_filters = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 136
  %8 = ptrtoint ptr %max_rx_ip_filters to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_rx_ip_filters, align 4
  %rps_flow_id = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 22
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %channel9 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %rfs_filter_count = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 16
  br label %while.cond

while.cond:                                       ; preds = %if.end15.while.cond_crit_edge, %if.end
  %quota.addr.0 = phi i32 [ %quota, %if.end ], [ %quota.addr.1, %if.end15.while.cond_crit_edge ]
  %index.0 = phi i32 [ %7, %if.end ], [ %spec.store.select, %if.end15.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quota.addr.0)
  %tobool3.not = icmp eq i32 %quota.addr.0, 0
  br i1 %tobool3.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.cond
  %10 = ptrtoint ptr %rps_flow_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rps_flow_id, align 4
  %arrayidx = getelementptr i32, ptr %11, i32 %index.0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.not = icmp eq i32 %13, -1
  br i1 %cmp.not, label %while.body.if.end15_crit_edge, label %if.then4

while.body.if.end15_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then4:                                         ; preds = %while.body
  %dec = add i32 %quota.addr.0, -1
  %call5 = tail call zeroext i1 %5(ptr noundef %1, i32 noundef %13, i32 noundef %index.0) #15
  br i1 %call5, label %do.body, label %if.then4.if.end15_crit_edge

if.then4.if.end15_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

do.body:                                          ; preds = %if.then4
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 4
  %and = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.do.end_crit_edge, label %if.then8

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_dev, align 4
  %18 = ptrtoint ptr %channel9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel9, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %17, ptr noundef nonnull @.str.12, i32 noundef %index.0, i32 noundef %19, i32 noundef %13) #19
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body.do.end_crit_edge
  %20 = ptrtoint ptr %rps_flow_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rps_flow_id, align 4
  %arrayidx12 = getelementptr i32, ptr %21, i32 %index.0
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %arrayidx12, align 4
  %23 = ptrtoint ptr %rfs_filter_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rfs_filter_count, align 4
  %dec13 = add i32 %24, -1
  store i32 %dec13, ptr %rfs_filter_count, align 4
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.then4.if.end15_crit_edge, %while.body.if.end15_crit_edge
  %quota.addr.1 = phi i32 [ %dec, %do.end ], [ %dec, %if.then4.if.end15_crit_edge ], [ %quota.addr.0, %while.body.if.end15_crit_edge ]
  %inc = add i32 %index.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %9)
  %cmp16 = icmp eq i32 %inc, %9
  %spec.store.select = select i1 %cmp16, i32 0, i32 %inc
  %cmp19 = icmp eq i32 %spec.store.select, %7
  br i1 %cmp19, label %if.end15.while.end_crit_edge, label %if.end15.while.cond_crit_edge

if.end15.while.cond_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end15.while.end_crit_edge, %while.cond.while.end_crit_edge
  %index.1 = phi i32 [ %7, %if.end15.while.end_crit_edge ], [ %index.0, %while.cond.while.end_crit_edge ]
  %25 = ptrtoint ptr %rfs_expire_index to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %index.1, ptr %rfs_expire_index, align 4
  tail call void @mutex_unlock(ptr noundef %rps_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %26 = xor i1 %tobool.not, true
  ret i1 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iommu_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @efx_reuse_page(ptr nocapture noundef %rx_queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %page_ring = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 12
  %2 = ptrtoint ptr %page_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page_ring, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !64

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %page_remove = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 14
  %4 = ptrtoint ptr %page_remove to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_remove, align 4
  %page_ptr_mask = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 18
  %6 = ptrtoint ptr %page_ptr_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_ptr_mask, align 4
  %and = and i32 %7, %5
  %arrayidx = getelementptr ptr, ptr %3, i32 %and
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %page_remove to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %page_remove, align 4
  %page_add = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 13
  %13 = ptrtoint ptr %page_add to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page_add, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp11.not = icmp eq i32 %12, %14
  br i1 %cmp11.not, label %if.end7.if.end14_crit_edge, label %if.then12

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %inc = add i32 %12, 1
  %15 = ptrtoint ptr %page_remove to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc, ptr %page_remove, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end7.if.end14_crit_edge
  %16 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !65

if.then.i.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %18, -1
  br label %page_count.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %9 to i32
  br label %page_count.exit

page_count.exit:                                  ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %19, %if.end.i.i ]
  %20 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #15
  %21 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp15 = icmp eq i32 %22, 1
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %page_count.exit
  call void @__sanitizer_cov_trace_pc() #17
  %page_recycle_count = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 15
  %23 = ptrtoint ptr %page_recycle_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page_recycle_count, align 8
  %inc17 = add i32 %24, 1
  store i32 %inc17, ptr %page_recycle_count, align 8
  br label %cleanup

if.else:                                          ; preds = %page_count.exit
  %call18 = tail call ptr @page_address(ptr noundef nonnull %9) #15
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call18, align 128
  %rx_buffer_order = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 54
  %29 = ptrtoint ptr %rx_buffer_order to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_buffer_order, align 8
  %shl = shl i32 4096, %30
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %28, i32 noundef %shl, i32 noundef 2, i32 noundef 0) #15
  %31 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %16, align 4
  %and.i.i41 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i41)
  %tobool.not.i.i42 = icmp eq i32 %and.i.i41, 0
  br i1 %tobool.not.i.i42, label %if.end.i.i45, label %if.then.i.i44, !prof !65

if.then.i.i44:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i43 = add i32 %32, -1
  br label %_compound_head.exit.i

if.end.i.i45:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i45, %if.then.i.i44
  %retval.0.i.i46 = phi i32 [ %sub.i.i43, %if.then.i.i44 ], [ %33, %if.end.i.i45 ]
  %34 = inttoptr i32 %retval.0.i.i46 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %35 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i.i.i = icmp eq i32 %36, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !64

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.13) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !66
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !68
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@efx_reuse_page, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !70

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %34, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %34) #15
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %page_recycle_failed = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 16
  %38 = ptrtoint ptr %page_recycle_failed to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %page_recycle_failed, align 4
  %inc19 = add i32 %39, 1
  store i32 %inc19, ptr %page_recycle_failed, align 4
  br label %cleanup

cleanup:                                          ; preds = %put_page.exit, %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %if.then16 ], [ null, %put_page.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nobuiltin }
attributes #22 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !19, !20, !21, !23, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !41, !43, !44, !45, !47, !49, !50, !51, !53}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__param_rx_refill_threshold, !1, !"__param_rx_refill_threshold", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/rx_common.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_rx_refill_thresholdtype524, !1, !"__UNIQUE_ID_rx_refill_thresholdtype524", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_rx_refill_threshold525, !4, !"__UNIQUE_ID_rx_refill_threshold525", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/sfc/rx_common.c", i32 23, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/sfc/rx_common.c", i32 213, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @efx_probe_rx_queue.__UNIQUE_ID_ddebug528, !6, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/sfc/rx_common.c", i32 239, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @efx_init_rx_queue.__UNIQUE_ID_ddebug529, !12, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/sfc/rx_common.c", i32 276, i32 3}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/sfc/rx_common.c", i32 293, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @efx_fini_rx_queue.__UNIQUE_ID_ddebug532, !18, !"__UNIQUE_ID_ddebug532", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/sfc/rx_common.c", i32 319, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @efx_remove_rx_queue.__UNIQUE_ID_ddebug533, !22, !"__UNIQUE_ID_ddebug533", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/sfc/rx_common.c", i32 588, i32 7}
!27 = !{ptr @efx_filter_rfs.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/sfc/rx_common.c", i32 1045, i32 2}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sfc/rx_common.c", i32 1076, i32 5}
!32 = !{ptr @rx_refill_threshold, !33, !"rx_refill_threshold", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sfc/rx_common.c", i32 21, i32 21}
!34 = !{ptr @__param_str_rx_refill_threshold, !1, !"__param_str_rx_refill_threshold", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/mm.h", i32 717, i32 2}
!37 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/sfc/rx_common.c", i32 913, i32 4}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/sfc/rx_common.c", i32 920, i32 4}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/sfc/rx_common.c", i32 929, i32 4}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @efx_filter_rfs_work.__UNIQUE_ID_ddebug535, !48, !"__UNIQUE_ID_ddebug535", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/sfc/rx_common.c", i32 936, i32 4}
!53 = !{ptr @efx_filter_rfs_work.__UNIQUE_ID_ddebug536, !52, !"__UNIQUE_ID_ddebug536", i1 false, i1 false}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 2153883057, i64 2153883540, i64 2153883094, i64 2153883150, i64 2153883184, i64 2153883208, i64 2153883249, i64 2153883270, i64 2153883298, i64 2153883332}
!67 = !{i64 2148665612}
!68 = !{i64 2148580321, i64 2148580353, i64 2148580382, i64 2148580416, i64 2148580447, i64 2148580470}
!69 = !{i64 2148665841}
!70 = !{i64 2149134401, i64 2149134406, i64 2149134419, i64 2149134463, i64 2149134497, i64 2149134518}
!71 = !{i32 0, i32 33}
!72 = !{i8 0, i8 2}
!73 = !{i64 2153902969, i64 2153903453, i64 2153903006, i64 2153903062, i64 2153903096, i64 2153903120, i64 2153903161, i64 2153903182, i64 2153903210, i64 2153903244}
!74 = !{i64 2148577136, i64 2148577162, i64 2148577191, i64 2148577225, i64 2148577256, i64 2148577279}
!75 = !{!"auto-init"}
!76 = !{i64 980836, i64 980897}
!77 = !{i64 983568}
!78 = !{i64 983853}
