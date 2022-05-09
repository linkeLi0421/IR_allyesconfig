; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qlcnic/qlcnic_io.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qlcnic/qlcnic_io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.qlcnic_host_tx_ring = type { i32, ptr, [28 x i8], i16, i32, i32, i32, i32, %struct.qlcnic_tx_queue_stats, ptr, ptr, ptr, %struct.napi_struct, ptr, ptr, i32, i32, ptr, %struct.spinlock, [112 x i8] }
%struct.qlcnic_tx_queue_stats = type { i64, i64, i64, i64, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cmd_desc_type0 = type { i8, i8, i16, i32, i64, i16, i16, i8, i8, i8, i8, i64, i64, [4 x i16], i64, [6 x i8], i16 }
%struct.qlcnic_adapter = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i8, i8, i8, [6 x i8], i64, i8, i8, i8, [128 x i32], i8, ptr, ptr, ptr, %struct.qlcnic_adapter_stats, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.qlcnic_filter_hash, %struct.qlcnic_filter_hash, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, ptr }
%struct.qlcnic_adapter_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qlcnic_filter_hash = type { ptr, i8, i16, i16 }
%struct.qlcnic_nic_req = type { i64, i64, [6 x i64] }
%struct.qlcnic_mac_req = type { i8, i8, [6 x i8] }
%struct.sk_buff = type { %union.anon.1, %union.anon.4, %union.anon.111, [48 x i8], %union.anon.112, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.114, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr, %union.anon.3 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.111 = type { i64 }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, ptr }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.116, i32, i32, i32, i16, i16, %union.anon.118, i32, %union.anon.119, %union.anon.120, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.116 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.qlcnic_cmd_buffer = type { ptr, [18 x %struct.qlcnic_skb_frag], i32 }
%struct.qlcnic_skb_frag = type { i64, i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.144, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.144 = type { ptr }
%struct.page = type { i32, %union.anon.12, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.qlcnic_hardware_context = type { ptr, ptr, i32, %struct.rwlock_t, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, [3 x i32], i32, i32, i32, i32, ptr, %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_fw_dump, %struct.qlcnic_fdt, %struct.qlc_83xx_reset, %struct.qlc_83xx_idc, ptr, ptr, ptr, ptr, ptr, [5 x i32], [4 x i32], ptr, i8, [6 x i8], i8, ptr, i32, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.qlcnic_nic_intr_coalesce = type { i8, i8, i16, i16, i16, i16, i16, i32 }
%struct.qlcnic_fw_dump = type { i8, i8, i32, i32, ptr, ptr, i32, ptr, i8, i32, i32, i32, i32 }
%struct.qlcnic_fdt = type { i32, i16, i16, i16, i16, [16 x i8], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i16, i8, [65 x i8] }
%struct.qlc_83xx_reset = type { ptr, i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, i8, i8 }
%struct.qlc_83xx_idc = type { ptr, i64, i64, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr }
%struct.qlcnic_hardware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vlan_ethhdr = type { %union.anon.150, i16, i16, i16 }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { [6 x i8], [6 x i8] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.qlcnic_filter = type { %struct.hlist_node, [6 x i8], i16, i32 }
%struct.qlcnic_host_rds_ring = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, i32, [40 x i8] }
%struct.rcv_desc = type { i16, i16, i32, i64 }
%struct.qlcnic_rx_buffer = type { i16, ptr, %struct.list_head, i64 }
%struct.qlcnic_host_sds_ring = type { i32, i32, ptr, ptr, ptr, ptr, %struct.napi_struct, [3 x %struct.list_head], ptr, i32, i32, [28 x i8], [72 x i8] }
%struct.status_desc = type { [2 x i64] }
%struct.qlcnic_fw_msg = type { %union.anon.153 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i64, [7 x i64] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.qlcnic_dcb = type { ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i32 }
%struct.qlcnic_dcb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qlcnic_recv_context = type { ptr, ptr, i32, i16, i16 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NIC Link is down\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NIC Link is up for loopback test\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NIC Link is up\0A\00", [16 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qlcnic_handle_fw_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1114, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"loopback already in progress\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qlcnic_handle_fw_message\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/qlogic/qlcnic/qlcnic_io.c\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qlcnic_handle_fw_message._entry_ptr = internal global ptr @qlcnic_handle_fw_message._entry, section ".printk_index", align 4
@qlcnic_handle_fw_message._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 1118, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"loopback cable is not connected\0A\00", [63 x i8] zeroinitializer }, align 32
@qlcnic_handle_fw_message._entry_ptr.12 = internal global ptr @qlcnic_handle_fw_message._entry.10, section ".printk_index", align 4
@qlcnic_handle_fw_message._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 1124, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"loopback configure request failed, err %x\0A\00", [53 x i8] zeroinitializer }, align 32
@qlcnic_handle_fw_message._entry_ptr.15 = internal global ptr @qlcnic_handle_fw_message._entry.13, section ".printk_index", align 4
@qlcnic_handle_linkevent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.7, i32 1054, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unsupported cable: OUI 0x%x, length %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qlcnic_handle_linkevent\00", [40 x i8] zeroinitializer }, align 32
@qlcnic_handle_linkevent._entry_ptr = internal global ptr @qlcnic_handle_linkevent._entry, section ".printk_index", align 4
@qlcnic_handle_linkevent._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.7, i32 1057, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unsupported cable length %d\0A\00", [35 x i8] zeroinitializer }, align 32
@qlcnic_handle_linkevent._entry_ptr.20 = internal global ptr @qlcnic_handle_linkevent._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s: %s: \00", [23 x i8] zeroinitializer }, align 32
@__func__.dump_skb = private unnamed_addr constant [9 x i8] c"dump_skb\00", align 1
@dump_skb.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @__func__.dump_skb, ptr @.str.7, ptr @.str.23, i8 1, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qlcnic\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hexdump\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@qlcnic_83xx_process_rcv_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.7, i32 1913, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown opcode: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qlcnic_83xx_process_rcv_ring\00", [35 x i8] zeroinitializer }, align 32
@qlcnic_83xx_process_rcv_ring._entry_ptr = internal global ptr @qlcnic_83xx_process_rcv_ring._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.31 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.32 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 8, i64 141, i64 143, i64 144]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 7]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 5, i64 18, i64 63]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.41 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 794, i32 23 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 804, i32 24 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 808, i32 23 }
@___asan_gen_.59 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 326, i32 6 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1114, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1118, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1122, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1052, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1056, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1483, i32 37 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1486, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [50 x i8] c"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_io.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1912, i32 4 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @qlcnic_83xx_process_rcv_ring._entry, ptr @qlcnic_83xx_process_rcv_ring._entry_ptr, ptr @qlcnic_handle_fw_message._entry, ptr @qlcnic_handle_fw_message._entry.10, ptr @qlcnic_handle_fw_message._entry.13, ptr @qlcnic_handle_fw_message._entry_ptr, ptr @qlcnic_handle_fw_message._entry_ptr.12, ptr @qlcnic_handle_fw_message._entry_ptr.15, ptr @qlcnic_handle_linkevent._entry, ptr @qlcnic_handle_linkevent._entry.18, ptr @qlcnic_handle_linkevent._entry_ptr, ptr @qlcnic_handle_linkevent._entry_ptr.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_handle_fw_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_handle_fw_message._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_handle_fw_message._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_handle_linkevent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_handle_linkevent._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_process_rcv_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_82xx_change_filter(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %uaddr, i16 noundef zeroext %vlan_id, ptr nocapture noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %producer1 = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 5
  %0 = ptrtoint ptr %producer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %producer1, align 4
  %desc_head = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 10
  %2 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc_head, align 4
  %arrayidx = getelementptr %struct.cmd_desc_type0, ptr %3, i32 %1
  %4 = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 56)
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 42949672960, ptr %arrayidx, align 1
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %7 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %portnum, align 2
  %conv = zext i8 %8 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %or = or i64 %shl, 1
  %9 = tail call i64 @llvm.bswap.i64(i64 %or)
  %req_hdr = getelementptr inbounds %struct.qlcnic_nic_req, ptr %arrayidx, i32 0, i32 1
  %10 = ptrtoint ptr %req_hdr to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %req_hdr, align 1
  %words = getelementptr inbounds %struct.qlcnic_nic_req, ptr %arrayidx, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan_id)
  %tobool.not = icmp eq i16 %vlan_id, 0
  %conv5 = select i1 %tobool.not, i8 1, i8 3
  %11 = ptrtoint ptr %words to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv5, ptr %words, align 1
  %mac_addr = getelementptr inbounds %struct.qlcnic_mac_req, ptr %words, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %mac_addr, ptr %uaddr, i32 6)
  %arrayidx7 = getelementptr [6 x i64], ptr %words, i32 0, i32 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %vlan_id)
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %arrayidx7, align 1
  %add = add i32 %1, 1
  %num_desc = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 7
  %15 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_desc, align 4
  %sub = add i32 %16, -1
  %and = and i32 %sub, %add
  %17 = ptrtoint ptr %producer1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and, ptr %producer1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !58
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_xmit_frame(ptr noundef %skb, ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  %src_addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state = getelementptr i8, ptr %netdev, i32 2324
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netif_tx_stop_all_queues(ptr noundef %netdev) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr i8, ptr %netdev, i32 2328
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %6, i32 0, i32 1
  %mac_addr = getelementptr i8, ptr %netdev, i32 2375
  %7 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %h_source, align 4
  %9 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mac_addr, align 4
  %xor.i = xor i32 %10, %8
  %add.ptr.i277 = getelementptr %struct.ethhdr, ptr %6, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %add.ptr.i277 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i277, align 2
  %add.ptr1.i = getelementptr i8, ptr %netdev, i32 2379
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %14, %12
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then3.if.end8_crit_edge, label %if.then3.drop_packet_crit_edge

if.then3.drop_packet_crit_edge:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop_packet

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %tx_ring9 = getelementptr i8, ptr %netdev, i32 2312
  %15 = ptrtoint ptr %tx_ring9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_ring9, align 8
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %17 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %queue_mapping.i, align 8
  %idxprom = zext i16 %18 to i32
  %arrayidx = getelementptr %struct.qlcnic_host_tx_ring, ptr %16, i32 %idxprom
  %num_desc = getelementptr %struct.qlcnic_host_tx_ring, ptr %16, i32 %idxprom, i32 7
  %19 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_desc, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %24 to i32
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 4
  %25 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.i.not = icmp eq i16 %26, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %24)
  %cmp = icmp ugt i8 %24, 13
  %or.cond = select i1 %tobool.i.not, i1 %cmp, i1 false
  br i1 %or.cond, label %for.body.preheader, label %if.end8.if.end29_crit_edge

if.end8.if.end29_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

for.body.preheader:                               ; preds = %if.end8
  %27 = add nsw i32 %conv, -14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %delta.0388 = phi i32 [ %add20, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.0387 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %22, i32 0, i32 12, i32 %i.0387, i32 1
  %28 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bv_len.i, align 4
  %add20 = add i32 %29, %delta.0388
  %inc = add nuw nsw i32 %i.0387, 1
  %exitcond.not = icmp eq i32 %i.0387, %27
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %call21 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %add20) #6
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %for.end.drop_packet_crit_edge, label %if.end24

for.end.drop_packet_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop_packet

if.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end.i, align 4
  %nr_frags26 = getelementptr inbounds %struct.skb_shared_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %nr_frags26 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nr_frags26, align 2
  %conv27 = zext i8 %33 to i32
  br label %if.end29

if.end29:                                         ; preds = %if.end24, %if.end8.if.end29_crit_edge
  %frag_count.0.in = phi i32 [ %conv, %if.end8.if.end29_crit_edge ], [ %conv27, %if.end24 ]
  %frag_count.0 = add nuw nsw i32 %frag_count.0.in, 1
  %producer.i = getelementptr %struct.qlcnic_host_tx_ring, ptr %16, i32 %idxprom, i32 5
  %34 = ptrtoint ptr %producer.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %producer.i, align 4
  %sw_consumer.i = getelementptr %struct.qlcnic_host_tx_ring, ptr %16, i32 %idxprom, i32 6
  %36 = ptrtoint ptr %sw_consumer.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sw_consumer.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %35)
  %cmp.i280 = icmp ugt i32 %37, %35
  br i1 %cmp.i280, label %if.end29.qlcnic_tx_avail.exit_crit_edge, label %if.else.i, !prof !59

if.end29.qlcnic_tx_avail.exit_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_tx_avail.exit

if.else.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_desc, align 4
  %add.i = add i32 %39, %37
  br label %qlcnic_tx_avail.exit

qlcnic_tx_avail.exit:                             ; preds = %if.else.i, %if.end29.qlcnic_tx_avail.exit_crit_edge
  %.pn.i = phi i32 [ %add.i, %if.else.i ], [ %37, %if.end29.qlcnic_tx_avail.exit_crit_edge ]
  %retval.0.i = sub i32 %.pn.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %retval.0.i)
  %cmp31 = icmp ult i32 %retval.0.i, 11
  br i1 %cmp31, label %if.then35, label %qlcnic_tx_avail.exit.if.end43_crit_edge, !prof !60

qlcnic_tx_avail.exit.if.end43_crit_edge:          ; preds = %qlcnic_tx_avail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then35:                                        ; preds = %qlcnic_tx_avail.exit
  %txq = getelementptr %struct.qlcnic_host_tx_ring, ptr %16, i32 %idxprom, i32 17
  %40 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %txq, align 32
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %41, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  %42 = ptrtoint ptr %producer.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %producer.i, align 4
  %44 = ptrtoint ptr %sw_consumer.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sw_consumer.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %43)
  %cmp.i283 = icmp ugt i32 %45, %43
  br i1 %cmp.i283, label %if.then35.qlcnic_tx_avail.exit289_crit_edge, label %if.else.i286, !prof !59

if.then35.qlcnic_tx_avail.exit289_crit_edge:      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_tx_avail.exit289

if.else.i286:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_desc, align 4
  %add.i285 = add i32 %47, %45
  br label %qlcnic_tx_avail.exit289

qlcnic_tx_avail.exit289:                          ; preds = %if.else.i286, %if.then35.qlcnic_tx_avail.exit289_crit_edge
  %.pn.i287 = phi i32 [ %add.i285, %if.else.i286 ], [ %45, %if.then35.qlcnic_tx_avail.exit289_crit_edge ]
  %retval.0.i288 = sub i32 %.pn.i287, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %retval.0.i288)
  %cmp37 = icmp ugt i32 %retval.0.i288, 10
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %qlcnic_tx_avail.exit289
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %txq, align 32
  %state.i276 = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i276) #6
  br label %if.end43

if.else:                                          ; preds = %qlcnic_tx_avail.exit289
  call void @__sanitizer_cov_trace_pc() #8
  %xmit_off = getelementptr %struct.qlcnic_host_tx_ring, ptr %16, i32 %idxprom, i32 8, i32 1
  %50 = ptrtoint ptr %xmit_off to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %xmit_off, align 8
  %inc41 = add i64 %51, 1
  store i64 %inc41, ptr %xmit_off, align 8
  br label %cleanup

if.end43:                                         ; preds = %if.then39, %qlcnic_tx_avail.exit.if.end43_crit_edge
  %52 = ptrtoint ptr %producer.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %producer.i, align 4
  %cmd_buf_arr = getelementptr %struct.qlcnic_host_tx_ring, ptr %16, i32 %idxprom, i32 13
  %54 = ptrtoint ptr %cmd_buf_arr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cmd_buf_arr, align 16
  %arrayidx45 = getelementptr %struct.qlcnic_cmd_buffer, ptr %55, i32 %53
  %pdev46 = getelementptr i8, ptr %netdev, i32 2320
  %56 = ptrtoint ptr %pdev46 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev46, align 8
  %desc_head = getelementptr %struct.qlcnic_host_tx_ring, ptr %16, i32 %idxprom, i32 10
  %58 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %desc_head, align 4
  %arrayidx47 = getelementptr %struct.cmd_desc_type0, ptr %59, i32 %53
  %60 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %arrayidx47, align 8
  %arrayidx1.i = getelementptr i64, ptr %arrayidx47, i32 2
  %61 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 0, ptr %arrayidx1.i, align 8
  %arrayidx2.i = getelementptr i64, ptr %arrayidx47, i32 7
  %62 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 0, ptr %arrayidx2.i, align 8
  %63 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %end.i, align 4
  %nr_frags1.i = getelementptr inbounds %struct.skb_shared_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %nr_frags1.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %nr_frags1.i, align 2
  %conv.i = zext i8 %66 to i32
  %frag_array.i = getelementptr %struct.qlcnic_cmd_buffer, ptr %55, i32 %53, i32 1
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %67 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %69 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %71 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %data_len.i.i, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %68) #6
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end43
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !59

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #6
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44, i32 3
  %73 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %76, %if.end.i.i.i ], [ %74, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #6
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #6
  br label %if.then52

dma_map_single_attrs.exit.i:                      ; preds = %if.end43
  %sub.i.i = sub i32 %70, %72
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %68, i32 noundef %sub.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %77 = load ptr, ptr @mem_map, align 4
  %78 = ptrtoint ptr %68 to i32
  %sub.i76.i = add i32 %78, 1073741824
  %shr.i.i = lshr i32 %sub.i76.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %77, i32 %shr.i.i
  %and.i.i = and i32 %78, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #6
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then52_crit_edge, label %if.end.i

dma_map_single_attrs.exit.i.if.then52_crit_edge:  ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

if.end.i:                                         ; preds = %dma_map_single_attrs.exit.i
  %conv6.i = zext i32 %call41.i.i to i64
  %79 = ptrtoint ptr %frag_array.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv6.i, ptr %frag_array.i, align 8
  %80 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len.i.i, align 4
  %82 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data_len.i.i, align 8
  %sub.i79.i = sub i32 %81, %83
  %conv8.i = zext i32 %sub.i79.i to i64
  %length.i = getelementptr %struct.qlcnic_cmd_buffer, ptr %55, i32 %53, i32 1, i32 0, i32 1
  %84 = ptrtoint ptr %length.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv8.i, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp95.not.i = icmp eq i8 %66, 0
  br i1 %cmp95.not.i, label %if.end.i.if.end54_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end54_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

for.body.i:                                       ; preds = %if.end21.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.096.i = phi i32 [ %add.i291, %if.end21.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %85 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %end.i, align 4
  %arrayidx11.i = getelementptr %struct.skb_shared_info, ptr %86, i32 0, i32 12, i32 %i.096.i
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %86, i32 0, i32 12, i32 %i.096.i, i32 1
  %87 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bv_len.i.i, align 4
  %89 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx11.i, align 4
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %86, i32 0, i32 12, i32 %i.096.i, i32 2
  %91 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %90, i32 noundef %92, i32 noundef %88, i32 noundef 1, i32 noundef 0) #6
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call2.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i81.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i81.not.i, label %while.cond.preheader.i, label %if.end21.i

while.cond.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.096.i)
  %cmp2798.not.i = icmp eq i32 %i.096.i, 0
  br i1 %cmp2798.not.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end21.i:                                       ; preds = %for.body.i
  %add.i291 = add nuw nsw i32 %i.096.i, 1
  %arrayidx13.i = getelementptr %struct.qlcnic_cmd_buffer, ptr %55, i32 %53, i32 1, i32 %add.i291
  %conv22.i = zext i32 %call2.i.i to i64
  %93 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv22.i, ptr %arrayidx13.i, align 8
  %94 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bv_len.i.i, align 4
  %conv25.i = zext i32 %95 to i64
  %length26.i = getelementptr %struct.qlcnic_cmd_buffer, ptr %55, i32 %53, i32 1, i32 %add.i291, i32 1
  %96 = ptrtoint ptr %length26.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %conv25.i, ptr %length26.i, align 8
  %exitcond.not.i = icmp eq i32 %add.i291, %conv.i
  br i1 %exitcond.not.i, label %if.end21.i.if.end54_crit_edge, label %if.end21.i.for.body.i_crit_edge

if.end21.i.for.body.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end21.i.if.end54_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %i.199.i = phi i32 [ %dec100.i, %while.body.i.while.body.i_crit_edge ], [ %i.096.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec100.i = add nsw i32 %i.199.i, -1
  %arrayidx31.i = getelementptr %struct.qlcnic_cmd_buffer, ptr %55, i32 %53, i32 1, i32 %i.199.i
  %97 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx31.i, align 8
  %conv34.i = trunc i64 %98 to i32
  %length35.i = getelementptr %struct.qlcnic_cmd_buffer, ptr %55, i32 %53, i32 1, i32 %i.199.i, i32 1
  %99 = ptrtoint ptr %length35.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %length35.i, align 8
  %conv36.i = trunc i64 %100 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %conv34.i, i32 noundef %conv36.i, i32 noundef 1, i32 noundef 0) #6
  %cmp27.i = icmp sgt i32 %i.199.i, 1
  br i1 %cmp27.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %101 = ptrtoint ptr %frag_array.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %frag_array.i, align 8
  %conv41.i = trunc i64 %102 to i32
  %103 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %len.i.i, align 4
  %105 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %data_len.i.i, align 8
  %sub.i86.i = sub i32 %104, %106
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %conv41.i, i32 noundef %sub.i86.i, i32 noundef 1, i32 noundef 0) #6
  br label %if.then52

if.then52:                                        ; preds = %while.end.i, %dma_map_single_attrs.exit.i.if.then52_crit_edge, %dma_map_single_attrs.exit.thread.i
  %tx_dma_map_error = getelementptr i8, ptr %netdev, i32 3080
  %107 = ptrtoint ptr %tx_dma_map_error to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %tx_dma_map_error, align 8
  %inc53 = add i64 %108, 1
  store i64 %inc53, ptr %tx_dma_map_error, align 8
  br label %drop_packet

if.end54:                                         ; preds = %if.end21.i.if.end54_crit_edge, %if.end.i.if.end54_crit_edge
  %109 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %skb, ptr %arrayidx45, align 8
  %frag_count56 = getelementptr %struct.qlcnic_cmd_buffer, ptr %55, i32 %53, i32 2
  %110 = ptrtoint ptr %frag_count56 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %frag_count.0, ptr %frag_count56, align 8
  %and57 = and i32 %frag_count.0, 255
  %111 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len.i.i, align 4
  %shl = shl i32 %112, 8
  %or = or i32 %shl, %and57
  %113 = tail call i32 @llvm.bswap.i32(i32 %or)
  %nfrags__length = getelementptr %struct.cmd_desc_type0, ptr %59, i32 %53, i32 3
  %114 = ptrtoint ptr %nfrags__length to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %nfrags__length, align 4
  %portnum = getelementptr i8, ptr %netdev, i32 2350
  %115 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %portnum, align 2
  %and60 = and i8 %116, 15
  %shl63 = shl i8 %116, 4
  %or65 = or i8 %and60, %shl63
  %port_ctxid = getelementptr %struct.cmd_desc_type0, ptr %59, i32 %53, i32 7
  %117 = ptrtoint ptr %port_ctxid to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %or65, ptr %port_ctxid, align 4
  %sub78 = add i32 %20, -1
  br label %for.body70

for.body70:                                       ; preds = %for.inc95.for.body70_crit_edge, %if.end54
  %producer.0393 = phi i32 [ %53, %if.end54 ], [ %producer.1373, %for.inc95.for.body70_crit_edge ]
  %i.1390 = phi i32 [ 0, %if.end54 ], [ %inc96, %for.inc95.for.body70_crit_edge ]
  %hwdesc.0389 = phi ptr [ %arrayidx47, %if.end54 ], [ %hwdesc.1371, %for.inc95.for.body70_crit_edge ]
  %rem.urem = and i32 %i.1390, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.urem)
  %cmp71 = icmp eq i32 %rem.urem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1390)
  %cmp74 = icmp ne i32 %i.1390, 0
  %or.cond275 = and i1 %cmp74, %cmp71
  br i1 %or.cond275, label %if.end85.thread, label %if.end85

if.end85.thread:                                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #8
  %add77 = add i32 %producer.0393, 1
  %and79 = and i32 %add77, %sub78
  %118 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %desc_head, align 4
  %arrayidx81 = getelementptr %struct.cmd_desc_type0, ptr %119, i32 %and79
  %120 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 0, ptr %arrayidx81, align 8
  %arrayidx1.i293 = getelementptr i64, ptr %arrayidx81, i32 2
  %121 = ptrtoint ptr %arrayidx1.i293 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 0, ptr %arrayidx1.i293, align 8
  %arrayidx2.i294 = getelementptr i64, ptr %arrayidx81, i32 7
  %122 = ptrtoint ptr %arrayidx2.i294 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 0, ptr %arrayidx2.i294, align 8
  %123 = ptrtoint ptr %cmd_buf_arr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cmd_buf_arr, align 16
  %arrayidx83 = getelementptr %struct.qlcnic_cmd_buffer, ptr %124, i32 %and79
  %125 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %arrayidx83, align 8
  %arrayidx86366 = getelementptr %struct.qlcnic_cmd_buffer, ptr %55, i32 %53, i32 1, i32 %i.1390
  %length367 = getelementptr %struct.qlcnic_cmd_buffer, ptr %55, i32 %53, i32 1, i32 %i.1390, i32 1
  %126 = ptrtoint ptr %length367 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %length367, align 8
  %conv87368 = trunc i64 %127 to i16
  %128 = tail call i16 @llvm.bswap.i16(i16 %conv87368)
  %arrayidx88369 = getelementptr %struct.cmd_desc_type0, ptr %119, i32 %and79, i32 13, i32 0
  %129 = ptrtoint ptr %arrayidx88369 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %arrayidx88369, align 2
  br label %sw.bb

if.end85:                                         ; preds = %for.body70
  %arrayidx86 = getelementptr %struct.qlcnic_cmd_buffer, ptr %55, i32 %53, i32 1, i32 %i.1390
  %length = getelementptr %struct.qlcnic_cmd_buffer, ptr %55, i32 %53, i32 1, i32 %i.1390, i32 1
  %130 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %length, align 8
  %conv87 = trunc i64 %131 to i16
  %132 = tail call i16 @llvm.bswap.i16(i16 %conv87)
  %arrayidx88 = getelementptr %struct.cmd_desc_type0, ptr %hwdesc.0389, i32 0, i32 13, i32 %rem.urem
  %133 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %arrayidx88, align 2
  %134 = zext i32 %rem.urem to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rem.urem, label %if.end85.unreachabledefault [
    i32 0, label %if.end85.sw.bb_crit_edge
    i32 1, label %sw.bb89
    i32 2, label %sw.bb91
    i32 3, label %sw.bb93
  ]

if.end85.sw.bb_crit_edge:                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end85.sw.bb_crit_edge, %if.end85.thread
  %arrayidx86374 = phi ptr [ %arrayidx86366, %if.end85.thread ], [ %arrayidx86, %if.end85.sw.bb_crit_edge ]
  %producer.1372 = phi i32 [ %and79, %if.end85.thread ], [ %producer.0393, %if.end85.sw.bb_crit_edge ]
  %hwdesc.1370 = phi ptr [ %arrayidx81, %if.end85.thread ], [ %hwdesc.0389, %if.end85.sw.bb_crit_edge ]
  %135 = ptrtoint ptr %arrayidx86374 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %arrayidx86374, align 8
  %137 = tail call i64 @llvm.bswap.i64(i64 %136)
  %addr_buffer1 = getelementptr inbounds %struct.cmd_desc_type0, ptr %hwdesc.1370, i32 0, i32 12
  %138 = ptrtoint ptr %addr_buffer1 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %addr_buffer1, align 32
  br label %for.inc95

sw.bb89:                                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  %139 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %arrayidx86, align 8
  %141 = tail call i64 @llvm.bswap.i64(i64 %140)
  %addr_buffer2 = getelementptr inbounds %struct.cmd_desc_type0, ptr %hwdesc.0389, i32 0, i32 4
  %142 = ptrtoint ptr %addr_buffer2 to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %141, ptr %addr_buffer2, align 8
  br label %for.inc95

sw.bb91:                                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  %143 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %arrayidx86, align 8
  %145 = tail call i64 @llvm.bswap.i64(i64 %144)
  %addr_buffer3 = getelementptr inbounds %struct.cmd_desc_type0, ptr %hwdesc.0389, i32 0, i32 11
  %146 = ptrtoint ptr %addr_buffer3 to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %145, ptr %addr_buffer3, align 8
  br label %for.inc95

sw.bb93:                                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  %147 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %arrayidx86, align 8
  %149 = tail call i64 @llvm.bswap.i64(i64 %148)
  %addr_buffer4 = getelementptr inbounds %struct.cmd_desc_type0, ptr %hwdesc.0389, i32 0, i32 14
  %150 = ptrtoint ptr %addr_buffer4 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %149, ptr %addr_buffer4, align 16
  br label %for.inc95

if.end85.unreachabledefault:                      ; preds = %if.end85
  unreachable

for.inc95:                                        ; preds = %sw.bb93, %sw.bb91, %sw.bb89, %sw.bb
  %producer.1373 = phi i32 [ %producer.1372, %sw.bb ], [ %producer.0393, %sw.bb89 ], [ %producer.0393, %sw.bb91 ], [ %producer.0393, %sw.bb93 ]
  %hwdesc.1371 = phi ptr [ %hwdesc.1370, %sw.bb ], [ %hwdesc.0389, %sw.bb89 ], [ %hwdesc.0389, %sw.bb91 ], [ %hwdesc.0389, %sw.bb93 ]
  %inc96 = add nuw nsw i32 %i.1390, 1
  %exitcond396 = icmp eq i32 %i.1390, %frag_count.0.in
  br i1 %exitcond396, label %for.end97, label %for.inc95.for.body70_crit_edge

for.inc95.for.body70_crit_edge:                   ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body70

for.end97:                                        ; preds = %for.inc95
  %add98 = add i32 %producer.1373, 1
  %and100 = and i32 %add98, %sub78
  %151 = ptrtoint ptr %producer.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %and100, ptr %producer.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !61
  %protocol105 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %152 = ptrtoint ptr %protocol105 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %protocol105, align 8
  %154 = zext i16 %153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %153, label %if.end126.thread [
    i16 2048, label %if.then109
    i16 -31011, label %if.then119
  ]

if.end126.thread:                                 ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #8
  %encapsulation376 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  br label %if.then131

if.then109:                                       ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %155 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %157 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %158 to i32
  %add.ptr.i.i295 = getelementptr i8, ptr %156, i32 %conv.i.i
  %protocol111 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i295, i32 0, i32 6
  br label %if.end126

if.then119:                                       ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #8
  %head.i.i296 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %159 = ptrtoint ptr %head.i.i296 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %head.i.i296, align 8
  %network_header.i.i297 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %161 = ptrtoint ptr %network_header.i.i297 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %network_header.i.i297, align 4
  %conv.i.i298 = zext i16 %162 to i32
  %add.ptr.i.i299 = getelementptr i8, ptr %160, i32 %conv.i.i298
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i299, i32 0, i32 3
  br label %if.end126

if.end126:                                        ; preds = %if.then119, %if.then109
  %l4_is_udp.0.shrunk.in.in = phi ptr [ %protocol111, %if.then109 ], [ %nexthdr, %if.then119 ]
  %163 = ptrtoint ptr %l4_is_udp.0.shrunk.in.in to i32
  call void @__asan_load1_noabort(i32 %163)
  %l4_is_udp.0.shrunk.in = load i8, ptr %l4_is_udp.0.shrunk.in.in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %l4_is_udp.0.shrunk.in)
  %l4_is_udp.0.shrunk = icmp ne i8 %l4_is_udp.0.shrunk.in, 17
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %164 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %164)
  %bf.load = load i16, ptr %encapsulation, align 8
  %165 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %165)
  %tobool127.not = icmp eq i16 %165, 0
  %brmerge = select i1 %tobool127.not, i1 true, i1 %l4_is_udp.0.shrunk
  br i1 %brmerge, label %if.end126.if.then131thread-pre-split_crit_edge, label %lor.lhs.false129

if.end126.if.then131thread-pre-split_crit_edge:   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then131thread-pre-split

lor.lhs.false129:                                 ; preds = %if.end126
  %166 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %167, i32 0, i32 46
  %168 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hw_ops.i, align 4
  %encap_tx_offload.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %169, i32 0, i32 52
  %170 = ptrtoint ptr %encap_tx_offload.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %encap_tx_offload.i, align 4
  %call.i = tail call zeroext i1 %171(ptr noundef %add.ptr.i) #6
  br i1 %call.i, label %if.else142, label %lor.lhs.false129.if.then131thread-pre-split_crit_edge

lor.lhs.false129.if.then131thread-pre-split_crit_edge: ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then131thread-pre-split

if.then131thread-pre-split:                       ; preds = %lor.lhs.false129.if.then131thread-pre-split_crit_edge, %if.end126.if.then131thread-pre-split_crit_edge
  %172 = ptrtoint ptr %protocol105 to i32
  call void @__asan_load2_noabort(i32 %172)
  %.pr = load i16, ptr %protocol105, align 8
  br label %if.then131

if.then131:                                       ; preds = %if.then131thread-pre-split, %if.end126.thread
  %173 = phi i16 [ %.pr, %if.then131thread-pre-split ], [ %153, %if.end126.thread ]
  %encapsulation381 = phi ptr [ %encapsulation, %if.then131thread-pre-split ], [ %encapsulation376, %if.end126.thread ]
  %174 = ptrtoint ptr %producer.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %producer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %173)
  %cmp.i300 = icmp eq i16 %173, -32512
  br i1 %cmp.i300, label %if.then.i, label %if.else.i302

if.then.i:                                        ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #8
  %176 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %data.i, align 4
  %h_vlan_TCI.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %177, i32 0, i32 2
  %h_vlan_encapsulated_proto.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %177, i32 0, i32 3
  %178 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %h_vlan_encapsulated_proto.i, align 2
  br label %if.end6.i

if.else.i302:                                     ; preds = %if.then131
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %180 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %180, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end6.thread.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i302
  call void @__sanitizer_cov_trace_pc() #8
  %vlan_tci5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %flags.0.i = phi i16 [ 64, %if.then4.i ], [ 16, %if.then.i ]
  %vlan_tci.0.in.i = phi ptr [ %vlan_tci5.i, %if.then4.i ], [ %h_vlan_TCI.i, %if.then.i ]
  %protocol.0.i = phi i16 [ %173, %if.then4.i ], [ %179, %if.then.i ]
  %181 = ptrtoint ptr %vlan_tci.0.in.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %vlan_tci.0.i = load i16, ptr %vlan_tci.0.in.i, align 2
  %tx_pvid.i = getelementptr i8, ptr %netdev, i32 2360
  %182 = ptrtoint ptr %tx_pvid.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %tx_pvid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %183)
  %tobool7.not.i = icmp eq i16 %183, 0
  br i1 %tobool7.not.i, label %if.end6.i.set_flags.i_crit_edge, label %land.lhs.true.i, !prof !59

if.end6.i.set_flags.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_flags.i

if.end6.thread.i:                                 ; preds = %if.else.i302
  %tx_pvid302.i = getelementptr i8, ptr %netdev, i32 2360
  %184 = ptrtoint ptr %tx_pvid302.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %tx_pvid302.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %185)
  %tobool7.not303.i = icmp eq i16 %185, 0
  br i1 %tobool7.not303.i, label %if.end6.thread.i.set_flags.i_crit_edge, label %if.end24.i, !prof !59

if.end6.thread.i.set_flags.i_crit_edge:           ; preds = %if.end6.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_flags.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %186 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %flags, align 8
  %and.i = and i32 %187, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %unwind_buff, label %land.lhs.true.i.set_flags.i_crit_edge

land.lhs.true.i.set_flags.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_flags.i

if.end24.i:                                       ; preds = %if.end6.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_flags.i

set_flags.i:                                      ; preds = %if.end24.i, %land.lhs.true.i.set_flags.i_crit_edge, %if.end6.thread.i.set_flags.i_crit_edge, %if.end6.i.set_flags.i_crit_edge
  %protocol.0308.i = phi i16 [ %173, %if.end24.i ], [ %protocol.0.i, %if.end6.i.set_flags.i_crit_edge ], [ %173, %if.end6.thread.i.set_flags.i_crit_edge ], [ %protocol.0.i, %land.lhs.true.i.set_flags.i_crit_edge ]
  %flags.1.i = phi i16 [ 64, %if.end24.i ], [ %flags.0.i, %if.end6.i.set_flags.i_crit_edge ], [ 0, %if.end6.thread.i.set_flags.i_crit_edge ], [ %flags.0.i, %land.lhs.true.i.set_flags.i_crit_edge ]
  %vlan_tci.1.i = phi i16 [ %185, %if.end24.i ], [ %vlan_tci.0.i, %if.end6.i.set_flags.i_crit_edge ], [ 0, %if.end6.thread.i.set_flags.i_crit_edge ], [ %vlan_tci.0.i, %land.lhs.true.i.set_flags.i_crit_edge ]
  %188 = tail call i16 @llvm.bswap.i16(i16 %vlan_tci.1.i) #6
  %vlan_TCI.i = getelementptr %struct.cmd_desc_type0, ptr %59, i32 %53, i32 16
  %189 = ptrtoint ptr %vlan_TCI.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %188, ptr %vlan_TCI.i, align 2
  %and28.i = shl nuw nsw i16 %flags.1.i, 8
  %190 = and i16 %and28.i, 32512
  %flags_opcode.i = getelementptr %struct.cmd_desc_type0, ptr %59, i32 %53, i32 2
  %191 = ptrtoint ptr %flags_opcode.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %flags_opcode.i, align 2
  %or34268.i = or i16 %192, %190
  store i16 %or34268.i, ptr %flags_opcode.i, align 2
  %193 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %data.i, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %194, align 1
  %197 = and i8 %196, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool39.not.i = icmp eq i8 %197, 0
  br i1 %tobool39.not.i, label %set_flags.i.if.end45.i_crit_edge, label %if.then40.i

