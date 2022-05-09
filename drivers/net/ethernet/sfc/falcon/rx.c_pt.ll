; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/falcon/rx.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/falcon/rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.126 }
%union.anon.126 = type { i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.ef4_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.ef4_msi_context], [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [40 x i8], [128 x i32], i8, i32, i32, i8, %struct.ef4_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, %struct.ef4_buffer, i64, i64, i8, i32, ptr, ptr, %struct.mdio_if_info, i32, i32, %struct.ef4_link_state, i32, i8, %union.ef4_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, %struct.rw_semaphore, %struct.spinlock, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, ptr, [32 x i8], %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.ef4_msi_context = type { ptr, i32, [22 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ef4_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ef4_link_state = type { i8, i8, i8, i32 }
%union.ef4_multicast_hash = type { [2 x %union.ef4_oword] }
%union.ef4_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ef4_rx_queue = type { ptr, i32, ptr, %struct.ef4_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32 }
%struct.ef4_special_buffer = type { %struct.ef4_buffer, i32, i32 }
%struct.ef4_nic_type = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i32, i32, i64, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.130, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.130 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.ef4_rx_buffer = type { i32, ptr, i16, i16, i16 }
%struct.ef4_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.ef4_special_buffer, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ef4_rx_queue, [120 x i8], [4 x %struct.ef4_tx_queue] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ef4_tx_queue = type { ptr, i32, ptr, ptr, ptr, ptr, %struct.ef4_special_buffer, i32, i8, i32, ptr, [68 x i8], i32, i32, i32, i32, i32, [108 x i8], i32, i32, i32, i32, i8, i32, i32, [100 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.148 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ef4_channel_type = type { ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.ef4_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16 }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.158, i16 }
%union.anon.158 = type { %struct.anon.159 }
%struct.anon.159 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.160 }
%union.anon.160 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.162, i16 }
%struct.anon.162 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.163 }
%union.anon.163 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.anon.161 = type { i16, i16 }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/sfc/falcon/rx.c\00", [59 x i8] zeroinitializer }, align 32
@ef4_probe_rx_queue.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 -81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sfc_falcon\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ef4_probe_rx_queue\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"creating RX queue %d size %#x mask %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@ef4_init_rx_queue.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str, ptr @.str.5, i8 0, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ef4_init_rx_queue\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"initialising RX queue %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rx_refill_threshold = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ef4_fini_rx_queue.__UNIQUE_ID_ddebug530 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str, ptr @.str.7, i8 0, i8 -59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ef4_fini_rx_queue\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"shutting down RX queue %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ef4_remove_rx_queue.__UNIQUE_ID_ddebug531 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str, ptr @.str.9, i8 0, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ef4_remove_rx_queue\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"destroying RX queue %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__param_str_rx_refill_threshold = internal constant [31 x i8] c"sfc_falcon.rx_refill_threshold\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_rx_refill_threshold = internal constant %struct.kernel_param { ptr @__param_str_rx_refill_threshold, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @rx_refill_threshold } }, section "__param", align 4
@__UNIQUE_ID_rx_refill_thresholdtype532 = internal constant [45 x i8] c"sfc_falcon.parmtype=rx_refill_threshold:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_refill_threshold533 = internal constant [76 x i8] c"sfc_falcon.parm=rx_refill_threshold:RX descriptor ring refill threshold (%)\00", section ".modinfo", align 1
@.str.10 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"steering %s %pI4:%u:%pI4:%u to queue %u [flow %u filter %d]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TCP\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UDP\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"steering %s [%pI6]:%u:[%pI6]:%u to queue %u [flow %u filter %d]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"expired filter %d [queue %u flow %u]\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.17 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c" RX queue %d seriously overlength RX event (0x%x > 0x%x+0x%x). Leaking\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c" RX queue %d overlength RX event (0x%x > 0x%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@flow_keys_dissector = external dso_local global %struct.flow_dissector, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 553, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 697, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 747, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"rx_refill_threshold\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 43, i32 21 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 789, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 824, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 891, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 897, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 925, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1160, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 409, i32 4 }
@___asan_gen_.76 = private constant [40 x i8] c"../drivers/net/ethernet/sfc/falcon/rx.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 417, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 717, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_rx_refill_threshold533, ptr @__UNIQUE_ID_rx_refill_thresholdtype532, ptr @__param_rx_refill_threshold, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rx_refill_threshold, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_refill_threshold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ef4_rx_config_page_split(ptr nocapture noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma_len = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 42
  %0 = ptrtoint ptr %rx_dma_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_dma_len, align 4
  %rx_ip_align = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 41
  %2 = ptrtoint ptr %rx_ip_align to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_ip_align, align 8
  %add = add i32 %1, 3
  %add1 = add i32 %add, %3
  %and = and i32 %add1, -4
  %rx_page_buf_step = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 45
  %4 = ptrtoint ptr %rx_page_buf_step to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %rx_page_buf_step, align 8
  %rx_buffer_order = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 43
  %5 = ptrtoint ptr %rx_buffer_order to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_buffer_order, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 3968, %and
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.false ], [ 1, %entry.cond.end_crit_edge ]
  %rx_bufs_per_page = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 46
  %7 = ptrtoint ptr %rx_bufs_per_page to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %rx_bufs_per_page, align 4
  %shl = shl i32 4096, %6
  %div5 = udiv i32 %shl, %cond
  %rx_buffer_truesize = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 44
  %8 = ptrtoint ptr %rx_buffer_truesize to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div5, ptr %rx_buffer_truesize, align 4
  %9 = trunc i32 %cond to i16
  %div9.lhs.trunc = add nuw nsw i16 %9, 7
  %div921 = udiv i16 %div9.lhs.trunc, %9
  %div9.zext = zext i16 %div921 to i32
  %rx_pages_per_batch = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 47
  %10 = ptrtoint ptr %rx_pages_per_batch to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div9.zext, ptr %rx_pages_per_batch, align 128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_fast_push_rx_descriptors(ptr noundef %rx_queue, i1 noundef zeroext %atomic) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 4
  %refill_enabled = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 5
  %2 = ptrtoint ptr %refill_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %refill_enabled, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %added_count = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 7
  %4 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %added_count, align 4
  %removed_count = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 9
  %6 = ptrtoint ptr %removed_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %removed_count, align 4
  %sub = sub i32 %5, %7
  %fast_fill_trigger = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 20
  %8 = ptrtoint ptr %fast_fill_trigger to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fast_fill_trigger, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp.not = icmp ult i32 %sub, %9
  br i1 %cmp.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end3:                                          ; preds = %if.end
  %min_fill = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 21
  %10 = ptrtoint ptr %min_fill to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_fill, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %11)
  %cmp4 = icmp ult i32 %sub, %11
  br i1 %cmp4, label %if.then7, label %if.end3.if.end12_crit_edge, !prof !56

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %tobool8.not = icmp eq i32 %5, %7
  br i1 %tobool8.not, label %if.then7.if.end12_crit_edge, label %if.then9

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %min_fill to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %min_fill, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then7.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  %rx_pages_per_batch = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 47
  %13 = ptrtoint ptr %rx_pages_per_batch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_pages_per_batch, align 128
  %rx_bufs_per_page = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 46
  %15 = ptrtoint ptr %rx_bufs_per_page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_bufs_per_page, align 4
  %mul = mul i32 %16, %14
  %max_fill = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 19
  %17 = ptrtoint ptr %max_fill to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_fill, align 4
  %sub13 = sub i32 %18, %sub
  br label %do.body17

do.body17:                                        ; preds = %do.cond33.do.body17_crit_edge, %if.end12
  %space.0 = phi i32 [ %sub13, %if.end12 ], [ %sub34, %do.cond33.do.body17_crit_edge ]
  %call = tail call fastcc i32 @ef4_init_rx_buffers(ptr noundef %rx_queue, i1 noundef zeroext %atomic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool19.not = icmp eq i32 %call, 0
  br i1 %tobool19.not, label %do.cond33, label %if.then26, !prof !57

if.then26:                                        ; preds = %do.body17
  %19 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %added_count, align 4
  %21 = ptrtoint ptr %removed_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %removed_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp29 = icmp eq i32 %20, %22
  br i1 %cmp29, label %if.then30, label %if.then26.out_crit_edge

if.then26.out_crit_edge:                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ef4_schedule_slow_fill(ptr noundef %rx_queue) #9
  br label %out

do.cond33:                                        ; preds = %do.body17
  %sub34 = sub i32 %space.0, %mul
  %cmp35.not = icmp ult i32 %sub34, %mul
  br i1 %cmp35.not, label %do.cond33.out_crit_edge, label %do.cond33.do.body17_crit_edge

do.cond33.do.body17_crit_edge:                    ; preds = %do.cond33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

do.cond33.out_crit_edge:                          ; preds = %do.cond33
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %do.cond33.out_crit_edge, %if.then30, %if.then26.out_crit_edge, %if.end.out_crit_edge
  %notified_count = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 8
  %23 = ptrtoint ptr %notified_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %notified_count, align 4
  %25 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %added_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp39.not = icmp eq i32 %24, %26
  br i1 %cmp39.not, label %out.cleanup_crit_edge, label %if.then40

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then40:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_queue, align 4
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %type.i, align 4
  %rx_write.i = getelementptr inbounds %struct.ef4_nic_type, ptr %30, i32 0, i32 49
  %31 = ptrtoint ptr %rx_write.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_write.i, align 4
  tail call void %32(ptr noundef %rx_queue) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_init_rx_buffers(ptr nocapture noundef %rx_queue, i1 noundef zeroext %atomic) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 4
  %or = select i1 %atomic, i32 264736, i32 265408
  %rx_buffer_order = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 43
  %pci_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 4
  %added_count = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 7
  %ptr_mask = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 4
  %buffer.i = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 2
  %rx_ip_align = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 41
  %rx_dma_len = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 42
  %rx_page_buf_step = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 45
  %rx_pages_per_batch = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 47
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %inc46, %do.end.do.body_crit_edge ]
  %call = tail call fastcc ptr @ef4_reuse_page(ptr noundef %rx_queue)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = ptrtoint ptr %rx_buffer_order to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_buffer_order, align 16
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %or, i32 noundef %3, i32 noundef 0, ptr noundef null) #9
  %cmp3 = icmp eq ptr %call38.i.i.i, null
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.end, !prof !56

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %rx_buffer_order to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_buffer_order, align 16
  %shl = shl i32 4096, %7
  %call8 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef nonnull %call38.i.i.i, i32 noundef 0, i32 noundef %shl, i32 noundef 2, i32 noundef 0) #9
  %8 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev10, i32 noundef %call8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp.i.not = icmp eq i32 %call8, -1
  br i1 %cmp.i.not, label %if.then19, label %if.end21, !prof !56

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %rx_buffer_order to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_buffer_order, align 16
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef %11) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #9
  %12 = ptrtoint ptr %call22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call8, ptr %call22, align 128
  br label %if.end26

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call ptr @page_address(ptr noundef nonnull %call) #9
  %13 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call24, align 128
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end21
  %page.0 = phi ptr [ %call38.i.i.i, %if.end21 ], [ %call, %if.else ]
  %dma_addr.0 = phi i32 [ %call8, %if.end21 ], [ %14, %if.else ]
  %add = add i32 %dma_addr.0, 128
  %15 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %16 = ptrtoint ptr %page.0 to i32
  br label %do.body27

do.body27:                                        ; preds = %get_page.exit.do.body27_crit_edge, %if.end26
  %page_offset.0 = phi i32 [ 128, %if.end26 ], [ %add39, %get_page.exit.do.body27_crit_edge ]
  %dma_addr.1 = phi i32 [ %add, %if.end26 ], [ %add37, %get_page.exit.do.body27_crit_edge ]
  %17 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %added_count, align 4
  %19 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ptr_mask, align 4
  %and = and i32 %20, %18
  %21 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer.i, align 4
  %arrayidx.i = getelementptr %struct.ef4_rx_buffer, ptr %22, i32 %and
  %23 = ptrtoint ptr %rx_ip_align to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_ip_align, align 8
  %add29 = add i32 %24, %dma_addr.1
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add29, ptr %arrayidx.i, align 4
  %page31 = getelementptr %struct.ef4_rx_buffer, ptr %22, i32 %and, i32 1
  %26 = ptrtoint ptr %page31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %page.0, ptr %page31, align 4
  %27 = load i32, ptr %rx_ip_align, align 8
  %add33 = add i32 %27, %page_offset.0
  %conv = trunc i32 %add33 to i16
  %page_offset34 = getelementptr %struct.ef4_rx_buffer, ptr %22, i32 %and, i32 2
  %28 = ptrtoint ptr %page_offset34 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv, ptr %page_offset34, align 4
  %29 = ptrtoint ptr %rx_dma_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_dma_len, align 4
  %conv35 = trunc i32 %30 to i16
  %len = getelementptr %struct.ef4_rx_buffer, ptr %22, i32 %and, i32 3
  %31 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv35, ptr %len, align 2
  %flags = getelementptr %struct.ef4_rx_buffer, ptr %22, i32 %and, i32 4
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags, align 4
  %33 = load i32, ptr %added_count, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %added_count, align 4
  %34 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %15, align 4
  %and.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body27._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !57

do.body27._compound_head.exit.i_crit_edge:        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %35, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %do.body27._compound_head.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %do.body27._compound_head.exit.i_crit_edge ]
  %36 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %37 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %38, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !56

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.16) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !58
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@ef4_init_rx_buffers, %if.then.i.i.i.i)) #9
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !60

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %36, i32 noundef 1) #9
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %41 = ptrtoint ptr %rx_page_buf_step to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_page_buf_step, align 8
  %add37 = add i32 %42, %dma_addr.1
  %add39 = add i32 %42, %page_offset.0
  %add41 = add i32 %add39, %42
  %cmp42 = icmp ult i32 %add41, 4097
  br i1 %cmp42, label %get_page.exit.do.body27_crit_edge, label %do.end

get_page.exit.do.body27_crit_edge:                ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

do.end:                                           ; preds = %get_page.exit
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %flags, align 4
  %inc46 = add nuw i32 %count.0, 1
  %44 = ptrtoint ptr %rx_pages_per_batch to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_pages_per_batch, align 128
  %cmp47 = icmp ult i32 %inc46, %45
  br i1 %cmp47, label %do.end.do.body_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup:                                          ; preds = %do.end.cleanup_crit_edge, %if.then19, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then19 ], [ 0, %do.end.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_schedule_slow_fill(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_rx_slow_fill(ptr noundef %t) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -108
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %rx_defer_refill.i = getelementptr inbounds %struct.ef4_nic_type, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %rx_defer_refill.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_defer_refill.i, align 8
  tail call void %5(ptr noundef %add.ptr) #9
  %slow_fill_count = getelementptr i8, ptr %t, i32 48
  %6 = ptrtoint ptr %slow_fill_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slow_fill_count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %slow_fill_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_rx_packet(ptr noundef %rx_queue, i32 noundef %index, i32 noundef %n_frags, i32 noundef %len, i16 noundef zeroext %flags) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 4
  %add.ptr.i = getelementptr i8, ptr %rx_queue, i32 -356
  %rx_packets = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 26
  %2 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_packets, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %rx_packets, align 4
  %buffer.i = getelementptr %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 2
  %4 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer.i, align 4
  %arrayidx.i = getelementptr %struct.ef4_rx_buffer, ptr %5, i32 %index
  %conv = zext i16 %flags to i32
  %flags3 = getelementptr %struct.ef4_rx_buffer, ptr %5, i32 %index, i32 4
  %6 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags3, align 4
  %or193 = or i16 %7, %flags
  store i16 %or193, ptr %flags3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n_frags)
  %cmp = icmp eq i32 %n_frags, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then8, label %if.then.if.end81_crit_edge

if.then.if.end81_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then8:                                         ; preds = %if.then
  %8 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_queue, align 4
  %len2.i = getelementptr %struct.ef4_rx_buffer, ptr %5, i32 %index, i32 3
  %10 = ptrtoint ptr %len2.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len2.i, align 2
  %conv.i = zext i16 %11 to i32
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type.i, align 4
  %rx_buffer_padding.i = getelementptr inbounds %struct.ef4_nic_type, ptr %13, i32 0, i32 89
  %14 = ptrtoint ptr %rx_buffer_padding.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_buffer_padding.i, align 4
  %sub.i = sub i32 %conv.i, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %len)
  %cmp.not.i = icmp ult i32 %sub.i, %len
  br i1 %cmp.not.i, label %if.end.i, label %if.then8.if.end81_crit_edge, !prof !56

if.then8.if.end81_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.end.i:                                         ; preds = %if.then8
  %16 = or i16 %or193, 4
  %17 = ptrtoint ptr %flags3 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %flags3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %len)
  %cmp9.i = icmp slt i32 %conv.i, %len
  br i1 %cmp9.i, label %land.lhs.true.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %type.i, align 4
  %revision.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %19, i32 0, i32 79
  %20 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp11.i = icmp slt i32 %21, 2
  br i1 %cmp11.i, label %if.then13.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  %call14.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then13.i.if.end23.i_crit_edge, label %do.body.i

if.then13.i.if.end23.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

do.body.i:                                        ; preds = %if.then13.i
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %9, i32 0, i32 20
  %22 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %do.body.i.if.end23.i_crit_edge, label %if.then18.i

do.body.i.if.end23.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then18.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %9, i32 0, i32 69
  %24 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev.i, align 4
  %channel.i.i = getelementptr i8, ptr %rx_queue, i32 -352
  %26 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel.i.i, align 4
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %type.i, align 4
  %rx_buffer_padding21.i = getelementptr inbounds %struct.ef4_nic_type, ptr %29, i32 0, i32 89
  %30 = ptrtoint ptr %rx_buffer_padding21.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_buffer_padding21.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.17, i32 noundef %27, i32 noundef %len, i32 noundef %sub.i, i32 noundef %31) #12
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then18.i, %do.body.i.if.end23.i_crit_edge, %if.then13.i.if.end23.i_crit_edge
  tail call void @ef4_schedule_reset(ptr noundef %9, i32 noundef 10) #9
  br label %if.end38.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %call24.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.else.i.if.end38.i_crit_edge, label %do.body27.i

if.else.i.if.end38.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

do.body27.i:                                      ; preds = %if.else.i
  %msg_enable28.i = getelementptr inbounds %struct.ef4_nic, ptr %9, i32 0, i32 20
  %32 = ptrtoint ptr %msg_enable28.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable28.i, align 8
  %and29.i = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %do.body27.i.if.end38.i_crit_edge, label %if.then31.i

do.body27.i.if.end38.i_crit_edge:                 ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

if.then31.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  %net_dev32.i = getelementptr inbounds %struct.ef4_nic, ptr %9, i32 0, i32 69
  %34 = ptrtoint ptr %net_dev32.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net_dev32.i, align 4
  %channel.i58.i = getelementptr i8, ptr %rx_queue, i32 -352
  %36 = ptrtoint ptr %channel.i58.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channel.i58.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.18, i32 noundef %37, i32 noundef %len, i32 noundef %sub.i) #12
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then31.i, %do.body27.i.if.end38.i_crit_edge, %if.else.i.if.end38.i_crit_edge, %if.end23.i
  %n_rx_overlength.i = getelementptr i8, ptr %rx_queue, i32 -28
  %38 = ptrtoint ptr %n_rx_overlength.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_rx_overlength.i, align 8
  %inc.i = add i32 %39, 1
  store i32 %inc.i, ptr %n_rx_overlength.i, align 8
  br label %if.end81

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %n_frags)
  %cmp9 = icmp ugt i32 %n_frags, 6
  br i1 %cmp9, label %if.else.if.then42_crit_edge, label %lor.lhs.false, !prof !56

if.else.if.then42_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

lor.lhs.false:                                    ; preds = %if.else
  %sub = add nsw i32 %n_frags, -1
  %rx_dma_len = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 42
  %40 = ptrtoint ptr %rx_dma_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_dma_len, align 4
  %mul = mul i32 %41, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %len)
  %cmp13.not = icmp uge i32 %mul, %len
  %mul23 = mul i32 %41, %n_frags
  call void @__sanitizer_cov_trace_cmp4(i32 %mul23, i32 %len)
  %cmp24 = icmp ult i32 %mul23, %len
  %or.cond = or i1 %cmp13.not, %cmp24
  br i1 %or.cond, label %lor.lhs.false.if.then42_crit_edge, label %lor.lhs.false32, !prof !61

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %rx_scatter = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 54
  %42 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rx_scatter, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool33.not = icmp eq i8 %43, 0
  br i1 %tobool33.not, label %lor.lhs.false32.do.end_crit_edge, label %lor.lhs.false32.if.end81_crit_edge, !prof !56

lor.lhs.false32.if.end81_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

lor.lhs.false32.do.end_crit_edge:                 ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then42:                                        ; preds = %lor.lhs.false.if.then42_crit_edge, %if.else.if.then42_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp43 = icmp ne i32 %len, 0
  %44 = and i16 %or193, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool48 = icmp eq i16 %44, 0
  %or.cond213 = select i1 %cmp43, i1 true, i1 %tobool48
  br i1 %or.cond213, label %if.then42.do.end_crit_edge, label %if.then42.if.end69_crit_edge, !prof !62

if.then42.if.end69_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then42.do.end_crit_edge:                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.then42.do.end_crit_edge, %lor.lhs.false32.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 553, i32 noundef 9, ptr noundef null) #9
  br label %if.end69

if.end69:                                         ; preds = %do.end, %if.then42.if.end69_crit_edge
  %45 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %flags3, align 4
  %47 = or i16 %46, 4
  store i16 %47, ptr %flags3, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.end69, %lor.lhs.false32.if.end81_crit_edge, %if.end38.i, %if.then8.if.end81_crit_edge, %if.then.if.end81_crit_edge
  %48 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flags3, align 4
  %50 = and i16 %49, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool86.not = icmp eq i16 %50, 0
  br i1 %tobool86.not, label %if.end94, label %if.then93, !prof !57

if.then93:                                        ; preds = %if.end81
  %rx_pkt_n_frags.i = getelementptr i8, ptr %rx_queue, i32 -8
  %51 = ptrtoint ptr %rx_pkt_n_frags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_pkt_n_frags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i, label %if.then93.ef4_rx_flush_packet.exit_crit_edge, label %if.then.i

if.then93.ef4_rx_flush_packet.exit_crit_edge:     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  br label %ef4_rx_flush_packet.exit

if.then.i:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__ef4_rx_packet(ptr noundef %add.ptr.i) #9
  br label %ef4_rx_flush_packet.exit

ef4_rx_flush_packet.exit:                         ; preds = %if.then.i, %if.then93.ef4_rx_flush_packet.exit_crit_edge
  tail call fastcc void @ef4_discard_rx_packet(ptr noundef %add.ptr.i, ptr noundef %arrayidx.i, i32 noundef %n_frags)
  br label %cleanup

if.end94:                                         ; preds = %if.end81
  %and98 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  %or.cond194 = and i1 %cmp, %tobool99.not
  br i1 %or.cond194, label %if.then100, label %if.end94.if.end103_crit_edge

if.end94.if.end103_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then100:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %conv101 = trunc i32 %len to i16
  %len102 = getelementptr %struct.ef4_rx_buffer, ptr %5, i32 %index, i32 3
  %53 = ptrtoint ptr %len102 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv101, ptr %len102, align 2
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %if.end94.if.end103_crit_edge
  %len104 = getelementptr %struct.ef4_rx_buffer, ptr %5, i32 %index, i32 3
  %54 = ptrtoint ptr %len104 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %len104, align 2
  %conv105 = zext i16 %55 to i32
  %pci_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i, i32 noundef %59, i32 noundef %conv105, i32 noundef 2) #9
  %page.i = getelementptr %struct.ef4_rx_buffer, ptr %5, i32 %index, i32 1
  %60 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %page.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %61) #9
  %page_offset.i = getelementptr %struct.ef4_rx_buffer, ptr %5, i32 %index, i32 2
  %62 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %page_offset.i, align 4
  %conv.i196 = zext i16 %63 to i32
  %add.ptr.i197 = getelementptr i8, ptr %call.i, i32 %conv.i196
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i197) #9, !srcloc !63
  %rx_prefix_size = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 48
  %64 = ptrtoint ptr %rx_prefix_size to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_prefix_size, align 4
  %66 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %page_offset.i, align 4
  %68 = trunc i32 %65 to i16
  %conv108 = add i16 %67, %68
  store i16 %conv108, ptr %page_offset.i, align 4
  %69 = load i32, ptr %rx_prefix_size, align 4
  %70 = ptrtoint ptr %len104 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %len104, align 2
  %72 = trunc i32 %69 to i16
  %conv113 = sub i16 %71, %72
  store i16 %conv113, ptr %len104, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n_frags)
  %cmp114 = icmp ugt i32 %n_frags, 1
  br i1 %cmp114, label %if.then116, label %if.end103.if.end132_crit_edge