set_flags.i.if.end45.i_crit_edge:                 ; preds = %set_flags.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

if.then40.i:                                      ; preds = %set_flags.i
  call void @__sanitizer_cov_trace_pc() #8
  %198 = or i16 %flags.1.i, 1
  %eth_addr.i = getelementptr %struct.cmd_desc_type0, ptr %59, i32 %53, i32 15
  %199 = call ptr @memcpy(ptr %eth_addr.i, ptr %194, i32 6)
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then40.i, %set_flags.i.if.end45.i_crit_edge
  %flags.2.i = phi i16 [ %198, %if.then40.i ], [ %flags.1.i, %set_flags.i.if.end45.i_crit_edge ]
  %200 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %end.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %201, i32 0, i32 4
  %202 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %203)
  %tobool.i.not.i = icmp eq i16 %203, 0
  br i1 %tobool.i.not.i, label %if.else109.i, label %if.then46.i

if.then46.i:                                      ; preds = %if.end45.i
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %204 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %206 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %207 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %205, i32 %conv.i.i.i
  %208 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %209 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %210 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %bf.load.i.i.i = load i16, ptr %doff.i.i.i, align 4
  %211 = lshr i16 %bf.load.i.i.i, 10
  %212 = and i16 %211, 60
  %mul.i.i.i = zext i16 %212 to i32
  %add.i303 = add i32 %sub.ptr.sub.i.i, %mul.i.i.i
  %conv49.i = trunc i32 %add.i303 to i8
  %213 = tail call i16 @llvm.bswap.i16(i16 %203) #6
  %mss.i = getelementptr %struct.cmd_desc_type0, ptr %59, i32 %53, i32 6
  %214 = ptrtoint ptr %mss.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %213, ptr %mss.i, align 2
  %hdr_length.i = getelementptr %struct.cmd_desc_type0, ptr %59, i32 %53, i32 8
  %215 = ptrtoint ptr %hdr_length.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %conv49.i, ptr %hdr_length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %protocol.0308.i)
  %cmp52.i = icmp eq i16 %protocol.0308.i, -31011
  %cond.i = select i1 %cmp52.i, i16 768, i16 640
  %216 = and i16 %flags.2.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %216)
  %tobool57.not.i = icmp eq i16 %216, 0
  %.pre.i = and i32 %add.i303, 255
  br i1 %tobool57.not.i, label %if.then46.i.if.end80.i_crit_edge, label %if.then58.i

if.then46.i.if.end80.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80.i

if.then58.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #8
  %add61.i = add nuw nsw i32 %.pre.i, 4
  %conv62.i = trunc i32 %add61.i to i8
  %217 = ptrtoint ptr %hdr_length.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %conv62.i, ptr %hdr_length.i, align 1
  %218 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 4, ptr %arrayidx47, align 64
  %ip_hdr_offset.i = getelementptr %struct.cmd_desc_type0, ptr %59, i32 %53, i32 1
  %219 = ptrtoint ptr %ip_hdr_offset.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 4, ptr %ip_hdr_offset.i, align 1
  %or64.i = or i16 %flags.2.i, 16
  %220 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %desc_head, align 4
  %222 = ptrtoint ptr %cmd_buf_arr to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cmd_buf_arr, align 16
  %arrayidx66.i = getelementptr %struct.qlcnic_cmd_buffer, ptr %223, i32 %175
  %224 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr null, ptr %arrayidx66.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 58, i32 %.pre.i)
  %cmp70.i = icmp ugt i32 %.pre.i, 58
  %.add61.i = select i1 %cmp70.i, i32 62, i32 %add61.i
  %add.ptr.i304 = getelementptr %struct.cmd_desc_type0, ptr %221, i32 %175, i32 2
  %225 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %data.i, align 4
  %227 = call ptr @memcpy(ptr %add.ptr.i304, ptr %226, i32 12)
  %h_vlan_proto.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i304, i32 0, i32 1
  %228 = ptrtoint ptr %h_vlan_proto.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 -32512, ptr %h_vlan_proto.i, align 2
  %h_vlan_TCI73.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i304, i32 0, i32 2
  %229 = ptrtoint ptr %h_vlan_TCI73.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %vlan_tci.1.i, ptr %h_vlan_TCI73.i, align 2
  %add.ptr74.i = getelementptr i8, ptr %add.ptr.i304, i32 16
  %sub75.i = add nsw i32 %.add61.i, -16
  %230 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i305 = getelementptr i8, ptr %230, i32 12
  %231 = call ptr @memcpy(ptr %add.ptr74.i, ptr %add.ptr.i.i305, i32 %sub75.i)
  %sub76.i = add nsw i32 %.add61.i, -4
  %add77.i = add i32 %175, 1
  %232 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %num_desc, align 4
  %sub78.i = add i32 %233, -1
  %and79.i = and i32 %sub78.i, %add77.i
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then58.i, %if.then46.i.if.end80.i_crit_edge
  %flags.3.i = phi i16 [ %or64.i, %if.then58.i ], [ %flags.2.i, %if.then46.i.if.end80.i_crit_edge ]
  %copied.0.i = phi i32 [ %sub76.i, %if.then58.i ], [ 0, %if.then46.i.if.end80.i_crit_edge ]
  %offset.0.i = phi i32 [ 0, %if.then58.i ], [ 2, %if.then46.i.if.end80.i_crit_edge ]
  %producer.0.i = phi i32 [ %and79.i, %if.then58.i ], [ %175, %if.then46.i.if.end80.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre.i, i32 %copied.0.i)
  %cmp82314.i = icmp ugt i32 %.pre.i, %copied.0.i
  br i1 %cmp82314.i, label %while.body.lr.ph.i, label %if.end80.i.while.end.i308_crit_edge

if.end80.i.while.end.i308_crit_edge:              ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i308

while.body.lr.ph.i:                               ; preds = %if.end80.i
  %sub84.peel.i = sub nuw nsw i32 64, %offset.0.i
  %sub86.peel.i = sub nsw i32 %.pre.i, %copied.0.i
  %234 = tail call i32 @llvm.smin.i32(i32 %sub84.peel.i, i32 %sub86.peel.i) #6
  %235 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %desc_head, align 4
  %arrayidx95.peel.i = getelementptr %struct.cmd_desc_type0, ptr %236, i32 %producer.0.i
  %237 = ptrtoint ptr %cmd_buf_arr to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %cmd_buf_arr, align 16
  %arrayidx97.peel.i = getelementptr %struct.qlcnic_cmd_buffer, ptr %238, i32 %producer.0.i
  %239 = ptrtoint ptr %arrayidx97.peel.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr null, ptr %arrayidx97.peel.i, align 8
  %add.ptr99.peel.i = getelementptr i8, ptr %arrayidx95.peel.i, i32 %offset.0.i
  %240 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %data.i, align 4
  %add.ptr.i274.peel.i = getelementptr i8, ptr %241, i32 %copied.0.i
  %242 = call ptr @memcpy(ptr %add.ptr99.peel.i, ptr %add.ptr.i274.peel.i, i32 %234)
  %add100.peel.i = add nsw i32 %234, %copied.0.i
  %add101.peel.i = add i32 %producer.0.i, 1
  %243 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %num_desc, align 4
  %sub103.peel.i = add i32 %244, -1
  %and104.peel.i = and i32 %sub103.peel.i, %add101.peel.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre.i, i32 %add100.peel.i)
  %cmp82.peel.i = icmp sgt i32 %.pre.i, %add100.peel.i
  br i1 %cmp82.peel.i, label %while.body.lr.ph.i.while.body.i307_crit_edge, label %while.body.lr.ph.i.while.end.i308_crit_edge

while.body.lr.ph.i.while.end.i308_crit_edge:      ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i308

while.body.lr.ph.i.while.body.i307_crit_edge:     ; preds = %while.body.lr.ph.i
  br label %while.body.i307

while.body.i307:                                  ; preds = %while.body.i307.while.body.i307_crit_edge, %while.body.lr.ph.i.while.body.i307_crit_edge
  %producer.1317.i = phi i32 [ %and104.i, %while.body.i307.while.body.i307_crit_edge ], [ %and104.peel.i, %while.body.lr.ph.i.while.body.i307_crit_edge ]
  %copied.1315.i = phi i32 [ %add100.i, %while.body.i307.while.body.i307_crit_edge ], [ %add100.peel.i, %while.body.lr.ph.i.while.body.i307_crit_edge ]
  %sub86.i = sub i32 %.pre.i, %copied.1315.i
  %245 = tail call i32 @llvm.smin.i32(i32 %sub86.i, i32 64) #6
  %246 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %desc_head, align 4
  %arrayidx95.i = getelementptr %struct.cmd_desc_type0, ptr %247, i32 %producer.1317.i
  %248 = ptrtoint ptr %cmd_buf_arr to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %cmd_buf_arr, align 16
  %arrayidx97.i = getelementptr %struct.qlcnic_cmd_buffer, ptr %249, i32 %producer.1317.i
  %250 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr null, ptr %arrayidx97.i, align 8
  %251 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %data.i, align 4
  %add.ptr.i274.i = getelementptr i8, ptr %252, i32 %copied.1315.i
  %253 = call ptr @memcpy(ptr %arrayidx95.i, ptr %add.ptr.i274.i, i32 %245)
  %add100.i = add i32 %245, %copied.1315.i
  %add101.i = add i32 %producer.1317.i, 1
  %254 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %num_desc, align 4
  %sub103.i = add i32 %255, -1
  %and104.i = and i32 %sub103.i, %add101.i
  %cmp82.i = icmp sgt i32 %.pre.i, %add100.i
  br i1 %cmp82.i, label %while.body.i307.while.body.i307_crit_edge, label %while.body.i307.while.end.i308_crit_edge, !llvm.loop !62

while.body.i307.while.end.i308_crit_edge:         ; preds = %while.body.i307
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i308

while.body.i307.while.body.i307_crit_edge:        ; preds = %while.body.i307
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i307

while.end.i308:                                   ; preds = %while.body.i307.while.end.i308_crit_edge, %while.body.lr.ph.i.while.end.i308_crit_edge, %if.end80.i.while.end.i308_crit_edge
  %producer.1.lcssa.i = phi i32 [ %producer.0.i, %if.end80.i.while.end.i308_crit_edge ], [ %and104.peel.i, %while.body.lr.ph.i.while.end.i308_crit_edge ], [ %and104.i, %while.body.i307.while.end.i308_crit_edge ]
  %256 = ptrtoint ptr %producer.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %producer.1.lcssa.i, ptr %producer.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !64
  %lso_frames.i = getelementptr i8, ptr %netdev, i32 3008
  %257 = ptrtoint ptr %lso_frames.i to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %lso_frames.i, align 8
  %inc.i = add i64 %258, 1
  store i64 %inc.i, ptr %lso_frames.i, align 8
  br label %qlcnic_tx_pkt.exit.thread

if.else109.i:                                     ; preds = %if.end45.i
  %259 = ptrtoint ptr %encapsulation381 to i32
  call void @__asan_load2_noabort(i32 %259)
  %bf.load110.i = load i16, ptr %encapsulation381, align 8
  %260 = and i16 %bf.load110.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %260)
  %cmp114.i = icmp eq i16 %260, 1536
  br i1 %cmp114.i, label %if.then116.i, label %if.else109.i.qlcnic_tx_pkt.exit.thread_crit_edge

if.else109.i.qlcnic_tx_pkt.exit.thread_crit_edge: ; preds = %if.else109.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_tx_pkt.exit.thread

if.then116.i:                                     ; preds = %if.else109.i
  %261 = zext i16 %protocol.0308.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %261, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %protocol.0308.i, label %if.then116.i.qlcnic_tx_pkt.exit.thread_crit_edge [
    i16 2048, label %if.then120.i
    i16 -31011, label %if.then138.i
  ]

if.then116.i.qlcnic_tx_pkt.exit.thread_crit_edge: ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_tx_pkt.exit.thread

if.then120.i:                                     ; preds = %if.then116.i
  %head.i.i275.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %262 = ptrtoint ptr %head.i.i275.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %head.i.i275.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %264 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i276.i = zext i16 %265 to i32
  %add.ptr.i.i277.i = getelementptr i8, ptr %263, i32 %conv.i.i276.i
  %protocol122.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i277.i, i32 0, i32 6
  %266 = ptrtoint ptr %protocol122.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %protocol122.i, align 1
  %268 = zext i8 %267 to i64
  call void @__sanitizer_cov_trace_switch(i64 %268, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %267, label %if.end154.fold.split.i [
    i8 6, label %if.then120.i.qlcnic_tx_pkt.exit.thread_crit_edge
    i8 17, label %if.then131.i
  ]

if.then120.i.qlcnic_tx_pkt.exit.thread_crit_edge: ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_tx_pkt.exit.thread

if.then131.i:                                     ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_tx_pkt.exit.thread

if.then138.i:                                     ; preds = %if.then116.i
  %head.i.i278.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %269 = ptrtoint ptr %head.i.i278.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %head.i.i278.i, align 8
  %network_header.i.i279.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %271 = ptrtoint ptr %network_header.i.i279.i to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %network_header.i.i279.i, align 4
  %conv.i.i280.i = zext i16 %272 to i32
  %add.ptr.i.i281.i = getelementptr i8, ptr %270, i32 %conv.i.i280.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i281.i, i32 0, i32 3
  %273 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %nexthdr.i, align 2
  %275 = zext i8 %274 to i64
  call void @__sanitizer_cov_trace_switch(i64 %275, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %274, label %if.end154.fold.split270.i [
    i8 6, label %if.then138.i.qlcnic_tx_pkt.exit.thread_crit_edge
    i8 17, label %if.then148.i
  ]

if.then138.i.qlcnic_tx_pkt.exit.thread_crit_edge: ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_tx_pkt.exit.thread

if.then148.i:                                     ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_tx_pkt.exit.thread

if.end154.fold.split.i:                           ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_tx_pkt.exit.thread

if.end154.fold.split270.i:                        ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_tx_pkt.exit.thread

qlcnic_tx_pkt.exit.thread:                        ; preds = %if.end154.fold.split270.i, %if.end154.fold.split.i, %if.then148.i, %if.then138.i.qlcnic_tx_pkt.exit.thread_crit_edge, %if.then131.i, %if.then120.i.qlcnic_tx_pkt.exit.thread_crit_edge, %if.then116.i.qlcnic_tx_pkt.exit.thread_crit_edge, %if.else109.i.qlcnic_tx_pkt.exit.thread_crit_edge, %while.end.i308
  %opcode.0.i = phi i16 [ %cond.i, %while.end.i308 ], [ 384, %if.then131.i ], [ 1536, %if.then148.i ], [ 128, %if.else109.i.qlcnic_tx_pkt.exit.thread_crit_edge ], [ 256, %if.then120.i.qlcnic_tx_pkt.exit.thread_crit_edge ], [ 128, %if.end154.fold.split.i ], [ 128, %if.then116.i.qlcnic_tx_pkt.exit.thread_crit_edge ], [ 1408, %if.then138.i.qlcnic_tx_pkt.exit.thread_crit_edge ], [ 128, %if.end154.fold.split270.i ]
  %flags.4.i = phi i16 [ %flags.3.i, %while.end.i308 ], [ %flags.2.i, %if.then131.i ], [ %flags.2.i, %if.then148.i ], [ %flags.2.i, %if.else109.i.qlcnic_tx_pkt.exit.thread_crit_edge ], [ %flags.2.i, %if.then120.i.qlcnic_tx_pkt.exit.thread_crit_edge ], [ %flags.2.i, %if.end154.fold.split.i ], [ %flags.2.i, %if.then116.i.qlcnic_tx_pkt.exit.thread_crit_edge ], [ %flags.2.i, %if.then138.i.qlcnic_tx_pkt.exit.thread_crit_edge ], [ %flags.2.i, %if.end154.fold.split270.i ]
  %head.i.i282.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %276 = ptrtoint ptr %head.i.i282.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %head.i.i282.i, align 8
  %transport_header.i.i283.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %278 = ptrtoint ptr %transport_header.i.i283.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %transport_header.i.i283.i, align 2
  %conv.i.i284.i = zext i16 %279 to i32
  %add.ptr.i.i285.i = getelementptr i8, ptr %277, i32 %conv.i.i284.i
  %280 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i287.i = ptrtoint ptr %add.ptr.i.i285.i to i32
  %sub.ptr.rhs.cast.i288.i = ptrtoint ptr %281 to i32
  %sub.ptr.sub.i289.i = sub i32 %sub.ptr.lhs.cast.i287.i, %sub.ptr.rhs.cast.i288.i
  %282 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx47, align 64
  %284 = trunc i32 %sub.ptr.sub.i289.i to i8
  %conv159.i = add i8 %283, %284
  store i8 %conv159.i, ptr %arrayidx47, align 64
  %285 = load ptr, ptr %head.i.i282.i, align 8
  %network_header.i.i291.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %286 = ptrtoint ptr %network_header.i.i291.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %network_header.i.i291.i, align 4
  %conv.i.i292.i = zext i16 %287 to i32
  %add.ptr.i.i293.i = getelementptr i8, ptr %285, i32 %conv.i.i292.i
  %288 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i295.i = ptrtoint ptr %add.ptr.i.i293.i to i32
  %sub.ptr.rhs.cast.i296.i = ptrtoint ptr %288 to i32
  %sub.ptr.sub.i297.i = sub i32 %sub.ptr.lhs.cast.i295.i, %sub.ptr.rhs.cast.i296.i
  %ip_hdr_offset161.i = getelementptr %struct.cmd_desc_type0, ptr %59, i32 %53, i32 1
  %289 = ptrtoint ptr %ip_hdr_offset161.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %ip_hdr_offset161.i, align 1
  %291 = trunc i32 %sub.ptr.sub.i297.i to i8
  %conv164.i = add i8 %290, %291
  store i8 %conv164.i, ptr %ip_hdr_offset161.i, align 1
  %292 = and i16 %flags.4.i, 127
  %or170.i = or i16 %292, %opcode.0.i
  %293 = tail call i16 @llvm.bswap.i16(i16 %or170.i) #6
  br label %if.end153

if.else142:                                       ; preds = %lor.lhs.false129
  %294 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %end.i, align 4
  %gso_size.i.i311 = getelementptr inbounds %struct.skb_shared_info, ptr %295, i32 0, i32 4
  %296 = ptrtoint ptr %gso_size.i.i311 to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %gso_size.i.i311, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %297)
  %tobool.i.not.i312 = icmp eq i16 %297, 0
  br i1 %tobool.i.not.i312, label %if.else.i338, label %if.then.i327

if.then.i327:                                     ; preds = %if.else142
  %298 = ptrtoint ptr %producer.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %producer.i, align 4
  %head.i.i313 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %300 = ptrtoint ptr %head.i.i313 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %head.i.i313, align 8
  %inner_transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %302 = ptrtoint ptr %inner_transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %inner_transport_header.i.i, align 2
  %conv.i.i314 = zext i16 %303 to i32
  %add.ptr.i.i315 = getelementptr i8, ptr %301, i32 %conv.i.i314
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i315, i32 0, i32 4
  %304 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %305 = lshr i16 %bf.load.i.i, 10
  %306 = and i16 %305, 60
  %mul.i.i = zext i16 %306 to i32
  %add.ptr.i316 = getelementptr i8, ptr %add.ptr.i.i315, i32 %mul.i.i
  %inner_mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %307 = ptrtoint ptr %inner_mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %inner_mac_header.i.i, align 2
  %conv.i5.i = zext i16 %308 to i32
  %add.ptr.i6.i = getelementptr i8, ptr %301, i32 %conv.i5.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i316 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i6.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i317 = trunc i32 %sub.ptr.sub.i to i8
  %transport_header.i.i.i318 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %309 = ptrtoint ptr %transport_header.i.i.i318 to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %transport_header.i.i.i318, align 2
  %conv.i.i.i319 = zext i16 %310 to i32
  %add.ptr.i.i.i320 = getelementptr i8, ptr %301, i32 %conv.i.i.i319
  %311 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i321 = ptrtoint ptr %add.ptr.i.i.i320 to i32
  %sub.ptr.rhs.cast.i.i322 = ptrtoint ptr %312 to i32
  %sub.ptr.sub.i.i323 = sub i32 %sub.ptr.lhs.cast.i.i321, %sub.ptr.rhs.cast.i.i322
  %313 = trunc i32 %sub.ptr.sub.i.i323 to i8
  %conv7.i = add i8 %313, 16
  %outer_hdr_length.i = getelementptr %struct.cmd_desc_type0, ptr %59, i32 %53, i32 9
  %314 = ptrtoint ptr %outer_hdr_length.i to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %conv7.i, ptr %outer_hdr_length.i, align 2
  %conv11.i = add i8 %conv7.i, %conv.i317
  %315 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %end.i, align 4
  %gso_size.i324 = getelementptr inbounds %struct.skb_shared_info, ptr %316, i32 0, i32 4
  %317 = ptrtoint ptr %gso_size.i324 to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %gso_size.i324, align 4
  %319 = tail call i16 @llvm.bswap.i16(i16 %318) #6
  %mss.i325 = getelementptr %struct.cmd_desc_type0, ptr %59, i32 %53, i32 6
  %320 = ptrtoint ptr %mss.i325 to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 %319, ptr %mss.i325, align 2
  %hdr_length.i326 = getelementptr %struct.cmd_desc_type0, ptr %59, i32 %53, i32 8
  %321 = ptrtoint ptr %hdr_length.i326 to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 %conv.i317, ptr %hdr_length.i326, align 1
  %conv15.i = zext i8 %conv11.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv11.i)
  %cmp44.not.i = icmp eq i8 %conv11.i, 0
  br i1 %cmp44.not.i, label %if.then.i327.while.end.i335_crit_edge, label %if.then.i327.while.body.i334_crit_edge

if.then.i327.while.body.i334_crit_edge:           ; preds = %if.then.i327
  br label %while.body.i334

if.then.i327.while.end.i335_crit_edge:            ; preds = %if.then.i327
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i335

while.body.i334:                                  ; preds = %while.body.i334.while.body.i334_crit_edge, %if.then.i327.while.body.i334_crit_edge
  %producer.046.i = phi i32 [ %and.i332, %while.body.i334.while.body.i334_crit_edge ], [ %299, %if.then.i327.while.body.i334_crit_edge ]
  %copied.045.i = phi i32 [ %add22.i, %while.body.i334.while.body.i334_crit_edge ], [ 0, %if.then.i327.while.body.i334_crit_edge ]
  %sub.i = sub i32 %conv15.i, %copied.045.i
  %322 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 64) #6
  %323 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %desc_head, align 4
  %arrayidx.i = getelementptr %struct.cmd_desc_type0, ptr %324, i32 %producer.046.i
  %325 = ptrtoint ptr %cmd_buf_arr to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %cmd_buf_arr, align 16
  %arrayidx20.i = getelementptr %struct.qlcnic_cmd_buffer, ptr %326, i32 %producer.046.i
  %327 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr null, ptr %arrayidx20.i, align 8
  %328 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %data.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %329, i32 %copied.045.i
  %330 = call ptr @memcpy(ptr %arrayidx.i, ptr %add.ptr.i8.i, i32 %322)
  %add22.i = add i32 %322, %copied.045.i
  %add23.i = add i32 %producer.046.i, 1
  %331 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %num_desc, align 4
  %sub24.i = add i32 %332, -1
  %and.i332 = and i32 %sub24.i, %add23.i
  %cmp.i333 = icmp slt i32 %add22.i, %conv15.i
  br i1 %cmp.i333, label %while.body.i334.while.body.i334_crit_edge, label %while.body.i334.while.end.i335_crit_edge

while.body.i334.while.end.i335_crit_edge:         ; preds = %while.body.i334
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i335

while.body.i334.while.body.i334_crit_edge:        ; preds = %while.body.i334
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i334

while.end.i335:                                   ; preds = %while.body.i334.while.end.i335_crit_edge, %if.then.i327.while.end.i335_crit_edge
  %producer.0.lcssa.i = phi i32 [ %299, %if.then.i327.while.end.i335_crit_edge ], [ %and.i332, %while.body.i334.while.end.i335_crit_edge ]
  %333 = ptrtoint ptr %producer.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %producer.0.lcssa.i, ptr %producer.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !65
  br label %if.end62.sink.split.i

if.else.i338:                                     ; preds = %if.else142
  %334 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %334)
  %bf.load.i337 = load i16, ptr %encapsulation, align 8
  %335 = and i16 %bf.load.i337, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %335)
  %cmp30.i = icmp eq i16 %335, 1536
  br i1 %cmp30.i, label %if.then32.i, label %if.else.i338.qlcnic_tx_encap_pkt.exit_crit_edge

if.else.i338.qlcnic_tx_encap_pkt.exit_crit_edge:  ; preds = %if.else.i338
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_tx_encap_pkt.exit

if.then32.i:                                      ; preds = %if.else.i338
  call void @__sanitizer_cov_trace_pc() #8
  %head.i.i9.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %336 = ptrtoint ptr %head.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %head.i.i9.i, align 8
  %inner_network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %338 = ptrtoint ptr %inner_network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %338)
  %339 = load i16, ptr %inner_network_header.i.i.i, align 4
  %conv.i.i10.i = zext i16 %339 to i32
  %add.ptr.i.i11.i = getelementptr i8, ptr %337, i32 %conv.i.i10.i
  %340 = ptrtoint ptr %add.ptr.i.i11.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %bf.load34.i = load i8, ptr %add.ptr.i.i11.i, align 4
  %bf.lshr35.mask.i = and i8 %bf.load34.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr35.mask.i)
  %cmp37.i = icmp eq i8 %bf.lshr35.mask.i, 96
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i11.i, i32 0, i32 6
  %nexthdr.i339 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i11.i, i32 0, i32 3
  %.sink.in.i = select i1 %cmp37.i, ptr %nexthdr.i339, ptr %protocol.i
  %341 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %.sink.i = load i8, ptr %.sink.in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %.sink.i)
  %cmp51.i = icmp eq i8 %.sink.i, 17
  %spec.select2.i = select i1 %cmp51.i, i16 9, i16 1
  br label %if.end62.sink.split.i

if.end62.sink.split.i:                            ; preds = %if.then32.i, %while.end.i335
  %.sink = phi i32 [ 3024, %if.then32.i ], [ 3016, %while.end.i335 ]
  %encap_descr.1.ph.i = phi i16 [ %spec.select2.i, %if.then32.i ], [ 49, %while.end.i335 ]
  %opcode.0.ph.i = phi i16 [ 896, %if.then32.i ], [ 1024, %while.end.i335 ]
  %encap_tx_csummed.i = getelementptr i8, ptr %netdev, i32 %.sink
  %342 = ptrtoint ptr %encap_tx_csummed.i to i32
  call void @__asan_load8_noabort(i32 %342)
  %343 = load i64, ptr %encap_tx_csummed.i, align 8
  %inc60.i = add i64 %343, 1
  store i64 %inc60.i, ptr %encap_tx_csummed.i, align 8
  br label %qlcnic_tx_encap_pkt.exit

qlcnic_tx_encap_pkt.exit:                         ; preds = %if.end62.sink.split.i, %if.else.i338.qlcnic_tx_encap_pkt.exit_crit_edge
  %encap_descr.1.i = phi i16 [ 1, %if.else.i338.qlcnic_tx_encap_pkt.exit_crit_edge ], [ %encap_descr.1.ph.i, %if.end62.sink.split.i ]
  %opcode.0.i340 = phi i16 [ 128, %if.else.i338.qlcnic_tx_encap_pkt.exit_crit_edge ], [ %opcode.0.ph.i, %if.end62.sink.split.i ]
  %head.i.i20.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %344 = ptrtoint ptr %head.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %head.i.i20.i, align 8
  %network_header.i.i.i341 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %346 = ptrtoint ptr %network_header.i.i.i341 to i32
  call void @__asan_load2_noabort(i32 %346)
  %347 = load i16, ptr %network_header.i.i.i341, align 4
  %conv.i.i21.i = zext i16 %347 to i32
  %add.ptr.i.i22.i = getelementptr i8, ptr %345, i32 %conv.i.i21.i
  %348 = ptrtoint ptr %add.ptr.i.i22.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %bf.load64.i = load i8, ptr %add.ptr.i.i22.i, align 4
  %bf.lshr65.mask.i = and i8 %bf.load64.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr65.mask.i)
  %cmp67.i = icmp eq i8 %bf.lshr65.mask.i, 96
  %349 = or i16 %encap_descr.1.i, 2
  %spec.select3.i = select i1 %cmp67.i, i16 %349, i16 %encap_descr.1.i
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %350 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %350)
  %351 = load i16, ptr %transport_header.i.i, align 2
  %sub.i.i342 = sub i16 %351, %347
  %352 = shl i16 %sub.i.i342, 4
  %353 = and i16 %352, -64
  %conv77.i = or i16 %353, %spec.select3.i
  %354 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i29.i = ptrtoint ptr %add.ptr.i.i22.i to i32
  %sub.ptr.rhs.cast.i30.i = ptrtoint ptr %355 to i32
  %sub.ptr.sub.i31.i = sub i32 %sub.ptr.lhs.cast.i29.i, %sub.ptr.rhs.cast.i30.i
  %call78.tr.i = trunc i32 %sub.ptr.sub.i31.i to i16
  %356 = shl i16 %call78.tr.i, 10
  %conv82.i = or i16 %conv77.i, %356
  %357 = tail call i16 @llvm.bswap.i16(i16 %conv82.i) #6
  %encap_descr83.i = getelementptr %struct.cmd_desc_type0, ptr %59, i32 %53, i32 5
  %358 = ptrtoint ptr %encap_descr83.i to i32
  call void @__asan_store2_noabort(i32 %358)
  store i16 %357, ptr %encap_descr83.i, align 16
  %359 = ptrtoint ptr %head.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %head.i.i20.i, align 8
  %inner_transport_header.i33.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %361 = ptrtoint ptr %inner_transport_header.i33.i to i32
  call void @__asan_load2_noabort(i32 %361)
  %362 = load i16, ptr %inner_transport_header.i33.i, align 2
  %conv.i34.i = zext i16 %362 to i32
  %add.ptr.i35.i = getelementptr i8, ptr %360, i32 %conv.i34.i
  %363 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast85.i = ptrtoint ptr %add.ptr.i35.i to i32
  %sub.ptr.rhs.cast86.i = ptrtoint ptr %364 to i32
  %sub.ptr.sub87.i = sub i32 %sub.ptr.lhs.cast85.i, %sub.ptr.rhs.cast86.i
  %conv88.i = trunc i32 %sub.ptr.sub87.i to i8
  %365 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 %conv88.i, ptr %arrayidx47, align 64
  %366 = load ptr, ptr %head.i.i20.i, align 8
  %inner_network_header.i.i37.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %367 = ptrtoint ptr %inner_network_header.i.i37.i to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %inner_network_header.i.i37.i, align 4
  %conv.i.i38.i = zext i16 %368 to i32
  %add.ptr.i.i39.i = getelementptr i8, ptr %366, i32 %conv.i.i38.i
  %369 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i41.i = ptrtoint ptr %add.ptr.i.i39.i to i32
  %sub.ptr.rhs.cast.i42.i = ptrtoint ptr %369 to i32
  %sub.ptr.sub.i43.i = sub i32 %sub.ptr.lhs.cast.i41.i, %sub.ptr.rhs.cast.i42.i
  %conv90.i = trunc i32 %sub.ptr.sub.i43.i to i8
  %ip_hdr_offset.i343 = getelementptr %struct.cmd_desc_type0, ptr %59, i32 %53, i32 1
  %370 = ptrtoint ptr %ip_hdr_offset.i343 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %conv90.i, ptr %ip_hdr_offset.i343, align 1
  %371 = tail call i16 @llvm.bswap.i16(i16 %opcode.0.i340) #6
  %flags_opcode.i344 = getelementptr %struct.cmd_desc_type0, ptr %59, i32 %53, i32 2
  br label %if.end153

if.end153:                                        ; preds = %qlcnic_tx_encap_pkt.exit, %qlcnic_tx_pkt.exit.thread
  %flags_opcode.i.sink401 = phi ptr [ %flags_opcode.i, %qlcnic_tx_pkt.exit.thread ], [ %flags_opcode.i344, %qlcnic_tx_encap_pkt.exit ]
  %.sink400 = phi i16 [ %293, %qlcnic_tx_pkt.exit.thread ], [ %371, %qlcnic_tx_encap_pkt.exit ]
  %372 = ptrtoint ptr %flags_opcode.i.sink401 to i32
  call void @__asan_load2_noabort(i32 %372)
  %373 = load i16, ptr %flags_opcode.i.sink401, align 2
  %or175269.i = or i16 %373, %.sink400
  store i16 %or175269.i, ptr %flags_opcode.i.sink401, align 2
  %drv_mac_learn = getelementptr i8, ptr %netdev, i32 2392
  %374 = ptrtoint ptr %drv_mac_learn to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %drv_mac_learn, align 8, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %375)
  %tobool154.not = icmp eq i8 %375, 0
  br i1 %tobool154.not, label %if.end153.if.end156_crit_edge, label %if.then155

if.end153.if.end156_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

if.then155:                                       ; preds = %if.end153
  %376 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %data.i, align 4
  %378 = ptrtoint ptr %protocol105 to i32
  call void @__asan_load2_noabort(i32 %378)
  %379 = load i16, ptr %protocol105, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_addr.i) #6
  %380 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store8_noabort(i32 %380)
  store i64 0, ptr %src_addr.i, align 8
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %377, i32 0, i32 1
  %mac_addr.i = getelementptr i8, ptr %netdev, i32 2375
  %381 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %h_source.i, align 4
  %383 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %mac_addr.i, align 4
  %xor.i.i = xor i32 %384, %382
  %add.ptr.i.i346 = getelementptr %struct.ethhdr, ptr %377, i32 0, i32 1, i32 4
  %385 = ptrtoint ptr %add.ptr.i.i346 to i32
  call void @__asan_load2_noabort(i32 %385)
  %386 = load i16, ptr %add.ptr.i.i346, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %netdev, i32 2379
  %387 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %387)
  %388 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %388, %386
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i347 = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i347, label %if.then155.qlcnic_send_filter.exit_crit_edge, label %if.end.i350

if.then155.qlcnic_send_filter.exit_crit_edge:     ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_send_filter.exit

if.end.i350:                                      ; preds = %if.then155
  %389 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %flags, align 8
  %and.i348 = and i32 %390, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i348)
  %tobool.not.i349 = icmp eq i32 %and.i348, 0
  br i1 %tobool.not.i349, label %if.end.i350.if.end12.i_crit_edge, label %if.then4.i352

if.end.i350.if.end12.i_crit_edge:                 ; preds = %if.end.i350
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then4.i352:                                    ; preds = %if.end.i350
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %379)
  %cmp.i351 = icmp eq i16 %379, -32512
  br i1 %cmp.i351, label %if.then6.i, label %if.else.i356

if.then6.i:                                       ; preds = %if.then4.i352
  call void @__sanitizer_cov_trace_pc() #8
  %h_vlan_TCI.i353 = getelementptr inbounds %struct.vlan_ethhdr, ptr %377, i32 0, i32 2
  br label %if.end12.sink.split.i

if.else.i356:                                     ; preds = %if.then4.i352
  %vlan_present.i354 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %391 = ptrtoint ptr %vlan_present.i354 to i32
  call void @__asan_loadN_noabort(i32 %391, i32 4)
  %bf.load.i355 = load i32, ptr %vlan_present.i354, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i355)
  %tobool8.not.i = icmp sgt i32 %bf.load.i355, -1
  br i1 %tobool8.not.i, label %if.else.i356.if.end12.i_crit_edge, label %if.then9.i

if.else.i356.if.end12.i_crit_edge:                ; preds = %if.else.i356
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.else.i356
  call void @__sanitizer_cov_trace_pc() #8
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  br label %if.end12.sink.split.i

if.end12.sink.split.i:                            ; preds = %if.then9.i, %if.then6.i
  %h_vlan_TCI.sink.i = phi ptr [ %h_vlan_TCI.i353, %if.then6.i ], [ %vlan_tci.i, %if.then9.i ]
  %392 = ptrtoint ptr %h_vlan_TCI.sink.i to i32
  call void @__asan_load2_noabort(i32 %392)
  %393 = load i16, ptr %h_vlan_TCI.sink.i, align 2
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end12.sink.split.i, %if.else.i356.if.end12.i_crit_edge, %if.end.i350.if.end12.i_crit_edge
  %vlan_id.0.i = phi i16 [ 0, %if.else.i356.if.end12.i_crit_edge ], [ 0, %if.end.i350.if.end12.i_crit_edge ], [ %393, %if.end12.sink.split.i ]
  %394 = call ptr @memcpy(ptr %src_addr.i, ptr %h_source.i, i32 6)
  %395 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_load8_noabort(i32 %395)
  %396 = load i64, ptr %src_addr.i, align 8
  %shr.i.i357 = lshr i64 %396, 40
  %397 = zext i16 %vlan_id.0.i to i64
  %and7.i.i = xor i64 %396, %397
  %xor4.i.i = xor i64 %and7.i.i, %shr.i.i357
  %conv5.i.i = trunc i64 %xor4.i.i to i32
  %fhash.i = getelementptr i8, ptr %netdev, i32 3448
  %fbucket_size.i = getelementptr i8, ptr %netdev, i32 3456
  %398 = ptrtoint ptr %fbucket_size.i to i32
  call void @__asan_load2_noabort(i32 %398)
  %399 = load i16, ptr %fbucket_size.i, align 8
  %400 = ptrtoint ptr %fhash.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %fhash.i, align 8
  %402 = add i16 %399, 255
  %403 = and i16 %402, 255
  %and18.i = zext i16 %403 to i32
  %idxprom.i = and i32 %and18.i, %conv5.i.i
  %arrayidx.i358 = getelementptr %struct.hlist_head, ptr %401, i32 %idxprom.i
  %404 = ptrtoint ptr %arrayidx.i358 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %arrayidx.i358, align 4
  %tobool23.not12.i = icmp eq ptr %405, null
  br i1 %tobool23.not12.i, label %if.end12.i.for.end.i_crit_edge, label %land.rhs.lr.ph.i

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

land.rhs.lr.ph.i:                                 ; preds = %if.end12.i
  %406 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %src_addr.i, align 8
  %add.ptr1.i4.i = getelementptr inbounds i8, ptr %src_addr.i, i32 4
  %408 = ptrtoint ptr %add.ptr1.i4.i to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %add.ptr1.i4.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %tmp_fil.013.i = phi ptr [ %405, %land.rhs.lr.ph.i ], [ %411, %for.inc.i.land.rhs.i_crit_edge ]
  %410 = ptrtoint ptr %tmp_fil.013.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %tmp_fil.013.i, align 4
  %faddr.i = getelementptr inbounds %struct.qlcnic_filter, ptr %tmp_fil.013.i, i32 0, i32 1
  %412 = ptrtoint ptr %faddr.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %faddr.i, align 4
  %xor.i2.i = xor i32 %413, %407
  %add.ptr.i3.i = getelementptr %struct.qlcnic_filter, ptr %tmp_fil.013.i, i32 0, i32 1, i32 4
  %414 = ptrtoint ptr %add.ptr.i3.i to i32
  call void @__asan_load2_noabort(i32 %414)
  %415 = load i16, ptr %add.ptr.i3.i, align 2
  %xor37.i5.i = xor i16 %415, %409
  %xor3.i6.i = zext i16 %xor37.i5.i to i32
  %or.i7.i = or i32 %xor.i2.i, %xor3.i6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i7.i)
  %cmp.i8.i = icmp eq i32 %or.i7.i, 0
  br i1 %cmp.i8.i, label %land.lhs.true.i359, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i359:                               ; preds = %land.rhs.i
  %vlan_id29.i = getelementptr inbounds %struct.qlcnic_filter, ptr %tmp_fil.013.i, i32 0, i32 2
  %416 = ptrtoint ptr %vlan_id29.i to i32
  call void @__asan_load2_noabort(i32 %416)
  %417 = load i16, ptr %vlan_id29.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %417, i16 %vlan_id.0.i)
  %cmp32.i = icmp eq i16 %417, %vlan_id.0.i
  br i1 %cmp32.i, label %if.then34.i, label %land.lhs.true.i359.for.inc.i_crit_edge

land.lhs.true.i359.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i359
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then34.i:                                      ; preds = %land.lhs.true.i359
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %418 = load volatile i32, ptr @jiffies, align 128
  %ftime.i = getelementptr inbounds %struct.qlcnic_filter, ptr %tmp_fil.013.i, i32 0, i32 3
  %419 = ptrtoint ptr %ftime.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %ftime.i, align 4
  %add.i360 = add i32 %420, 2000
  call void @__sanitizer_cov_trace_cmp4(i32 %418, i32 %add.i360)
  %cmp35.i = icmp ugt i32 %418, %add.i360
  br i1 %cmp35.i, label %if.then37.i, label %if.then34.i.if.end38.i_crit_edge

if.then34.i.if.end38.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

if.then37.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  %421 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %422, i32 0, i32 46
  %423 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %hw_ops.i.i, align 4
  %change_l2_filter.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %424, i32 0, i32 32
  %425 = ptrtoint ptr %change_l2_filter.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %change_l2_filter.i.i, align 4
  call void %426(ptr noundef %add.ptr.i, ptr noundef nonnull %src_addr.i, i16 noundef zeroext %vlan_id.0.i, ptr noundef %arrayidx) #6
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then37.i, %if.then34.i.if.end38.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %427 = load volatile i32, ptr @jiffies, align 128
  %428 = ptrtoint ptr %ftime.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 %427, ptr %ftime.i, align 4
  br label %qlcnic_send_filter.exit

for.inc.i:                                        ; preds = %land.lhs.true.i359.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge
  %tobool23.not.i = icmp eq ptr %411, null
  br i1 %tobool23.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end12.i.for.end.i_crit_edge
  %fnum.i = getelementptr i8, ptr %netdev, i32 3452
  %429 = ptrtoint ptr %fnum.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %fnum.i, align 4
  %fmax.i = getelementptr i8, ptr %netdev, i32 3454
  %431 = ptrtoint ptr %fmax.i to i32
  call void @__asan_load2_noabort(i32 %431)
  %432 = load i16, ptr %fmax.i, align 2
  %433 = zext i8 %430 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %432, i16 %433)
  %cmp55.not.i = icmp ugt i16 %432, %433
  br i1 %cmp55.not.i, label %if.end60.i, label %if.then59.i, !prof !59

if.then59.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %mac_filter_limit_overrun.i = getelementptr i8, ptr %netdev, i32 3096
  %434 = ptrtoint ptr %mac_filter_limit_overrun.i to i32
  call void @__asan_load8_noabort(i32 %434)
  %435 = load i64, ptr %mac_filter_limit_overrun.i, align 8
  %inc.i361 = add i64 %435, 1
  store i64 %inc.i361, ptr %mac_filter_limit_overrun.i, align 8
  br label %qlcnic_send_filter.exit

if.end60.i:                                       ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %436 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %436, i32 noundef 2848, i32 noundef 20) #9
  %tobool62.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool62.not.i, label %if.end60.i.qlcnic_send_filter.exit_crit_edge, label %if.end64.i

if.end60.i.qlcnic_send_filter.exit_crit_edge:     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_send_filter.exit

if.end64.i:                                       ; preds = %if.end60.i
  %437 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops.i9.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %438, i32 0, i32 46
  %439 = ptrtoint ptr %hw_ops.i9.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %hw_ops.i9.i, align 4
  %change_l2_filter.i10.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %440, i32 0, i32 32
  %441 = ptrtoint ptr %change_l2_filter.i10.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %change_l2_filter.i10.i, align 4
  call void %442(ptr noundef %add.ptr.i, ptr noundef nonnull %src_addr.i, i16 noundef zeroext %vlan_id.0.i, ptr noundef %arrayidx) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %443 = load volatile i32, ptr @jiffies, align 128
  %ftime65.i = getelementptr inbounds %struct.qlcnic_filter, ptr %call7.i.i.i, i32 0, i32 3
  %444 = ptrtoint ptr %ftime65.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 %443, ptr %ftime65.i, align 8
  %vlan_id66.i = getelementptr inbounds %struct.qlcnic_filter, ptr %call7.i.i.i, i32 0, i32 2
  %445 = ptrtoint ptr %vlan_id66.i to i32
  call void @__asan_store2_noabort(i32 %445)
  store i16 %vlan_id.0.i, ptr %vlan_id66.i, align 2
  %faddr67.i = getelementptr inbounds %struct.qlcnic_filter, ptr %call7.i.i.i, i32 0, i32 1
  %446 = call ptr @memcpy(ptr %faddr67.i, ptr %src_addr.i, i32 6)
  %mac_learn_lock.i = getelementptr i8, ptr %netdev, i32 3480
  call void @_raw_spin_lock(ptr noundef %mac_learn_lock.i) #6
  %447 = ptrtoint ptr %arrayidx.i358 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %arrayidx.i358, align 4
  %449 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %449)
  store volatile ptr %448, ptr %call7.i.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %448, null
  br i1 %tobool.not.i.i, label %if.end64.i.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.end64.i.hlist_add_head.exit.i_crit_edge:       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %448, i32 0, i32 1
  %450 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %450)
  store volatile ptr %call7.i.i.i, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.end64.i.hlist_add_head.exit.i_crit_edge
  %451 = ptrtoint ptr %arrayidx.i358 to i32
  call void @__asan_store4_noabort(i32 %451)
  store volatile ptr %call7.i.i.i, ptr %arrayidx.i358, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %452 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store volatile ptr %arrayidx.i358, ptr %pprev34.i.i, align 4
  %453 = ptrtoint ptr %fnum.i to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %fnum.i, align 4
  %inc72.i = add i8 %454, 1
  store i8 %inc72.i, ptr %fnum.i, align 4
  call void @_raw_spin_unlock(ptr noundef %mac_learn_lock.i) #6
  br label %qlcnic_send_filter.exit

qlcnic_send_filter.exit:                          ; preds = %hlist_add_head.exit.i, %if.end60.i.qlcnic_send_filter.exit_crit_edge, %if.then59.i, %if.end38.i, %if.then155.qlcnic_send_filter.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_addr.i) #6
  br label %if.end156

if.end156:                                        ; preds = %qlcnic_send_filter.exit, %if.end153.if.end156_crit_edge
  %455 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %len.i.i, align 4
  %conv158 = zext i32 %456 to i64
  %tx_bytes = getelementptr %struct.qlcnic_host_tx_ring, ptr %16, i32 %idxprom, i32 8, i32 4
  %457 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %457)
  %458 = load i64, ptr %tx_bytes, align 8
  %add160 = add i64 %458, %conv158
  store i64 %add160, ptr %tx_bytes, align 8
  %xmit_called = getelementptr %struct.qlcnic_host_tx_ring, ptr %16, i32 %idxprom, i32 8, i32 2
  %459 = ptrtoint ptr %xmit_called to i32
  call void @__asan_load8_noabort(i32 %459)
  %460 = load i64, ptr %xmit_called, align 8
  %inc162 = add i64 %460, 1
  store i64 %inc162, ptr %xmit_called, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  call void @arm_heavy_mb() #6
  call void @qlcnic_update_cmd_producer(ptr noundef %arrayidx) #6
  br label %cleanup

unwind_buff:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @qlcnic_unmap_buffers(ptr noundef %57, ptr noundef %skb, ptr noundef %arrayidx45)
  br label %drop_packet

drop_packet:                                      ; preds = %unwind_buff, %if.then52, %for.end.drop_packet_crit_edge, %if.then3.drop_packet_crit_edge
  %txdropped = getelementptr i8, ptr %netdev, i32 2952
  %461 = ptrtoint ptr %txdropped to i32
  call void @__asan_load8_noabort(i32 %461)
  %462 = load i64, ptr %txdropped, align 8
  %inc167 = add i64 %462, 1
  store i64 %inc167, ptr %txdropped, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %drop_packet, %if.end156, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %drop_packet ], [ 0, %if.end156 ], [ 16, %if.else ], [ 16, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_update_cmd_producer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_unmap_buffers(ptr noundef %pdev, ptr nocapture noundef readonly %skb, ptr nocapture noundef %pbuf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %nr_frags1 = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_frags1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_frags1, align 2
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp23.not = icmp eq i8 %3, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.024, 1
  %arrayidx4 = getelementptr %struct.qlcnic_cmd_buffer, ptr %pbuf, i32 0, i32 1, i32 %add
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx4, align 8
  %conv5 = trunc i64 %5 to i32
  %length = getelementptr %struct.qlcnic_cmd_buffer, ptr %pbuf, i32 0, i32 1, i32 %add, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %length, align 8
  %conv6 = trunc i64 %7 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv5, i32 noundef %conv6, i32 noundef 1, i32 noundef 0) #6
  %exitcond.not = icmp eq i32 %add, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %frag_array = getelementptr inbounds %struct.qlcnic_cmd_buffer, ptr %pbuf, i32 0, i32 1
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %8 = ptrtoint ptr %frag_array to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %frag_array, align 8
  %conv11 = trunc i64 %9 to i32
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %11, %13
  tail call void @dma_unmap_page_attrs(ptr noundef %dev9, i32 noundef %conv11, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #6
  %14 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pbuf, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_advert_link_change(ptr nocapture noundef readonly %adapter, i32 noundef %linkup) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %linkup2 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %linkup2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %linkup2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp ne i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %linkup)
  %tobool3.not = icmp eq i32 %linkup, 0
  %or.cond = and i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str) #10
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %linkup5 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %linkup5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %linkup5, align 2
  tail call void @netif_carrier_off(ptr noundef %1) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %or.cond33 = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond33, label %if.else.cleanup_crit_edge, label %if.then11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.else
  %9 = ptrtoint ptr %linkup2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %linkup2, align 2
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device1.i, align 2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %13, label %if.then11.if.end_crit_edge [
    i16 -32720, label %if.then11.land.lhs.true15_crit_edge
    i16 -30672, label %if.then11.land.lhs.true15_crit_edge34
    i16 -32704, label %if.then11.land.lhs.true15_crit_edge35
    i16 -31680, label %if.then11.land.lhs.true15_crit_edge36
    i16 -31696, label %if.then11.land.lhs.true15_crit_edge37
    i16 -29648, label %if.then11.land.lhs.true15_crit_edge38
  ]

if.then11.land.lhs.true15_crit_edge38:            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true15

if.then11.land.lhs.true15_crit_edge37:            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true15

if.then11.land.lhs.true15_crit_edge36:            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true15

if.then11.land.lhs.true15_crit_edge35:            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true15

if.then11.land.lhs.true15_crit_edge34:            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true15

if.then11.land.lhs.true15_crit_edge:              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true15

if.then11.if.end_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true15:                                  ; preds = %if.then11.land.lhs.true15_crit_edge, %if.then11.land.lhs.true15_crit_edge34, %if.then11.land.lhs.true15_crit_edge35, %if.then11.land.lhs.true15_crit_edge36, %if.then11.land.lhs.true15_crit_edge37, %if.then11.land.lhs.true15_crit_edge38
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 8
  %lb_mode = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %16, i32 0, i32 62
  %17 = ptrtoint ptr %lb_mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %lb_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool18.not = icmp eq i8 %18, 0
  br i1 %tobool18.not, label %land.lhs.true15.if.end_crit_edge, label %if.then19

land.lhs.true15.if.end_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then19:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true15.if.end_crit_edge, %if.then11.if.end_crit_edge
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.2) #10
  tail call void @netif_carrier_on(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then19, %if.else.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_post_rx_buffers(ptr nocapture noundef %adapter, ptr noundef %rds_ring, i8 noundef zeroext %ring_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %producer1 = getelementptr inbounds %struct.qlcnic_host_rds_ring, ptr %rds_ring, i32 0, i32 4
  %0 = ptrtoint ptr %producer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %producer1, align 16
  %free_list = getelementptr inbounds %struct.qlcnic_host_rds_ring, ptr %rds_ring, i32 0, i32 8
  %2 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not37 = icmp eq ptr %3, %free_list
  br i1 %cmp.i.not37, label %entry.if.end15_crit_edge, label %while.body.lr.ph

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

while.body.lr.ph:                                 ; preds = %entry
  %desc_head = getelementptr inbounds %struct.qlcnic_host_rds_ring, ptr %rds_ring, i32 0, i32 1
  %pdev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %conv15.i = zext i8 %ring_id to i16
  %shl6.i = shl i16 %conv15.i, 15
  %dma_size = getelementptr inbounds %struct.qlcnic_host_rds_ring, ptr %rds_ring, i32 0, i32 5
  %num_desc = getelementptr inbounds %struct.qlcnic_host_rds_ring, ptr %rds_ring, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %qlcnic_get_ref_handle.exit.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %3, %while.body.lr.ph ], [ %39, %qlcnic_get_ref_handle.exit.while.body_crit_edge ]
  %producer.040 = phi i32 [ %1, %while.body.lr.ph ], [ %and, %qlcnic_get_ref_handle.exit.while.body_crit_edge ]
  %count.038 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %qlcnic_get_ref_handle.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %4, i32 -8
  %skb = getelementptr i8, ptr %4, i32 -4
  %5 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skb, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.then, label %while.body.if.end6_crit_edge

while.body.if.end6_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %while.body
  %call3 = tail call fastcc i32 @qlcnic_alloc_rx_skb(ptr noundef %adapter, ptr noundef %rds_ring, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.while.end_crit_edge

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %while.body.if.end6_crit_edge
  %inc = add i32 %count.038, 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.list_del.exit_crit_edge

if.end6.list_del.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end6.list_del.exit_crit_edge
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %15 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc_head, align 4
  %arrayidx = getelementptr %struct.rcv_desc, ptr %16, i32 %producer.040
  %dma = getelementptr i8, ptr %4, i32 8
  %17 = ptrtoint ptr %dma to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %dma, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %addr_buffer = getelementptr %struct.rcv_desc, ptr %16, i32 %producer.040, i32 3
  %20 = ptrtoint ptr %addr_buffer to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %addr_buffer, align 1
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr, align 8
  %23 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %device1.i.i, align 2
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %26, label %list_del.exit.qlcnic_get_ref_handle.exit_crit_edge [
    i16 -32720, label %list_del.exit._crit_edge
    i16 -30672, label %list_del.exit._crit_edge48
    i16 -32704, label %list_del.exit._crit_edge49
    i16 -31680, label %list_del.exit._crit_edge50
    i16 -31696, label %list_del.exit._crit_edge51
    i16 -29648, label %list_del.exit._crit_edge52
  ]

list_del.exit._crit_edge52:                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %28

list_del.exit._crit_edge51:                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %28

list_del.exit._crit_edge50:                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %28

list_del.exit._crit_edge49:                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %28

list_del.exit._crit_edge48:                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %28

list_del.exit._crit_edge:                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %28

list_del.exit.qlcnic_get_ref_handle.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_get_ref_handle.exit

28:                                               ; preds = %list_del.exit._crit_edge, %list_del.exit._crit_edge48, %list_del.exit._crit_edge49, %list_del.exit._crit_edge50, %list_del.exit._crit_edge51, %list_del.exit._crit_edge52
  %or7.i = or i16 %22, %shl6.i
  br label %qlcnic_get_ref_handle.exit

qlcnic_get_ref_handle.exit:                       ; preds = %28, %list_del.exit.qlcnic_get_ref_handle.exit_crit_edge
  %29 = phi i16 [ %or7.i, %28 ], [ %22, %list_del.exit.qlcnic_get_ref_handle.exit_crit_edge ]
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %arrayidx, align 1
  %32 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_size, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %buffer_length = getelementptr %struct.rcv_desc, ptr %16, i32 %producer.040, i32 2
  %35 = ptrtoint ptr %buffer_length to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %buffer_length, align 1
  %add = add i32 %producer.040, 1
  %36 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_desc, align 4
  %sub = add i32 %37, -1
  %and = and i32 %sub, %add
  %38 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not = icmp eq ptr %39, %free_list
  br i1 %cmp.i.not, label %qlcnic_get_ref_handle.exit.while.end_crit_edge, label %qlcnic_get_ref_handle.exit.while.body_crit_edge

qlcnic_get_ref_handle.exit.while.body_crit_edge:  ; preds = %qlcnic_get_ref_handle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

qlcnic_get_ref_handle.exit.while.end_crit_edge:   ; preds = %qlcnic_get_ref_handle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %qlcnic_get_ref_handle.exit.while.end_crit_edge, %if.then.while.end_crit_edge
  %count.0.lcssa = phi i32 [ %inc, %qlcnic_get_ref_handle.exit.while.end_crit_edge ], [ %count.038, %if.then.while.end_crit_edge ]
  %producer.0.lcssa = phi i32 [ %and, %qlcnic_get_ref_handle.exit.while.end_crit_edge ], [ %producer.040, %if.then.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa)
  %tobool8.not = icmp eq i32 %count.0.lcssa, 0
  br i1 %tobool8.not, label %while.end.if.end15_crit_edge, label %if.then9

while.end.if.end15_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then9:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %producer1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %producer.0.lcssa, ptr %producer1, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %sub11 = add i32 %producer.0.lcssa, -1
  %num_desc12 = getelementptr inbounds %struct.qlcnic_host_rds_ring, ptr %rds_ring, i32 0, i32 3
  %41 = ptrtoint ptr %num_desc12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_desc12, align 4
  %sub13 = add i32 %42, -1
  %and14 = and i32 %sub13, %sub11
  %43 = tail call i32 @llvm.bswap.i32(i32 %and14)
  %44 = ptrtoint ptr %rds_ring to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rds_ring, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #6, !srcloc !69
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %while.end.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_alloc_rx_skb(ptr nocapture noundef %adapter, ptr nocapture noundef readonly %rds_ring, ptr nocapture noundef writeonly %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %netdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %skb_size = getelementptr inbounds %struct.qlcnic_host_rds_ring, ptr %rds_ring, i32 0, i32 6
  %4 = ptrtoint ptr %skb_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skb_size, align 8
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %3, i32 noundef %5, i32 noundef 2592) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %skb_alloc_failure = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 44, i32 16
  %6 = ptrtoint ptr %skb_alloc_failure to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %skb_alloc_failure, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %skb_alloc_failure, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %11, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %dma_size = getelementptr inbounds %struct.qlcnic_host_rds_ring, ptr %rds_ring, i32 0, i32 5
  %12 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_size, align 4
  %call.i25 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i) #6
  br i1 %call.i25, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !59

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #6
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #6
  br label %if.then6

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %13) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  %sub.i = add i32 %19, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i26 = getelementptr %struct.page, ptr %18, i32 %shr.i
  %and.i = and i32 %19, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i26, i32 noundef %and.i, i32 noundef %13, i32 noundef 2, i32 noundef 0) #6
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then6_crit_edge, label %if.end9

dma_map_single_attrs.exit.if.then6_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then6:                                         ; preds = %dma_map_single_attrs.exit.if.then6_crit_edge, %dma_map_single_attrs.exit.thread
  %rx_dma_map_error = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 44, i32 18
  %20 = ptrtoint ptr %rx_dma_map_error to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rx_dma_map_error, align 8
  %inc8 = add i64 %21, 1
  store i64 %inc8, ptr %rx_dma_map_error, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 1) #6
  br label %cleanup

if.end9:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %skb10 = getelementptr inbounds %struct.qlcnic_rx_buffer, ptr %buffer, i32 0, i32 1
  %22 = ptrtoint ptr %skb10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %skb10, align 4
  %conv = zext i32 %call41.i to i64
  %dma11 = getelementptr inbounds %struct.qlcnic_rx_buffer, ptr %buffer, i32 0, i32 3
  %23 = ptrtoint ptr %dma11 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv, ptr %dma11, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %if.then
  %retval.0 = phi i32 [ -12, %if.then6 ], [ 0, %if.end9 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_82xx_process_rcv_ring_diag(ptr nocapture noundef %sds_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 5
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %2 = ptrtoint ptr %sds_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sds_ring, align 128
  %desc_head = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 4
  %4 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc_head, align 16
  %arrayidx = getelementptr %struct.status_desc, ptr %5, i32 %3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 16
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %and = and i64 %8, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i64 %8, 53
  %9 = trunc i64 %shr to i32
  %conv = and i32 %9, 7
  %shr5.mask = and i64 %8, -288230376151711744
  call void @__sanitizer_cov_trace_const_cmp8(i64 1441151880758558720, i64 %shr5.mask)
  %cond = icmp eq i64 %shr5.mask, 1441151880758558720
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @qlcnic_handle_fw_message(i32 noundef %conv, i32 noundef %3, ptr noundef %sds_ring)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = trunc i64 %8 to i32
  %11 = lshr i32 %10, 8
  %conv10 = and i32 %11, 15
  tail call fastcc void @qlcnic_process_rcv_diag(ptr noundef %1, i32 noundef %conv10, i64 noundef %8)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp43.not = icmp eq i32 %conv, 0
  br i1 %cmp43.not, label %sw.epilog.for.end_crit_edge, label %for.body.lr.ph

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %num_desc = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 1
  %12 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc_head, align 16
  %arrayidx13 = getelementptr %struct.status_desc, ptr %13, i32 %3
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 2, ptr %arrayidx13, align 16
  %add = add i32 %3, 1
  %15 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_desc, align 4
  %sub = add i32 %16, -1
  %and16 = and i32 %sub, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv)
  %cmp = icmp ugt i32 %conv, 1
  br i1 %cmp, label %for.body.1, label %for.body.lr.ph.for.end_crit_edge

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.1:                                       ; preds = %for.body.lr.ph
  %17 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc_head, align 16
  %arrayidx13.1 = getelementptr %struct.status_desc, ptr %18, i32 %and16
  %19 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 2, ptr %arrayidx13.1, align 16
  %add.1 = add i32 %and16, 1
  %20 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_desc, align 4
  %sub.1 = add i32 %21, -1
  %and16.1 = and i32 %sub.1, %add.1
  %22 = add nsw i32 %conv, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %22)
  %cmp.1 = icmp ult i32 %22, -2
  br i1 %cmp.1, label %for.body.2, label %for.body.1.for.end_crit_edge

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %23 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc_head, align 16
  %arrayidx13.2 = getelementptr %struct.status_desc, ptr %24, i32 %and16.1
  %25 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 2, ptr %arrayidx13.2, align 16
  %add.2 = add i32 %and16.1, 1
  %26 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_desc, align 4
  %sub.2 = add i32 %27, -1
  %and16.2 = and i32 %sub.2, %add.2
  %28 = and i32 %9, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.2.not = icmp eq i32 %28, 2
  br i1 %cmp.2.not, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %29 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %desc_head, align 16
  %arrayidx13.3 = getelementptr %struct.status_desc, ptr %30, i32 %and16.2
  %31 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 2, ptr %arrayidx13.3, align 16
  %add.3 = add i32 %and16.2, 1
  %32 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_desc, align 4
  %sub.3 = add i32 %33, -1
  %and16.3 = and i32 %sub.3, %add.3
  %34 = add nsw i32 %conv, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %34)
  %cmp.3 = icmp ult i32 %34, -2
  br i1 %cmp.3, label %for.body.4, label %for.body.3.for.end_crit_edge

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %35 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc_head, align 16
  %arrayidx13.4 = getelementptr %struct.status_desc, ptr %36, i32 %and16.3
  %37 = ptrtoint ptr %arrayidx13.4 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 2, ptr %arrayidx13.4, align 16
  %add.4 = add i32 %and16.3, 1
  %38 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_desc, align 4
  %sub.4 = add i32 %39, -1
  %and16.4 = and i32 %sub.4, %add.4
  %40 = and i32 %9, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp.4.not = icmp eq i32 %40, 4
  br i1 %cmp.4.not, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  %41 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %desc_head, align 16
  %arrayidx13.5 = getelementptr %struct.status_desc, ptr %42, i32 %and16.4
  %43 = ptrtoint ptr %arrayidx13.5 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 2, ptr %arrayidx13.5, align 16
  %add.5 = add i32 %and16.4, 1
  %44 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_desc, align 4
  %sub.5 = add i32 %45, -1
  %and16.5 = and i32 %sub.5, %add.5
  %46 = add nsw i32 %conv, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %46)
  %cmp.5 = icmp ult i32 %46, -2
  br i1 %cmp.5, label %for.body.6, label %for.body.5.for.end_crit_edge

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc_head, align 16
  %arrayidx13.6 = getelementptr %struct.status_desc, ptr %48, i32 %and16.5
  %49 = ptrtoint ptr %arrayidx13.6 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 2, ptr %arrayidx13.6, align 16
  %add.6 = add i32 %and16.5, 1
  %50 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_desc, align 4
  %sub.6 = add i32 %51, -1
  %and16.6 = and i32 %sub.6, %add.6
  br label %for.end

for.end:                                          ; preds = %for.body.6, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %consumer.0.lcssa = phi i32 [ %3, %sw.epilog.for.end_crit_edge ], [ %and16, %for.body.lr.ph.for.end_crit_edge ], [ %and16.1, %for.body.1.for.end_crit_edge ], [ %and16.2, %for.body.2.for.end_crit_edge ], [ %and16.3, %for.body.3.for.end_crit_edge ], [ %and16.4, %for.body.4.for.end_crit_edge ], [ %and16.5, %for.body.5.for.end_crit_edge ], [ %and16.6, %for.body.6 ]
  %52 = ptrtoint ptr %sds_ring to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %consumer.0.lcssa, ptr %sds_ring, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %53 = tail call i32 @llvm.bswap.i32(i32 %consumer.0.lcssa)
  %crb_sts_consumer = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 2
  %54 = ptrtoint ptr %crb_sts_consumer to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %crb_sts_consumer, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #6, !srcloc !69
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_handle_fw_message(i32 noundef %desc_cnt, i32 noundef %index, ptr nocapture noundef readonly %sds_ring) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.qlcnic_fw_msg, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %msg) #6
  %0 = call ptr @memset(ptr %msg, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desc_cnt)
  %cmp52 = icmp sgt i32 %desc_cnt, 0
  br i1 %cmp52, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %desc_head = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 4
  %1 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc_head, align 16
  %num_desc = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 1
  %3 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_desc, align 4
  %sub = add i32 %4, -1
  %arrayidx = getelementptr %struct.status_desc, ptr %2, i32 %index
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx, align 16
  %7 = tail call i64 @llvm.bswap.i64(i64 %6)
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %msg, align 8
  %arrayidx5 = getelementptr [2 x i64], ptr %arrayidx, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx5, align 8
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  %arrayidx7 = getelementptr inbounds [8 x i64], ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %arrayidx7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %desc_cnt)
  %cmp = icmp ugt i32 %desc_cnt, 1
  br i1 %cmp, label %while.body.1, label %while.body.lr.ph.while.end_crit_edge

while.body.lr.ph.while.end_crit_edge:             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.1:                                     ; preds = %while.body.lr.ph
  %add = add i32 %index, 1
  %and = and i32 %sub, %add
  %arrayidx.1 = getelementptr %struct.status_desc, ptr %2, i32 %and
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx.1, align 16
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %arrayidx3.1 = getelementptr inbounds [8 x i64], ptr %msg, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %arrayidx3.1, align 8
  %arrayidx5.1 = getelementptr [2 x i64], ptr %arrayidx.1, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx5.1, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %arrayidx7.1 = getelementptr inbounds [8 x i64], ptr %msg, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx7.1, align 8
  %21 = add i32 %desc_cnt, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %21)
  %cmp.1 = icmp ult i32 %21, -2
  br i1 %cmp.1, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  %add.1 = add i32 %and, 1
  %and.1 = and i32 %sub, %add.1
  %arrayidx.2 = getelementptr %struct.status_desc, ptr %2, i32 %and.1
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.2, align 16
  %24 = tail call i64 @llvm.bswap.i64(i64 %23)
  %arrayidx3.2 = getelementptr inbounds [8 x i64], ptr %msg, i32 0, i32 4
  %25 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx3.2, align 8
  %arrayidx5.2 = getelementptr [2 x i64], ptr %arrayidx.2, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx5.2, align 8
  %28 = tail call i64 @llvm.bswap.i64(i64 %27)
  %arrayidx7.2 = getelementptr inbounds [8 x i64], ptr %msg, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx7.2, align 8
  %30 = and i32 %desc_cnt, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp.2.not = icmp eq i32 %30, 2
  br i1 %cmp.2.not, label %while.body.2.while.end_crit_edge, label %while.body.3

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  %add.2 = add i32 %and.1, 1
  %and.2 = and i32 %sub, %add.2
  %arrayidx.3 = getelementptr %struct.status_desc, ptr %2, i32 %and.2
  %31 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.3, align 16
  %33 = tail call i64 @llvm.bswap.i64(i64 %32)
  %arrayidx3.3 = getelementptr inbounds [8 x i64], ptr %msg, i32 0, i32 6
  %34 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %arrayidx3.3, align 8
  %arrayidx5.3 = getelementptr [2 x i64], ptr %arrayidx.3, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx5.3, align 8
  %37 = tail call i64 @llvm.bswap.i64(i64 %36)
  %arrayidx7.3 = getelementptr inbounds [8 x i64], ptr %msg, i32 0, i32 7
  %38 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %arrayidx7.3, align 8
  br label %while.end

while.end:                                        ; preds = %while.body.3, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.lr.ph.while.end_crit_edge, %entry.while.end_crit_edge
  %adapter8 = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 5
  %39 = ptrtoint ptr %adapter8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter8, align 4
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %body = getelementptr inbounds %struct.anon.154, ptr %msg, i32 0, i32 1
  %43 = ptrtoint ptr %body to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %body, align 8
  %shr = lshr i64 %44, 32
  %45 = trunc i64 %shr to i8
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %45, label %while.end.sw.epilog34_crit_edge [
    i8 -115, label %sw.bb
    i8 -113, label %sw.bb12
    i8 -112, label %sw.bb32
  ]

while.end.sw.epilog34_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog34

sw.bb:                                            ; preds = %while.end
  %netdev1.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %40, i32 0, i32 3
  %47 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %netdev1.i, align 4
  %49 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %40, align 8
  %has_link_events.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %has_link_events.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %has_link_events.i, align 1
  %arrayidx.i = getelementptr inbounds %struct.anon.154, ptr %msg, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx.i, align 8
  %shr.i = lshr i64 %53, 32
  %shr8.i = lshr i64 %53, 48
  %conv10.i = trunc i64 %shr8.i to i32
  %arrayidx12.i = getelementptr inbounds %struct.anon.154, ptr %msg, i32 0, i32 1, i32 2
  %54 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx12.i, align 8
  %conv14.i = trunc i64 %55 to i8
  %shr22.i = lshr i64 %55, 24
  %shr27.i = lshr i64 %55, 32
  %56 = trunc i64 %shr27.i to i32
  %conv29.i = and i32 %56, 3
  %shr32.i = lshr i64 %55, 8
  %57 = trunc i64 %shr32.i to i8
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %57, label %sw.bb.if.end47.i_crit_edge [
    i8 6, label %do.end.i
    i8 7, label %do.end44.i
  ]

sw.bb.if.end47.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i = trunc i64 %shr.i to i32
  %conv.i = trunc i64 %53 to i32
  %dev.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 133
  %conv37.i = and i32 %conv5.i, 65535
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.16, i32 noundef %conv.i, i32 noundef %conv37.i) #10
  br label %if.end47.i

do.end44.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev45.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 133
  %59 = trunc i64 %shr.i to i32
  %conv46.i = and i32 %59, 65535
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev45.i, ptr noundef nonnull @.str.19, i32 noundef %conv46.i) #10
  br label %if.end47.i

if.end47.i:                                       ; preds = %do.end44.i, %do.end.i, %sw.bb.if.end47.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv14.i)
  %tobool.not.i = icmp eq i8 %conv14.i, 0
  %conv29.off.i = add nsw i32 %conv29.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv29.off.i)
  %switch.i = icmp ult i32 %conv29.off.i, 2
  %or.cond.i = select i1 %tobool.not.i, i1 %switch.i, i1 false
  br i1 %or.cond.i, label %if.then54.i, label %if.end47.i.if.end58.i_crit_edge

if.end47.i.if.end58.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

if.then54.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %40, align 8
  %loopback_state.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %loopback_state.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %loopback_state.i, align 1
  %64 = or i8 %63, 1
  store i8 %64, ptr %loopback_state.i, align 1
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then54.i, %if.end47.i.if.end58.i_crit_edge
  %65 = trunc i64 %55 to i32
  %conv59.i = and i32 %65, 255
  tail call void @qlcnic_advert_link_change(ptr noundef %40, i32 noundef %conv59.i) #6
  %66 = and i64 %55, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %66)
  %cmp61.i = icmp eq i64 %66, 65536
  %67 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %40, align 8
  %link_duplex.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %68, i32 0, i32 27
  %..i = zext i1 %cmp61.i to i16
  %69 = ptrtoint ptr %link_duplex.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %..i, ptr %link_duplex.i, align 4
  %70 = trunc i64 %shr32.i to i16
  %conv69.i = and i16 %70, 255
  %71 = load ptr, ptr %40, align 8
  %module_type.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %71, i32 0, i32 29
  %72 = ptrtoint ptr %module_type.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv69.i, ptr %module_type.i, align 8
  %73 = trunc i64 %shr22.i to i16
  %conv71.i = and i16 %73, 255
  %74 = load ptr, ptr %40, align 8
  %link_autoneg.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %74, i32 0, i32 28
  %75 = ptrtoint ptr %link_autoneg.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv71.i, ptr %link_autoneg.i, align 2
  %76 = load ptr, ptr %40, align 8
  %link_speed80.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %76, i32 0, i32 26
  br i1 %tobool.not.i, label %if.else78.i, label %if.then74.i

if.then74.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %link_speed80.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv10.i, ptr %link_speed80.i, align 8
  br label %sw.epilog34

if.else78.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %link_speed80.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %link_speed80.i, align 8
  %79 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %40, align 8
  %link_duplex82.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %80, i32 0, i32 27
  %81 = ptrtoint ptr %link_duplex82.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 255, ptr %link_duplex82.i, align 4
  br label %sw.epilog34