if.end103.if.end132_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then116:                                       ; preds = %if.end103
  %sub117 = add i32 %n_frags, -1
  %ptr_mask.i = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 4
  %73 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ptr_mask.i, align 4
  %75 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %buffer.i, align 4
  %arrayidx.i.i214 = getelementptr %struct.ef4_rx_buffer, ptr %76, i32 %74
  %cmp.i215 = icmp eq ptr %arrayidx.i.i214, %arrayidx.i
  %add.ptr.i198216 = getelementptr %struct.ef4_rx_buffer, ptr %arrayidx.i, i32 1
  %spec.select.i217 = select i1 %cmp.i215, ptr %76, ptr %add.ptr.i198216, !prof !56
  %dec218 = add i32 %n_frags, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec218)
  %cmp119219 = icmp eq i32 %dec218, 0
  br i1 %cmp119219, label %if.then116.for.end_crit_edge, label %if.end122.lr.ph

if.then116.for.end_crit_edge:                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end122.lr.ph:                                  ; preds = %if.then116
  %rx_dma_len123 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 42
  br label %if.end122

if.end122:                                        ; preds = %if.end122.if.end122_crit_edge, %if.end122.lr.ph
  %dec221 = phi i32 [ %dec218, %if.end122.lr.ph ], [ %dec, %if.end122.if.end122_crit_edge ]
  %spec.select.i220 = phi ptr [ %spec.select.i217, %if.end122.lr.ph ], [ %spec.select.i, %if.end122.if.end122_crit_edge ]
  %77 = ptrtoint ptr %rx_dma_len123 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_dma_len123, align 4
  %79 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pci_dev.i, align 4
  %dev.i200 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  %81 = ptrtoint ptr %spec.select.i220 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %spec.select.i220, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i200, i32 noundef %82, i32 noundef %78, i32 noundef 2) #9
  %83 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ptr_mask.i, align 4
  %85 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %buffer.i, align 4
  %arrayidx.i.i = getelementptr %struct.ef4_rx_buffer, ptr %86, i32 %84
  %cmp.i = icmp eq ptr %arrayidx.i.i, %spec.select.i220
  %add.ptr.i198 = getelementptr %struct.ef4_rx_buffer, ptr %spec.select.i220, i32 1
  %spec.select.i = select i1 %cmp.i, ptr %86, ptr %add.ptr.i198, !prof !56
  %dec = add i32 %dec221, -1
  %cmp119 = icmp eq i32 %dec, 0
  br i1 %cmp119, label %if.end122.for.end_crit_edge, label %if.end122.if.end122_crit_edge

if.end122.if.end122_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.end122.for.end_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end122.for.end_crit_edge, %if.then116.for.end_crit_edge
  %spec.select.i.lcssa = phi ptr [ %spec.select.i217, %if.then116.for.end_crit_edge ], [ %spec.select.i, %if.end122.for.end_crit_edge ]
  %rx_dma_len125 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 42
  %87 = ptrtoint ptr %rx_dma_len125 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rx_dma_len125, align 4
  %mul126 = mul i32 %88, %sub117
  %sub127 = sub i32 %len, %mul126
  %conv128 = trunc i32 %sub127 to i16
  %len129 = getelementptr inbounds %struct.ef4_rx_buffer, ptr %spec.select.i.lcssa, i32 0, i32 3
  %89 = ptrtoint ptr %len129 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv128, ptr %len129, align 2
  %conv131 = and i32 %sub127, 65535
  %90 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pci_dev.i, align 4
  %dev.i202 = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %92 = ptrtoint ptr %spec.select.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %spec.select.i.lcssa, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i202, i32 noundef %93, i32 noundef %conv131, i32 noundef 2) #9
  br label %if.end132

if.end132:                                        ; preds = %for.end, %if.end103.if.end132_crit_edge
  %page_ring.i = getelementptr i8, ptr %rx_queue, i32 60
  %94 = ptrtoint ptr %page_ring.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %page_ring.i, align 4
  %tobool.not.i205 = icmp eq ptr %95, null
  br i1 %tobool.not.i205, label %if.end132.ef4_recycle_rx_pages.exit_crit_edge, label %do.body.preheader.i, !prof !56

if.end132.ef4_recycle_rx_pages.exit_crit_edge:    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %ef4_recycle_rx_pages.exit

do.body.preheader.i:                              ; preds = %if.end132
  %96 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %buffer.i, align 4
  %arrayidx.i204 = getelementptr %struct.ef4_rx_buffer, ptr %97, i32 %index
  %ptr_mask.i.i = getelementptr i8, ptr %rx_queue, i32 32
  br label %do.body.i206

do.body.i206:                                     ; preds = %do.body.i206.do.body.i206_crit_edge, %do.body.preheader.i
  %rx_buf.addr.0.i = phi ptr [ %spec.select.i.i, %do.body.i206.do.body.i206_crit_edge ], [ %arrayidx.i204, %do.body.preheader.i ]
  %n_frags.addr.0.i = phi i32 [ %dec.i, %do.body.i206.do.body.i206_crit_edge ], [ %n_frags, %do.body.preheader.i ]
  tail call fastcc void @ef4_recycle_rx_page(ptr noundef %add.ptr.i, ptr noundef %rx_buf.addr.0.i) #9
  %98 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ptr_mask.i.i, align 4
  %100 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %buffer.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.ef4_rx_buffer, ptr %101, i32 %99
  %cmp.i.i = icmp eq ptr %arrayidx.i.i.i, %rx_buf.addr.0.i
  %add.ptr.i.i = getelementptr %struct.ef4_rx_buffer, ptr %rx_buf.addr.0.i, i32 1
  %spec.select.i.i = select i1 %cmp.i.i, ptr %101, ptr %add.ptr.i.i, !prof !56
  %dec.i = add i32 %n_frags.addr.0.i, -1
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool5.not.i, label %do.body.i206.ef4_recycle_rx_pages.exit_crit_edge, label %do.body.i206.do.body.i206_crit_edge

do.body.i206.do.body.i206_crit_edge:              ; preds = %do.body.i206
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i206

do.body.i206.ef4_recycle_rx_pages.exit_crit_edge: ; preds = %do.body.i206
  call void @__sanitizer_cov_trace_pc() #11
  br label %ef4_recycle_rx_pages.exit

ef4_recycle_rx_pages.exit:                        ; preds = %do.body.i206.ef4_recycle_rx_pages.exit_crit_edge, %if.end132.ef4_recycle_rx_pages.exit_crit_edge
  %rx_pkt_n_frags.i207 = getelementptr i8, ptr %rx_queue, i32 -8
  %102 = ptrtoint ptr %rx_pkt_n_frags.i207 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rx_pkt_n_frags.i207, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i208 = icmp eq i32 %103, 0
  br i1 %tobool.not.i208, label %ef4_recycle_rx_pages.exit.ef4_rx_flush_packet.exit211_crit_edge, label %if.then.i209

ef4_recycle_rx_pages.exit.ef4_rx_flush_packet.exit211_crit_edge: ; preds = %ef4_recycle_rx_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ef4_rx_flush_packet.exit211

if.then.i209:                                     ; preds = %ef4_recycle_rx_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__ef4_rx_packet(ptr noundef %add.ptr.i) #9
  br label %ef4_rx_flush_packet.exit211

ef4_rx_flush_packet.exit211:                      ; preds = %if.then.i209, %ef4_recycle_rx_pages.exit.ef4_rx_flush_packet.exit211_crit_edge
  %104 = ptrtoint ptr %rx_pkt_n_frags.i207 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %n_frags, ptr %rx_pkt_n_frags.i207, align 4
  %rx_pkt_index = getelementptr i8, ptr %rx_queue, i32 -4
  %105 = ptrtoint ptr %rx_pkt_index to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %index, ptr %rx_pkt_index, align 32
  br label %cleanup

cleanup:                                          ; preds = %ef4_rx_flush_packet.exit211, %ef4_rx_flush_packet.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_discard_rx_packet(ptr nocapture noundef %channel, ptr noundef %rx_buf, i32 noundef %n_frags) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %page_ring.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 12
  %0 = ptrtoint ptr %page_ring.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page_ring.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ef4_recycle_rx_pages.exit_crit_edge, label %do.body.preheader.i, !prof !56

entry.ef4_recycle_rx_pages.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ef4_recycle_rx_pages.exit

do.body.preheader.i:                              ; preds = %entry
  %ptr_mask.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 4
  %buffer.i.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %rx_buf.addr.0.i = phi ptr [ %spec.select.i.i, %do.body.i.do.body.i_crit_edge ], [ %rx_buf, %do.body.preheader.i ]
  %n_frags.addr.0.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ %n_frags, %do.body.preheader.i ]
  tail call fastcc void @ef4_recycle_rx_page(ptr noundef %channel, ptr noundef %rx_buf.addr.0.i) #9
  %2 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptr_mask.i.i, align 4
  %4 = ptrtoint ptr %buffer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.ef4_rx_buffer, ptr %5, i32 %3
  %cmp.i.i = icmp eq ptr %arrayidx.i.i.i, %rx_buf.addr.0.i
  %add.ptr.i.i = getelementptr %struct.ef4_rx_buffer, ptr %rx_buf.addr.0.i, i32 1
  %spec.select.i.i = select i1 %cmp.i.i, ptr %5, ptr %add.ptr.i.i, !prof !56
  %dec.i = add i32 %n_frags.addr.0.i, -1
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool5.not.i, label %do.body.i.ef4_recycle_rx_pages.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i.ef4_recycle_rx_pages.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ef4_recycle_rx_pages.exit

ef4_recycle_rx_pages.exit:                        ; preds = %do.body.i.ef4_recycle_rx_pages.exit_crit_edge, %entry.ef4_recycle_rx_pages.exit_crit_edge
  %rx_queue.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30
  tail call fastcc void @ef4_free_rx_buffers(ptr noundef %rx_queue.i, ptr noundef %rx_buf, i32 noundef %n_frags)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ef4_rx_packet(ptr noundef %channel) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %rx_queue = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30
  %rx_pkt_index = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 29
  %2 = ptrtoint ptr %rx_pkt_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pkt_index, align 32
  %buffer.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 2
  %4 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer.i, align 4
  %arrayidx.i = getelementptr %struct.ef4_rx_buffer, ptr %5, i32 %3
  %page.i = getelementptr %struct.ef4_rx_buffer, ptr %5, i32 %3, i32 1
  %6 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %7) #9
  %page_offset.i = getelementptr %struct.ef4_rx_buffer, ptr %5, i32 %3, i32 2
  %8 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %page_offset.i, align 4
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %conv.i
  %flags = getelementptr %struct.ef4_rx_buffer, ptr %5, i32 %3, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 4
  %12 = and i16 %11, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rx_packet_len_offset = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 50
  %13 = ptrtoint ptr %rx_packet_len_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_packet_len_offset, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %14
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #9
  %len = getelementptr %struct.ef4_rx_buffer, ptr %5, i32 %3, i32 3
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %len, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %loopback_selftest = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 90
  %19 = ptrtoint ptr %loopback_selftest to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %loopback_selftest, align 128
  %tobool4.not = icmp eq ptr %20, null
  br i1 %tobool4.not, label %if.end12, label %if.then7, !prof !57

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %len9 = getelementptr %struct.ef4_rx_buffer, ptr %5, i32 %3, i32 3
  %21 = ptrtoint ptr %len9 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %len9, align 2
  %conv10 = zext i16 %22 to i32
  tail call void @ef4_loopback_rx_packet(ptr noundef %1, ptr noundef %add.ptr.i, i32 noundef %conv10) #9
  %rx_pkt_n_frags = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 28
  %23 = ptrtoint ptr %rx_pkt_n_frags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_pkt_n_frags, align 4
  tail call fastcc void @ef4_free_rx_buffers(ptr noundef %rx_queue, ptr noundef %arrayidx.i, i32 noundef %24)
  br label %out