sw.bb12:                                          ; preds = %while.end
  %arrayidx14 = getelementptr inbounds %struct.anon.154, ptr %msg, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx14, align 8
  %conv15 = trunc i64 %83 to i32
  %84 = zext i32 %conv15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %conv15, label %do.end29 [
    i32 0, label %sw.bb16
    i32 1, label %do.end
    i32 2, label %do.end24
  ]

sw.bb16:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %40, align 8
  %loopback_state = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %loopback_state to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %loopback_state, align 1
  %89 = or i8 %88, 2
  store i8 %89, ptr %loopback_state, align 1
  br label %sw.epilog34

do.end:                                           ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef nonnull @.str.5) #10
  %90 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %40, align 8
  %diag_cnt = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %91, i32 0, i32 21
  %92 = ptrtoint ptr %diag_cnt to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -115, ptr %diag_cnt, align 4
  br label %sw.epilog34

do.end24:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef nonnull @.str.11) #10
  %93 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %40, align 8
  %diag_cnt26 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %94, i32 0, i32 21
  %95 = ptrtoint ptr %diag_cnt26 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -19, ptr %diag_cnt26, align 4
  br label %sw.epilog34

do.end29:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef nonnull @.str.14, i32 noundef %conv15) #10
  %96 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %40, align 8
  %diag_cnt31 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %97, i32 0, i32 21
  %98 = ptrtoint ptr %diag_cnt31 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -5, ptr %diag_cnt31, align 4
  br label %sw.epilog34

sw.bb32:                                          ; preds = %while.end
  %dcb = getelementptr inbounds %struct.qlcnic_adapter, ptr %40, i32 0, i32 55
  %99 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dcb, align 4
  %tobool.not.i51 = icmp eq ptr %100, null
  br i1 %tobool.not.i51, label %sw.bb32.sw.epilog34_crit_edge, label %land.lhs.true.i

sw.bb32.sw.epilog34_crit_edge:                    ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog34

land.lhs.true.i:                                  ; preds = %sw.bb32
  %ops.i = getelementptr inbounds %struct.qlcnic_dcb, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ops.i, align 4
  %aen_handler.i = getelementptr inbounds %struct.qlcnic_dcb_ops, ptr %102, i32 0, i32 4
  %103 = ptrtoint ptr %aen_handler.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %aen_handler.i, align 4
  %tobool1.not.i = icmp eq ptr %104, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.sw.epilog34_crit_edge, label %if.then.i

land.lhs.true.i.sw.epilog34_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog34

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %104(ptr noundef nonnull %100, ptr noundef nonnull %msg) #6
  br label %sw.epilog34

sw.epilog34:                                      ; preds = %if.then.i, %land.lhs.true.i.sw.epilog34_crit_edge, %sw.bb32.sw.epilog34_crit_edge, %do.end29, %do.end24, %do.end, %sw.bb16, %if.else78.i, %if.then74.i, %while.end.sw.epilog34_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msg) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_process_rcv_diag(ptr noundef %adapter, i32 noundef %ring, i64 noundef %sts_data0) unnamed_addr #0 align 64 {
entry:
  %prefix.i = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %max_rds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_rds_rings, align 2
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %ring)
  %cmp.not = icmp sgt i32 %conv, %ring
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !59

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %2 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recv_ctx1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %shr = lshr i64 %sts_data0, 28
  %6 = trunc i64 %shr to i32
  %conv4 = and i32 %6, 65535
  %7 = trunc i64 %sts_data0 to i32
  %8 = lshr i32 %7, 12
  %conv7 = and i32 %8, 65535
  %num_desc = getelementptr %struct.qlcnic_host_rds_ring, ptr %5, i32 %ring, i32 3
  %9 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_desc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %10)
  %cmp8.not = icmp ult i32 %conv4, %10
  br i1 %cmp8.not, label %if.end17, label %if.end.cleanup_crit_edge, !prof !59

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %shr21 = lshr i64 %sts_data0, 48
  %11 = trunc i64 %shr21 to i32
  %conv23 = and i32 %11, 31
  %rx_buf_arr.i = getelementptr %struct.qlcnic_host_rds_ring, ptr %5, i32 %ring, i32 2
  %12 = ptrtoint ptr %rx_buf_arr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_buf_arr.i, align 8
  %skb1.i = getelementptr %struct.qlcnic_rx_buffer, ptr %13, i32 %conv4, i32 1
  %14 = ptrtoint ptr %skb1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb1.i, align 4
  %cmp.i = icmp eq ptr %15, null
  br i1 %cmp.i, label %qlcnic_process_rxbuf.exit.thread, label %if.end23.i, !prof !60

qlcnic_process_rxbuf.exit.thread:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1146, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23.i:                                       ; preds = %if.end17
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %dma.i = getelementptr %struct.qlcnic_rx_buffer, ptr %13, i32 %conv4, i32 3
  %18 = ptrtoint ptr %dma.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dma.i, align 8
  %conv.i = trunc i64 %19 to i32
  %dma_size.i = getelementptr %struct.qlcnic_host_rds_ring, ptr %5, i32 %ring, i32 5
  %20 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_size.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %conv.i, i32 noundef %21, i32 noundef 2, i32 noundef 0) #6
  %22 = ptrtoint ptr %skb1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb1.i, align 4
  %netdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %24 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev.i, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 23
  %26 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %features.i, align 16
  %and.i = and i64 %27, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool25.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.qlcnic_process_rxbuf.exit_crit_edge, label %land.rhs.i, !prof !60

if.end23.i.qlcnic_process_rxbuf.exit_crit_edge:   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_process_rxbuf.exit

land.rhs.i:                                       ; preds = %if.end23.i
  %28 = lshr i64 %sts_data0, 4
  %trunc = trunc i64 %28 to i4
  %29 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.36)
  switch i4 %trunc, label %land.rhs.i.qlcnic_process_rxbuf.exit_crit_edge [
    i4 2, label %land.rhs.i.if.then38.i_crit_edge
    i4 0, label %land.rhs.i.if.then38.i_crit_edge89
  ]

land.rhs.i.if.then38.i_crit_edge89:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38.i

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38.i

land.rhs.i.qlcnic_process_rxbuf.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_process_rxbuf.exit

if.then38.i:                                      ; preds = %land.rhs.i.if.then38.i_crit_edge, %land.rhs.i.if.then38.i_crit_edge89
  %csummed.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 44, i32 4
  %30 = ptrtoint ptr %csummed.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %csummed.i, align 8
  %inc.i = add i64 %31, 1
  store i64 %inc.i, ptr %csummed.i, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 15
  %32 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %qlcnic_process_rxbuf.exit

qlcnic_process_rxbuf.exit:                        ; preds = %if.then38.i, %land.rhs.i.qlcnic_process_rxbuf.exit_crit_edge, %if.end23.i.qlcnic_process_rxbuf.exit_crit_edge
  %33 = ptrtoint ptr %skb1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %skb1.i, align 4
  %tobool26.not = icmp eq ptr %23, null
  br i1 %tobool26.not, label %qlcnic_process_rxbuf.exit.cleanup_crit_edge, label %if.end28

qlcnic_process_rxbuf.exit.cleanup_crit_edge:      ; preds = %qlcnic_process_rxbuf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %qlcnic_process_rxbuf.exit
  %skb_size = getelementptr %struct.qlcnic_host_rds_ring, ptr %5, i32 %ring, i32 6
  %34 = ptrtoint ptr %skb_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %skb_size, align 8
  %36 = call i32 @llvm.umin.i32(i32 %conv7, i32 %35)
  %call34 = tail call ptr @skb_put(ptr noundef nonnull %23, i32 noundef %36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23)
  %tobool36.not = icmp eq i32 %conv23, 0
  br i1 %tobool36.not, label %if.end28.if.end39_crit_edge, label %if.then37

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then37:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call ptr @skb_pull(ptr noundef nonnull %23, i32 noundef %conv23) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end28.if.end39_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %mac_addr = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 34
  %call40 = tail call i32 @qlcnic_check_loopback_buff(ptr noundef %38, ptr noundef %mac_addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  %39 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter, align 8
  br i1 %tobool41.not, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %diag_cnt = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %40, i32 0, i32 21
  %41 = ptrtoint ptr %diag_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %diag_cnt, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %diag_cnt, align 4
  br label %if.end44

if.else43:                                        ; preds = %if.end39
  %msg_enable.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %40, i32 0, i32 35
  %43 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg_enable.i, align 4
  %and.i78 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78)
  %tobool.not.i = icmp eq i32 %and.i78, 0
  br i1 %tobool.not.i, label %if.else43.if.end44_crit_edge, label %if.then.i

if.else43.if.end44_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then.i:                                        ; preds = %if.else43
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %prefix.i) #6
  %45 = call ptr @memset(ptr %prefix.i, i32 255, i32 30)
  %46 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44, i32 3
  %48 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i80 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %50 = ptrtoint ptr %dev.i80 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i80, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i11.i = phi ptr [ %51, %if.end.i.i ], [ %49, %if.then.i.dev_name.exit.i_crit_edge ]
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %prefix.i, i32 noundef 30, ptr noundef nonnull @.str.21, ptr noundef %retval.0.i11.i, ptr noundef nonnull @__func__.dump_skb) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_skb.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qlcnic_process_rcv_diag, %if.then6.i)) #6
          to label %do.end.i81 [label %if.then6.i], !srcloc !71

if.then6.i:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 6
  %54 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len.i, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.24, ptr noundef nonnull %prefix.i, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %53, i32 noundef %55, i1 noundef zeroext true) #6
  br label %do.end.i81

do.end.i81:                                       ; preds = %if.then6.i, %dev_name.exit.i
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %prefix.i) #6
  br label %if.end44

if.end44:                                         ; preds = %do.end.i81, %if.else43.if.end44_crit_edge, %if.then42
  call void @__dev_kfree_skb_any(ptr noundef nonnull %23, i32 noundef 1) #6
  %rx_pkts = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 44, i32 5
  %56 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %rx_pkts, align 8
  %inc45 = add i64 %57, 1
  store i64 %inc45, ptr %rx_pkts, align 8
  %58 = zext i32 %conv7 to i64
  %rxbytes = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 44, i32 7
  %59 = ptrtoint ptr %rxbytes to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %rxbytes, align 8
  %add = add i64 %60, %58
  store i64 %add, ptr %rxbytes, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %qlcnic_process_rxbuf.exit.cleanup_crit_edge, %qlcnic_process_rxbuf.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_napi_add(ptr noundef %adapter, ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_ctx1, align 4
  %drv_sds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 16
  %2 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %drv_sds_rings, align 2
  %conv = zext i8 %3 to i32
  %call = tail call i32 @qlcnic_alloc_sds_rings(ptr noundef %1, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %drv_sds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp73.not = icmp eq i8 %5, 0
  br i1 %cmp73.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv372 = zext i8 %5 to i32
  %sds_rings = getelementptr inbounds %struct.qlcnic_recv_context, ptr %1, i32 0, i32 1
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv377 = phi i32 [ %conv372, %for.body.lr.ph ], [ %conv3, %for.inc.for.body_crit_edge ]
  %ring.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sds_rings, align 4
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %diag_test = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %diag_test to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %diag_test, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %napi = getelementptr %struct.qlcnic_host_sds_ring, ptr %7, i32 %ring.074, i32 6
  tail call void @netif_napi_add(ptr noundef %netdev, ptr noundef %napi, ptr noundef nonnull @qlcnic_rx_poll, i32 noundef 64) #6
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %sub = add nsw i32 %conv377, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %ring.074, i32 %sub)
  %cmp11 = icmp eq i32 %ring.074, %sub
  %napi14 = getelementptr %struct.qlcnic_host_sds_ring, ptr %7, i32 %ring.074, i32 6
  br i1 %cmp11, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netif_napi_add(ptr noundef %netdev, ptr noundef %napi14, ptr noundef nonnull @qlcnic_poll, i32 noundef 64) #6
  br label %for.inc

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netif_napi_add(ptr noundef %netdev, ptr noundef %napi14, ptr noundef nonnull @qlcnic_rx_poll, i32 noundef 64) #6
  br label %for.inc

for.inc:                                          ; preds = %if.else15, %if.then13, %if.then8
  %inc = add nuw nsw i32 %ring.074, 1
  %15 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %drv_sds_rings, align 2
  %conv3 = zext i8 %16 to i32
  %cmp = icmp ult i32 %inc, %conv3
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call19 = tail call i32 @qlcnic_alloc_tx_rings(ptr noundef %adapter, ptr noundef %netdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @qlcnic_free_sds_rings(ptr noundef %1) #6
  br label %cleanup

if.end22:                                         ; preds = %for.end
  %state.i69 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %17 = ptrtoint ptr %state.i69 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i69, align 4
  %19 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i70.not = icmp eq i32 %19, 0
  br i1 %tobool.i70.not, label %if.end22.cleanup_crit_edge, label %land.lhs.true25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true25:                                  ; preds = %if.end22
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 8
  %diag_test27 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %diag_test27 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %diag_test27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool28.not = icmp eq i8 %23, 0
  br i1 %tobool28.not, label %for.cond30.preheader, label %land.lhs.true25.cleanup_crit_edge

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond30.preheader:                             ; preds = %land.lhs.true25
  %drv_tx_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 15
  %24 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %drv_tx_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp3279.not = icmp eq i8 %25, 0
  br i1 %cmp3279.not, label %for.cond30.preheader.cleanup_crit_edge, label %for.body34.lr.ph

for.cond30.preheader.cleanup_crit_edge:           ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body34.lr.ph:                                 ; preds = %for.cond30.preheader
  %tx_ring35 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 2
  br label %for.body34

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %for.body34.lr.ph
  %ring.180 = phi i32 [ 0, %for.body34.lr.ph ], [ %inc39, %for.body34.for.body34_crit_edge ]
  %26 = ptrtoint ptr %tx_ring35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_ring35, align 8
  %napi37 = getelementptr %struct.qlcnic_host_tx_ring, ptr %27, i32 %ring.180, i32 12
  %state.i71 = getelementptr %struct.qlcnic_host_tx_ring, ptr %27, i32 %ring.180, i32 12, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state.i71) #6
  tail call void @netif_napi_add(ptr noundef %netdev, ptr noundef %napi37, ptr noundef nonnull @qlcnic_tx_poll, i32 noundef 64) #6
  %inc39 = add nuw nsw i32 %ring.180, 1
  %28 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %drv_tx_rings, align 1
  %conv31 = zext i8 %29 to i32
  %cmp32 = icmp ult i32 %inc39, %conv31
  br i1 %cmp32, label %for.body34.for.body34_crit_edge, label %for.body34.cleanup_crit_edge

for.body34.cleanup_crit_edge:                     ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body34

cleanup:                                          ; preds = %for.body34.cleanup_crit_edge, %for.cond30.preheader.cleanup_crit_edge, %land.lhs.true25.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then21 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true25.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ 0, %for.cond30.preheader.cleanup_crit_edge ], [ 0, %for.body34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_alloc_sds_rings(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_rx_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -24
  %adapter1 = getelementptr i8, ptr %napi, i32 -4
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %call = tail call fastcc i32 @qlcnic_process_rcv_ring(ptr noundef %add.ptr, i32 noundef %budget)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp slt i32 %call, %budget
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %call3 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call) #6
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %if.then5

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.then
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_ops.i, align 4
  %enable_sds_intr.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %8, i32 0, i32 41
  %9 = ptrtoint ptr %enable_sds_intr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enable_sds_intr.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then5.if.end6_crit_edge, label %if.then.i

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %10(ptr noundef %1, ptr noundef %add.ptr) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then5.if.end6_crit_edge, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -24
  %adapter1 = getelementptr i8, ptr %napi, i32 -4
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %tx_ring2 = getelementptr i8, ptr %napi, i32 -12
  %2 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring2, align 4
  %call = tail call fastcc i32 @qlcnic_process_cmd_ring(ptr noundef %1, ptr noundef %3, i32 noundef %budget)
  %call3 = tail call fastcc i32 @qlcnic_process_rcv_ring(ptr noundef %add.ptr, i32 noundef %budget)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 %budget, i32 %call3
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %budget)
  %cmp = icmp slt i32 %spec.select, %budget
  br i1 %cmp, label %if.then4, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then4:                                         ; preds = %entry
  %call6 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %spec.select) #6
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool8.not, label %if.then4.if.end11_crit_edge, label %if.then9

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.then4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 46
  %9 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_ops.i, align 4
  %enable_sds_intr.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %10, i32 0, i32 41
  %11 = ptrtoint ptr %enable_sds_intr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %enable_sds_intr.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then9.qlcnic_enable_sds_intr.exit_crit_edge, label %if.then.i

if.then9.qlcnic_enable_sds_intr.exit_crit_edge:   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_enable_sds_intr.exit

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %12(ptr noundef %1, ptr noundef %add.ptr) #6
  br label %qlcnic_enable_sds_intr.exit

qlcnic_enable_sds_intr.exit:                      ; preds = %if.then.i, %if.then9.qlcnic_enable_sds_intr.exit_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %hw_ops.i25 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %14, i32 0, i32 46
  %15 = ptrtoint ptr %hw_ops.i25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_ops.i25, align 4
  %enable_tx_intr.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %16, i32 0, i32 43
  %17 = ptrtoint ptr %enable_tx_intr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %enable_tx_intr.i, align 4
  %tobool.not.i26 = icmp eq ptr %18, null
  br i1 %tobool.not.i26, label %qlcnic_enable_sds_intr.exit.if.end11_crit_edge, label %if.then.i27

qlcnic_enable_sds_intr.exit.if.end11_crit_edge:   ; preds = %qlcnic_enable_sds_intr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then.i27:                                      ; preds = %qlcnic_enable_sds_intr.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %18(ptr noundef %1, ptr noundef %3) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then.i27, %qlcnic_enable_sds_intr.exit.if.end11_crit_edge, %if.then4.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_alloc_tx_rings(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_free_sds_rings(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_tx_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -112
  %adapter1 = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %call = tail call fastcc i32 @qlcnic_process_cmd_ring(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %budget)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #6
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then6

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.then
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_ops.i, align 4
  %enable_tx_intr.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %8, i32 0, i32 43
  %9 = ptrtoint ptr %enable_tx_intr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enable_tx_intr.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then6.if.end7_crit_edge, label %if.then.i

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %10(ptr noundef %1, ptr noundef %add.ptr) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %if.then6.if.end7_crit_edge, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %work_done.0 = phi i32 [ 1, %if.then.if.end7_crit_edge ], [ %budget, %entry.if.end7_crit_edge ], [ 1, %if.then6.if.end7_crit_edge ], [ 1, %if.then.i ]
  ret i32 %work_done.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_82xx_napi_del(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %drv_sds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 16
  %0 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %drv_sds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp29.not = icmp eq i8 %1, 0
  br i1 %cmp29.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recv_ctx1, align 4
  %sds_rings = getelementptr inbounds %struct.qlcnic_recv_context, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ring.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sds_rings, align 4
  %napi = getelementptr %struct.qlcnic_host_sds_ring, ptr %5, i32 %ring.030, i32 6
  tail call void @__netif_napi_del(ptr noundef %napi) #6
  tail call void @synchronize_net() #6
  %inc = add nuw nsw i32 %ring.030, 1
  %6 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %drv_sds_rings, align 2
  %conv = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %recv_ctx1, align 4
  tail call void @qlcnic_free_sds_rings(ptr noundef %9) #6
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %for.end.if.end_crit_edge, label %land.lhs.true

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %for.end
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %diag_test = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %diag_test to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %diag_test, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %for.cond5.preheader, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond5.preheader:                              ; preds = %land.lhs.true
  %drv_tx_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 15
  %17 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %drv_tx_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp732.not = icmp eq i8 %18, 0
  br i1 %cmp732.not, label %for.cond5.preheader.if.end_crit_edge, label %for.body9.lr.ph

for.cond5.preheader.if.end_crit_edge:             ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body9.lr.ph:                                  ; preds = %for.cond5.preheader
  %tx_ring10 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 2
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.lr.ph
  %ring.133 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc14, %for.body9.for.body9_crit_edge ]
  %19 = ptrtoint ptr %tx_ring10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_ring10, align 8
  %napi12 = getelementptr %struct.qlcnic_host_tx_ring, ptr %20, i32 %ring.133, i32 12
  tail call void @__netif_napi_del(ptr noundef %napi12) #6
  tail call void @synchronize_net() #6
  %inc14 = add nuw nsw i32 %ring.133, 1
  %21 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %drv_tx_rings, align 1
  %conv6 = zext i8 %22 to i32
  %cmp7 = icmp ult i32 %inc14, %conv6
  br i1 %cmp7, label %for.body9.for.body9_crit_edge, label %for.body9.if.end_crit_edge

for.body9.if.end_crit_edge:                       ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body9

if.end:                                           ; preds = %for.body9.if.end_crit_edge, %for.cond5.preheader.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %for.end.if.end_crit_edge
  tail call void @qlcnic_free_tx_rings(ptr noundef %adapter) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_free_tx_rings(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_82xx_napi_enable(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_ctx1, align 4
  %is_up = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 26
  %2 = ptrtoint ptr %is_up to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %is_up, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %3)
  %cmp.not = icmp eq i16 %3, 777
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %drv_sds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 16
  %4 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %drv_sds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp445.not = icmp eq i8 %5, 0
  br i1 %cmp445.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sds_rings = getelementptr inbounds %struct.qlcnic_recv_context, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %qlcnic_enable_sds_intr.exit.for.body_crit_edge, %for.body.lr.ph
  %ring.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %qlcnic_enable_sds_intr.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sds_rings, align 4
  %napi = getelementptr %struct.qlcnic_host_sds_ring, ptr %7, i32 %ring.046, i32 6
  tail call void @napi_enable(ptr noundef %napi) #6
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_ops.i, align 4
  %enable_sds_intr.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %11, i32 0, i32 41
  %12 = ptrtoint ptr %enable_sds_intr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enable_sds_intr.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %for.body.qlcnic_enable_sds_intr.exit_crit_edge, label %if.then.i

for.body.qlcnic_enable_sds_intr.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_enable_sds_intr.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.qlcnic_host_sds_ring, ptr %7, i32 %ring.046
  tail call void %13(ptr noundef %adapter, ptr noundef %arrayidx) #6
  br label %qlcnic_enable_sds_intr.exit

qlcnic_enable_sds_intr.exit:                      ; preds = %if.then.i, %for.body.qlcnic_enable_sds_intr.exit_crit_edge
  %inc = add nuw nsw i32 %ring.046, 1
  %14 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %drv_sds_rings, align 2
  %conv3 = zext i8 %15 to i32
  %cmp4 = icmp ult i32 %inc, %conv3
  br i1 %cmp4, label %qlcnic_enable_sds_intr.exit.for.body_crit_edge, label %qlcnic_enable_sds_intr.exit.for.end_crit_edge

qlcnic_enable_sds_intr.exit.for.end_crit_edge:    ; preds = %qlcnic_enable_sds_intr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

qlcnic_enable_sds_intr.exit.for.body_crit_edge:   ; preds = %qlcnic_enable_sds_intr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %qlcnic_enable_sds_intr.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %18 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not = icmp eq i32 %18, 0
  br i1 %tobool.i.not, label %for.end.cleanup_crit_edge, label %land.lhs.true

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %for.end
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 8
  %and = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true7:                                   ; preds = %land.lhs.true
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %diag_test = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %22, i32 0, i32 18
  %23 = ptrtoint ptr %diag_test to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %diag_test, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool8.not = icmp eq i8 %24, 0
  br i1 %tobool8.not, label %for.cond10.preheader, label %land.lhs.true7.cleanup_crit_edge

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond10.preheader:                             ; preds = %land.lhs.true7
  %drv_tx_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 15
  %25 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %drv_tx_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp1249.not = icmp eq i8 %26, 0
  br i1 %cmp1249.not, label %for.cond10.preheader.cleanup_crit_edge, label %for.body14.lr.ph

for.cond10.preheader.cleanup_crit_edge:           ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body14.lr.ph:                                 ; preds = %for.cond10.preheader
  %tx_ring15 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 2
  br label %for.body14

for.body14:                                       ; preds = %qlcnic_enable_tx_intr.exit.for.body14_crit_edge, %for.body14.lr.ph
  %ring.150 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc19, %qlcnic_enable_tx_intr.exit.for.body14_crit_edge ]
  %27 = ptrtoint ptr %tx_ring15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx_ring15, align 8
  %napi17 = getelementptr %struct.qlcnic_host_tx_ring, ptr %28, i32 %ring.150, i32 12
  tail call void @napi_enable(ptr noundef %napi17) #6
  %29 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter, align 8
  %hw_ops.i41 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %30, i32 0, i32 46
  %31 = ptrtoint ptr %hw_ops.i41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_ops.i41, align 4
  %enable_tx_intr.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %32, i32 0, i32 43
  %33 = ptrtoint ptr %enable_tx_intr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %enable_tx_intr.i, align 4
  %tobool.not.i42 = icmp eq ptr %34, null
  br i1 %tobool.not.i42, label %for.body14.qlcnic_enable_tx_intr.exit_crit_edge, label %if.then.i43

for.body14.qlcnic_enable_tx_intr.exit_crit_edge:  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_enable_tx_intr.exit

if.then.i43:                                      ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx16 = getelementptr %struct.qlcnic_host_tx_ring, ptr %28, i32 %ring.150
  tail call void %34(ptr noundef %adapter, ptr noundef %arrayidx16) #6
  br label %qlcnic_enable_tx_intr.exit

qlcnic_enable_tx_intr.exit:                       ; preds = %if.then.i43, %for.body14.qlcnic_enable_tx_intr.exit_crit_edge
  %inc19 = add nuw nsw i32 %ring.150, 1
  %35 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %drv_tx_rings, align 1
  %conv11 = zext i8 %36 to i32
  %cmp12 = icmp ult i32 %inc19, %conv11
  br i1 %cmp12, label %qlcnic_enable_tx_intr.exit.for.body14_crit_edge, label %qlcnic_enable_tx_intr.exit.cleanup_crit_edge

qlcnic_enable_tx_intr.exit.cleanup_crit_edge:     ; preds = %qlcnic_enable_tx_intr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

qlcnic_enable_tx_intr.exit.for.body14_crit_edge:  ; preds = %qlcnic_enable_tx_intr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14

cleanup:                                          ; preds = %qlcnic_enable_tx_intr.exit.cleanup_crit_edge, %for.cond10.preheader.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_82xx_napi_disable(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_ctx1, align 4
  %is_up = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 26
  %2 = ptrtoint ptr %is_up to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %is_up, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %3)
  %cmp.not = icmp eq i16 %3, 777
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %drv_sds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 16
  %4 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %drv_sds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp458.not = icmp eq i8 %5, 0
  br i1 %cmp458.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sds_rings = getelementptr inbounds %struct.qlcnic_recv_context, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %napi_synchronize.exit.for.body_crit_edge, %for.body.lr.ph
  %ring.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %napi_synchronize.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sds_rings, align 4
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_ops.i, align 4
  %disable_sds_intr.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %11, i32 0, i32 42
  %12 = ptrtoint ptr %disable_sds_intr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disable_sds_intr.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %for.body.qlcnic_disable_sds_intr.exit_crit_edge, label %if.then.i

for.body.qlcnic_disable_sds_intr.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_disable_sds_intr.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.qlcnic_host_sds_ring, ptr %7, i32 %ring.059
  tail call void %13(ptr noundef %adapter, ptr noundef %arrayidx) #6
  br label %qlcnic_disable_sds_intr.exit

qlcnic_disable_sds_intr.exit:                     ; preds = %if.then.i, %for.body.qlcnic_disable_sds_intr.exit_crit_edge
  %napi = getelementptr %struct.qlcnic_host_sds_ring, ptr %7, i32 %ring.059, i32 6
  %state.i = getelementptr %struct.qlcnic_host_sds_ring, ptr %7, i32 %ring.059, i32 6, i32 1
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  %and1.i1.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i)
  %tobool.not2.i = icmp eq i32 %and1.i1.i, 0
  br i1 %tobool.not2.i, label %qlcnic_disable_sds_intr.exit.napi_synchronize.exit_crit_edge, label %qlcnic_disable_sds_intr.exit.while.body.i_crit_edge

qlcnic_disable_sds_intr.exit.while.body.i_crit_edge: ; preds = %qlcnic_disable_sds_intr.exit
  br label %while.body.i

qlcnic_disable_sds_intr.exit.napi_synchronize.exit_crit_edge: ; preds = %qlcnic_disable_sds_intr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %qlcnic_disable_sds_intr.exit.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %17, 1
  %tobool.not.i45 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i45, label %while.body.i.napi_synchronize.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.napi_synchronize.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit

napi_synchronize.exit:                            ; preds = %while.body.i.napi_synchronize.exit_crit_edge, %qlcnic_disable_sds_intr.exit.napi_synchronize.exit_crit_edge
  tail call void @napi_disable(ptr noundef %napi) #6
  %inc = add nuw nsw i32 %ring.059, 1
  %18 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %drv_sds_rings, align 2
  %conv3 = zext i8 %19 to i32
  %cmp4 = icmp ult i32 %inc, %conv3
  br i1 %cmp4, label %napi_synchronize.exit.for.body_crit_edge, label %napi_synchronize.exit.for.end_crit_edge

napi_synchronize.exit.for.end_crit_edge:          ; preds = %napi_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

napi_synchronize.exit.for.body_crit_edge:         ; preds = %napi_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %napi_synchronize.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 8
  %and = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %land.lhs.true

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %for.end
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %diag_test = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %23, i32 0, i32 18
  %24 = ptrtoint ptr %diag_test to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %diag_test, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool7.not = icmp eq i8 %25, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true8:                                   ; preds = %land.lhs.true
  %state.i46 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %26 = ptrtoint ptr %state.i46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i46, align 4
  %28 = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not = icmp eq i32 %28, 0
  br i1 %tobool.i.not, label %land.lhs.true8.cleanup_crit_edge, label %for.cond11.preheader

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond11.preheader:                             ; preds = %land.lhs.true8
  %drv_tx_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 15
  %29 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %drv_tx_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp1361.not = icmp eq i8 %30, 0
  br i1 %cmp1361.not, label %for.cond11.preheader.cleanup_crit_edge, label %for.body15.lr.ph

for.cond11.preheader.cleanup_crit_edge:           ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body15.lr.ph:                                 ; preds = %for.cond11.preheader
  %tx_ring16 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 2
  br label %for.body15

for.body15:                                       ; preds = %napi_synchronize.exit56.for.body15_crit_edge, %for.body15.lr.ph
  %ring.162 = phi i32 [ 0, %for.body15.lr.ph ], [ %inc21, %napi_synchronize.exit56.for.body15_crit_edge ]
  %31 = ptrtoint ptr %tx_ring16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_ring16, align 8
  %33 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter, align 8
  %hw_ops.i47 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %34, i32 0, i32 46
  %35 = ptrtoint ptr %hw_ops.i47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_ops.i47, align 4
  %disable_tx_intr.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %36, i32 0, i32 44
  %37 = ptrtoint ptr %disable_tx_intr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %disable_tx_intr.i, align 4
  %tobool.not.i48 = icmp eq ptr %38, null
  br i1 %tobool.not.i48, label %for.body15.qlcnic_disable_tx_intr.exit_crit_edge, label %if.then.i49

for.body15.qlcnic_disable_tx_intr.exit_crit_edge: ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_disable_tx_intr.exit

if.then.i49:                                      ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx17 = getelementptr %struct.qlcnic_host_tx_ring, ptr %32, i32 %ring.162
  tail call void %38(ptr noundef %adapter, ptr noundef %arrayidx17) #6
  br label %qlcnic_disable_tx_intr.exit

qlcnic_disable_tx_intr.exit:                      ; preds = %if.then.i49, %for.body15.qlcnic_disable_tx_intr.exit_crit_edge
  %napi18 = getelementptr %struct.qlcnic_host_tx_ring, ptr %32, i32 %ring.162, i32 12
  %state.i50 = getelementptr %struct.qlcnic_host_tx_ring, ptr %32, i32 %ring.162, i32 12, i32 1
  %39 = ptrtoint ptr %state.i50 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %state.i50, align 4
  %and1.i1.i51 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i51)
  %tobool.not2.i52 = icmp eq i32 %and1.i1.i51, 0
  br i1 %tobool.not2.i52, label %qlcnic_disable_tx_intr.exit.napi_synchronize.exit56_crit_edge, label %qlcnic_disable_tx_intr.exit.while.body.i55_crit_edge

qlcnic_disable_tx_intr.exit.while.body.i55_crit_edge: ; preds = %qlcnic_disable_tx_intr.exit
  br label %while.body.i55

qlcnic_disable_tx_intr.exit.napi_synchronize.exit56_crit_edge: ; preds = %qlcnic_disable_tx_intr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit56

while.body.i55:                                   ; preds = %while.body.i55.while.body.i55_crit_edge, %qlcnic_disable_tx_intr.exit.while.body.i55_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %41 = ptrtoint ptr %state.i50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %state.i50, align 4
  %and1.i.i53 = and i32 %42, 1
  %tobool.not.i54 = icmp eq i32 %and1.i.i53, 0
  br i1 %tobool.not.i54, label %while.body.i55.napi_synchronize.exit56_crit_edge, label %while.body.i55.while.body.i55_crit_edge

while.body.i55.while.body.i55_crit_edge:          ; preds = %while.body.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i55

while.body.i55.napi_synchronize.exit56_crit_edge: ; preds = %while.body.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit56

napi_synchronize.exit56:                          ; preds = %while.body.i55.napi_synchronize.exit56_crit_edge, %qlcnic_disable_tx_intr.exit.napi_synchronize.exit56_crit_edge
  tail call void @napi_disable(ptr noundef %napi18) #6
  %inc21 = add nuw nsw i32 %ring.162, 1
  %43 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %drv_tx_rings, align 1
  %conv12 = zext i8 %44 to i32
  %cmp13 = icmp ult i32 %inc21, %conv12
  br i1 %cmp13, label %napi_synchronize.exit56.for.body15_crit_edge, label %napi_synchronize.exit56.cleanup_crit_edge

napi_synchronize.exit56.cleanup_crit_edge:        ; preds = %napi_synchronize.exit56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

napi_synchronize.exit56.for.body15_crit_edge:     ; preds = %napi_synchronize.exit56
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body15

cleanup:                                          ; preds = %napi_synchronize.exit56.cleanup_crit_edge, %for.cond11.preheader.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_83xx_napi_enable(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_ctx1, align 4
  %is_up = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 26
  %2 = ptrtoint ptr %is_up to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %is_up, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %3)
  %cmp.not = icmp eq i16 %3, 777
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %drv_sds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 16
  %4 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %drv_sds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp450.not = icmp eq i8 %5, 0
  br i1 %cmp450.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sds_rings = getelementptr inbounds %struct.qlcnic_recv_context, ptr %1, i32 0, i32 1
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ring.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sds_rings, align 4
  %napi = getelementptr %struct.qlcnic_host_sds_ring, ptr %7, i32 %ring.051, i32 6
  tail call void @napi_enable(ptr noundef %napi) #6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then6:                                         ; preds = %for.body
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_ops.i, align 4
  %enable_sds_intr.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %13, i32 0, i32 41
  %14 = ptrtoint ptr %enable_sds_intr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enable_sds_intr.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then6.for.inc_crit_edge, label %if.then.i

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.qlcnic_host_sds_ring, ptr %7, i32 %ring.051
  tail call void %15(ptr noundef %adapter, ptr noundef %arrayidx) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %ring.051, 1
  %16 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %drv_sds_rings, align 2
  %conv3 = zext i8 %17 to i32
  %cmp4 = icmp ult i32 %inc, %conv3
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %flags8 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %18 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags8, align 8
  %20 = and i32 %19, 65540
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %for.cond15.preheader, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond15.preheader:                             ; preds = %for.end
  %drv_tx_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 15
  %22 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %drv_tx_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp1754.not = icmp eq i8 %23, 0
  br i1 %cmp1754.not, label %for.cond15.preheader.cleanup_crit_edge, label %for.body19.lr.ph

for.cond15.preheader.cleanup_crit_edge:           ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body19.lr.ph:                                 ; preds = %for.cond15.preheader
  %tx_ring20 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 2
  br label %for.body19

for.body19:                                       ; preds = %qlcnic_enable_tx_intr.exit.for.body19_crit_edge, %for.body19.lr.ph
  %ring.155 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc24, %qlcnic_enable_tx_intr.exit.for.body19_crit_edge ]
  %24 = ptrtoint ptr %tx_ring20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_ring20, align 8
  %napi22 = getelementptr %struct.qlcnic_host_tx_ring, ptr %25, i32 %ring.155, i32 12
  tail call void @napi_enable(ptr noundef %napi22) #6
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %hw_ops.i46 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 46
  %28 = ptrtoint ptr %hw_ops.i46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_ops.i46, align 4
  %enable_tx_intr.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %29, i32 0, i32 43
  %30 = ptrtoint ptr %enable_tx_intr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %enable_tx_intr.i, align 4
  %tobool.not.i47 = icmp eq ptr %31, null
  br i1 %tobool.not.i47, label %for.body19.qlcnic_enable_tx_intr.exit_crit_edge, label %if.then.i48

for.body19.qlcnic_enable_tx_intr.exit_crit_edge:  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_enable_tx_intr.exit

if.then.i48:                                      ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21 = getelementptr %struct.qlcnic_host_tx_ring, ptr %25, i32 %ring.155
  tail call void %31(ptr noundef %adapter, ptr noundef %arrayidx21) #6
  br label %qlcnic_enable_tx_intr.exit

qlcnic_enable_tx_intr.exit:                       ; preds = %if.then.i48, %for.body19.qlcnic_enable_tx_intr.exit_crit_edge
  %inc24 = add nuw nsw i32 %ring.155, 1
  %32 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %drv_tx_rings, align 1
  %conv16 = zext i8 %33 to i32
  %cmp17 = icmp ult i32 %inc24, %conv16
  br i1 %cmp17, label %qlcnic_enable_tx_intr.exit.for.body19_crit_edge, label %qlcnic_enable_tx_intr.exit.cleanup_crit_edge

qlcnic_enable_tx_intr.exit.cleanup_crit_edge:     ; preds = %qlcnic_enable_tx_intr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

qlcnic_enable_tx_intr.exit.for.body19_crit_edge:  ; preds = %qlcnic_enable_tx_intr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body19

cleanup:                                          ; preds = %qlcnic_enable_tx_intr.exit.cleanup_crit_edge, %for.cond15.preheader.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_83xx_napi_disable(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_ctx1, align 4
  %is_up = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 26
  %2 = ptrtoint ptr %is_up to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %is_up, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %3)
  %cmp.not = icmp eq i16 %3, 777
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %drv_sds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 16
  %4 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %drv_sds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp462.not = icmp eq i8 %5, 0
  br i1 %cmp462.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sds_rings = getelementptr inbounds %struct.qlcnic_recv_context, ptr %1, i32 0, i32 1
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %napi_synchronize.exit.for.body_crit_edge, %for.body.lr.ph
  %ring.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %napi_synchronize.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sds_rings, align 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end7_crit_edge, label %if.then6

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %for.body
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_ops.i, align 4
  %disable_sds_intr.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %13, i32 0, i32 42
  %14 = ptrtoint ptr %disable_sds_intr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disable_sds_intr.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then6.if.end7_crit_edge, label %if.then.i

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.qlcnic_host_sds_ring, ptr %7, i32 %ring.063
  tail call void %15(ptr noundef %adapter, ptr noundef %arrayidx) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %if.then6.if.end7_crit_edge, %for.body.if.end7_crit_edge
  %napi = getelementptr %struct.qlcnic_host_sds_ring, ptr %7, i32 %ring.063, i32 6
  %state.i = getelementptr %struct.qlcnic_host_sds_ring, ptr %7, i32 %ring.063, i32 6, i32 1
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %and1.i1.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i)
  %tobool.not2.i = icmp eq i32 %and1.i1.i, 0
  br i1 %tobool.not2.i, label %if.end7.napi_synchronize.exit_crit_edge, label %if.end7.while.body.i_crit_edge

if.end7.while.body.i_crit_edge:                   ; preds = %if.end7
  br label %while.body.i

if.end7.napi_synchronize.exit_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end7.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %19, 1
  %tobool.not.i50 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i50, label %while.body.i.napi_synchronize.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.napi_synchronize.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit

napi_synchronize.exit:                            ; preds = %while.body.i.napi_synchronize.exit_crit_edge, %if.end7.napi_synchronize.exit_crit_edge
  tail call void @napi_disable(ptr noundef %napi) #6
  %inc = add nuw nsw i32 %ring.063, 1
  %20 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %drv_sds_rings, align 2
  %conv3 = zext i8 %21 to i32
  %cmp4 = icmp ult i32 %inc, %conv3
  br i1 %cmp4, label %napi_synchronize.exit.for.body_crit_edge, label %napi_synchronize.exit.for.end_crit_edge

napi_synchronize.exit.for.end_crit_edge:          ; preds = %napi_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

napi_synchronize.exit.for.body_crit_edge:         ; preds = %napi_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %napi_synchronize.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %flags9 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %22 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags9, align 8
  %24 = and i32 %23, 65540
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %for.cond16.preheader, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond16.preheader:                             ; preds = %for.end
  %drv_tx_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 15
  %26 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %drv_tx_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp1865.not = icmp eq i8 %27, 0
  br i1 %cmp1865.not, label %for.cond16.preheader.cleanup_crit_edge, label %for.body20.lr.ph

for.cond16.preheader.cleanup_crit_edge:           ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body20.lr.ph:                                 ; preds = %for.cond16.preheader
  %tx_ring21 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 2
  br label %for.body20

for.body20:                                       ; preds = %napi_synchronize.exit60.for.body20_crit_edge, %for.body20.lr.ph
  %ring.166 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc26, %napi_synchronize.exit60.for.body20_crit_edge ]
  %28 = ptrtoint ptr %tx_ring21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_ring21, align 8
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 8
  %hw_ops.i51 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %31, i32 0, i32 46
  %32 = ptrtoint ptr %hw_ops.i51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_ops.i51, align 4
  %disable_tx_intr.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %33, i32 0, i32 44
  %34 = ptrtoint ptr %disable_tx_intr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %disable_tx_intr.i, align 4
  %tobool.not.i52 = icmp eq ptr %35, null
  br i1 %tobool.not.i52, label %for.body20.qlcnic_disable_tx_intr.exit_crit_edge, label %if.then.i53

for.body20.qlcnic_disable_tx_intr.exit_crit_edge: ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_disable_tx_intr.exit

if.then.i53:                                      ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx22 = getelementptr %struct.qlcnic_host_tx_ring, ptr %29, i32 %ring.166
  tail call void %35(ptr noundef %adapter, ptr noundef %arrayidx22) #6
  br label %qlcnic_disable_tx_intr.exit

qlcnic_disable_tx_intr.exit:                      ; preds = %if.then.i53, %for.body20.qlcnic_disable_tx_intr.exit_crit_edge
  %napi23 = getelementptr %struct.qlcnic_host_tx_ring, ptr %29, i32 %ring.166, i32 12
  %state.i54 = getelementptr %struct.qlcnic_host_tx_ring, ptr %29, i32 %ring.166, i32 12, i32 1
  %36 = ptrtoint ptr %state.i54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state.i54, align 4
  %and1.i1.i55 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i55)
  %tobool.not2.i56 = icmp eq i32 %and1.i1.i55, 0
  br i1 %tobool.not2.i56, label %qlcnic_disable_tx_intr.exit.napi_synchronize.exit60_crit_edge, label %qlcnic_disable_tx_intr.exit.while.body.i59_crit_edge

qlcnic_disable_tx_intr.exit.while.body.i59_crit_edge: ; preds = %qlcnic_disable_tx_intr.exit
  br label %while.body.i59

qlcnic_disable_tx_intr.exit.napi_synchronize.exit60_crit_edge: ; preds = %qlcnic_disable_tx_intr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit60

while.body.i59:                                   ; preds = %while.body.i59.while.body.i59_crit_edge, %qlcnic_disable_tx_intr.exit.while.body.i59_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %38 = ptrtoint ptr %state.i54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %state.i54, align 4
  %and1.i.i57 = and i32 %39, 1
  %tobool.not.i58 = icmp eq i32 %and1.i.i57, 0
  br i1 %tobool.not.i58, label %while.body.i59.napi_synchronize.exit60_crit_edge, label %while.body.i59.while.body.i59_crit_edge

while.body.i59.while.body.i59_crit_edge:          ; preds = %while.body.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i59

while.body.i59.napi_synchronize.exit60_crit_edge: ; preds = %while.body.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %napi_synchronize.exit60

napi_synchronize.exit60:                          ; preds = %while.body.i59.napi_synchronize.exit60_crit_edge, %qlcnic_disable_tx_intr.exit.napi_synchronize.exit60_crit_edge
  tail call void @napi_disable(ptr noundef %napi23) #6
  %inc26 = add nuw nsw i32 %ring.166, 1
  %40 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %drv_tx_rings, align 1
  %conv17 = zext i8 %41 to i32
  %cmp18 = icmp ult i32 %inc26, %conv17
  br i1 %cmp18, label %napi_synchronize.exit60.for.body20_crit_edge, label %napi_synchronize.exit60.cleanup_crit_edge

napi_synchronize.exit60.cleanup_crit_edge:        ; preds = %napi_synchronize.exit60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

napi_synchronize.exit60.for.body20_crit_edge:     ; preds = %napi_synchronize.exit60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body20

cleanup:                                          ; preds = %napi_synchronize.exit60.cleanup_crit_edge, %for.cond16.preheader.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_83xx_napi_add(ptr noundef %adapter, ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_ctx1, align 4
  %drv_sds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 16
  %2 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %drv_sds_rings, align 2
  %conv = zext i8 %3 to i32
  %call = tail call i32 @qlcnic_alloc_sds_rings(ptr noundef %1, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %drv_sds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp65.not = icmp eq i8 %5, 0
  br i1 %cmp65.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sds_rings = getelementptr inbounds %struct.qlcnic_recv_context, ptr %1, i32 0, i32 1
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ring.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sds_rings, align 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else13, label %if.then6

if.then6:                                         ; preds = %for.body
  %and8 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %napi = getelementptr %struct.qlcnic_host_sds_ring, ptr %7, i32 %ring.066, i32 6
  br i1 %tobool9.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netif_napi_add(ptr noundef %netdev, ptr noundef %napi, ptr noundef nonnull @qlcnic_83xx_rx_poll, i32 noundef 64) #6
  br label %for.inc

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netif_napi_add(ptr noundef %netdev, ptr noundef %napi, ptr noundef nonnull @qlcnic_83xx_msix_sriov_vf_poll, i32 noundef 64) #6
  br label %for.inc

if.else13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %napi14 = getelementptr %struct.qlcnic_host_sds_ring, ptr %7, i32 %ring.066, i32 6
  tail call void @netif_napi_add(ptr noundef %netdev, ptr noundef %napi14, ptr noundef nonnull @qlcnic_83xx_poll, i32 noundef 64) #6
  br label %for.inc

for.inc:                                          ; preds = %if.else13, %if.else, %if.then10
  %inc = add nuw nsw i32 %ring.066, 1
  %10 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %drv_sds_rings, align 2
  %conv3 = zext i8 %11 to i32
  %cmp = icmp ult i32 %inc, %conv3
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call16 = tail call i32 @qlcnic_alloc_tx_rings(ptr noundef %adapter, ptr noundef %netdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @qlcnic_free_sds_rings(ptr noundef %1) #6
  br label %cleanup

if.end19:                                         ; preds = %for.end
  %flags20 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %12 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags20, align 8
  %14 = and i32 %13, 65540
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %for.cond27.preheader, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond27.preheader:                             ; preds = %if.end19
  %drv_tx_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 15
  %16 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %drv_tx_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp2969.not = icmp eq i8 %17, 0
  br i1 %cmp2969.not, label %for.cond27.preheader.cleanup_crit_edge, label %for.body31.lr.ph

for.cond27.preheader.cleanup_crit_edge:           ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body31.lr.ph:                                 ; preds = %for.cond27.preheader
  %tx_ring32 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 2
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.body31.lr.ph
  %ring.170 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc36, %for.body31.for.body31_crit_edge ]
  %18 = ptrtoint ptr %tx_ring32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_ring32, align 8
  %napi34 = getelementptr %struct.qlcnic_host_tx_ring, ptr %19, i32 %ring.170, i32 12
  %state.i = getelementptr %struct.qlcnic_host_tx_ring, ptr %19, i32 %ring.170, i32 12, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state.i) #6
  tail call void @netif_napi_add(ptr noundef %netdev, ptr noundef %napi34, ptr noundef nonnull @qlcnic_83xx_msix_tx_poll, i32 noundef 64) #6
  %inc36 = add nuw nsw i32 %ring.170, 1
  %20 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %drv_tx_rings, align 1
  %conv28 = zext i8 %21 to i32
  %cmp29 = icmp ult i32 %inc36, %conv28
  br i1 %cmp29, label %for.body31.for.body31_crit_edge, label %for.body31.cleanup_crit_edge

for.body31.cleanup_crit_edge:                     ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body31

cleanup:                                          ; preds = %for.body31.cleanup_crit_edge, %for.cond27.preheader.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then18 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %for.cond27.preheader.cleanup_crit_edge ], [ 0, %for.body31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_83xx_rx_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -24
  %adapter1 = getelementptr i8, ptr %napi, i32 -4
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %call = tail call fastcc i32 @qlcnic_83xx_process_rcv_ring(ptr noundef %add.ptr, i32 noundef %budget)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp slt i32 %call, %budget
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %call3 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call) #6
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %if.then5

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.then
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_ops.i, align 4
  %enable_sds_intr.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %8, i32 0, i32 41
  %9 = ptrtoint ptr %enable_sds_intr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enable_sds_intr.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then5.if.end6_crit_edge, label %if.then.i

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %10(ptr noundef %1, ptr noundef %add.ptr) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then5.if.end6_crit_edge, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_83xx_msix_sriov_vf_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -24
  %adapter1 = getelementptr i8, ptr %napi, i32 -4
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %tx_ring2 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring2, align 8
  %call = tail call fastcc i32 @qlcnic_process_cmd_ring(ptr noundef %1, ptr noundef %3, i32 noundef %budget)
  %call3 = tail call fastcc i32 @qlcnic_83xx_process_rcv_ring(ptr noundef %add.ptr, i32 noundef %budget)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 %budget, i32 %call3
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %budget)
  %cmp = icmp slt i32 %spec.select, %budget
  br i1 %cmp, label %if.then4, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %entry
  %call6 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %spec.select) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_ops.i, align 4
  %enable_sds_intr.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %7, i32 0, i32 41
  %8 = ptrtoint ptr %enable_sds_intr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_sds_intr.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then4.if.end7_crit_edge, label %if.then.i

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %9(ptr noundef %1, ptr noundef %add.ptr) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %if.then4.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_83xx_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -24
  %adapter1 = getelementptr i8, ptr %napi, i32 -4
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %tx_ring2 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring2, align 8
  %call = tail call fastcc i32 @qlcnic_process_cmd_ring(ptr noundef %1, ptr noundef %3, i32 noundef %budget)
  %call3 = tail call fastcc i32 @qlcnic_83xx_process_rcv_ring(ptr noundef %add.ptr, i32 noundef %budget)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 %budget, i32 %call3
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %budget)
  %cmp = icmp slt i32 %spec.select, %budget
  br i1 %cmp, label %if.then4, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %entry
  %call6 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %spec.select) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_ops.i, align 4
  %enable_sds_intr.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %7, i32 0, i32 41
  %8 = ptrtoint ptr %enable_sds_intr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_sds_intr.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then4.if.end7_crit_edge, label %if.then.i

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %9(ptr noundef %1, ptr noundef %add.ptr) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %if.then4.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_83xx_msix_tx_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -112
  %adapter1 = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %call = tail call fastcc i32 @qlcnic_process_cmd_ring(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %budget)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #6
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then6

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.then
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_ops.i, align 4
  %enable_tx_intr.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %8, i32 0, i32 43
  %9 = ptrtoint ptr %enable_tx_intr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enable_tx_intr.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then6.if.end7_crit_edge, label %if.then.i

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %10(ptr noundef %1, ptr noundef %add.ptr) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %if.then6.if.end7_crit_edge, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %work_done.0 = phi i32 [ 1, %if.then.if.end7_crit_edge ], [ %budget, %entry.if.end7_crit_edge ], [ 1, %if.then6.if.end7_crit_edge ], [ 1, %if.then.i ]
  ret i32 %work_done.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_83xx_napi_del(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %drv_sds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 16
  %0 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %drv_sds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp31.not = icmp eq i8 %1, 0
  br i1 %cmp31.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recv_ctx1, align 4
  %sds_rings = getelementptr inbounds %struct.qlcnic_recv_context, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ring.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sds_rings, align 4
  %napi = getelementptr %struct.qlcnic_host_sds_ring, ptr %5, i32 %ring.032, i32 6
  tail call void @__netif_napi_del(ptr noundef %napi) #6
  tail call void @synchronize_net() #6
  %inc = add nuw nsw i32 %ring.032, 1
  %6 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %drv_sds_rings, align 2
  %conv = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %recv_ctx1, align 4
  tail call void @qlcnic_free_sds_rings(ptr noundef %9) #6
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %12 = and i32 %11, 65540
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %for.cond7.preheader, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond7.preheader:                              ; preds = %for.end
  %drv_tx_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 15
  %14 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %drv_tx_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp934.not = icmp eq i8 %15, 0
  br i1 %cmp934.not, label %for.cond7.preheader.if.end_crit_edge, label %for.body11.lr.ph

for.cond7.preheader.if.end_crit_edge:             ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body11.lr.ph:                                 ; preds = %for.cond7.preheader
  %tx_ring12 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 2
  br label %for.body11

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.body11.lr.ph
  %ring.135 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc16, %for.body11.for.body11_crit_edge ]
  %16 = ptrtoint ptr %tx_ring12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_ring12, align 8
  %napi14 = getelementptr %struct.qlcnic_host_tx_ring, ptr %17, i32 %ring.135, i32 12
  tail call void @__netif_napi_del(ptr noundef %napi14) #6
  tail call void @synchronize_net() #6
  %inc16 = add nuw nsw i32 %ring.135, 1
  %18 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %drv_tx_rings, align 1
  %conv8 = zext i8 %19 to i32
  %cmp9 = icmp ult i32 %inc16, %conv8
  br i1 %cmp9, label %for.body11.for.body11_crit_edge, label %for.body11.if.end_crit_edge

for.body11.if.end_crit_edge:                      ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11

if.end:                                           ; preds = %for.body11.if.end_crit_edge, %for.cond7.preheader.if.end_crit_edge, %for.end.if.end_crit_edge
  tail call void @qlcnic_free_tx_rings(ptr noundef %adapter) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_83xx_process_rcv_ring_diag(ptr nocapture noundef %sds_ring) local_unnamed_addr #0 align 64 {
entry:
  %sts_data = alloca [2 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 5
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sts_data) #6
  %2 = getelementptr inbounds [2 x i64], ptr %sts_data, i32 0, i32 1
  %3 = ptrtoint ptr %sds_ring to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sds_ring, align 128
  %desc_head = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 4
  %5 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc_head, align 16
  %arrayidx = getelementptr %struct.status_desc, ptr %6, i32 %4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx, align 16
  %9 = tail call i64 @llvm.bswap.i64(i64 %8)
  %10 = ptrtoint ptr %sts_data to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %sts_data, align 8
  %arrayidx6 = getelementptr [2 x i64], ptr %arrayidx, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx6, align 8
  %13 = tail call i64 @llvm.bswap.i64(i64 %12)
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %2, align 8
  %15 = and i64 %13, 65970697666560
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool.not = icmp eq i64 %15, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shr10 = lshr i64 %9, 63
  %conv11 = trunc i64 %shr10 to i32
  call fastcc void @qlcnic_83xx_process_rcv_diag(ptr noundef %1, i32 noundef %conv11, ptr noundef nonnull %sts_data)
  %16 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc_head, align 16
  %arrayidx13 = getelementptr %struct.status_desc, ptr %17, i32 %4
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 2, ptr %arrayidx13, align 16
  %add = add i32 %4, 1
  %num_desc = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 1
  %19 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_desc, align 4
  %sub = add i32 %20, -1
  %and16 = and i32 %sub, %add
  %21 = ptrtoint ptr %sds_ring to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and16, ptr %sds_ring, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %and16)
  %crb_sts_consumer = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 2
  %23 = ptrtoint ptr %crb_sts_consumer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %crb_sts_consumer, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #6, !srcloc !69
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sts_data) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_83xx_process_rcv_diag(ptr noundef %adapter, i32 noundef %ring, ptr nocapture noundef readonly %sts_data) unnamed_addr #0 align 64 {
entry:
  %prefix.i = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %max_rds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_rds_rings, align 2
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %ring)
  %cmp.not = icmp sgt i32 %conv, %ring
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !59

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %2 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recv_ctx1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %sts_data to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sts_data, align 8
  %shr = lshr i64 %7, 48
  %8 = trunc i64 %shr to i32
  %conv5 = and i32 %8, 32767
  %num_desc = getelementptr %struct.qlcnic_host_rds_ring, ptr %5, i32 %ring, i32 3
  %9 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_desc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5, i32 %10)
  %cmp6.not = icmp ult i32 %conv5, %10
  br i1 %cmp6.not, label %if.end15, label %if.end.cleanup_crit_edge, !prof !59

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %shr17 = lshr i64 %7, 32
  %11 = trunc i64 %shr17 to i32
  %conv19 = and i32 %11, 16383
  %rx_buf_arr.i = getelementptr %struct.qlcnic_host_rds_ring, ptr %5, i32 %ring, i32 2
  %12 = ptrtoint ptr %rx_buf_arr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_buf_arr.i, align 8
  %skb1.i = getelementptr %struct.qlcnic_rx_buffer, ptr %13, i32 %conv5, i32 1
  %14 = ptrtoint ptr %skb1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb1.i, align 4
  %cmp.i = icmp eq ptr %15, null
  br i1 %cmp.i, label %qlcnic_process_rxbuf.exit.thread, label %if.end23.i, !prof !60

qlcnic_process_rxbuf.exit.thread:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1146, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23.i:                                       ; preds = %if.end15
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %dma.i = getelementptr %struct.qlcnic_rx_buffer, ptr %13, i32 %conv5, i32 3
  %18 = ptrtoint ptr %dma.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dma.i, align 8
  %conv.i = trunc i64 %19 to i32
  %dma_size.i = getelementptr %struct.qlcnic_host_rds_ring, ptr %5, i32 %ring, i32 5
  %20 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_size.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %conv.i, i32 noundef %21, i32 noundef 2, i32 noundef 0) #6
  %22 = ptrtoint ptr %skb1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb1.i, align 4
  %netdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %24 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev.i, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 23
  %26 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %features.i, align 16
  %and.i = and i64 %27, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool25.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.qlcnic_process_rxbuf.exit_crit_edge, label %land.rhs.i, !prof !60

if.end23.i.qlcnic_process_rxbuf.exit_crit_edge:   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_process_rxbuf.exit

land.rhs.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %csummed.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 44, i32 4
  %28 = ptrtoint ptr %csummed.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %csummed.i, align 8
  %inc.i = add i64 %29, 1
  store i64 %inc.i, ptr %csummed.i, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 15
  %30 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %qlcnic_process_rxbuf.exit

qlcnic_process_rxbuf.exit:                        ; preds = %land.rhs.i, %if.end23.i.qlcnic_process_rxbuf.exit_crit_edge
  %31 = ptrtoint ptr %skb1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %skb1.i, align 4
  %tobool21.not = icmp eq ptr %23, null
  br i1 %tobool21.not, label %qlcnic_process_rxbuf.exit.cleanup_crit_edge, label %if.end23

qlcnic_process_rxbuf.exit.cleanup_crit_edge:      ; preds = %qlcnic_process_rxbuf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %qlcnic_process_rxbuf.exit
  %skb_size = getelementptr %struct.qlcnic_host_rds_ring, ptr %5, i32 %ring, i32 6
  %32 = ptrtoint ptr %skb_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %skb_size, align 8
  %34 = call i32 @llvm.umin.i32(i32 %conv19, i32 %33)
  %call29 = tail call ptr @skb_put(ptr noundef nonnull %23, i32 noundef %34) #6
  %data = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %mac_addr = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 34
  %call31 = tail call i32 @qlcnic_check_loopback_buff(ptr noundef %36, ptr noundef %mac_addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  %37 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter, align 8
  br i1 %tobool32.not, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %diag_cnt = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %38, i32 0, i32 21
  %39 = ptrtoint ptr %diag_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %diag_cnt, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %diag_cnt, align 4
  br label %if.end35

if.else34:                                        ; preds = %if.end23
  %msg_enable.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %38, i32 0, i32 35
  %41 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable.i, align 4
  %and.i57 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57)
  %tobool.not.i = icmp eq i32 %and.i57, 0
  br i1 %tobool.not.i, label %if.else34.if.end35_crit_edge, label %if.then.i

if.else34.if.end35_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then.i:                                        ; preds = %if.else34
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %prefix.i) #6
  %43 = call ptr @memset(ptr %prefix.i, i32 255, i32 30)
  %44 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44, i32 3
  %46 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i59 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %48 = ptrtoint ptr %dev.i59 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i59, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i11.i = phi ptr [ %49, %if.end.i.i ], [ %47, %if.then.i.dev_name.exit.i_crit_edge ]
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %prefix.i, i32 noundef 30, ptr noundef nonnull @.str.21, ptr noundef %retval.0.i11.i, ptr noundef nonnull @__func__.dump_skb) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_skb.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qlcnic_83xx_process_rcv_diag, %if.then6.i)) #6
          to label %do.end.i60 [label %if.then6.i], !srcloc !71

if.then6.i:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 6
  %52 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.24, ptr noundef nonnull %prefix.i, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %51, i32 noundef %53, i1 noundef zeroext true) #6
  br label %do.end.i60

do.end.i60:                                       ; preds = %if.then6.i, %dev_name.exit.i
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %prefix.i) #6
  br label %if.end35

if.end35:                                         ; preds = %do.end.i60, %if.else34.if.end35_crit_edge, %if.then33
  call void @__dev_kfree_skb_any(ptr noundef nonnull %23, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %qlcnic_process_rxbuf.exit.cleanup_crit_edge, %qlcnic_process_rxbuf.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_check_loopback_buff(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_process_rcv_ring(ptr noundef %sds_ring, i32 noundef %max) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 5
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %2 = ptrtoint ptr %sds_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sds_ring, align 128
  %desc_head = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max)
  %cmp231 = icmp sgt i32 %max, 0
  br i1 %cmp231, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %netdev1.i166 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 3
  %max_rds_rings.i167 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 12
  %recv_ctx2.i170 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 1
  %pdev.i.i181 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %csummed.i.i190 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 44, i32 4
  %rx_mac_learn.i198 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 38
  %rx_pvid.i.i207 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 27
  %flags.i.i211 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 6
  %rxdropped.i214 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 44, i32 2
  %lro_pkts.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 44, i32 6
  %lrobytes.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 44, i32 9
  %napi.i = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 6
  %rx_pkts.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 44, i32 5
  %rxbytes.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 44, i32 7
  %null_rxbuf = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 44, i32 17
  %num_desc = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %consumer.0233 = phi i32 [ %3, %while.body.lr.ph ], [ %consumer.1.lcssa, %for.end.while.body_crit_edge ]
  %count.0232 = phi i32 [ 0, %while.body.lr.ph ], [ %inc61, %for.end.while.body_crit_edge ]
  %4 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc_head, align 16
  %arrayidx = getelementptr %struct.status_desc, ptr %5, i32 %consumer.0233
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 16
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %and = and i64 %8, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %while.body
  %shr = lshr i64 %8, 53
  %9 = trunc i64 %shr to i32
  %conv = and i32 %9, 7
  %shr5 = lshr i64 %8, 58
  %conv7 = trunc i64 %shr5 to i32
  %10 = zext i32 %conv7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %conv7, label %if.end.skip_crit_edge [
    i32 4, label %if.end.sw.bb_crit_edge
    i32 63, label %if.end.sw.bb_crit_edge243
    i32 3, label %if.end.sw.bb_crit_edge244
    i32 18, label %sw.bb12
    i32 5, label %sw.bb20
  ]

if.end.sw.bb_crit_edge244:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge243:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.skip_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge243, %if.end.sw.bb_crit_edge244
  %shr8 = lshr i64 %8, 8
  %11 = trunc i64 %shr8 to i8
  %conv10 = and i8 %11, 15
  %conv11 = zext i8 %conv10 to i32
  %12 = ptrtoint ptr %netdev1.i166 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev1.i166, align 4
  %14 = ptrtoint ptr %max_rds_rings.i167 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %max_rds_rings.i167, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %conv10)
  %cmp.not.i = icmp ugt i8 %15, %conv10
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge, !prof !59

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %16 = ptrtoint ptr %recv_ctx2.i170 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %recv_ctx2.i170, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %shr.i = lshr i64 %8, 28
  %20 = trunc i64 %shr.i to i32
  %conv5.i = and i32 %20, 65535
  %num_desc.i = getelementptr %struct.qlcnic_host_rds_ring, ptr %19, i32 %conv11, i32 3
  %21 = ptrtoint ptr %num_desc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_desc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %22)
  %cmp6.not.i = icmp ult i32 %conv5.i, %22
  br i1 %cmp6.not.i, label %if.end15.i, label %if.end.i.sw.epilog_crit_edge, !prof !59

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end15.i:                                       ; preds = %if.end.i
  %rx_buf_arr.i = getelementptr %struct.qlcnic_host_rds_ring, ptr %19, i32 %conv11, i32 2
  %23 = ptrtoint ptr %rx_buf_arr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_buf_arr.i, align 8
  %arrayidx16.i = getelementptr %struct.qlcnic_rx_buffer, ptr %24, i32 %conv5.i
  %25 = trunc i64 %8 to i32
  %26 = lshr i32 %25, 12
  %conv19.i = and i32 %26, 65535
  %shr23.i = lshr i64 %8, 48
  %27 = trunc i64 %shr23.i to i32
  %conv25.i = and i32 %27, 31
  %skb1.i.i = getelementptr %struct.qlcnic_rx_buffer, ptr %24, i32 %conv5.i, i32 1
  %28 = ptrtoint ptr %skb1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb1.i.i, align 4
  %cmp.i.i = icmp eq ptr %29, null
  br i1 %cmp.i.i, label %qlcnic_process_rxbuf.exit.thread.i, label %if.end23.i.i, !prof !60

qlcnic_process_rxbuf.exit.thread.i:               ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1146, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog

if.end23.i.i:                                     ; preds = %if.end15.i
  %30 = ptrtoint ptr %pdev.i.i181 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i.i181, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %dma.i.i = getelementptr %struct.qlcnic_rx_buffer, ptr %24, i32 %conv5.i, i32 3
  %32 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %dma.i.i, align 8
  %conv.i.i = trunc i64 %33 to i32
  %dma_size.i.i = getelementptr %struct.qlcnic_host_rds_ring, ptr %19, i32 %conv11, i32 5
  %34 = ptrtoint ptr %dma_size.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_size.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %conv.i.i, i32 noundef %35, i32 noundef 2, i32 noundef 0) #6
  %36 = ptrtoint ptr %skb1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %skb1.i.i, align 4
  %38 = ptrtoint ptr %netdev1.i166 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev1.i166, align 4
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 23
  %40 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %41, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool25.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end23.i.i.qlcnic_process_rxbuf.exit.i_crit_edge, label %land.rhs.i.i, !prof !60

if.end23.i.i.qlcnic_process_rxbuf.exit.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_process_rxbuf.exit.i

land.rhs.i.i:                                     ; preds = %if.end23.i.i
  %42 = lshr i64 %8, 4
  %trunc.i = trunc i64 %42 to i4
  %43 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.38)
  switch i4 %trunc.i, label %land.rhs.i.i.qlcnic_process_rxbuf.exit.i_crit_edge [
    i4 2, label %land.rhs.i.i.if.then38.i.i_crit_edge
    i4 0, label %land.rhs.i.i.if.then38.i.i_crit_edge245
  ]

land.rhs.i.i.if.then38.i.i_crit_edge245:          ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38.i.i

land.rhs.i.i.if.then38.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38.i.i

land.rhs.i.i.qlcnic_process_rxbuf.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_process_rxbuf.exit.i

if.then38.i.i:                                    ; preds = %land.rhs.i.i.if.then38.i.i_crit_edge, %land.rhs.i.i.if.then38.i.i_crit_edge245
  %44 = ptrtoint ptr %csummed.i.i190 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %csummed.i.i190, align 8
  %inc.i.i = add i64 %45, 1
  store i64 %inc.i.i, ptr %csummed.i.i190, align 8
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 15
  %46 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  br label %qlcnic_process_rxbuf.exit.i

qlcnic_process_rxbuf.exit.i:                      ; preds = %if.then38.i.i, %land.rhs.i.i.qlcnic_process_rxbuf.exit.i_crit_edge, %if.end23.i.i.qlcnic_process_rxbuf.exit.i_crit_edge
  %47 = ptrtoint ptr %skb1.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %skb1.i.i, align 4
  %tobool28.not.i = icmp eq ptr %37, null
  br i1 %tobool28.not.i, label %qlcnic_process_rxbuf.exit.i.sw.epilog_crit_edge, label %if.end30.i

qlcnic_process_rxbuf.exit.i.sw.epilog_crit_edge:  ; preds = %qlcnic_process_rxbuf.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end30.i:                                       ; preds = %qlcnic_process_rxbuf.exit.i
  %48 = ptrtoint ptr %rx_mac_learn.i198 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rx_mac_learn.i198, align 2, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool31.not.i = icmp eq i8 %49, 0
  br i1 %tobool31.not.i, label %if.end30.i.if.end34.i_crit_edge, label %if.then32.i

if.end30.i.if.end34.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = and i64 %8, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %50)
  %cmp.i113.i = icmp eq i64 %50, 0
  %cond.i.i = zext i1 %cmp.i113.i to i32
  tail call fastcc void @qlcnic_add_lb_filter(ptr noundef %1, ptr noundef nonnull %37, i32 noundef %cond.i.i, i16 noundef zeroext 0) #6
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end30.i.if.end34.i_crit_edge
  %skb_size.i = getelementptr %struct.qlcnic_host_rds_ring, ptr %19, i32 %conv11, i32 6
  %51 = ptrtoint ptr %skb_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %skb_size.i, align 8
  %53 = tail call i32 @llvm.umin.i32(i32 %conv19.i, i32 %52) #6
  %call40.i = tail call ptr @skb_put(ptr noundef nonnull %37, i32 noundef %53) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv25.i)
  %tobool42.not.i = icmp eq i32 %conv25.i, 0
  br i1 %tobool42.not.i, label %if.end34.i.if.end45.i_crit_edge, label %if.then43.i

if.end34.i.if.end45.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

if.then43.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  %call44.i = tail call ptr @skb_pull(ptr noundef nonnull %37, i32 noundef %conv25.i) #6
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then43.i, %if.end34.i.if.end45.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 19
  %54 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i.i, align 4
  %h_vlan_proto.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %h_vlan_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %h_vlan_proto.i.i.i, align 2
  %58 = zext i16 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %57, label %if.end45.i.if.end.i.i_crit_edge [
    i16 -30552, label %if.end45.i.if.then.i.i_crit_edge
    i16 -32512, label %if.end45.i.if.then.i.i_crit_edge246
  ]

if.end45.i.if.then.i.i_crit_edge246:              ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end45.i.if.then.i.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end45.i.if.end.i.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end45.i.if.then.i.i_crit_edge, %if.end45.i.if.then.i.i_crit_edge246
  %h_vlan_TCI.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %55, i32 0, i32 2
  %59 = ptrtoint ptr %h_vlan_TCI.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %h_vlan_TCI.i.i.i, align 2
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 4
  %61 = call ptr @memmove(ptr %add.ptr.i.i, ptr %55, i32 12)
  %call2.i.i = tail call ptr @skb_pull(ptr noundef nonnull %37, i32 noundef 4) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end45.i.if.end.i.i_crit_edge
  %vid.0.i = phi i16 [ -1, %if.end45.i.if.end.i.i_crit_edge ], [ %60, %if.then.i.i ]
  %62 = ptrtoint ptr %rx_pvid.i.i207 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %rx_pvid.i.i207, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool3.not.i.i = icmp eq i16 %63, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end55.i_crit_edge, label %if.end5.i.i

if.end.i.i.if.end55.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %vid.0.i, i16 %63)
  %cmp.i114.i = icmp eq i16 %vid.0.i, %63
  br i1 %cmp.i114.i, label %if.end55.thread.i, label %if.end10.i.i

if.end55.thread.i:                                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call56127.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %37, ptr noundef %13) #6
  %protocol128.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 15, i32 0, i32 18
  %64 = ptrtoint ptr %protocol128.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %call56127.i, ptr %protocol128.i, align 8
  br label %if.end61.i

if.end10.i.i:                                     ; preds = %if.end5.i.i
  %65 = ptrtoint ptr %flags.i.i211 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags.i.i211, align 8
  %and.i115.i = and i32 %66, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115.i)
  %tobool11.not.i.i = icmp eq i32 %and.i115.i, 0
  br i1 %tobool11.not.i.i, label %if.then54.i, label %if.end10.i.i.if.end55.i_crit_edge

if.end10.i.i.if.end55.i_crit_edge:                ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i

if.then54.i:                                      ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %rxdropped.i214 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %rxdropped.i214, align 8
  %inc.i = add i64 %68, 1
  store i64 %inc.i, ptr %rxdropped.i214, align 8
  tail call void @consume_skb(ptr noundef nonnull %37) #6
  br label %sw.epilog

if.end55.i:                                       ; preds = %if.end10.i.i.if.end55.i_crit_edge, %if.end.i.i.if.end55.i_crit_edge
  %call56.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %37, ptr noundef %13) #6
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 15, i32 0, i32 18
  %69 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %call56.i, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %vid.0.i)
  %cmp58.not.i = icmp eq i16 %vid.0.i, -1
  br i1 %cmp58.not.i, label %if.end55.i.if.end61.i_crit_edge, label %if.then60.i

if.end55.i.if.end61.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i