if.end12:                                         ; preds = %if.end
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %25 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net_dev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 23
  %27 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %features, align 16
  %and13 = and i64 %28, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13)
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %if.then23, label %if.end12.if.end28_crit_edge, !prof !56

if.end12.if.end28_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then23:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %29 = and i16 %11, -3
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %flags, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end12.if.end28_crit_edge
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flags, align 4
  %33 = and i16 %32, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool32.not = icmp eq i16 %33, 0
  br i1 %tobool32.not, label %if.end28.if.else_crit_edge, label %land.lhs.true

if.end28.if.else_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end28
  %type = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 2
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %type, align 8
  %receive_skb = getelementptr inbounds %struct.ef4_channel_type, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %receive_skb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %receive_skb, align 4
  %tobool33.not = icmp eq ptr %37, null
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then34:                                        ; preds = %land.lhs.true
  %rx_pkt_n_frags35 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 28
  %38 = ptrtoint ptr %rx_pkt_n_frags35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_pkt_n_frags35, align 4
  %napi_str.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 8
  %40 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %channel, align 128
  %call.i63 = tail call ptr @napi_get_frags(ptr noundef %napi_str.i) #9
  %tobool.not.i = icmp eq ptr %call.i63, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !prof !56

if.then.i:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ef4_free_rx_buffers(ptr noundef %rx_queue, ptr noundef %arrayidx.i, i32 noundef %39) #9
  br label %out

if.end.i:                                         ; preds = %if.then34
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %41, i32 0, i32 69
  %42 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net_dev.i, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 23
  %44 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %features.i, align 16
  %and.i = and i64 %45, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool6.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then7.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_packet_hash_offset.i.i = getelementptr inbounds %struct.ef4_nic, ptr %41, i32 0, i32 49
  %46 = ptrtoint ptr %rx_packet_hash_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_packet_hash_offset.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %47
  %48 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  %l4_hash.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i63, i32 0, i32 15
  %51 = ptrtoint ptr %l4_hash.i.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load.i.i.i = load i16, ptr %l4_hash.i.i.i, align 8
  %bf.clear7.i.i.i = and i16 %bf.load.i.i.i, -193
  store i16 %bf.clear7.i.i.i, ptr %l4_hash.i.i.i, align 8
  %hash10.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i63, i32 0, i32 15, i32 0, i32 8
  %52 = ptrtoint ptr %hash10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %50, ptr %hash10.i.i.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i.if.end9.i_crit_edge
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %flags, align 4
  %55 = trunc i16 %54 to i8
  %56 = lshr i8 %55, 1
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i63, i32 0, i32 15
  %57 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %58 = and i8 %56, 1
  %bf.value.i = zext i8 %58 to i16
  %bf.shl.i = shl nuw nsw i16 %bf.value.i, 9
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.shl.i, %bf.clear.i
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i63, i32 0, i32 17
  %len20.i = getelementptr inbounds %struct.sk_buff, ptr %call.i63, i32 0, i32 6
  %pfmemalloc.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i63, i32 0, i32 12
  %ptr_mask.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end26.i, %if.end9.i
  %rx_buf.addr.0.i = phi ptr [ %arrayidx.i, %if.end9.i ], [ %spec.select.i.i, %if.end26.i ]
  %59 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %nr_frags.i, align 2
  %conv14.i = zext i8 %62 to i32
  %page.i64 = getelementptr inbounds %struct.ef4_rx_buffer, ptr %rx_buf.addr.0.i, i32 0, i32 1
  %63 = ptrtoint ptr %page.i64 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %page.i64, align 4
  %page_offset.i65 = getelementptr inbounds %struct.ef4_rx_buffer, ptr %rx_buf.addr.0.i, i32 0, i32 2
  %65 = ptrtoint ptr %page_offset.i65 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %page_offset.i65, align 4
  %conv15.i = zext i16 %66 to i32
  %len.i = getelementptr inbounds %struct.ef4_rx_buffer, ptr %rx_buf.addr.0.i, i32 0, i32 3
  %67 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %len.i, align 2
  %conv16.i = zext i16 %68 to i32
  %arrayidx.i.i.i = getelementptr %struct.skb_shared_info, ptr %60, i32 0, i32 12, i32 %conv14.i
  %69 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %64, ptr %arrayidx.i.i.i, align 4
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %60, i32 0, i32 12, i32 %conv14.i, i32 2
  %70 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv15.i, ptr %bv_offset.i.i.i, align 4
  %bv_len.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %60, i32 0, i32 12, i32 %conv14.i, i32 1
  %71 = ptrtoint ptr %bv_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv16.i, ptr %bv_len.i.i.i.i, align 4
  %72 = getelementptr inbounds %struct.page, ptr %64, i32 0, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  %and.i.i.i.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !57

if.then.i.i.i.i:                                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i.i = add i32 %74, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %64 to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %75, %if.end.i.i.i.i ]
  %76 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %77 = getelementptr inbounds %struct.page, ptr %76, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %80 = ptrtoint ptr %79 to i32
  %and.i8.i.i.i = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i8.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %_compound_head.exit.i.i.i.skb_fill_page_desc.exit.i_crit_edge, label %if.then.i.i.i

_compound_head.exit.i.i.i.skb_fill_page_desc.exit.i_crit_edge: ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_fill_page_desc.exit.i

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %pfmemalloc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load.i.i62.i = load i8, ptr %pfmemalloc.i.i.i, align 2
  %bf.set.i.i.i = or i8 %bf.load.i.i62.i, 2
  store i8 %bf.set.i.i.i, ptr %pfmemalloc.i.i.i, align 2
  br label %skb_fill_page_desc.exit.i

skb_fill_page_desc.exit.i:                        ; preds = %if.then.i.i.i, %_compound_head.exit.i.i.i.skb_fill_page_desc.exit.i_crit_edge
  %conv.i.i = add i8 %62, 1
  %82 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv.i.i, ptr %nr_frags.i.i, align 2
  %85 = ptrtoint ptr %page.i64 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %page.i64, align 4
  %86 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %len.i, align 2
  %conv19.i = zext i16 %87 to i32
  %88 = ptrtoint ptr %len20.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len20.i, align 4
  %add.i = add i32 %89, %conv19.i
  store i32 %add.i, ptr %len20.i, align 4
  %90 = load ptr, ptr %end.i.i, align 4
  %nr_frags22.i = getelementptr inbounds %struct.skb_shared_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %nr_frags22.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %nr_frags22.i, align 2
  %conv23.i = zext i8 %92 to i32
  %cmp.i = icmp eq i32 %39, %conv23.i
  br i1 %cmp.i, label %for.end.i, label %if.end26.i

if.end26.i:                                       ; preds = %skb_fill_page_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ptr_mask.i.i, align 4
  %95 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %buffer.i, align 4
  %arrayidx.i.i64.i = getelementptr %struct.ef4_rx_buffer, ptr %96, i32 %94
  %cmp.i.i = icmp eq ptr %arrayidx.i.i64.i, %rx_buf.addr.0.i
  %add.ptr.i65.i = getelementptr %struct.ef4_rx_buffer, ptr %rx_buf.addr.0.i, i32 1
  %spec.select.i.i = select i1 %cmp.i.i, ptr %96, ptr %add.ptr.i65.i, !prof !56
  br label %for.cond.i

for.end.i:                                        ; preds = %skb_fill_page_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i63, i32 0, i32 7
  %97 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add.i, ptr %data_len.i, align 8
  %rx_buffer_truesize.i = getelementptr inbounds %struct.ef4_nic, ptr %41, i32 0, i32 44
  %98 = ptrtoint ptr %rx_buffer_truesize.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rx_buffer_truesize.i, align 4
  %mul.i = mul i32 %99, %39
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i63, i32 0, i32 20
  %100 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %truesize.i, align 8
  %add30.i = add i32 %101, %mul.i
  store i32 %add30.i, ptr %truesize.i, align 8
  %core_index.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 1
  %102 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %core_index.i, align 4
  %conv32.i = trunc i32 %103 to i16
  %add.i.i = add i16 %conv32.i, 1
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i63, i32 0, i32 10
  %104 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %add.i.i, ptr %queue_mapping.i.i, align 8
  %call33.i = tail call i32 @napi_gro_frags(ptr noundef %napi_str.i) #9
  br label %out

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end28.if.else_crit_edge
  %rx_pkt_n_frags36 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 28
  %105 = ptrtoint ptr %rx_pkt_n_frags36 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rx_pkt_n_frags36, align 4
  %len.i66 = getelementptr %struct.ef4_rx_buffer, ptr %5, i32 %3, i32 3
  %107 = ptrtoint ptr %len.i66 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %len.i66, align 2
  %109 = tail call i16 @llvm.umin.i16(i16 %108, i16 128) #9
  %cond.i = zext i16 %109 to i32
  %110 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %channel, align 128
  %net_dev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %111, i32 0, i32 69
  %112 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %net_dev.i.i, align 4
  %rx_ip_align.i.i = getelementptr inbounds %struct.ef4_nic, ptr %111, i32 0, i32 41
  %114 = ptrtoint ptr %rx_ip_align.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rx_ip_align.i.i, align 8
  %rx_prefix_size.i.i = getelementptr inbounds %struct.ef4_nic, ptr %111, i32 0, i32 48
  %116 = ptrtoint ptr %rx_prefix_size.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rx_prefix_size.i.i, align 4
  %add.i.i67 = add i32 %115, %cond.i
  %add2.i.i = add i32 %add.i.i67, %117
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %113, i32 noundef %add2.i.i, i32 noundef 2592) #9
  %cmp.i.i68 = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i.i68, label %if.then.i75, label %do.end.i.i, !prof !56

do.end.i.i:                                       ; preds = %if.else
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %118 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data.i.i, align 4
  %120 = ptrtoint ptr %rx_ip_align.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rx_ip_align.i.i, align 8
  %add.ptr.i.i69 = getelementptr i8, ptr %119, i32 %121
  %122 = ptrtoint ptr %rx_prefix_size.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %rx_prefix_size.i.i, align 4
  %idx.neg.i.i = sub i32 0, %123
  %add.ptr6.i.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i.i
  %add8.i.i = add i32 %123, %cond.i
  %124 = call ptr @memcpy(ptr %add.ptr.i.i69, ptr %add.ptr6.i.i, i32 %add8.i.i)
  %125 = load i32, ptr %rx_ip_align.i.i, align 8
  %126 = load i32, ptr %rx_prefix_size.i.i, align 4
  %add11.i.i = add i32 %126, %125
  %127 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %127, i32 %add11.i.i
  store ptr %add.ptr.i.i.i, ptr %data.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %128 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %129, i32 %add11.i.i
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %130 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.i.not.i.i.i70 = icmp eq i32 %131, 0
  br i1 %tobool.i.not.i.i.i70, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !57

do.body3.i.i.i:                                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #9, !srcloc !64
  unreachable

__skb_put.exit.i.i:                               ; preds = %do.end.i.i
  %add.ptr.i95.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %cond.i
  %132 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %add.ptr.i95.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %133 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %len9.i.i.i, align 4
  %add.i.i.i = add i32 %134, %cond.i
  store i32 %add.i.i.i, ptr %len9.i.i.i, align 4
  %135 = ptrtoint ptr %len.i66 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %len.i66, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %136, i16 %109)
  %cmp13.i.i = icmp ugt i16 %136, %109
  br i1 %cmp13.i.i, label %if.then15.i.i, label %if.else.i.i