if.then60.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 15, i32 0, i32 9
  %70 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 15, i32 0, i32 10
  %71 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %vid.0.i, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 15, i32 0, i32 3
  %72 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %bf.load.i117.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i118.i = or i32 %bf.load.i117.i, -2147483648
  store i32 %bf.set.i118.i, ptr %vlan_present.i.i, align 2
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then60.i, %if.end55.i.if.end61.i_crit_edge, %if.end55.thread.i
  %call62.i = tail call i32 @napi_gro_receive(ptr noundef %napi.i, ptr noundef nonnull %37) #6
  %73 = ptrtoint ptr %rx_pkts.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %rx_pkts.i, align 8
  %inc64.i = add i64 %74, 1
  store i64 %inc64.i, ptr %rx_pkts.i, align 8
  %75 = zext i32 %conv19.i to i64
  %76 = ptrtoint ptr %rxbytes.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %rxbytes.i, align 8
  %add.i = add i64 %77, %75
  store i64 %add.i, ptr %rxbytes.i, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %shr13 = lshr i64 %8, 49
  %78 = trunc i64 %shr13 to i8
  %conv15 = and i8 %78, 7
  %arrayidx17 = getelementptr [2 x i64], ptr %arrayidx, i32 0, i32 1
  %79 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx17, align 8
  %81 = tail call i64 @llvm.bswap.i64(i64 %80)
  %conv18 = zext i8 %conv15 to i32
  %82 = ptrtoint ptr %netdev1.i166 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %netdev1.i166, align 4
  %84 = ptrtoint ptr %max_rds_rings.i167 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %max_rds_rings.i167, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %85, i8 %conv15)
  %cmp.not.i169 = icmp ugt i8 %85, %conv15
  br i1 %cmp.not.i169, label %if.end.i174, label %sw.bb12.sw.epilog_crit_edge, !prof !59

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i174:                                      ; preds = %sw.bb12
  %86 = ptrtoint ptr %recv_ctx2.i170 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %recv_ctx2.i170, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %90 = trunc i64 %8 to i32
  %conv5.i171 = and i32 %90, 32767
  %num_desc.i172 = getelementptr %struct.qlcnic_host_rds_ring, ptr %89, i32 %conv18, i32 3
  %91 = ptrtoint ptr %num_desc.i172 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_desc.i172, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i171, i32 %92)
  %cmp6.not.i173 = icmp ult i32 %conv5.i171, %92
  br i1 %cmp6.not.i173, label %if.end15.i179, label %if.end.i174.sw.epilog_crit_edge, !prof !59

if.end.i174.sw.epilog_crit_edge:                  ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end15.i179:                                    ; preds = %if.end.i174
  %rx_buf_arr.i175 = getelementptr %struct.qlcnic_host_rds_ring, ptr %89, i32 %conv18, i32 2
  %93 = ptrtoint ptr %rx_buf_arr.i175 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rx_buf_arr.i175, align 8
  %arrayidx16.i176 = getelementptr %struct.qlcnic_rx_buffer, ptr %94, i32 %conv5.i171
  %95 = and i64 %8, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %95)
  %tobool18.not.i = icmp eq i64 %95, 0
  %96 = lshr i32 %90, 16
  %shr22.i = lshr i64 %8, 32
  %97 = trunc i64 %shr22.i to i32
  %conv24.i = and i32 %97, 255
  %shr25.i = lshr i64 %8, 40
  %98 = trunc i64 %shr25.i to i32
  %conv27.i = and i32 %98, 255
  %conv33.i = trunc i64 %81 to i32
  %skb1.i.i177 = getelementptr %struct.qlcnic_rx_buffer, ptr %94, i32 %conv5.i171, i32 1
  %99 = ptrtoint ptr %skb1.i.i177 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %skb1.i.i177, align 4
  %cmp.i.i178 = icmp eq ptr %100, null
  br i1 %cmp.i.i178, label %qlcnic_process_rxbuf.exit.thread.i180, label %if.end23.i.i189, !prof !60

qlcnic_process_rxbuf.exit.thread.i180:            ; preds = %if.end15.i179
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1146, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog

if.end23.i.i189:                                  ; preds = %if.end15.i179
  %101 = ptrtoint ptr %pdev.i.i181 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev.i.i181, align 8
  %dev.i.i182 = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %dma.i.i183 = getelementptr %struct.qlcnic_rx_buffer, ptr %94, i32 %conv5.i171, i32 3
  %103 = ptrtoint ptr %dma.i.i183 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %dma.i.i183, align 8
  %conv.i.i184 = trunc i64 %104 to i32
  %dma_size.i.i185 = getelementptr %struct.qlcnic_host_rds_ring, ptr %89, i32 %conv18, i32 5
  %105 = ptrtoint ptr %dma_size.i.i185 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dma_size.i.i185, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i182, i32 noundef %conv.i.i184, i32 noundef %106, i32 noundef 2, i32 noundef 0) #6
  %107 = ptrtoint ptr %skb1.i.i177 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %skb1.i.i177, align 4
  %109 = ptrtoint ptr %netdev1.i166 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %netdev1.i166, align 4
  %features.i.i186 = getelementptr inbounds %struct.net_device, ptr %110, i32 0, i32 23
  %111 = ptrtoint ptr %features.i.i186 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %features.i.i186, align 16
  %and.i.i187 = and i64 %112, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i187)
  %tobool25.not.i.i188 = icmp eq i64 %and.i.i187, 0
  br i1 %tobool25.not.i.i188, label %if.end23.i.i189.qlcnic_process_rxbuf.exit.i197_crit_edge, label %land.rhs.i.i196, !prof !60

if.end23.i.i189.qlcnic_process_rxbuf.exit.i197_crit_edge: ; preds = %if.end23.i.i189
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_process_rxbuf.exit.i197

land.rhs.i.i196:                                  ; preds = %if.end23.i.i189
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %csummed.i.i190 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %csummed.i.i190, align 8
  %inc.i.i191 = add i64 %114, 1
  store i64 %inc.i.i191, ptr %csummed.i.i190, align 8
  %ip_summed.i.i192 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 15
  %115 = ptrtoint ptr %ip_summed.i.i192 to i32
  call void @__asan_load2_noabort(i32 %115)
  %bf.load.i.i193 = load i16, ptr %ip_summed.i.i192, align 8
  %bf.clear.i.i194 = and i16 %bf.load.i.i193, -1537
  %bf.set.i.i195 = or i16 %bf.clear.i.i194, 512
  store i16 %bf.set.i.i195, ptr %ip_summed.i.i192, align 8
  br label %qlcnic_process_rxbuf.exit.i197

qlcnic_process_rxbuf.exit.i197:                   ; preds = %land.rhs.i.i196, %if.end23.i.i189.qlcnic_process_rxbuf.exit.i197_crit_edge
  %116 = ptrtoint ptr %skb1.i.i177 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %skb1.i.i177, align 4
  %tobool35.not.i = icmp eq ptr %108, null
  br i1 %tobool35.not.i, label %qlcnic_process_rxbuf.exit.i197.sw.epilog_crit_edge, label %if.end37.i

qlcnic_process_rxbuf.exit.i197.sw.epilog_crit_edge: ; preds = %qlcnic_process_rxbuf.exit.i197
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end37.i:                                       ; preds = %qlcnic_process_rxbuf.exit.i197
  %117 = ptrtoint ptr %rx_mac_learn.i198 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %rx_mac_learn.i198, align 2, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool38.not.i = icmp eq i8 %118, 0
  br i1 %tobool38.not.i, label %if.end37.i.if.end41.i_crit_edge, label %if.then39.i

if.end37.i.if.end41.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.then39.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  %119 = and i64 %8, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %119)
  %cmp.i205.i = icmp eq i64 %119, 0
  %cond.i.i199 = zext i1 %cmp.i205.i to i32
  tail call fastcc void @qlcnic_add_lb_filter(ptr noundef %1, ptr noundef nonnull %108, i32 noundef %cond.i.i199, i16 noundef zeroext 0) #6
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then39.i, %if.end37.i.if.end41.i_crit_edge
  %data_offset.0.v.i = select i1 %tobool18.not.i, i32 20, i32 32
  %data_offset.0.i = add nuw nsw i32 %data_offset.0.v.i, %96
  %add50.i = add nuw nsw i32 %data_offset.0.i, %conv27.i
  %call51.i = tail call ptr @skb_put(ptr noundef nonnull %108, i32 noundef %add50.i) #6
  %call52.i = tail call ptr @skb_pull(ptr noundef nonnull %108, i32 noundef %conv24.i) #6
  %data.i.i.i200 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 19
  %120 = ptrtoint ptr %data.i.i.i200 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %data.i.i.i200, align 4
  %h_vlan_proto.i.i.i201 = getelementptr inbounds %struct.vlan_ethhdr, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %h_vlan_proto.i.i.i201 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %h_vlan_proto.i.i.i201, align 2
  %124 = zext i16 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %123, label %if.end41.i.if.end.i.i209_crit_edge [
    i16 -30552, label %if.end41.i.if.then.i.i205_crit_edge
    i16 -32512, label %if.end41.i.if.then.i.i205_crit_edge247
  ]

if.end41.i.if.then.i.i205_crit_edge247:           ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i205

if.end41.i.if.then.i.i205_crit_edge:              ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i205

if.end41.i.if.end.i.i209_crit_edge:               ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i209

if.then.i.i205:                                   ; preds = %if.end41.i.if.then.i.i205_crit_edge, %if.end41.i.if.then.i.i205_crit_edge247
  %h_vlan_TCI.i.i.i202 = getelementptr inbounds %struct.vlan_ethhdr, ptr %121, i32 0, i32 2
  %125 = ptrtoint ptr %h_vlan_TCI.i.i.i202 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %h_vlan_TCI.i.i.i202, align 2
  %add.ptr.i.i203 = getelementptr i8, ptr %121, i32 4
  %127 = call ptr @memmove(ptr %add.ptr.i.i203, ptr %121, i32 12)
  %call2.i.i204 = tail call ptr @skb_pull(ptr noundef nonnull %108, i32 noundef 4) #6
  br label %if.end.i.i209

if.end.i.i209:                                    ; preds = %if.then.i.i205, %if.end41.i.if.end.i.i209_crit_edge
  %vid.0.i206 = phi i16 [ -1, %if.end41.i.if.end.i.i209_crit_edge ], [ %126, %if.then.i.i205 ]
  %128 = ptrtoint ptr %rx_pvid.i.i207 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %rx_pvid.i.i207, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool3.not.i.i208 = icmp eq i16 %129, 0
  br i1 %tobool3.not.i.i208, label %if.end.i.i209.if.end62.i_crit_edge, label %if.end5.i.i210

if.end.i.i209.if.end62.i_crit_edge:               ; preds = %if.end.i.i209
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.i

if.end5.i.i210:                                   ; preds = %if.end.i.i209
  call void @__sanitizer_cov_trace_cmp2(i16 %vid.0.i206, i16 %129)
  %cmp.i206.i = icmp eq i16 %vid.0.i206, %129
  br i1 %cmp.i206.i, label %if.end5.i.i210.if.end62.i_crit_edge, label %if.end10.i.i213

if.end5.i.i210.if.end62.i_crit_edge:              ; preds = %if.end5.i.i210
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.i

if.end10.i.i213:                                  ; preds = %if.end5.i.i210
  %130 = ptrtoint ptr %flags.i.i211 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %flags.i.i211, align 8
  %and.i207.i = and i32 %131, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i207.i)
  %tobool11.not.i.i212 = icmp eq i32 %and.i207.i, 0
  br i1 %tobool11.not.i.i212, label %if.then61.i, label %if.end10.i.i213.if.end62.i_crit_edge

if.end10.i.i213.if.end62.i_crit_edge:             ; preds = %if.end10.i.i213
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.i

if.then61.i:                                      ; preds = %if.end10.i.i213
  call void @__sanitizer_cov_trace_pc() #8
  %132 = ptrtoint ptr %rxdropped.i214 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %rxdropped.i214, align 8
  %inc.i215 = add i64 %133, 1
  store i64 %inc.i215, ptr %rxdropped.i214, align 8
  tail call void @consume_skb(ptr noundef nonnull %108) #6
  br label %sw.epilog

if.end62.i:                                       ; preds = %if.end10.i.i213.if.end62.i_crit_edge, %if.end5.i.i210.if.end62.i_crit_edge, %if.end.i.i209.if.end62.i_crit_edge
  %vid.1.ph.i = phi i16 [ -1, %if.end5.i.i210.if.end62.i_crit_edge ], [ %vid.0.i206, %if.end10.i.i213.if.end62.i_crit_edge ], [ %vid.0.i206, %if.end.i.i209.if.end62.i_crit_edge ]
  %call63.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %108, ptr noundef %83) #6
  %protocol.i216 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 15, i32 0, i32 18
  %134 = ptrtoint ptr %protocol.i216 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %call63.i, ptr %protocol.i216, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %call63.i)
  %cmp66.i = icmp eq i16 %call63.i, -31011
  %135 = ptrtoint ptr %data.i.i.i200 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %data.i.i.i200, align 4
  br i1 %cmp66.i, label %if.then68.i, label %if.else74.i

if.then68.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %136, i32 40
  %doff.i = getelementptr i8, ptr %136, i32 52
  %137 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %138 = lshr i16 %bf.load.i, 10
  %139 = and i16 %138, 60
  %140 = trunc i32 %96 to i16
  %conv73.i = add i16 %139, %140
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %136, i32 0, i32 2
  %141 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv73.i, ptr %payload_len.i, align 4
  br label %if.end95.i

if.else74.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  %142 = ptrtoint ptr %136 to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load77.i = load i8, ptr %136, align 4
  %bf.clear.i = shl i8 %bf.load77.i, 2
  %143 = and i8 %bf.clear.i, 60
  %shl79.i = zext i8 %143 to i32
  %add.ptr80.i = getelementptr i8, ptr %136, i32 %shl79.i
  %doff85.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr80.i, i32 0, i32 4
  %144 = ptrtoint ptr %doff85.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %bf.load86.i = load i16, ptr %doff85.i, align 4
  %145 = lshr i16 %bf.load86.i, 10
  %146 = and i16 %145, 60
  %add90.i = add nuw nsw i32 %96, %shl79.i
  %147 = trunc i32 %add90.i to i16
  %conv93.i = add i16 %146, %147
  %check.i = getelementptr inbounds %struct.iphdr, ptr %136, i32 0, i32 7
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %136, i32 0, i32 2
  %148 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %tot_len.i, align 2
  %150 = ptrtoint ptr %check.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %check.i, align 2
  %neg.i.i = xor i16 %151, -1
  %neg.i.i.i = xor i16 %149, -1
  %add.i.i.i.i = add i16 %neg.i.i, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i.i, i16 %neg.i.i.i)
  %cmp.i.i.i.i = icmp ult i16 %add.i.i.i.i, %neg.i.i.i
  %conv6.i.i.i.i = zext i1 %cmp.i.i.i.i to i16
  %add7.i.i.i.i = add i16 %add.i.i.i.i, %conv6.i.i.i.i
  %add.i.i.i = add i16 %add7.i.i.i.i, %conv93.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i, i16 %conv93.i)
  %cmp.i.i.i = icmp ult i16 %add.i.i.i, %conv93.i
  %conv6.i.i.i = zext i1 %cmp.i.i.i to i16
  %add7.i.i.i = add i16 %add.i.i.i, %conv6.i.i.i
  %neg4.i.i = xor i16 %add7.i.i.i, -1
  %152 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %neg4.i.i, ptr %check.i, align 2
  %153 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv93.i, ptr %tot_len.i, align 2
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.else74.i, %if.then68.i
  %th.0.i = phi ptr [ %add.ptr.i, %if.then68.i ], [ %add.ptr80.i, %if.else74.i ]
  %psh.i = getelementptr inbounds %struct.tcphdr, ptr %th.0.i, i32 0, i32 4
  %154 = ptrtoint ptr %psh.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %bf.load98.i = load i16, ptr %psh.i, align 4
  %tr.sh.diff.i = trunc i64 %shr13 to i16
  %bf.shl.i = and i16 %tr.sh.diff.i, 8
  %bf.clear99.i = and i16 %bf.load98.i, -9
  %bf.set.i = or i16 %bf.clear99.i, %bf.shl.i
  store i16 %bf.set.i, ptr %psh.i, align 4
  %seq.i = getelementptr inbounds %struct.tcphdr, ptr %th.0.i, i32 0, i32 2
  %155 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %conv33.i, ptr %seq.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 6
  %156 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %len.i, align 4
  %158 = ptrtoint ptr %flags.i.i211 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %flags.i.i211, align 8
  %and101.i = and i32 %159, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.i)
  %tobool102.not.i = icmp eq i32 %and101.i, 0
  br i1 %tobool102.not.i, label %if.end95.i.if.end118.i_crit_edge, label %if.then103.i

if.end95.i.if.end118.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118.i

if.then103.i:                                     ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr104.i = lshr i64 %81, 32
  %conv106.i = trunc i64 %shr104.i to i16
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 17
  %160 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %161, i32 0, i32 4
  %162 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %conv106.i, ptr %gso_size.i, align 4
  %163 = ptrtoint ptr %protocol.i216 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %protocol.i216, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %164)
  %cmp110.i = icmp eq i16 %164, -31011
  %165 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %end.i.i, align 4
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %166, i32 0, i32 8
  %..i = select i1 %cmp110.i, i32 16, i32 1
  %167 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %..i, ptr %gso_type.i, align 8
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.then103.i, %if.end95.i.if.end118.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %vid.1.ph.i)
  %cmp120.not.i = icmp eq i16 %vid.1.ph.i, -1
  br i1 %cmp120.not.i, label %if.end118.i.if.end123.i_crit_edge, label %if.then122.i

if.end118.i.if.end123.i_crit_edge:                ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123.i

if.then122.i:                                     ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #8
  %vlan_proto1.i.i217 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 15, i32 0, i32 9
  %168 = ptrtoint ptr %vlan_proto1.i.i217 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 -32512, ptr %vlan_proto1.i.i217, align 8
  %vlan_tci2.i.i218 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 15, i32 0, i32 10
  %169 = ptrtoint ptr %vlan_tci2.i.i218 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %vid.1.ph.i, ptr %vlan_tci2.i.i218, align 2
  %vlan_present.i.i219 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 15, i32 0, i32 3
  %170 = ptrtoint ptr %vlan_present.i.i219 to i32
  call void @__asan_loadN_noabort(i32 %170, i32 4)
  %bf.load.i211.i = load i32, ptr %vlan_present.i.i219, align 2
  %bf.set.i212.i = or i32 %bf.load.i211.i, -2147483648
  store i32 %bf.set.i212.i, ptr %vlan_present.i.i219, align 2
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then122.i, %if.end118.i.if.end123.i_crit_edge
  %call124.i = tail call i32 @netif_receive_skb(ptr noundef nonnull %108) #6
  %171 = ptrtoint ptr %lro_pkts.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %lro_pkts.i, align 8
  %inc126.i = add i64 %172, 1
  store i64 %inc126.i, ptr %lro_pkts.i, align 8
  %conv100.mask.i = and i32 %157, 65535
  %conv127.i = zext i32 %conv100.mask.i to i64
  %173 = ptrtoint ptr %lrobytes.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %lrobytes.i, align 8
  %add129.i = add i64 %174, %conv127.i
  store i64 %add129.i, ptr %lrobytes.i, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @qlcnic_handle_fw_message(i32 noundef %conv, i32 noundef %consumer.0233, ptr noundef %sds_ring)
  br label %skip

sw.epilog:                                        ; preds = %if.end123.i, %if.then61.i, %qlcnic_process_rxbuf.exit.i197.sw.epilog_crit_edge, %qlcnic_process_rxbuf.exit.thread.i180, %if.end.i174.sw.epilog_crit_edge, %sw.bb12.sw.epilog_crit_edge, %if.end61.i, %if.then54.i, %qlcnic_process_rxbuf.exit.i.sw.epilog_crit_edge, %qlcnic_process_rxbuf.exit.thread.i, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %rxbuf.0 = phi ptr [ %arrayidx16.i, %if.then54.i ], [ %arrayidx16.i, %if.end61.i ], [ null, %sw.bb.sw.epilog_crit_edge ], [ null, %if.end.i.sw.epilog_crit_edge ], [ %arrayidx16.i, %qlcnic_process_rxbuf.exit.i.sw.epilog_crit_edge ], [ %arrayidx16.i, %qlcnic_process_rxbuf.exit.thread.i ], [ %arrayidx16.i176, %if.then61.i ], [ %arrayidx16.i176, %if.end123.i ], [ null, %sw.bb12.sw.epilog_crit_edge ], [ null, %if.end.i174.sw.epilog_crit_edge ], [ %arrayidx16.i176, %qlcnic_process_rxbuf.exit.i197.sw.epilog_crit_edge ], [ %arrayidx16.i176, %qlcnic_process_rxbuf.exit.thread.i180 ]
  %ring.0 = phi i8 [ %conv10, %if.then54.i ], [ %conv10, %if.end61.i ], [ %conv10, %sw.bb.sw.epilog_crit_edge ], [ %conv10, %if.end.i.sw.epilog_crit_edge ], [ %conv10, %qlcnic_process_rxbuf.exit.i.sw.epilog_crit_edge ], [ %conv10, %qlcnic_process_rxbuf.exit.thread.i ], [ %conv15, %if.then61.i ], [ %conv15, %if.end123.i ], [ %conv15, %sw.bb12.sw.epilog_crit_edge ], [ %conv15, %if.end.i174.sw.epilog_crit_edge ], [ %conv15, %qlcnic_process_rxbuf.exit.i197.sw.epilog_crit_edge ], [ %conv15, %qlcnic_process_rxbuf.exit.thread.i180 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv)
  %cmp21 = icmp ugt i32 %conv, 1
  br i1 %cmp21, label %do.end, label %sw.epilog.if.end37_crit_edge, !prof !60

sw.epilog.if.end37_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1397, i32 noundef 9, ptr noundef null) #6
  br label %if.end37

if.end37:                                         ; preds = %do.end, %sw.epilog.if.end37_crit_edge
  %tobool44.not = icmp eq ptr %rxbuf.0, null
  br i1 %tobool44.not, label %if.else, label %if.then51, !prof !60

if.then51:                                        ; preds = %if.end37
  %list = getelementptr inbounds %struct.qlcnic_rx_buffer, ptr %rxbuf.0, i32 0, i32 2
  %idxprom = zext i8 %ring.0 to i32
  %arrayidx52 = getelementptr %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 7, i32 %idxprom
  %prev.i = getelementptr %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 7, i32 %idxprom, i32 1
  %175 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %176, ptr noundef %arrayidx52) #6
  br i1 %call.i.i, label %if.end.i.i221, label %if.then51.skip_crit_edge

if.then51.skip_crit_edge:                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip

if.end.i.i221:                                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %177 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %list, ptr %prev.i, align 4
  %178 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %arrayidx52, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.qlcnic_rx_buffer, ptr %rxbuf.0, i32 0, i32 2, i32 1
  %179 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %176, ptr %prev3.i.i, align 4
  %180 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile ptr %list, ptr %176, align 4
  br label %skip

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %181 = ptrtoint ptr %null_rxbuf to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %null_rxbuf, align 8
  %inc = add i64 %182, 1
  store i64 %inc, ptr %null_rxbuf, align 8
  br label %skip

skip:                                             ; preds = %if.else, %if.end.i.i221, %if.then51.skip_crit_edge, %sw.bb20, %if.end.skip_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp54228.not = icmp eq i32 %conv, 0
  br i1 %cmp54228.not, label %skip.for.end_crit_edge, label %for.body

skip.for.end_crit_edge:                           ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %skip
  %183 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %desc_head, align 16
  %arrayidx57 = getelementptr %struct.status_desc, ptr %184, i32 %consumer.0233
  %185 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 2, ptr %arrayidx57, align 16
  %add = add i32 %consumer.0233, 1
  %186 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %num_desc, align 4
  %sub = add i32 %187, -1
  %and60 = and i32 %sub, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv)
  %cmp54 = icmp ugt i32 %conv, 1
  br i1 %cmp54, label %for.body.1, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %188 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %desc_head, align 16
  %arrayidx57.1 = getelementptr %struct.status_desc, ptr %189, i32 %and60
  %190 = ptrtoint ptr %arrayidx57.1 to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 2, ptr %arrayidx57.1, align 16
  %add.1 = add i32 %and60, 1
  %191 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %num_desc, align 4
  %sub.1 = add i32 %192, -1
  %and60.1 = and i32 %sub.1, %add.1
  %193 = add nsw i32 %conv, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %193)
  %cmp54.1 = icmp ult i32 %193, -2
  br i1 %cmp54.1, label %for.body.2, label %for.body.1.for.end_crit_edge

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %194 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %desc_head, align 16
  %arrayidx57.2 = getelementptr %struct.status_desc, ptr %195, i32 %and60.1
  %196 = ptrtoint ptr %arrayidx57.2 to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 2, ptr %arrayidx57.2, align 16
  %add.2 = add i32 %and60.1, 1
  %197 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %num_desc, align 4
  %sub.2 = add i32 %198, -1
  %and60.2 = and i32 %sub.2, %add.2
  %199 = and i32 %9, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %199)
  %cmp54.2.not = icmp eq i32 %199, 2
  br i1 %cmp54.2.not, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %200 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %desc_head, align 16
  %arrayidx57.3 = getelementptr %struct.status_desc, ptr %201, i32 %and60.2
  %202 = ptrtoint ptr %arrayidx57.3 to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 2, ptr %arrayidx57.3, align 16
  %add.3 = add i32 %and60.2, 1
  %203 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %num_desc, align 4
  %sub.3 = add i32 %204, -1
  %and60.3 = and i32 %sub.3, %add.3
  %205 = add nsw i32 %conv, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %205)
  %cmp54.3 = icmp ult i32 %205, -2
  br i1 %cmp54.3, label %for.body.4, label %for.body.3.for.end_crit_edge

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %206 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %desc_head, align 16
  %arrayidx57.4 = getelementptr %struct.status_desc, ptr %207, i32 %and60.3
  %208 = ptrtoint ptr %arrayidx57.4 to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 2, ptr %arrayidx57.4, align 16
  %add.4 = add i32 %and60.3, 1
  %209 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %num_desc, align 4
  %sub.4 = add i32 %210, -1
  %and60.4 = and i32 %sub.4, %add.4
  %211 = and i32 %9, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %211)
  %cmp54.4.not = icmp eq i32 %211, 4
  br i1 %cmp54.4.not, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  %212 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %desc_head, align 16
  %arrayidx57.5 = getelementptr %struct.status_desc, ptr %213, i32 %and60.4
  %214 = ptrtoint ptr %arrayidx57.5 to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 2, ptr %arrayidx57.5, align 16
  %add.5 = add i32 %and60.4, 1
  %215 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %num_desc, align 4
  %sub.5 = add i32 %216, -1
  %and60.5 = and i32 %sub.5, %add.5
  %217 = add nsw i32 %conv, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %217)
  %cmp54.5 = icmp ult i32 %217, -2
  br i1 %cmp54.5, label %for.body.6, label %for.body.5.for.end_crit_edge

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #8
  %218 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %desc_head, align 16
  %arrayidx57.6 = getelementptr %struct.status_desc, ptr %219, i32 %and60.5
  %220 = ptrtoint ptr %arrayidx57.6 to i32
  call void @__asan_store8_noabort(i32 %220)
  store i64 2, ptr %arrayidx57.6, align 16
  %add.6 = add i32 %and60.5, 1
  %221 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %num_desc, align 4
  %sub.6 = add i32 %222, -1
  %and60.6 = and i32 %sub.6, %add.6
  br label %for.end

for.end:                                          ; preds = %for.body.6, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %skip.for.end_crit_edge
  %consumer.1.lcssa = phi i32 [ %consumer.0233, %skip.for.end_crit_edge ], [ %and60, %for.body.for.end_crit_edge ], [ %and60.1, %for.body.1.for.end_crit_edge ], [ %and60.2, %for.body.2.for.end_crit_edge ], [ %and60.3, %for.body.3.for.end_crit_edge ], [ %and60.4, %for.body.4.for.end_crit_edge ], [ %and60.5, %for.body.5.for.end_crit_edge ], [ %and60.6, %for.body.6 ]
  %inc61 = add nuw nsw i32 %count.0232, 1
  %exitcond.not = icmp eq i32 %inc61, %max
  br i1 %exitcond.not, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %count.0232, %while.body.while.end_crit_edge ], [ %max, %for.end.while.end_crit_edge ]
  %consumer.0.lcssa = phi i32 [ %3, %entry.while.end_crit_edge ], [ %consumer.0233, %while.body.while.end_crit_edge ], [ %consumer.1.lcssa, %for.end.while.end_crit_edge ]
  %max_rds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 12
  %223 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %max_rds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %cmp65241.not = icmp eq i8 %224, 0
  br i1 %cmp65241.not, label %while.end.for.end101_crit_edge, label %for.body67.lr.ph

while.end.for.end101_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end101

for.body67.lr.ph:                                 ; preds = %while.end
  %recv_ctx = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 1
  br label %for.body67

for.body67:                                       ; preds = %if.end98.for.body67_crit_edge, %for.body67.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body67.lr.ph ], [ %indvars.iv.next, %if.end98.for.body67_crit_edge ]
  %225 = ptrtoint ptr %recv_ctx to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %recv_ctx, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %226, align 4
  %arrayidx69 = getelementptr %struct.qlcnic_host_rds_ring, ptr %228, i32 %indvars.iv
  %arrayidx72 = getelementptr %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 7, i32 %indvars.iv
  %229 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load volatile ptr, ptr %arrayidx72, align 4
  %cmp.i.not = icmp eq ptr %230, %arrayidx72
  br i1 %cmp.i.not, label %for.body67.if.end98_crit_edge, label %for.cond79.preheader

for.body67.if.end98_crit_edge:                    ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

for.cond79.preheader:                             ; preds = %for.body67
  %231 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %231)
  %cur.0238 = load ptr, ptr %arrayidx72, align 4
  %cmp.i223.not239 = icmp eq ptr %cur.0238, %arrayidx72
  br i1 %cmp.i223.not239, label %for.cond79.preheader.for.end92_crit_edge, label %for.cond79.preheader.for.body87_crit_edge

for.cond79.preheader.for.body87_crit_edge:        ; preds = %for.cond79.preheader
  br label %for.body87

for.cond79.preheader.for.end92_crit_edge:         ; preds = %for.cond79.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end92

for.body87:                                       ; preds = %for.body87.for.body87_crit_edge, %for.cond79.preheader.for.body87_crit_edge
  %cur.0240 = phi ptr [ %cur.0, %for.body87.for.body87_crit_edge ], [ %cur.0238, %for.cond79.preheader.for.body87_crit_edge ]
  %add.ptr = getelementptr i8, ptr %cur.0240, i32 -8
  %call89 = tail call fastcc i32 @qlcnic_alloc_rx_skb(ptr noundef %1, ptr noundef %arrayidx69, ptr noundef %add.ptr)
  %232 = ptrtoint ptr %cur.0240 to i32
  call void @__asan_load4_noabort(i32 %232)
  %cur.0 = load ptr, ptr %cur.0240, align 4
  %cmp.i223.not = icmp eq ptr %cur.0, %arrayidx72
  br i1 %cmp.i223.not, label %for.body87.for.end92_crit_edge, label %for.body87.for.body87_crit_edge

for.body87.for.body87_crit_edge:                  ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body87

for.body87.for.end92_crit_edge:                   ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end92

for.end92:                                        ; preds = %for.body87.for.end92_crit_edge, %for.cond79.preheader.for.end92_crit_edge
  %lock = getelementptr %struct.qlcnic_host_rds_ring, ptr %228, i32 %indvars.iv, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %233 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load volatile ptr, ptr %arrayidx72, align 4
  %cmp.i.not.i = icmp eq ptr %234, %arrayidx72
  br i1 %cmp.i.not.i, label %for.end92.list_splice_tail_init.exit_crit_edge, label %if.then.i

for.end92.list_splice_tail_init.exit_crit_edge:   ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #8
  %free_list96 = getelementptr %struct.qlcnic_host_rds_ring, ptr %228, i32 %indvars.iv, i32 8
  %prev.i225 = getelementptr %struct.qlcnic_host_rds_ring, ptr %228, i32 %indvars.iv, i32 8, i32 1
  %235 = ptrtoint ptr %prev.i225 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %prev.i225, align 4
  %prev2.i.i = getelementptr %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 7, i32 %indvars.iv, i32 1
  %237 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i226 = getelementptr inbounds %struct.list_head, ptr %234, i32 0, i32 1
  %239 = ptrtoint ptr %prev3.i.i226 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %236, ptr %prev3.i.i226, align 4
  %240 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %234, ptr %236, align 4
  %241 = ptrtoint ptr %238 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %free_list96, ptr %238, align 4
  store ptr %238, ptr %prev.i225, align 4
  %242 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %242)
  store volatile ptr %arrayidx72, ptr %arrayidx72, align 4
  store ptr %arrayidx72, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %for.end92.list_splice_tail_init.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %if.end98

if.end98:                                         ; preds = %list_splice_tail_init.exit, %for.body67.if.end98_crit_edge
  %243 = trunc i32 %indvars.iv to i8
  tail call fastcc void @qlcnic_post_rx_buffers_nodb(ptr noundef %1, ptr noundef %arrayidx69, i8 noundef zeroext %243)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %244 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %max_rds_rings, align 2
  %246 = zext i8 %245 to i32
  %cmp65 = icmp ult i32 %indvars.iv.next, %246
  br i1 %cmp65, label %if.end98.for.body67_crit_edge, label %if.end98.for.end101_crit_edge

if.end98.for.end101_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end101

if.end98.for.body67_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body67

for.end101:                                       ; preds = %if.end98.for.end101_crit_edge, %while.end.for.end101_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa)
  %tobool102.not = icmp eq i32 %count.0.lcssa, 0
  br i1 %tobool102.not, label %for.end101.if.end108_crit_edge, label %if.then103

for.end101.if.end108_crit_edge:                   ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.then103:                                       ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #8
  %247 = ptrtoint ptr %sds_ring to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %consumer.0.lcssa, ptr %sds_ring, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %248 = tail call i32 @llvm.bswap.i32(i32 %consumer.0.lcssa)
  %crb_sts_consumer = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 2
  %249 = ptrtoint ptr %crb_sts_consumer to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %crb_sts_consumer, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 %248) #6, !srcloc !69
  br label %if.end108