if.then15.i.i:                                    ; preds = %__skb_put.exit.i.i
  %137 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %page_offset.i, align 4
  %conv18.i.i = add i16 %138, %109
  store i16 %conv18.i.i, ptr %page_offset.i, align 4
  %conv21.i.i = sub i16 %136, %109
  %139 = ptrtoint ptr %len.i66 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv21.i.i, ptr %len.i66, align 2
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 17
  %pfmemalloc.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 12
  %ptr_mask.i.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end42.i.i, %if.then15.i.i
  %rx_buf.addr.0.i.i = phi ptr [ %arrayidx.i, %if.then15.i.i ], [ %spec.select.i.i.i, %if.end42.i.i ]
  %140 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i71 = getelementptr inbounds %struct.skb_shared_info, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %nr_frags.i.i71 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %nr_frags.i.i71, align 2
  %conv23.i.i = zext i8 %143 to i32
  %page.i.i = getelementptr inbounds %struct.ef4_rx_buffer, ptr %rx_buf.addr.0.i.i, i32 0, i32 1
  %144 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %page.i.i, align 4
  %page_offset24.i.i = getelementptr inbounds %struct.ef4_rx_buffer, ptr %rx_buf.addr.0.i.i, i32 0, i32 2
  %146 = ptrtoint ptr %page_offset24.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %page_offset24.i.i, align 4
  %conv25.i.i = zext i16 %147 to i32
  %len26.i.i = getelementptr inbounds %struct.ef4_rx_buffer, ptr %rx_buf.addr.0.i.i, i32 0, i32 3
  %148 = ptrtoint ptr %len26.i.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %len26.i.i, align 2
  %conv27.i.i = zext i16 %149 to i32
  %arrayidx.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %141, i32 0, i32 12, i32 %conv23.i.i
  %150 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %145, ptr %arrayidx.i.i.i.i, align 4
  %bv_offset.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %141, i32 0, i32 12, i32 %conv23.i.i, i32 2
  %151 = ptrtoint ptr %bv_offset.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %conv25.i.i, ptr %bv_offset.i.i.i.i, align 4
  %bv_len.i.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %141, i32 0, i32 12, i32 %conv23.i.i, i32 1
  %152 = ptrtoint ptr %bv_len.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %conv27.i.i, ptr %bv_len.i.i.i.i.i, align 4
  %153 = getelementptr inbounds %struct.page, ptr %145, i32 0, i32 1
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %153, align 4
  %and.i.i.i.i.i = and i32 %155, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.i, !prof !57

if.then.i.i.i.i.i:                                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i.i.i = add i32 %155, -1
  br label %_compound_head.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %156 = ptrtoint ptr %145 to i32
  br label %_compound_head.exit.i.i.i.i

_compound_head.exit.i.i.i.i:                      ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %156, %if.end.i.i.i.i.i ]
  %157 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  %158 = getelementptr inbounds %struct.page, ptr %157, i32 0, i32 1
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  %161 = ptrtoint ptr %160 to i32
  %and.i8.i.i.i.i = and i32 %161, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i8.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %_compound_head.exit.i.i.i.i.skb_fill_page_desc.exit.i.i_crit_edge, label %if.then.i.i.i.i72

_compound_head.exit.i.i.i.i.skb_fill_page_desc.exit.i.i_crit_edge: ; preds = %_compound_head.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_fill_page_desc.exit.i.i

if.then.i.i.i.i72:                                ; preds = %_compound_head.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %162 = ptrtoint ptr %pfmemalloc.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %bf.load.i.i.i.i = load i8, ptr %pfmemalloc.i.i.i.i, align 2
  %bf.set.i.i.i.i = or i8 %bf.load.i.i.i.i, 2
  store i8 %bf.set.i.i.i.i, ptr %pfmemalloc.i.i.i.i, align 2
  br label %skb_fill_page_desc.exit.i.i

skb_fill_page_desc.exit.i.i:                      ; preds = %if.then.i.i.i.i72, %_compound_head.exit.i.i.i.i.skb_fill_page_desc.exit.i.i_crit_edge
  %conv.i.i.i = add i8 %143, 1
  %163 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %nr_frags.i.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv.i.i.i, ptr %nr_frags.i.i.i, align 2
  %166 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %page.i.i, align 4
  %167 = ptrtoint ptr %len26.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %len26.i.i, align 2
  %conv30.i.i = zext i16 %168 to i32
  %169 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %len9.i.i.i, align 4
  %add32.i.i = add i32 %170, %conv30.i.i
  store i32 %add32.i.i, ptr %len9.i.i.i, align 4
  %171 = load i16, ptr %len26.i.i, align 2
  %conv34.i.i = zext i16 %171 to i32
  %172 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %data_len.i.i.i.i, align 8
  %add35.i.i = add i32 %173, %conv34.i.i
  store i32 %add35.i.i, ptr %data_len.i.i.i.i, align 8
  %174 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags37.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %nr_frags37.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %nr_frags37.i.i, align 2
  %conv38.i.i = zext i8 %176 to i32
  %cmp39.i.i = icmp eq i32 %106, %conv38.i.i
  br i1 %cmp39.i.i, label %skb_fill_page_desc.exit.i.i.if.end46.i.i_crit_edge, label %if.end42.i.i

skb_fill_page_desc.exit.i.i.if.end46.i.i_crit_edge: ; preds = %skb_fill_page_desc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i.i

if.end42.i.i:                                     ; preds = %skb_fill_page_desc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %177 = ptrtoint ptr %ptr_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ptr_mask.i.i.i, align 4
  %179 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %buffer.i, align 4
  %arrayidx.i.i97.i.i = getelementptr %struct.ef4_rx_buffer, ptr %180, i32 %178
  %cmp.i.i.i = icmp eq ptr %arrayidx.i.i97.i.i, %rx_buf.addr.0.i.i
  %add.ptr.i98.i.i = getelementptr %struct.ef4_rx_buffer, ptr %rx_buf.addr.0.i.i, i32 1
  %spec.select.i.i.i = select i1 %cmp.i.i.i, ptr %180, ptr %add.ptr.i98.i.i, !prof !56
  br label %for.cond.i.i

if.else.i.i:                                      ; preds = %__skb_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %181 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %page.i, align 4
  %rx_buffer_order.i.i = getelementptr inbounds %struct.ef4_nic, ptr %111, i32 0, i32 43
  %183 = ptrtoint ptr %rx_buffer_order.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %rx_buffer_order.i.i, align 16
  tail call void @__free_pages(ptr noundef %182, i32 noundef %184) #9
  %185 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr null, ptr %page.i, align 4
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.else.i.i, %skb_fill_page_desc.exit.i.i.if.end46.i.i_crit_edge
  %n_frags.addr.0.i.i = phi i32 [ 0, %if.else.i.i ], [ %106, %skb_fill_page_desc.exit.i.i.if.end46.i.i_crit_edge ]
  %rx_buffer_truesize.i.i = getelementptr inbounds %struct.ef4_nic, ptr %111, i32 0, i32 44
  %186 = ptrtoint ptr %rx_buffer_truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %rx_buffer_truesize.i.i, align 4
  %mul.i.i = mul i32 %187, %n_frags.addr.0.i.i
  %truesize.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 20
  %188 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %truesize.i.i, align 8
  %add47.i.i = add i32 %189, %mul.i.i
  store i32 %add47.i.i, ptr %truesize.i.i, align 8
  %190 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %net_dev.i.i, align 4
  %call49.i.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i.i, ptr noundef %191) #9
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %192 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %call49.i.i, ptr %protocol.i.i, align 8
  %193 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 11
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %193, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %195)
  %cmp.i99.i.i = icmp ult i32 %195, 5
  br i1 %cmp.i99.i.i, label %if.then.i.i.i73, label %if.end46.i.i.if.end.i79_crit_edge

if.end46.i.i.if.end.i79_crit_edge:                ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i79

if.then.i.i.i73:                                  ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %napi_id.i.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 8, i32 15
  %196 = ptrtoint ptr %napi_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %napi_id.i.i.i, align 8
  %198 = ptrtoint ptr %193 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %193, align 4
  br label %if.end.i79

if.then.i75:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %n_rx_noskb_drops.i.i = getelementptr inbounds %struct.ef4_nic, ptr %111, i32 0, i32 106
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_rx_noskb_drops.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %n_rx_noskb_drops.i.i, i32 1, i32 3, i32 1) #9
  %199 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_rx_noskb_drops.i.i, ptr %n_rx_noskb_drops.i.i, i32 1, ptr elementtype(i32) %n_rx_noskb_drops.i.i) #9, !srcloc !59
  tail call fastcc void @ef4_free_rx_buffers(ptr noundef %rx_queue, ptr noundef %arrayidx.i, i32 noundef %106) #9
  br label %out

if.end.i79:                                       ; preds = %if.then.i.i.i73, %if.end46.i.i.if.end.i79_crit_edge
  %core_index.i76 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 1
  %200 = ptrtoint ptr %core_index.i76 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %core_index.i76, align 4
  %conv12.i = trunc i32 %201 to i16
  %add.i49.i = add i16 %conv12.i, 1
  %queue_mapping.i.i77 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 10
  %202 = ptrtoint ptr %queue_mapping.i.i77 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %add.i49.i, ptr %queue_mapping.i.i77, align 8
  %203 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %flags, align 4
  %205 = and i16 %204, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %205)
  %tobool14.not.i = icmp eq i16 %205, 0
  br i1 %tobool14.not.i, label %if.end.i79.if.end22.i_crit_edge, label %if.then21.i, !prof !56

if.end.i79.if.end22.i_crit_edge:                  ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #11
  %ip_summed.i80 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15
  %206 = ptrtoint ptr %ip_summed.i80 to i32
  call void @__asan_load2_noabort(i32 %206)
  %bf.load.i81 = load i16, ptr %ip_summed.i80, align 8
  %bf.clear.i82 = and i16 %bf.load.i81, -1537
  %bf.set.i83 = or i16 %bf.clear.i82, 512
  store i16 %bf.set.i83, ptr %ip_summed.i80, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.end.i79.if.end22.i_crit_edge
  %type.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 2
  %207 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %type.i, align 8
  %receive_skb.i = getelementptr inbounds %struct.ef4_channel_type, ptr %208, i32 0, i32 5
  %209 = ptrtoint ptr %receive_skb.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %receive_skb.i, align 4
  %tobool23.not.i = icmp eq ptr %210, null
  br i1 %tobool23.not.i, label %if.end22.i.if.end30.i_crit_edge, label %if.then24.i

if.end22.i.if.end30.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

if.then24.i:                                      ; preds = %if.end22.i
  %call27.i = tail call zeroext i1 %210(ptr noundef %channel, ptr noundef nonnull %call.i.i.i) #9
  br i1 %call27.i, label %if.then24.i.out_crit_edge, label %if.then24.i.if.end30.i_crit_edge

if.then24.i.if.end30.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

if.then24.i.out_crit_edge:                        ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end30.i:                                       ; preds = %if.then24.i.if.end30.i_crit_edge, %if.end22.i.if.end30.i_crit_edge
  %call31.i = tail call i32 @netif_receive_skb(ptr noundef nonnull %call.i.i.i) #9
  br label %out

out:                                              ; preds = %if.end30.i, %if.then24.i.out_crit_edge, %if.then.i75, %for.end.i, %if.then.i, %if.then7
  %rx_pkt_n_frags38 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 28
  %211 = ptrtoint ptr %rx_pkt_n_frags38 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 0, ptr %rx_pkt_n_frags38, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_loopback_rx_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_free_rx_buffers(ptr nocapture noundef readonly %rx_queue, ptr noundef %rx_buf, i32 noundef %num_bufs) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ptr_mask.i = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 4
  %buffer.i.i = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %rx_buf.addr.0 = phi ptr [ %rx_buf, %entry ], [ %spec.select.i, %if.end.do.body_crit_edge ]
  %num_bufs.addr.0 = phi i32 [ %num_bufs, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  %page = getelementptr inbounds %struct.ef4_rx_buffer, ptr %rx_buf.addr.0, i32 0, i32 1
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %do.body
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !57

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %7 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !56

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.19) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !65
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ef4_free_rx_buffers, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !60

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %6, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %6) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %11 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %page, align 4
  br label %if.end

if.end:                                           ; preds = %put_page.exit, %do.body.if.end_crit_edge
  %12 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ptr_mask.i, align 4
  %14 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ef4_rx_buffer, ptr %15, i32 %13
  %cmp.i = icmp eq ptr %arrayidx.i.i, %rx_buf.addr.0
  %add.ptr.i = getelementptr %struct.ef4_rx_buffer, ptr %rx_buf.addr.0, i32 1
  %spec.select.i = select i1 %cmp.i, ptr %15, ptr %add.ptr.i, !prof !56
  %dec = add i32 %num_bufs.addr.0, -1
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %do.end, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_probe_rx_queue(ptr noundef %rx_queue) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 4
  %rxq_entries = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %rxq_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxq_entries, align 4
  %sub.i83 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i83)
  %tobool.not.i.i.i = icmp eq i32 %sub.i83, 0
  br i1 %tobool.not.i.i.i, label %entry.cond.end24.thread_crit_edge, label %cond.end24

entry.cond.end24.thread_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end24.thread

cond.end24:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub.i83, i1 true) #9, !range !69
  %sub.i.i.i = sub nuw nsw i32 32, %4
  %cond25 = shl nuw i32 1, %sub.i.i.i
  %5 = tail call i32 @llvm.umax.i32(i32 %cond25, i32 512)
  br label %cond.end24.thread

cond.end24.thread:                                ; preds = %cond.end24, %entry.cond.end24.thread_crit_edge
  %6 = phi i32 [ 512, %entry.cond.end24.thread_crit_edge ], [ %5, %cond.end24 ]
  %sub32 = add i32 %6, -1
  %ptr_mask = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 4
  %7 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub32, ptr %ptr_mask, align 4
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 8
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.end24.thread.do.end48_crit_edge, label %do.body34

cond.end24.thread.do.end48_crit_edge:             ; preds = %cond.end24.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

do.body34:                                        ; preds = %cond.end24.thread
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_probe_rx_queue.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_probe_rx_queue, %if.then40)) #9
          to label %do.end48 [label %if.then40], !srcloc !60

if.then40:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %10 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev, align 4
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -352
  %12 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel.i, align 4
  %14 = ptrtoint ptr %rxq_entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rxq_entries, align 4
  %16 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ptr_mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_probe_rx_queue.__UNIQUE_ID_ddebug526, ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef %13, i32 noundef %15, i32 noundef %17) #9
  br label %do.end48

do.end48:                                         ; preds = %if.then40, %do.body34, %cond.end24.thread.do.end48_crit_edge
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 16) #9
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !56

kcalloc.exit.thread:                              ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  %buffer88 = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 2
  br label %cleanup.sink.split

if.end7.i.i:                                      ; preds = %do.end48
  %20 = extractvalue { i32, i1 } %18, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #13
  %buffer = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 2
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i, ptr %buffer, align 4
  %tobool51.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool51.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end53

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end53:                                         ; preds = %if.end7.i.i
  %22 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_queue, align 4
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %type.i, align 4
  %rx_probe.i = getelementptr inbounds %struct.ef4_nic_type, ptr %25, i32 0, i32 46
  %26 = ptrtoint ptr %rx_probe.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_probe.i, align 8
  %call.i = tail call i32 %27(ptr noundef %rx_queue) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool55.not = icmp eq i32 %call.i, 0
  br i1 %tobool55.not, label %if.end53.cleanup_crit_edge, label %if.then56

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %29) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then56, %kcalloc.exit.thread
  %buffer88.sink = phi ptr [ %buffer88, %kcalloc.exit.thread ], [ %buffer, %if.then56 ]
  %retval.0.ph = phi i32 [ -12, %kcalloc.exit.thread ], [ %call.i, %if.then56 ]
  %30 = ptrtoint ptr %buffer88.sink to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %buffer88.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end53.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_init_rx_queue(ptr noundef %rx_queue) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 4
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.body3

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_init_rx_queue.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_init_rx_queue, %if.then7)) #9
          to label %do.end12 [label %if.then7], !srcloc !60

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_queue, align 4
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %5, i32 0, i32 69
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -352
  %8 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_init_rx_queue.__UNIQUE_ID_ddebug527, ptr noundef %7, ptr noundef nonnull @.str.5, i32 noundef %9) #9
  br label %do.end12

do.end12:                                         ; preds = %if.then7, %do.body3, %entry.do.end12_crit_edge
  %added_count = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 7
  %10 = ptrtoint ptr %added_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %added_count, align 4
  %notified_count = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 8
  %11 = ptrtoint ptr %notified_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %notified_count, align 4
  %removed_count = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 9
  %12 = ptrtoint ptr %removed_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %removed_count, align 4
  %min_fill = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 21
  %13 = ptrtoint ptr %min_fill to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %min_fill, align 4
  %call.i = tail call zeroext i1 @iommu_present(ptr noundef nonnull @pci_bus_type) #9
  %rx_bufs_per_page.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 46
  %..i = select i1 %call.i, i32 4096, i32 16
  %14 = ptrtoint ptr %rx_bufs_per_page.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_bufs_per_page.i, align 4
  %div.i = udiv i32 %..i, %15
  %sub.i55.i = add nsw i32 %div.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i55.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i55.i, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %sub.i55.i, i1 true) #9, !range !69
  %sub.i.i.i.i = sub nuw nsw i32 32, %16
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %shl.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl.i.i, i32 4) #9
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !56

kcalloc.exit.thread.i:                            ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  %page_ring57.i = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 12
  %19 = ptrtoint ptr %page_ring57.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %page_ring57.i, align 4
  br label %ef4_init_rx_recycle_ring.exit

if.end7.i.i.i:                                    ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  %20 = extractvalue { i32, i1 } %17, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #13
  %page_ring.i = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 12
  %21 = ptrtoint ptr %page_ring.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i.i, ptr %page_ring.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  %sub36.i = add nsw i32 %shl.i.i, -1
  %spec.select = select i1 %tobool.not.i, i32 0, i32 %sub36.i
  br label %ef4_init_rx_recycle_ring.exit

ef4_init_rx_recycle_ring.exit:                    ; preds = %if.end7.i.i.i, %kcalloc.exit.thread.i
  %sub36.sink.i = phi i32 [ 0, %kcalloc.exit.thread.i ], [ %spec.select, %if.end7.i.i.i ]
  %page_ptr_mask37.i = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 18
  %22 = ptrtoint ptr %page_ptr_mask37.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub36.sink.i, ptr %page_ptr_mask37.i, align 4
  %page_remove = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 14
  %23 = ptrtoint ptr %page_remove to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %page_remove, align 4
  %add = add nsw i32 %sub36.sink.i, 1
  %page_add = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 13
  %24 = ptrtoint ptr %page_add to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %page_add, align 4
  %page_recycle_count = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 15
  %25 = ptrtoint ptr %page_recycle_count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %page_recycle_count, align 4
  %page_recycle_failed = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 16
  %26 = ptrtoint ptr %page_recycle_failed to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %page_recycle_failed, align 4
  %page_recycle_full = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 17
  %27 = ptrtoint ptr %page_recycle_full to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %page_recycle_full, align 4
  %rxq_entries = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 26
  %28 = ptrtoint ptr %rxq_entries to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rxq_entries, align 4
  %sub = add i32 %29, -7
  %rx_pages_per_batch = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 47
  %30 = ptrtoint ptr %rx_pages_per_batch to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_pages_per_batch, align 128
  %32 = ptrtoint ptr %rx_bufs_per_page.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_bufs_per_page.i, align 4
  %mul = mul i32 %33, %31
  %sub13 = sub i32 %sub, %mul
  %34 = load i32, ptr @rx_refill_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.not = icmp eq i32 %34, 0
  br i1 %cmp.not, label %ef4_init_rx_recycle_ring.exit.if.end21_crit_edge, label %if.then14

ef4_init_rx_recycle_ring.exit.if.end21_crit_edge: ; preds = %ef4_init_rx_recycle_ring.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then14:                                        ; preds = %ef4_init_rx_recycle_ring.exit
  call void @__sanitizer_cov_trace_pc() #11
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 100)
  %mul17 = mul i32 %35, %sub
  %div = udiv i32 %mul17, 100
  %36 = tail call i32 @llvm.umin.i32(i32 %div, i32 %sub13)
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %ef4_init_rx_recycle_ring.exit.if.end21_crit_edge
  %trigger.0 = phi i32 [ %sub13, %ef4_init_rx_recycle_ring.exit.if.end21_crit_edge ], [ %36, %if.then14 ]
  %max_fill22 = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 19
  %37 = ptrtoint ptr %max_fill22 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub, ptr %max_fill22, align 4
  %fast_fill_trigger = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 20
  %38 = ptrtoint ptr %fast_fill_trigger to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %trigger.0, ptr %fast_fill_trigger, align 4
  %refill_enabled = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 5
  %39 = ptrtoint ptr %refill_enabled to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %refill_enabled, align 4
  %40 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_queue, align 4
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %type.i, align 4
  %rx_init.i = getelementptr inbounds %struct.ef4_nic_type, ptr %43, i32 0, i32 47
  %44 = ptrtoint ptr %rx_init.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_init.i, align 4
  tail call void %45(ptr noundef %rx_queue) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_fini_rx_queue(ptr noundef %rx_queue) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 4
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.body3

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_fini_rx_queue.__UNIQUE_ID_ddebug530, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_fini_rx_queue, %if.then7)) #9
          to label %do.end12 [label %if.then7], !srcloc !60

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_queue, align 4
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %5, i32 0, i32 69
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -352
  %8 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_fini_rx_queue.__UNIQUE_ID_ddebug530, ptr noundef %7, ptr noundef nonnull @.str.7, i32 noundef %9) #9
  br label %do.end12

do.end12:                                         ; preds = %if.then7, %do.body3, %entry.do.end12_crit_edge
  %slow_fill = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 24
  %call13 = tail call i32 @del_timer_sync(ptr noundef %slow_fill) #9
  %buffer = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 2
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %do.end12.if.end18_crit_edge, label %if.then15

do.end12.if.end18_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then15:                                        ; preds = %do.end12
  %removed_count = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 9
  %12 = ptrtoint ptr %removed_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %removed_count, align 4
  %added_count = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 7
  %14 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %added_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp55 = icmp ult i32 %13, %15
  br i1 %cmp55, label %for.body.lr.ph, label %if.then15.if.end18_crit_edge

if.then15.if.end18_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.body.lr.ph:                                   ; preds = %if.then15
  %ptr_mask = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ %13, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %16 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ptr_mask, align 4
  %and16 = and i32 %17, %i.056
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %arrayidx.i = getelementptr %struct.ef4_rx_buffer, ptr %19, i32 %and16
  tail call fastcc void @ef4_fini_rx_buffer(ptr noundef %rx_queue, ptr noundef %arrayidx.i)
  %inc = add nuw i32 %i.056, 1
  %20 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %added_count, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end18_crit_edge

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end18:                                         ; preds = %for.body.if.end18_crit_edge, %if.then15.if.end18_crit_edge, %do.end12.if.end18_crit_edge
  %page_ptr_mask = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 18
  %page_ring = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 12
  %pci_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 4
  %rx_buffer_order = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 43
  br label %for.body21

for.body21:                                       ; preds = %cleanup.for.body21_crit_edge, %if.end18
  %i.157 = phi i32 [ 0, %if.end18 ], [ %inc28, %cleanup.for.body21_crit_edge ]
  %22 = ptrtoint ptr %page_ring to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %page_ring, align 4
  %arrayidx = getelementptr ptr, ptr %23, i32 %i.157
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %cmp22 = icmp eq ptr %25, null
  br i1 %cmp22, label %for.body21.cleanup_crit_edge, label %if.end24

for.body21.cleanup_crit_edge:                     ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %for.body21
  %call25 = tail call ptr @page_address(ptr noundef nonnull %25) #9
  %26 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call25, align 128
  %30 = ptrtoint ptr %rx_buffer_order to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_buffer_order, align 16
  %shl = shl i32 4096, %31
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %29, i32 noundef %shl, i32 noundef 2, i32 noundef 0) #9
  %32 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !57

if.then.i.i:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %34, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %25 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %35, %if.end.i.i ]
  %36 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %37 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !56

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.19) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !65
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ef4_fini_rx_queue, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !60

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %36, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %36) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %for.body21.cleanup_crit_edge
  %inc28 = add i32 %i.157, 1
  %41 = ptrtoint ptr %page_ptr_mask to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %page_ptr_mask, align 4
  %cmp20.not = icmp ugt i32 %inc28, %42
  br i1 %cmp20.not, label %for.end29, label %cleanup.for.body21_crit_edge