if.end108:                                        ; preds = %if.then103, %for.end101.if.end108_crit_edge
  ret i32 %count.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_post_rx_buffers_nodb(ptr nocapture noundef %adapter, ptr noundef %rds_ring, i8 noundef zeroext %ring_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.qlcnic_host_rds_ring, ptr %rds_ring, i32 0, i32 9
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %producer1 = getelementptr inbounds %struct.qlcnic_host_rds_ring, ptr %rds_ring, i32 0, i32 4
  %0 = ptrtoint ptr %producer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %producer1, align 16
  %free_list = getelementptr inbounds %struct.qlcnic_host_rds_ring, ptr %rds_ring, i32 0, i32 8
  %2 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not49 = icmp eq ptr %3, %free_list
  br i1 %cmp.i.not49, label %if.end.if.end19_crit_edge, label %while.body.lr.ph

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

while.body.lr.ph:                                 ; preds = %if.end
  %desc_head = getelementptr inbounds %struct.qlcnic_host_rds_ring, ptr %rds_ring, i32 0, i32 1
  %pdev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %conv15.i = zext i8 %ring_id to i16
  %shl6.i = shl i16 %conv15.i, 15
  %dma_size = getelementptr inbounds %struct.qlcnic_host_rds_ring, ptr %rds_ring, i32 0, i32 5
  %num_desc = getelementptr inbounds %struct.qlcnic_host_rds_ring, ptr %rds_ring, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %qlcnic_get_ref_handle.exit.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %3, %while.body.lr.ph ], [ %39, %qlcnic_get_ref_handle.exit.while.body_crit_edge ]
  %producer.052 = phi i32 [ %1, %while.body.lr.ph ], [ %and, %qlcnic_get_ref_handle.exit.while.body_crit_edge ]
  %count.050 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %qlcnic_get_ref_handle.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %4, i32 -8
  %skb = getelementptr i8, ptr %4, i32 -4
  %5 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skb, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.then5, label %while.body.if.end10_crit_edge

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then5:                                         ; preds = %while.body
  %call6 = tail call fastcc i32 @qlcnic_alloc_rx_skb(ptr noundef %adapter, ptr noundef %rds_ring, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then5.while.end_crit_edge

if.then5.while.end_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %while.body.if.end10_crit_edge
  %inc = add i32 %count.050, 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_del.exit_crit_edge

if.end10.list_del.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end10.list_del.exit_crit_edge
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %15 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc_head, align 4
  %arrayidx = getelementptr %struct.rcv_desc, ptr %16, i32 %producer.052
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr, align 8
  %19 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %device1.i.i, align 2
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %22, label %list_del.exit.qlcnic_get_ref_handle.exit_crit_edge [
    i16 -32720, label %list_del.exit._crit_edge
    i16 -30672, label %list_del.exit._crit_edge60
    i16 -32704, label %list_del.exit._crit_edge61
    i16 -31680, label %list_del.exit._crit_edge62
    i16 -31696, label %list_del.exit._crit_edge63
    i16 -29648, label %list_del.exit._crit_edge64
  ]

list_del.exit._crit_edge64:                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %24

list_del.exit._crit_edge63:                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %24

list_del.exit._crit_edge62:                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %24

list_del.exit._crit_edge61:                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %24

list_del.exit._crit_edge60:                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %24

list_del.exit._crit_edge:                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %24

list_del.exit.qlcnic_get_ref_handle.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_get_ref_handle.exit

24:                                               ; preds = %list_del.exit._crit_edge, %list_del.exit._crit_edge60, %list_del.exit._crit_edge61, %list_del.exit._crit_edge62, %list_del.exit._crit_edge63, %list_del.exit._crit_edge64
  %or7.i = or i16 %18, %shl6.i
  br label %qlcnic_get_ref_handle.exit

qlcnic_get_ref_handle.exit:                       ; preds = %24, %list_del.exit.qlcnic_get_ref_handle.exit_crit_edge
  %25 = phi i16 [ %or7.i, %24 ], [ %18, %list_del.exit.qlcnic_get_ref_handle.exit_crit_edge ]
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %arrayidx, align 1
  %28 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_size, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %buffer_length = getelementptr %struct.rcv_desc, ptr %16, i32 %producer.052, i32 2
  %31 = ptrtoint ptr %buffer_length to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %buffer_length, align 1
  %dma = getelementptr i8, ptr %4, i32 8
  %32 = ptrtoint ptr %dma to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %dma, align 8
  %34 = tail call i64 @llvm.bswap.i64(i64 %33)
  %addr_buffer = getelementptr %struct.rcv_desc, ptr %16, i32 %producer.052, i32 3
  %35 = ptrtoint ptr %addr_buffer to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %34, ptr %addr_buffer, align 1
  %add = add i32 %producer.052, 1
  %36 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_desc, align 4
  %sub = add i32 %37, -1
  %and = and i32 %sub, %add
  %38 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not = icmp eq ptr %39, %free_list
  br i1 %cmp.i.not, label %qlcnic_get_ref_handle.exit.while.end_crit_edge, label %qlcnic_get_ref_handle.exit.while.body_crit_edge

qlcnic_get_ref_handle.exit.while.body_crit_edge:  ; preds = %qlcnic_get_ref_handle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

qlcnic_get_ref_handle.exit.while.end_crit_edge:   ; preds = %qlcnic_get_ref_handle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %qlcnic_get_ref_handle.exit.while.end_crit_edge, %if.then5.while.end_crit_edge
  %count.0.lcssa = phi i32 [ %inc, %qlcnic_get_ref_handle.exit.while.end_crit_edge ], [ %count.050, %if.then5.while.end_crit_edge ]
  %producer.0.lcssa = phi i32 [ %and, %qlcnic_get_ref_handle.exit.while.end_crit_edge ], [ %producer.052, %if.then5.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa)
  %tobool12.not = icmp eq i32 %count.0.lcssa, 0
  br i1 %tobool12.not, label %while.end.if.end19_crit_edge, label %if.then13

while.end.if.end19_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then13:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %producer1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %producer.0.lcssa, ptr %producer1, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %sub15 = add i32 %producer.0.lcssa, -1
  %num_desc16 = getelementptr inbounds %struct.qlcnic_host_rds_ring, ptr %rds_ring, i32 0, i32 3
  %41 = ptrtoint ptr %num_desc16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_desc16, align 4
  %sub17 = add i32 %42, -1
  %and18 = and i32 %sub17, %sub15
  %43 = tail call i32 @llvm.bswap.i32(i32 %and18)
  %44 = ptrtoint ptr %rds_ring to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rds_ring, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #6, !srcloc !69
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %while.end.if.end19_crit_edge, %if.end.if.end19_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_add_lb_filter(ptr noundef %adapter, ptr nocapture noundef readonly %skb, i32 noundef %loopback_pkt, i16 noundef zeroext %vlan_id) unnamed_addr #0 align 64 {
entry:
  %src_addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_addr) #6
  %2 = ptrtoint ptr %src_addr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %src_addr, align 8
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  %op_mode.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %4, i32 0, i32 30
  %5 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %op_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %6)
  %cmp.i = icmp ne i16 %6, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %vlan_id)
  %cmp = icmp eq i16 %vlan_id, -1
  %or.cond = or i1 %cmp, %cmp.i
  %vlan_id.addr.0 = select i1 %or.cond, i16 0, i16 %vlan_id
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 1
  %7 = call ptr @memcpy(ptr %src_addr, ptr %h_source, i32 6)
  %8 = ptrtoint ptr %src_addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %src_addr, align 8
  %shr.i = lshr i64 %9, 40
  %and7.i = xor i64 %shr.i, %9
  %10 = zext i16 %vlan_id.addr.0 to i64
  %xor4.i = xor i64 %and7.i, %10
  %conv5.i = trunc i64 %xor4.i to i8
  %fbucket_size = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 56, i32 3
  %11 = ptrtoint ptr %fbucket_size to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fbucket_size, align 8
  %conv4 = trunc i16 %12 to i8
  %sub = add i8 %conv4, -1
  %and = and i8 %sub, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loopback_pkt)
  %tobool.not = icmp eq i32 %loopback_pkt, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %entry
  %fnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 57, i32 1
  %13 = ptrtoint ptr %fnum to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fnum, align 4
  %fmax = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 57, i32 2
  %15 = ptrtoint ptr %fmax to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %fmax, align 2
  %17 = zext i8 %14 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %17)
  %cmp10.not = icmp ugt i16 %16, %17
  br i1 %cmp10.not, label %if.end13, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.then6
  %rx_fhash = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 57
  %18 = ptrtoint ptr %rx_fhash to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_fhash, align 4
  %idxprom = zext i8 %and to i32
  %arrayidx = getelementptr %struct.hlist_head, ptr %19, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool2.not27.i = icmp eq ptr %21, null
  br i1 %tobool2.not27.i, label %if.end13.if.end24_crit_edge, label %land.rhs.lr.ph.i

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.rhs.lr.ph.i:                                 ; preds = %if.end13
  %22 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_addr, align 8
  %add.ptr1.i.i = getelementptr inbounds i8, ptr %src_addr, i32 4
  %24 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr1.i.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %tmp_fil.028.i = phi ptr [ %21, %land.rhs.lr.ph.i ], [ %27, %for.inc.i.land.rhs.i_crit_edge ]
  %26 = ptrtoint ptr %tmp_fil.028.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tmp_fil.028.i, align 4
  %faddr.i = getelementptr inbounds %struct.qlcnic_filter, ptr %tmp_fil.028.i, i32 0, i32 1
  %28 = ptrtoint ptr %faddr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %faddr.i, align 4
  %xor.i.i = xor i32 %29, %23
  %add.ptr.i.i = getelementptr %struct.qlcnic_filter, ptr %tmp_fil.028.i, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %31, %25
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %land.rhs.i
  %vlan_id5.i = getelementptr inbounds %struct.qlcnic_filter, ptr %tmp_fil.028.i, i32 0, i32 2
  %32 = ptrtoint ptr %vlan_id5.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vlan_id5.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %vlan_id.addr.0)
  %cmp.i114 = icmp eq i16 %33, %vlan_id.addr.0
  br i1 %cmp.i114, label %if.then17, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge
  %tobool2.not.i = icmp eq ptr %27, null
  br i1 %tobool2.not.i, label %for.inc.i.if.end24_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

for.inc.i.if.end24_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then17:                                        ; preds = %land.lhs.true.i
  %ftime = getelementptr inbounds %struct.qlcnic_filter, ptr %tmp_fil.028.i, i32 0, i32 3
  %34 = ptrtoint ptr %ftime to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ftime, align 4
  %add = add i32 %35, 2000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub18 = sub i32 %add, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18)
  %cmp19 = icmp slt i32 %sub18, 0
  br i1 %cmp19, label %if.then21, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %38 = ptrtoint ptr %ftime to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ftime, align 4
  br label %cleanup

if.end24:                                         ; preds = %for.inc.i.if.end24_crit_edge, %if.end13.if.end24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 2848, i32 noundef 20) #9
  %tobool26.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %ftime29 = getelementptr inbounds %struct.qlcnic_filter, ptr %call7.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %ftime29 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %ftime29, align 8
  %faddr = getelementptr inbounds %struct.qlcnic_filter, ptr %call7.i.i, i32 0, i32 1
  %42 = call ptr @memcpy(ptr %faddr, ptr %src_addr, i32 6)
  %vlan_id31 = getelementptr inbounds %struct.qlcnic_filter, ptr %call7.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %vlan_id31 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %vlan_id.addr.0, ptr %vlan_id31, align 2
  %rx_mac_learn_lock = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 60
  tail call void @_raw_spin_lock(ptr noundef %rx_mac_learn_lock) #6
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %45, ptr %call7.i.i, align 8
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %if.end28.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end28.hlist_add_head.exit_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call7.i.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end28.hlist_add_head.exit_crit_edge
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %call7.i.i, ptr %arrayidx, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %arrayidx, ptr %pprev34.i, align 4
  %50 = ptrtoint ptr %fnum to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %fnum, align 4
  %inc = add i8 %51, 1
  store i8 %inc, ptr %fnum, align 4
  tail call void @_raw_spin_unlock(ptr noundef %rx_mac_learn_lock) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %fhash = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 56
  %52 = ptrtoint ptr %fhash to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fhash, align 8
  %idxprom37 = zext i8 %and to i32
  %arrayidx38 = getelementptr %struct.hlist_head, ptr %53, i32 %idxprom37
  %mac_learn_lock = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 59
  tail call void @_raw_spin_lock(ptr noundef %mac_learn_lock) #6
  %54 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx38, align 4
  %tobool2.not27.i115 = icmp eq ptr %55, null
  br i1 %tobool2.not27.i115, label %if.else.if.end53_crit_edge, label %land.rhs.lr.ph.i117

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

land.rhs.lr.ph.i117:                              ; preds = %if.else
  %56 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %src_addr, align 8
  %add.ptr1.i.i116 = getelementptr inbounds i8, ptr %src_addr, i32 4
  %58 = ptrtoint ptr %add.ptr1.i.i116 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr1.i.i116, align 4
  br label %land.rhs.i126

land.rhs.i126:                                    ; preds = %for.inc.i131.land.rhs.i126_crit_edge, %land.rhs.lr.ph.i117
  %tmp_fil.028.i118 = phi ptr [ %55, %land.rhs.lr.ph.i117 ], [ %61, %for.inc.i131.land.rhs.i126_crit_edge ]
  %60 = ptrtoint ptr %tmp_fil.028.i118 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tmp_fil.028.i118, align 4
  %faddr.i119 = getelementptr inbounds %struct.qlcnic_filter, ptr %tmp_fil.028.i118, i32 0, i32 1
  %62 = ptrtoint ptr %faddr.i119 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %faddr.i119, align 4
  %xor.i.i120 = xor i32 %63, %57
  %add.ptr.i.i121 = getelementptr %struct.qlcnic_filter, ptr %tmp_fil.028.i118, i32 0, i32 1, i32 4
  %64 = ptrtoint ptr %add.ptr.i.i121 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %add.ptr.i.i121, align 2
  %xor37.i.i122 = xor i16 %65, %59
  %xor3.i.i123 = zext i16 %xor37.i.i122 to i32
  %or.i.i124 = or i32 %xor.i.i120, %xor3.i.i123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i124)
  %cmp.i.i125 = icmp eq i32 %or.i.i124, 0
  br i1 %cmp.i.i125, label %land.lhs.true.i129, label %land.rhs.i126.for.inc.i131_crit_edge

land.rhs.i126.for.inc.i131_crit_edge:             ; preds = %land.rhs.i126
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i131

land.lhs.true.i129:                               ; preds = %land.rhs.i126
  %vlan_id5.i127 = getelementptr inbounds %struct.qlcnic_filter, ptr %tmp_fil.028.i118, i32 0, i32 2
  %66 = ptrtoint ptr %vlan_id5.i127 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vlan_id5.i127, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %67, i16 %vlan_id.addr.0)
  %cmp.i128 = icmp eq i16 %67, %vlan_id.addr.0
  br i1 %cmp.i128, label %if.then41, label %land.lhs.true.i129.for.inc.i131_crit_edge

land.lhs.true.i129.for.inc.i131_crit_edge:        ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i131

for.inc.i131:                                     ; preds = %land.lhs.true.i129.for.inc.i131_crit_edge, %land.rhs.i126.for.inc.i131_crit_edge
  %tobool2.not.i130 = icmp eq ptr %61, null
  br i1 %tobool2.not.i130, label %for.inc.i131.if.end53_crit_edge, label %for.inc.i131.land.rhs.i126_crit_edge

for.inc.i131.land.rhs.i126_crit_edge:             ; preds = %for.inc.i131
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i126

for.inc.i131.if.end53_crit_edge:                  ; preds = %for.inc.i131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then41:                                        ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan_id.addr.0)
  %tobool43.not = icmp eq i16 %vlan_id.addr.0, 0
  %conv44 = select i1 %tobool43.not, i8 2, i8 4
  %68 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %69, i32 0, i32 46
  %70 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw_ops.i, align 4
  %change_macvlan.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %71, i32 0, i32 23
  %72 = ptrtoint ptr %change_macvlan.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %change_macvlan.i, align 4
  %call.i = call i32 %73(ptr noundef %adapter, ptr noundef nonnull %src_addr, i16 noundef zeroext %vlan_id.addr.0, i8 noundef zeroext %conv44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool46.not = icmp eq i32 %call.i, 0
  br i1 %tobool46.not, label %if.then47, label %if.then41.if.end51_crit_edge

if.then41.if.end51_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then47:                                        ; preds = %if.then41
  %74 = ptrtoint ptr %tmp_fil.028.i118 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tmp_fil.028.i118, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %tmp_fil.028.i118, i32 0, i32 1
  %76 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pprev2.i.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %75, ptr %77, align 4
  %tobool.not.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i, label %if.then47.hlist_del.exit_crit_edge, label %do.body13.i.i

if.then47.hlist_del.exit_crit_edge:               ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %75, i32 0, i32 1
  %79 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %77, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.then47.hlist_del.exit_crit_edge
  %80 = ptrtoint ptr %tmp_fil.028.i118 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp_fil.028.i118, align 4
  %81 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %fnum50 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 56, i32 1
  %82 = ptrtoint ptr %fnum50 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %fnum50, align 4
  %dec = add i8 %83, -1
  store i8 %dec, ptr %fnum50, align 4
  br label %if.end51

if.end51:                                         ; preds = %hlist_del.exit, %if.then41.if.end51_crit_edge
  call void @_raw_spin_unlock(ptr noundef %mac_learn_lock) #6
  br label %cleanup

if.end53:                                         ; preds = %for.inc.i131.if.end53_crit_edge, %if.else.if.end53_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mac_learn_lock) #6
  %rx_fhash55 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 57
  %84 = ptrtoint ptr %rx_fhash55 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rx_fhash55, align 4
  %arrayidx58 = getelementptr %struct.hlist_head, ptr %85, i32 %idxprom37
  %rx_mac_learn_lock59 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 60
  tail call void @_raw_spin_lock(ptr noundef %rx_mac_learn_lock59) #6
  %86 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx58, align 4
  %tobool2.not27.i134 = icmp eq ptr %87, null
  br i1 %tobool2.not27.i134, label %if.end53.if.end63_crit_edge, label %land.rhs.lr.ph.i136

if.end53.if.end63_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

land.rhs.lr.ph.i136:                              ; preds = %if.end53
  %88 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %src_addr, align 8
  %add.ptr1.i.i135 = getelementptr inbounds i8, ptr %src_addr, i32 4
  %90 = ptrtoint ptr %add.ptr1.i.i135 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %add.ptr1.i.i135, align 4
  br label %land.rhs.i145

land.rhs.i145:                                    ; preds = %for.inc.i150.land.rhs.i145_crit_edge, %land.rhs.lr.ph.i136
  %tmp_fil.028.i137 = phi ptr [ %87, %land.rhs.lr.ph.i136 ], [ %93, %for.inc.i150.land.rhs.i145_crit_edge ]
  %92 = ptrtoint ptr %tmp_fil.028.i137 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tmp_fil.028.i137, align 4
  %faddr.i138 = getelementptr inbounds %struct.qlcnic_filter, ptr %tmp_fil.028.i137, i32 0, i32 1
  %94 = ptrtoint ptr %faddr.i138 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %faddr.i138, align 4
  %xor.i.i139 = xor i32 %95, %89
  %add.ptr.i.i140 = getelementptr %struct.qlcnic_filter, ptr %tmp_fil.028.i137, i32 0, i32 1, i32 4
  %96 = ptrtoint ptr %add.ptr.i.i140 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %add.ptr.i.i140, align 2
  %xor37.i.i141 = xor i16 %97, %91
  %xor3.i.i142 = zext i16 %xor37.i.i141 to i32
  %or.i.i143 = or i32 %xor.i.i139, %xor3.i.i142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i143)
  %cmp.i.i144 = icmp eq i32 %or.i.i143, 0
  br i1 %cmp.i.i144, label %land.lhs.true.i148, label %land.rhs.i145.for.inc.i150_crit_edge

land.rhs.i145.for.inc.i150_crit_edge:             ; preds = %land.rhs.i145
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i150

land.lhs.true.i148:                               ; preds = %land.rhs.i145
  %vlan_id5.i146 = getelementptr inbounds %struct.qlcnic_filter, ptr %tmp_fil.028.i137, i32 0, i32 2
  %98 = ptrtoint ptr %vlan_id5.i146 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %vlan_id5.i146, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %99, i16 %vlan_id.addr.0)
  %cmp.i147 = icmp eq i16 %99, %vlan_id.addr.0
  br i1 %cmp.i147, label %if.then62, label %land.lhs.true.i148.for.inc.i150_crit_edge

land.lhs.true.i148.for.inc.i150_crit_edge:        ; preds = %land.lhs.true.i148
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i150

for.inc.i150:                                     ; preds = %land.lhs.true.i148.for.inc.i150_crit_edge, %land.rhs.i145.for.inc.i150_crit_edge
  %tobool2.not.i149 = icmp eq ptr %93, null
  br i1 %tobool2.not.i149, label %for.inc.i150.if.end63_crit_edge, label %for.inc.i150.land.rhs.i145_crit_edge

for.inc.i150.land.rhs.i145_crit_edge:             ; preds = %for.inc.i150
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i145

for.inc.i150.if.end63_crit_edge:                  ; preds = %for.inc.i150
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then62:                                        ; preds = %land.lhs.true.i148
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan_id.addr.0)
  %tobool.not.i153 = icmp eq i16 %vlan_id.addr.0, 0
  %conv1.i = select i1 %tobool.not.i153, i8 1, i8 3
  %100 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %adapter, align 8
  %hw_ops.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %101, i32 0, i32 46
  %102 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw_ops.i.i, align 4
  %change_macvlan.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %103, i32 0, i32 23
  %104 = ptrtoint ptr %change_macvlan.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %change_macvlan.i.i, align 4
  %call.i.i = call i32 %105(ptr noundef %adapter, ptr noundef nonnull %src_addr, i16 noundef zeroext %vlan_id.addr.0, i8 noundef zeroext %conv1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i154 = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i154, label %if.end.i, label %if.then62.if.end63_crit_edge

if.then62.if.end63_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.end.i:                                         ; preds = %if.then62
  %conv6.i = select i1 %tobool.not.i153, i8 2, i8 4
  %106 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %adapter, align 8
  %hw_ops.i20.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %107, i32 0, i32 46
  %108 = ptrtoint ptr %hw_ops.i20.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw_ops.i20.i, align 4
  %change_macvlan.i21.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %109, i32 0, i32 23
  %110 = ptrtoint ptr %change_macvlan.i21.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %change_macvlan.i21.i, align 4
  %call.i22.i = call i32 %111(ptr noundef %adapter, ptr noundef nonnull %src_addr, i16 noundef zeroext %vlan_id.addr.0, i8 noundef zeroext %conv6.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %tobool8.not.i = icmp eq i32 %call.i22.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end.i.if.end63_crit_edge

if.end.i.if.end63_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then9.i:                                       ; preds = %if.end.i
  %112 = ptrtoint ptr %tmp_fil.028.i137 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tmp_fil.028.i137, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %tmp_fil.028.i137, i32 0, i32 1
  %114 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pprev2.i.i.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %113, ptr %115, align 4
  %tobool.not.i.i.i = icmp eq ptr %113, null
  br i1 %tobool.not.i.i.i, label %if.then9.i.hlist_del.exit.i_crit_edge, label %do.body13.i.i.i

if.then9.i.hlist_del.exit.i_crit_edge:            ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_del.exit.i

do.body13.i.i.i:                                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %113, i32 0, i32 1
  %117 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %115, ptr %pprev14.i.i.i, align 4
  br label %hlist_del.exit.i

hlist_del.exit.i:                                 ; preds = %do.body13.i.i.i, %if.then9.i.hlist_del.exit.i_crit_edge
  %118 = ptrtoint ptr %tmp_fil.028.i137 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp_fil.028.i137, align 4
  %119 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %fnum.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 57, i32 1
  %120 = ptrtoint ptr %fnum.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %fnum.i, align 4
  %dec.i = add i8 %121, -1
  store i8 %dec.i, ptr %fnum.i, align 4
  br label %if.end63

if.end63:                                         ; preds = %hlist_del.exit.i, %if.end.i.if.end63_crit_edge, %if.then62.if.end63_crit_edge, %for.inc.i150.if.end63_crit_edge, %if.end53.if.end63_crit_edge
  call void @_raw_spin_unlock(ptr noundef %rx_mac_learn_lock59) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.end51, %hlist_add_head.exit, %if.end24.cleanup_crit_edge, %if.then21, %if.then17.cleanup_crit_edge, %if.then6.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_addr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_process_cmd_ring(ptr nocapture noundef %adapter, ptr noundef %tx_ring, i32 noundef %budget) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %netdev2 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %2 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev2, align 4
  %tx_clean_lock = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 18
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %tx_clean_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sw_consumer3 = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 6
  %4 = ptrtoint ptr %sw_consumer3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sw_consumer3, align 16
  %hw_consumer4 = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 14
  %6 = ptrtoint ptr %hw_consumer4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_consumer4, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %cmd_buf_arr = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %xmit_finished = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 8, i32 3
  %num_desc = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 7
  %smax = call i32 @llvm.smax.i32(i32 %budget, i32 1)
  br label %while.cond

while.cond:                                       ; preds = %if.end21.while.cond_crit_edge, %if.end
  %sw_consumer.0 = phi i32 [ %5, %if.end ], [ %and, %if.end21.while.cond_crit_edge ]
  %count.0 = phi i32 [ 0, %if.end ], [ %inc22, %if.end21.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sw_consumer.0, i32 %10)
  %cmp.not = icmp eq i32 %sw_consumer.0, %10
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %11 = ptrtoint ptr %cmd_buf_arr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd_buf_arr, align 16
  %arrayidx = getelementptr %struct.qlcnic_cmd_buffer, ptr %12, i32 %sw_consumer.0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 8
  %tobool5.not = icmp eq ptr %14, null
  br i1 %tobool5.not, label %while.body.if.end21_crit_edge, label %if.then6

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then6:                                         ; preds = %while.body
  %frag_array = getelementptr %struct.qlcnic_cmd_buffer, ptr %12, i32 %sw_consumer.0, i32 1
  %15 = ptrtoint ptr %frag_array to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %frag_array, align 8
  %conv = trunc i64 %16 to i32
  %length = getelementptr inbounds %struct.qlcnic_skb_frag, ptr %frag_array, i32 0, i32 1
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %length, align 8
  %conv8 = trunc i64 %18 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv, i32 noundef %conv8, i32 noundef 1, i32 noundef 0) #6
  %19 = ptrtoint ptr %frag_array to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %frag_array, align 8
  %frag_count = getelementptr %struct.qlcnic_cmd_buffer, ptr %12, i32 %sw_consumer.0, i32 2
  %20 = ptrtoint ptr %frag_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frag_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp10100 = icmp ugt i32 %21, 1
  br i1 %cmp10100, label %if.then6.for.body_crit_edge, label %if.then6.for.end_crit_edge

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then6.for.body_crit_edge:                      ; preds = %if.then6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then6.for.body_crit_edge
  %frag.0102 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %frag_array, %if.then6.for.body_crit_edge ]
  %i.0101 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.then6.for.body_crit_edge ]
  %incdec.ptr = getelementptr %struct.qlcnic_skb_frag, ptr %frag.0102, i32 1
  %22 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %incdec.ptr, align 8
  %conv14 = trunc i64 %23 to i32
  %length15 = getelementptr %struct.qlcnic_skb_frag, ptr %frag.0102, i32 1, i32 1
  %24 = ptrtoint ptr %length15 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %length15, align 8
  %conv16 = trunc i64 %25 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv14, i32 noundef %conv16, i32 noundef 1, i32 noundef 0) #6
  %26 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %incdec.ptr, align 8
  %inc = add nuw i32 %i.0101, 1
  %27 = ptrtoint ptr %frag_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %frag_count, align 8
  %cmp10 = icmp ult i32 %inc, %28
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then6.for.end_crit_edge
  %29 = ptrtoint ptr %xmit_finished to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %xmit_finished, align 8
  %inc18 = add i64 %30, 1
  store i64 %inc18, ptr %xmit_finished, align 8
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %32, i32 noundef 1) #6
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx, align 8
  br label %if.end21

if.end21:                                         ; preds = %for.end, %while.body.if.end21_crit_edge
  %add = add i32 %sw_consumer.0, 1
  %34 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_desc, align 4
  %sub = add i32 %35, -1
  %and = and i32 %sub, %add
  %inc22 = add nuw nsw i32 %count.0, 1
  %exitcond.not = icmp eq i32 %inc22, %smax
  br i1 %exitcond.not, label %while.end.thread, label %if.end21.while.cond_crit_edge

if.end21.while.cond_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end.thread:                                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %sw_consumer3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and, ptr %sw_consumer3, align 16
  br label %land.lhs.true

while.end:                                        ; preds = %while.cond
  %37 = ptrtoint ptr %sw_consumer3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %10, ptr %sw_consumer3, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %tobool28.not = icmp eq i32 %count.0, 0
  br i1 %tobool28.not, label %while.end.if.end50_crit_edge, label %while.end.land.lhs.true_crit_edge

while.end.land.lhs.true_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

while.end.if.end50_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

land.lhs.true:                                    ; preds = %while.end.land.lhs.true_crit_edge, %while.end.thread
  %sw_consumer.1106 = phi i32 [ %and, %while.end.thread ], [ %10, %while.end.land.lhs.true_crit_edge ]
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %38 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end50_crit_edge, label %do.end

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end:                                           ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !75
  %txq = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 17
  %40 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %txq, align 32
  %state.i96 = getelementptr inbounds %struct.netdev_queue, ptr %41, i32 0, i32 13
  %42 = ptrtoint ptr %state.i96 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %state.i96, align 4
  %and1.i.i97 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i97)
  %tobool.i98.not = icmp eq i32 %and1.i.i97, 0
  br i1 %tobool.i98.not, label %do.end.if.end49_crit_edge, label %land.lhs.true37

do.end.if.end49_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

land.lhs.true37:                                  ; preds = %do.end
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %state.i, align 4
  %46 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %if.then40, label %land.lhs.true37.if.end49_crit_edge

land.lhs.true37.if.end49_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then40:                                        ; preds = %land.lhs.true37
  %producer.i = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 5
  %47 = ptrtoint ptr %producer.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %producer.i, align 4
  %49 = ptrtoint ptr %sw_consumer3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sw_consumer3, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %48)
  %cmp.i = icmp ugt i32 %50, %48
  br i1 %cmp.i, label %if.then40.qlcnic_tx_avail.exit_crit_edge, label %if.else.i, !prof !59

if.then40.qlcnic_tx_avail.exit_crit_edge:         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_tx_avail.exit

if.else.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_desc, align 4
  %add.i = add i32 %52, %50
  br label %qlcnic_tx_avail.exit

qlcnic_tx_avail.exit:                             ; preds = %if.else.i, %if.then40.qlcnic_tx_avail.exit_crit_edge
  %.pn.i = phi i32 [ %add.i, %if.else.i ], [ %50, %if.then40.qlcnic_tx_avail.exit_crit_edge ]
  %retval.0.i = sub i32 %.pn.i, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %retval.0.i)
  %cmp42 = icmp ugt i32 %retval.0.i, 10
  br i1 %cmp42, label %if.then44, label %qlcnic_tx_avail.exit.if.end49_crit_edge

qlcnic_tx_avail.exit.if.end49_crit_edge:          ; preds = %qlcnic_tx_avail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then44:                                        ; preds = %qlcnic_tx_avail.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netif_tx_wake_queue(ptr noundef %41) #6
  %tx_stats46 = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 8
  %53 = ptrtoint ptr %tx_stats46 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %tx_stats46, align 8
  %inc47 = add i64 %54, 1
  store i64 %inc47, ptr %tx_stats46, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %qlcnic_tx_avail.exit.if.end49_crit_edge, %land.lhs.true37.if.end49_crit_edge, %do.end.if.end49_crit_edge
  %tx_timeo_cnt = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 23
  %55 = ptrtoint ptr %tx_timeo_cnt to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %tx_timeo_cnt, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %land.lhs.true.if.end50_crit_edge, %while.end.if.end50_crit_edge
  %sw_consumer.1107 = phi i32 [ %sw_consumer.1106, %if.end49 ], [ %sw_consumer.1106, %land.lhs.true.if.end50_crit_edge ], [ %10, %while.end.if.end50_crit_edge ]
  %56 = ptrtoint ptr %hw_consumer4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw_consumer4, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  call void @__sanitizer_cov_trace_cmp4(i32 %sw_consumer.1107, i32 %60)
  %cmp52 = icmp eq i32 %sw_consumer.1107, %60
  %conv53 = zext i1 %cmp52 to i32
  tail call void @_raw_spin_unlock(ptr noundef %tx_clean_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv53, %if.end50 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_83xx_process_rcv_ring(ptr noundef %sds_ring, i32 noundef %max) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 5
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %2 = ptrtoint ptr %sds_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sds_ring, align 128
  %desc_head = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max)
  %cmp199 = icmp sgt i32 %max, 0
  br i1 %cmp199, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %netdev1.i117 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 3
  %max_rds_rings.i118 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 12
  %recv_ctx2.i120 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 1
  %pdev.i.i136 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %csummed.i.i145 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 44, i32 4
  %rx_pvid.i.i160 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 27
  %flags.i.i164 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 6
  %rx_mac_learn.i169 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 38
  %rxdropped.i173 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 44, i32 2
  %lro_pkts.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 44, i32 6
  %lrobytes.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 44, i32 9
  %encap_rx_csummed.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 44, i32 13
  %napi.i = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 6
  %rx_pkts.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 44, i32 5
  %rxbytes.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 44, i32 7
  %null_rxbuf = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 44, i32 17
  %num_desc = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %skip.while.body_crit_edge, %while.body.lr.ph
  %consumer.0201 = phi i32 [ %3, %while.body.lr.ph ], [ %and25, %skip.while.body_crit_edge ]
  %count.0200 = phi i32 [ 0, %while.body.lr.ph ], [ %inc26, %skip.while.body_crit_edge ]
  %4 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc_head, align 16
  %arrayidx = getelementptr %struct.status_desc, ptr %5, i32 %consumer.0201
  %arrayidx3 = getelementptr [2 x i64], ptr %arrayidx, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx3, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %shr = lshr i64 %8, 42
  %9 = trunc i64 %shr to i32
  %conv = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %while.body
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx, align 16
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %shr10 = lshr i64 %12, 63
  %conv11 = trunc i64 %shr10 to i8
  %13 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %conv, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.end
  %14 = ptrtoint ptr %netdev1.i117 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev1.i117, align 4
  %16 = ptrtoint ptr %max_rds_rings.i118 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %max_rds_rings.i118, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %conv11)
  %cmp.not.i = icmp ugt i8 %17, %conv11
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.if.else_crit_edge, !prof !59

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end.i:                                         ; preds = %sw.bb
  %18 = ptrtoint ptr %recv_ctx2.i120 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %recv_ctx2.i120, align 4
  %20 = trunc i64 %shr10 to i32
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %19, align 4
  %shr.i = lshr i64 %12, 48
  %23 = trunc i64 %shr.i to i32
  %conv7.i = and i32 %23, 32767
  %num_desc.i = getelementptr %struct.qlcnic_host_rds_ring, ptr %22, i32 %20, i32 3
  %24 = ptrtoint ptr %num_desc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_desc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7.i, i32 %25)
  %cmp8.not.i = icmp ult i32 %conv7.i, %25
  br i1 %cmp8.not.i, label %if.end17.i, label %if.end.i.if.else_crit_edge, !prof !59

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end17.i:                                       ; preds = %if.end.i
  %rx_buf_arr.i = getelementptr %struct.qlcnic_host_rds_ring, ptr %22, i32 %20, i32 2
  %26 = ptrtoint ptr %rx_buf_arr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_buf_arr.i, align 8
  %arrayidx18.i = getelementptr %struct.qlcnic_rx_buffer, ptr %27, i32 %conv7.i
  %shr20.i = lshr i64 %12, 32
  %28 = trunc i64 %shr20.i to i32
  %conv22.i = and i32 %28, 16383
  %shr24.i = lshr i64 %8, 39
  %29 = trunc i64 %shr24.i to i3
  %skb1.i.i = getelementptr %struct.qlcnic_rx_buffer, ptr %27, i32 %conv7.i, i32 1
  %30 = ptrtoint ptr %skb1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skb1.i.i, align 4
  %cmp.i.i = icmp eq ptr %31, null
  br i1 %cmp.i.i, label %qlcnic_process_rxbuf.exit.thread.i, label %if.end23.i.i, !prof !60

qlcnic_process_rxbuf.exit.thread.i:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1146, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog

if.end23.i.i:                                     ; preds = %if.end17.i
  %32 = ptrtoint ptr %pdev.i.i136 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i.i136, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %dma.i.i = getelementptr %struct.qlcnic_rx_buffer, ptr %27, i32 %conv7.i, i32 3
  %34 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %dma.i.i, align 8
  %conv.i.i = trunc i64 %35 to i32
  %dma_size.i.i = getelementptr %struct.qlcnic_host_rds_ring, ptr %22, i32 %20, i32 5
  %36 = ptrtoint ptr %dma_size.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_size.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %conv.i.i, i32 noundef %37, i32 noundef 2, i32 noundef 0) #6
  %38 = ptrtoint ptr %skb1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %skb1.i.i, align 4
  %40 = ptrtoint ptr %netdev1.i117 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %netdev1.i117, align 4
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 23
  %42 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %43, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool25.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end23.i.i.qlcnic_process_rxbuf.exit.i_crit_edge, label %land.rhs.i.i, !prof !60

if.end23.i.i.qlcnic_process_rxbuf.exit.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_process_rxbuf.exit.i

land.rhs.i.i:                                     ; preds = %if.end23.i.i
  %44 = zext i3 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.43)
  switch i3 %29, label %land.rhs.i.i.qlcnic_process_rxbuf.exit.i_crit_edge [
    i3 2, label %land.rhs.i.i.if.then38.i.i_crit_edge
    i3 0, label %land.rhs.i.i.if.then38.i.i_crit_edge210
  ]

land.rhs.i.i.if.then38.i.i_crit_edge210:          ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38.i.i

land.rhs.i.i.if.then38.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38.i.i

land.rhs.i.i.qlcnic_process_rxbuf.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_process_rxbuf.exit.i

if.then38.i.i:                                    ; preds = %land.rhs.i.i.if.then38.i.i_crit_edge, %land.rhs.i.i.if.then38.i.i_crit_edge210
  %45 = ptrtoint ptr %csummed.i.i145 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %csummed.i.i145, align 8
  %inc.i.i = add i64 %46, 1
  store i64 %inc.i.i, ptr %csummed.i.i145, align 8
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 15
  %47 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  br label %qlcnic_process_rxbuf.exit.i

qlcnic_process_rxbuf.exit.i:                      ; preds = %if.then38.i.i, %land.rhs.i.i.qlcnic_process_rxbuf.exit.i_crit_edge, %if.end23.i.i.qlcnic_process_rxbuf.exit.i_crit_edge
  %48 = ptrtoint ptr %skb1.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %skb1.i.i, align 4
  %tobool29.not.i = icmp eq ptr %39, null
  br i1 %tobool29.not.i, label %qlcnic_process_rxbuf.exit.i.sw.epilog_crit_edge, label %if.end31.i

qlcnic_process_rxbuf.exit.i.sw.epilog_crit_edge:  ; preds = %qlcnic_process_rxbuf.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end31.i:                                       ; preds = %qlcnic_process_rxbuf.exit.i
  %skb_size.i = getelementptr %struct.qlcnic_host_rds_ring, ptr %22, i32 %20, i32 6
  %49 = ptrtoint ptr %skb_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %skb_size.i, align 8
  %51 = tail call i32 @llvm.umin.i32(i32 %conv22.i, i32 %50) #6
  %call37.i = tail call ptr @skb_put(ptr noundef nonnull %39, i32 noundef %51) #6
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 19
  %52 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i.i, align 4
  %h_vlan_proto.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %h_vlan_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %h_vlan_proto.i.i.i, align 2
  %56 = zext i16 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %55, label %if.end31.i.if.end.i.i_crit_edge [
    i16 -30552, label %if.end31.i.if.then.i.i_crit_edge
    i16 -32512, label %if.end31.i.if.then.i.i_crit_edge211
  ]