cleanup.for.body21_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21

for.end29:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %page_ring to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %page_ring, align 4
  tail call void @kfree(ptr noundef %44) #9
  %45 = ptrtoint ptr %page_ring to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %page_ring, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_fini_rx_buffer(ptr nocapture noundef readonly %rx_queue, ptr noundef %rx_buf) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %page = getelementptr inbounds %struct.ef4_rx_buffer, ptr %rx_buf, i32 0, i32 1
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !57

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %7 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !56

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.19) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !65
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ef4_fini_rx_buffer, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !60

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %6, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end_crit_edge

folio_put_testzero.exit.i.i.if.end_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %6) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.ef4_rx_buffer, ptr %rx_buf, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 4
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool2.not = icmp eq i16 %12, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %page, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then3.ef4_unmap_rx_buffer.exit_crit_edge, label %if.then.i

if.then3.ef4_unmap_rx_buffer.exit_crit_edge:      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %ef4_unmap_rx_buffer.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_queue, align 4
  %call.i = tail call ptr @page_address(ptr noundef nonnull %14) #9
  %pci_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call.i, align 128
  %rx_buffer_order.i = getelementptr inbounds %struct.ef4_nic, ptr %16, i32 0, i32 43
  %21 = ptrtoint ptr %rx_buffer_order.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_buffer_order.i, align 16
  %shl.i = shl i32 4096, %22
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %20, i32 noundef %shl.i, i32 noundef 2, i32 noundef 0) #9
  br label %ef4_unmap_rx_buffer.exit

ef4_unmap_rx_buffer.exit:                         ; preds = %if.then.i, %if.then3.ef4_unmap_rx_buffer.exit_crit_edge
  tail call fastcc void @ef4_free_rx_buffers(ptr noundef %rx_queue, ptr noundef %rx_buf, i32 noundef 1)
  br label %if.end4

if.end4:                                          ; preds = %ef4_unmap_rx_buffer.exit, %if.end.if.end4_crit_edge
  %23 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %page, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_remove_rx_queue(ptr noundef %rx_queue) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 4
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_remove_rx_queue.__UNIQUE_ID_ddebug531, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_remove_rx_queue, %if.then5)) #9
          to label %do.end9 [label %if.then5], !srcloc !60

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_queue, align 4
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %5, i32 0, i32 69
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -352
  %8 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_remove_rx_queue.__UNIQUE_ID_ddebug531, ptr noundef %7, ptr noundef nonnull @.str.9, i32 noundef %9) #9
  br label %do.end9

do.end9:                                          ; preds = %if.then5, %do.body1, %entry.do.end9_crit_edge
  %10 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_queue, align 4
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type.i, align 4
  %rx_remove.i = getelementptr inbounds %struct.ef4_nic_type, ptr %13, i32 0, i32 48
  %14 = ptrtoint ptr %rx_remove.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_remove.i, align 8
  tail call void %15(ptr noundef %rx_queue) #9
  %buffer = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 2
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %17) #9
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %buffer, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_filter_rfs(ptr noundef %net_dev, ptr noundef %skb, i16 noundef zeroext %rxq_index, i32 noundef %flow_id) local_unnamed_addr #1 align 64 {
entry:
  %spec = alloca %struct.ef4_filter_spec, align 4
  %fk = alloca %struct.flow_keys, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %spec) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %flow_id)
  %cmp = icmp eq i32 %flow_id, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memset(ptr %fk, i32 0, i32 72)
  %call.i = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %skb, ptr noundef nonnull @flow_keys_dissector, ptr noundef nonnull %fk, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br i1 %call.i, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %basic = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 1
  %1 = ptrtoint ptr %basic to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %basic, align 8
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %2, label %if.end3.cleanup_crit_edge [
    i16 2048, label %if.end3.if.end12_crit_edge
    i16 -31011, label %if.end3.if.end12_crit_edge124
  ]

if.end3.if.end12_crit_edge124:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end3.if.end12_crit_edge, %if.end3.if.end12_crit_edge124
  %flags = getelementptr inbounds %struct.flow_dissector_key_control, ptr %fk, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end12
  %rx_scatter = getelementptr i8, ptr %net_dev, i32 4284
  %6 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_scatter, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool15.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool15.not, i32 0, i32 8192
  %conv17 = zext i16 %rxq_index to i32
  %8 = getelementptr inbounds i8, ptr %spec, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 52)
  %rss_context.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec, i32 0, i32 1
  %10 = ptrtoint ptr %rss_context.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %rss_context.i, align 4
  %bf.value7.i = and i32 %conv17, 4095
  %bf.set5.i = or i32 %bf.value7.i, %cond
  %bf.set = or i32 %bf.set5.i, 649101312
  %11 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %bf.set, ptr %spec, align 4
  %ether_type = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec, i32 0, i32 6
  %12 = ptrtoint ptr %ether_type to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %2, ptr %ether_type, align 4
  %ip_proto = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ip_proto, align 2
  %ip_proto21 = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec, i32 0, i32 7
  %15 = ptrtoint ptr %ip_proto21 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ip_proto21, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %2)
  %cmp25 = icmp eq i16 %2, 2048
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %addrs = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8
  %16 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addrs, align 4
  %rem_host = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec, i32 0, i32 9
  %18 = ptrtoint ptr %rem_host to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rem_host, align 4
  %dst = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst, align 8
  %loc_host = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec, i32 0, i32 8
  %21 = ptrtoint ptr %loc_host to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %loc_host, align 4
  br label %if.end37

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %rem_host30 = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec, i32 0, i32 9
  %addrs31 = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8
  %22 = call ptr @memcpy(ptr %rem_host30, ptr %addrs31, i32 16)
  %loc_host33 = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec, i32 0, i32 8
  %dst36 = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8, i32 0, i32 0, i32 1
  %23 = call ptr @memcpy(ptr %loc_host33, ptr %dst36, i32 16)
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then27
  %ports = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 6
  %24 = ptrtoint ptr %ports to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ports, align 4
  %rem_port = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec, i32 0, i32 11
  %26 = ptrtoint ptr %rem_port to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %rem_port, align 2
  %dst40 = getelementptr inbounds %struct.anon.161, ptr %ports, i32 0, i32 1
  %27 = ptrtoint ptr %dst40 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %dst40, align 2
  %loc_port = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec, i32 0, i32 10
  %29 = ptrtoint ptr %loc_port to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %loc_port, align 4
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %type, align 4
  %filter_rfs_insert = getelementptr inbounds %struct.ef4_nic_type, ptr %31, i32 0, i32 69
  %32 = ptrtoint ptr %filter_rfs_insert to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %filter_rfs_insert, align 4
  %call41 = call i32 %33(ptr noundef %add.ptr.i, ptr noundef nonnull %spec) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end37.cleanup_crit_edge, label %if.end45

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45:                                         ; preds = %if.end37
  %arrayidx.i = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 23, i32 %conv17
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %rps_flow_id = getelementptr inbounds %struct.ef4_channel, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %rps_flow_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rps_flow_id, align 16
  %arrayidx48 = getelementptr i32, ptr %37, i32 %call41
  %38 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %flow_id, ptr %arrayidx48, align 4
  %rfs_filters_added = getelementptr inbounds %struct.ef4_channel, ptr %35, i32 0, i32 16
  %39 = ptrtoint ptr %rfs_filters_added to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rfs_filters_added, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %rfs_filters_added, align 4
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2456
  %41 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable, align 8
  %and54 = and i32 %42, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end45.cleanup_crit_edge, label %cleanup.sink.split

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ether_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %44)
  %cmp51 = icmp eq i16 %44, 2048
  %.str.10..str.13 = select i1 %cmp51, ptr @.str.10, ptr @.str.13
  %net_dev57 = getelementptr i8, ptr %net_dev, i32 4572
  %45 = ptrtoint ptr %net_dev57 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net_dev57, align 4
  %47 = ptrtoint ptr %ip_proto21 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ip_proto21, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %48)
  %cmp60 = icmp eq i8 %48, 6
  %cond62 = select i1 %cmp60, ptr @.str.11, ptr @.str.12
  %rem_host63 = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec, i32 0, i32 9
  %49 = ptrtoint ptr %rem_port to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %rem_port, align 2
  %conv66 = zext i16 %50 to i32
  %loc_host67 = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec, i32 0, i32 8
  %51 = ptrtoint ptr %loc_port to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %loc_port, align 4
  %conv70 = zext i16 %52 to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %46, ptr noundef nonnull %.str.10..str.13, ptr noundef nonnull %cond62, ptr noundef %rem_host63, i32 noundef %conv66, ptr noundef %loc_host67, i32 noundef %conv70, i32 noundef %conv17, i32 noundef %flow_id, i32 noundef %call41) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end45.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -93, %if.end.cleanup_crit_edge ], [ -93, %if.end3.cleanup_crit_edge ], [ -93, %if.end12.cleanup_crit_edge ], [ %call41, %if.end37.cleanup_crit_edge ], [ %call41, %cleanup.sink.split ], [ %call41, %if.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fk) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %spec) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__ef4_filter_rfs_expire(ptr noundef %efx, i32 noundef %quota) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 92
  %call.i = tail call i32 @_raw_spin_trylock_bh(ptr noundef %filter_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %filter_rfs_expire_one = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 70
  %2 = ptrtoint ptr %filter_rfs_expire_one to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filter_rfs_expire_one, align 8
  %rps_expire_channel = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 94
  %4 = ptrtoint ptr %rps_expire_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rps_expire_channel, align 4
  %rps_expire_index = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 95
  %6 = ptrtoint ptr %rps_expire_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rps_expire_index, align 8
  %max_rx_ip_filters = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 95
  %8 = ptrtoint ptr %max_rx_ip_filters to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_rx_ip_filters, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quota)
  %tobool2.not50 = icmp eq i32 %quota, 0
  br i1 %tobool2.not50, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %while.body

while.body:                                       ; preds = %if.end18.while.body_crit_edge, %while.body.lr.ph
  %dec53.in = phi i32 [ %quota, %while.body.lr.ph ], [ %dec53, %if.end18.while.body_crit_edge ]
  %index.052 = phi i32 [ %7, %while.body.lr.ph ], [ %index.1, %if.end18.while.body_crit_edge ]
  %channel_idx.051 = phi i32 [ %5, %while.body.lr.ph ], [ %channel_idx.1, %if.end18.while.body_crit_edge ]
  %dec53 = add i32 %dec53.in, -1
  %arrayidx.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %channel_idx.051
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %rps_flow_id = getelementptr inbounds %struct.ef4_channel, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %rps_flow_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rps_flow_id, align 16
  %arrayidx = getelementptr i32, ptr %13, i32 %index.052
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.not = icmp eq i32 %15, -1
  br i1 %cmp.not, label %while.body.if.end11_crit_edge, label %land.lhs.true

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true:                                    ; preds = %while.body
  %call4 = tail call zeroext i1 %3(ptr noundef %efx, i32 noundef %15, i32 noundef %index.052) #9
  br i1 %call4, label %do.body, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.body:                                          ; preds = %land.lhs.true
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 8
  %and = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.do.end_crit_edge, label %if.then7

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %19, ptr noundef nonnull @.str.14, i32 noundef %index.052, i32 noundef %channel_idx.051, i32 noundef %15) #12
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body.do.end_crit_edge
  %20 = ptrtoint ptr %rps_flow_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rps_flow_id, align 16
  %arrayidx10 = getelementptr i32, ptr %21, i32 %index.052
  %22 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %arrayidx10, align 4
  br label %if.end11

if.end11:                                         ; preds = %do.end, %land.lhs.true.if.end11_crit_edge, %while.body.if.end11_crit_edge
  %inc = add i32 %index.052, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %9)
  %cmp12 = icmp eq i32 %inc, %9
  br i1 %cmp12, label %if.then13, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %inc14 = add i32 %channel_idx.051, 1
  %23 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc14, i32 %24)
  %cmp15 = icmp eq i32 %inc14, %24
  %spec.store.select = select i1 %cmp15, i32 0, i32 %inc14
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end11.if.end18_crit_edge
  %channel_idx.1 = phi i32 [ %spec.store.select, %if.then13 ], [ %channel_idx.051, %if.end11.if.end18_crit_edge ]
  %index.1 = phi i32 [ 0, %if.then13 ], [ %inc, %if.end11.if.end18_crit_edge ]
  %tobool2.not = icmp eq i32 %dec53, 0
  br i1 %tobool2.not, label %if.end18.while.end_crit_edge, label %if.end18.while.body_crit_edge

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end18.while.end_crit_edge, %if.end.while.end_crit_edge
  %channel_idx.0.lcssa = phi i32 [ %5, %if.end.while.end_crit_edge ], [ %channel_idx.1, %if.end18.while.end_crit_edge ]
  %index.0.lcssa = phi i32 [ %7, %if.end.while.end_crit_edge ], [ %index.1, %if.end18.while.end_crit_edge ]
  %25 = ptrtoint ptr %rps_expire_channel to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %channel_idx.0.lcssa, ptr %rps_expire_channel, align 4
  %26 = ptrtoint ptr %rps_expire_index to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %index.0.lcssa, ptr %rps_expire_index, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %filter_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %27 = xor i1 %tobool.not, true
  ret i1 %27
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ef4_filter_is_mc_recipient(ptr nocapture noundef readonly %spec) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %2 = and i32 %bf.load, 1090519040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool6.not = icmp eq i32 %2, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %loc_mac = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec, i32 0, i32 4
  %3 = ptrtoint ptr %loc_mac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %loc_mac, align 4
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %6 = and i32 %bf.load, 69206016
  call void @__sanitizer_cov_trace_const_cmp4(i32 69206016, i32 %6)
  %cmp12 = icmp eq i32 %6, 69206016
  br i1 %cmp12, label %if.then13, label %if.end8.if.end34_crit_edge

if.end8.if.end34_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then13:                                        ; preds = %if.end8
  %ether_type = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec, i32 0, i32 6
  %7 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ether_type, align 4
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %8, label %if.then13.if.end34_crit_edge [
    i16 2048, label %land.lhs.true16
    i16 -31011, label %land.lhs.true25
  ]

if.then13.if.end34_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true16:                                  ; preds = %if.then13
  %loc_host = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec, i32 0, i32 8
  %10 = ptrtoint ptr %loc_host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %loc_host, align 4
  %and.i = and i32 %11, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %land.lhs.true16.return_crit_edge, label %land.lhs.true16.if.end34_crit_edge

land.lhs.true16.if.end34_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true16.return_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true25:                                  ; preds = %if.then13
  %loc_host26 = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec, i32 0, i32 8
  %12 = ptrtoint ptr %loc_host26 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %loc_host26, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp30 = icmp eq i8 %13, -1
  br i1 %cmp30, label %land.lhs.true25.return_crit_edge, label %land.lhs.true25.if.end34_crit_edge

land.lhs.true25.if.end34_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true25.return_crit_edge:                 ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end34:                                         ; preds = %land.lhs.true25.if.end34_crit_edge, %land.lhs.true16.if.end34_crit_edge, %if.then13.if.end34_crit_edge, %if.end8.if.end34_crit_edge
  br label %return

return:                                           ; preds = %if.end34, %land.lhs.true25.return_crit_edge, %land.lhs.true16.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end34 ], [ false, %entry.return_crit_edge ], [ true, %land.lhs.true.return_crit_edge ], [ true, %land.lhs.true16.return_crit_edge ], [ true, %land.lhs.true25.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ef4_reuse_page(ptr nocapture noundef %rx_queue) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 4
  %page_ring = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 12
  %2 = ptrtoint ptr %page_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page_ring, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !56

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %page_remove = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 14
  %4 = ptrtoint ptr %page_remove to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_remove, align 4
  %page_ptr_mask = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 18
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %page_remove to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %page_remove, align 4
  %page_add = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 13
  %13 = ptrtoint ptr %page_add to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page_add, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp11.not = icmp eq i32 %12, %14
  br i1 %cmp11.not, label %if.end7.if.end14_crit_edge, label %if.then12

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !57

if.then.i.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %18, -1
  br label %page_count.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %9 to i32
  br label %page_count.exit

page_count.exit:                                  ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %19, %if.end.i.i ]
  %20 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #9
  %21 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp15 = icmp eq i32 %22, 1
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %page_count.exit
  call void @__sanitizer_cov_trace_pc() #11
  %page_recycle_count = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 15
  br label %cleanup.sink.split

if.else:                                          ; preds = %page_count.exit
  %call18 = tail call ptr @page_address(ptr noundef nonnull %9) #9
  %pci_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call18, align 128
  %rx_buffer_order = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 43
  %27 = ptrtoint ptr %rx_buffer_order to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_buffer_order, align 16
  %shl = shl i32 4096, %28
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %26, i32 noundef %shl, i32 noundef 2, i32 noundef 0) #9
  %29 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %16, align 4
  %and.i.i41 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i41)
  %tobool.not.i.i42 = icmp eq i32 %and.i.i41, 0
  br i1 %tobool.not.i.i42, label %if.end.i.i45, label %if.then.i.i44, !prof !57

if.then.i.i44:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i43 = add i32 %30, -1
  br label %_compound_head.exit.i

if.end.i.i45:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i45, %if.then.i.i44
  %retval.0.i.i46 = phi i32 [ %sub.i.i43, %if.then.i.i44 ], [ %31, %if.end.i.i45 ]
  %32 = inttoptr i32 %retval.0.i.i46 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %33 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !56

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str.19) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !65
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ef4_reuse_page, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !60

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %32, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %32) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %page_recycle_failed = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %put_page.exit, %if.then16
  %page_recycle_failed.sink47 = phi ptr [ %page_recycle_failed, %put_page.exit ], [ %page_recycle_count, %if.then16 ]
  %retval.0.ph = phi ptr [ null, %put_page.exit ], [ %9, %if.then16 ]
  %36 = ptrtoint ptr %page_recycle_failed.sink47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %page_recycle_failed.sink47, align 4
  %inc19 = add i32 %37, 1
  store i32 %inc19, ptr %page_recycle_failed.sink47, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_schedule_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_recycle_rx_page(ptr nocapture noundef %channel, ptr nocapture noundef readonly %rx_buf) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %page1 = getelementptr inbounds %struct.ef4_rx_buffer, ptr %rx_buf, i32 0, i32 1
  %0 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page1, align 4
  %rx_queue.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30
  %2 = ptrtoint ptr %rx_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_queue.i, align 4
  %flags = getelementptr inbounds %struct.ef4_rx_buffer, ptr %rx_buf, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 4
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %page_add = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 13
  %7 = ptrtoint ptr %page_add to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %page_add, align 4
  %page_ptr_mask = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 18
  %9 = ptrtoint ptr %page_ptr_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %page_ptr_mask, align 4
  %and3 = and i32 %10, %8
  %page_ring = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 12
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
  %page_remove = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 14
  %15 = ptrtoint ptr %page_remove to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %page_remove, align 4
  %and7 = and i32 %16, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %and7, i32 %and3)
  %cmp8 = icmp eq i32 %and7, %and3
  br i1 %cmp8, label %if.then10, label %if.then5.if.end12_crit_edge

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
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
  store ptr %1, ptr %arrayidx14, align 4
  %21 = ptrtoint ptr %page_add to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %page_add, align 4
  %inc16 = add i32 %22, 1
  store i32 %inc16, ptr %page_add, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %page_recycle_full = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 17
  %23 = ptrtoint ptr %page_recycle_full to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page_recycle_full, align 4
  %inc18 = add i32 %24, 1
  store i32 %inc18, ptr %page_recycle_full, align 4
  %25 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %page1, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end17.ef4_unmap_rx_buffer.exit_crit_edge, label %if.then.i

if.end17.ef4_unmap_rx_buffer.exit_crit_edge:      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %ef4_unmap_rx_buffer.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @page_address(ptr noundef nonnull %26) #9
  %pci_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %3, i32 0, i32 4
  %27 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i, align 128
  %rx_buffer_order.i = getelementptr inbounds %struct.ef4_nic, ptr %3, i32 0, i32 43
  %31 = ptrtoint ptr %rx_buffer_order.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_buffer_order.i, align 16
  %shl.i = shl i32 4096, %32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %30, i32 noundef %shl.i, i32 noundef 2, i32 noundef 0) #9
  br label %ef4_unmap_rx_buffer.exit

ef4_unmap_rx_buffer.exit:                         ; preds = %if.then.i, %if.end17.ef4_unmap_rx_buffer.exit_crit_edge
  %33 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %page1, align 4
  %35 = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %and.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !57

if.then.i.i:                                      ; preds = %ef4_unmap_rx_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %37, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %ef4_unmap_rx_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %34 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %38, %if.end.i.i ]
  %39 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %40 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i.i.i = icmp eq i32 %41, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !56

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.19) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !65
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ef4_recycle_rx_page, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !60

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %39, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %39) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.end12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @napi_get_frags(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_frags(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iommu_present(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/falcon/rx.c", i32 553, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/falcon/rx.c", i32 697, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ef4_probe_rx_queue.__UNIQUE_ID_ddebug526, !3, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/sfc/falcon/rx.c", i32 747, i32 2}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ef4_init_rx_queue.__UNIQUE_ID_ddebug527, !8, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/sfc/falcon/rx.c", i32 789, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ef4_fini_rx_queue.__UNIQUE_ID_ddebug530, !12, !"__UNIQUE_ID_ddebug530", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/sfc/falcon/rx.c", i32 824, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ef4_remove_rx_queue.__UNIQUE_ID_ddebug531, !16, !"__UNIQUE_ID_ddebug531", i1 false, i1 false}
!19 = !{ptr @__param_rx_refill_threshold, !20, !"__param_rx_refill_threshold", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/sfc/falcon/rx.c", i32 834, i32 1}
!21 = !{ptr @__UNIQUE_ID_rx_refill_thresholdtype532, !20, !"__UNIQUE_ID_rx_refill_thresholdtype532", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_rx_refill_threshold533, !23, !"__UNIQUE_ID_rx_refill_threshold533", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/sfc/falcon/rx.c", i32 835, i32 1}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sfc/falcon/rx.c", i32 891, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/sfc/falcon/rx.c", i32 897, i32 3}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sfc/falcon/rx.c", i32 925, i32 4}
!32 = !{ptr @rx_refill_threshold, !33, !"rx_refill_threshold", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sfc/falcon/rx.c", i32 43, i32 21}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/sfc/falcon/rx.c", i32 409, i32 4}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/sfc/falcon/rx.c", i32 417, i32 4}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/mm.h", i32 717, i32 2}
!44 = !{ptr @__param_str_rx_refill_threshold, !20, !"__param_str_rx_refill_threshold", i1 false, i1 false}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i8 0, i8 2}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 2153447979, i64 2153448463, i64 2153448016, i64 2153448072, i64 2153448106, i64 2153448130, i64 2153448171, i64 2153448192, i64 2153448220, i64 2153448254}
!59 = !{i64 2148272140, i64 2148272166, i64 2148272195, i64 2148272229, i64 2148272260, i64 2148272283}
!60 = !{i64 2148753955, i64 2148753960, i64 2148753973, i64 2148754017, i64 2148754051, i64 2148754072}
!61 = !{!"branch_weights", i32 4001, i32 4000000}
!62 = !{!"branch_weights", i32 2002, i32 2000}
!63 = !{i64 769631}
!64 = !{i64 2154607035, i64 2154607523, i64 2154607072, i64 2154607128, i64 2154607162, i64 2154607186, i64 2154607227, i64 2154607248, i64 2154607276, i64 2154607310}
!65 = !{i64 2153428067, i64 2153428550, i64 2153428104, i64 2153428160, i64 2153428194, i64 2153428218, i64 2153428259, i64 2153428280, i64 2153428308, i64 2153428342}
!66 = !{i64 2148360592}
!67 = !{i64 2148275325, i64 2148275357, i64 2148275386, i64 2148275420, i64 2148275451, i64 2148275474}
!68 = !{i64 2148360821}
!69 = !{i32 0, i32 33}