if.end31.i.if.then.i.i_crit_edge211:              ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end31.i.if.then.i.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end31.i.if.end.i.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end31.i.if.then.i.i_crit_edge, %if.end31.i.if.then.i.i_crit_edge211
  %h_vlan_TCI.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %53, i32 0, i32 2
  %57 = ptrtoint ptr %h_vlan_TCI.i.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %h_vlan_TCI.i.i.i, align 2
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 4
  %59 = call ptr @memmove(ptr %add.ptr.i.i, ptr %53, i32 12)
  %call2.i.i = tail call ptr @skb_pull(ptr noundef nonnull %39, i32 noundef 4) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end31.i.if.end.i.i_crit_edge
  %vid.0.i = phi i16 [ -1, %if.end31.i.if.end.i.i_crit_edge ], [ %58, %if.then.i.i ]
  %60 = ptrtoint ptr %rx_pvid.i.i160 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %rx_pvid.i.i160, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool3.not.i.i = icmp eq i16 %61, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.qlcnic_check_rx_tagging.exit.i_crit_edge, label %if.end5.i.i

if.end.i.i.qlcnic_check_rx_tagging.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_check_rx_tagging.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %vid.0.i, i16 %61)
  %cmp.i124.i = icmp eq i16 %vid.0.i, %61
  br i1 %cmp.i124.i, label %if.end5.i.i.qlcnic_check_rx_tagging.exit.i_crit_edge, label %if.end10.i.i

if.end5.i.i.qlcnic_check_rx_tagging.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_check_rx_tagging.exit.i

if.end10.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %flags.i.i164 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i.i164, align 8
  %and.i125.i = and i32 %63, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125.i)
  %tobool11.not.i.i = icmp eq i32 %and.i125.i, 0
  %..i.i = select i1 %tobool11.not.i.i, i32 -22, i32 0
  br label %qlcnic_check_rx_tagging.exit.i

qlcnic_check_rx_tagging.exit.i:                   ; preds = %if.end10.i.i, %if.end5.i.i.qlcnic_check_rx_tagging.exit.i_crit_edge, %if.end.i.i.qlcnic_check_rx_tagging.exit.i_crit_edge
  %vid.1.i = phi i16 [ %vid.0.i, %if.end.i.i.qlcnic_check_rx_tagging.exit.i_crit_edge ], [ %vid.0.i, %if.end10.i.i ], [ -1, %if.end5.i.i.qlcnic_check_rx_tagging.exit.i_crit_edge ]
  %retval.0.i126.i = phi i32 [ 0, %if.end.i.i.qlcnic_check_rx_tagging.exit.i_crit_edge ], [ %..i.i, %if.end10.i.i ], [ 0, %if.end5.i.i.qlcnic_check_rx_tagging.exit.i_crit_edge ]
  %64 = ptrtoint ptr %rx_mac_learn.i169 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %rx_mac_learn.i169, align 2, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool40.not.i = icmp eq i8 %65, 0
  br i1 %tobool40.not.i, label %qlcnic_check_rx_tagging.exit.i.if.end44.i_crit_edge, label %if.then41.i

qlcnic_check_rx_tagging.exit.i.if.end44.i_crit_edge: ; preds = %qlcnic_check_rx_tagging.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

if.then41.i:                                      ; preds = %qlcnic_check_rx_tagging.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %retval.0.in.v.i.i = lshr i64 %8, 36
  %retval.0.in.i.i = trunc i64 %retval.0.in.v.i.i to i32
  %retval.0.i127.i = and i32 %retval.0.in.i.i, 1
  tail call fastcc void @qlcnic_add_lb_filter(ptr noundef %1, ptr noundef nonnull %39, i32 noundef %retval.0.i127.i, i16 noundef zeroext %vid.1.i) #6
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then41.i, %qlcnic_check_rx_tagging.exit.i.if.end44.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i126.i)
  %tobool45.not.i = icmp eq i32 %retval.0.i126.i, 0
  br i1 %tobool45.not.i, label %if.end53.i, label %if.then52.i, !prof !59

if.then52.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %rxdropped.i173 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %rxdropped.i173, align 8
  %inc.i = add i64 %67, 1
  store i64 %inc.i, ptr %rxdropped.i173, align 8
  tail call void @consume_skb(ptr noundef nonnull %39) #6
  br label %sw.epilog

if.end53.i:                                       ; preds = %if.end44.i
  %call54.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %39, ptr noundef %15) #6
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 15, i32 0, i32 18
  %68 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %call54.i, ptr %protocol.i, align 8
  %conv.i128136.i = and i64 %8, 127
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv.i128136.i)
  %tobool58.not.i = icmp eq i64 %conv.i128136.i, 0
  br i1 %tobool58.not.i, label %if.end53.i.if.end67.i_crit_edge, label %land.lhs.true.i

if.end53.i.if.end67.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.i

land.lhs.true.i:                                  ; preds = %if.end53.i
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 15
  %69 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %70 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %70)
  %cmp60.i = icmp eq i16 %70, 512
  br i1 %cmp60.i, label %if.then62.i, label %land.lhs.true.i.if.end67.i_crit_edge

land.lhs.true.i.if.end67.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.i

if.then62.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %csum_level.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 15, i32 0, i32 3
  %71 = ptrtoint ptr %csum_level.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %bf.load63.i = load i32, ptr %csum_level.i, align 2
  %bf.clear64.i = and i32 %bf.load63.i, -805306369
  %bf.set.i = or i32 %bf.clear64.i, 268435456
  store i32 %bf.set.i, ptr %csum_level.i, align 2
  %72 = ptrtoint ptr %encap_rx_csummed.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %encap_rx_csummed.i, align 8
  %inc66.i = add i64 %73, 1
  store i64 %inc66.i, ptr %encap_rx_csummed.i, align 8
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then62.i, %land.lhs.true.i.if.end67.i_crit_edge, %if.end53.i.if.end67.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %vid.1.i)
  %cmp69.not.i = icmp eq i16 %vid.1.i, -1
  br i1 %cmp69.not.i, label %if.end67.i.if.end72.i_crit_edge, label %if.then71.i

if.end67.i.if.end72.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72.i

if.then71.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 15, i32 0, i32 9
  %74 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 15, i32 0, i32 10
  %75 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %vid.1.i, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 15, i32 0, i32 3
  %76 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %bf.load.i129.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i130.i = or i32 %bf.load.i129.i, -2147483648
  store i32 %bf.set.i130.i, ptr %vlan_present.i.i, align 2
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then71.i, %if.end67.i.if.end72.i_crit_edge
  %call73.i = tail call i32 @napi_gro_receive(ptr noundef %napi.i, ptr noundef nonnull %39) #6
  %77 = ptrtoint ptr %rx_pkts.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %rx_pkts.i, align 8
  %inc75.i = add i64 %78, 1
  store i64 %inc75.i, ptr %rx_pkts.i, align 8
  %79 = zext i32 %conv22.i to i64
  %80 = ptrtoint ptr %rxbytes.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %rxbytes.i, align 8
  %add.i = add i64 %81, %79
  store i64 %add.i, ptr %rxbytes.i, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %82 = ptrtoint ptr %netdev1.i117 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %netdev1.i117, align 4
  %84 = ptrtoint ptr %max_rds_rings.i118 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %max_rds_rings.i118, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %85, i8 %conv11)
  %cmp.not.i119 = icmp ugt i8 %85, %conv11
  br i1 %cmp.not.i119, label %if.end.i126, label %sw.bb12.if.else_crit_edge, !prof !59

sw.bb12.if.else_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end.i126:                                      ; preds = %sw.bb12
  %86 = ptrtoint ptr %recv_ctx2.i120 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %recv_ctx2.i120, align 4
  %88 = trunc i64 %shr10 to i32
  %89 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %87, align 4
  %shr.i122 = lshr i64 %12, 48
  %91 = trunc i64 %shr.i122 to i32
  %conv7.i123 = and i32 %91, 32767
  %num_desc.i124 = getelementptr %struct.qlcnic_host_rds_ring, ptr %90, i32 %88, i32 3
  %92 = ptrtoint ptr %num_desc.i124 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_desc.i124, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7.i123, i32 %93)
  %cmp8.not.i125 = icmp ult i32 %conv7.i123, %93
  br i1 %cmp8.not.i125, label %if.end17.i134, label %if.end.i126.if.else_crit_edge, !prof !59

if.end.i126.if.else_crit_edge:                    ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end17.i134:                                    ; preds = %if.end.i126
  %rx_buf_arr.i127 = getelementptr %struct.qlcnic_host_rds_ring, ptr %90, i32 %88, i32 2
  %94 = ptrtoint ptr %rx_buf_arr.i127 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rx_buf_arr.i127, align 8
  %arrayidx18.i128 = getelementptr %struct.qlcnic_rx_buffer, ptr %95, i32 %conv7.i123
  %shr20.i129 = lshr i64 %12, 32
  %96 = trunc i64 %shr20.i129 to i32
  %conv22.i130 = and i32 %96, 16383
  %97 = trunc i64 %8 to i32
  %98 = lshr i32 %97, 16
  %conv26.i = and i32 %98, 255
  %99 = lshr i32 %97, 24
  %skb1.i.i132 = getelementptr %struct.qlcnic_rx_buffer, ptr %95, i32 %conv7.i123, i32 1
  %100 = ptrtoint ptr %skb1.i.i132 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %skb1.i.i132, align 4
  %cmp.i.i133 = icmp eq ptr %101, null
  br i1 %cmp.i.i133, label %qlcnic_process_rxbuf.exit.thread.i135, label %if.end23.i.i144, !prof !60

qlcnic_process_rxbuf.exit.thread.i135:            ; preds = %if.end17.i134
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1146, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog

if.end23.i.i144:                                  ; preds = %if.end17.i134
  %102 = ptrtoint ptr %pdev.i.i136 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev.i.i136, align 8
  %dev.i.i137 = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  %dma.i.i138 = getelementptr %struct.qlcnic_rx_buffer, ptr %95, i32 %conv7.i123, i32 3
  %104 = ptrtoint ptr %dma.i.i138 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %dma.i.i138, align 8
  %conv.i.i139 = trunc i64 %105 to i32
  %dma_size.i.i140 = getelementptr %struct.qlcnic_host_rds_ring, ptr %90, i32 %88, i32 5
  %106 = ptrtoint ptr %dma_size.i.i140 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dma_size.i.i140, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i137, i32 noundef %conv.i.i139, i32 noundef %107, i32 noundef 2, i32 noundef 0) #6
  %108 = ptrtoint ptr %skb1.i.i132 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %skb1.i.i132, align 4
  %110 = ptrtoint ptr %netdev1.i117 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %netdev1.i117, align 4
  %features.i.i141 = getelementptr inbounds %struct.net_device, ptr %111, i32 0, i32 23
  %112 = ptrtoint ptr %features.i.i141 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %features.i.i141, align 16
  %and.i.i142 = and i64 %113, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i142)
  %tobool25.not.i.i143 = icmp eq i64 %and.i.i142, 0
  br i1 %tobool25.not.i.i143, label %if.end23.i.i144.qlcnic_process_rxbuf.exit.i152_crit_edge, label %land.rhs.i.i151, !prof !60

if.end23.i.i144.qlcnic_process_rxbuf.exit.i152_crit_edge: ; preds = %if.end23.i.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_process_rxbuf.exit.i152

land.rhs.i.i151:                                  ; preds = %if.end23.i.i144
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %csummed.i.i145 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %csummed.i.i145, align 8
  %inc.i.i146 = add i64 %115, 1
  store i64 %inc.i.i146, ptr %csummed.i.i145, align 8
  %ip_summed.i.i147 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 15
  %116 = ptrtoint ptr %ip_summed.i.i147 to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load.i.i148 = load i16, ptr %ip_summed.i.i147, align 8
  %bf.clear.i.i149 = and i16 %bf.load.i.i148, -1537
  %bf.set.i.i150 = or i16 %bf.clear.i.i149, 512
  store i16 %bf.set.i.i150, ptr %ip_summed.i.i147, align 8
  br label %qlcnic_process_rxbuf.exit.i152

qlcnic_process_rxbuf.exit.i152:                   ; preds = %land.rhs.i.i151, %if.end23.i.i144.qlcnic_process_rxbuf.exit.i152_crit_edge
  %117 = ptrtoint ptr %skb1.i.i132 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %skb1.i.i132, align 4
  %tobool36.not.i = icmp eq ptr %109, null
  br i1 %tobool36.not.i, label %qlcnic_process_rxbuf.exit.i152.sw.epilog_crit_edge, label %if.end38.i

qlcnic_process_rxbuf.exit.i152.sw.epilog_crit_edge: ; preds = %qlcnic_process_rxbuf.exit.i152
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end38.i:                                       ; preds = %qlcnic_process_rxbuf.exit.i152
  %118 = and i64 %8, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %118)
  %tobool42.not.i = icmp eq i64 %118, 0
  %data_offset.0.v.i = select i1 %tobool42.not.i, i32 20, i32 32
  %data_offset.0.i = add nuw nsw i32 %data_offset.0.v.i, %99
  %add50.i = add nuw nsw i32 %data_offset.0.i, %conv22.i130
  %call51.i = tail call ptr @skb_put(ptr noundef nonnull %109, i32 noundef %add50.i) #6
  %call52.i = tail call ptr @skb_pull(ptr noundef nonnull %109, i32 noundef %conv26.i) #6
  %data.i.i.i153 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 19
  %119 = ptrtoint ptr %data.i.i.i153 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %data.i.i.i153, align 4
  %h_vlan_proto.i.i.i154 = getelementptr inbounds %struct.vlan_ethhdr, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %h_vlan_proto.i.i.i154 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %h_vlan_proto.i.i.i154, align 2
  %123 = zext i16 %122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %122, label %if.end38.i.if.end.i.i162_crit_edge [
    i16 -30552, label %if.end38.i.if.then.i.i158_crit_edge
    i16 -32512, label %if.end38.i.if.then.i.i158_crit_edge212
  ]

if.end38.i.if.then.i.i158_crit_edge212:           ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i158

if.end38.i.if.then.i.i158_crit_edge:              ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i158

if.end38.i.if.end.i.i162_crit_edge:               ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i162

if.then.i.i158:                                   ; preds = %if.end38.i.if.then.i.i158_crit_edge, %if.end38.i.if.then.i.i158_crit_edge212
  %h_vlan_TCI.i.i.i155 = getelementptr inbounds %struct.vlan_ethhdr, ptr %120, i32 0, i32 2
  %124 = ptrtoint ptr %h_vlan_TCI.i.i.i155 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %h_vlan_TCI.i.i.i155, align 2
  %add.ptr.i.i156 = getelementptr i8, ptr %120, i32 4
  %126 = call ptr @memmove(ptr %add.ptr.i.i156, ptr %120, i32 12)
  %call2.i.i157 = tail call ptr @skb_pull(ptr noundef nonnull %109, i32 noundef 4) #6
  br label %if.end.i.i162

if.end.i.i162:                                    ; preds = %if.then.i.i158, %if.end38.i.if.end.i.i162_crit_edge
  %vid.0.i159 = phi i16 [ -1, %if.end38.i.if.end.i.i162_crit_edge ], [ %125, %if.then.i.i158 ]
  %127 = ptrtoint ptr %rx_pvid.i.i160 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %rx_pvid.i.i160, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %tobool3.not.i.i161 = icmp eq i16 %128, 0
  br i1 %tobool3.not.i.i161, label %if.end.i.i162.qlcnic_check_rx_tagging.exit.i170_crit_edge, label %if.end5.i.i163

if.end.i.i162.qlcnic_check_rx_tagging.exit.i170_crit_edge: ; preds = %if.end.i.i162
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_check_rx_tagging.exit.i170

if.end5.i.i163:                                   ; preds = %if.end.i.i162
  call void @__sanitizer_cov_trace_cmp2(i16 %vid.0.i159, i16 %128)
  %cmp.i209.i = icmp eq i16 %vid.0.i159, %128
  br i1 %cmp.i209.i, label %if.end5.i.i163.qlcnic_check_rx_tagging.exit.i170_crit_edge, label %if.end10.i.i167

if.end5.i.i163.qlcnic_check_rx_tagging.exit.i170_crit_edge: ; preds = %if.end5.i.i163
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_check_rx_tagging.exit.i170

if.end10.i.i167:                                  ; preds = %if.end5.i.i163
  call void @__sanitizer_cov_trace_pc() #8
  %129 = ptrtoint ptr %flags.i.i164 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %flags.i.i164, align 8
  %and.i210.i = and i32 %130, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i210.i)
  %tobool11.not.i.i165 = icmp eq i32 %and.i210.i, 0
  %..i.i166 = select i1 %tobool11.not.i.i165, i32 -22, i32 0
  br label %qlcnic_check_rx_tagging.exit.i170

qlcnic_check_rx_tagging.exit.i170:                ; preds = %if.end10.i.i167, %if.end5.i.i163.qlcnic_check_rx_tagging.exit.i170_crit_edge, %if.end.i.i162.qlcnic_check_rx_tagging.exit.i170_crit_edge
  %vid.1.i168 = phi i16 [ %vid.0.i159, %if.end.i.i162.qlcnic_check_rx_tagging.exit.i170_crit_edge ], [ %vid.0.i159, %if.end10.i.i167 ], [ -1, %if.end5.i.i163.qlcnic_check_rx_tagging.exit.i170_crit_edge ]
  %retval.0.i211.i = phi i32 [ 0, %if.end.i.i162.qlcnic_check_rx_tagging.exit.i170_crit_edge ], [ %..i.i166, %if.end10.i.i167 ], [ 0, %if.end5.i.i163.qlcnic_check_rx_tagging.exit.i170_crit_edge ]
  %131 = ptrtoint ptr %rx_mac_learn.i169 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %rx_mac_learn.i169, align 2, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool54.not.i = icmp eq i8 %132, 0
  br i1 %tobool54.not.i, label %qlcnic_check_rx_tagging.exit.i170.if.end58.i_crit_edge, label %if.then55.i

qlcnic_check_rx_tagging.exit.i170.if.end58.i_crit_edge: ; preds = %qlcnic_check_rx_tagging.exit.i170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

if.then55.i:                                      ; preds = %qlcnic_check_rx_tagging.exit.i170
  call void @__sanitizer_cov_trace_pc() #8
  %retval.0.in.v.i.i171 = lshr i64 %8, 46
  %retval.0.in.i.i172 = trunc i64 %retval.0.in.v.i.i171 to i32
  %retval.0.i212.i = and i32 %retval.0.in.i.i172, 1
  tail call fastcc void @qlcnic_add_lb_filter(ptr noundef %1, ptr noundef nonnull %109, i32 noundef %retval.0.i212.i, i16 noundef zeroext %vid.1.i168) #6
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then55.i, %qlcnic_check_rx_tagging.exit.i170.if.end58.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i211.i)
  %tobool59.not.i = icmp eq i32 %retval.0.i211.i, 0
  br i1 %tobool59.not.i, label %if.end67.i176, label %if.then66.i, !prof !59

if.then66.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  %133 = ptrtoint ptr %rxdropped.i173 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %rxdropped.i173, align 8
  %inc.i174 = add i64 %134, 1
  store i64 %inc.i174, ptr %rxdropped.i173, align 8
  tail call void @consume_skb(ptr noundef nonnull %109) #6
  br label %sw.epilog

if.end67.i176:                                    ; preds = %if.end58.i
  %call68.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %109, ptr noundef %83) #6
  %protocol.i175 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 15, i32 0, i32 18
  %135 = ptrtoint ptr %protocol.i175 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %call68.i, ptr %protocol.i175, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %call68.i)
  %cmp71.i = icmp eq i16 %call68.i, -31011
  %136 = ptrtoint ptr %data.i.i.i153 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %data.i.i.i153, align 4
  br i1 %cmp71.i, label %if.then73.i, label %if.else79.i

if.then73.i:                                      ; preds = %if.end67.i176
  call void @__sanitizer_cov_trace_pc() #8
  %doff.i = getelementptr i8, ptr %137, i32 52
  %138 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %bf.load.i177 = load i16, ptr %doff.i, align 4
  %139 = lshr i16 %bf.load.i177, 10
  %140 = and i16 %139, 60
  %141 = trunc i32 %conv22.i130 to i16
  %conv78.i = add nuw nsw i16 %140, %141
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %137, i32 0, i32 2
  %142 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %conv78.i, ptr %payload_len.i, align 4
  br label %if.end100.i

if.else79.i:                                      ; preds = %if.end67.i176
  call void @__sanitizer_cov_trace_pc() #8
  %143 = ptrtoint ptr %137 to i32
  call void @__asan_load1_noabort(i32 %143)
  %bf.load82.i = load i8, ptr %137, align 4
  %bf.clear.i = shl i8 %bf.load82.i, 2
  %144 = and i8 %bf.clear.i, 60
  %shl84.i = zext i8 %144 to i32
  %add.ptr85.i = getelementptr i8, ptr %137, i32 %shl84.i
  %doff90.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr85.i, i32 0, i32 4
  %145 = ptrtoint ptr %doff90.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %bf.load91.i = load i16, ptr %doff90.i, align 4
  %146 = lshr i16 %bf.load91.i, 10
  %147 = and i16 %146, 60
  %add95.i = add nuw nsw i32 %conv22.i130, %shl84.i
  %148 = trunc i32 %add95.i to i16
  %conv98.i = add nuw nsw i16 %147, %148
  %check.i = getelementptr inbounds %struct.iphdr, ptr %137, i32 0, i32 7
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %137, i32 0, i32 2
  %149 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %tot_len.i, align 2
  %151 = ptrtoint ptr %check.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %check.i, align 2
  %neg.i.i = xor i16 %152, -1
  %neg.i.i.i = xor i16 %150, -1
  %add.i.i.i.i = add i16 %neg.i.i, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i.i, i16 %neg.i.i.i)
  %cmp.i.i.i.i = icmp ult i16 %add.i.i.i.i, %neg.i.i.i
  %conv6.i.i.i.i = zext i1 %cmp.i.i.i.i to i16
  %add7.i.i.i.i = add i16 %add.i.i.i.i, %conv6.i.i.i.i
  %add.i.i.i = add i16 %add7.i.i.i.i, %conv98.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i, i16 %conv98.i)
  %cmp.i.i.i = icmp ult i16 %add.i.i.i, %conv98.i
  %conv6.i.i.i = zext i1 %cmp.i.i.i to i16
  %add7.i.i.i = add i16 %add.i.i.i, %conv6.i.i.i
  %neg4.i.i = xor i16 %add7.i.i.i, -1
  %153 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %neg4.i.i, ptr %check.i, align 2
  %154 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv98.i, ptr %tot_len.i, align 2
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.else79.i, %if.then73.i
  %155 = phi i32 [ 40, %if.then73.i ], [ %shl84.i, %if.else79.i ]
  %156 = getelementptr i8, ptr %137, i32 %155
  %psh.i = getelementptr inbounds %struct.tcphdr, ptr %156, i32 0, i32 4
  %157 = ptrtoint ptr %psh.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %bf.load103.i = load i16, ptr %psh.i, align 4
  %sh.diff.i = lshr i64 %8, 38
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i16
  %bf.shl.i = and i16 %tr.sh.diff.i, 8
  %bf.clear104.i = and i16 %bf.load103.i, -9
  %bf.set.i178 = or i16 %bf.clear104.i, %bf.shl.i
  store i16 %bf.set.i178, ptr %psh.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 6
  %158 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %len.i, align 4
  %160 = ptrtoint ptr %flags.i.i164 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %flags.i.i164, align 8
  %and106.i = and i32 %161, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i, label %if.end100.i.if.end124.i_crit_edge, label %if.then108.i

if.end100.i.if.end124.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124.i

if.then108.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv111.i = trunc i64 %12 to i16
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 17
  %162 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %end.i.i, align 4
  %gso_size113.i = getelementptr inbounds %struct.skb_shared_info, ptr %163, i32 0, i32 4
  %164 = ptrtoint ptr %gso_size113.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %conv111.i, ptr %gso_size113.i, align 4
  %165 = ptrtoint ptr %protocol.i175 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %protocol.i175, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %166)
  %cmp116.i = icmp eq i16 %166, -31011
  %167 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %end.i.i, align 4
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %168, i32 0, i32 8
  %..i = select i1 %cmp116.i, i32 16, i32 1
  %169 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %..i, ptr %gso_type.i, align 8
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.then108.i, %if.end100.i.if.end124.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %vid.1.i168)
  %cmp126.not.i = icmp eq i16 %vid.1.i168, -1
  br i1 %cmp126.not.i, label %if.end124.i.if.end129.i_crit_edge, label %if.then128.i

if.end124.i.if.end129.i_crit_edge:                ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129.i

if.then128.i:                                     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #8
  %vlan_proto1.i.i179 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 15, i32 0, i32 9
  %170 = ptrtoint ptr %vlan_proto1.i.i179 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 -32512, ptr %vlan_proto1.i.i179, align 8
  %vlan_tci2.i.i180 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 15, i32 0, i32 10
  %171 = ptrtoint ptr %vlan_tci2.i.i180 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %vid.1.i168, ptr %vlan_tci2.i.i180, align 2
  %vlan_present.i.i181 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 15, i32 0, i32 3
  %172 = ptrtoint ptr %vlan_present.i.i181 to i32
  call void @__asan_loadN_noabort(i32 %172, i32 4)
  %bf.load.i215.i = load i32, ptr %vlan_present.i.i181, align 2
  %bf.set.i216.i = or i32 %bf.load.i215.i, -2147483648
  store i32 %bf.set.i216.i, ptr %vlan_present.i.i181, align 2
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then128.i, %if.end124.i.if.end129.i_crit_edge
  %call130.i = tail call i32 @netif_receive_skb(ptr noundef nonnull %109) #6
  %173 = ptrtoint ptr %lro_pkts.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %lro_pkts.i, align 8
  %inc132.i = add i64 %174, 1
  store i64 %inc132.i, ptr %lro_pkts.i, align 8
  %conv105.mask.i = and i32 %159, 65535
  %conv133.i = zext i32 %conv105.mask.i to i64
  %175 = ptrtoint ptr %lrobytes.i to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %lrobytes.i, align 8
  %add135.i = add i64 %176, %conv133.i
  store i64 %add135.i, ptr %lrobytes.i, align 8
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %177 = ptrtoint ptr %pdev.i.i136 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %pdev.i.i136, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %178, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %conv) #10
  br label %skip

sw.epilog:                                        ; preds = %if.end129.i, %if.then66.i, %qlcnic_process_rxbuf.exit.i152.sw.epilog_crit_edge, %qlcnic_process_rxbuf.exit.thread.i135, %if.end72.i, %if.then52.i, %qlcnic_process_rxbuf.exit.i.sw.epilog_crit_edge, %qlcnic_process_rxbuf.exit.thread.i
  %rxbuf.0 = phi ptr [ %arrayidx18.i, %if.then52.i ], [ %arrayidx18.i, %if.end72.i ], [ %arrayidx18.i, %qlcnic_process_rxbuf.exit.i.sw.epilog_crit_edge ], [ %arrayidx18.i, %qlcnic_process_rxbuf.exit.thread.i ], [ %arrayidx18.i128, %if.then66.i ], [ %arrayidx18.i128, %if.end129.i ], [ %arrayidx18.i128, %qlcnic_process_rxbuf.exit.i152.sw.epilog_crit_edge ], [ %arrayidx18.i128, %qlcnic_process_rxbuf.exit.thread.i135 ]
  %tobool15.not = icmp eq ptr %rxbuf.0, null
  br i1 %tobool15.not, label %sw.epilog.if.else_crit_edge, label %if.then18, !prof !60

sw.epilog.if.else_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then18:                                        ; preds = %sw.epilog
  %list = getelementptr inbounds %struct.qlcnic_rx_buffer, ptr %rxbuf.0, i32 0, i32 2
  %179 = trunc i64 %shr10 to i32
  %arrayidx19 = getelementptr %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 7, i32 %179
  %prev.i = getelementptr %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 7, i32 %179, i32 1
  %180 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %181, ptr noundef %arrayidx19) #6
  br i1 %call.i.i, label %if.end.i.i183, label %if.then18.skip_crit_edge

if.then18.skip_crit_edge:                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip

if.end.i.i183:                                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %182 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %list, ptr %prev.i, align 4
  %183 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %arrayidx19, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.qlcnic_rx_buffer, ptr %rxbuf.0, i32 0, i32 2, i32 1
  %184 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %181, ptr %prev3.i.i, align 4
  %185 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %185)
  store volatile ptr %list, ptr %181, align 4
  br label %skip

if.else:                                          ; preds = %sw.epilog.if.else_crit_edge, %if.end.i126.if.else_crit_edge, %sw.bb12.if.else_crit_edge, %if.end.i.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %186 = ptrtoint ptr %null_rxbuf to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %null_rxbuf, align 8
  %inc = add i64 %187, 1
  store i64 %inc, ptr %null_rxbuf, align 8
  br label %skip

skip:                                             ; preds = %if.else, %if.end.i.i183, %if.then18.skip_crit_edge, %do.end
  %188 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %desc_head, align 16
  %arrayidx24 = getelementptr %struct.status_desc, ptr %189, i32 %consumer.0201, i32 0, i32 1
  %190 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 0, ptr %arrayidx24, align 8
  %add = add i32 %consumer.0201, 1
  %191 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %num_desc, align 4
  %sub = add i32 %192, -1
  %and25 = and i32 %sub, %add
  %inc26 = add nuw nsw i32 %count.0200, 1
  %exitcond.not = icmp eq i32 %inc26, %max
  br i1 %exitcond.not, label %skip.while.end_crit_edge, label %skip.while.body_crit_edge

skip.while.body_crit_edge:                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

skip.while.end_crit_edge:                         ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %skip.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %count.0200, %while.body.while.end_crit_edge ], [ %max, %skip.while.end_crit_edge ]
  %consumer.0.lcssa = phi i32 [ %3, %entry.while.end_crit_edge ], [ %consumer.0201, %while.body.while.end_crit_edge ], [ %and25, %skip.while.end_crit_edge ]
  %max_rds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 12
  %193 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %max_rds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %cmp29208.not = icmp eq i8 %194, 0
  br i1 %cmp29208.not, label %while.end.for.end61_crit_edge, label %for.body.lr.ph

while.end.for.end61_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end61

for.body.lr.ph:                                   ; preds = %while.end
  %recv_ctx = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end58.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end58.for.body_crit_edge ]
  %195 = ptrtoint ptr %recv_ctx to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %recv_ctx, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 4
  %arrayidx32 = getelementptr %struct.qlcnic_host_rds_ring, ptr %198, i32 %indvars.iv
  %arrayidx35 = getelementptr %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 7, i32 %indvars.iv
  %199 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile ptr, ptr %arrayidx35, align 4
  %cmp.i.not = icmp eq ptr %200, %arrayidx35
  br i1 %cmp.i.not, label %for.body.if.end58_crit_edge, label %for.cond42.preheader

for.body.if.end58_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

for.cond42.preheader:                             ; preds = %for.body
  %201 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %201)
  %cur.0205 = load ptr, ptr %arrayidx35, align 4
  %cmp.i185.not206 = icmp eq ptr %cur.0205, %arrayidx35
  br i1 %cmp.i185.not206, label %for.cond42.preheader.for.end_crit_edge, label %for.cond42.preheader.for.body50_crit_edge

for.cond42.preheader.for.body50_crit_edge:        ; preds = %for.cond42.preheader
  br label %for.body50

for.cond42.preheader.for.end_crit_edge:           ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %for.cond42.preheader.for.body50_crit_edge
  %cur.0207 = phi ptr [ %cur.0, %for.body50.for.body50_crit_edge ], [ %cur.0205, %for.cond42.preheader.for.body50_crit_edge ]
  %add.ptr = getelementptr i8, ptr %cur.0207, i32 -8
  %call51 = tail call fastcc i32 @qlcnic_alloc_rx_skb(ptr noundef %1, ptr noundef %arrayidx32, ptr noundef %add.ptr)
  %202 = ptrtoint ptr %cur.0207 to i32
  call void @__asan_load4_noabort(i32 %202)
  %cur.0 = load ptr, ptr %cur.0207, align 4
  %cmp.i185.not = icmp eq ptr %cur.0, %arrayidx35
  br i1 %cmp.i185.not, label %for.body50.for.end_crit_edge, label %for.body50.for.body50_crit_edge

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body50

for.body50.for.end_crit_edge:                     ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body50.for.end_crit_edge, %for.cond42.preheader.for.end_crit_edge
  %lock = getelementptr %struct.qlcnic_host_rds_ring, ptr %198, i32 %indvars.iv, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %203 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load volatile ptr, ptr %arrayidx35, align 4
  %cmp.i.not.i = icmp eq ptr %204, %arrayidx35
  br i1 %cmp.i.not.i, label %for.end.list_splice_tail_init.exit_crit_edge, label %if.then.i

for.end.list_splice_tail_init.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %free_list56 = getelementptr %struct.qlcnic_host_rds_ring, ptr %198, i32 %indvars.iv, i32 8
  %prev.i187 = getelementptr %struct.qlcnic_host_rds_ring, ptr %198, i32 %indvars.iv, i32 8, i32 1
  %205 = ptrtoint ptr %prev.i187 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %prev.i187, align 4
  %prev2.i.i = getelementptr %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 7, i32 %indvars.iv, i32 1
  %207 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i188 = getelementptr inbounds %struct.list_head, ptr %204, i32 0, i32 1
  %209 = ptrtoint ptr %prev3.i.i188 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %206, ptr %prev3.i.i188, align 4
  %210 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %204, ptr %206, align 4
  %211 = ptrtoint ptr %208 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %free_list56, ptr %208, align 4
  store ptr %208, ptr %prev.i187, align 4
  %212 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %212)
  store volatile ptr %arrayidx35, ptr %arrayidx35, align 4
  store ptr %arrayidx35, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %for.end.list_splice_tail_init.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %if.end58

if.end58:                                         ; preds = %list_splice_tail_init.exit, %for.body.if.end58_crit_edge
  %213 = trunc i32 %indvars.iv to i8
  tail call fastcc void @qlcnic_post_rx_buffers_nodb(ptr noundef %1, ptr noundef %arrayidx32, i8 noundef zeroext %213)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %214 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %max_rds_rings, align 2
  %216 = zext i8 %215 to i32
  %cmp29 = icmp ult i32 %indvars.iv.next, %216
  br i1 %cmp29, label %if.end58.for.body_crit_edge, label %if.end58.for.end61_crit_edge

if.end58.for.end61_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end61

if.end58.for.body_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end61:                                        ; preds = %if.end58.for.end61_crit_edge, %while.end.for.end61_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa)
  %tobool62.not = icmp eq i32 %count.0.lcssa, 0
  br i1 %tobool62.not, label %for.end61.if.end68_crit_edge, label %if.then63

for.end61.if.end68_crit_edge:                     ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then63:                                        ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #8
  %217 = ptrtoint ptr %sds_ring to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %consumer.0.lcssa, ptr %sds_ring, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %218 = tail call i32 @llvm.bswap.i32(i32 %consumer.0.lcssa)
  %crb_sts_consumer = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 2
  %219 = ptrtoint ptr %crb_sts_consumer to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %crb_sts_consumer, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %218) #6, !srcloc !69
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %for.end61.if.end68_crit_edge
  ret i32 %count.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_io.c", i32 794, i32 23}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_io.c", i32 804, i32 24}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_io.c", i32 808, i32 23}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_io.c", i32 1114, i32 4}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @qlcnic_handle_fw_message._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @qlcnic_handle_fw_message._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_io.c", i32 1118, i32 4}
!20 = !{ptr @qlcnic_handle_fw_message._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @qlcnic_handle_fw_message._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_io.c", i32 1122, i32 4}
!24 = !{ptr @qlcnic_handle_fw_message._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @qlcnic_handle_fw_message._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_io.c", i32 1052, i32 3}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @qlcnic_handle_linkevent._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @qlcnic_handle_linkevent._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_io.c", i32 1056, i32 3}
!33 = !{ptr @qlcnic_handle_linkevent._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @qlcnic_handle_linkevent._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_io.c", i32 1483, i32 37}
!37 = !{ptr @__func__.dump_skb, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_io.c", i32 1484, i32 37}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_io.c", i32 1486, i32 3}
!41 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @dump_skb.__UNIQUE_ID_ddebug502, !40, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!43 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_io.c", i32 1912, i32 4}
!46 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @qlcnic_83xx_process_rcv_ring._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @qlcnic_83xx_process_rcv_ring._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2158089027}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{i64 2158103524}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.peeled.count", i32 1}
!64 = !{i64 2158100478}
!65 = !{i64 2158094790}
!66 = !{i8 0, i8 2}
!67 = !{i64 2158103983}
!68 = !{i64 2158128309}
!69 = !{i64 6586767}
!70 = !{i64 2158132272}
!71 = !{i64 2149098713, i64 2149098718, i64 2149098731, i64 2149098775, i64 2149098809, i64 2149098830}
!72 = !{i64 2158144504}
!73 = !{i64 2158126106}
!74 = !{i64 2158106091}
!75 = !{i64 2158106949}
!76 = !{i64 2158138192}
