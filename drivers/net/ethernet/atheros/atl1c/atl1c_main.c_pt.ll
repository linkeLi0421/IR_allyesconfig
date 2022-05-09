; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/atheros/atl1c/atl1c_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/atheros/atl1c/atl1c_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atl1c_qregs = type { i16, i16, i16, i16, i16, i16, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.81 }
%union.anon.81 = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.153, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.anon.153 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.atl1c_platform_patch = type { i16, i8, i16, i16, i32 }
%struct.atl1c_adapter = type { ptr, ptr, i32, %struct.atl1c_hw, %struct.atl1c_hw_stats, %struct.mii_if_info, i16, i32, i32, i32, i32, i32, i8, i32, i16, i16, %struct.spinlock, %struct.atomic_t, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.atl1c_ring_header, [4 x %struct.atl1c_tpd_ring], [4 x %struct.atl1c_rfd_ring], [4 x %struct.atl1c_rrd_ring], i32 }
%struct.atl1c_hw = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i8, i16, i16, %struct.spinlock, i32, i8, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i8, i8, i32, i32, [6 x i8], [6 x i8], i8, i8, i8, i8 }
%struct.atl1c_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.atl1c_ring_header = type { ptr, i32, i32 }
%struct.atl1c_tpd_ring = type { ptr, ptr, i32, i16, i16, i16, i16, %struct.atomic_t, ptr, %struct.napi_struct }
%struct.atl1c_rfd_ring = type { ptr, i32, i16, i16, i16, i16, ptr }
%struct.atl1c_rrd_ring = type { ptr, ptr, i32, i16, i16, i16, i16, i16, %struct.napi_struct, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.144, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.atl1c_buffer = type { ptr, i16, i16, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atl1c_rx_free_desc = type { i64 }
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
%struct.atl1c_recv_ret_status = type { i32, i32, i16, i16, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.atl1c_tpd_desc = type { i16, i16, i32, i64 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.atl1c_tpd_ext_desc = type { i32, i32, i32, i32 }
%struct.anon.117 = type { i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.127, %union.anon.128 }
%union.anon.127 = type { [16 x i8] }
%union.anon.128 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }

@atl1c_driver_name = dso_local global { [6 x i8], [26 x i8] } { [6 x i8] c"atl1c\00", [26 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author498 = internal constant [22 x i8] c"atl1c.author=Jie Yang\00", section ".modinfo", align 1
@__UNIQUE_ID_author499 = internal constant [35 x i8] c"atl1c.author=Qualcomm Atheros Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description500 = internal constant [69 x i8] c"atl1c.description=Qualcomm Atheros 100/1000M Ethernet Network Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file501 = internal constant [52 x i8] c"atl1c.file=drivers/net/ethernet/atheros/atl1c/atl1c\00", section ".modinfo", align 1
@__UNIQUE_ID_license502 = internal constant [18 x i8] c"atl1c.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_atl1c__515_2927_atl1c_driver_init6 = internal global ptr @atl1c_driver_init, section ".initcall6.init", align 4
@atl1c_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @atl1c_driver_name, ptr @atl1c_pci_tbl, ptr @atl1c_probe, ptr @atl1c_remove, ptr null, ptr null, ptr @atl1c_shutdown, ptr null, ptr null, ptr null, ptr @atl1c_err_handler, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atl1c_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_atl1c_driver_exit = internal global ptr @atl1c_driver_exit, section ".exitcall.exit", align 4
@atl1c_restore_vlan.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atl1c\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atl1c_restore_vlan\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/atheros/atl1c/atl1c_main.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atl1c_restore_vlan\0A\00", [44 x i8] zeroinitializer }, align 32
@atl1c_vlan_mode.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atl1c_vlan_mode\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atl1c_vlan_mode\0A\00", [47 x i8] zeroinitializer }, align 32
@atl1c_alloc_rx_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1830, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"alloc rx buffer failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atl1c_alloc_rx_buffer\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atl1c_alloc_rx_buffer._entry_ptr = internal global ptr @atl1c_alloc_rx_buffer._entry, section ".printk_index", align 4
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RX dma_map_single failed\00", [39 x i8] zeroinitializer }, align 32
@atl1c_qregs = internal constant { [4 x %struct.atl1c_qregs], [48 x i8] } { [4 x %struct.atl1c_qregs] [%struct.atl1c_qregs { i16 5504, i16 5618, i16 5622, i16 5456, i16 5480, i16 5600, i32 32768, i32 65536 }, %struct.atl1c_qregs { i16 5500, i16 5616, i16 5620, i16 5460, i16 5484, i16 5604, i32 268435456, i32 131072 }, %struct.atl1c_qregs { i16 7952, i16 7962, i16 7966, i16 5464, i16 5488, i16 5608, i32 536870912, i32 262144 }, %struct.atl1c_qregs { i16 7956, i16 7960, i16 7964, i16 5468, i16 5492, i16 5612, i32 1073741824, i32 524288 }], [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@atl1c_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 2393, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unable to allocate MSI interrupt Error: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atl1c_request_irq\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@atl1c_request_irq._entry_ptr = internal global ptr @atl1c_request_irq._entry, section ".printk_index", align 4
@atl1c_request_irq._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.2, i32 2405, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to allocate interrupt Error: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@atl1c_request_irq._entry_ptr.20 = internal global ptr @atl1c_request_irq._entry.18, section ".printk_index", align 4
@atl1c_request_irq.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.21, i8 2, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atl1c_request_irq OK\0A\00", [42 x i8] zeroinitializer }, align 32
@atl1c_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1725, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"atl1c hardware error (status = 0x%x)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atl1c_intr\00", [21 x i8] zeroinitializer }, align 32
@atl1c_intr._entry_ptr = internal global ptr @atl1c_intr._entry, section ".printk_index", align 4
@atl1c_intr._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 1736, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TX/RX overflow (status = 0x%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@atl1c_intr._entry_ptr.26 = internal global ptr @atl1c_intr._entry.24, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@atl1c_link_chg_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 332, ptr @.str.29, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: %s NIC Link is Down\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atl1c_link_chg_event\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atl1c_link_chg_event._entry_ptr = internal global ptr @atl1c_link_chg_event._entry, section ".printk_index", align 4
@atl1c_check_link_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 281, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reset mac failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atl1c_check_link_status\00", [40 x i8] zeroinitializer }, align 32
@atl1c_check_link_status._entry_ptr = internal global ptr @atl1c_check_link_status._entry, section ".printk_index", align 4
@atl1c_check_link_status._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 308, ptr @.str.29, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: %s NIC Link is Up<%d Mbps %s>\0A\00", [61 x i8] zeroinitializer }, align 32
@atl1c_check_link_status._entry_ptr.34 = internal global ptr @atl1c_check_link_status._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Full Duplex\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Half Duplex\00", [20 x i8] zeroinitializer }, align 32
@atl1c_reset_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 1307, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"MAC state machine can't be idle since disabled for 10ms second\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atl1c_reset_mac\00", [16 x i8] zeroinitializer }, align 32
@atl1c_reset_mac._entry_ptr = internal global ptr @atl1c_reset_mac._entry, section ".printk_index", align 4
@atl1c_pci_tbl = internal constant { [7 x %struct.pci_device_id], [32 x i8] } { [7 x %struct.pci_device_id] [%struct.pci_device_id { i32 6505, i32 4195, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6505, i32 4194, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6505, i32 8288, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6505, i32 8290, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6505, i32 4211, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6505, i32 4227, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@atl1c_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @atl1c_io_error_detected, ptr null, ptr @atl1c_io_slot_reset, ptr null, ptr null, ptr @atl1c_io_resume }, [40 x i8] zeroinitializer }, align 32
@atl1c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @atl1c_suspend, ptr @atl1c_resume, ptr @atl1c_suspend, ptr @atl1c_resume, ptr @atl1c_suspend, ptr @atl1c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@atl1c_probe.cards_found = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot enable PCI device\0A\00", [38 x i8] zeroinitializer }, align 32
@atl1c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 2680, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"No usable DMA configuration,aborting\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atl1c_probe\00", [20 x i8] zeroinitializer }, align 32
@atl1c_probe._entry_ptr = internal global ptr @atl1c_probe._entry, section ".printk_index", align 4
@atl1c_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 2686, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot obtain PCI resources\0A\00", [35 x i8] zeroinitializer }, align 32
@atl1c_probe._entry_ptr.44 = internal global ptr @atl1c_probe._entry.42, section ".printk_index", align 4
@atl1c_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 2695, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot map device registers\0A\00", [35 x i8] zeroinitializer }, align 32
@atl1c_probe._entry_ptr.47 = internal global ptr @atl1c_probe._entry.45, section ".printk_index", align 4
@atl1c_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.2, i32 2711, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"init netdevice failed\0A\00", [41 x i8] zeroinitializer }, align 32
@atl1c_probe._entry_ptr.50 = internal global ptr @atl1c_probe._entry.48, section ".printk_index", align 4
@atl1c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(&adapter->phy_config_timer)\00", [35 x i8] zeroinitializer }, align 32
@atl1c_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.41, ptr @.str.2, i32 2742, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"net device private data init failed\0A\00", [59 x i8] zeroinitializer }, align 32
@atl1c_probe._entry_ptr.54 = internal global ptr @atl1c_probe._entry.52, section ".printk_index", align 4
@atl1c_probe.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.55, i8 2, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mac address : %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@atl1c_probe.__key.56 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&adapter->common_task)\00", [55 x i8] zeroinitializer }, align 32
@atl1c_probe._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.41, ptr @.str.2, i32 2780, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"register netdevice failed\0A\00", [37 x i8] zeroinitializer }, align 32
@atl1c_probe._entry_ptr.60 = internal global ptr @atl1c_probe._entry.58, section ".printk_index", align 4
@atl1c_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @atl1c_open, ptr @atl1c_close, ptr @atl1c_xmit_frame, ptr null, ptr null, ptr null, ptr @atl1c_set_multi, ptr @atl1c_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr @atl1c_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @atl1c_change_mtu, ptr null, ptr @atl1c_tx_timeout, ptr null, ptr null, ptr null, ptr @atl1c_get_stats, ptr null, ptr null, ptr @atl1c_netpoll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atl1c_fix_features, ptr @atl1c_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@atl1c_setup_ring_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1063, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not get memory for DMA buffer\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"atl1c_setup_ring_resources\00", [37 x i8] zeroinitializer }, align 32
@atl1c_setup_ring_resources._entry_ptr = internal global ptr @atl1c_setup_ring_resources._entry, section ".printk_index", align 4
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tx-skb dropped due to dma error\0A\00", [63 x i8] zeroinitializer }, align 32
@atl1c_tso_csum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 2115, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IPV4 tso with zero data??\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atl1c_tso_csum\00", [17 x i8] zeroinitializer }, align 32
@atl1c_tso_csum._entry_ptr = internal global ptr @atl1c_tso_csum._entry, section ".printk_index", align 4
@atl1c_tso_csum._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 2140, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IPV6 tso with zero data??\0A\00", [37 x i8] zeroinitializer }, align 32
@atl1c_tso_csum._entry_ptr.69 = internal global ptr @atl1c_tso_csum._entry.67, section ".printk_index", align 4
@atl1c_tso_csum._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.2, i32 2167, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"payload offset should not an event number\0A\00", [53 x i8] zeroinitializer }, align 32
@atl1c_tso_csum._entry_ptr.72 = internal global ptr @atl1c_tso_csum._entry.70, section ".printk_index", align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@atl1c_mii_ioctl.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 0, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atl1c_mii_ioctl\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"<atl1c_mii_ioctl> write %x %x\00", [34 x i8] zeroinitializer }, align 32
@atl1c_clean_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 1944, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Multi rfd not support yet!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atl1c_clean_rx\00", [17 x i8] zeroinitializer }, align 32
@atl1c_clean_rx._entry_ptr = internal global ptr @atl1c_clean_rx._entry, section ".printk_index", align 4
@atl1c_clean_rx._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 1956, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wrong packet! rrs word3 is %x\0A\00", [33 x i8] zeroinitializer }, align 32
@atl1c_clean_rx._entry_ptr.81 = internal global ptr @atl1c_clean_rx._entry.79, section ".printk_index", align 4
@atl1c_clean_rx._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 1974, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@atl1c_clean_rx._entry_ptr.83 = internal global ptr @atl1c_clean_rx._entry.82, section ".printk_index", align 4
@atl1c_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 818, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"set mac function pointers failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atl1c_sw_init\00", [18 x i8] zeroinitializer }, align 32
@atl1c_sw_init._entry_ptr = internal global ptr @atl1c_sw_init._entry, section ".printk_index", align 4
@atl1c_sw_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 846, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to allocate memory for queues\0A\00", [58 x i8] zeroinitializer }, align 32
@atl1c_sw_init._entry_ptr.88 = internal global ptr @atl1c_sw_init._entry.86, section ".printk_index", align 4
@atl1c_sw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&adapter->mdio_lock\00", [44 x i8] zeroinitializer }, align 32
@atl1c_sw_init.__key.90 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&adapter->hw.intr_mask_lock\00", [36 x i8] zeroinitializer }, align 32
@plats = internal constant { [20 x %struct.atl1c_platform_patch], [48 x i8] } { [20 x %struct.atl1c_platform_patch] [%struct.atl1c_platform_patch { i16 8288, i8 -63, i16 4121, i16 -32430, i32 1 }, %struct.atl1c_platform_patch { i16 8288, i8 -63, i16 4121, i16 8288, i32 1 }, %struct.atl1c_platform_patch { i16 8288, i8 -63, i16 4121, i16 -8192, i32 1 }, %struct.atl1c_platform_patch { i16 8290, i8 -64, i16 4121, i16 -32430, i32 1 }, %struct.atl1c_platform_patch { i16 8290, i8 -64, i16 4121, i16 8290, i32 1 }, %struct.atl1c_platform_patch { i16 8290, i8 -64, i16 5208, i16 -8192, i32 1 }, %struct.atl1c_platform_patch { i16 8290, i8 -63, i16 4121, i16 -32430, i32 1 }, %struct.atl1c_platform_patch { i16 8290, i8 -63, i16 4121, i16 8290, i32 1 }, %struct.atl1c_platform_patch { i16 8290, i8 -63, i16 5208, i16 -8192, i32 1 }, %struct.atl1c_platform_patch { i16 8290, i8 -63, i16 5477, i16 10242, i32 1 }, %struct.atl1c_platform_patch { i16 8290, i8 -63, i16 5477, i16 10241, i32 1 }, %struct.atl1c_platform_patch { i16 4211, i8 -64, i16 4121, i16 -32431, i32 1 }, %struct.atl1c_platform_patch { i16 4211, i8 -64, i16 4121, i16 4211, i32 1 }, %struct.atl1c_platform_patch { i16 4211, i8 -64, i16 5208, i16 -8192, i32 1 }, %struct.atl1c_platform_patch { i16 4227, i8 -64, i16 5208, i16 -8192, i32 1 }, %struct.atl1c_platform_patch { i16 4227, i8 -64, i16 4121, i16 -32431, i32 1 }, %struct.atl1c_platform_patch { i16 4227, i8 -64, i16 4121, i16 4227, i32 1 }, %struct.atl1c_platform_patch { i16 4227, i8 -64, i16 5218, i16 30336, i32 1 }, %struct.atl1c_platform_patch { i16 4227, i8 -64, i16 5477, i16 10243, i32 1 }, %struct.atl1c_platform_patch zeroinitializer], [48 x i8] zeroinitializer }, align 32
@atl1c_suspend.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.2, ptr @.str.93, i8 2, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atl1c_suspend\00", [18 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"phy power saving failed\00", [40 x i8] zeroinitializer }, align 32
@atl1c_io_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 2871, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot re-enable PCI device after reset\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atl1c_io_slot_reset\00", [44 x i8] zeroinitializer }, align 32
@atl1c_io_slot_reset._entry_ptr = internal global ptr @atl1c_io_slot_reset._entry, section ".printk_index", align 4
@atl1c_io_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 2901, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot bring device back up after reset\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atl1c_io_resume\00", [16 x i8] zeroinitializer }, align 32
@atl1c_io_resume._entry_ptr = internal global ptr @atl1c_io_resume._entry, section ".printk_index", align 4
@switch.table.atl1c_probe = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 6122, i32 1500, i32 1500, i32 1500, i32 6122, i32 6122, i32 9500], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 16, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.100 = internal global [8 x i64] [i64 6, i64 16, i64 4194, i64 4195, i64 4211, i64 4227, i64 8288, i64 8290]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@___asan_gen_.104 = private unnamed_addr constant [18 x i8] c"atl1c_driver_name\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 11, i32 6 }
@___asan_gen_.107 = private unnamed_addr constant [13 x i8] c"atl1c_driver\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2917, i32 26 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 463, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 449, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1830, i32 5 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1850, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant [12 x i8] c"atl1c_qregs\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 50, i32 27 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1160, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 326, i32 6 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2391, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2403, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2411, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1723, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1734, i32 5 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 330, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 281, i32 5 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 303, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1305, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [14 x i8] c"atl1c_pci_tbl\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 22, i32 35 }
@___asan_gen_.239 = private unnamed_addr constant [18 x i8] c"atl1c_err_handler\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2909, i32 40 }
@___asan_gen_.242 = private unnamed_addr constant [13 x i8] c"atl1c_pm_ops\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2915, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant [12 x i8] c"cards_found\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2656, i32 13 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2666, i32 41 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2680, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2686, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2695, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2711, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2738, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2742, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2772, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2776, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2780, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"atl1c_netdev_ops\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2602, i32 36 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1063, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 717, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2355, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2114, i32 6 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2139, i32 6 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2166, i32 5 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 642, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1943, i32 6 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1954, i32 5 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1973, i32 5 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 818, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 846, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 852, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 853, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant [6 x i8] c"plats\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 732, i32 42 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2564, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2870, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.419 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.420 = private constant [51 x i8] c"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2900, i32 5 }
@___asan_gen_.422 = private unnamed_addr constant [25 x i8] c"switch.table.atl1c_probe\00", align 1
@llvm.compiler.used = appending global [141 x ptr] [ptr @__UNIQUE_ID_author498, ptr @__UNIQUE_ID_author499, ptr @__UNIQUE_ID_description500, ptr @__UNIQUE_ID_file501, ptr @__UNIQUE_ID_license502, ptr @__exitcall_atl1c_driver_exit, ptr @__initcall__kmod_atl1c__515_2927_atl1c_driver_init6, ptr @atl1c_alloc_rx_buffer._entry, ptr @atl1c_alloc_rx_buffer._entry_ptr, ptr @atl1c_check_link_status._entry, ptr @atl1c_check_link_status._entry.32, ptr @atl1c_check_link_status._entry_ptr, ptr @atl1c_check_link_status._entry_ptr.34, ptr @atl1c_clean_rx._entry, ptr @atl1c_clean_rx._entry.79, ptr @atl1c_clean_rx._entry.82, ptr @atl1c_clean_rx._entry_ptr, ptr @atl1c_clean_rx._entry_ptr.81, ptr @atl1c_clean_rx._entry_ptr.83, ptr @atl1c_driver_exit, ptr @atl1c_intr._entry, ptr @atl1c_intr._entry.24, ptr @atl1c_intr._entry_ptr, ptr @atl1c_intr._entry_ptr.26, ptr @atl1c_io_resume._entry, ptr @atl1c_io_resume._entry_ptr, ptr @atl1c_io_slot_reset._entry, ptr @atl1c_io_slot_reset._entry_ptr, ptr @atl1c_link_chg_event._entry, ptr @atl1c_link_chg_event._entry_ptr, ptr @atl1c_probe._entry, ptr @atl1c_probe._entry.42, ptr @atl1c_probe._entry.45, ptr @atl1c_probe._entry.48, ptr @atl1c_probe._entry.52, ptr @atl1c_probe._entry.58, ptr @atl1c_probe._entry_ptr, ptr @atl1c_probe._entry_ptr.44, ptr @atl1c_probe._entry_ptr.47, ptr @atl1c_probe._entry_ptr.50, ptr @atl1c_probe._entry_ptr.54, ptr @atl1c_probe._entry_ptr.60, ptr @atl1c_request_irq._entry, ptr @atl1c_request_irq._entry.18, ptr @atl1c_request_irq._entry_ptr, ptr @atl1c_request_irq._entry_ptr.20, ptr @atl1c_reset_mac._entry, ptr @atl1c_reset_mac._entry_ptr, ptr @atl1c_setup_ring_resources._entry, ptr @atl1c_setup_ring_resources._entry_ptr, ptr @atl1c_sw_init._entry, ptr @atl1c_sw_init._entry.86, ptr @atl1c_sw_init._entry_ptr, ptr @atl1c_sw_init._entry_ptr.88, ptr @atl1c_tso_csum._entry, ptr @atl1c_tso_csum._entry.67, ptr @atl1c_tso_csum._entry.70, ptr @atl1c_tso_csum._entry_ptr, ptr @atl1c_tso_csum._entry_ptr.69, ptr @atl1c_tso_csum._entry_ptr.72, ptr @atl1c_driver_name, ptr @atl1c_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @atl1c_qregs, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @atl1c_pci_tbl, ptr @atl1c_err_handler, ptr @atl1c_pm_ops, ptr @atl1c_probe.cards_found, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @atl1c_probe.__key, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @atl1c_probe.__key.56, ptr @.str.57, ptr @.str.59, ptr @atl1c_netdev_ops, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @atl1c_sw_init.__key, ptr @.str.89, ptr @atl1c_sw_init.__key.90, ptr @.str.91, ptr @plats, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @switch.table.atl1c_probe], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_driver_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_alloc_rx_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_qregs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_request_irq._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_intr._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_link_chg_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_check_link_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_check_link_status._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_reset_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_pci_tbl to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_probe.cards_found to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_probe.__key.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_probe._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_setup_ring_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_tso_csum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_tso_csum._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_tso_csum._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_clean_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_clean_rx._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_clean_rx._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_sw_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_sw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_sw_init.__key.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plats to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_io_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_io_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atl1c_probe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atl1c_reinit_locked(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @atl1c_down(ptr noundef %adapter)
  %call = tail call fastcc i32 @atl1c_up(ptr noundef %adapter)
  %flags = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1c_down(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %phy_config_timer.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 20
  %call.i = tail call i32 @del_timer_sync(ptr noundef %phy_config_timer.i) #10
  %work_event = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 10
  %2 = ptrtoint ptr %work_event to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %work_event, align 4
  %flags = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #10
  tail call void @netif_carrier_off(ptr noundef %1) #10
  %tx_queue_count = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 7
  %3 = ptrtoint ptr %tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_queue_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp33.not = icmp eq i32 %4, 0
  br i1 %cmp33.not, label %entry.for.cond2.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.body.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %rx_queue_count = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 8
  %5 = ptrtoint ptr %rx_queue_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp335.not = icmp eq i32 %6, 0
  br i1 %cmp335.not, label %for.cond2.preheader.for.end9_crit_edge, label %for.cond2.preheader.for.body4_crit_edge

for.cond2.preheader.for.body4_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body4

for.cond2.preheader.for.end9_crit_edge:           ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end9

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %napi = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 22, i32 %i.034, i32 9
  tail call void @napi_disable(ptr noundef %napi) #10
  %inc = add nuw i32 %i.034, 1
  %7 = ptrtoint ptr %tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_queue_count, align 8
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond2.preheader_crit_edge

for.body.for.cond2.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.cond2.preheader.for.body4_crit_edge
  %i.136 = phi i32 [ %inc8, %for.body4.for.body4_crit_edge ], [ 0, %for.cond2.preheader.for.body4_crit_edge ]
  %napi6 = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 24, i32 %i.136, i32 8
  tail call void @napi_disable(ptr noundef %napi6) #10
  %inc8 = add nuw i32 %i.136, 1
  %9 = ptrtoint ptr %rx_queue_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_queue_count, align 4
  %cmp3 = icmp ult i32 %inc8, %10
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.for.end9_crit_edge

for.body4.for.end9_crit_edge:                     ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end9

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4

for.end9:                                         ; preds = %for.body4.for.end9_crit_edge, %for.cond2.preheader.for.end9_crit_edge
  %irq_sem.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %irq_sem.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_sem.i, ptr %irq_sem.i, i32 1, ptr elementtype(i32) %irq_sem.i) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %hw.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3
  %12 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %15, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 128) #10, !srcloc !220
  %16 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  %pdev.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 1
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %22) #10
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 8
  %25 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i, align 4
  %irq.i31 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 46
  %27 = ptrtoint ptr %irq.i31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq.i31, align 4
  %call.i32 = tail call ptr @free_irq(i32 noundef %28, ptr noundef %24) #10
  %have_msi.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 12
  %29 = ptrtoint ptr %have_msi.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %have_msi.i, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %for.end9.atl1c_free_irq.exit_crit_edge, label %if.then.i

for.end9.atl1c_free_irq.exit_crit_edge:           ; preds = %for.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_free_irq.exit

if.then.i:                                        ; preds = %for.end9
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_disable_msi(ptr noundef %32) #10
  br label %atl1c_free_irq.exit

atl1c_free_irq.exit:                              ; preds = %if.then.i, %for.end9.atl1c_free_irq.exit_crit_edge
  %ctrl_flags1.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 28
  %33 = ptrtoint ptr %ctrl_flags1.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ctrl_flags1.i, align 4
  %35 = and i16 %34, -385
  store i16 %35, ptr %ctrl_flags1.i, align 4
  tail call fastcc void @atl1c_set_aspm(ptr noundef %hw.i, i16 noundef zeroext -1) #10
  %36 = ptrtoint ptr %ctrl_flags1.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %34, ptr %ctrl_flags1.i, align 4
  %call = tail call fastcc i32 @atl1c_reset_mac(ptr noundef %hw.i)
  tail call void @msleep(i32 noundef 1) #10
  %link_speed = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 14
  %37 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %link_speed, align 4
  %link_duplex = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 15
  %38 = ptrtoint ptr %link_duplex to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %link_duplex, align 2
  tail call fastcc void @atl1c_reset_dma_ring(ptr noundef %adapter)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl1c_up(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  tail call void @netif_carrier_off(ptr noundef %1) #10
  %call = tail call fastcc i32 @atl1c_configure(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.err_up_crit_edge, !prof !225

entry.err_up_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_up

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @atl1c_request_irq(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end13, label %if.end.err_up_crit_edge, !prof !225

if.end.err_up_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_up

if.end13:                                         ; preds = %if.end
  tail call fastcc void @atl1c_check_link_status(ptr noundef %adapter)
  %flags = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #10
  %tx_queue_count = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 7
  %2 = ptrtoint ptr %tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_queue_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp56.not = icmp eq i32 %3, 0
  br i1 %cmp56.not, label %if.end13.for.cond14.preheader_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.for.cond14.preheader_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.body.for.cond14.preheader_crit_edge, %if.end13.for.cond14.preheader_crit_edge
  %rx_queue_count = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 8
  %4 = ptrtoint ptr %rx_queue_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1558.not = icmp eq i32 %5, 0
  br i1 %cmp1558.not, label %for.cond14.preheader.for.end21_crit_edge, label %for.cond14.preheader.for.body16_crit_edge

for.cond14.preheader.for.body16_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body16

for.cond14.preheader.for.end21_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end13.for.body_crit_edge
  %i.057 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end13.for.body_crit_edge ]
  %napi = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 22, i32 %i.057, i32 9
  tail call void @napi_enable(ptr noundef %napi) #10
  %inc = add nuw i32 %i.057, 1
  %6 = ptrtoint ptr %tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_queue_count, align 8
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond14.preheader_crit_edge

for.body.for.cond14.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond14.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.cond14.preheader.for.body16_crit_edge
  %i.159 = phi i32 [ %inc20, %for.body16.for.body16_crit_edge ], [ 0, %for.cond14.preheader.for.body16_crit_edge ]
  %napi18 = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 24, i32 %i.159, i32 8
  tail call void @napi_enable(ptr noundef %napi18) #10
  %inc20 = add nuw i32 %i.159, 1
  %8 = ptrtoint ptr %rx_queue_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_queue_count, align 4
  %cmp15 = icmp ult i32 %inc20, %9
  br i1 %cmp15, label %for.body16.for.body16_crit_edge, label %for.body16.for.end21_crit_edge

for.body16.for.end21_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16

for.end21:                                        ; preds = %for.body16.for.end21_crit_edge, %for.cond14.preheader.for.end21_crit_edge
  %irq_sem.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !226
  tail call void @llvm.prefetch.p0(ptr %irq_sem.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_sem.i, ptr %irq_sem.i, i32 1, ptr elementtype(i32) %irq_sem.i) #10, !srcloc !227
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body.i, label %for.end21.atl1c_irq_enable.exit_crit_edge, !prof !225

for.end21.atl1c_irq_enable.exit_crit_edge:        ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_irq_enable.exit

do.body.i:                                        ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void @arm_heavy_mb() #10
  %hw.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3
  %11 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -129) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %intr_mask.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 14
  %13 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %intr_mask.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  %16 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %17, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %15) #10, !srcloc !220
  %18 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  br label %atl1c_irq_enable.exit

atl1c_irq_enable.exit:                            ; preds = %do.body.i, %for.end21.atl1c_irq_enable.exit_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup

err_up:                                           ; preds = %if.end.err_up_crit_edge, %entry.err_up_crit_edge
  %err.0 = phi i32 [ %call, %entry.err_up_crit_edge ], [ %call4, %if.end.err_up_crit_edge ]
  %rx_queue_count23 = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 8
  %23 = ptrtoint ptr %rx_queue_count23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_queue_count23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp2454.not = icmp eq i32 %24, 0
  br i1 %cmp2454.not, label %err_up.cleanup_crit_edge, label %err_up.for.body25_crit_edge

err_up.for.body25_crit_edge:                      ; preds = %err_up
  br label %for.body25

err_up.cleanup_crit_edge:                         ; preds = %err_up
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %err_up.for.body25_crit_edge
  %i.255 = phi i32 [ %inc27, %for.body25.for.body25_crit_edge ], [ 0, %err_up.for.body25_crit_edge ]
  tail call fastcc void @atl1c_clean_rx_ring(ptr noundef %adapter, i32 noundef %i.255)
  %inc27 = add nuw i32 %i.255, 1
  %25 = ptrtoint ptr %rx_queue_count23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_queue_count23, align 4
  %cmp24 = icmp ult i32 %inc27, %26
  br i1 %cmp24, label %for.body25.for.body25_crit_edge, label %for.body25.cleanup_crit_edge

for.body25.cleanup_crit_edge:                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body25

cleanup:                                          ; preds = %for.body25.cleanup_crit_edge, %err_up.cleanup_crit_edge, %atl1c_irq_enable.exit
  %retval.0 = phi i32 [ 0, %atl1c_irq_enable.exit ], [ %err.0, %err_up.cleanup_crit_edge ], [ %err.0, %for.body25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @atl1c_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atl1c_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @atl1c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl1c_configure(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %hw = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3
  %nic_type = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp eq i32 %3, 6
  br i1 %cmp, label %if.then, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then:                                          ; preds = %entry
  %hibernate = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 20
  %4 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hibernate, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr20 = getelementptr i8, ptr %7, i32 7940
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #10
  br i1 %tobool.not, label %if.else, label %if.then5, !prof !225

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr12 = getelementptr i8, ptr %10, i32 7940
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #10, !srcloc !222
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  br label %do.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then5
  %mode.0 = phi i32 [ %12, %if.then5 ], [ %13, %if.else ]
  %rx_queue_count = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 8
  %14 = ptrtoint ptr %rx_queue_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp24 = icmp eq i32 %15, 4
  %and = and i32 %mode.0, -2
  %masksel = zext i1 %cmp24 to i32
  %mode.1 = or i32 %and, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  tail call void @arm_heavy_mb() #10
  %16 = tail call i32 @llvm.bswap.i32(i32 %mode.1)
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %add.ptr33 = getelementptr i8, ptr %18, i32 7940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %16) #10, !srcloc !220
  br label %if.end34

if.end34:                                         ; preds = %do.end, %entry.if.end34_crit_edge
  %tpd_ring1.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 22
  %rfd_ring2.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 23
  %rrd_ring4.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 24
  %tx_queue_count.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 7
  %19 = ptrtoint ptr %tx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_queue_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp97.not.i = icmp eq i32 %20, 0
  br i1 %cmp97.not.i, label %if.end34.for.cond23.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end34.for.cond23.preheader.i_crit_edge:        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond23.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end34
  %count.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 22, i32 0, i32 5
  br label %for.body.i

for.cond23.preheader.i:                           ; preds = %for.inc20.i.for.cond23.preheader.i_crit_edge, %if.end34.for.cond23.preheader.i_crit_edge
  %rx_queue_count.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 8
  %21 = ptrtoint ptr %rx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp24103.not.i = icmp eq i32 %22, 0
  br i1 %cmp24103.not.i, label %for.cond23.preheader.i.atl1c_init_ring_ptrs.exit_crit_edge, label %for.cond23.preheader.i.for.body26.i_crit_edge

for.cond23.preheader.i.for.body26.i_crit_edge:    ; preds = %for.cond23.preheader.i
  br label %for.body26.i

for.cond23.preheader.i.atl1c_init_ring_ptrs.exit_crit_edge: ; preds = %for.cond23.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_init_ring_ptrs.exit

for.body.i:                                       ; preds = %for.inc20.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.098.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc21.i, %for.inc20.i.for.body.i_crit_edge ]
  %next_to_use.i = getelementptr %struct.atl1c_tpd_ring, ptr %tpd_ring1.i, i32 %i.098.i, i32 6
  %23 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %next_to_use.i, align 2
  %next_to_clean.i = getelementptr %struct.atl1c_tpd_ring, ptr %tpd_ring1.i, i32 %i.098.i, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_clean.i, i32 noundef 4) #10
  %24 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %next_to_clean.i, align 4
  %25 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp1095.not.i = icmp eq i16 %26, 0
  br i1 %cmp1095.not.i, label %for.body.i.for.inc20.i_crit_edge, label %do.body.lr.ph.i

for.body.i.for.inc20.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc20.i

do.body.lr.ph.i:                                  ; preds = %for.body.i
  %buffer_info8.i = getelementptr %struct.atl1c_tpd_ring, ptr %tpd_ring1.i, i32 %i.098.i, i32 8
  %27 = ptrtoint ptr %buffer_info8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer_info8.i, align 8
  %flags.i = getelementptr %struct.atl1c_buffer, ptr %28, i32 %i.098.i, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %j.096.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags.i, align 2
  %31 = and i16 %30, -4
  %32 = or i16 %31, 1
  store i16 %32, ptr %flags.i, align 2
  %inc.i = add nuw nsw i32 %j.096.i, 1
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %count.i, align 8
  %conv.i = zext i16 %34 to i32
  %cmp10.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp10.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.for.inc20.i_crit_edge

do.body.i.for.inc20.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc20.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

for.inc20.i:                                      ; preds = %do.body.i.for.inc20.i_crit_edge, %for.body.i.for.inc20.i_crit_edge
  %inc21.i = add nuw i32 %i.098.i, 1
  %35 = ptrtoint ptr %tx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_queue_count.i, align 8
  %cmp.i = icmp ult i32 %inc21.i, %36
  br i1 %cmp.i, label %for.inc20.i.for.body.i_crit_edge, label %for.inc20.i.for.cond23.preheader.i_crit_edge

for.inc20.i.for.cond23.preheader.i_crit_edge:     ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond23.preheader.i

for.inc20.i.for.body.i_crit_edge:                 ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body26.i:                                     ; preds = %for.inc59.i.for.body26.i_crit_edge, %for.cond23.preheader.i.for.body26.i_crit_edge
  %i.1104.i = phi i32 [ %inc60.i, %for.inc59.i.for.body26.i_crit_edge ], [ 0, %for.cond23.preheader.i.for.body26.i_crit_edge ]
  %next_to_use28.i = getelementptr %struct.atl1c_rfd_ring, ptr %rfd_ring2.i, i32 %i.1104.i, i32 4
  %37 = ptrtoint ptr %next_to_use28.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %next_to_use28.i, align 4
  %next_to_clean30.i = getelementptr %struct.atl1c_rfd_ring, ptr %rfd_ring2.i, i32 %i.1104.i, i32 5
  %38 = ptrtoint ptr %next_to_clean30.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %next_to_clean30.i, align 2
  %next_to_use32.i = getelementptr %struct.atl1c_rrd_ring, ptr %rrd_ring4.i, i32 %i.1104.i, i32 6
  %39 = ptrtoint ptr %next_to_use32.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %next_to_use32.i, align 2
  %next_to_clean34.i = getelementptr %struct.atl1c_rrd_ring, ptr %rrd_ring4.i, i32 %i.1104.i, i32 7
  %40 = ptrtoint ptr %next_to_clean34.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %next_to_clean34.i, align 4
  %count37.i = getelementptr %struct.atl1c_rfd_ring, ptr %rfd_ring2.i, i32 %i.1104.i, i32 3
  %41 = ptrtoint ptr %count37.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %count37.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp39101.not.i = icmp eq i16 %42, 0
  br i1 %cmp39101.not.i, label %for.body26.i.for.inc59.i_crit_edge, label %for.body41.lr.ph.i

for.body26.i.for.inc59.i_crit_edge:               ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc59.i

for.body41.lr.ph.i:                               ; preds = %for.body26.i
  %buffer_info43.i = getelementptr %struct.atl1c_rfd_ring, ptr %rfd_ring2.i, i32 %i.1104.i, i32 6
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i.for.body41.i_crit_edge, %for.body41.lr.ph.i
  %j.1102.i = phi i32 [ 0, %for.body41.lr.ph.i ], [ %inc57.i, %for.body41.i.for.body41.i_crit_edge ]
  %43 = ptrtoint ptr %buffer_info43.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffer_info43.i, align 4
  %flags46.i = getelementptr %struct.atl1c_buffer, ptr %44, i32 %j.1102.i, i32 2
  %45 = ptrtoint ptr %flags46.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %flags46.i, align 2
  %47 = and i16 %46, -4
  %48 = or i16 %47, 1
  store i16 %48, ptr %flags46.i, align 2
  %inc57.i = add nuw nsw i32 %j.1102.i, 1
  %49 = ptrtoint ptr %count37.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %count37.i, align 2
  %conv38.i = zext i16 %50 to i32
  %cmp39.i = icmp ult i32 %inc57.i, %conv38.i
  br i1 %cmp39.i, label %for.body41.i.for.body41.i_crit_edge, label %for.body41.i.for.inc59.i_crit_edge

for.body41.i.for.inc59.i_crit_edge:               ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc59.i

for.body41.i.for.body41.i_crit_edge:              ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body41.i

for.inc59.i:                                      ; preds = %for.body41.i.for.inc59.i_crit_edge, %for.body26.i.for.inc59.i_crit_edge
  %inc60.i = add nuw i32 %i.1104.i, 1
  %51 = ptrtoint ptr %rx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_queue_count.i, align 4
  %cmp24.i = icmp ult i32 %inc60.i, %52
  br i1 %cmp24.i, label %for.inc59.i.for.body26.i_crit_edge, label %for.inc59.i.atl1c_init_ring_ptrs.exit_crit_edge

for.inc59.i.atl1c_init_ring_ptrs.exit_crit_edge:  ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_init_ring_ptrs.exit

for.inc59.i.for.body26.i_crit_edge:               ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body26.i

atl1c_init_ring_ptrs.exit:                        ; preds = %for.inc59.i.atl1c_init_ring_ptrs.exit_crit_edge, %for.cond23.preheader.i.atl1c_init_ring_ptrs.exit_crit_edge
  tail call void @atl1c_set_multi(ptr noundef %1)
  %pdev1.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 1
  %53 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev1.i, align 4
  %msg_enable.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 11
  %55 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %56, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %atl1c_init_ring_ptrs.exit.atl1c_restore_vlan.exit_crit_edge, label %do.body.i69

atl1c_init_ring_ptrs.exit.atl1c_restore_vlan.exit_crit_edge: ; preds = %atl1c_init_ring_ptrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_restore_vlan.exit

do.body.i69:                                      ; preds = %atl1c_init_ring_ptrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1c_restore_vlan.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1c_configure, %if.then5.i)) #10
          to label %atl1c_restore_vlan.exit [label %if.then5.i], !srcloc !236

if.then5.i:                                       ; preds = %do.body.i69
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atl1c_restore_vlan.__UNIQUE_ID_ddebug504, ptr noundef %dev.i, ptr noundef nonnull @.str.3) #10
  br label %atl1c_restore_vlan.exit

atl1c_restore_vlan.exit:                          ; preds = %if.then5.i, %do.body.i69, %atl1c_init_ring_ptrs.exit.atl1c_restore_vlan.exit_crit_edge
  %57 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 23
  %59 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %features.i, align 16
  tail call fastcc void @atl1c_vlan_mode(ptr noundef %58, i64 noundef %60) #10
  %61 = ptrtoint ptr %rx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp3673.not = icmp eq i32 %62, 0
  br i1 %cmp3673.not, label %atl1c_restore_vlan.exit.for.end_crit_edge, label %atl1c_restore_vlan.exit.for.body_crit_edge

atl1c_restore_vlan.exit.for.body_crit_edge:       ; preds = %atl1c_restore_vlan.exit
  br label %for.body

atl1c_restore_vlan.exit.for.end_crit_edge:        ; preds = %atl1c_restore_vlan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.074, 1
  %63 = ptrtoint ptr %rx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_queue_count.i, align 4
  %cmp36 = icmp ult i32 %inc, %64
  br i1 %cmp36, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %atl1c_restore_vlan.exit.for.body_crit_edge
  %i.074 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %atl1c_restore_vlan.exit.for.body_crit_edge ]
  %call37 = tail call fastcc i32 @atl1c_alloc_rx_buffer(ptr noundef %adapter, i32 noundef %i.074, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %for.body.cleanup_crit_edge, label %for.cond, !prof !237

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %atl1c_restore_vlan.exit.for.end_crit_edge
  %hibernate.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 20
  %65 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %hibernate.i, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i70 = icmp eq i8 %66, 0
  %67 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw, align 4
  %add.ptr15.i = getelementptr i8, ptr %68, i32 5120
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #10
  br i1 %tobool.not.i70, label %if.else.i, label %if.then.i, !prof !225

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  %70 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw, align 4
  %add.ptr8.i = getelementptr i8, ptr %71, i32 5120
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #10, !srcloc !222
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  br label %do.end.i

if.else.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %74 = tail call i32 @llvm.bswap.i32(i32 %69) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %if.then.i
  %master_ctrl_data.0.i = phi i32 [ %73, %if.then.i ], [ %74, %if.else.i ]
  %and.i71 = and i32 %master_ctrl_data.0.i, -19457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  tail call void @arm_heavy_mb() #10
  %75 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw, align 4
  %add.ptr23.i = getelementptr i8, ptr %76, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 -1) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %77 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw, align 4
  %add.ptr28.i = getelementptr i8, ptr %78, i32 5280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 0) #10, !srcloc !220
  %ctrl_flags.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 28
  %79 = ptrtoint ptr %ctrl_flags.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %ctrl_flags.i, align 4
  %81 = and i16 %80, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool30.not.i = icmp eq i16 %81, 0
  br i1 %tobool30.not.i, label %do.end.i.do.body38.i_crit_edge, label %if.then31.i

do.end.i.do.body38.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38.i

if.then31.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %cmp.i72 = icmp eq i32 %83, 2
  %spec.select.i = select i1 %cmp.i72, i32 520093696, i32 1056964608
  br label %do.body38.i

do.body38.i:                                      ; preds = %if.then31.i, %do.end.i.do.body38.i_crit_edge
  %data.0.i = phi i32 [ %spec.select.i, %if.then31.i ], [ 0, %do.end.i.do.body38.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  tail call void @arm_heavy_mb() #10
  %84 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw, align 4
  %add.ptr42.i = getelementptr i8, ptr %85, i32 6164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %data.0.i) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @arm_heavy_mb() #10
  %ict.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 27
  %86 = ptrtoint ptr %ict.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %ict.i, align 2
  %conv46.i = zext i16 %87 to i32
  %88 = tail call i32 @llvm.bswap.i32(i32 %conv46.i) #10
  %89 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw, align 4
  %add.ptr49.i = getelementptr i8, ptr %90, i32 5640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 %88) #10, !srcloc !220
  %91 = ptrtoint ptr %tx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx_queue_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp.i.i = icmp eq i32 %92, 1
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 2, i32 %92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  tail call void @arm_heavy_mb() #10
  %93 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw, align 4
  %add.ptr.i.i = getelementptr i8, ptr %94, i32 5444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !220
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i.i)
  %cmp9194.i.i = icmp sgt i32 %spec.store.select.i.i, 0
  br i1 %cmp9194.i.i, label %do.body38.i.do.body11.i.i_crit_edge, label %do.body38.i.do.body23.i.i_crit_edge

do.body38.i.do.body23.i.i_crit_edge:              ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body23.i.i

do.body38.i.do.body11.i.i_crit_edge:              ; preds = %do.body38.i
  br label %do.body11.i.i

do.body11.i.i:                                    ; preds = %do.body11.i.i.do.body11.i.i_crit_edge, %do.body38.i.do.body11.i.i_crit_edge
  %i.0195.i.i = phi i32 [ %inc.i.i, %do.body11.i.i.do.body11.i.i_crit_edge ], [ 0, %do.body38.i.do.body11.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  %dma15.i.i = getelementptr %struct.atl1c_tpd_ring, ptr %tpd_ring1.i, i32 %i.0195.i.i, i32 2
  %95 = ptrtoint ptr %dma15.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dma15.i.i, align 8
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #10
  %98 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hw, align 4
  %arrayidx20.i.i = getelementptr [4 x %struct.atl1c_qregs], ptr @atl1c_qregs, i32 0, i32 %i.0195.i.i
  %100 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx20.i.i, align 4
  %conv21.i.i = zext i16 %101 to i32
  %add.ptr22.i.i = getelementptr i8, ptr %99, i32 %conv21.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.i, i32 %97) #10, !srcloc !220
  %inc.i.i = add nuw nsw i32 %i.0195.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %spec.store.select.i.i
  br i1 %exitcond.not.i.i, label %do.body11.i.i.do.body23.i.i_crit_edge, label %do.body11.i.i.do.body11.i.i_crit_edge

do.body11.i.i.do.body11.i.i_crit_edge:            ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11.i.i

do.body11.i.i.do.body23.i.i_crit_edge:            ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body23.i.i

do.body23.i.i:                                    ; preds = %do.body11.i.i.do.body23.i.i_crit_edge, %do.body38.i.do.body23.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  tail call void @arm_heavy_mb() #10
  %count.i.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 22, i32 0, i32 5
  %102 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %count.i.i, align 8
  %conv27.i.i = zext i16 %103 to i32
  %104 = tail call i32 @llvm.bswap.i32(i32 %conv27.i.i) #10
  %105 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hw, align 4
  %add.ptr30.i.i = getelementptr i8, ptr %106, i32 5508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i, i32 %104) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @arm_heavy_mb() #10
  %107 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw, align 4
  %add.ptr40.i.i = getelementptr i8, ptr %108, i32 5440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i.i, i32 0) #10, !srcloc !220
  %109 = ptrtoint ptr %rx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rx_queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp42196.not.i.i = icmp eq i32 %110, 0
  br i1 %cmp42196.not.i.i, label %do.body23.i.i.do.body60.i.i_crit_edge, label %do.body23.i.i.do.body45.i.i_crit_edge

do.body23.i.i.do.body45.i.i_crit_edge:            ; preds = %do.body23.i.i
  br label %do.body45.i.i

do.body23.i.i.do.body60.i.i_crit_edge:            ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body60.i.i

do.body45.i.i:                                    ; preds = %do.body45.i.i.do.body45.i.i_crit_edge, %do.body23.i.i.do.body45.i.i_crit_edge
  %i.1197.i.i = phi i32 [ %inc58.i.i, %do.body45.i.i.do.body45.i.i_crit_edge ], [ 0, %do.body23.i.i.do.body45.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  tail call void @arm_heavy_mb() #10
  %dma49.i.i = getelementptr %struct.atl1c_rfd_ring, ptr %rfd_ring2.i, i32 %i.1197.i.i, i32 1
  %111 = ptrtoint ptr %dma49.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dma49.i.i, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #10
  %114 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hw, align 4
  %rfd_addr_lo.i.i = getelementptr [4 x %struct.atl1c_qregs], ptr @atl1c_qregs, i32 0, i32 %i.1197.i.i, i32 3
  %116 = ptrtoint ptr %rfd_addr_lo.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %rfd_addr_lo.i.i, align 2
  %conv55.i.i = zext i16 %117 to i32
  %add.ptr56.i.i = getelementptr i8, ptr %115, i32 %conv55.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i.i, i32 %113) #10, !srcloc !220
  %inc58.i.i = add nuw i32 %i.1197.i.i, 1
  %118 = ptrtoint ptr %rx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rx_queue_count.i, align 4
  %cmp42.i.i = icmp ult i32 %inc58.i.i, %119
  br i1 %cmp42.i.i, label %do.body45.i.i.do.body45.i.i_crit_edge, label %do.body45.i.i.do.body60.i.i_crit_edge

do.body45.i.i.do.body60.i.i_crit_edge:            ; preds = %do.body45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body60.i.i

do.body45.i.i.do.body45.i.i_crit_edge:            ; preds = %do.body45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45.i.i

do.body60.i.i:                                    ; preds = %do.body45.i.i.do.body60.i.i_crit_edge, %do.body23.i.i.do.body60.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  tail call void @arm_heavy_mb() #10
  %count63.i.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 23, i32 0, i32 3
  %120 = ptrtoint ptr %count63.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %count63.i.i, align 2
  %122 = and i16 %121, 4095
  %and65.i.i = zext i16 %122 to i32
  %123 = tail call i32 @llvm.bswap.i32(i32 %and65.i.i) #10
  %124 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hw, align 4
  %add.ptr67.i.i = getelementptr i8, ptr %125, i32 5472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i.i, i32 %123) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %rx_buffer_len.i.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 6
  %126 = ptrtoint ptr %rx_buffer_len.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %rx_buffer_len.i.i, align 4
  %conv71.i.i = zext i16 %127 to i32
  %128 = tail call i32 @llvm.bswap.i32(i32 %conv71.i.i) #10
  %129 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hw, align 4
  %add.ptr74.i.i = getelementptr i8, ptr %130, i32 5476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i.i, i32 %128) #10, !srcloc !220
  %131 = ptrtoint ptr %rx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rx_queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp77198.not.i.i = icmp eq i32 %132, 0
  br i1 %cmp77198.not.i.i, label %do.body60.i.i.do.body95.i.i_crit_edge, label %do.body60.i.i.do.body80.i.i_crit_edge

do.body60.i.i.do.body80.i.i_crit_edge:            ; preds = %do.body60.i.i
  br label %do.body80.i.i

do.body60.i.i.do.body95.i.i_crit_edge:            ; preds = %do.body60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body95.i.i

do.body80.i.i:                                    ; preds = %do.body80.i.i.do.body80.i.i_crit_edge, %do.body60.i.i.do.body80.i.i_crit_edge
  %i.2199.i.i = phi i32 [ %inc93.i.i, %do.body80.i.i.do.body80.i.i_crit_edge ], [ 0, %do.body60.i.i.do.body80.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !252
  tail call void @arm_heavy_mb() #10
  %dma84.i.i = getelementptr %struct.atl1c_rrd_ring, ptr %rrd_ring4.i, i32 %i.2199.i.i, i32 2
  %133 = ptrtoint ptr %dma84.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dma84.i.i, align 8
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #10
  %136 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hw, align 4
  %rrd_addr_lo.i.i = getelementptr [4 x %struct.atl1c_qregs], ptr @atl1c_qregs, i32 0, i32 %i.2199.i.i, i32 4
  %138 = ptrtoint ptr %rrd_addr_lo.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %rrd_addr_lo.i.i, align 4
  %conv90.i.i = zext i16 %139 to i32
  %add.ptr91.i.i = getelementptr i8, ptr %137, i32 %conv90.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91.i.i, i32 %135) #10, !srcloc !220
  %inc93.i.i = add nuw i32 %i.2199.i.i, 1
  %140 = ptrtoint ptr %rx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %rx_queue_count.i, align 4
  %cmp77.i.i = icmp ult i32 %inc93.i.i, %141
  br i1 %cmp77.i.i, label %do.body80.i.i.do.body80.i.i_crit_edge, label %do.body80.i.i.do.body95.i.i_crit_edge

do.body80.i.i.do.body95.i.i_crit_edge:            ; preds = %do.body80.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body95.i.i

do.body80.i.i.do.body80.i.i_crit_edge:            ; preds = %do.body80.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body80.i.i

do.body95.i.i:                                    ; preds = %do.body80.i.i.do.body95.i.i_crit_edge, %do.body60.i.i.do.body95.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  tail call void @arm_heavy_mb() #10
  %count98.i.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 24, i32 0, i32 5
  %142 = ptrtoint ptr %count98.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %count98.i.i, align 8
  %144 = and i16 %143, 4095
  %and100.i.i = zext i16 %144 to i32
  %145 = tail call i32 @llvm.bswap.i32(i32 %and100.i.i) #10
  %146 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hw, align 4
  %add.ptr102.i.i = getelementptr i8, ptr %147, i32 5496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102.i.i, i32 %145) #10, !srcloc !220
  %148 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %nic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %149)
  %cmp103.i.i = icmp eq i32 %149, 2
  br i1 %cmp103.i.i, label %do.body106.i.i, label %do.body95.i.i.atl1c_configure_des_ring.exit.i_crit_edge

do.body95.i.i.atl1c_configure_des_ring.exit.i_crit_edge: ; preds = %do.body95.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_configure_des_ring.exit.i

do.body106.i.i:                                   ; preds = %do.body95.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !254
  tail call void @arm_heavy_mb() #10
  %150 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hw, align 4
  %add.ptr110.i.i = getelementptr i8, ptr %151, i32 5412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110.i.i, i32 -1610481664) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  tail call void @arm_heavy_mb() #10
  %152 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hw, align 4
  %add.ptr115.i.i = getelementptr i8, ptr %153, i32 5420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115.i.i, i32 65536) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @arm_heavy_mb() #10
  %154 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hw, align 4
  %add.ptr120.i.i = getelementptr i8, ptr %155, i32 5408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120.i.i, i32 40706) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  tail call void @arm_heavy_mb() #10
  %156 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %hw, align 4
  %add.ptr125.i.i = getelementptr i8, ptr %157, i32 5376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125.i.i, i32 -1610432766) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  tail call void @arm_heavy_mb() #10
  %158 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hw, align 4
  %add.ptr130.i.i = getelementptr i8, ptr %159, i32 5416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130.i.i, i32 -1073561853) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  tail call void @arm_heavy_mb() #10
  %160 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hw, align 4
  %add.ptr135.i.i = getelementptr i8, ptr %161, i32 5400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135.i.i, i32 -1073488125) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  tail call void @arm_heavy_mb() #10
  %162 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hw, align 4
  %add.ptr140.i.i = getelementptr i8, ptr %163, i32 5528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140.i.i, i32 0) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %164 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hw, align 4
  %add.ptr145.i.i = getelementptr i8, ptr %165, i32 5548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145.i.i, i32 0) #10, !srcloc !220
  br label %atl1c_configure_des_ring.exit.i

atl1c_configure_des_ring.exit.i:                  ; preds = %do.body106.i.i, %do.body95.i.i.atl1c_configure_des_ring.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !262
  tail call void @arm_heavy_mb() #10
  %166 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %hw, align 4
  %add.ptr151.i.i = getelementptr i8, ptr %167, i32 5428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr151.i.i, i32 16777216) #10, !srcloc !220
  %168 = ptrtoint ptr %ctrl_flags.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %ctrl_flags.i, align 4
  %170 = and i16 %169, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %170)
  %tobool53.not.i = icmp eq i16 %170, 0
  br i1 %tobool53.not.i, label %atl1c_configure_des_ring.exit.i.if.end66.i_crit_edge, label %if.then54.i

atl1c_configure_des_ring.exit.i.if.end66.i_crit_edge: ; preds = %atl1c_configure_des_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

if.then54.i:                                      ; preds = %atl1c_configure_des_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_imt.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 25
  %171 = ptrtoint ptr %tx_imt.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %tx_imt.i, align 2
  %conv55.i = zext i16 %172 to i32
  %rx_imt.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 26
  %173 = ptrtoint ptr %rx_imt.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %rx_imt.i, align 4
  %conv57.i = zext i16 %174 to i32
  %shl59.i = shl nuw i32 %conv57.i, 16
  %or.i = or i32 %shl59.i, %conv55.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !263
  tail call void @arm_heavy_mb() #10
  %175 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %176 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hw, align 4
  %add.ptr64.i = getelementptr i8, ptr %177, i32 5128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 %175) #10, !srcloc !220
  %or65.i = or i32 %and.i71, 3072
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then54.i, %atl1c_configure_des_ring.exit.i.if.end66.i_crit_edge
  %master_ctrl_data.1.i = phi i32 [ %or65.i, %if.then54.i ], [ %and.i71, %atl1c_configure_des_ring.exit.i.if.end66.i_crit_edge ]
  %178 = ptrtoint ptr %ctrl_flags.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %ctrl_flags.i, align 4
  %180 = shl i16 %179, 14
  %181 = and i16 %180, 16384
  %182 = zext i16 %181 to i32
  %183 = or i32 %master_ctrl_data.1.i, %182
  %or74.i = or i32 %183, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  %184 = tail call i32 @llvm.bswap.i32(i32 %or74.i) #10
  %185 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hw, align 4
  %add.ptr79.i = getelementptr i8, ptr %186, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.i, i32 %184) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !265
  tail call void @arm_heavy_mb() #10
  %smb_timer.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 30
  %187 = ptrtoint ptr %smb_timer.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %smb_timer.i, align 4
  %and83.i = and i32 %188, 16777215
  %189 = tail call i32 @llvm.bswap.i32(i32 %and83.i) #10
  %190 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hw, align 4
  %add.ptr85.i = getelementptr i8, ptr %191, i32 5572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i, i32 %189) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !266
  tail call void @arm_heavy_mb() #10
  %max_frame_size.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 16
  %192 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %max_frame_size.i, align 2
  %conv89.i = zext i16 %193 to i32
  %add91.i = add nuw nsw i32 %conv89.i, 22
  %194 = tail call i32 @llvm.bswap.i32(i32 %add91.i) #10
  %195 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hw, align 4
  %add.ptr93.i = getelementptr i8, ptr %196, i32 5276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i, i32 %194) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !267
  tail call void @arm_heavy_mb() #10
  %197 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %hw, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %198, i32 5524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 -2147287040) #10, !srcloc !220
  %199 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %pdev1.i, align 4
  %call.i.i = tail call i32 @pcie_get_readrq(ptr noundef %200) #10
  %shr2.i.i = ashr i32 %call.i.i, 8
  %dmar_block.i.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 5
  %201 = ptrtoint ptr %dmar_block.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %dmar_block.i.i, align 4
  %203 = tail call i32 @llvm.umin.i32(i32 %shr2.i.i, i32 %202) #10
  %204 = ptrtoint ptr %dmar_block.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %dmar_block.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %203)
  %cmp6.i.i = icmp ult i32 %203, 2
  br i1 %cmp6.i.i, label %if.then.i.i, label %if.end66.i.atl1c_configure_tx.exit.i_crit_edge

if.end66.i.atl1c_configure_tx.exit.i_crit_edge:   ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_configure_tx.exit.i

if.then.i.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  %205 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %pdev1.i, align 4
  %call9.i.i = tail call i32 @pcie_set_readrq(ptr noundef %206, i32 noundef 512) #10
  %207 = ptrtoint ptr %dmar_block.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 2, ptr %dmar_block.i.i, align 4
  br label %atl1c_configure_tx.exit.i

atl1c_configure_tx.exit.i:                        ; preds = %if.then.i.i, %if.end66.i.atl1c_configure_tx.exit.i_crit_edge
  %208 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %nic_type, align 4
  %210 = and i32 %209, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %210)
  %211 = icmp eq i32 %210, 2
  %212 = select i1 %211, i32 4194517, i32 33554645
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  tail call void @arm_heavy_mb() #10
  %213 = tail call i32 @llvm.bswap.i32(i32 %212) #10
  %214 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %hw, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %215, i32 5520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 %213) #10, !srcloc !220
  %rfd_burst.i.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 34
  %216 = ptrtoint ptr %rfd_burst.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %rfd_burst.i.i, align 1
  %218 = and i8 %217, 63
  %and.i.i = zext i8 %218 to i32
  %shl.i.i = shl nuw nsw i32 %and.i.i, 20
  %219 = ptrtoint ptr %ctrl_flags.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %ctrl_flags.i, align 4
  %221 = shl i16 %220, 1
  %222 = and i16 %221, 128
  %223 = zext i16 %222 to i32
  %224 = or i32 %shl.i.i, %223
  %225 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %nic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %226)
  %cmp.not.i.i = icmp eq i32 %226, 5
  br i1 %cmp.not.i.i, label %atl1c_configure_tx.exit.i.atl1c_configure_mac.exit_crit_edge, label %land.lhs.true.i.i

atl1c_configure_tx.exit.i.atl1c_configure_mac.exit_crit_edge: ; preds = %atl1c_configure_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_configure_mac.exit

land.lhs.true.i.i:                                ; preds = %atl1c_configure_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %device_id.i.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 6
  %227 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %device_id.i.i, align 4
  %229 = and i16 %228, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %229)
  %cmp7.not.i.i = icmp eq i16 %229, 0
  %or11.i.i = or i32 %224, 3
  %spec.select19.i.i = select i1 %cmp7.not.i.i, i32 %224, i32 %or11.i.i
  br label %atl1c_configure_mac.exit

atl1c_configure_mac.exit:                         ; preds = %land.lhs.true.i.i, %atl1c_configure_tx.exit.i.atl1c_configure_mac.exit_crit_edge
  %rxq_ctrl_data.1.i.i = phi i32 [ %224, %atl1c_configure_tx.exit.i.atl1c_configure_mac.exit_crit_edge ], [ %spec.select19.i.i, %land.lhs.true.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !269
  tail call void @arm_heavy_mb() #10
  %230 = tail call i32 @llvm.bswap.i32(i32 %rxq_ctrl_data.1.i.i) #10
  %231 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %hw, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %232, i32 5536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %230) #10, !srcloc !220
  %233 = ptrtoint ptr %dmar_block.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %dmar_block.i.i, align 4
  %and.i10.i = shl i32 %234, 4
  %shl.i11.i = and i32 %and.i10.i, 112
  %or3.i.i = or i32 %shl.i11.i, 293892
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  tail call void @arm_heavy_mb() #10
  %235 = tail call i32 @llvm.bswap.i32(i32 %or3.i.i) #10
  %236 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %hw, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %237, i32 5568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %235) #10, !srcloc !220
  br label %cleanup

cleanup:                                          ; preds = %atl1c_configure_mac.exit, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %atl1c_configure_mac.exit ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl1c_request_irq(ptr nocapture noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %have_msi = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 12
  %4 = ptrtoint ptr %have_msi to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %have_msi, align 4
  %call = tail call i32 @pci_enable_msi(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 11
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 8
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %have_msi to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %have_msi, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %8 = ptrtoint ptr %have_msi to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %have_msi, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  %spec.select = select i1 %tobool9.not, i32 128, i32 0
  %10 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev1, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %13, ptr noundef nonnull @atl1c_intr, ptr noundef null, i32 noundef %spec.select, ptr noundef %3, ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  %msg_enable31 = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 11
  %14 = ptrtoint ptr %msg_enable31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable31, align 8
  %and32 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool14.not, label %if.end30, label %if.then15

if.then15:                                        ; preds = %if.end7
  br i1 %tobool33.not, label %if.then15.if.end24_crit_edge, label %do.end22

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.end22:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.19, i32 noundef %call.i) #13
  br label %if.end24

if.end24:                                         ; preds = %do.end22, %if.then15.if.end24_crit_edge
  %16 = ptrtoint ptr %have_msi to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %have_msi, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool26.not = icmp eq i8 %17, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.then27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev1, align 4
  tail call void @pci_disable_msi(ptr noundef %19) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end7
  br i1 %tobool33.not, label %if.end30.cleanup_crit_edge, label %do.body35

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1c_request_irq.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1c_request_irq, %if.then40)) #10
          to label %cleanup [label %if.then40], !srcloc !236

if.then40:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atl1c_request_irq.__UNIQUE_ID_ddebug512, ptr noundef %dev41, ptr noundef nonnull @.str.21) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %do.body35, %if.end30.cleanup_crit_edge, %if.then27, %if.end24.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1c_check_link_status(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  %speed = alloca i16, align 2
  %duplex = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %pdev3 = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 1
  %2 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %speed) #10
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %speed, align 2, !annotation !271
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %duplex) #10
  %5 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %duplex, align 2, !annotation !271
  %mdio_lock = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 16
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mdio_lock) #10
  %call8 = tail call zeroext i1 @atl1c_get_link_status(ptr noundef %hw1) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mdio_lock, i32 noundef %call5) #10
  br i1 %call8, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @netif_carrier_off(ptr noundef %1) #10
  %hibernate = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 20
  %6 = ptrtoint ptr %hibernate to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %hibernate, align 1
  %call10 = tail call fastcc i32 @atl1c_reset_mac(ptr noundef %hw1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.then.if.end19_crit_edge, label %if.then13

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then13:                                        ; preds = %if.then
  %msg_enable = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 11
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 8
  %and = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.then13.if.end19_crit_edge, label %do.end18

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.end18:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.30) #13
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %if.then13.if.end19_crit_edge, %if.then.if.end19_crit_edge
  tail call fastcc void @atl1c_set_aspm(ptr noundef %hw1, i16 noundef zeroext -1)
  tail call void @atl1c_post_phy_linkchg(ptr noundef %hw1, i16 noundef zeroext -1) #10
  tail call fastcc void @atl1c_reset_dma_ring(ptr noundef %adapter)
  %call20 = tail call fastcc i32 @atl1c_configure(ptr noundef %adapter)
  br label %cleanup

if.else:                                          ; preds = %entry
  %hibernate21 = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 20
  %9 = ptrtoint ptr %hibernate21 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %hibernate21, align 1
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mdio_lock) #10
  %call36 = call i32 @atl1c_get_speed_and_duplex(ptr noundef %hw1, ptr noundef nonnull %speed, ptr noundef nonnull %duplex) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mdio_lock, i32 noundef %call31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool38.not = icmp eq i32 %call36, 0
  br i1 %tobool38.not, label %if.end42, label %if.else.cleanup_crit_edge, !prof !225

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %if.else
  %link_speed = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 14
  %10 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %link_speed, align 4
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp45.not = icmp eq i16 %11, %13
  br i1 %cmp45.not, label %lor.lhs.false, label %if.end42.if.then51_crit_edge

if.end42.if.then51_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

lor.lhs.false:                                    ; preds = %if.end42
  %link_duplex = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 15
  %14 = ptrtoint ptr %link_duplex to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %link_duplex, align 2
  %16 = ptrtoint ptr %duplex to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp49.not = icmp eq i16 %15, %17
  br i1 %cmp49.not, label %lor.lhs.false.if.end69_crit_edge, label %lor.lhs.false.if.then51_crit_edge

lor.lhs.false.if.then51_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

lor.lhs.false.if.end69_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then51:                                        ; preds = %lor.lhs.false.if.then51_crit_edge, %if.end42.if.then51_crit_edge
  %18 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %13, ptr %link_speed, align 4
  %19 = ptrtoint ptr %duplex to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %duplex, align 2
  %link_duplex53 = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 15
  %21 = ptrtoint ptr %link_duplex53 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %link_duplex53, align 2
  call fastcc void @atl1c_set_aspm(ptr noundef %hw1, i16 noundef zeroext %13)
  %22 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %speed, align 2
  call void @atl1c_post_phy_linkchg(ptr noundef %hw1, i16 noundef zeroext %23) #10
  %24 = ptrtoint ptr %link_duplex53 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %link_duplex53, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %25)
  %cmp.i = icmp eq i16 %25, 2
  %mac_duplex.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 19
  %frombool.i = zext i1 %cmp.i to i8
  %26 = ptrtoint ptr %mac_duplex.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool.i, ptr %mac_duplex.i, align 4
  %27 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %link_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %28)
  %cmp4.i = icmp eq i16 %28, 1000
  %cond.i = select i1 %cmp4.i, i32 2, i32 1
  %mac_speed.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 18
  %29 = ptrtoint ptr %mac_speed.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond.i, ptr %mac_speed.i, align 4
  %30 = ptrtoint ptr %hibernate21 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hibernate21, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  %32 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw1, align 4
  %add.ptr19.i = getelementptr i8, ptr %33, i32 5520
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #10
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !225

if.then.i:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !272
  %35 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw1, align 4
  %add.ptr12.i = getelementptr i8, ptr %36, i32 5520
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #10, !srcloc !222
  %38 = call i32 @llvm.bswap.i32(i32 %37) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !273
  br label %do.body23.i

if.else.i:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %39 = call i32 @llvm.bswap.i32(i32 %34) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !274
  br label %do.body23.i

do.body23.i:                                      ; preds = %if.else.i, %if.then.i
  %txq.0.i = phi i32 [ %38, %if.then.i ], [ %39, %if.else.i ]
  %40 = ptrtoint ptr %hibernate21 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hibernate21, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool25.not.i = icmp eq i8 %41, 0
  %42 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw1, align 4
  %add.ptr51.i = getelementptr i8, ptr %43, i32 5536
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i) #10
  br i1 %tobool25.not.i, label %if.else47.i, label %if.then32.i, !prof !225

if.then32.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !275
  %45 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw1, align 4
  %add.ptr43.i = getelementptr i8, ptr %46, i32 5536
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43.i) #10, !srcloc !222
  %48 = call i32 @llvm.bswap.i32(i32 %47) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !276
  br label %do.body58.i

if.else47.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = call i32 @llvm.bswap.i32(i32 %44) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !277
  br label %do.body58.i

do.body58.i:                                      ; preds = %if.else47.i, %if.then32.i
  %rxq.0.i = phi i32 [ %48, %if.then32.i ], [ %49, %if.else47.i ]
  %50 = ptrtoint ptr %hibernate21 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %hibernate21, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool60.not.i = icmp eq i8 %51, 0
  %52 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw1, align 4
  %add.ptr86.i = getelementptr i8, ptr %53, i32 5248
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86.i) #10
  br i1 %tobool60.not.i, label %if.else82.i, label %if.then67.i, !prof !225

if.then67.i:                                      ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  %55 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw1, align 4
  %add.ptr78.i = getelementptr i8, ptr %56, i32 5248
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78.i) #10, !srcloc !222
  %58 = call i32 @llvm.bswap.i32(i32 %57) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  br label %atl1c_start_mac.exit

if.else82.i:                                      ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = call i32 @llvm.bswap.i32(i32 %54) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !280
  br label %atl1c_start_mac.exit

atl1c_start_mac.exit:                             ; preds = %if.else82.i, %if.then67.i
  %mac.0.i = phi i32 [ %58, %if.then67.i ], [ %59, %if.else82.i ]
  %60 = ptrtoint ptr %mac_duplex.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %mac_duplex.i, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool96.not.i = icmp eq i8 %61, 0
  %or98.i = or i32 %mac.0.i, 872415471
  %or94.i = and i32 %mac.0.i, -875576560
  %and.i = or i32 %or94.i, 872415439
  %mac.1.i = select i1 %tobool96.not.i, i32 %and.i, i32 %or98.i
  %or93.i = or i32 %rxq.0.i, -2147483648
  %or.i = or i32 %txq.0.i, 32
  %and101.i = and i32 %mac.1.i, -3161089
  %62 = ptrtoint ptr %mac_speed.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mac_speed.i, align 4
  %and103.i = shl i32 %63, 20
  %shl.i = and i32 %and103.i, 3145728
  %or104.i = or i32 %and101.i, %shl.i
  %preamble_len.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3, i32 15
  %64 = ptrtoint ptr %preamble_len.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %preamble_len.i, align 4
  %66 = and i8 %65, 15
  %and107.i = zext i8 %66 to i32
  %shl108.i = shl nuw nsw i32 %and107.i, 10
  %or109.i = or i32 %shl108.i, %or104.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !281
  call void @arm_heavy_mb() #10
  %67 = call i32 @llvm.bswap.i32(i32 %or.i) #10
  %68 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw1, align 4
  %add.ptr114.i = getelementptr i8, ptr %69, i32 5520
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114.i, i32 %67) #10, !srcloc !220
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !282
  call void @arm_heavy_mb() #10
  %70 = call i32 @llvm.bswap.i32(i32 %or93.i) #10
  %71 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw1, align 4
  %add.ptr119.i = getelementptr i8, ptr %72, i32 5536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119.i, i32 %70) #10, !srcloc !220
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  call void @arm_heavy_mb() #10
  %73 = call i32 @llvm.bswap.i32(i32 %or109.i) #10
  %74 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw1, align 4
  %add.ptr124.i = getelementptr i8, ptr %75, i32 5248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124.i, i32 %73) #10, !srcloc !220
  %msg_enable54 = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 11
  %76 = ptrtoint ptr %msg_enable54 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %msg_enable54, align 8
  %and55 = and i32 %77, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %atl1c_start_mac.exit.if.end69_crit_edge, label %do.end60

atl1c_start_mac.exit.if.end69_crit_edge:          ; preds = %atl1c_start_mac.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

do.end60:                                         ; preds = %atl1c_start_mac.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %78 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %link_speed, align 4
  %conv63 = zext i16 %79 to i32
  %80 = ptrtoint ptr %link_duplex53 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %link_duplex53, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %81)
  %cmp66 = icmp eq i16 %81, 2
  %cond = select i1 %cmp66, ptr @.str.35, ptr @.str.36
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev61, ptr noundef nonnull @.str.33, ptr noundef nonnull @atl1c_driver_name, ptr noundef %1, i32 noundef %conv63, ptr noundef nonnull %cond) #13
  br label %if.end69

if.end69:                                         ; preds = %do.end60, %atl1c_start_mac.exit.if.end69_crit_edge, %lor.lhs.false.if.end69_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %82 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %state.i, align 4
  %84 = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i111 = icmp eq i32 %84, 0
  br i1 %tobool.not.i111, label %if.end69.cleanup_crit_edge, label %if.then71

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  call void @netif_carrier_on(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %if.end69.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %duplex) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1c_clean_rx_ring(ptr nocapture noundef %adapter, i32 noundef %queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 23, i32 %queue, i32 3
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp24.not = icmp eq i16 %1, 0
  br i1 %cmp24.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev4 = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 1
  %2 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev4, align 4
  %buffer_info6 = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 23, i32 %queue, i32 6
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %atl1c_clean_buffer.exit.for.body_crit_edge, %for.body.lr.ph
  %j.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %atl1c_clean_buffer.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %buffer_info6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer_info6, align 4
  %arrayidx7 = getelementptr %struct.atl1c_buffer, ptr %5, i32 %j.025
  %flags.i = getelementptr %struct.atl1c_buffer, ptr %5, i32 %j.025, i32 2
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 2
  %conv.i = zext i16 %7 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.atl1c_clean_buffer.exit_crit_edge

for.body.atl1c_clean_buffer.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_clean_buffer.exit

if.end.i:                                         ; preds = %for.body
  %dma.i = getelementptr %struct.atl1c_buffer, ptr %5, i32 %j.025, i32 3
  %8 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.i = icmp eq i32 %9, 0
  %10 = and i32 %conv.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  %or.cond = select i1 %tobool1.not.i, i1 true, i1 %11
  br i1 %or.cond, label %if.end.i.if.end30.i_crit_edge, label %if.end30.sink.split.i

if.end.i.if.end30.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.end30.sink.split.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %and5.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %..i = select i1 %tobool6.not.i, i32 1, i32 2
  %length.i = getelementptr %struct.atl1c_buffer, ptr %5, i32 %j.025, i32 1
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length.i, align 4
  %conv15.i = zext i16 %13 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %9, i32 noundef %conv15.i, i32 noundef %..i, i32 noundef 0) #10
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end30.sink.split.i, %if.end.i.if.end30.i_crit_edge
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx7, align 4
  %tobool31.not.i = icmp eq ptr %15, null
  br i1 %tobool31.not.i, label %if.end30.i.if.end34.i_crit_edge, label %if.then32.i

if.end30.i.if.end34.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %15, i32 noundef 0) #10
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end30.i.if.end34.i_crit_edge
  %16 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %dma.i, align 4
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx7, align 4
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags.i, align 2
  %20 = and i16 %19, -4
  %21 = or i16 %20, 1
  store i16 %21, ptr %flags.i, align 2
  br label %atl1c_clean_buffer.exit

atl1c_clean_buffer.exit:                          ; preds = %if.end34.i, %for.body.atl1c_clean_buffer.exit_crit_edge
  %inc = add nuw nsw i32 %j.025, 1
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %count, align 2
  %conv = zext i16 %23 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %atl1c_clean_buffer.exit.for.body_crit_edge, label %atl1c_clean_buffer.exit.for.end_crit_edge

atl1c_clean_buffer.exit.for.end_crit_edge:        ; preds = %atl1c_clean_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

atl1c_clean_buffer.exit.for.body_crit_edge:       ; preds = %atl1c_clean_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %atl1c_clean_buffer.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %arrayidx = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 23, i32 %queue
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %size = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 23, i32 %queue, i32 2
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %size, align 4
  %conv8 = zext i16 %27 to i32
  %28 = call ptr @memset(ptr %25, i32 0, i32 %conv8)
  %next_to_clean = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 23, i32 %queue, i32 5
  %29 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %next_to_clean, align 2
  %next_to_use = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 23, i32 %queue, i32 4
  %30 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %next_to_use, align 4
  %next_to_use9 = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 24, i32 %queue, i32 6
  %31 = ptrtoint ptr %next_to_use9 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %next_to_use9, align 2
  %next_to_clean10 = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 24, i32 %queue, i32 7
  %32 = ptrtoint ptr %next_to_clean10 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %next_to_clean10, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1c_set_multi(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2316
  %hibernate = getelementptr i8, ptr %netdev, i32 2417
  %0 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hibernate, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %add.ptr16 = getelementptr i8, ptr %3, i32 5248
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #10
  br i1 %tobool.not, label %if.else, label %if.then, !prof !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !284
  %5 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw1, align 4
  %add.ptr9 = getelementptr i8, ptr %6, i32 5248
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #10, !srcloc !222
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %mac_ctrl_data.0 = phi i32 [ %8, %if.then ], [ %9, %if.else ]
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  %or = or i32 %mac_ctrl_data.0, 32768
  %and30 = and i32 %mac_ctrl_data.0, -33587201
  %and24 = shl i32 %11, 16
  %12 = and i32 %and24, 33554432
  %13 = or i32 %12, %and30
  %mac_ctrl_data.1 = select i1 %tobool20.not, i32 %13, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %mac_ctrl_data.1)
  %15 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw1, align 4
  %add.ptr37 = getelementptr i8, ptr %16, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %14) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !288
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw1, align 4
  %add.ptr42 = getelementptr i8, ptr %18, i32 5264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 0) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !289
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw1, align 4
  %add.ptr48 = getelementptr i8, ptr %20, i32 5268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 0) #10, !srcloc !220
  %mc = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %21 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %21)
  %ha.080 = load ptr, ptr %mc, align 4
  %cmp.not81 = icmp eq ptr %ha.080, %mc
  br i1 %cmp.not81, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %ha.082 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.080, %do.end.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.082, i32 0, i32 2
  %call56 = tail call i32 @atl1c_hash_mc_addr(ptr noundef %hw1, ptr noundef %addr) #10
  tail call void @atl1c_hash_set(ptr noundef %hw1, i32 noundef %call56) #10
  %22 = ptrtoint ptr %ha.082 to i32
  call void @__asan_load4_noabort(i32 %22)
  %ha.0 = load ptr, ptr %ha.082, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl1c_alloc_rx_buffer(ptr noundef %adapter, i32 noundef %queue, i1 noundef zeroext %napi_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 23, i32 %queue
  %pdev2 = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev2, align 4
  %next_to_use = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 23, i32 %queue, i32 4
  %2 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next_to_use, align 4
  %inc = add i16 %3, 1
  %count = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 23, i32 %queue, i32 3
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %5)
  %cmp = icmp eq i16 %inc, %5
  %spec.store.select = select i1 %cmp, i16 0, i16 %inc
  %buffer_info5 = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 23, i32 %queue, i32 6
  %6 = ptrtoint ptr %buffer_info5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer_info5, align 4
  %idxprom8 = zext i16 %spec.store.select to i32
  %flags202 = getelementptr %struct.atl1c_buffer, ptr %7, i32 %idxprom8, i32 2
  %8 = ptrtoint ptr %flags202 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags202, align 2
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not203 = icmp eq i16 %10, 0
  br i1 %tobool.not203, label %entry.if.end121_crit_edge, label %while.body.lr.ph

entry.if.end121_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

while.body.lr.ph:                                 ; preds = %entry
  %idxprom = zext i16 %3 to i32
  %arrayidx6 = getelementptr %struct.atl1c_buffer, ptr %7, i32 %idxprom
  %rx_buffer_len = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 6
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  br label %while.body

while.body:                                       ; preds = %if.end70.while.body_crit_edge, %while.body.lr.ph
  %next_next.0207 = phi i16 [ %spec.store.select, %while.body.lr.ph ], [ %spec.store.select123, %if.end70.while.body_crit_edge ]
  %rfd_next_to_use.0206 = phi i16 [ %3, %while.body.lr.ph ], [ %next_next.0207, %if.end70.while.body_crit_edge ]
  %num_alloc.0205 = phi i16 [ 0, %while.body.lr.ph ], [ %inc106, %if.end70.while.body_crit_edge ]
  %buffer_info.0204 = phi ptr [ %arrayidx6, %while.body.lr.ph ], [ %arrayidx102, %if.end70.while.body_crit_edge ]
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %idxprom11 = zext i16 %rfd_next_to_use.0206 to i32
  %arrayidx12 = getelementptr %struct.atl1c_rx_free_desc, ptr %12, i32 %idxprom11
  %call = tail call fastcc ptr @atl1c_alloc_skb(ptr noundef %adapter, i32 noundef %queue, i1 noundef zeroext %napi_mode)
  %tobool14.not = icmp eq ptr %call, null
  br i1 %tobool14.not, label %if.then18, label %if.end23, !prof !237

if.then18:                                        ; preds = %while.body
  %msg_enable = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 11
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 8
  %and19 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then18.while.end_crit_edge, label %do.end

if.then18.while.end_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev35, ptr noundef nonnull @.str.6) #13
  br label %while.end

if.end23:                                         ; preds = %while.body
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %flags25 = getelementptr inbounds %struct.atl1c_buffer, ptr %buffer_info.0204, i32 0, i32 2
  %17 = ptrtoint ptr %flags25 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags25, align 2
  %19 = and i16 %18, -4
  %20 = or i16 %19, 2
  store i16 %20, ptr %flags25, align 2
  %21 = ptrtoint ptr %buffer_info.0204 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %buffer_info.0204, align 4
  %22 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %rx_buffer_len, align 4
  %length = getelementptr inbounds %struct.atl1c_buffer, ptr %buffer_info.0204, i32 0, i32 1
  %24 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %length, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %16) #10
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end23
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !225

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev35) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %25 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev35, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %28, %if.end.i.i ], [ %26, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev35, i32 noundef -1) #10
  br label %if.then48

dma_map_single_attrs.exit:                        ; preds = %if.end23
  %conv37 = zext i16 %23 to i32
  tail call void @debug_dma_map_single(ptr noundef %dev35, ptr noundef %16, i32 noundef %conv37) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %29 = load ptr, ptr @mem_map, align 4
  %30 = ptrtoint ptr %16 to i32
  %sub.i = add i32 %30, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %29, i32 %shr.i
  %and.i = and i32 %30, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev35, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %conv37, i32 noundef 2, i32 noundef 0) #10
  tail call void @debug_dma_mapping_error(ptr noundef %dev35, i32 noundef %call41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then48_crit_edge, label %if.end70

dma_map_single_attrs.exit.if.then48_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

if.then48:                                        ; preds = %dma_map_single_attrs.exit.if.then48_crit_edge, %dma_map_single_attrs.exit.thread
  %length256 = getelementptr inbounds %struct.atl1c_buffer, ptr %buffer_info.0204, i32 0, i32 1
  tail call void @consume_skb(ptr noundef nonnull %call) #10
  %31 = ptrtoint ptr %buffer_info.0204 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %buffer_info.0204, align 4
  %32 = ptrtoint ptr %length256 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %length256, align 4
  %33 = ptrtoint ptr %flags25 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags25, align 2
  %35 = and i16 %34, -4
  %36 = or i16 %35, 1
  store i16 %36, ptr %flags25, align 2
  %msg_enable63 = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 11
  %37 = ptrtoint ptr %msg_enable63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable63, align 8
  %and64 = and i32 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.then48.while.end_crit_edge, label %if.then66

if.then48.while.end_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then66:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %40, ptr noundef nonnull @.str.10) #13
  br label %while.end

if.end70:                                         ; preds = %dma_map_single_attrs.exit
  %dma = getelementptr inbounds %struct.atl1c_buffer, ptr %buffer_info.0204, i32 0, i32 3
  %41 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call41.i, ptr %dma, align 4
  %42 = ptrtoint ptr %flags25 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %flags25, align 2
  %44 = and i16 %43, -61
  %45 = or i16 %44, 36
  store i16 %45, ptr %flags25, align 2
  %conv91 = zext i32 %call41.i to i64
  %46 = tail call i64 @llvm.bswap.i64(i64 %conv91)
  %47 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %arrayidx12, align 8
  %inc92 = add i16 %next_next.0207, 1
  %48 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc92, i16 %49)
  %cmp96 = icmp eq i16 %inc92, %49
  %spec.store.select123 = select i1 %cmp96, i16 0, i16 %inc92
  %50 = ptrtoint ptr %buffer_info5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buffer_info5, align 4
  %idxprom101 = zext i16 %next_next.0207 to i32
  %arrayidx102 = getelementptr %struct.atl1c_buffer, ptr %51, i32 %idxprom101
  %idxprom104 = zext i16 %spec.store.select123 to i32
  %inc106 = add i16 %num_alloc.0205, 1
  %flags = getelementptr %struct.atl1c_buffer, ptr %51, i32 %idxprom104, i32 2
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %flags, align 2
  %54 = and i16 %53, 1
  %tobool.not = icmp eq i16 %54, 0
  br i1 %tobool.not, label %if.end70.while.end_crit_edge, label %if.end70.while.body_crit_edge

if.end70.while.body_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end70.while.end_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end70.while.end_crit_edge, %if.then66, %if.then48.while.end_crit_edge, %do.end, %if.then18.while.end_crit_edge
  %num_alloc.0186 = phi i16 [ %num_alloc.0205, %if.then48.while.end_crit_edge ], [ %num_alloc.0205, %if.then66 ], [ %num_alloc.0205, %if.then18.while.end_crit_edge ], [ %num_alloc.0205, %do.end ], [ %inc106, %if.end70.while.end_crit_edge ]
  %rfd_next_to_use.0181 = phi i16 [ %rfd_next_to_use.0206, %if.then48.while.end_crit_edge ], [ %rfd_next_to_use.0206, %if.then66 ], [ %rfd_next_to_use.0206, %if.then18.while.end_crit_edge ], [ %rfd_next_to_use.0206, %do.end ], [ %next_next.0207, %if.end70.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %num_alloc.0186)
  %tobool107.not = icmp eq i16 %num_alloc.0186, 0
  br i1 %tobool107.not, label %while.end.if.end121_crit_edge, label %do.body109

while.end.if.end121_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

do.body109:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !290
  tail call void @arm_heavy_mb() #10
  %55 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %rfd_next_to_use.0181, ptr %next_to_use, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !291
  tail call void @arm_heavy_mb() #10
  %56 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %next_to_use, align 4
  %conv117 = zext i16 %57 to i32
  %58 = tail call i32 @llvm.bswap.i32(i32 %conv117)
  %hw = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 3
  %59 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw, align 4
  %rfd_prod = getelementptr [4 x %struct.atl1c_qregs], ptr @atl1c_qregs, i32 0, i32 %queue, i32 5
  %61 = ptrtoint ptr %rfd_prod to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %rfd_prod, align 2
  %conv120 = zext i16 %62 to i32
  %add.ptr = getelementptr i8, ptr %60, i32 %conv120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %58) #10, !srcloc !220
  br label %if.end121

if.end121:                                        ; preds = %do.body109, %while.end.if.end121_crit_edge, %entry.if.end121_crit_edge
  %num_alloc.0186234 = phi i16 [ %num_alloc.0186, %do.body109 ], [ 0, %while.end.if.end121_crit_edge ], [ 0, %entry.if.end121_crit_edge ]
  %conv122 = zext i16 %num_alloc.0186234 to i32
  ret i32 %conv122
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1c_hash_mc_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atl1c_hash_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1c_vlan_mode(ptr noundef %netdev, i64 noundef %features) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %msg_enable = getelementptr i8, ptr %netdev, i32 2720
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1c_vlan_mode.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1c_vlan_mode, %if.then6)) #10
          to label %if.end7 [label %if.then6], !srcloc !236

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atl1c_vlan_mode.__UNIQUE_ID_ddebug503, ptr noundef %dev, ptr noundef nonnull @.str.5) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.body, %entry.if.end7_crit_edge
  %irq_sem.i = getelementptr i8, ptr %netdev, i32 2780
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %irq_sem.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_sem.i, ptr %irq_sem.i, i32 1, ptr elementtype(i32) %irq_sem.i) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %hw.i = getelementptr i8, ptr %netdev, i32 2316
  %5 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %6, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 0) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 128) #10, !srcloc !220
  %9 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  %12 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev1, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %15) #10
  %hibernate = getelementptr i8, ptr %netdev, i32 2417
  %16 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hibernate, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw.i, align 4
  %add.ptr33 = getelementptr i8, ptr %19, i32 5248
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #10
  br i1 %tobool9.not, label %if.else, label %if.then16, !prof !225

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  %21 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw.i, align 4
  %add.ptr25 = getelementptr i8, ptr %22, i32 5248
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #10, !srcloc !222
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  br label %do.end39

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %25 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  br label %do.end39

do.end39:                                         ; preds = %if.else, %if.then16
  %storemerge = phi i32 [ %25, %if.else ], [ %24, %if.then16 ]
  %and1.i = and i32 %storemerge, -16385
  %26 = trunc i64 %features to i32
  %27 = shl i32 %26, 6
  %28 = and i32 %27, 16384
  %storemerge.i = or i32 %and1.i, %28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !295
  tail call void @arm_heavy_mb() #10
  %29 = tail call i32 @llvm.bswap.i32(i32 %storemerge.i)
  %30 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw.i, align 4
  %add.ptr45 = getelementptr i8, ptr %31, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %29) #10, !srcloc !220
  %call.i.i.i56 = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !226
  tail call void @llvm.prefetch.p0(ptr %irq_sem.i, i32 1, i32 3, i32 1) #10
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_sem.i, ptr %irq_sem.i, i32 1, ptr elementtype(i32) %irq_sem.i) #10, !srcloc !227
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body.i, label %do.end39.atl1c_irq_enable.exit_crit_edge, !prof !225

do.end39.atl1c_irq_enable.exit_crit_edge:         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_irq_enable.exit

do.body.i:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %34, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 -129) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %intr_mask.i = getelementptr i8, ptr %netdev, i32 2400
  %35 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %intr_mask.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #10
  %38 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %39, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %37) #10, !srcloc !220
  %40 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw.i, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #10, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  br label %atl1c_irq_enable.exit

atl1c_irq_enable.exit:                            ; preds = %do.body.i, %do.end39.atl1c_irq_enable.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @atl1c_alloc_skb(ptr noundef %adapter, i32 noundef %queue, i1 noundef zeroext %napi_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_frag_size = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %rx_frag_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_frag_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp ugt i32 %1, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br i1 %napi_mode, label %if.then4, label %if.else, !prof !225

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %napi = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 24, i32 %queue, i32 8
  %rx_buffer_len = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 6
  %2 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rx_buffer_len, align 4
  %conv = zext i16 %3 to i32
  %call.i = tail call ptr @__napi_alloc_skb(ptr noundef %napi, i32 noundef %conv, i32 noundef 2592) #10
  br label %cleanup

if.else:                                          ; preds = %if.then
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %rx_buffer_len5 = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 6
  %6 = ptrtoint ptr %rx_buffer_len5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rx_buffer_len5, align 4
  %conv6 = zext i16 %7 to i32
  %add.i.i = add nuw nsw i32 %conv6, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %5, i32 noundef %add.i.i, i32 noundef 2592) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.else.cleanup_crit_edge, label %if.then.i.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %11, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_page = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 24, i32 %queue, i32 9
  %12 = ptrtoint ptr %rx_page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_page, align 8
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then9:                                         ; preds = %if.end
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 2592, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %tobool11.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool11.not, label %if.then9.cleanup_crit_edge, label %if.end21, !prof !237

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %rx_page to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call38.i.i.i, ptr %rx_page, align 8
  %rx_page_offset = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 24, i32 %queue, i32 10
  %15 = ptrtoint ptr %rx_page_offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rx_page_offset, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.end.if.end23_crit_edge
  %page.0 = phi ptr [ %13, %if.end.if.end23_crit_edge ], [ %call38.i.i.i, %if.end21 ]
  %call24 = tail call ptr @page_address(ptr noundef nonnull %page.0) #10
  %rx_page_offset25 = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 24, i32 %queue, i32 10
  %16 = ptrtoint ptr %rx_page_offset25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_page_offset25, align 4
  %add.ptr = getelementptr i8, ptr %call24, i32 %17
  %18 = ptrtoint ptr %rx_frag_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_frag_size, align 8
  %call27 = tail call ptr @build_skb(ptr noundef %add.ptr, i32 noundef %19) #10
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end23.cleanup_crit_edge, label %if.then35, !prof !237

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %if.end23
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call27, i32 0, i32 19
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 130
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call27, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %23, i32 130
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %24 = ptrtoint ptr %rx_frag_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_frag_size, align 8
  %26 = ptrtoint ptr %rx_page_offset25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_page_offset25, align 4
  %add = add i32 %27, %25
  store i32 %add, ptr %rx_page_offset25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add)
  %cmp39 = icmp ugt i32 %add, 4095
  br i1 %cmp39, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %rx_page to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %rx_page, align 8
  br label %cleanup

if.else43:                                        ; preds = %if.then35
  %29 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i67 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i67, label %if.end.i.i, label %if.then.i.i68, !prof !225

if.then.i.i68:                                    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %31, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i68
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i68 ], [ %32, %if.end.i.i ]
  %33 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %34 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i69 = add i32 %35, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i69)
  %cmp.i.i = icmp ult i32 %add.i.i69, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !237

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.12) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !296
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !218
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@atl1c_alloc_skb, %if.then.i.i.i.i)) #10
          to label %cleanup [label %if.then.i.i.i.i], !srcloc !236

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %33, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i.i, %do.end5.i.i, %if.then41, %if.end23.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.then.i.i, %if.else.cleanup_crit_edge, %if.then4
  %retval.0 = phi ptr [ %call.i, %if.then4 ], [ null, %if.then9.cleanup_crit_edge ], [ %call27, %if.then41 ], [ null, %if.end23.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ], [ %call.i.i, %if.then.i.i ], [ %call27, %do.end5.i.i ], [ %call27, %if.then.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_readrq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_readrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_intr(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %phy_data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %data, i32 2304
  %pdev1 = getelementptr i8, ptr %data, i32 2308
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %hw2 = getelementptr i8, ptr %data, i32 2316
  %hibernate = getelementptr i8, ptr %data, i32 2417
  %intr_mask = getelementptr i8, ptr %data, i32 2400
  %mdio_lock.i = getelementptr i8, ptr %data, i32 2736
  %intr_mask_lock.i = getelementptr i8, ptr %data, i32 2356
  %rx_queue_count.i = getelementptr i8, ptr %data, i32 2708
  %tx_queue_count.i = getelementptr i8, ptr %data, i32 2704
  %msg_enable58 = getelementptr i8, ptr %data, i32 2720
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  br label %do.body

do.body:                                          ; preds = %do.cond73.do.body_crit_edge, %entry
  %handled.0 = phi i32 [ 0, %entry ], [ 1, %do.cond73.do.body_crit_edge ]
  %max_ints.0 = phi i32 [ 5, %entry ], [ %dec, %do.cond73.do.body_crit_edge ]
  %2 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hibernate, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw2, align 4
  %add.ptr18 = getelementptr i8, ptr %5, i32 5632
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #10
  br i1 %tobool.not, label %if.else, label %if.then, !prof !225

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !297
  %7 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw2, align 4
  %add.ptr11 = getelementptr i8, ptr %8, i32 5632
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #10, !srcloc !222
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  br label %do.end

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = call i32 @llvm.bswap.i32(i32 %6)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !299
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %reg_data.0 = phi i32 [ %10, %if.then ], [ %11, %if.else ]
  %12 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intr_mask, align 4
  %and = and i32 %13, %reg_data.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %14 = icmp sgt i32 %and, 0
  br i1 %14, label %if.end28, label %if.then24

if.then24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %max_ints.0)
  %cmp25.not = icmp eq i32 %max_ints.0, 5
  %spec.select = select i1 %cmp25.not, i32 %handled.0, i32 1
  br label %do.body76

if.end28:                                         ; preds = %do.end
  %and29 = and i32 %and, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.do.body33_crit_edge, label %if.then31

if.end28.do.body33_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data.i) #10
  %15 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %phy_data.i, align 2, !annotation !271
  call void @_raw_spin_lock(ptr noundef %mdio_lock.i) #10
  %call.i = call i32 @atl1c_read_phy_reg(ptr noundef %hw2, i16 noundef zeroext 19, ptr noundef nonnull %phy_data.i) #10
  call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i) #10
  br label %do.body33

do.body33:                                        ; preds = %if.then31, %if.end28.do.body33_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !300
  call void @arm_heavy_mb() #10
  %or = or i32 %and, -2147483648
  %16 = call i32 @llvm.bswap.i32(i32 %or)
  %17 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw2, align 4
  %add.ptr37 = getelementptr i8, ptr %18, i32 5632
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %16) #10, !srcloc !220
  %and38 = and i32 %and, 1880064000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body33.if.end41_crit_edge, label %if.then40

do.body33.if.end41_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then40:                                        ; preds = %do.body33
  call void @_raw_spin_lock(ptr noundef %intr_mask_lock.i) #10
  %19 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %intr_mask, align 4
  %21 = ptrtoint ptr %rx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp69.not.i = icmp eq i32 %22, 0
  br i1 %cmp69.not.i, label %if.then40.for.cond12.preheader.i_crit_edge, label %if.then40.for.body.i_crit_edge

if.then40.for.body.i_crit_edge:                   ; preds = %if.then40
  br label %for.body.i

if.then40.for.cond12.preheader.i_crit_edge:       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond12.preheader.i

for.cond12.preheader.i:                           ; preds = %for.inc.i.for.cond12.preheader.i_crit_edge, %if.then40.for.cond12.preheader.i_crit_edge
  %intr_mask.0.lcssa.i = phi i32 [ %20, %if.then40.for.cond12.preheader.i_crit_edge ], [ %intr_mask.1.i, %for.inc.i.for.cond12.preheader.i_crit_edge ]
  %23 = ptrtoint ptr %tx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_queue_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1373.not.i = icmp eq i32 %24, 0
  br i1 %cmp1373.not.i, label %for.cond12.preheader.i.for.end34.i_crit_edge, label %for.cond12.preheader.i.for.body14.i_crit_edge

for.cond12.preheader.i.for.body14.i_crit_edge:    ; preds = %for.cond12.preheader.i
  br label %for.body14.i

for.cond12.preheader.i.for.end34.i_crit_edge:     ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end34.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then40.for.body.i_crit_edge
  %i.071.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then40.for.body.i_crit_edge ]
  %intr_mask.070.i = phi i32 [ %intr_mask.1.i, %for.inc.i.for.body.i_crit_edge ], [ %20, %if.then40.for.body.i_crit_edge ]
  %rx_isr.i = getelementptr [4 x %struct.atl1c_qregs], ptr @atl1c_qregs, i32 0, i32 %i.071.i, i32 7
  %25 = ptrtoint ptr %rx_isr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_isr.i, align 4
  %and.i = and i32 %26, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %napi.i = getelementptr %struct.atl1c_adapter, ptr %add.ptr.i, i32 0, i32 24, i32 %i.071.i, i32 8
  %call.i116 = call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #10
  br i1 %call.i116, label %if.then4.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i = xor i32 %26, -1
  %and7.i = and i32 %intr_mask.070.i, %neg.i
  call void @__napi_schedule(ptr noundef %napi.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %intr_mask.1.i = phi i32 [ %and7.i, %if.then4.i ], [ %intr_mask.070.i, %if.end.i.for.inc.i_crit_edge ], [ %intr_mask.070.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.071.i, 1
  %27 = ptrtoint ptr %rx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_queue_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %28
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond12.preheader.i_crit_edge

for.inc.i.for.cond12.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond12.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body14.i:                                     ; preds = %for.inc32.i.for.body14.i_crit_edge, %for.cond12.preheader.i.for.body14.i_crit_edge
  %i.175.i = phi i32 [ %inc33.i, %for.inc32.i.for.body14.i_crit_edge ], [ 0, %for.cond12.preheader.i.for.body14.i_crit_edge ]
  %intr_mask.274.i = phi i32 [ %intr_mask.3.i, %for.inc32.i.for.body14.i_crit_edge ], [ %intr_mask.0.lcssa.i, %for.cond12.preheader.i.for.body14.i_crit_edge ]
  %tx_isr.i = getelementptr [4 x %struct.atl1c_qregs], ptr @atl1c_qregs, i32 0, i32 %i.175.i, i32 6
  %29 = ptrtoint ptr %tx_isr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_isr.i, align 4
  %and16.i = and i32 %30, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %for.body14.i.for.inc32.i_crit_edge, label %if.end19.i

for.body14.i.for.inc32.i_crit_edge:               ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc32.i

if.end19.i:                                       ; preds = %for.body14.i
  %napi21.i = getelementptr %struct.atl1c_adapter, ptr %add.ptr.i, i32 0, i32 22, i32 %i.175.i, i32 9
  %call22.i = call zeroext i1 @napi_schedule_prep(ptr noundef %napi21.i) #10
  br i1 %call22.i, label %if.then23.i, label %if.end19.i.for.inc32.i_crit_edge

if.end19.i.for.inc32.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc32.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %neg26.i = xor i32 %30, -1
  %and27.i = and i32 %intr_mask.274.i, %neg26.i
  call void @__napi_schedule(ptr noundef %napi21.i) #10
  br label %for.inc32.i

for.inc32.i:                                      ; preds = %if.then23.i, %if.end19.i.for.inc32.i_crit_edge, %for.body14.i.for.inc32.i_crit_edge
  %intr_mask.3.i = phi i32 [ %and27.i, %if.then23.i ], [ %intr_mask.274.i, %if.end19.i.for.inc32.i_crit_edge ], [ %intr_mask.274.i, %for.body14.i.for.inc32.i_crit_edge ]
  %inc33.i = add nuw i32 %i.175.i, 1
  %31 = ptrtoint ptr %tx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_queue_count.i, align 8
  %cmp13.i = icmp ult i32 %inc33.i, %32
  br i1 %cmp13.i, label %for.inc32.i.for.body14.i_crit_edge, label %for.inc32.i.for.end34.i_crit_edge

for.inc32.i.for.end34.i_crit_edge:                ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end34.i

for.inc32.i.for.body14.i_crit_edge:               ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i

for.end34.i:                                      ; preds = %for.inc32.i.for.end34.i_crit_edge, %for.cond12.preheader.i.for.end34.i_crit_edge
  %intr_mask.2.lcssa.i = phi i32 [ %intr_mask.0.lcssa.i, %for.cond12.preheader.i.for.end34.i_crit_edge ], [ %intr_mask.3.i, %for.inc32.i.for.end34.i_crit_edge ]
  %33 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %intr_mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %intr_mask.2.lcssa.i)
  %cmp36.not.i = icmp eq i32 %34, %intr_mask.2.lcssa.i
  br i1 %cmp36.not.i, label %for.end34.i.atl1c_intr_rx_tx.exit_crit_edge, label %if.then37.i

for.end34.i.atl1c_intr_rx_tx.exit_crit_edge:      ; preds = %for.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_intr_rx_tx.exit

if.then37.i:                                      ; preds = %for.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %intr_mask to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %intr_mask.2.lcssa.i, ptr %intr_mask, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !301
  call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %intr_mask, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37) #10
  %39 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw2, align 4
  %add.ptr.i117 = getelementptr i8, ptr %40, i32 5636
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %38) #10, !srcloc !220
  br label %atl1c_intr_rx_tx.exit

atl1c_intr_rx_tx.exit:                            ; preds = %if.then37.i, %for.end34.i.atl1c_intr_rx_tx.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %intr_mask_lock.i) #10
  br label %if.end41

if.end41:                                         ; preds = %atl1c_intr_rx_tx.exit, %do.body33.if.end41_crit_edge
  %and42 = and i32 %and, 67126784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end54, label %if.then44

if.then44:                                        ; preds = %if.end41
  %41 = ptrtoint ptr %msg_enable58 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable58, align 8
  %and45 = and i32 %42, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then44.if.end52_crit_edge, label %do.end50

if.then44.if.end52_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

do.end50:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull @.str.22, i32 noundef %and42) #13
  br label %if.end52

if.end52:                                         ; preds = %do.end50, %if.then44.if.end52_crit_edge
  %work_event = getelementptr i8, ptr %data, i32 2716
  call void @_set_bit(i32 noundef 0, ptr noundef %work_event) #10
  %common_task = getelementptr i8, ptr %data, i32 2784
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %common_task) #10
  br label %cleanup

if.end54:                                         ; preds = %if.end41
  %and55 = and i32 %and, 504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.if.end68_crit_edge, label %if.then57

if.end54.if.end68_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then57:                                        ; preds = %if.end54
  %44 = ptrtoint ptr %msg_enable58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable58, align 8
  %and59 = and i32 %45, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.then57.if.end68_crit_edge, label %do.end64

if.then57.if.end68_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

do.end64:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev65, ptr noundef nonnull @.str.25, i32 noundef %and55) #13
  br label %if.end68

if.end68:                                         ; preds = %do.end64, %if.then57.if.end68_crit_edge, %if.end54.if.end68_crit_edge
  %and69 = and i32 %and, 4100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.cond73, label %if.then71

if.then71:                                        ; preds = %if.end68
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %data, i32 0, i32 36, i32 17
  %46 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_carrier_errors, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %tx_carrier_errors, align 4
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 8
  %50 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev1, align 4
  call void @_raw_spin_lock(ptr noundef %mdio_lock.i) #10
  %call.i120 = call zeroext i1 @atl1c_get_link_status(ptr noundef %hw2) #10
  call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #10
  br i1 %call.i120, label %if.then71.atl1c_link_chg_event.exit_crit_edge, label %if.then.i

if.then71.atl1c_link_chg_event.exit_crit_edge:    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_link_chg_event.exit

if.then.i:                                        ; preds = %if.then71
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 6
  %52 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %state.i.i, align 4
  %54 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i, label %if.then5.i, label %if.then.i.atl1c_link_chg_event.exit_crit_edge

if.then.i.atl1c_link_chg_event.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_link_chg_event.exit

if.then5.i:                                       ; preds = %if.then.i
  call void @netif_carrier_off(ptr noundef %49) #10
  %55 = ptrtoint ptr %msg_enable58 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %msg_enable58, align 8
  %and.i121 = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i121)
  %tobool6.not.i = icmp eq i32 %and.i121, 0
  br i1 %tobool6.not.i, label %if.then5.i.if.end.i122_crit_edge, label %do.end.i

if.then5.i.if.end.i122_crit_edge:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i122

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @atl1c_driver_name, ptr noundef %49) #13
  br label %if.end.i122

if.end.i122:                                      ; preds = %do.end.i, %if.then5.i.if.end.i122_crit_edge
  %link_speed.i = getelementptr i8, ptr %data, i32 2732
  %57 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 -1, ptr %link_speed.i, align 4
  br label %atl1c_link_chg_event.exit

atl1c_link_chg_event.exit:                        ; preds = %if.end.i122, %if.then.i.atl1c_link_chg_event.exit_crit_edge, %if.then71.atl1c_link_chg_event.exit_crit_edge
  %work_event.i = getelementptr i8, ptr %data, i32 2716
  call void @_set_bit(i32 noundef 1, ptr noundef %work_event.i) #10
  %common_task.i = getelementptr i8, ptr %data, i32 2784
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %58 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %58, ptr noundef %common_task.i) #10
  br label %do.body76

do.cond73:                                        ; preds = %if.end68
  %dec = add nsw i32 %max_ints.0, -1
  %cmp74.not = icmp eq i32 %dec, 0
  br i1 %cmp74.not, label %do.cond73.do.body76_crit_edge, label %do.cond73.do.body_crit_edge

do.cond73.do.body_crit_edge:                      ; preds = %do.cond73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.cond73.do.body76_crit_edge:                    ; preds = %do.cond73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body76

do.body76:                                        ; preds = %do.cond73.do.body76_crit_edge, %atl1c_link_chg_event.exit, %if.then24
  %handled.1 = phi i32 [ 1, %atl1c_link_chg_event.exit ], [ %spec.select, %if.then24 ], [ 1, %do.cond73.do.body76_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !302
  call void @arm_heavy_mb() #10
  %59 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw2, align 4
  %add.ptr81 = getelementptr i8, ptr %60, i32 5632
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 0) #10, !srcloc !220
  br label %cleanup

cleanup:                                          ; preds = %do.body76, %if.end52
  %retval.0 = phi i32 [ %handled.1, %do.body76 ], [ 1, %if.end52 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1c_read_phy_reg(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atl1c_get_link_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl1c_reset_mac(ptr noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %pdev2 = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 4
  %hibernate.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  %4 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hibernate.i, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr14.i = getelementptr i8, ptr %7, i32 5536
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #10
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !225

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr7.i = getelementptr i8, ptr %10, i32 5536
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #10, !srcloc !222
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  br label %do.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %if.then.i
  %data.0.i = phi i32 [ %12, %if.then.i ], [ %13, %if.else.i ]
  %and.i = and i32 %data.0.i, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %add.ptr22.i = getelementptr i8, ptr %16, i32 5536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %14) #10, !srcloc !220
  %17 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hibernate.i, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool25.not.i = icmp eq i8 %18, 0
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %add.ptr51.i = getelementptr i8, ptr %20, i32 5520
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i) #10
  br i1 %tobool25.not.i, label %if.else47.i, label %if.then32.i, !prof !225

if.then32.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !307
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %add.ptr43.i = getelementptr i8, ptr %23, i32 5520
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43.i) #10, !srcloc !222
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !308
  br label %do.end57.i

if.else47.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !309
  br label %do.end57.i

do.end57.i:                                       ; preds = %if.else47.i, %if.then32.i
  %data.1.i = phi i32 [ %25, %if.then32.i ], [ %26, %if.else47.i ]
  %and58.i = and i32 %data.1.i, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !310
  tail call void @arm_heavy_mb() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %and58.i) #10
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %add.ptr63.i = getelementptr i8, ptr %29, i32 5520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63.i, i32 %27) #10, !srcloc !220
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end20.i.i.do.body.i.i_crit_edge, %do.end57.i
  %timeout.027.i.i = phi i32 [ 0, %do.end57.i ], [ %inc.i.i, %if.end20.i.i.do.body.i.i_crit_edge ]
  %30 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hibernate.i, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i = icmp eq i8 %31, 0
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %33, i32 5136
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #10
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !225

if.then.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %36, i32 5136
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #10, !srcloc !222
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %do.end.i.i

if.else.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %data.1.i.i = phi i32 [ %38, %if.then.i.i ], [ %39, %if.else.i.i ]
  %and.i.i = and i32 %data.1.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp18.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp18.i.i, label %do.end.i.i.atl1c_wait_until_idle.exit.i_crit_edge, label %if.end20.i.i

do.end.i.i.atl1c_wait_until_idle.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_wait_until_idle.exit.i

if.end20.i.i:                                     ; preds = %do.end.i.i
  tail call void @msleep(i32 noundef 1) #10
  %inc.i.i = add nuw nsw i32 %timeout.027.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %if.end20.i.i.atl1c_wait_until_idle.exit.i_crit_edge, label %if.end20.i.i.do.body.i.i_crit_edge

if.end20.i.i.do.body.i.i_crit_edge:               ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.end20.i.i.atl1c_wait_until_idle.exit.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_wait_until_idle.exit.i

atl1c_wait_until_idle.exit.i:                     ; preds = %if.end20.i.i.atl1c_wait_until_idle.exit.i_crit_edge, %do.end.i.i.atl1c_wait_until_idle.exit.i_crit_edge
  %40 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hibernate.i, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool67.not.i = icmp eq i8 %41, 0
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  %add.ptr93.i = getelementptr i8, ptr %43, i32 5248
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93.i) #10
  br i1 %tobool67.not.i, label %if.else89.i, label %if.then74.i, !prof !225

if.then74.i:                                      ; preds = %atl1c_wait_until_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 4
  %add.ptr85.i = getelementptr i8, ptr %46, i32 5248
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85.i) #10, !srcloc !222
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  br label %do.end99.i

if.else89.i:                                      ; preds = %atl1c_wait_until_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !316
  br label %do.end99.i

do.end99.i:                                       ; preds = %if.else89.i, %if.then74.i
  %data.2.i = phi i32 [ %48, %if.then74.i ], [ %49, %if.else89.i ]
  %and100.i = and i32 %data.2.i, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  tail call void @arm_heavy_mb() #10
  %50 = tail call i32 @llvm.bswap.i32(i32 %and100.i) #10
  %51 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw, align 4
  %add.ptr105.i = getelementptr i8, ptr %52, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105.i, i32 %50) #10, !srcloc !220
  br label %do.body.i5.i

do.body.i5.i:                                     ; preds = %if.end20.i15.i.do.body.i5.i_crit_edge, %do.end99.i
  %timeout.027.i2.i = phi i32 [ 0, %do.end99.i ], [ %inc.i13.i, %if.end20.i15.i.do.body.i5.i_crit_edge ]
  %53 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %hibernate.i, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i3.i = icmp eq i8 %54, 0
  %55 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw, align 4
  %add.ptr14.i4.i = getelementptr i8, ptr %56, i32 5136
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i4.i) #10
  br i1 %tobool.not.i3.i, label %if.else.i8.i, label %if.then.i7.i, !prof !225

if.then.i7.i:                                     ; preds = %do.body.i5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  %58 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw, align 4
  %add.ptr7.i6.i = getelementptr i8, ptr %59, i32 5136
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i6.i) #10, !srcloc !222
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %do.end.i12.i

if.else.i8.i:                                     ; preds = %do.body.i5.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %do.end.i12.i

do.end.i12.i:                                     ; preds = %if.else.i8.i, %if.then.i7.i
  %data.1.i9.i = phi i32 [ %61, %if.then.i7.i ], [ %62, %if.else.i8.i ]
  %and.i10.i = and i32 %data.1.i9.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i)
  %cmp18.i11.i = icmp eq i32 %and.i10.i, 0
  br i1 %cmp18.i11.i, label %do.end.i12.i.atl1c_stop_mac.exit_crit_edge, label %if.end20.i15.i

do.end.i12.i.atl1c_stop_mac.exit_crit_edge:       ; preds = %do.end.i12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_stop_mac.exit

if.end20.i15.i:                                   ; preds = %do.end.i12.i
  tail call void @msleep(i32 noundef 1) #10
  %inc.i13.i = add nuw nsw i32 %timeout.027.i2.i, 1
  %exitcond.not.i14.i = icmp eq i32 %inc.i13.i, 10
  br i1 %exitcond.not.i14.i, label %if.end20.i15.i.atl1c_stop_mac.exit_crit_edge, label %if.end20.i15.i.do.body.i5.i_crit_edge

if.end20.i15.i.do.body.i5.i_crit_edge:            ; preds = %if.end20.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i5.i

if.end20.i15.i.atl1c_stop_mac.exit_crit_edge:     ; preds = %if.end20.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_stop_mac.exit

atl1c_stop_mac.exit:                              ; preds = %if.end20.i15.i.atl1c_stop_mac.exit_crit_edge, %do.end.i12.i.atl1c_stop_mac.exit_crit_edge
  %63 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %hibernate.i, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not = icmp eq i8 %64, 0
  %65 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw, align 4
  %add.ptr17 = getelementptr i8, ptr %66, i32 5120
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #10
  br i1 %tobool.not, label %if.else, label %if.then, !prof !225

if.then:                                          ; preds = %atl1c_stop_mac.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  %68 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw, align 4
  %add.ptr10 = getelementptr i8, ptr %69, i32 5120
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #10, !srcloc !222
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !319
  br label %do.end

if.else:                                          ; preds = %atl1c_stop_mac.exit
  call void @__sanitizer_cov_trace_pc() #12
  %72 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %ctrl_data.0 = phi i32 [ %71, %if.then ], [ %72, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  tail call void @arm_heavy_mb() #10
  %or24 = or i32 %ctrl_data.0, 65
  %73 = tail call i32 @llvm.bswap.i32(i32 %or24)
  %74 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw, align 4
  %add.ptr26 = getelementptr i8, ptr %75, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %73) #10, !srcloc !220
  %76 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw, align 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #10, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !322
  tail call void @msleep(i32 noundef 10) #10
  br label %do.body.i

do.body.i:                                        ; preds = %if.end20.i.do.body.i_crit_edge, %do.end
  %timeout.027.i = phi i32 [ 0, %do.end ], [ %inc.i, %if.end20.i.do.body.i_crit_edge ]
  %79 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %hibernate.i, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i164 = icmp eq i8 %80, 0
  %81 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw, align 4
  %add.ptr14.i165 = getelementptr i8, ptr %82, i32 5136
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i165) #10
  br i1 %tobool.not.i164, label %if.else.i168, label %if.then.i167, !prof !225

if.then.i167:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  %84 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw, align 4
  %add.ptr7.i166 = getelementptr i8, ptr %85, i32 5136
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i166) #10, !srcloc !222
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  br label %do.end.i171

if.else.i168:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %88 = tail call i32 @llvm.bswap.i32(i32 %83) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  br label %do.end.i171

do.end.i171:                                      ; preds = %if.else.i168, %if.then.i167
  %data.1.i169 = phi i32 [ %87, %if.then.i167 ], [ %88, %if.else.i168 ]
  %and.i170 = and i32 %data.1.i169, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i170)
  %cmp18.i = icmp eq i32 %and.i170, 0
  br i1 %cmp18.i, label %do.body40, label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i171
  tail call void @msleep(i32 noundef 1) #10
  %inc.i = add nuw nsw i32 %timeout.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %do.end38, label %if.end20.i.do.body.i_crit_edge

if.end20.i.do.body.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end38:                                         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #13
  br label %cleanup

do.body40:                                        ; preds = %do.end.i171
  %or = or i32 %ctrl_data.0, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !323
  tail call void @arm_heavy_mb() #10
  %89 = tail call i32 @llvm.bswap.i32(i32 %or)
  %90 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw, align 4
  %add.ptr44 = getelementptr i8, ptr %91, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %89) #10, !srcloc !220
  %92 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %hibernate.i, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool47.not = icmp eq i8 %93, 0
  %94 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw, align 4
  %add.ptr73 = getelementptr i8, ptr %95, i32 5248
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #10
  br i1 %tobool47.not, label %if.else69, label %if.then54, !prof !225

if.then54:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !324
  %97 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw, align 4
  %add.ptr65 = getelementptr i8, ptr %98, i32 5248
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #10, !srcloc !222
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !325
  br label %do.body80

if.else69:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  %101 = tail call i32 @llvm.bswap.i32(i32 %96)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !326
  br label %do.body80

do.body80:                                        ; preds = %if.else69, %if.then54
  %ctrl_data.1 = phi i32 [ %100, %if.then54 ], [ %101, %if.else69 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !327
  tail call void @arm_heavy_mb() #10
  %or83 = or i32 %ctrl_data.1, 1073741824
  %102 = tail call i32 @llvm.bswap.i32(i32 %or83)
  %103 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw, align 4
  %add.ptr85 = getelementptr i8, ptr %104, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %102) #10, !srcloc !220
  %105 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %hibernate.i, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool88.not = icmp eq i8 %106, 0
  %107 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw, align 4
  %add.ptr114 = getelementptr i8, ptr %108, i32 5156
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114) #10
  br i1 %tobool88.not, label %if.else110, label %if.then95, !prof !225

if.then95:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !328
  %110 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw, align 4
  %add.ptr106 = getelementptr i8, ptr %111, i32 5156
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106) #10, !srcloc !222
  %113 = tail call i32 @llvm.bswap.i32(i32 %112)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  br label %do.end120

if.else110:                                       ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  %114 = tail call i32 @llvm.bswap.i32(i32 %109)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !330
  br label %do.end120

do.end120:                                        ; preds = %if.else110, %if.then95
  %ctrl_data.2 = phi i32 [ %113, %if.then95 ], [ %114, %if.else110 ]
  %nic_type = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 2
  %115 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %nic_type, align 4
  %117 = zext i32 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values)
  switch i32 %116, label %do.end120.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %do.end120.sw.bb126_crit_edge
    i32 5, label %do.end120.sw.bb126_crit_edge174
  ]

do.end120.sw.bb126_crit_edge174:                  ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb126

do.end120.sw.bb126_crit_edge:                     ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb126

do.end120.cleanup_crit_edge:                      ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %ctrl_data.2, -393217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  tail call void @arm_heavy_mb() #10
  %118 = tail call i32 @llvm.bswap.i32(i32 %and)
  %119 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hw, align 4
  %add.ptr125 = getelementptr i8, ptr %120, i32 5156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 %118) #10, !srcloc !220
  br label %cleanup

sw.bb126:                                         ; preds = %do.end120.sw.bb126_crit_edge, %do.end120.sw.bb126_crit_edge174
  %or127 = or i32 %ctrl_data.2, 393216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %121 = tail call i32 @llvm.bswap.i32(i32 %or127)
  %122 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hw, align 4
  %add.ptr132 = getelementptr i8, ptr %123, i32 5156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 %121) #10, !srcloc !220
  br label %cleanup

cleanup:                                          ; preds = %sw.bb126, %sw.bb, %do.end120.cleanup_crit_edge, %do.end38
  %retval.0 = phi i32 [ -1, %do.end38 ], [ 0, %do.end120.cleanup_crit_edge ], [ 0, %sw.bb126 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1c_set_aspm(ptr nocapture noundef readonly %hw, i16 noundef zeroext %link_speed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hibernate = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  %0 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hibernate, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr14 = getelementptr i8, ptr %3, i32 4856
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #10
  br i1 %tobool.not, label %if.else, label %if.then, !prof !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !333
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 4856
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !222
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !334
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !335
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %pm_ctrl_data.0 = phi i32 [ %8, %if.then ], [ %9, %if.else ]
  %nic_type = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 2
  %10 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nic_type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %11, label %if.else29 [
    i32 3, label %do.end.if.then20_crit_edge
    i32 5, label %do.end.if.then20_crit_edge151
  ]

do.end.if.then20_crit_edge151:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

do.end.if.then20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %do.end.if.then20_crit_edge, %do.end.if.then20_crit_edge151
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %link_speed)
  %cmp22 = icmp eq i16 %link_speed, 1000
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %link_speed)
  %cmp25 = icmp eq i16 %link_speed, 100
  %13 = or i1 %cmp22, %cmp25
  %14 = select i1 %13, i32 262144, i32 65536
  %and27 = and i32 %pm_ctrl_data.0, -1074728969
  %or = or i32 %and27, %14
  br label %if.end46

if.else29:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp31 = icmp eq i32 %11, 2
  %cond33 = select i1 %cmp31, i32 7, i32 15
  %15 = zext i16 %link_speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.99)
  switch i16 %link_speed, label %if.then40 [
    i16 1000, label %if.else29.if.end41_crit_edge
    i16 100, label %if.else29.if.end41_crit_edge152
  ]

if.else29.if.end41_crit_edge152:                  ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.else29.if.end41_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then40:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.else29.if.end41_crit_edge, %if.else29.if.end41_crit_edge152
  %link_l1_timer.0 = phi i32 [ 1, %if.then40 ], [ %cond33, %if.else29.if.end41_crit_edge ], [ %cond33, %if.else29.if.end41_crit_edge152 ]
  %and42 = and i32 %pm_ctrl_data.0, -1074728969
  %shl44 = shl nuw nsw i32 %link_l1_timer.0, 16
  %or45 = or i32 %shl44, %and42
  br label %if.end46

if.end46:                                         ; preds = %if.end41, %if.then20
  %pm_ctrl_data.1 = phi i32 [ %or, %if.then20 ], [ %or45, %if.end41 ]
  %ctrl_flags = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 28
  %16 = ptrtoint ptr %ctrl_flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ctrl_flags, align 4
  %18 = and i16 %17, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool49.not = icmp eq i16 %18, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %link_speed)
  %cmp52.not = icmp eq i16 %link_speed, -1
  %or.cond = or i1 %cmp52.not, %tobool49.not
  %or55 = or i32 %pm_ctrl_data.1, 1073745920
  %pm_ctrl_data.2 = select i1 %or.cond, i32 %pm_ctrl_data.1, i32 %or55
  %19 = and i16 %17, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool60.not = icmp eq i16 %19, 0
  %or62 = or i32 %pm_ctrl_data.2, 1073741832
  %pm_ctrl_data.3 = select i1 %tobool60.not, i32 %pm_ctrl_data.2, i32 %or62
  %.off = add i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %if.then79, label %if.else94

if.then79:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %or82 = and i32 %pm_ctrl_data.3, 1594842895
  %and83 = or i32 %or82, 15769664
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp89 = icmp eq i32 %11, 2
  %or.cond150 = select i1 %cmp52.not, i1 true, i1 %cmp89
  %and92 = and i32 %and83, 1610608463
  %spec.select = select i1 %or.cond150, i32 %and92, i32 %and83
  br label %do.body108

if.else94:                                        ; preds = %if.end46
  br i1 %cmp52.not, label %if.else103, label %if.then100

if.then100:                                       ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #12
  %and95 = and i32 %pm_ctrl_data.3, -995577
  %or101 = or i32 %and95, 176
  br label %do.body108

if.else103:                                       ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #12
  %or104 = and i32 %pm_ctrl_data.3, -995505
  %and105 = or i32 %or104, 8192
  br label %do.body108

do.body108:                                       ; preds = %if.else103, %if.then100, %if.then79
  %pm_ctrl_data.4 = phi i32 [ %or101, %if.then100 ], [ %and105, %if.else103 ], [ %spec.select, %if.then79 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !336
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %pm_ctrl_data.4)
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %add.ptr112 = getelementptr i8, ptr %22, i32 4856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112, i32 %20) #10, !srcloc !220
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atl1c_post_phy_linkchg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1c_reset_dma_ring(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_queue_count = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 7
  %0 = ptrtoint ptr %tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_queue_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15.not = icmp eq i32 %1, 0
  br i1 %cmp15.not, label %entry.for.cond1.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader

for.body.lr.ph:                                   ; preds = %entry
  %pdev2.i = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 1
  br label %for.body

for.cond1.preheader:                              ; preds = %atl1c_clean_tx_ring.exit.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %rx_queue_count = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 8
  %2 = ptrtoint ptr %rx_queue_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp217.not = icmp eq i32 %3, 0
  br i1 %cmp217.not, label %for.cond1.preheader.for.end6_crit_edge, label %for.cond1.preheader.for.body3_crit_edge

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.cond1.preheader.for.end6_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end6

for.body:                                         ; preds = %atl1c_clean_tx_ring.exit.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %atl1c_clean_tx_ring.exit.for.body_crit_edge ]
  %count.i = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 22, i32 %i.016, i32 5
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp19.not.i = icmp eq i16 %5, 0
  br i1 %cmp19.not.i, label %for.body.atl1c_clean_tx_ring.exit_crit_edge, label %for.body.lr.ph.i

for.body.atl1c_clean_tx_ring.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_clean_tx_ring.exit

for.body.lr.ph.i:                                 ; preds = %for.body
  %6 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev2.i, align 4
  %buffer_info5.i = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 22, i32 %i.016, i32 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %wide.trip.count.i = zext i16 %5 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %atl1c_clean_buffer.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %atl1c_clean_buffer.exit.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %buffer_info5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer_info5.i, align 8
  %arrayidx6.i = getelementptr %struct.atl1c_buffer, ptr %9, i32 %indvars.iv.i
  %flags.i.i = getelementptr %struct.atl1c_buffer, ptr %9, i32 %indvars.iv.i, i32 2
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags.i.i, align 2
  %conv.i.i = zext i16 %11 to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.atl1c_clean_buffer.exit.i_crit_edge

for.body.i.atl1c_clean_buffer.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_clean_buffer.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %dma.i.i = getelementptr %struct.atl1c_buffer, ptr %9, i32 %indvars.iv.i, i32 3
  %12 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not.i.i = icmp eq i32 %13, 0
  %14 = and i32 %conv.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  %or.cond.i = select i1 %tobool1.not.i.i, i1 true, i1 %15
  br i1 %or.cond.i, label %if.end.i.i.if.end30.i.i_crit_edge, label %if.end30.sink.split.i.i

if.end.i.i.if.end30.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i.i

if.end30.sink.split.i.i:                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and5.i.i = and i32 %conv.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  %..i.i = select i1 %tobool6.not.i.i, i32 1, i32 2
  %length.i.i = getelementptr %struct.atl1c_buffer, ptr %9, i32 %indvars.iv.i, i32 1
  %16 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %length.i.i, align 4
  %conv15.i.i = zext i16 %17 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %13, i32 noundef %conv15.i.i, i32 noundef %..i.i, i32 noundef 0) #10
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.end30.sink.split.i.i, %if.end.i.i.if.end30.i.i_crit_edge
  %18 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx6.i, align 4
  %tobool31.not.i.i = icmp eq ptr %19, null
  br i1 %tobool31.not.i.i, label %if.end30.i.i.if.end34.i.i_crit_edge, label %if.then32.i.i

if.end30.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i.i

if.then32.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %19, i32 noundef 0) #10
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then32.i.i, %if.end30.i.i.if.end34.i.i_crit_edge
  %20 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %dma.i.i, align 4
  %21 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx6.i, align 4
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags.i.i, align 2
  %24 = and i16 %23, -4
  %25 = or i16 %24, 1
  store i16 %25, ptr %flags.i.i, align 2
  br label %atl1c_clean_buffer.exit.i

atl1c_clean_buffer.exit.i:                        ; preds = %if.end34.i.i, %for.body.i.atl1c_clean_buffer.exit.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %atl1c_clean_buffer.exit.i.atl1c_clean_tx_ring.exit_crit_edge, label %atl1c_clean_buffer.exit.i.for.body.i_crit_edge

atl1c_clean_buffer.exit.i.for.body.i_crit_edge:   ; preds = %atl1c_clean_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

atl1c_clean_buffer.exit.i.atl1c_clean_tx_ring.exit_crit_edge: ; preds = %atl1c_clean_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_clean_tx_ring.exit

atl1c_clean_tx_ring.exit:                         ; preds = %atl1c_clean_buffer.exit.i.atl1c_clean_tx_ring.exit_crit_edge, %for.body.atl1c_clean_tx_ring.exit_crit_edge
  %conv3.pre-phi.i = phi i32 [ 0, %for.body.atl1c_clean_tx_ring.exit_crit_edge ], [ %wide.trip.count.i, %atl1c_clean_buffer.exit.i.atl1c_clean_tx_ring.exit_crit_edge ]
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 103
  %28 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %29, i32 %i.016, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #10
  %dql.i.i = getelementptr %struct.netdev_queue, ptr %29, i32 %i.016, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #10
  %desc.i = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 22, i32 %i.016, i32 1
  %30 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc.i, align 4
  %mul.i = shl nuw nsw i32 %conv3.pre-phi.i, 4
  %32 = call ptr @memset(ptr %31, i32 0, i32 %mul.i)
  %next_to_clean.i = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 22, i32 %i.016, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_clean.i, i32 noundef 4) #10
  %33 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 0, ptr %next_to_clean.i, align 4
  %next_to_use.i = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 22, i32 %i.016, i32 6
  %34 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %next_to_use.i, align 2
  %inc = add nuw i32 %i.016, 1
  %35 = ptrtoint ptr %tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_queue_count, align 8
  %cmp = icmp ult i32 %inc, %36
  br i1 %cmp, label %atl1c_clean_tx_ring.exit.for.body_crit_edge, label %atl1c_clean_tx_ring.exit.for.cond1.preheader_crit_edge

atl1c_clean_tx_ring.exit.for.cond1.preheader_crit_edge: ; preds = %atl1c_clean_tx_ring.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader

atl1c_clean_tx_ring.exit.for.body_crit_edge:      ; preds = %atl1c_clean_tx_ring.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %i.118 = phi i32 [ %inc5, %for.body3.for.body3_crit_edge ], [ 0, %for.cond1.preheader.for.body3_crit_edge ]
  tail call fastcc void @atl1c_clean_rx_ring(ptr noundef %adapter, i32 noundef %i.118)
  %inc5 = add nuw i32 %i.118, 1
  %37 = ptrtoint ptr %rx_queue_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_queue_count, align 4
  %cmp2 = icmp ult i32 %inc5, %38
  br i1 %cmp2, label %for.body3.for.body3_crit_edge, label %for.body3.for.end6_crit_edge

for.body3.for.end6_crit_edge:                     ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end6

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3

for.end6:                                         ; preds = %for.body3.for.end6_crit_edge, %for.cond1.preheader.for.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1c_get_speed_and_duplex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1c_free_irq(ptr nocapture noundef readonly %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %pdev = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #10
  %have_msi = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 12
  %6 = ptrtoint ptr %have_msi to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %have_msi, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  tail call void @pci_disable_msi(ptr noundef %9) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #0 align 64 {
entry:
  %misc_ctrl.i.i = alloca i32, align 4
  %revision.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device_mem(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev2, i32 noundef %call, ptr noundef nonnull @.str.39) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev2, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.40) #13
  br label %err_dma

if.end7:                                          ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev2, i64 noundef 4294967295) #10
  %call8 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @atl1c_driver_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.43) #13
  br label %err_dma

if.end15:                                         ; preds = %if.end7
  tail call void @pci_set_master(ptr noundef %pdev) #10
  %call16 = tail call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 0) #10
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then18, label %if.end23

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.46) #13
  br label %err_ioremap

if.end23:                                         ; preds = %if.end15
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device.i, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.100)
  switch i16 %1, label %sw.default.i [
    i16 4194, label %if.end23.atl1c_get_mac_type.exit.thread_crit_edge
    i16 4195, label %sw.bb1.i
    i16 8288, label %sw.bb2.i
    i16 8290, label %sw.bb3.i
    i16 4211, label %sw.bb4.i
    i16 4227, label %sw.bb5.i
  ]

if.end23.atl1c_get_mac_type.exit.thread_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_get_mac_type.exit.thread

sw.bb1.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_get_mac_type.exit.thread

sw.bb2.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_get_mac_type.exit.thread

sw.bb3.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_get_mac_type.exit.thread

sw.bb4.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_get_mac_type.exit.thread

sw.bb5.i:                                         ; preds = %if.end23
  %add.ptr.i = getelementptr i8, ptr %call16, i32 7936
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !337
  call void @__sanitizer_cov_trace_const_cmp4(i32 873642922, i32 %3)
  %cmp.i225 = icmp eq i32 %3, 873642922
  br i1 %cmp.i225, label %sw.bb5.i.atl1c_get_mac_type.exit_crit_edge, label %sw.bb5.i.atl1c_get_mac_type.exit.thread_crit_edge

sw.bb5.i.atl1c_get_mac_type.exit.thread_crit_edge: ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_get_mac_type.exit.thread

sw.bb5.i.atl1c_get_mac_type.exit_crit_edge:       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_get_mac_type.exit

sw.default.i:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_get_mac_type.exit.thread

atl1c_get_mac_type.exit.thread:                   ; preds = %sw.default.i, %sw.bb5.i.atl1c_get_mac_type.exit.thread_crit_edge, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end23.atl1c_get_mac_type.exit.thread_crit_edge
  %retval.0.i226.ph = phi i32 [ 5, %sw.bb5.i.atl1c_get_mac_type.exit.thread_crit_edge ], [ 1, %if.end23.atl1c_get_mac_type.exit.thread_crit_edge ], [ 0, %sw.bb1.i ], [ 2, %sw.bb2.i ], [ 3, %sw.bb3.i ], [ 4, %sw.bb4.i ], [ 0, %sw.default.i ]
  br label %atl1c_get_mac_type.exit

atl1c_get_mac_type.exit:                          ; preds = %atl1c_get_mac_type.exit.thread, %sw.bb5.i.atl1c_get_mac_type.exit_crit_edge
  %retval.0.i226235 = phi i32 [ %retval.0.i226.ph, %atl1c_get_mac_type.exit.thread ], [ 6, %sw.bb5.i.atl1c_get_mac_type.exit_crit_edge ]
  %4 = phi i32 [ 1, %atl1c_get_mac_type.exit.thread ], [ 4, %sw.bb5.i.atl1c_get_mac_type.exit_crit_edge ]
  %call27 = tail call ptr @alloc_etherdev_mqs(i32 noundef 2768, i32 noundef %4, i32 noundef %4) #10
  %cmp28 = icmp eq ptr %call27, null
  br i1 %cmp28, label %atl1c_get_mac_type.exit.err_alloc_etherdev_crit_edge, label %if.end30

atl1c_get_mac_type.exit.err_alloc_etherdev_crit_edge: ; preds = %atl1c_get_mac_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_alloc_etherdev

if.end30:                                         ; preds = %atl1c_get_mac_type.exit
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 133, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev2, ptr %parent.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call27, ptr %driver_data.i.i.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 16
  %7 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @atl1c_netdev_ops, ptr %netdev_ops.i, align 8
  %watchdog_timeo.i = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 115
  %8 = ptrtoint ptr %watchdog_timeo.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 500, ptr %watchdog_timeo.i, align 4
  %min_mtu.i = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 30
  %9 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 42, ptr %min_mtu.i, align 8
  tail call void @atl1c_set_ethtool_ops(ptr noundef nonnull %call27) #10
  %hw_features.i = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 24
  %10 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1114377, ptr %hw_features.i, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 23
  %11 = ptrtoint ptr %features.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1114505, ptr %features.i, align 16
  %add.ptr.i227 = getelementptr i8, ptr %call27, i32 2304
  %12 = load i32, ptr @atl1c_probe.cards_found, align 4
  %bd_number = getelementptr i8, ptr %call27, i32 5064
  %13 = ptrtoint ptr %bd_number to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %bd_number, align 8
  %14 = ptrtoint ptr %add.ptr.i227 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call27, ptr %add.ptr.i227, align 8
  %pdev41 = getelementptr i8, ptr %call27, i32 2308
  %15 = ptrtoint ptr %pdev41 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pdev, ptr %pdev41, align 4
  %hw = getelementptr i8, ptr %call27, i32 2316
  %adapter42 = getelementptr i8, ptr %call27, i32 2320
  %16 = ptrtoint ptr %adapter42 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i227, ptr %adapter42, align 4
  %nic_type44 = getelementptr i8, ptr %call27, i32 2324
  %17 = ptrtoint ptr %nic_type44 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i226235, ptr %nic_type44, align 4
  %msg_enable = getelementptr i8, ptr %call27, i32 2720
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 63, ptr %msg_enable, align 8
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call16, ptr %hw, align 4
  %tx_queue_count = getelementptr i8, ptr %call27, i32 2704
  %20 = ptrtoint ptr %tx_queue_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %4, ptr %tx_queue_count, align 8
  %rx_queue_count = getelementptr i8, ptr %call27, i32 2708
  %21 = ptrtoint ptr %rx_queue_count to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %4, ptr %rx_queue_count, align 4
  %dev48 = getelementptr i8, ptr %call27, i32 2688
  %22 = ptrtoint ptr %dev48 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call27, ptr %dev48, align 4
  %mdio_read = getelementptr i8, ptr %call27, i32 2692
  %23 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @atl1c_mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr i8, ptr %call27, i32 2696
  %24 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @atl1c_mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr i8, ptr %call27, i32 2676
  %25 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr i8, ptr %call27, i32 2680
  %26 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 31, ptr %reg_num_mask, align 4
  %call53 = tail call i32 @dev_set_threaded(ptr noundef nonnull %call27, i1 noundef zeroext true) #10
  %27 = ptrtoint ptr %rx_queue_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp55237.not = icmp eq i32 %28, 0
  br i1 %cmp55237.not, label %if.end30.for.cond56.preheader_crit_edge, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  br label %for.body

if.end30.for.cond56.preheader_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond56.preheader

for.cond56.preheader:                             ; preds = %for.body.for.cond56.preheader_crit_edge, %if.end30.for.cond56.preheader_crit_edge
  %29 = ptrtoint ptr %tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_queue_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp58239.not = icmp eq i32 %30, 0
  br i1 %cmp58239.not, label %for.cond56.preheader.do.body65_crit_edge, label %for.cond56.preheader.for.body59_crit_edge

for.cond56.preheader.for.body59_crit_edge:        ; preds = %for.cond56.preheader
  br label %for.body59

for.cond56.preheader.do.body65_crit_edge:         ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body65

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end30.for.body_crit_edge
  %i.0238 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end30.for.body_crit_edge ]
  %napi = getelementptr %struct.atl1c_adapter, ptr %add.ptr.i227, i32 0, i32 24, i32 %i.0238, i32 8
  tail call void @netif_napi_add(ptr noundef nonnull %call27, ptr noundef %napi, ptr noundef nonnull @atl1c_clean_rx, i32 noundef 64) #10
  %inc = add nuw i32 %i.0238, 1
  %31 = ptrtoint ptr %rx_queue_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_queue_count, align 4
  %cmp55 = icmp ult i32 %inc, %32
  br i1 %cmp55, label %for.body.for.body_crit_edge, label %for.body.for.cond56.preheader_crit_edge

for.body.for.cond56.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond56.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body59:                                       ; preds = %for.body59.for.body59_crit_edge, %for.cond56.preheader.for.body59_crit_edge
  %i.1240 = phi i32 [ %inc63, %for.body59.for.body59_crit_edge ], [ 0, %for.cond56.preheader.for.body59_crit_edge ]
  %napi61 = getelementptr %struct.atl1c_adapter, ptr %add.ptr.i227, i32 0, i32 22, i32 %i.1240, i32 9
  tail call void @netif_napi_add(ptr noundef nonnull %call27, ptr noundef %napi61, ptr noundef nonnull @atl1c_clean_tx, i32 noundef 64) #10
  %inc63 = add nuw i32 %i.1240, 1
  %33 = ptrtoint ptr %tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_queue_count, align 8
  %cmp58 = icmp ult i32 %inc63, %34
  br i1 %cmp58, label %for.body59.for.body59_crit_edge, label %for.body59.do.body65_crit_edge

for.body59.do.body65_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body65

for.body59.for.body59_crit_edge:                  ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body59

do.body65:                                        ; preds = %for.body59.do.body65_crit_edge, %for.cond56.preheader.do.body65_crit_edge
  %phy_config_timer = getelementptr i8, ptr %call27, i32 2876
  tail call void @init_timer_key(ptr noundef %phy_config_timer, ptr noundef nonnull @atl1c_phy_config, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull @atl1c_probe.__key) #10
  %35 = ptrtoint ptr %pdev41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev41, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %revision.i) #10
  %37 = ptrtoint ptr %revision.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %revision.i, align 4, !annotation !271
  %wol.i = getelementptr i8, ptr %call27, i32 2728
  %38 = ptrtoint ptr %wol.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %wol.i, align 8
  %dev.i228 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %call.i229 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev.i228, i1 noundef zeroext false) #10
  %link_speed.i = getelementptr i8, ptr %call27, i32 2732
  %39 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -1, ptr %link_speed.i, align 4
  %link_duplex.i = getelementptr i8, ptr %call27, i32 2734
  %40 = ptrtoint ptr %link_duplex.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 2, ptr %link_duplex.i, align 2
  %count.i = getelementptr i8, ptr %call27, i32 2952
  %41 = ptrtoint ptr %count.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1024, ptr %count.i, align 8
  %count4.i = getelementptr i8, ptr %call27, i32 3970
  %42 = ptrtoint ptr %count4.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 512, ptr %count4.i, align 2
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 7
  %43 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vendor.i, align 8
  %vendor_id.i = getelementptr i8, ptr %call27, i32 2342
  %45 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %vendor_id.i, align 2
  %device.i230 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 8
  %46 = ptrtoint ptr %device.i230 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %device.i230, align 2
  %device_id.i = getelementptr i8, ptr %call27, i32 2340
  %48 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %device_id.i, align 4
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 9
  %49 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %subsystem_vendor.i, align 4
  %subsystem_vendor_id.i = getelementptr i8, ptr %call27, i32 2346
  %51 = ptrtoint ptr %subsystem_vendor_id.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %subsystem_vendor_id.i, align 2
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 10
  %52 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %subsystem_device.i, align 2
  %subsystem_id.i = getelementptr i8, ptr %call27, i32 2344
  %54 = ptrtoint ptr %subsystem_id.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %subsystem_id.i, align 4
  %call5.i = call i32 @pci_read_config_dword(ptr noundef %36, i32 noundef 8, ptr noundef nonnull %revision.i) #10
  %55 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %revision.i, align 4
  %conv.i = trunc i32 %56 to i8
  %revision_id.i = getelementptr i8, ptr %call27, i32 2348
  %57 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv.i, ptr %revision_id.i, align 4
  %hibernate.i = getelementptr i8, ptr %call27, i32 2417
  %58 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %hibernate.i, align 1
  %media_type.i = getelementptr i8, ptr %call27, i32 2418
  %59 = ptrtoint ptr %media_type.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %media_type.i, align 2
  %60 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %61, i32 104
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %63 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %64, i32 104
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #10, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !338
  %ctrl_flags.i.i = getelementptr i8, ptr %call27, i32 2432
  %66 = ptrtoint ptr %ctrl_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 930, ptr %ctrl_flags.i.i, align 4
  %67 = ptrtoint ptr %nic_type44 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nic_type44, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %68, label %do.body65.atl1c_setup_mac_funcs.exit.i_crit_edge [
    i32 0, label %do.body65.if.then32.i.i_crit_edge
    i32 4, label %do.body65.if.then32.i.i_crit_edge241
    i32 5, label %do.body65.if.then32.i.i_crit_edge242
  ]

do.body65.if.then32.i.i_crit_edge242:             ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32.i.i

do.body65.if.then32.i.i_crit_edge241:             ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32.i.i

do.body65.if.then32.i.i_crit_edge:                ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32.i.i

do.body65.atl1c_setup_mac_funcs.exit.i_crit_edge: ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_setup_mac_funcs.exit.i

if.then32.i.i:                                    ; preds = %do.body65.if.then32.i.i_crit_edge, %do.body65.if.then32.i.i_crit_edge241, %do.body65.if.then32.i.i_crit_edge242
  %link_cap_flags.i.i = getelementptr i8, ptr %call27, i32 2434
  %70 = ptrtoint ptr %link_cap_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %link_cap_flags.i.i, align 2
  %72 = or i16 %71, 1
  store i16 %72, ptr %link_cap_flags.i.i, align 2
  br label %atl1c_setup_mac_funcs.exit.i

atl1c_setup_mac_funcs.exit.i:                     ; preds = %if.then32.i.i, %do.body65.atl1c_setup_mac_funcs.exit.i_crit_edge
  %73 = ptrtoint ptr %adapter42 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %adapter42, align 4
  %pdev1.i.i = getelementptr inbounds %struct.atl1c_adapter, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %pdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %misc_ctrl.i.i) #10
  %77 = ptrtoint ptr %misc_ctrl.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %misc_ctrl.i.i, align 4, !annotation !271
  %msi_lnkpatch.i.i = getelementptr i8, ptr %call27, i32 2471
  %78 = ptrtoint ptr %msi_lnkpatch.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %msi_lnkpatch.i.i, align 1
  %79 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %device_id.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end29.i.i.while.body.i.i_crit_edge, %atl1c_setup_mac_funcs.exit.i
  %81 = phi i16 [ 8288, %atl1c_setup_mac_funcs.exit.i ], [ %96, %if.end29.i.i.while.body.i.i_crit_edge ]
  %i.062.i.i = phi i32 [ 0, %atl1c_setup_mac_funcs.exit.i ], [ %inc.i.i, %if.end29.i.i.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %81, i16 %80)
  %cmp7.i.i = icmp eq i16 %81, %80
  br i1 %cmp7.i.i, label %land.lhs.true.i.i, label %while.body.i.i.if.end29.i.i_crit_edge

while.body.i.i.if.end29.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %pci_revid.i.i = getelementptr [20 x %struct.atl1c_platform_patch], ptr @plats, i32 0, i32 %i.062.i.i, i32 1
  %82 = ptrtoint ptr %pci_revid.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %pci_revid.i.i, align 2
  %84 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %revision_id.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %85)
  %cmp12.i.i = icmp eq i8 %83, %85
  br i1 %cmp12.i.i, label %land.lhs.true14.i.i, label %land.lhs.true.i.i.if.end29.i.i_crit_edge

land.lhs.true.i.i.if.end29.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i.i

land.lhs.true14.i.i:                              ; preds = %land.lhs.true.i.i
  %subsystem_vid.i.i = getelementptr [20 x %struct.atl1c_platform_patch], ptr @plats, i32 0, i32 %i.062.i.i, i32 2
  %86 = ptrtoint ptr %subsystem_vid.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %subsystem_vid.i.i, align 4
  %88 = ptrtoint ptr %subsystem_vendor_id.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %subsystem_vendor_id.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %87, i16 %89)
  %cmp18.i.i = icmp eq i16 %87, %89
  br i1 %cmp18.i.i, label %land.lhs.true20.i.i, label %land.lhs.true14.i.i.if.end29.i.i_crit_edge

land.lhs.true14.i.i.if.end29.i.i_crit_edge:       ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i.i

land.lhs.true20.i.i:                              ; preds = %land.lhs.true14.i.i
  %subsystem_did.i.i = getelementptr [20 x %struct.atl1c_platform_patch], ptr @plats, i32 0, i32 %i.062.i.i, i32 3
  %90 = ptrtoint ptr %subsystem_did.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %subsystem_did.i.i, align 2
  %92 = ptrtoint ptr %subsystem_id.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %subsystem_id.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %91, i16 %93)
  %cmp24.not.i.i = icmp eq i16 %91, %93
  br i1 %cmp24.not.i.i, label %if.then27.i.i, label %land.lhs.true20.i.i.if.end29.i.i_crit_edge

land.lhs.true20.i.i.if.end29.i.i_crit_edge:       ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i.i

if.then27.i.i:                                    ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %msi_lnkpatch.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %msi_lnkpatch.i.i, align 1
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then27.i.i, %land.lhs.true20.i.i.if.end29.i.i_crit_edge, %land.lhs.true14.i.i.if.end29.i.i_crit_edge, %land.lhs.true.i.i.if.end29.i.i_crit_edge, %while.body.i.i.if.end29.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.062.i.i, 1
  %arrayidx.i.i = getelementptr [20 x %struct.atl1c_platform_patch], ptr @plats, i32 0, i32 %inc.i.i
  %95 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx.i.i, align 4
  %exitcond.i.i = icmp eq i32 %inc.i.i, 19
  br i1 %exitcond.i.i, label %while.end.i.i, label %if.end29.i.i.while.body.i.i_crit_edge

if.end29.i.i.while.body.i.i_crit_edge:            ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end29.i.i
  %97 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8290, i16 %98)
  %cmp32.i.i = icmp eq i16 %98, 8290
  br i1 %cmp32.i.i, label %land.lhs.true34.i.i, label %while.end.i.i.atl1c_patch_assign.exit.i_crit_edge

while.end.i.i.atl1c_patch_assign.exit.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_patch_assign.exit.i

land.lhs.true34.i.i:                              ; preds = %while.end.i.i
  %99 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %revision_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -63, i8 %100)
  %cmp37.i.i = icmp eq i8 %100, -63
  br i1 %cmp37.i.i, label %if.then39.i.i, label %land.lhs.true34.i.i.atl1c_patch_assign.exit.i_crit_edge

land.lhs.true34.i.i.atl1c_patch_assign.exit.i_crit_edge: ; preds = %land.lhs.true34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_patch_assign.exit.i

if.then39.i.i:                                    ; preds = %land.lhs.true34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i32 @pci_write_config_dword(ptr noundef %76, i32 noundef 128, i32 noundef 540) #10
  %call40.i.i = call i32 @pci_read_config_dword(ptr noundef %76, i32 noundef 132, ptr noundef nonnull %misc_ctrl.i.i) #10
  %101 = ptrtoint ptr %misc_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %misc_ctrl.i.i, align 4
  %and41.i.i = and i32 %102, -257
  store i32 %and41.i.i, ptr %misc_ctrl.i.i, align 4
  %call42.i.i = call i32 @pci_write_config_dword(ptr noundef %76, i32 noundef 128, i32 noundef 540) #10
  %103 = ptrtoint ptr %misc_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %misc_ctrl.i.i, align 4
  %call43.i.i = call i32 @pci_write_config_dword(ptr noundef %76, i32 noundef 132, i32 noundef %104) #10
  br label %atl1c_patch_assign.exit.i

atl1c_patch_assign.exit.i:                        ; preds = %if.then39.i.i, %land.lhs.true34.i.i.atl1c_patch_assign.exit.i_crit_edge, %while.end.i.i.atl1c_patch_assign.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %misc_ctrl.i.i) #10
  %intr_mask.i = getelementptr i8, ptr %call27, i32 2400
  %105 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 67139356, ptr %intr_mask.i, align 4
  %106 = ptrtoint ptr %tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tx_queue_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp91.not.i = icmp eq i32 %107, 0
  br i1 %cmp91.not.i, label %atl1c_patch_assign.exit.i.for.cond13.preheader.i_crit_edge, label %atl1c_patch_assign.exit.i.for.body.i_crit_edge

atl1c_patch_assign.exit.i.for.body.i_crit_edge:   ; preds = %atl1c_patch_assign.exit.i
  br label %for.body.i

atl1c_patch_assign.exit.i.for.cond13.preheader.i_crit_edge: ; preds = %atl1c_patch_assign.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond13.preheader.i

for.cond.for.cond13.preheader_crit_edge.i:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %or.i, ptr %intr_mask.i, align 4
  br label %for.cond13.preheader.i

for.cond13.preheader.i:                           ; preds = %for.cond.for.cond13.preheader_crit_edge.i, %atl1c_patch_assign.exit.i.for.cond13.preheader.i_crit_edge
  %109 = ptrtoint ptr %rx_queue_count to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rx_queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp144.not.i = icmp eq i32 %110, 0
  br i1 %cmp144.not.i, label %for.cond13.preheader.i.atl1c_sw_init.exit_crit_edge, label %for.body16.lr.ph.i

for.cond13.preheader.i.atl1c_sw_init.exit_crit_edge: ; preds = %for.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_sw_init.exit

for.body16.lr.ph.i:                               ; preds = %for.cond13.preheader.i
  %111 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %intr_mask.promoted6.i = load i32, ptr %intr_mask.i, align 4
  br label %for.body16.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %atl1c_patch_assign.exit.i.for.body.i_crit_edge
  %or3.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 67139356, %atl1c_patch_assign.exit.i.for.body.i_crit_edge ]
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %atl1c_patch_assign.exit.i.for.body.i_crit_edge ]
  %tx_isr.i = getelementptr [4 x %struct.atl1c_qregs], ptr @atl1c_qregs, i32 0, i32 %i.02.i, i32 6
  %112 = ptrtoint ptr %tx_isr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tx_isr.i, align 4
  %or.i = or i32 %113, %or3.i
  %inc.i = add nuw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %107
  br i1 %exitcond.not.i, label %for.cond.for.cond13.preheader_crit_edge.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.body16.lr.ph.i
  %or197.i = phi i32 [ %intr_mask.promoted6.i, %for.body16.lr.ph.i ], [ %or19.i, %for.body16.i.for.body16.i_crit_edge ]
  %i.15.i = phi i32 [ 0, %for.body16.lr.ph.i ], [ %inc21.i, %for.body16.i.for.body16.i_crit_edge ]
  %rx_isr.i = getelementptr [4 x %struct.atl1c_qregs], ptr @atl1c_qregs, i32 0, i32 %i.15.i, i32 7
  %114 = ptrtoint ptr %rx_isr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rx_isr.i, align 4
  %or19.i = or i32 %115, %or197.i
  %inc21.i = add nuw i32 %i.15.i, 1
  %exitcond8.not.i = icmp eq i32 %inc21.i, %110
  br i1 %exitcond8.not.i, label %for.cond13.for.end22_crit_edge.i, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16.i

for.cond13.for.end22_crit_edge.i:                 ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %or19.i, ptr %intr_mask.i, align 4
  br label %atl1c_sw_init.exit

atl1c_sw_init.exit:                               ; preds = %for.cond13.for.end22_crit_edge.i, %for.cond13.preheader.i.atl1c_sw_init.exit_crit_edge
  %phy_configured.i = getelementptr i8, ptr %call27, i32 2468
  %117 = ptrtoint ptr %phy_configured.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %phy_configured.i, align 4
  %preamble_len.i = getelementptr i8, ptr %call27, i32 2404
  %118 = ptrtoint ptr %preamble_len.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 7, ptr %preamble_len.i, align 4
  %119 = ptrtoint ptr %add.ptr.i227 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr.i227, align 8
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %120, i32 0, i32 20
  %121 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %mtu.i, align 4
  %conv23.i = trunc i32 %122 to i16
  %max_frame_size.i = getelementptr i8, ptr %call27, i32 2406
  %123 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv23.i, ptr %max_frame_size.i, align 2
  %autoneg_advertised.i = getelementptr i8, ptr %call27, i32 2420
  %124 = ptrtoint ptr %autoneg_advertised.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 64, ptr %autoneg_advertised.i, align 4
  %indirect_tab.i = getelementptr i8, ptr %call27, i32 2452
  %125 = ptrtoint ptr %indirect_tab.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -454761244, ptr %indirect_tab.i, align 4
  %base_cpu.i = getelementptr i8, ptr %call27, i32 2448
  %126 = ptrtoint ptr %base_cpu.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %base_cpu.i, align 4
  %ict.i = getelementptr i8, ptr %call27, i32 2430
  %127 = ptrtoint ptr %ict.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 -15536, ptr %ict.i, align 2
  %smb_timer.i = getelementptr i8, ptr %call27, i32 2436
  %128 = ptrtoint ptr %smb_timer.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 200000, ptr %smb_timer.i, align 4
  %rx_imt.i = getelementptr i8, ptr %call27, i32 2428
  %129 = ptrtoint ptr %rx_imt.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 200, ptr %rx_imt.i, align 4
  %tx_imt.i = getelementptr i8, ptr %call27, i32 2426
  %130 = ptrtoint ptr %tx_imt.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 1000, ptr %tx_imt.i, align 2
  %tpd_burst.i = getelementptr i8, ptr %call27, i32 2444
  %131 = ptrtoint ptr %tpd_burst.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 5, ptr %tpd_burst.i, align 4
  %rfd_burst.i = getelementptr i8, ptr %call27, i32 2445
  %132 = ptrtoint ptr %rfd_burst.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 8, ptr %rfd_burst.i, align 1
  %dma_order.i = getelementptr i8, ptr %call27, i32 2328
  %133 = ptrtoint ptr %dma_order.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 4, ptr %dma_order.i, align 4
  %dmar_block.i = getelementptr i8, ptr %call27, i32 2336
  %134 = ptrtoint ptr %dmar_block.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 3, ptr %dmar_block.i, align 4
  %135 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1522, i32 %135)
  %cmp.i.i = icmp sgt i32 %135, 1522
  %add4.i.i = add i32 %135, 29
  %div.i.i = sdiv i32 %add4.i.i, 8
  %136 = trunc i32 %div.i.i to i16
  %phi.cast.i.i = shl i16 %136, 3
  %cond.i.i = select i1 %cmp.i.i, i16 %phi.cast.i.i, i16 1522
  %rx_buffer_len.i.i = getelementptr i8, ptr %call27, i32 2700
  %137 = ptrtoint ptr %rx_buffer_len.i.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %cond.i.i, ptr %rx_buffer_len.i.i, align 4
  %conv6.i.i = zext i16 %cond.i.i to i32
  %add9.i.i = add nuw nsw i32 %conv6.i.i, 257
  %and.i.i = and i32 %add9.i.i, 130944
  %sub16.i.i = add nuw nsw i32 %and.i.i, 255
  %138 = call i32 @llvm.ctlz.i32(i32 %sub16.i.i, i1 true) #10, !range !339
  %sub.i.i.i.pn.i.i = sub nuw nsw i32 32, %138
  %cond38.i.i = shl nuw i32 1, %sub.i.i.i.pn.i.i
  %rx_frag_size.i.i = getelementptr i8, ptr %call27, i32 2312
  %139 = ptrtoint ptr %rx_frag_size.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %cond38.i.i, ptr %rx_frag_size.i.i, align 8
  %irq_sem.i = getelementptr i8, ptr %call27, i32 2780
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem.i, i32 noundef 4) #10
  %140 = ptrtoint ptr %irq_sem.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile i32 1, ptr %irq_sem.i, align 4
  %mdio_lock.i = getelementptr i8, ptr %call27, i32 2736
  call void @__raw_spin_lock_init(ptr noundef %mdio_lock.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @atl1c_sw_init.__key, i16 noundef signext 3) #10
  %intr_mask_lock.i = getelementptr i8, ptr %call27, i32 2356
  call void @__raw_spin_lock_init(ptr noundef %intr_mask_lock.i, ptr noundef nonnull @.str.91, ptr noundef nonnull @atl1c_sw_init.__key.90, i16 noundef signext 3) #10
  %flags.i = getelementptr i8, ptr %call27, i32 2712
  call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %revision.i) #10
  %141 = ptrtoint ptr %nic_type44 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %nic_type44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %142)
  %143 = icmp ult i32 %142, 7
  br i1 %143, label %switch.lookup, label %atl1c_sw_init.exit.atl1c_set_max_mtu.exit_crit_edge

atl1c_sw_init.exit.atl1c_set_max_mtu.exit_crit_edge: ; preds = %atl1c_sw_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_set_max_mtu.exit

switch.lookup:                                    ; preds = %atl1c_sw_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.atl1c_probe, i32 0, i32 %142
  %144 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %144)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %atl1c_set_max_mtu.exit

atl1c_set_max_mtu.exit:                           ; preds = %switch.lookup, %atl1c_sw_init.exit.atl1c_set_max_mtu.exit_crit_edge
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ 1500, %atl1c_sw_init.exit.atl1c_set_max_mtu.exit_crit_edge ]
  %max_mtu4.i = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 31
  %145 = ptrtoint ptr %max_mtu4.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %.sink.i, ptr %max_mtu4.i, align 4
  call fastcc void @atl1c_reset_pcie(ptr noundef %hw)
  %call78 = call i32 @atl1c_phy_reset(ptr noundef %hw) #10
  %call80 = call fastcc i32 @atl1c_reset_mac(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %atl1c_set_max_mtu.exit.err_init_netdev_crit_edge

atl1c_set_max_mtu.exit.err_init_netdev_crit_edge: ; preds = %atl1c_set_max_mtu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_init_netdev

if.end83:                                         ; preds = %atl1c_set_max_mtu.exit
  %call85 = call i32 @atl1c_phy_init(ptr noundef %hw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end83.err_init_netdev_crit_edge

if.end83.err_init_netdev_crit_edge:               ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_init_netdev

if.end88:                                         ; preds = %if.end83
  %call90 = call i32 @atl1c_read_mac_addr(ptr noundef %hw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end88.if.end93_crit_edge, label %if.then92

if.end88.if.end93_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then92:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 55
  %146 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %addr_assign_type, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end88.if.end93_crit_edge
  %mac_addr = getelementptr i8, ptr %call27, i32 2456
  call void @dev_addr_mod(ptr noundef %call27, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #10
  %147 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %msg_enable, align 8
  %and = and i32 %148, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool96.not = icmp eq i32 %and, 0
  br i1 %tobool96.not, label %if.end93.if.end111_crit_edge, label %do.body98

if.end93.if.end111_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

do.body98:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1c_probe.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1c_probe, %if.then103)) #10
          to label %if.end111 [label %if.then103], !srcloc !236

if.then103:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atl1c_probe.__UNIQUE_ID_ddebug514, ptr noundef %dev2, ptr noundef nonnull @.str.55, ptr noundef %mac_addr) #10
  br label %if.end111

if.end111:                                        ; preds = %if.then103, %do.body98, %if.end93.if.end111_crit_edge
  call void @atl1c_hw_set_mac_addr(ptr noundef %hw, ptr noundef %mac_addr) #10
  %common_task = getelementptr i8, ptr %call27, i32 2784
  call void @__init_work(ptr noundef %common_task, i32 noundef 0) #10
  %149 = ptrtoint ptr %common_task to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 -64, ptr %common_task, align 8
  %lockdep_map = getelementptr i8, ptr %call27, i32 2800
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.57, ptr noundef nonnull @atl1c_probe.__key.56, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry120 = getelementptr i8, ptr %call27, i32 2788
  %150 = ptrtoint ptr %entry120 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %entry120, ptr %entry120, align 4
  %prev.i = getelementptr i8, ptr %call27, i32 2792
  %151 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %entry120, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call27, i32 2796
  %152 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @atl1c_common_task, ptr %func, align 4
  %work_event = getelementptr i8, ptr %call27, i32 2716
  %153 = ptrtoint ptr %work_event to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %work_event, align 4
  %call124 = call i32 @register_netdev(ptr noundef nonnull %call27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end131, label %do.end129

do.end129:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.59) #13
  br label %err_init_netdev

if.end131:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  %154 = load i32, ptr @atl1c_probe.cards_found, align 4
  %inc132 = add i32 %154, 1
  store i32 %inc132, ptr @atl1c_probe.cards_found, align 4
  br label %cleanup

err_init_netdev:                                  ; preds = %do.end129, %if.end83.err_init_netdev_crit_edge, %atl1c_set_max_mtu.exit.err_init_netdev_crit_edge
  %err.0 = phi i32 [ %call124, %do.end129 ], [ -5, %atl1c_set_max_mtu.exit.err_init_netdev_crit_edge ], [ -5, %if.end83.err_init_netdev_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call27) #10
  br label %err_alloc_etherdev

err_alloc_etherdev:                               ; preds = %err_init_netdev, %atl1c_get_mac_type.exit.err_alloc_etherdev_crit_edge
  %err.1 = phi i32 [ %err.0, %err_init_netdev ], [ -12, %atl1c_get_mac_type.exit.err_alloc_etherdev_crit_edge ]
  call void @iounmap(ptr noundef nonnull %call16) #10
  br label %err_ioremap

err_ioremap:                                      ; preds = %err_alloc_etherdev, %if.then18
  %err.2 = phi i32 [ %err.1, %err_alloc_etherdev ], [ -5, %if.then18 ]
  call void @pci_release_regions(ptr noundef %pdev) #10
  br label %err_dma

err_dma:                                          ; preds = %err_ioremap, %do.end13, %do.end
  %err.3 = phi i32 [ %call.i, %do.end ], [ %call8, %do.end13 ], [ %err.2, %err_ioremap ]
  call void @pci_disable_device(ptr noundef %pdev) #10
  br label %cleanup

cleanup:                                          ; preds = %err_dma, %if.end131, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %err.3, %err_dma ], [ 0, %if.end131 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1c_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #10
  %hw = getelementptr i8, ptr %1, i32 2316
  %perm_mac_addr = getelementptr i8, ptr %1, i32 2462
  tail call void @atl1c_hw_set_mac_addr(ptr noundef %hw, ptr noundef %perm_mac_addr) #10
  tail call void @atl1c_phy_disable(ptr noundef %hw) #10
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  tail call void @iounmap(ptr noundef %3) #10
  tail call void @pci_release_regions(ptr noundef %pdev) #10
  tail call void @pci_disable_device(ptr noundef %pdev) #10
  tail call void @free_netdev(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1c_shutdown(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call2 = tail call i32 @atl1c_suspend(ptr noundef %dev)
  %wol = getelementptr i8, ptr %1, i32 2728
  %2 = ptrtoint ptr %wol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wol, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  %call3 = tail call i32 @pci_wake_from_d3(ptr noundef %pdev, i1 noundef zeroext %tobool) #10
  %call4 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device_mem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_mdio_read(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %reg_num) #0 align 64 {
entry:
  %result = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %result) #10
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %result, align 2, !annotation !271
  %hw = getelementptr i8, ptr %netdev, i32 2316
  %conv = trunc i32 %reg_num to i16
  %call1 = call i32 @atl1c_read_phy_reg(ptr noundef %hw, i16 noundef zeroext %conv, ptr noundef nonnull %result) #10
  %1 = ptrtoint ptr %result to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %result, align 2
  %conv2 = zext i16 %2 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %result) #10
  ret i32 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1c_mdio_write(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %reg_num, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %netdev, i32 2316
  %conv = trunc i32 %val to i16
  %call1 = tail call i32 @atl1c_write_phy_reg(ptr noundef %hw, i32 noundef %reg_num, i16 noundef zeroext %conv) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_threaded(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_clean_rx(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %pdev2 = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %num = getelementptr i8, ptr %napi, i32 -12
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num, align 4
  %idxprom = zext i16 %7 to i32
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %while.cond.preheader, label %entry.quit_polling_crit_edge

entry.quit_polling_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %quit_polling

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp.not257 = icmp sgt i32 %budget, 0
  br i1 %cmp.not257, label %if.end7.lr.ph.lr.ph, label %while.cond.preheader.if.end132_crit_edge

while.cond.preheader.if.end132_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.end7.lr.ph.lr.ph:                              ; preds = %while.cond.preheader
  %desc = getelementptr i8, ptr %napi, i32 -20
  %next_to_clean = getelementptr i8, ptr %napi, i32 -4
  %msg_enable = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %count.i = getelementptr i8, ptr %napi, i32 -8
  %buffer_info1.i = getelementptr %struct.atl1c_adapter, ptr %1, i32 0, i32 23, i32 %idxprom, i32 6
  %count.i189 = getelementptr %struct.atl1c_adapter, ptr %1, i32 0, i32 23, i32 %idxprom, i32 3
  %next_to_clean.i197 = getelementptr %struct.atl1c_adapter, ptr %1, i32 0, i32 23, i32 %idxprom, i32 5
  %nic_type.i = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 3, i32 2
  br label %if.end7.lr.ph

if.end7.lr.ph:                                    ; preds = %if.end95.if.end7.lr.ph_crit_edge, %if.end7.lr.ph.lr.ph
  %cmp.not259 = phi i1 [ true, %if.end7.lr.ph.lr.ph ], [ %cmp.not, %if.end95.if.end7.lr.ph_crit_edge ]
  %work_done.0.ph258 = phi i32 [ 0, %if.end7.lr.ph.lr.ph ], [ %inc, %if.end95.if.end7.lr.ph_crit_edge ]
  br label %if.end7

if.end7:                                          ; preds = %if.end43.if.end7_crit_edge, %if.end7.lr.ph
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc, align 4
  %13 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %next_to_clean, align 4
  %idxprom8 = zext i16 %14 to i32
  %arrayidx9 = getelementptr %struct.atl1c_recv_ret_status, ptr %12, i32 %idxprom8
  %word3 = getelementptr %struct.atl1c_recv_ret_status, ptr %12, i32 %idxprom8, i32 4
  %15 = ptrtoint ptr %word3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %word3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp10 = icmp slt i32 %16, 0
  br i1 %cmp10, label %if.then12, label %if.end7.while.end_crit_edge, !prof !225

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then12:                                        ; preds = %if.end7
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx9, align 4
  %shr13 = lshr i32 %18, 16
  %19 = trunc i32 %shr13 to i16
  %conv = and i16 %19, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv)
  %cmp16.not = icmp eq i16 %conv, 1
  br i1 %cmp16.not, label %if.then12.for.body.i.preheader_crit_edge, label %if.then24, !prof !225

if.then12.for.body.i.preheader_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

if.then24:                                        ; preds = %if.then12
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 8
  %and25 = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then24.rrs_checked_crit_edge, label %do.end

if.then24.rrs_checked_crit_edge:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %rrs_checked

do.end:                                           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.77) #13
  br label %rrs_checked

rrs_checked:                                      ; preds = %do.end, %if.then24.rrs_checked_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %cmp15.not.i = icmp eq i16 %conv, 0
  br i1 %cmp15.not.i, label %atl1c_clean_rrd.exit.thread, label %rrs_checked.for.body.i.preheader_crit_edge

rrs_checked.for.body.i.preheader_crit_edge:       ; preds = %rrs_checked
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %rrs_checked.for.body.i.preheader_crit_edge, %if.then12.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.017.i = phi i16 [ %inc8.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %rrs.addr.016.i = phi ptr [ %arrayidx.i, %for.body.i.for.body.i_crit_edge ], [ %arrayidx9, %for.body.i.preheader ]
  %word3.i = getelementptr inbounds %struct.atl1c_recv_ret_status, ptr %rrs.addr.016.i, i32 0, i32 4
  %22 = ptrtoint ptr %word3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %word3.i, align 4
  %and.i = and i32 %23, 2147483647
  store i32 %and.i, ptr %word3.i, align 4
  %24 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %next_to_clean, align 4
  %inc.i = add i16 %25, 1
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %27)
  %cmp5.i = icmp eq i16 %inc.i, %27
  %spec.store.select.i = select i1 %cmp5.i, i16 0, i16 %inc.i
  %28 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %spec.store.select.i, ptr %next_to_clean, align 4
  %inc8.i = add nuw nsw i16 %i.017.i, 1
  %29 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %desc, align 4
  %idxprom.i = zext i16 %spec.store.select.i to i32
  %arrayidx.i = getelementptr %struct.atl1c_recv_ret_status, ptr %30, i32 %idxprom.i
  %cmp.i = icmp ult i16 %inc8.i, %conv
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %atl1c_clean_rrd.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

atl1c_clean_rrd.exit:                             ; preds = %for.body.i
  %31 = ptrtoint ptr %word3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %word3, align 4
  %and31 = and i32 %32, 1074790400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end44, label %if.then33

atl1c_clean_rrd.exit.thread:                      ; preds = %rrs_checked
  %33 = ptrtoint ptr %word3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %word3, align 4
  %and31228 = and i32 %34, 1074790400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31228)
  %tobool32.not229 = icmp eq i32 %and31228, 0
  br i1 %tobool32.not229, label %atl1c_clean_rrd.exit.thread.if.else70_crit_edge, label %if.then33.thread

atl1c_clean_rrd.exit.thread.if.else70_crit_edge:  ; preds = %atl1c_clean_rrd.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else70

if.then33.thread:                                 ; preds = %atl1c_clean_rrd.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx9, align 4
  %shr.i233 = lshr i32 %36, 20
  %conv.i234 = trunc i32 %shr.i233 to i16
  br label %atl1c_clean_rfd.exit

if.then33:                                        ; preds = %atl1c_clean_rrd.exit
  %37 = ptrtoint ptr %buffer_info1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer_info1.i, align 4
  %39 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx9, align 4
  %shr.i = lshr i32 %40, 20
  %conv.i = trunc i32 %shr.i to i16
  br label %for.body.i196

for.body.i196:                                    ; preds = %for.body.i196.for.body.i196_crit_edge, %if.then33
  %rfd_index.031.i = phi i16 [ %conv.i, %if.then33 ], [ %spec.store.select.i194, %for.body.i196.for.body.i196_crit_edge ]
  %i.030.i = phi i16 [ 0, %if.then33 ], [ %inc19.i, %for.body.i196.for.body.i196_crit_edge ]
  %idxprom.i191 = zext i16 %rfd_index.031.i to i32
  %arrayidx.i192 = getelementptr %struct.atl1c_buffer, ptr %38, i32 %idxprom.i191
  %41 = ptrtoint ptr %arrayidx.i192 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx.i192, align 4
  %flags.i = getelementptr %struct.atl1c_buffer, ptr %38, i32 %idxprom.i191, i32 2
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %flags.i, align 2
  %44 = and i16 %43, -4
  %45 = or i16 %44, 1
  store i16 %45, ptr %flags.i, align 2
  %inc.i193 = add i16 %rfd_index.031.i, 1
  %46 = ptrtoint ptr %count.i189 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %count.i189, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i193, i16 %47)
  %cmp17.i = icmp eq i16 %inc.i193, %47
  %spec.store.select.i194 = select i1 %cmp17.i, i16 0, i16 %inc.i193
  %inc19.i = add nuw nsw i16 %i.030.i, 1
  %cmp.i195 = icmp ult i16 %inc19.i, %conv
  br i1 %cmp.i195, label %for.body.i196.for.body.i196_crit_edge, label %for.body.i196.atl1c_clean_rfd.exit_crit_edge

for.body.i196.atl1c_clean_rfd.exit_crit_edge:     ; preds = %for.body.i196
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_clean_rfd.exit

for.body.i196.for.body.i196_crit_edge:            ; preds = %for.body.i196
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i196

atl1c_clean_rfd.exit:                             ; preds = %for.body.i196.atl1c_clean_rfd.exit_crit_edge, %if.then33.thread
  %rfd_index.0.lcssa.i = phi i16 [ %conv.i234, %if.then33.thread ], [ %spec.store.select.i194, %for.body.i196.atl1c_clean_rfd.exit_crit_edge ]
  %48 = ptrtoint ptr %next_to_clean.i197 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %rfd_index.0.lcssa.i, ptr %next_to_clean.i197, align 2
  %49 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable, align 8
  %and35 = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %atl1c_clean_rfd.exit.if.end43_crit_edge, label %do.end40

atl1c_clean_rfd.exit.if.end43_crit_edge:          ; preds = %atl1c_clean_rfd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

do.end40:                                         ; preds = %atl1c_clean_rfd.exit
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %word3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %word3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.80, i32 noundef %52) #13
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %atl1c_clean_rfd.exit.if.end43_crit_edge
  br i1 %cmp.not259, label %if.end43.if.end7_crit_edge, label %while.end.thread291

if.end43.if.end7_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end44:                                         ; preds = %atl1c_clean_rrd.exit
  %idxprom8.le = zext i16 %14 to i32
  br i1 %cmp16.not, label %atl1c_clean_rfd.exit217, label %if.end44.if.else70_crit_edge, !prof !225

if.end44.if.else70_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else70

atl1c_clean_rfd.exit217:                          ; preds = %if.end44
  %53 = trunc i32 %32 to i16
  %conv48 = and i16 %53, 16383
  %54 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx9, align 4
  %shr60 = lshr i32 %55, 20
  %56 = ptrtoint ptr %buffer_info1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buffer_info1.i, align 4
  %arrayidx65 = getelementptr %struct.atl1c_buffer, ptr %57, i32 %shr60
  %dma = getelementptr %struct.atl1c_buffer, ptr %57, i32 %shr60, i32 3
  %58 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma, align 4
  %length67 = getelementptr %struct.atl1c_buffer, ptr %57, i32 %shr60, i32 1
  %60 = ptrtoint ptr %length67 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %length67, align 4
  %conv68 = zext i16 %61 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %59, i32 noundef %conv68, i32 noundef 2, i32 noundef 0) #10
  %62 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx65, align 4
  %64 = ptrtoint ptr %buffer_info1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer_info1.i, align 4
  %66 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx9, align 4
  %shr.i199 = lshr i32 %67, 20
  %conv.i200 = trunc i32 %shr.i199 to i16
  %arrayidx.i207 = getelementptr %struct.atl1c_buffer, ptr %65, i32 %shr.i199
  %68 = ptrtoint ptr %arrayidx.i207 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %arrayidx.i207, align 4
  %flags.i208 = getelementptr %struct.atl1c_buffer, ptr %65, i32 %shr.i199, i32 2
  %69 = ptrtoint ptr %flags.i208 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %flags.i208, align 2
  %71 = and i16 %70, -4
  %72 = or i16 %71, 1
  store i16 %72, ptr %flags.i208, align 2
  %inc.i209 = add nuw nsw i16 %conv.i200, 1
  %73 = ptrtoint ptr %count.i189 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %count.i189, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i209, i16 %74)
  %cmp17.i210 = icmp eq i16 %inc.i209, %74
  %spec.store.select.i211 = select i1 %cmp17.i210, i16 0, i16 %inc.i209
  %75 = tail call i16 @llvm.bswap.i16(i16 %conv48)
  %76 = ptrtoint ptr %next_to_clean.i197 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %spec.store.select.i211, ptr %next_to_clean.i197, align 2
  %conv81 = zext i16 %75 to i32
  %sub = add nsw i32 %conv81, -4
  %call82 = tail call ptr @skb_put(ptr noundef %63, i32 noundef %sub) #10
  %call83 = tail call zeroext i16 @eth_type_trans(ptr noundef %63, ptr noundef %5) #10
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 15, i32 0, i32 18
  %77 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %call83, ptr %protocol, align 8
  %78 = ptrtoint ptr %nic_type.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nic_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %79)
  %cmp.i218 = icmp eq i32 %79, 6
  br i1 %cmp.i218, label %if.then.i, label %atl1c_clean_rfd.exit217.atl1c_rx_checksum.exit_crit_edge

atl1c_clean_rfd.exit217.atl1c_rx_checksum.exit_crit_edge: ; preds = %atl1c_clean_rfd.exit217
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_rx_checksum.exit

if.then.i:                                        ; preds = %atl1c_clean_rfd.exit217
  %80 = ptrtoint ptr %word3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %word3, align 4
  %and.i220 = and i32 %81, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i220)
  %tobool.not.i221 = icmp eq i32 %and.i220, 0
  br i1 %tobool.not.i221, label %if.then.i.atl1c_rx_checksum.exit_crit_edge, label %if.then1.i

if.then.i.atl1c_rx_checksum.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_rx_checksum.exit

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 15
  %82 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %atl1c_rx_checksum.exit

atl1c_rx_checksum.exit:                           ; preds = %if.then1.i, %if.then.i.atl1c_rx_checksum.exit_crit_edge, %atl1c_clean_rfd.exit217.atl1c_rx_checksum.exit_crit_edge
  %83 = ptrtoint ptr %word3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %word3, align 4
  %and85 = and i32 %84, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %atl1c_rx_checksum.exit.if.end95_crit_edge, label %if.then87

atl1c_rx_checksum.exit.if.end95_crit_edge:        ; preds = %atl1c_rx_checksum.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.else70:                                        ; preds = %if.end44.if.else70_crit_edge, %atl1c_clean_rrd.exit.thread.if.else70_crit_edge
  %85 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %msg_enable, align 8
  %and72 = and i32 %86, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.else70.while.end_crit_edge, label %do.end77

if.else70.while.end_crit_edge:                    ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end77:                                         ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.77) #13
  br label %while.end

if.then87:                                        ; preds = %atl1c_rx_checksum.exit
  call void @__sanitizer_cov_trace_pc() #12
  %vlan_tag = getelementptr %struct.atl1c_recv_ret_status, ptr %12, i32 %idxprom8.le, i32 2
  %87 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %vlan_tag, align 4
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 15, i32 0, i32 9
  %89 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 15, i32 0, i32 10
  %90 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %88, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 15, i32 0, i32 3
  %91 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %bf.load.i222 = load i32, ptr %vlan_present.i, align 2
  %bf.set.i223 = or i32 %bf.load.i222, -2147483648
  store i32 %bf.set.i223, ptr %vlan_present.i, align 2
  br label %if.end95

if.end95:                                         ; preds = %if.then87, %atl1c_rx_checksum.exit.if.end95_crit_edge
  %call96 = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef %63) #10
  %inc = add nuw nsw i32 %work_done.0.ph258, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %budget)
  %cmp.not = icmp slt i32 %inc, %budget
  %exitcond.not = icmp eq i32 %inc, %budget
  br i1 %exitcond.not, label %if.end95.while.end_crit_edge, label %if.end95.if.end7.lr.ph_crit_edge

if.end95.if.end7.lr.ph_crit_edge:                 ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.lr.ph

if.end95.while.end_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end95.while.end_crit_edge, %do.end77, %if.else70.while.end_crit_edge, %if.end7.while.end_crit_edge
  %work_done.0.ph250 = phi i32 [ %work_done.0.ph258, %if.else70.while.end_crit_edge ], [ %work_done.0.ph258, %do.end77 ], [ %work_done.0.ph258, %if.end7.while.end_crit_edge ], [ %budget, %if.end95.while.end_crit_edge ]
  %cmp.not238 = phi i1 [ %cmp.not259, %if.else70.while.end_crit_edge ], [ %cmp.not259, %do.end77 ], [ %cmp.not259, %if.end7.while.end_crit_edge ], [ %cmp.not, %if.end95.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %work_done.0.ph250)
  %tobool97.not = icmp eq i32 %work_done.0.ph250, 0
  br i1 %tobool97.not, label %if.end102, label %if.then98

while.end.thread291:                              ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %work_done.0.ph258)
  %tobool97.not294 = icmp eq i32 %work_done.0.ph258, 0
  br i1 %tobool97.not294, label %while.end.thread291.if.end132_crit_edge, label %if.then98.thread

while.end.thread291.if.end132_crit_edge:          ; preds = %while.end.thread291
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.then98.thread:                                 ; preds = %while.end.thread291
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %num, align 4
  %conv100299 = zext i16 %93 to i32
  %call101300 = tail call fastcc i32 @atl1c_alloc_rx_buffer(ptr noundef %1, i32 noundef %conv100299, i1 noundef zeroext true)
  br label %if.end132

if.then98:                                        ; preds = %while.end
  %94 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %num, align 4
  %conv100 = zext i16 %95 to i32
  %call101 = tail call fastcc i32 @atl1c_alloc_rx_buffer(ptr noundef %1, i32 noundef %conv100, i1 noundef zeroext true)
  br i1 %cmp.not238, label %if.then98.quit_polling_crit_edge, label %if.then98.if.end132_crit_edge

if.then98.if.end132_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.then98.quit_polling_crit_edge:                 ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %quit_polling

if.end102:                                        ; preds = %while.end
  br i1 %cmp.not238, label %if.end102.quit_polling_crit_edge, label %if.end102.if.end132_crit_edge

if.end102.if.end132_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.end102.quit_polling_crit_edge:                 ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %quit_polling

quit_polling:                                     ; preds = %if.end102.quit_polling_crit_edge, %if.then98.quit_polling_crit_edge, %entry.quit_polling_crit_edge
  %work_done.1 = phi i32 [ 0, %if.end102.quit_polling_crit_edge ], [ 0, %entry.quit_polling_crit_edge ], [ %work_done.0.ph250, %if.then98.quit_polling_crit_edge ]
  %call106 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.1) #10
  %hw = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 3
  %intr_mask_lock = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 3, i32 13
  %call113 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intr_mask_lock) #10
  %96 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %num, align 4
  %idxprom119 = zext i16 %97 to i32
  %rx_isr = getelementptr [4 x %struct.atl1c_qregs], ptr @atl1c_qregs, i32 0, i32 %idxprom119, i32 7
  %98 = ptrtoint ptr %rx_isr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rx_isr, align 4
  %intr_mask = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 3, i32 14
  %100 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %intr_mask, align 4
  %or122 = or i32 %101, %99
  store i32 %or122, ptr %intr_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !340
  tail call void @arm_heavy_mb() #10
  %102 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %intr_mask, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  %105 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hw, align 4
  %add.ptr129 = getelementptr i8, ptr %106, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %104) #10, !srcloc !220
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intr_mask_lock, i32 noundef %call113) #10
  br label %if.end132

if.end132:                                        ; preds = %quit_polling, %if.end102.if.end132_crit_edge, %if.then98.if.end132_crit_edge, %if.then98.thread, %while.end.thread291.if.end132_crit_edge, %while.cond.preheader.if.end132_crit_edge
  %work_done.2 = phi i32 [ %work_done.1, %quit_polling ], [ 0, %if.end102.if.end132_crit_edge ], [ %work_done.0.ph250, %if.then98.if.end132_crit_edge ], [ 0, %while.cond.preheader.if.end132_crit_edge ], [ %work_done.0.ph258, %if.then98.thread ], [ 0, %while.end.thread291.if.end132_crit_edge ]
  ret i32 %work_done.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_clean_tx(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %num = getelementptr i8, ptr %napi, i32 -20
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num, align 4
  %conv = zext i16 %5 to i32
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %7, i32 %conv
  %pdev2 = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev2, align 4
  %next_to_clean3 = getelementptr i8, ptr %napi, i32 -12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_clean3, i32 noundef 4) #10
  %10 = ptrtoint ptr %next_to_clean3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %next_to_clean3, align 4
  %conv5 = trunc i32 %11 to i16
  %hw = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 3
  %hibernate = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 3, i32 20
  %12 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hibernate, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %16 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num, align 4
  %idxprom33 = zext i16 %17 to i32
  %tpd_cons35 = getelementptr [4 x %struct.atl1c_qregs], ptr @atl1c_qregs, i32 0, i32 %idxprom33, i32 2
  %18 = ptrtoint ptr %tpd_cons35 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tpd_cons35, align 4
  %conv36 = zext i16 %19 to i32
  %add.ptr37 = getelementptr i8, ptr %15, i32 %conv36
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr37) #10
  br i1 %tobool.not, label %if.else, label %if.then, !prof !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !341
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %23 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num, align 4
  %idxprom20 = zext i16 %24 to i32
  %tpd_cons22 = getelementptr [4 x %struct.atl1c_qregs], ptr @atl1c_qregs, i32 0, i32 %idxprom20, i32 2
  %25 = ptrtoint ptr %tpd_cons22 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tpd_cons22, align 4
  %conv23 = zext i16 %26 to i32
  %add.ptr24 = getelementptr i8, ptr %22, i32 %conv23
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr24) #10, !srcloc !342
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !343
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %29 = tail call i16 @llvm.bswap.i16(i16 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !344
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %hw_next_to_clean.0 = phi i16 [ %28, %if.then ], [ %29, %if.else ]
  call void @__sanitizer_cov_trace_cmp2(i16 %hw_next_to_clean.0, i16 %conv5)
  %cmp.not147 = icmp eq i16 %hw_next_to_clean.0, %conv5
  br i1 %cmp.not147, label %do.end.netdev_tx_completed_queue.exit_crit_edge, label %while.body.lr.ph

do.end.netdev_tx_completed_queue.exit_crit_edge:  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %netdev_tx_completed_queue.exit

while.body.lr.ph:                                 ; preds = %do.end
  %buffer_info44 = getelementptr i8, ptr %napi, i32 -8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %count = getelementptr i8, ptr %napi, i32 -16
  br label %while.body

while.body:                                       ; preds = %atl1c_clean_buffer.exit.while.body_crit_edge, %while.body.lr.ph
  %next_to_clean.0150 = phi i16 [ %conv5, %while.body.lr.ph ], [ %spec.store.select, %atl1c_clean_buffer.exit.while.body_crit_edge ]
  %total_bytes.0149 = phi i32 [ 0, %while.body.lr.ph ], [ %total_bytes.1, %atl1c_clean_buffer.exit.while.body_crit_edge ]
  %total_packets.0148 = phi i32 [ 0, %while.body.lr.ph ], [ %total_packets.1, %atl1c_clean_buffer.exit.while.body_crit_edge ]
  %conv41 = zext i16 %next_to_clean.0150 to i32
  %30 = ptrtoint ptr %buffer_info44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer_info44, align 8
  %arrayidx46 = getelementptr %struct.atl1c_buffer, ptr %31, i32 %conv41
  %32 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx46, align 4
  %tobool47.not = icmp eq ptr %33, null
  br i1 %tobool47.not, label %while.body.if.end50_crit_edge, label %if.then48

while.body.if.end50_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then48:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %add = add i32 %35, %total_bytes.0149
  %inc = add i32 %total_packets.0148, 1
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %while.body.if.end50_crit_edge
  %total_packets.1 = phi i32 [ %inc, %if.then48 ], [ %total_packets.0148, %while.body.if.end50_crit_edge ]
  %total_bytes.1 = phi i32 [ %add, %if.then48 ], [ %total_bytes.0149, %while.body.if.end50_crit_edge ]
  %flags.i = getelementptr %struct.atl1c_buffer, ptr %31, i32 %conv41, i32 2
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %flags.i, align 2
  %conv.i = zext i16 %37 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end50.atl1c_clean_buffer.exit_crit_edge

if.end50.atl1c_clean_buffer.exit_crit_edge:       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_clean_buffer.exit

if.end.i:                                         ; preds = %if.end50
  %dma.i = getelementptr %struct.atl1c_buffer, ptr %31, i32 %conv41, i32 3
  %38 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool1.not.i = icmp eq i32 %39, 0
  %40 = and i32 %conv.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %41 = icmp eq i32 %40, 0
  %or.cond = select i1 %tobool1.not.i, i1 true, i1 %41
  br i1 %or.cond, label %if.end.i.if.end30.i_crit_edge, label %if.end30.sink.split.i

if.end.i.if.end30.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.end30.sink.split.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %and5.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %..i = select i1 %tobool6.not.i, i32 1, i32 2
  %length.i = getelementptr %struct.atl1c_buffer, ptr %31, i32 %conv41, i32 1
  %42 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %length.i, align 4
  %conv15.i = zext i16 %43 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %39, i32 noundef %conv15.i, i32 noundef %..i, i32 noundef 0) #10
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end30.sink.split.i, %if.end.i.if.end30.i_crit_edge
  %44 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx46, align 4
  %tobool31.not.i = icmp eq ptr %45, null
  br i1 %tobool31.not.i, label %if.end30.i.if.end34.i_crit_edge, label %if.then32.i

if.end30.i.if.end34.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %45, i32 noundef 0) #10
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end30.i.if.end34.i_crit_edge
  %46 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %dma.i, align 4
  %47 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %arrayidx46, align 4
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flags.i, align 2
  %50 = and i16 %49, -4
  %51 = or i16 %50, 1
  store i16 %51, ptr %flags.i, align 2
  br label %atl1c_clean_buffer.exit

atl1c_clean_buffer.exit:                          ; preds = %if.end34.i, %if.end50.atl1c_clean_buffer.exit_crit_edge
  %inc51 = add i16 %next_to_clean.0150, 1
  %52 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %count, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %inc51, i16 %53)
  %cmp54 = icmp eq i16 %inc51, %53
  %spec.store.select = select i1 %cmp54, i16 0, i16 %inc51
  %conv59 = zext i16 %spec.store.select to i32
  %call.i.i140 = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_clean3, i32 noundef 4) #10
  %54 = ptrtoint ptr %next_to_clean3 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %conv59, ptr %next_to_clean3, align 4
  %cmp.not = icmp eq i16 %spec.store.select, %hw_next_to_clean.0
  br i1 %cmp.not, label %while.end, label %atl1c_clean_buffer.exit.while.body_crit_edge

atl1c_clean_buffer.exit.while.body_crit_edge:     ; preds = %atl1c_clean_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %atl1c_clean_buffer.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_bytes.1)
  %tobool.not.i141 = icmp eq i32 %total_bytes.1, 0
  br i1 %tobool.not.i141, label %while.end.netdev_tx_completed_queue.exit_crit_edge, label %if.end.i142, !prof !237

while.end.netdev_tx_completed_queue.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %netdev_tx_completed_queue.exit

if.end.i142:                                      ; preds = %while.end
  %dql.i = getelementptr %struct.netdev_queue, ptr %7, i32 %conv, i32 15
  tail call void @dql_completed(ptr noundef %dql.i, i32 noundef %total_bytes.1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !345
  %adj_limit.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %conv, i32 15, i32 1
  %55 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %adj_limit.i.i, align 4
  %57 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %dql.i, align 128
  %sub.i.i = sub i32 %56, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i, label %if.end.i142.netdev_tx_completed_queue.exit_crit_edge, label %if.end14.i, !prof !237

if.end.i142.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %netdev_tx_completed_queue.exit

if.end14.i:                                       ; preds = %if.end.i142
  %state.i = getelementptr %struct.netdev_queue, ptr %7, i32 %conv, i32 13
  %call15.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.netdev_tx_completed_queue.exit_crit_edge, label %if.then17.i

if.end14.i.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netdev_tx_completed_queue.exit

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_schedule_queue(ptr noundef %arrayidx.i) #10
  br label %netdev_tx_completed_queue.exit

netdev_tx_completed_queue.exit:                   ; preds = %if.then17.i, %if.end14.i.netdev_tx_completed_queue.exit_crit_edge, %if.end.i142.netdev_tx_completed_queue.exit_crit_edge, %while.end.netdev_tx_completed_queue.exit_crit_edge, %do.end.netdev_tx_completed_queue.exit_crit_edge
  %total_packets.0.lcssa155 = phi i32 [ %total_packets.1, %while.end.netdev_tx_completed_queue.exit_crit_edge ], [ %total_packets.1, %if.end.i142.netdev_tx_completed_queue.exit_crit_edge ], [ %total_packets.1, %if.end14.i.netdev_tx_completed_queue.exit_crit_edge ], [ %total_packets.1, %if.then17.i ], [ 0, %do.end.netdev_tx_completed_queue.exit_crit_edge ]
  %state.i143 = getelementptr %struct.netdev_queue, ptr %7, i32 %conv, i32 13
  %59 = ptrtoint ptr %state.i143 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %state.i143, align 4
  %and1.i.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %netdev_tx_completed_queue.exit.if.end65_crit_edge, label %land.lhs.true

netdev_tx_completed_queue.exit.if.end65_crit_edge: ; preds = %netdev_tx_completed_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

land.lhs.true:                                    ; preds = %netdev_tx_completed_queue.exit
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 8
  %state.i144 = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %state.i144 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %state.i144, align 4
  %65 = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i145 = icmp eq i32 %65, 0
  br i1 %tobool.not.i145, label %if.then64, label %land.lhs.true.if.end65_crit_edge

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i) #10
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %land.lhs.true.if.end65_crit_edge, %netdev_tx_completed_queue.exit.if.end65_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %total_packets.0.lcssa155, i32 %budget)
  %cmp66 = icmp ult i32 %total_packets.0.lcssa155, %budget
  br i1 %cmp66, label %if.then68, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %call69 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %total_packets.0.lcssa155) #10
  %intr_mask_lock = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 3, i32 13
  %call77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intr_mask_lock) #10
  %66 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %num, align 4
  %idxprom83 = zext i16 %67 to i32
  %tx_isr = getelementptr [4 x %struct.atl1c_qregs], ptr @atl1c_qregs, i32 0, i32 %idxprom83, i32 6
  %68 = ptrtoint ptr %tx_isr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_isr, align 4
  %intr_mask = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 3, i32 14
  %70 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %intr_mask, align 4
  %or = or i32 %71, %69
  store i32 %or, ptr %intr_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !346
  tail call void @arm_heavy_mb() #10
  %72 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %intr_mask, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %75 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw, align 4
  %add.ptr93 = getelementptr i8, ptr %76, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %74) #10, !srcloc !220
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intr_mask_lock, i32 noundef %call77) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %if.end65.cleanup_crit_edge
  %retval.0 = phi i32 [ %total_packets.0.lcssa155, %if.then68 ], [ %budget, %if.end65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1c_phy_config(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %t, i32 -560
  %mdio_lock = getelementptr i8, ptr %t, i32 -140
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mdio_lock) #10
  %call7 = tail call i32 @atl1c_restart_autoneg(ptr noundef %hw1) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mdio_lock, i32 noundef %call4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1c_reset_pcie(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #10
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !271
  %adapter = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 4
  %pdev1 = getelementptr inbounds %struct.atl1c_adapter, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev1, align 4
  %hibernate = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  %5 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hibernate, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr15 = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #10
  br i1 %tobool.not, label %if.else, label %if.then, !prof !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !347
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #10, !srcloc !222
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !348
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !349
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %pci_cmd.0 = phi i32 [ %13, %if.then ], [ %14, %if.else ]
  %and = and i32 %pci_cmd.0, -1032
  %or = or i32 %and, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !350
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %or)
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %add.ptr23 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %15) #10, !srcloc !220
  %call24 = tail call i32 @pci_enable_wake(ptr noundef %4, i32 noundef 3, i1 noundef zeroext false) #10
  %call25 = tail call i32 @pci_enable_wake(ptr noundef %4, i32 noundef 4, i1 noundef zeroext false) #10
  %18 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hibernate, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool28.not = icmp eq i8 %19, 0
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr54 = getelementptr i8, ptr %21, i32 5280
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #10
  br i1 %tobool28.not, label %if.else50, label %if.then35, !prof !225

if.then35:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !351
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %add.ptr46 = getelementptr i8, ptr %24, i32 5280
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #10, !srcloc !222
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !352
  br label %do.body61

if.else50:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %27 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !353
  br label %do.body61

do.body61:                                        ; preds = %if.else50, %if.then35
  %storemerge = phi i32 [ %27, %if.else50 ], [ %26, %if.then35 ]
  %28 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !354
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %add.ptr65 = getelementptr i8, ptr %30, i32 5280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 0) #10, !srcloc !220
  %call66 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %4, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call66)
  %tobool67.not = icmp eq i16 %call66, 0
  br i1 %tobool67.not, label %do.body61.if.end73_crit_edge, label %if.then68

do.body61.if.end73_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then68:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %call66 to i32
  %add = add nuw nsw i32 %conv, 12
  %call69 = call i32 @pci_read_config_dword(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %data) #10
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data, align 4
  %and70 = and i32 %32, -8209
  store i32 %and70, ptr %data, align 4
  %call72 = call i32 @pci_write_config_dword(ptr noundef %4, i32 noundef %add, i32 noundef %and70) #10
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %do.body61.if.end73_crit_edge
  %call74 = call i32 @pcie_capability_write_word(ptr noundef %4, i32 noundef 10, i16 noundef zeroext 15) #10
  %33 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %hibernate, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool77.not = icmp eq i8 %34, 0
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 4
  %add.ptr103 = getelementptr i8, ptr %36, i32 4860
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #10
  br i1 %tobool77.not, label %if.else99, label %if.then84, !prof !225

if.then84:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !355
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 4
  %add.ptr95 = getelementptr i8, ptr %39, i32 4860
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #10, !srcloc !222
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !356
  br label %do.end109

if.else99:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %42 = call i32 @llvm.bswap.i32(i32 %37)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !357
  br label %do.end109

do.end109:                                        ; preds = %if.else99, %if.then84
  %storemerge1 = phi i32 [ %42, %if.else99 ], [ %41, %if.then84 ]
  %and110 = and i32 %storemerge1, -4097
  %43 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and110, ptr %data, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !358
  call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw, align 4
  %add.ptr115 = getelementptr i8, ptr %48, i32 4860
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %46) #10, !srcloc !220
  %49 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %hibernate, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i = icmp eq i8 %50, 0
  %51 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw, align 4
  %add.ptr14.i = getelementptr i8, ptr %52, i32 5120
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #10
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !225

if.then.i:                                        ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !359
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 4
  %add.ptr7.i = getelementptr i8, ptr %55, i32 5120
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #10, !srcloc !222
  %57 = call i32 @llvm.bswap.i32(i32 %56) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !360
  br label %do.end.i

if.else.i:                                        ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #12
  %58 = call i32 @llvm.bswap.i32(i32 %53) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !361
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %if.then.i
  %mst_data.0.i = phi i32 [ %57, %if.then.i ], [ %58, %if.else.i ]
  %and.i = and i32 %mst_data.0.i, -4097
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !362
  call void @arm_heavy_mb() #10
  %59 = call i32 @llvm.bswap.i32(i32 %and.i) #10
  %60 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw, align 4
  %add.ptr22.i = getelementptr i8, ptr %61, i32 5120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %59) #10, !srcloc !220
  %nic_type.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 2
  %62 = ptrtoint ptr %nic_type.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nic_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %switch.i = icmp ult i32 %63, 2
  br i1 %switch.i, label %do.body26.i, label %if.else66.i

do.body26.i:                                      ; preds = %do.end.i
  %64 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %hibernate, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool28.not.i = icmp eq i8 %65, 0
  %66 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw, align 4
  %add.ptr54.i = getelementptr i8, ptr %67, i32 4096
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54.i) #10
  br i1 %tobool28.not.i, label %if.else50.i, label %if.then35.i, !prof !225

if.then35.i:                                      ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !363
  %69 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw, align 4
  %add.ptr46.i = getelementptr i8, ptr %70, i32 4096
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #10, !srcloc !222
  %72 = call i32 @llvm.bswap.i32(i32 %71) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !364
  br label %do.end60.i

if.else50.i:                                      ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = call i32 @llvm.bswap.i32(i32 %68) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !365
  br label %do.end60.i

do.end60.i:                                       ; preds = %if.else50.i, %if.then35.i
  %data.0.i = phi i32 [ %72, %if.then35.i ], [ %73, %if.else50.i ]
  %or.i = or i32 %data.0.i, 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !366
  call void @arm_heavy_mb() #10
  %74 = call i32 @llvm.bswap.i32(i32 %or.i) #10
  %75 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw, align 4
  %add.ptr65.i = getelementptr i8, ptr %76, i32 4096
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %74) #10, !srcloc !220
  br label %if.end77thread-pre-split.i

if.else66.i:                                      ; preds = %do.end.i
  %and67.i = and i32 %mst_data.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %do.body70.i, label %if.else66.i.if.end77.i_crit_edge

if.else66.i.if.end77.i_crit_edge:                 ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77.i

do.body70.i:                                      ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !367
  call void @arm_heavy_mb() #10
  %or73.i = or i32 %and.i, 32
  %77 = call i32 @llvm.bswap.i32(i32 %or73.i) #10
  %78 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw, align 4
  %add.ptr75.i = getelementptr i8, ptr %79, i32 5120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75.i, i32 %77) #10, !srcloc !220
  br label %if.end77thread-pre-split.i

if.end77thread-pre-split.i:                       ; preds = %do.body70.i, %do.end60.i
  %80 = ptrtoint ptr %nic_type.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pr.i = load i32, ptr %nic_type.i, align 4
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.end77thread-pre-split.i, %if.else66.i.if.end77.i_crit_edge
  %81 = phi i32 [ %.pr.i, %if.end77thread-pre-split.i ], [ %63, %if.else66.i.if.end77.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %81)
  %cmp79.i = icmp eq i32 %81, 2
  br i1 %cmp79.i, label %land.lhs.true.i, label %if.end77.i.if.end168.i_crit_edge

if.end77.i.if.end168.i_crit_edge:                 ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168.i

land.lhs.true.i:                                  ; preds = %if.end77.i
  %revision_id.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 10
  %82 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %revision_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %83)
  %cmp80.i = icmp eq i8 %83, -64
  br i1 %cmp80.i, label %do.body83.i, label %land.lhs.true.i.if.end168.i_crit_edge

land.lhs.true.i.if.end168.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168.i

do.body83.i:                                      ; preds = %land.lhs.true.i
  %84 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %hibernate, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool85.not.i = icmp eq i8 %85, 0
  %86 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw, align 4
  %add.ptr111.i = getelementptr i8, ptr %87, i32 4100
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111.i) #10
  br i1 %tobool85.not.i, label %if.else107.i, label %if.then92.i, !prof !225

if.then92.i:                                      ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !368
  %89 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw, align 4
  %add.ptr103.i = getelementptr i8, ptr %90, i32 4100
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103.i) #10, !srcloc !222
  %92 = call i32 @llvm.bswap.i32(i32 %91) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !369
  br label %do.end117.i

if.else107.i:                                     ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #12
  %93 = call i32 @llvm.bswap.i32(i32 %88) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !370
  br label %do.end117.i

do.end117.i:                                      ; preds = %if.else107.i, %if.then92.i
  %data.1.i = phi i32 [ %92, %if.then92.i ], [ %93, %if.else107.i ]
  %or121.i = or i32 %data.1.i, 983040
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !371
  call void @arm_heavy_mb() #10
  %94 = call i32 @llvm.bswap.i32(i32 %or121.i) #10
  %95 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw, align 4
  %add.ptr126.i = getelementptr i8, ptr %96, i32 4100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126.i, i32 %94) #10, !srcloc !220
  %97 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %hibernate, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool129.not.i = icmp eq i8 %98, 0
  %99 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hw, align 4
  %add.ptr155.i = getelementptr i8, ptr %100, i32 104
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr155.i) #10
  br i1 %tobool129.not.i, label %if.else151.i, label %if.then136.i, !prof !225

if.then136.i:                                     ; preds = %do.end117.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !372
  %102 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw, align 4
  %add.ptr147.i = getelementptr i8, ptr %103, i32 104
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr147.i) #10, !srcloc !222
  %105 = call i32 @llvm.bswap.i32(i32 %104) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !373
  br label %do.end161.i

if.else151.i:                                     ; preds = %do.end117.i
  call void @__sanitizer_cov_trace_pc() #12
  %106 = call i32 @llvm.bswap.i32(i32 %101) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !374
  br label %do.end161.i

do.end161.i:                                      ; preds = %if.else151.i, %if.then136.i
  %data.2.i = phi i32 [ %105, %if.then136.i ], [ %106, %if.else151.i ]
  %or162.i = or i32 %data.2.i, 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !375
  call void @arm_heavy_mb() #10
  %107 = call i32 @llvm.bswap.i32(i32 %or162.i) #10
  %108 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw, align 4
  %add.ptr167.i = getelementptr i8, ptr %109, i32 104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167.i, i32 %107) #10, !srcloc !220
  br label %if.end168.i

if.end168.i:                                      ; preds = %do.end161.i, %land.lhs.true.i.if.end168.i_crit_edge, %if.end77.i.if.end168.i_crit_edge
  %110 = ptrtoint ptr %nic_type.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nic_type.i, align 4
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %111, label %if.end168.i.atl1c_pcie_patch.exit_crit_edge [
    i32 2, label %if.end168.i.do.body177.i_crit_edge
    i32 4, label %if.end168.i.do.body177.i_crit_edge2
  ]

if.end168.i.do.body177.i_crit_edge2:              ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body177.i

if.end168.i.do.body177.i_crit_edge:               ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body177.i

if.end168.i.atl1c_pcie_patch.exit_crit_edge:      ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_pcie_patch.exit

do.body177.i:                                     ; preds = %if.end168.i.do.body177.i_crit_edge, %if.end168.i.do.body177.i_crit_edge2
  %113 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %hibernate, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool179.not.i = icmp eq i8 %114, 0
  %115 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw, align 4
  %add.ptr205.i = getelementptr i8, ptr %116, i32 4856
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr205.i) #10
  br i1 %tobool179.not.i, label %if.else201.i, label %if.then186.i, !prof !225

if.then186.i:                                     ; preds = %do.body177.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !376
  %118 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hw, align 4
  %add.ptr197.i = getelementptr i8, ptr %119, i32 4856
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr197.i) #10, !srcloc !222
  %121 = call i32 @llvm.bswap.i32(i32 %120) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !377
  br label %do.end211.i

if.else201.i:                                     ; preds = %do.body177.i
  call void @__sanitizer_cov_trace_pc() #12
  %122 = call i32 @llvm.bswap.i32(i32 %117) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !378
  br label %do.end211.i

do.end211.i:                                      ; preds = %if.else201.i, %if.then186.i
  %data.3.i = phi i32 [ %121, %if.then186.i ], [ %122, %if.else201.i ]
  %or212.i = or i32 %data.3.i, 268435456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !379
  call void @arm_heavy_mb() #10
  %123 = call i32 @llvm.bswap.i32(i32 %or212.i) #10
  %124 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hw, align 4
  %add.ptr217.i = getelementptr i8, ptr %125, i32 4856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr217.i, i32 %123) #10, !srcloc !220
  %126 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %hibernate, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool220.not.i = icmp eq i8 %127, 0
  %128 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hw, align 4
  %add.ptr246.i = getelementptr i8, ptr %129, i32 4372
  %130 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr246.i) #10
  br i1 %tobool220.not.i, label %if.else242.i, label %if.then227.i, !prof !225

if.then227.i:                                     ; preds = %do.end211.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %131 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hw, align 4
  %add.ptr238.i = getelementptr i8, ptr %132, i32 4372
  %133 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr238.i) #10, !srcloc !222
  %134 = call i32 @llvm.bswap.i32(i32 %133) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !381
  br label %do.body253.i

if.else242.i:                                     ; preds = %do.end211.i
  call void @__sanitizer_cov_trace_pc() #12
  %135 = call i32 @llvm.bswap.i32(i32 %130) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !382
  br label %do.body253.i

do.body253.i:                                     ; preds = %if.else242.i, %if.then227.i
  %data.4.i = phi i32 [ %134, %if.then227.i ], [ %135, %if.else242.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !383
  call void @arm_heavy_mb() #10
  %and256.i = and i32 %data.4.i, -2
  %136 = call i32 @llvm.bswap.i32(i32 %and256.i) #10
  %137 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hw, align 4
  %add.ptr258.i = getelementptr i8, ptr %138, i32 4372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr258.i, i32 %136) #10, !srcloc !220
  br label %atl1c_pcie_patch.exit

atl1c_pcie_patch.exit:                            ; preds = %do.body253.i, %if.end168.i.atl1c_pcie_patch.exit_crit_edge
  %ctrl_flags1.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 28
  %139 = ptrtoint ptr %ctrl_flags1.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %ctrl_flags1.i, align 4
  %141 = and i16 %140, -385
  store i16 %141, ptr %ctrl_flags1.i, align 4
  call fastcc void @atl1c_set_aspm(ptr noundef %hw, i16 noundef zeroext -1) #10
  %142 = ptrtoint ptr %ctrl_flags1.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %140, ptr %ctrl_flags1.i, align 4
  call void @msleep(i32 noundef 5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1c_phy_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1c_phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1c_read_mac_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atl1c_hw_set_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1c_common_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -480
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %flags = getelementptr i8, ptr %work, i32 -72
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %work_event = getelementptr i8, ptr %work, i32 -68
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %work_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_device_detach(ptr noundef %1) #10
  tail call fastcc void @atl1c_down(ptr noundef %add.ptr)
  %call5 = tail call fastcc i32 @atl1c_up(ptr noundef %add.ptr)
  tail call void @netif_device_attach(ptr noundef %1) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %call8 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %work_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.then10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end6
  %irq_sem.i = getelementptr i8, ptr %work, i32 -4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %irq_sem.i, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_sem.i, ptr %irq_sem.i, i32 1, ptr elementtype(i32) %irq_sem.i) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %hw.i = getelementptr i8, ptr %work, i32 -468
  %6 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %9, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 128) #10, !srcloc !220
  %10 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  %pdev.i = getelementptr i8, ptr %work, i32 -476
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 46
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %16) #10
  tail call fastcc void @atl1c_check_link_status(ptr noundef %add.ptr)
  %call.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !226
  tail call void @llvm.prefetch.p0(ptr %irq_sem.i, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_sem.i, ptr %irq_sem.i, i32 1, ptr elementtype(i32) %irq_sem.i) #10, !srcloc !227
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body.i, label %if.then10.cleanup_crit_edge, !prof !225

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %19, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 -129) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %intr_mask.i = getelementptr i8, ptr %work, i32 -384
  %20 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %intr_mask.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  %23 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %24, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %22) #10, !srcloc !220
  %25 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw.i, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #10, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %if.then10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atl1c_set_ethtool_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_open(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags = getelementptr i8, ptr %netdev, i32 2712
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev1.i = getelementptr i8, ptr %netdev, i32 2308
  %3 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev1.i, align 4
  %tpd_ring2.i = getelementptr i8, ptr %netdev, i32 2936
  %rfd_ring3.i = getelementptr i8, ptr %netdev, i32 3960
  %rrd_ring5.i = getelementptr i8, ptr %netdev, i32 4040
  %ring_header7.i = getelementptr i8, ptr %netdev, i32 2924
  %tx_queue_count.i = getelementptr i8, ptr %netdev, i32 2704
  %5 = ptrtoint ptr %tx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_queue_count.i, align 8
  %rx_queue_count.i = getelementptr i8, ptr %netdev, i32 2708
  %7 = ptrtoint ptr %rx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp eq i32 %6, 1
  %spec.store.select.i = select i1 %cmp.i, i32 2, i32 %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i)
  %cmp8334.i = icmp sgt i32 %spec.store.select.i, 1
  br i1 %cmp8334.i, label %for.body.lr.ph.i, label %if.end.for.end.i_crit_edge

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %count9.i = getelementptr i8, ptr %netdev, i32 2952
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0335.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %count9.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %count9.i, align 8
  %count11.i = getelementptr %struct.atl1c_tpd_ring, ptr %tpd_ring2.i, i32 %i.0335.i, i32 5
  %11 = ptrtoint ptr %count11.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %count11.i, align 8
  %inc.i = add nuw nsw i32 %i.0335.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %spec.store.select.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %count12.i = getelementptr i8, ptr %netdev, i32 2952
  %count13.i = getelementptr i8, ptr %netdev, i32 3970
  %12 = ptrtoint ptr %count13.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %count13.i, align 2
  %conv14.i = zext i16 %13 to i32
  %mul15.i = mul i32 %8, %conv14.i
  %14 = ptrtoint ptr %count12.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %count12.i, align 8
  %conv.i = zext i16 %15 to i32
  %mul.i = mul i32 %spec.store.select.i, %conv.i
  %add.i = add i32 %mul15.i, %mul.i
  %mul16.i = mul i32 %add.i, 12
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul16.i, i32 noundef 3520) #14
  %buffer_info.i = getelementptr i8, ptr %netdev, i32 2960
  %16 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i.i.i, ptr %buffer_info.i, align 8
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %for.end.i.atl1c_setup_ring_resources.exit_crit_edge, label %for.cond23.preheader.i, !prof !237

for.end.i.atl1c_setup_ring_resources.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_setup_ring_resources.exit

for.cond23.preheader.i:                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp24336.i = icmp sgt i32 %spec.store.select.i, 0
  br i1 %cmp24336.i, label %for.cond23.preheader.i.for.body26.i_crit_edge, label %for.cond23.preheader.i.for.cond41.preheader.i_crit_edge

for.cond23.preheader.i.for.cond41.preheader.i_crit_edge: ; preds = %for.cond23.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond41.preheader.i

for.cond23.preheader.i.for.body26.i_crit_edge:    ; preds = %for.cond23.preheader.i
  br label %for.body26.i

for.cond41.preheader.i:                           ; preds = %for.body26.i.for.cond41.preheader.i_crit_edge, %for.cond23.preheader.i.for.cond41.preheader.i_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %for.cond23.preheader.i.for.cond41.preheader.i_crit_edge ], [ %add37.i, %for.body26.i.for.cond41.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp42339.i = icmp sgt i32 %8, 0
  br i1 %cmp42339.i, label %for.cond41.preheader.i.for.body44.i_crit_edge, label %for.cond41.preheader.i.for.end67.i_crit_edge

for.cond41.preheader.i.for.end67.i_crit_edge:     ; preds = %for.cond41.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end67.i

for.cond41.preheader.i.for.body44.i_crit_edge:    ; preds = %for.cond41.preheader.i
  br label %for.body44.i

for.body26.i:                                     ; preds = %for.body26.i.for.body26.i_crit_edge, %for.cond23.preheader.i.for.body26.i_crit_edge
  %count.0338.i = phi i32 [ %add37.i, %for.body26.i.for.body26.i_crit_edge ], [ 0, %for.cond23.preheader.i.for.body26.i_crit_edge ]
  %i.1337.i = phi i32 [ %inc39.i, %for.body26.i.for.body26.i_crit_edge ], [ 0, %for.cond23.preheader.i.for.body26.i_crit_edge ]
  %arrayidx27.i = getelementptr %struct.atl1c_tpd_ring, ptr %tpd_ring2.i, i32 %i.1337.i
  %17 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %arrayidx27.i, align 8
  %conv29.i = trunc i32 %i.1337.i to i16
  %num.i = getelementptr %struct.atl1c_tpd_ring, ptr %tpd_ring2.i, i32 %i.1337.i, i32 3
  %18 = ptrtoint ptr %num.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv29.i, ptr %num.i, align 4
  %19 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer_info.i, align 8
  %add.ptr.i28 = getelementptr %struct.atl1c_buffer, ptr %20, i32 %count.0338.i
  %buffer_info33.i = getelementptr %struct.atl1c_tpd_ring, ptr %tpd_ring2.i, i32 %i.1337.i, i32 8
  %21 = ptrtoint ptr %buffer_info33.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i28, ptr %buffer_info33.i, align 8
  %count35.i = getelementptr %struct.atl1c_tpd_ring, ptr %tpd_ring2.i, i32 %i.1337.i, i32 5
  %22 = ptrtoint ptr %count35.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %count35.i, align 8
  %conv36.i = zext i16 %23 to i32
  %add37.i = add i32 %count.0338.i, %conv36.i
  %inc39.i = add nuw nsw i32 %i.1337.i, 1
  %exitcond349.not.i = icmp eq i32 %inc39.i, %spec.store.select.i
  br i1 %exitcond349.not.i, label %for.body26.i.for.cond41.preheader.i_crit_edge, label %for.body26.i.for.body26.i_crit_edge

for.body26.i.for.body26.i_crit_edge:              ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body26.i

for.body26.i.for.cond41.preheader.i_crit_edge:    ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond41.preheader.i

for.body44.i:                                     ; preds = %for.body44.i.for.body44.i_crit_edge, %for.cond41.preheader.i.for.body44.i_crit_edge
  %count.1341.i = phi i32 [ %add64.i, %for.body44.i.for.body44.i_crit_edge ], [ %count.0.lcssa.i, %for.cond41.preheader.i.for.body44.i_crit_edge ]
  %i.2340.i = phi i32 [ %inc66.i, %for.body44.i.for.body44.i_crit_edge ], [ 0, %for.cond41.preheader.i.for.body44.i_crit_edge ]
  %arrayidx45.i = getelementptr %struct.atl1c_rrd_ring, ptr %rrd_ring5.i, i32 %i.2340.i
  %24 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i, ptr %arrayidx45.i, align 8
  %conv47.i = trunc i32 %i.2340.i to i16
  %num49.i = getelementptr %struct.atl1c_rrd_ring, ptr %rrd_ring5.i, i32 %i.2340.i, i32 3
  %25 = ptrtoint ptr %num49.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv47.i, ptr %num49.i, align 4
  %26 = ptrtoint ptr %count13.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %count13.i, align 2
  %count53.i = getelementptr %struct.atl1c_rrd_ring, ptr %rrd_ring5.i, i32 %i.2340.i, i32 5
  %28 = ptrtoint ptr %count53.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %count53.i, align 8
  %count57.i = getelementptr %struct.atl1c_rfd_ring, ptr %rfd_ring3.i, i32 %i.2340.i, i32 3
  %29 = ptrtoint ptr %count57.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %27, ptr %count57.i, align 2
  %30 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer_info.i, align 8
  %add.ptr59.i = getelementptr %struct.atl1c_buffer, ptr %31, i32 %count.1341.i
  %buffer_info61.i = getelementptr %struct.atl1c_rfd_ring, ptr %rfd_ring3.i, i32 %i.2340.i, i32 6
  %32 = ptrtoint ptr %buffer_info61.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr59.i, ptr %buffer_info61.i, align 4
  %33 = load i16, ptr %count13.i, align 2
  %conv63.i = zext i16 %33 to i32
  %add64.i = add i32 %count.1341.i, %conv63.i
  %inc66.i = add nuw nsw i32 %i.2340.i, 1
  %exitcond350.not.i = icmp eq i32 %inc66.i, %8
  br i1 %exitcond350.not.i, label %for.body44.i.for.end67.i_crit_edge, label %for.body44.i.for.body44.i_crit_edge

for.body44.i.for.body44.i_crit_edge:              ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body44.i

for.body44.i.for.end67.i_crit_edge:               ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end67.i

for.end67.i:                                      ; preds = %for.body44.i.for.end67.i_crit_edge, %for.cond41.preheader.i.for.end67.i_crit_edge
  %34 = ptrtoint ptr %count12.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %count12.i, align 8
  %conv69.i = zext i16 %35 to i32
  %mul70.i = shl i32 %spec.store.select.i, 4
  %mul71.i = mul i32 %mul70.i, %conv69.i
  %36 = ptrtoint ptr %count13.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %count13.i, align 2
  %conv73.i = zext i16 %37 to i32
  %reass.mul333.i = mul i32 %8, 24
  %reass.mul.i = mul i32 %reass.mul333.i, %conv73.i
  %add81.i = add i32 %mul71.i, 32
  %add82.i = add i32 %add81.i, %reass.mul.i
  %size83.i = getelementptr i8, ptr %netdev, i32 2932
  %38 = ptrtoint ptr %size83.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add82.i, ptr %size83.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %dma.i = getelementptr i8, ptr %netdev, i32 2928
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %add82.i, ptr noundef %dma.i, i32 noundef 3264, i32 noundef 0) #10
  %39 = ptrtoint ptr %ring_header7.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i, ptr %ring_header7.i, align 4
  %tobool87.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool87.not.i, label %do.end.i, label %if.end98.i, !prof !237

do.end.i:                                         ; preds = %for.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.61) #13
  br label %atl1c_setup_ring_resources.exit

if.end98.i:                                       ; preds = %for.end67.i
  %40 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma.i, align 4
  %add100.i = add i32 %41, 7
  %div331.i = and i32 %add100.i, -8
  %dma103.i = getelementptr i8, ptr %netdev, i32 2944
  %42 = ptrtoint ptr %dma103.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div331.i, ptr %dma103.i, align 8
  %sub107.i = sub i32 %div331.i, %41
  br i1 %cmp24336.i, label %if.end98.i.for.body111.i_crit_edge, label %if.end98.i.for.cond140.preheader.i_crit_edge

if.end98.i.for.cond140.preheader.i_crit_edge:     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond140.preheader.i

if.end98.i.for.body111.i_crit_edge:               ; preds = %if.end98.i
  br label %for.body111.i

for.cond140.preheader.i:                          ; preds = %for.body111.i.for.cond140.preheader.i_crit_edge, %if.end98.i.for.cond140.preheader.i_crit_edge
  %offset.0.lcssa.i = phi i32 [ %sub107.i, %if.end98.i.for.cond140.preheader.i_crit_edge ], [ %add136.i, %for.body111.i.for.cond140.preheader.i_crit_edge ]
  br i1 %cmp42339.i, label %for.cond140.preheader.i.for.body143.i_crit_edge, label %for.cond140.preheader.i.if.end7_crit_edge

for.cond140.preheader.i.if.end7_crit_edge:        ; preds = %for.cond140.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

for.cond140.preheader.i.for.body143.i_crit_edge:  ; preds = %for.cond140.preheader.i
  br label %for.body143.i

for.body111.i:                                    ; preds = %for.body111.i.for.body111.i_crit_edge, %if.end98.i.for.body111.i_crit_edge
  %offset.0344.i = phi i32 [ %add136.i, %for.body111.i.for.body111.i_crit_edge ], [ %sub107.i, %if.end98.i.for.body111.i_crit_edge ]
  %i.3343.i = phi i32 [ %inc138.i, %for.body111.i.for.body111.i_crit_edge ], [ 0, %if.end98.i.for.body111.i_crit_edge ]
  %add113.i = add i32 %offset.0344.i, %41
  %dma115.i = getelementptr %struct.atl1c_tpd_ring, ptr %tpd_ring2.i, i32 %i.3343.i, i32 2
  %43 = ptrtoint ptr %dma115.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add113.i, ptr %dma115.i, align 8
  %add.ptr117.i = getelementptr i8, ptr %call.i.i, i32 %offset.0344.i
  %desc119.i = getelementptr %struct.atl1c_tpd_ring, ptr %tpd_ring2.i, i32 %i.3343.i, i32 1
  %44 = ptrtoint ptr %desc119.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr117.i, ptr %desc119.i, align 4
  %count121.i = getelementptr %struct.atl1c_tpd_ring, ptr %tpd_ring2.i, i32 %i.3343.i, i32 5
  %45 = ptrtoint ptr %count121.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %count121.i, align 8
  %mul123.i = shl i16 %46, 4
  %size126.i = getelementptr %struct.atl1c_tpd_ring, ptr %tpd_ring2.i, i32 %i.3343.i, i32 4
  %47 = ptrtoint ptr %size126.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %mul123.i, ptr %size126.i, align 2
  %mul135.i = zext i16 %mul123.i to i32
  %add136.i = add i32 %offset.0344.i, %mul135.i
  %inc138.i = add nuw nsw i32 %i.3343.i, 1
  %exitcond351.not.i = icmp eq i32 %inc138.i, %spec.store.select.i
  br i1 %exitcond351.not.i, label %for.body111.i.for.cond140.preheader.i_crit_edge, label %for.body111.i.for.body111.i_crit_edge

for.body111.i.for.body111.i_crit_edge:            ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body111.i

for.body111.i.for.cond140.preheader.i_crit_edge:  ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond140.preheader.i

for.body143.i:                                    ; preds = %for.body143.i.for.body143.i_crit_edge, %for.cond140.preheader.i.for.body143.i_crit_edge
  %offset.1348.i = phi i32 [ %add193.i, %for.body143.i.for.body143.i_crit_edge ], [ %offset.0.lcssa.i, %for.cond140.preheader.i.for.body143.i_crit_edge ]
  %i.4347.i = phi i32 [ %inc195.i, %for.body143.i.for.body143.i_crit_edge ], [ 0, %for.cond140.preheader.i.for.body143.i_crit_edge ]
  %48 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma.i, align 4
  %add145.i = add i32 %49, %offset.1348.i
  %arrayidx146.i = getelementptr %struct.atl1c_rfd_ring, ptr %rfd_ring3.i, i32 %i.4347.i
  %dma147.i = getelementptr %struct.atl1c_rfd_ring, ptr %rfd_ring3.i, i32 %i.4347.i, i32 1
  %50 = ptrtoint ptr %dma147.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add145.i, ptr %dma147.i, align 4
  %51 = ptrtoint ptr %ring_header7.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ring_header7.i, align 4
  %add.ptr149.i = getelementptr i8, ptr %52, i32 %offset.1348.i
  %53 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr149.i, ptr %arrayidx146.i, align 4
  %count153.i = getelementptr %struct.atl1c_rfd_ring, ptr %rfd_ring3.i, i32 %i.4347.i, i32 3
  %54 = ptrtoint ptr %count153.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %count153.i, align 2
  %mul155.i = shl i16 %55, 3
  %size158.i = getelementptr %struct.atl1c_rfd_ring, ptr %rfd_ring3.i, i32 %i.4347.i, i32 2
  %56 = ptrtoint ptr %size158.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %mul155.i, ptr %size158.i, align 4
  %mul167.i = zext i16 %mul155.i to i32
  %add168.i = add i32 %offset.1348.i, %mul167.i
  %57 = load i32, ptr %dma.i, align 4
  %add170.i = add i32 %add168.i, %57
  %dma172.i = getelementptr %struct.atl1c_rrd_ring, ptr %rrd_ring5.i, i32 %i.4347.i, i32 2
  %58 = ptrtoint ptr %dma172.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add170.i, ptr %dma172.i, align 8
  %59 = load ptr, ptr %ring_header7.i, align 4
  %add.ptr174.i = getelementptr i8, ptr %59, i32 %add168.i
  %desc176.i = getelementptr %struct.atl1c_rrd_ring, ptr %rrd_ring5.i, i32 %i.4347.i, i32 1
  %60 = ptrtoint ptr %desc176.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr174.i, ptr %desc176.i, align 4
  %count178.i = getelementptr %struct.atl1c_rrd_ring, ptr %rrd_ring5.i, i32 %i.4347.i, i32 5
  %61 = ptrtoint ptr %count178.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %count178.i, align 8
  %mul180.i = shl i16 %62, 4
  %size183.i = getelementptr %struct.atl1c_rrd_ring, ptr %rrd_ring5.i, i32 %i.4347.i, i32 4
  %63 = ptrtoint ptr %size183.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %mul180.i, ptr %size183.i, align 2
  %mul192.i = zext i16 %mul180.i to i32
  %add193.i = add i32 %add168.i, %mul192.i
  %inc195.i = add nuw nsw i32 %i.4347.i, 1
  %exitcond352.not.i = icmp eq i32 %inc195.i, %8
  br i1 %exitcond352.not.i, label %for.body143.i.if.end7_crit_edge, label %for.body143.i.for.body143.i_crit_edge

for.body143.i.for.body143.i_crit_edge:            ; preds = %for.body143.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body143.i

for.body143.i.if.end7_crit_edge:                  ; preds = %for.body143.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

atl1c_setup_ring_resources.exit:                  ; preds = %do.end.i, %for.end.i.atl1c_setup_ring_resources.exit_crit_edge
  %64 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer_info.i, align 8
  tail call void @kfree(ptr noundef %65) #10
  br label %cleanup

if.end7:                                          ; preds = %for.body143.i.if.end7_crit_edge, %for.cond140.preheader.i.if.end7_crit_edge
  %call8 = tail call fastcc i32 @atl1c_up(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %err_up, !prof !225

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_up:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @atl1c_free_irq(ptr noundef %add.ptr.i)
  tail call fastcc void @atl1c_free_ring_resources(ptr noundef %add.ptr.i)
  %hw = getelementptr i8, ptr %netdev, i32 2316
  %call18 = tail call fastcc i32 @atl1c_reset_mac(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %err_up, %if.end7.cleanup_crit_edge, %atl1c_setup_ring_resources.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %err_up ], [ -16, %entry.cleanup_crit_edge ], [ -12, %atl1c_setup_ring_resources.exit ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_close(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %netdev, i32 2712
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !225

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2540, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #10
  %common_task = getelementptr i8, ptr %netdev, i32 2784
  %call22 = tail call zeroext i1 @cancel_work_sync(ptr noundef %common_task) #10
  tail call fastcc void @atl1c_down(ptr noundef %add.ptr.i)
  tail call fastcc void @atl1c_free_ring_resources(ptr noundef %add.ptr.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_xmit_frame(ptr noundef %skb, ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %1 to i32
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i, align 128
  %flags = getelementptr i8, ptr %netdev, i32 2712
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %7 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %10 to i16
  %add.i = add nuw nsw i16 %conv.i, 1
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.i.not.i = icmp eq i16 %12, 0
  br i1 %tobool.i.not.i, label %if.end.atl1c_cal_tpd_req.exit_crit_edge, label %if.then.i

if.end.atl1c_cal_tpd_req.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_cal_tpd_req.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %15 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %16 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load.i.i.i = load i16, ptr %doff.i.i.i, align 4
  %20 = lshr i16 %bf.load.i.i.i, 10
  %21 = and i16 %20, 60
  %mul.i.i.i = zext i16 %21 to i32
  %add5.i = add i32 %sub.ptr.sub.i.i, %mul.i.i.i
  %conv7.i = and i32 %add5.i, 65535
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %24 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %23, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7.i, i32 %sub.i.i)
  %cmp.i = icmp ult i32 %conv7.i, %sub.i.i
  %inc.i = add nuw nsw i16 %conv.i, 2
  %spec.select.i = select i1 %cmp.i, i16 %inc.i, i16 %add.i
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 8
  %26 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %gso_type.i, align 8
  %28 = trunc i32 %27 to i16
  %29 = lshr i16 %28, 4
  %30 = and i16 %29, 1
  %spec.select23.i = add nuw nsw i16 %spec.select.i, %30
  br label %atl1c_cal_tpd_req.exit

atl1c_cal_tpd_req.exit:                           ; preds = %if.then.i, %if.end.atl1c_cal_tpd_req.exit_crit_edge
  %tpd_req.1.i = phi i16 [ %add.i, %if.end.atl1c_cal_tpd_req.exit_crit_edge ], [ %spec.select23.i, %if.then.i ]
  %next_to_clean2.i = getelementptr %struct.atl1c_adapter, ptr %add.ptr.i, i32 0, i32 22, i32 %conv, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_clean2.i, i32 noundef 4) #10
  %31 = ptrtoint ptr %next_to_clean2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %next_to_clean2.i, align 4
  %next_to_use3.i = getelementptr %struct.atl1c_adapter, ptr %add.ptr.i, i32 0, i32 22, i32 %conv, i32 6
  %33 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %next_to_use3.i, align 2
  %conv4.i = and i32 %32, 65535
  %conv5.i = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i, i32 %conv5.i)
  %cmp.i85 = icmp ugt i32 %conv4.i, %conv5.i
  br i1 %cmp.i85, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %atl1c_cal_tpd_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  %35 = xor i32 %conv5.i, -1
  %sub11.i = add nsw i32 %conv4.i, %35
  br label %atl1c_tpd_avail.exit

cond.false.i:                                     ; preds = %atl1c_cal_tpd_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  %count.i = getelementptr %struct.atl1c_adapter, ptr %add.ptr.i, i32 0, i32 22, i32 %conv, i32 5
  %36 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %count.i, align 8
  %conv12.i = zext i16 %37 to i32
  %38 = xor i32 %conv5.i, -1
  %add.i86 = add nsw i32 %conv4.i, %38
  %sub16.i = add nsw i32 %add.i86, %conv12.i
  br label %atl1c_tpd_avail.exit

atl1c_tpd_avail.exit:                             ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %sub11.i, %cond.true.i ], [ %sub16.i, %cond.false.i ]
  %conv17.i = trunc i32 %cond.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %tpd_req.1.i, i16 %conv17.i)
  %cmp = icmp ugt i16 %tpd_req.1.i, %conv17.i
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %atl1c_tpd_avail.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !384
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %next_to_use3.i, align 2
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #10
  %hw.i = getelementptr i8, ptr %netdev, i32 2316
  %42 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw.i, align 4
  %tpd_prod.i = getelementptr [4 x %struct.atl1c_qregs], ptr @atl1c_qregs, i32 0, i32 %conv, i32 1
  %44 = ptrtoint ptr %tpd_prod.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %tpd_prod.i, align 2
  %conv.i87 = zext i16 %45 to i32
  %add.ptr.i88 = getelementptr i8, ptr %43, i32 %conv.i87
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i88, i16 %41) #10, !srcloc !385
  %state.i = getelementptr %struct.netdev_queue, ptr %3, i32 %conv, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  br label %cleanup

if.end10:                                         ; preds = %atl1c_tpd_avail.exit
  %inc.i89 = add i16 %34, 1
  %count.i90 = getelementptr %struct.atl1c_adapter, ptr %add.ptr.i, i32 0, i32 22, i32 %conv, i32 5
  %46 = ptrtoint ptr %count.i90 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %count.i90, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i89, i16 %47)
  %cmp.i91 = icmp eq i16 %inc.i89, %47
  %spec.store.select.i = select i1 %cmp.i91, i16 0, i16 %inc.i89
  %48 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %spec.store.select.i, ptr %next_to_use3.i, align 2
  %desc.i = getelementptr %struct.atl1c_adapter, ptr %add.ptr.i, i32 0, i32 22, i32 %conv, i32 1
  %49 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %desc.i, align 4
  %arrayidx7.i = getelementptr %struct.atl1c_tpd_desc, ptr %50, i32 %conv5.i
  %51 = call ptr @memset(ptr %arrayidx7.i, i32 0, i32 16)
  %pdev1.i = getelementptr i8, ptr %netdev, i32 2308
  %52 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev1.i, align 4
  %54 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %end.i.i, align 4
  %gso_size.i.i92 = getelementptr inbounds %struct.skb_shared_info, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %gso_size.i.i92 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %gso_size.i.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.i.not.i93 = icmp eq i16 %57, 0
  br i1 %tobool.i.not.i93, label %if.end10.check_sum.i_crit_edge, label %if.then.i95

if.end10.check_sum.i_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_sum.i

if.then.i95:                                      ; preds = %if.end10
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %58 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i.i.i94 = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i94)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i94, -1
  br i1 %tobool.not.i.i.i, label %if.then.i95.if.end.i_crit_edge, label %skb_header_cloned.exit.i.i

if.then.i95.if.end.i_crit_edge:                   ; preds = %if.then.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

skb_header_cloned.exit.i.i:                       ; preds = %if.then.i95
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %55, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #10
  %59 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %60, 65535
  %shr.i.i.i = ashr i32 %60, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %skb_header_cloned.exit.i.i.if.end.i_crit_edge, label %skb_cow_head.exit.i

skb_header_cloned.exit.i.i.if.end.i_crit_edge:    ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

skb_cow_head.exit.i:                              ; preds = %skb_header_cloned.exit.i.i
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp.i96 = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp.i96, label %skb_cow_head.exit.i.if.then15_crit_edge, label %skb_cow_head.exit.i.if.end.i_crit_edge

skb_cow_head.exit.i.if.end.i_crit_edge:           ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

skb_cow_head.exit.i.if.then15_crit_edge:          ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.end.i:                                         ; preds = %skb_cow_head.exit.i.if.end.i_crit_edge, %skb_header_cloned.exit.i.i.if.end.i_crit_edge, %if.then.i95.if.end.i_crit_edge
  %61 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i.i, align 4
  %gso_type.i97 = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 8
  %63 = ptrtoint ptr %gso_type.i97 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %gso_type.i97, align 8
  %and.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end39.i_crit_edge, label %if.then6.i

if.end.i.if.end39.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then6.i:                                       ; preds = %if.end.i
  %head.i.i.i98 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %65 = ptrtoint ptr %head.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %head.i.i.i98, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %67 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i99 = zext i16 %68 to i32
  %add.ptr.i.i.i100 = getelementptr i8, ptr %66, i32 %conv.i.i.i99
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %69 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i.i100 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %70 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i100, i32 0, i32 2
  %71 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %tot_len.i, align 2
  %conv9.i = zext i16 %72 to i32
  %add.i101 = add i32 %sub.ptr.sub.i, %conv9.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %73 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i101, i32 %74)
  %cmp10.i = icmp ult i32 %add.i101, %74
  br i1 %cmp10.i, label %cond.true.i.i, label %if.then6.i.if.end14.i_crit_edge

if.then6.i.if.end14.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

cond.true.i.i:                                    ; preds = %if.then6.i
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %75 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i.i212.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i.i212.i, label %__skb_trim.exit.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i102 = tail call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %add.i101) #10
  br label %if.end14.i

__skb_trim.exit.i.i.i:                            ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add.i101, ptr %len.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %70, i32 %add.i101
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %78 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %__skb_trim.exit.i.i.i, %if.then.i.i.i, %if.then6.i.if.end14.i_crit_edge
  %79 = ptrtoint ptr %head.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %head.i.i.i98, align 8
  %transport_header.i.i.i103 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %81 = ptrtoint ptr %transport_header.i.i.i103 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %transport_header.i.i.i103, align 2
  %conv.i.i214.i = zext i16 %82 to i32
  %add.ptr.i.i215.i = getelementptr i8, ptr %80, i32 %conv.i.i214.i
  %83 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i104 = ptrtoint ptr %add.ptr.i.i215.i to i32
  %sub.ptr.rhs.cast.i.i105 = ptrtoint ptr %84 to i32
  %sub.ptr.sub.i.i106 = sub i32 %sub.ptr.lhs.cast.i.i104, %sub.ptr.rhs.cast.i.i105
  %doff.i.i.i107 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i215.i, i32 0, i32 4
  %85 = ptrtoint ptr %doff.i.i.i107 to i32
  call void @__asan_load2_noabort(i32 %85)
  %bf.load.i.i216.i = load i16, ptr %doff.i.i.i107, align 4
  %86 = lshr i16 %bf.load.i.i216.i, 10
  %87 = and i16 %86, 60
  %mul.i.i.i108 = zext i16 %87 to i32
  %add17.i = add i32 %sub.ptr.sub.i.i106, %mul.i.i.i108
  %88 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len.i, align 4
  %conv20.i = and i32 %add17.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %conv20.i)
  %cmp21.i = icmp eq i32 %89, %conv20.i
  br i1 %cmp21.i, label %if.then25.i, label %if.else.i, !prof !237

if.then25.i:                                      ; preds = %if.end14.i
  %msg_enable.i = getelementptr i8, ptr %netdev, i32 2720
  %90 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %msg_enable.i, align 8
  %and26.i = and i32 %91, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.then25.i.check_sum.i_crit_edge, label %if.then25.i.check_sum.sink.split.i_crit_edge

if.then25.i.check_sum.sink.split.i_crit_edge:     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_sum.sink.split.i

if.then25.i.check_sum.i_crit_edge:                ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_sum.i

if.else.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i219.i = zext i16 %93 to i32
  %add.ptr.i.i220.i = getelementptr i8, ptr %80, i32 %conv.i.i219.i
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i220.i, i32 0, i32 7
  %94 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %check.i, align 2
  %95 = ptrtoint ptr %head.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %head.i.i.i98, align 8
  %97 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i223.i = zext i16 %97 to i32
  %add.ptr.i.i224.i = getelementptr i8, ptr %96, i32 %conv.i.i223.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i224.i, i32 0, i32 8
  %98 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i224.i, i32 0, i32 9
  %100 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %daddr.i, align 4
  %102 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %101, i32 %99, i32 6) #15, !srcloc !386
  %103 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %102) #15, !srcloc !387
  %neg.i.i.i = xor i32 %103, -1
  %shr.i.i229.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i230.i = trunc i32 %shr.i.i229.i to i16
  %neg.i = xor i16 %conv.i.i230.i, -1
  %104 = ptrtoint ptr %transport_header.i.i.i103 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %transport_header.i.i.i103, align 2
  %conv.i.i233.i = zext i16 %105 to i32
  %add.ptr.i.i234.i = getelementptr i8, ptr %96, i32 %conv.i.i233.i
  %check37.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i234.i, i32 0, i32 6
  %106 = ptrtoint ptr %check37.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %neg.i, ptr %check37.i, align 4
  %word1.i = getelementptr %struct.atl1c_tpd_desc, ptr %50, i32 %conv5.i, i32 2
  %107 = ptrtoint ptr %word1.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %word1.i, align 4
  %or.i = or i32 %108, 65536
  store i32 %or.i, ptr %word1.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else.i, %if.end.i.if.end39.i_crit_edge
  %and41.i = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.end39.i.if.end79.i_crit_edge, label %if.then43.i

if.end39.i.if.end79.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79.i

if.then43.i:                                      ; preds = %if.end39.i
  %109 = call ptr @memset(ptr %arrayidx7.i, i32 0, i32 16)
  %110 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %next_to_use3.i, align 2
  %inc.i.i = add i16 %111, 1
  %112 = ptrtoint ptr %count.i90 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %count.i90, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i, i16 %113)
  %cmp.i235.i = icmp eq i16 %inc.i.i, %113
  %spec.store.select.i.i = select i1 %cmp.i235.i, i16 0, i16 %inc.i.i
  %114 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %spec.store.select.i.i, ptr %next_to_use3.i, align 2
  %115 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %desc.i, align 4
  %idxprom.i.i = zext i16 %111 to i32
  %arrayidx7.i.i = getelementptr %struct.atl1c_tpd_desc, ptr %116, i32 %idxprom.i.i
  %117 = call ptr @memset(ptr %arrayidx7.i.i, i32 0, i32 16)
  %head.i.i236.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %118 = ptrtoint ptr %head.i.i236.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %head.i.i236.i, align 8
  %network_header.i.i237.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %120 = ptrtoint ptr %network_header.i.i237.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %network_header.i.i237.i, align 4
  %conv.i.i238.i = zext i16 %121 to i32
  %add.ptr.i.i239.i = getelementptr i8, ptr %119, i32 %conv.i.i238.i
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i239.i, i32 0, i32 2
  %122 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %payload_len.i, align 4
  %123 = load ptr, ptr %head.i.i236.i, align 8
  %transport_header.i.i241.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %124 = ptrtoint ptr %transport_header.i.i241.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %transport_header.i.i241.i, align 2
  %conv.i.i242.i = zext i16 %125 to i32
  %add.ptr.i.i243.i = getelementptr i8, ptr %123, i32 %conv.i.i242.i
  %data.i244.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %126 = ptrtoint ptr %data.i244.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %data.i244.i, align 4
  %sub.ptr.lhs.cast.i245.i = ptrtoint ptr %add.ptr.i.i243.i to i32
  %sub.ptr.rhs.cast.i246.i = ptrtoint ptr %127 to i32
  %sub.ptr.sub.i247.i = sub i32 %sub.ptr.lhs.cast.i245.i, %sub.ptr.rhs.cast.i246.i
  %doff.i.i252.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i243.i, i32 0, i32 4
  %128 = ptrtoint ptr %doff.i.i252.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %bf.load.i.i253.i = load i16, ptr %doff.i.i252.i, align 4
  %129 = lshr i16 %bf.load.i.i253.i, 10
  %130 = and i16 %129, 60
  %mul.i.i254.i = zext i16 %130 to i32
  %add48.i = add i32 %sub.ptr.sub.i247.i, %mul.i.i254.i
  %len50.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %131 = ptrtoint ptr %len50.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %len50.i, align 4
  %conv51.i = and i32 %add48.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %conv51.i)
  %cmp52.i = icmp eq i32 %132, %conv51.i
  br i1 %cmp52.i, label %if.then60.i, label %cleanup.i, !prof !237

if.then60.i:                                      ; preds = %if.then43.i
  %msg_enable61.i = getelementptr i8, ptr %netdev, i32 2720
  %133 = ptrtoint ptr %msg_enable61.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %msg_enable61.i, align 8
  %and62.i = and i32 %134, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %if.then60.i.check_sum.i_crit_edge, label %if.then60.i.check_sum.sink.split.i_crit_edge

if.then60.i.check_sum.sink.split.i_crit_edge:     ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_sum.sink.split.i

if.then60.i.check_sum.i_crit_edge:                ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_sum.i

cleanup.i:                                        ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #12
  %135 = ptrtoint ptr %network_header.i.i237.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %network_header.i.i237.i, align 4
  %conv.i.i.i256.i = zext i16 %136 to i32
  %add.ptr.i.i.i257.i = getelementptr i8, ptr %123, i32 %conv.i.i.i256.i
  %payload_len.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i257.i, i32 0, i32 2
  %137 = ptrtoint ptr %payload_len.i.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 0, ptr %payload_len.i.i, align 4
  %saddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i257.i, i32 0, i32 5
  %daddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i257.i, i32 0, i32 6
  %call.i.i.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i.i, ptr noundef %daddr.i.i, i32 noundef 0, i32 noundef 6, i32 noundef 0) #10
  %138 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i.i.i) #15, !srcloc !387
  %neg.i.i.i.i.i = xor i32 %138, -1
  %shr.i.i.i.i.i = lshr i32 %neg.i.i.i.i.i, 16
  %conv.i.i.i.i.i = trunc i32 %shr.i.i.i.i.i to i16
  %neg.i.i = xor i16 %conv.i.i.i.i.i, -1
  %check.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i243.i, i32 0, i32 6
  %139 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %neg.i.i, ptr %check.i.i, align 4
  %word172.i = getelementptr inbounds %struct.atl1c_tpd_ext_desc, ptr %arrayidx7.i, i32 0, i32 1
  %140 = ptrtoint ptr %word172.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %word172.i, align 4
  %or75.i = or i32 %141, 12288
  store i32 %or75.i, ptr %word172.i, align 4
  %142 = ptrtoint ptr %len50.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %len50.i, align 4
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #10
  %pkt_len.i = getelementptr inbounds %struct.atl1c_tpd_ext_desc, ptr %arrayidx7.i, i32 0, i32 2
  %145 = ptrtoint ptr %pkt_len.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %pkt_len.i, align 4
  %word177.i = getelementptr %struct.atl1c_tpd_desc, ptr %116, i32 %idxprom.i.i, i32 2
  %146 = ptrtoint ptr %word177.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %word177.i, align 4
  %or78.i = or i32 %147, 8192
  store i32 %or78.i, ptr %word177.i, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %cleanup.i, %if.end39.i.if.end79.i_crit_edge
  %tpd.0 = phi ptr [ %arrayidx7.i, %if.end39.i.if.end79.i_crit_edge ], [ %arrayidx7.i.i, %cleanup.i ]
  %word180.i = getelementptr inbounds %struct.atl1c_tpd_desc, ptr %tpd.0, i32 0, i32 2
  %148 = ptrtoint ptr %word180.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %word180.i, align 4
  %or81.i = or i32 %149, 4096
  store i32 %or81.i, ptr %word180.i, align 4
  %head.i.i259.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %150 = ptrtoint ptr %head.i.i259.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %head.i.i259.i, align 8
  %transport_header.i.i260.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %152 = ptrtoint ptr %transport_header.i.i260.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %transport_header.i.i260.i, align 2
  %conv.i.i261.i = zext i16 %153 to i32
  %add.ptr.i.i262.i = getelementptr i8, ptr %151, i32 %conv.i.i261.i
  %data.i263.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %154 = ptrtoint ptr %data.i263.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %data.i263.i, align 4
  %sub.ptr.lhs.cast.i264.i = ptrtoint ptr %add.ptr.i.i262.i to i32
  %sub.ptr.rhs.cast.i265.i = ptrtoint ptr %155 to i32
  %sub.ptr.sub.i266.i = sub i32 %sub.ptr.lhs.cast.i264.i, %sub.ptr.rhs.cast.i265.i
  %and83.i = and i32 %sub.ptr.sub.i266.i, 255
  %or85.i = or i32 %and83.i, %or81.i
  store i32 %or85.i, ptr %word180.i, align 4
  %156 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %157, i32 0, i32 4
  %158 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %gso_size.i, align 4
  %160 = and i16 %159, 8191
  %and88.i = zext i16 %160 to i32
  %shl89.i = shl nuw nsw i32 %and88.i, 18
  %or91.i = or i32 %shl89.i, %or85.i
  store i32 %or91.i, ptr %word180.i, align 4
  br label %if.end16

check_sum.sink.split.i:                           ; preds = %if.then60.i.check_sum.sink.split.i_crit_edge, %if.then25.i.check_sum.sink.split.i_crit_edge
  %tpd.1 = phi ptr [ %arrayidx7.i.i, %if.then60.i.check_sum.sink.split.i_crit_edge ], [ %arrayidx7.i, %if.then25.i.check_sum.sink.split.i_crit_edge ]
  %.str.68.sink.i = phi ptr [ @.str.68, %if.then60.i.check_sum.sink.split.i_crit_edge ], [ @.str.65, %if.then25.i.check_sum.sink.split.i_crit_edge ]
  %dev68.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev68.i, ptr noundef nonnull %.str.68.sink.i) #13
  br label %check_sum.i

check_sum.i:                                      ; preds = %check_sum.sink.split.i, %if.then60.i.check_sum.i_crit_edge, %if.then25.i.check_sum.i_crit_edge, %if.end10.check_sum.i_crit_edge
  %tpd.2 = phi ptr [ %arrayidx7.i, %if.end10.check_sum.i_crit_edge ], [ %arrayidx7.i.i, %if.then60.i.check_sum.i_crit_edge ], [ %tpd.1, %check_sum.sink.split.i ], [ %arrayidx7.i, %if.then25.i.check_sum.i_crit_edge ]
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %161 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %162 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %162)
  %cmp96.i = icmp eq i16 %162, 1536
  br i1 %cmp96.i, label %if.then104.i, label %check_sum.i.if.end16_crit_edge, !prof !225

check_sum.i.if.end16_crit_edge:                   ; preds = %check_sum.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then104.i:                                     ; preds = %check_sum.i
  %163 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %163, align 8
  %conv.i.i = zext i16 %165 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %166 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i268.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %168 = ptrtoint ptr %head.i.i268.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %head.i.i268.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %167 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %169 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i, %sub.ptr.lhs.cast.i.i.i
  %sub.i.i109 = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  %and108.i = and i32 %sub.i.i109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i)
  %tobool109.not.i = icmp eq i32 %and108.i, 0
  br i1 %tobool109.not.i, label %cleanup146.i, label %if.then116.i, !prof !225

if.then116.i:                                     ; preds = %if.then104.i
  %msg_enable117.i = getelementptr i8, ptr %netdev, i32 2720
  %170 = ptrtoint ptr %msg_enable117.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %msg_enable117.i, align 8
  %and118.i = and i32 %171, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.i)
  %tobool119.not.i = icmp eq i32 %and118.i, 0
  br i1 %tobool119.not.i, label %if.then116.i.if.then15_crit_edge, label %do.end123.i

if.then116.i.if.then15_crit_edge:                 ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

do.end123.i:                                      ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #12
  %172 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pdev1.i, align 4
  %dev125.i = getelementptr inbounds %struct.pci_dev, ptr %173, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev125.i, ptr noundef nonnull @.str.71) #13
  br label %if.then15

cleanup146.i:                                     ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #12
  %csum_offset.i = getelementptr inbounds %struct.anon.117, ptr %163, i32 0, i32 1
  %174 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %csum_offset.i, align 2
  %conv129.i = zext i16 %175 to i32
  %add130.i = add i32 %sub.i.i109, %conv129.i
  %conv107.i = lshr i32 %sub.i.i109, 1
  %176 = and i32 %conv107.i, 127
  %word1135.i = getelementptr inbounds %struct.atl1c_tpd_desc, ptr %tpd.2, i32 0, i32 2
  %177 = ptrtoint ptr %word1135.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %word1135.i, align 4
  %179 = shl i32 %add130.i, 17
  %shl140.i = and i32 %179, 33292288
  %or136.i = or i32 %176, %178
  %or142.i = or i32 %or136.i, %shl140.i
  %or144.i = or i32 %or142.i, 256
  store i32 %or144.i, ptr %word1135.i, align 4
  br label %if.end16

if.then15:                                        ; preds = %do.end123.i, %if.then116.i.if.then15_crit_edge, %skb_cow_head.exit.i.if.then15_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !384
  tail call void @arm_heavy_mb() #10
  %180 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %next_to_use3.i, align 2
  %182 = tail call i16 @llvm.bswap.i16(i16 %181) #10
  %hw.i111 = getelementptr i8, ptr %netdev, i32 2316
  %183 = ptrtoint ptr %hw.i111 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %hw.i111, align 4
  %tpd_prod.i112 = getelementptr [4 x %struct.atl1c_qregs], ptr @atl1c_qregs, i32 0, i32 %conv, i32 1
  %185 = ptrtoint ptr %tpd_prod.i112 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %tpd_prod.i112, align 2
  %conv.i113 = zext i16 %186 to i32
  %add.ptr.i114 = getelementptr i8, ptr %184, i32 %conv.i113
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i114, i16 %182) #10, !srcloc !385
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

if.end16:                                         ; preds = %cleanup146.i, %check_sum.i.if.end16_crit_edge, %if.end79.i
  %tpd.3.ph = phi ptr [ %tpd.0, %if.end79.i ], [ %tpd.2, %check_sum.i.if.end16_crit_edge ], [ %tpd.2, %cleanup146.i ]
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %187 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %187, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool17.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool17.not, label %if.end16.if.end26_crit_edge, label %if.then20, !prof !225

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %188 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %vlan_tci, align 2
  %word1 = getelementptr inbounds %struct.atl1c_tpd_desc, ptr %tpd.3.ph, i32 0, i32 2
  %190 = ptrtoint ptr %word1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %word1, align 4
  %or25 = or i32 %191, 32768
  store i32 %or25, ptr %word1, align 4
  %vlan_tag = getelementptr inbounds %struct.atl1c_tpd_desc, ptr %tpd.3.ph, i32 0, i32 1
  %192 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %189, ptr %vlan_tag, align 2
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.end16.if.end26_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %193 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %195 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i115 = zext i16 %196 to i32
  %add.ptr.i.i = getelementptr i8, ptr %194, i32 %conv.i.i115
  %data.i116 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %197 = ptrtoint ptr %data.i116 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %data.i116, align 4
  %sub.ptr.lhs.cast.i117 = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i118 = ptrtoint ptr %198 to i32
  %sub.ptr.sub.i119 = sub i32 %sub.ptr.lhs.cast.i117, %sub.ptr.rhs.cast.i118
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i119)
  %cmp28.not = icmp eq i32 %sub.ptr.sub.i119, 14
  br i1 %cmp28.not, label %if.end26.if.end33_crit_edge, label %if.then30

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %word131 = getelementptr inbounds %struct.atl1c_tpd_desc, ptr %tpd.3.ph, i32 0, i32 2
  %199 = ptrtoint ptr %word131 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %word131, align 4
  %or32 = or i32 %200, 131072
  store i32 %or32, ptr %word131, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end26.if.end33_crit_edge
  %len.i.i120 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %201 = ptrtoint ptr %len.i.i120 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %len.i.i120, align 4
  %data_len.i.i121 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %203 = ptrtoint ptr %data_len.i.i121 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %data_len.i.i121, align 8
  %sub.i.i122 = sub i32 %202, %204
  %205 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %end.i.i, align 4
  %nr_frags2.i = getelementptr inbounds %struct.skb_shared_info, ptr %206, i32 0, i32 2
  %207 = ptrtoint ptr %nr_frags2.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %nr_frags2.i, align 2
  %word1.i124 = getelementptr inbounds %struct.atl1c_tpd_desc, ptr %tpd.3.ph, i32 0, i32 2
  %209 = ptrtoint ptr %word1.i124 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %word1.i124, align 4
  %211 = and i32 %210, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool.not.i125 = icmp eq i32 %211, 0
  br i1 %tobool.not.i125, label %if.end50.thread.i, label %if.then.i139

if.then.i139:                                     ; preds = %if.end33
  %212 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i.i127 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %214 = ptrtoint ptr %transport_header.i.i.i127 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %transport_header.i.i.i127, align 2
  %conv.i.i.i128 = zext i16 %215 to i32
  %add.ptr.i.i.i129 = getelementptr i8, ptr %213, i32 %conv.i.i.i128
  %216 = ptrtoint ptr %data.i116 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %data.i116, align 4
  %sub.ptr.lhs.cast.i.i131 = ptrtoint ptr %add.ptr.i.i.i129 to i32
  %sub.ptr.rhs.cast.i.i132 = ptrtoint ptr %217 to i32
  %sub.ptr.sub.i.i133 = sub i32 %sub.ptr.lhs.cast.i.i131, %sub.ptr.rhs.cast.i.i132
  %doff.i.i.i134 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i129, i32 0, i32 4
  %218 = ptrtoint ptr %doff.i.i.i134 to i32
  call void @__asan_load2_noabort(i32 %218)
  %bf.load.i.i.i135 = load i16, ptr %doff.i.i.i134, align 4
  %219 = lshr i16 %bf.load.i.i.i135, 10
  %220 = and i16 %219, 60
  %mul.i.i.i136 = zext i16 %220 to i32
  %add.i137 = add i32 %sub.ptr.sub.i.i133, %mul.i.i.i136
  %conv6.i = trunc i32 %add.i137 to i16
  %buffer_info.i.i = getelementptr i8, ptr %netdev, i32 2960
  %221 = ptrtoint ptr %buffer_info.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %buffer_info.i.i, align 8
  %desc.i.i138 = getelementptr i8, ptr %netdev, i32 2940
  %223 = ptrtoint ptr %desc.i.i138 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %desc.i.i138, align 4
  %sub.ptr.lhs.cast.i275.i = ptrtoint ptr %tpd.3.ph to i32
  %sub.ptr.rhs.cast.i276.i = ptrtoint ptr %224 to i32
  %sub.ptr.sub.i277.i = sub i32 %sub.ptr.lhs.cast.i275.i, %sub.ptr.rhs.cast.i276.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i277.i, 4
  %arrayidx.i.i = getelementptr %struct.atl1c_buffer, ptr %222, i32 %sub.ptr.div.i.i
  %length.i = getelementptr %struct.atl1c_buffer, ptr %222, i32 %sub.ptr.div.i.i, i32 1
  %225 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %conv6.i, ptr %length.i, align 4
  %226 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %pdev1.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %227, i32 0, i32 44
  %228 = load ptr, ptr %data.i116, align 4
  %conv8.i = and i32 %add.i137, 65535
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %228) #10
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.then.i139
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !225

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #10
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %227, i32 0, i32 44, i32 3
  %229 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i140 = icmp eq ptr %230, null
  br i1 %tobool.not.i.i.i140, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %231 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %232, %if.end.i.i.i ], [ %230, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #10
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %228, i32 noundef %conv8.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %233 = load ptr, ptr @mem_map, align 4
  %234 = ptrtoint ptr %228 to i32
  %sub.i278.i = add i32 %234, 1073741824
  %shr.i.i = lshr i32 %sub.i278.i, 12
  %add.ptr.i.i141 = getelementptr %struct.page, ptr %233, i32 %shr.i.i
  %and.i.i = and i32 %234, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i141, i32 noundef %and.i.i, i32 noundef %conv8.i, i32 noundef 1, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %dma.i = getelementptr %struct.atl1c_buffer, ptr %222, i32 %sub.ptr.div.i.i, i32 3
  %235 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %retval.0.i.i, ptr %dma.i, align 4
  %236 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %pdev1.i, align 4
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %237, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev11.i, i32 noundef %retval.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.do.body_crit_edge, label %if.end50.i

dma_map_single_attrs.exit.i.do.body_crit_edge:    ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end50.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %flags.i = getelementptr %struct.atl1c_buffer, ptr %222, i32 %sub.ptr.div.i.i, i32 2
  %238 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %flags.i, align 2
  %240 = and i16 %239, -64
  %241 = or i16 %240, 22
  store i16 %241, ptr %flags.i, align 2
  %242 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %dma.i, align 4
  %conv48.i = zext i32 %243 to i64
  %244 = tail call i64 @llvm.bswap.i64(i64 %conv48.i) #10
  %buffer_addr.i = getelementptr inbounds %struct.atl1c_tpd_desc, ptr %tpd.3.ph, i32 0, i32 3
  %245 = ptrtoint ptr %buffer_addr.i to i32
  call void @__asan_store8_noabort(i32 %245)
  store i64 %244, ptr %buffer_addr.i, align 8
  %246 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %length.i, align 4
  %248 = tail call i16 @llvm.bswap.i16(i16 %247) #10
  %249 = ptrtoint ptr %tpd.3.ph to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %248, ptr %tpd.3.ph, align 8
  %conv52.i = and i32 %sub.i.i122, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv52.i, i32 %conv8.i)
  %cmp.i142 = icmp ugt i32 %conv52.i, %conv8.i
  br i1 %cmp.i142, label %if.then54.i, label %if.end50.i.if.end122.i_crit_edge

if.end50.i.if.end122.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122.i

if.end50.thread.i:                                ; preds = %if.end33
  %conv52330.i = and i32 %sub.i.i122, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv52330.i)
  %cmp331.not.i = icmp eq i32 %conv52330.i, 0
  br i1 %cmp331.not.i, label %if.end50.thread.i.if.end122.i_crit_edge, label %if.end50.thread.i.if.end60.i_crit_edge

if.end50.thread.i.if.end60.i_crit_edge:           ; preds = %if.end50.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

if.end50.thread.i.if.end122.i_crit_edge:          ; preds = %if.end50.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122.i

if.then54.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.i)
  %cmp56.i = icmp eq i32 %conv8.i, 0
  br i1 %cmp56.i, label %if.then54.i.if.end60.i_crit_edge, label %if.else.i149

if.then54.i.if.end60.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

if.else.i149:                                     ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  %250 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %next_to_use3.i, align 2
  %inc.i.i144 = add i16 %251, 1
  %252 = ptrtoint ptr %count.i90 to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %count.i90, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i144, i16 %253)
  %cmp.i279.i = icmp eq i16 %inc.i.i144, %253
  %spec.store.select.i.i146 = select i1 %cmp.i279.i, i16 0, i16 %inc.i.i144
  %254 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %spec.store.select.i.i146, ptr %next_to_use3.i, align 2
  %255 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %desc.i, align 4
  %idxprom.i.i147 = zext i16 %251 to i32
  %arrayidx7.i.i148 = getelementptr %struct.atl1c_tpd_desc, ptr %256, i32 %idxprom.i.i147
  %257 = call ptr @memset(ptr %arrayidx7.i.i148, i32 0, i32 16)
  %258 = call ptr @memcpy(ptr %arrayidx7.i.i148, ptr %tpd.3.ph, i32 16)
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.else.i149, %if.then54.i.if.end60.i_crit_edge, %if.end50.thread.i.if.end60.i_crit_edge
  %mapped_len.0332335.i = phi i32 [ %conv8.i, %if.else.i149 ], [ 0, %if.then54.i.if.end60.i_crit_edge ], [ 0, %if.end50.thread.i.if.end60.i_crit_edge ]
  %use_tpd.1.i = phi ptr [ %arrayidx7.i.i148, %if.else.i149 ], [ %tpd.3.ph, %if.then54.i.if.end60.i_crit_edge ], [ %tpd.3.ph, %if.end50.thread.i.if.end60.i_crit_edge ]
  %buffer_info.i281.i = getelementptr i8, ptr %netdev, i32 2960
  %259 = ptrtoint ptr %buffer_info.i281.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %buffer_info.i281.i, align 8
  %desc.i282.i = getelementptr i8, ptr %netdev, i32 2940
  %261 = ptrtoint ptr %desc.i282.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %desc.i282.i, align 4
  %sub.ptr.lhs.cast.i283.i = ptrtoint ptr %use_tpd.1.i to i32
  %sub.ptr.rhs.cast.i284.i = ptrtoint ptr %262 to i32
  %sub.ptr.sub.i285.i = sub i32 %sub.ptr.lhs.cast.i283.i, %sub.ptr.rhs.cast.i284.i
  %sub.ptr.div.i286.i = ashr exact i32 %sub.ptr.sub.i285.i, 4
  %arrayidx.i287.i = getelementptr %struct.atl1c_buffer, ptr %260, i32 %sub.ptr.div.i286.i
  %sub.i = sub i32 %sub.i.i122, %mapped_len.0332335.i
  %conv64.i = trunc i32 %sub.i to i16
  %length65.i = getelementptr %struct.atl1c_buffer, ptr %260, i32 %sub.ptr.div.i286.i, i32 1
  %263 = ptrtoint ptr %length65.i to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 %conv64.i, ptr %length65.i, align 4
  %264 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %pdev1.i, align 4
  %dev67.i = getelementptr inbounds %struct.pci_dev, ptr %265, i32 0, i32 44
  %266 = ptrtoint ptr %data.i116 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %data.i116, align 4
  %add.ptr.i150 = getelementptr i8, ptr %267, i32 %mapped_len.0332335.i
  %call.i288.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i150) #10
  br i1 %call.i288.i, label %land.rhs.i290.i, label %if.end39.i303.i

land.rhs.i290.i:                                  ; preds = %if.end60.i
  %.b1.i289.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i289.i, label %land.rhs.i290.i.dma_map_single_attrs.exit305.i_crit_edge, label %if.then.i294.i, !prof !225

land.rhs.i290.i.dma_map_single_attrs.exit305.i_crit_edge: ; preds = %land.rhs.i290.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit305.i

if.then.i294.i:                                   ; preds = %land.rhs.i290.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i291.i = tail call ptr @dev_driver_string(ptr noundef %dev67.i) #10
  %init_name.i.i292.i = getelementptr inbounds %struct.pci_dev, ptr %265, i32 0, i32 44, i32 3
  %268 = ptrtoint ptr %init_name.i.i292.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %init_name.i.i292.i, align 8
  %tobool.not.i.i293.i = icmp eq ptr %269, null
  br i1 %tobool.not.i.i293.i, label %if.end.i.i295.i, label %if.then.i294.i.dev_name.exit.i297.i_crit_edge

if.then.i294.i.dev_name.exit.i297.i_crit_edge:    ; preds = %if.then.i294.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i297.i

if.end.i.i295.i:                                  ; preds = %if.then.i294.i
  call void @__sanitizer_cov_trace_pc() #12
  %270 = ptrtoint ptr %dev67.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dev67.i, align 4
  br label %dev_name.exit.i297.i

dev_name.exit.i297.i:                             ; preds = %if.end.i.i295.i, %if.then.i294.i.dev_name.exit.i297.i_crit_edge
  %retval.0.i.i296.i = phi ptr [ %271, %if.end.i.i295.i ], [ %269, %if.then.i294.i.dev_name.exit.i297.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call16.i291.i, ptr noundef %retval.0.i.i296.i) #10
  br label %dma_map_single_attrs.exit305.i

if.end39.i303.i:                                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv71.i = and i32 %sub.i, 65535
  tail call void @debug_dma_map_single(ptr noundef %dev67.i, ptr noundef %add.ptr.i150, i32 noundef %conv71.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %272 = load ptr, ptr @mem_map, align 4
  %273 = ptrtoint ptr %add.ptr.i150 to i32
  %sub.i298.i = add i32 %273, 1073741824
  %shr.i299.i = lshr i32 %sub.i298.i, 12
  %add.ptr.i300.i = getelementptr %struct.page, ptr %272, i32 %shr.i299.i
  %and.i301.i = and i32 %273, 4095
  %call41.i302.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev67.i, ptr noundef %add.ptr.i300.i, i32 noundef %and.i301.i, i32 noundef %conv71.i, i32 noundef 1, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit305.i

dma_map_single_attrs.exit305.i:                   ; preds = %if.end39.i303.i, %dev_name.exit.i297.i, %land.rhs.i290.i.dma_map_single_attrs.exit305.i_crit_edge
  %retval.0.i304.i = phi i32 [ %call41.i302.i, %if.end39.i303.i ], [ -1, %dev_name.exit.i297.i ], [ -1, %land.rhs.i290.i.dma_map_single_attrs.exit305.i_crit_edge ]
  %dma73.i = getelementptr %struct.atl1c_buffer, ptr %260, i32 %sub.ptr.div.i286.i, i32 3
  %274 = ptrtoint ptr %dma73.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %retval.0.i304.i, ptr %dma73.i, align 4
  %275 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %pdev1.i, align 4
  %dev75.i = getelementptr inbounds %struct.pci_dev, ptr %276, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev75.i, i32 noundef %retval.0.i304.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i304.i)
  %cmp.i306.i = icmp eq i32 %retval.0.i304.i, -1
  br i1 %cmp.i306.i, label %dma_map_single_attrs.exit305.i.do.body_crit_edge, label %do.body87.i

dma_map_single_attrs.exit305.i.do.body_crit_edge: ; preds = %dma_map_single_attrs.exit305.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body87.i:                                      ; preds = %dma_map_single_attrs.exit305.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags88.i = getelementptr %struct.atl1c_buffer, ptr %260, i32 %sub.ptr.div.i286.i, i32 2
  %277 = ptrtoint ptr %flags88.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %flags88.i, align 2
  %279 = and i16 %278, -64
  %280 = or i16 %279, 22
  store i16 %280, ptr %flags88.i, align 2
  %281 = ptrtoint ptr %dma73.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %dma73.i, align 4
  %conv118.i = zext i32 %282 to i64
  %283 = tail call i64 @llvm.bswap.i64(i64 %conv118.i) #10
  %buffer_addr119.i = getelementptr inbounds %struct.atl1c_tpd_desc, ptr %use_tpd.1.i, i32 0, i32 3
  %284 = ptrtoint ptr %buffer_addr119.i to i32
  call void @__asan_store8_noabort(i32 %284)
  store i64 %283, ptr %buffer_addr119.i, align 8
  %285 = ptrtoint ptr %length65.i to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %length65.i, align 4
  %287 = tail call i16 @llvm.bswap.i16(i16 %286) #10
  %288 = ptrtoint ptr %use_tpd.1.i to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 %287, ptr %use_tpd.1.i, align 8
  br label %if.end122.i

if.end122.i:                                      ; preds = %do.body87.i, %if.end50.thread.i.if.end122.i_crit_edge, %if.end50.i.if.end122.i_crit_edge
  %buffer_info.1.i = phi ptr [ %arrayidx.i287.i, %do.body87.i ], [ %arrayidx.i.i, %if.end50.i.if.end122.i_crit_edge ], [ null, %if.end50.thread.i.if.end122.i_crit_edge ]
  %use_tpd.2.i = phi ptr [ %use_tpd.1.i, %do.body87.i ], [ %tpd.3.ph, %if.end50.i.if.end122.i_crit_edge ], [ null, %if.end50.thread.i.if.end122.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %cmp125342.not.i = icmp eq i8 %208, 0
  br i1 %cmp125342.not.i, label %if.end122.i.if.else_crit_edge, label %for.body.lr.ph.i

if.end122.i.if.else_crit_edge:                    ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.body.lr.ph.i:                                 ; preds = %if.end122.i
  %buffer_info.i317.i = getelementptr i8, ptr %netdev, i32 2960
  %desc.i318.i = getelementptr i8, ptr %netdev, i32 2940
  %wide.trip.count.i = zext i8 %208 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %289 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %end.i.i, align 4
  %arrayidx.i151 = getelementptr %struct.skb_shared_info, ptr %290, i32 0, i32 12, i32 %indvars.iv.i
  %291 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %next_to_use3.i, align 2
  %inc.i310.i = add i16 %292, 1
  %293 = ptrtoint ptr %count.i90 to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %count.i90, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i310.i, i16 %294)
  %cmp.i312.i = icmp eq i16 %inc.i310.i, %294
  %spec.store.select.i313.i = select i1 %cmp.i312.i, i16 0, i16 %inc.i310.i
  %295 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_store2_noabort(i32 %295)
  store i16 %spec.store.select.i313.i, ptr %next_to_use3.i, align 2
  %296 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %desc.i, align 4
  %idxprom.i315.i = zext i16 %292 to i32
  %arrayidx7.i316.i = getelementptr %struct.atl1c_tpd_desc, ptr %297, i32 %idxprom.i315.i
  %298 = call ptr @memset(ptr %arrayidx7.i316.i, i32 0, i32 16)
  %299 = call ptr @memcpy(ptr %arrayidx7.i316.i, ptr %tpd.3.ph, i32 16)
  %300 = ptrtoint ptr %buffer_info.i317.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %buffer_info.i317.i, align 8
  %302 = ptrtoint ptr %desc.i318.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %desc.i318.i, align 4
  %sub.ptr.lhs.cast.i319.i = ptrtoint ptr %arrayidx7.i316.i to i32
  %sub.ptr.rhs.cast.i320.i = ptrtoint ptr %303 to i32
  %sub.ptr.sub.i321.i = sub i32 %sub.ptr.lhs.cast.i319.i, %sub.ptr.rhs.cast.i320.i
  %sub.ptr.div.i322.i = ashr exact i32 %sub.ptr.sub.i321.i, 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %290, i32 0, i32 12, i32 %indvars.iv.i, i32 1
  %304 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %bv_len.i.i, align 4
  %conv131.i = trunc i32 %305 to i16
  %length132.i = getelementptr %struct.atl1c_buffer, ptr %301, i32 %sub.ptr.div.i322.i, i32 1
  %306 = ptrtoint ptr %length132.i to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 %conv131.i, ptr %length132.i, align 4
  %307 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %pdev1.i, align 4
  %dev134.i = getelementptr inbounds %struct.pci_dev, ptr %308, i32 0, i32 44
  %conv136.i = and i32 %305, 65535
  %309 = ptrtoint ptr %arrayidx.i151 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %arrayidx.i151, align 4
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %290, i32 0, i32 12, i32 %indvars.iv.i, i32 2
  %311 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev134.i, ptr noundef %310, i32 noundef %312, i32 noundef %conv136.i, i32 noundef 1, i32 noundef 0) #10
  %dma138.i = getelementptr %struct.atl1c_buffer, ptr %301, i32 %sub.ptr.div.i322.i, i32 3
  %313 = ptrtoint ptr %dma138.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %call2.i.i, ptr %dma138.i, align 4
  %314 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %pdev1.i, align 4
  %dev140.i = getelementptr inbounds %struct.pci_dev, ptr %315, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev140.i, i32 noundef %call2.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i324.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i324.not.i, label %err_dma.loopexit.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %flags147.i = getelementptr %struct.atl1c_buffer, ptr %301, i32 %sub.ptr.div.i322.i, i32 2
  %316 = ptrtoint ptr %flags147.i to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %flags147.i, align 2
  %318 = and i16 %317, -64
  %319 = or i16 %318, 26
  store i16 %319, ptr %flags147.i, align 2
  %320 = ptrtoint ptr %dma138.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %dma138.i, align 4
  %conv177.i = zext i32 %321 to i64
  %322 = tail call i64 @llvm.bswap.i64(i64 %conv177.i) #10
  %buffer_addr178.i = getelementptr %struct.atl1c_tpd_desc, ptr %297, i32 %idxprom.i315.i, i32 3
  %323 = ptrtoint ptr %buffer_addr178.i to i32
  call void @__asan_store8_noabort(i32 %323)
  store i64 %322, ptr %buffer_addr178.i, align 8
  %324 = ptrtoint ptr %length132.i to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %length132.i, align 4
  %326 = tail call i16 @llvm.bswap.i16(i16 %325) #10
  %327 = ptrtoint ptr %arrayidx7.i316.i to i32
  call void @__asan_store2_noabort(i32 %327)
  store i16 %326, ptr %arrayidx7.i316.i, align 8
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.cond.for.end_crit_edge.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.for.end_crit_edge.i:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i323.le.i = getelementptr %struct.atl1c_buffer, ptr %301, i32 %sub.ptr.div.i322.i
  br label %if.else

err_dma.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i323.le345.i = getelementptr %struct.atl1c_buffer, ptr %301, i32 %sub.ptr.div.i322.i
  br label %do.body

do.body:                                          ; preds = %err_dma.loopexit.i, %dma_map_single_attrs.exit305.i.do.body_crit_edge, %dma_map_single_attrs.exit.i.do.body_crit_edge
  %buffer_info.3.i = phi ptr [ %arrayidx.i.i, %dma_map_single_attrs.exit.i.do.body_crit_edge ], [ %arrayidx.i287.i, %dma_map_single_attrs.exit305.i.do.body_crit_edge ], [ %arrayidx.i323.le345.i, %err_dma.loopexit.i ]
  %dma184.i = getelementptr inbounds %struct.atl1c_buffer, ptr %buffer_info.3.i, i32 0, i32 3
  %328 = ptrtoint ptr %dma184.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 0, ptr %dma184.i, align 4
  %length185.i = getelementptr inbounds %struct.atl1c_buffer, ptr %buffer_info.3.i, i32 0, i32 1
  %329 = ptrtoint ptr %length185.i to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 0, ptr %length185.i, align 4
  %msg_enable = getelementptr i8, ptr %netdev, i32 2720
  %330 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %msg_enable, align 8
  %and38 = and i32 %331, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body.do.end_crit_edge, label %if.then40

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then40:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %332 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %333, ptr noundef nonnull @.str.64) #13
  br label %do.end

do.end:                                           ; preds = %if.then40, %do.body.do.end_crit_edge
  %334 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %desc.i, align 4
  %sub.ptr.lhs.cast.i153 = ptrtoint ptr %tpd.3.ph to i32
  %sub.ptr.rhs.cast.i154 = ptrtoint ptr %335 to i32
  %sub.ptr.sub.i155 = sub i32 %sub.ptr.lhs.cast.i153, %sub.ptr.rhs.cast.i154
  %336 = lshr exact i32 %sub.ptr.sub.i155, 4
  %conv.i156 = trunc i32 %336 to i16
  %337 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %next_to_use3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %338, i16 %conv.i156)
  %cmp.not26.i = icmp eq i16 %338, %conv.i156
  br i1 %cmp.not26.i, label %do.end.atl1c_tx_rollback.exit_crit_edge, label %while.body.lr.ph.i

do.end.atl1c_tx_rollback.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_tx_rollback.exit

while.body.lr.ph.i:                               ; preds = %do.end
  %buffer_info7.i = getelementptr %struct.atl1c_adapter, ptr %add.ptr.i, i32 0, i32 22, i32 %conv, i32 8
  br label %while.body.i

while.body.i:                                     ; preds = %atl1c_clean_buffer.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %index.027.i = phi i16 [ %conv.i156, %while.body.lr.ph.i ], [ %spec.store.select.i163, %atl1c_clean_buffer.exit.i.while.body.i_crit_edge ]
  %conv2.i = zext i16 %index.027.i to i32
  %339 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %desc.i, align 4
  %arrayidx6.i = getelementptr %struct.atl1c_tpd_desc, ptr %340, i32 %conv2.i
  %341 = ptrtoint ptr %buffer_info7.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %buffer_info7.i, align 8
  %arrayidx9.i = getelementptr %struct.atl1c_buffer, ptr %342, i32 %conv2.i
  %343 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %pdev1.i, align 4
  %flags.i.i = getelementptr %struct.atl1c_buffer, ptr %342, i32 %conv2.i, i32 2
  %345 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %flags.i.i, align 2
  %conv.i.i160 = zext i16 %346 to i32
  %and.i.i161 = and i32 %conv.i.i160, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i161)
  %tobool.not.i.i = icmp eq i32 %and.i.i161, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.atl1c_clean_buffer.exit.i_crit_edge

while.body.i.atl1c_clean_buffer.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_clean_buffer.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  %dma.i.i = getelementptr %struct.atl1c_buffer, ptr %342, i32 %conv2.i, i32 3
  %347 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %dma.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %348)
  %tobool1.not.i.i = icmp eq i32 %348, 0
  %349 = and i32 %conv.i.i160, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %349)
  %350 = icmp eq i32 %349, 0
  %or.cond.i = select i1 %tobool1.not.i.i, i1 true, i1 %350
  br i1 %or.cond.i, label %if.end.i.i.if.end30.i.i_crit_edge, label %if.end30.sink.split.i.i

if.end.i.i.if.end30.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i.i

if.end30.sink.split.i.i:                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and5.i.i = and i32 %conv.i.i160, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  %..i.i = select i1 %tobool6.not.i.i, i32 1, i32 2
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %344, i32 0, i32 44
  %length.i.i = getelementptr %struct.atl1c_buffer, ptr %342, i32 %conv2.i, i32 1
  %351 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %length.i.i, align 4
  %conv15.i.i = zext i16 %352 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %348, i32 noundef %conv15.i.i, i32 noundef %..i.i, i32 noundef 0) #10
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.end30.sink.split.i.i, %if.end.i.i.if.end30.i.i_crit_edge
  %353 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %arrayidx9.i, align 4
  %tobool31.not.i.i = icmp eq ptr %354, null
  br i1 %tobool31.not.i.i, label %if.end30.i.i.if.end34.i.i_crit_edge, label %if.then32.i.i

if.end30.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i.i

if.then32.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %354, i32 noundef 0) #10
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then32.i.i, %if.end30.i.i.if.end34.i.i_crit_edge
  %355 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 0, ptr %dma.i.i, align 4
  %356 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store ptr null, ptr %arrayidx9.i, align 4
  %357 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %357)
  %358 = load i16, ptr %flags.i.i, align 2
  %359 = and i16 %358, -4
  %360 = or i16 %359, 1
  store i16 %360, ptr %flags.i.i, align 2
  br label %atl1c_clean_buffer.exit.i

atl1c_clean_buffer.exit.i:                        ; preds = %if.end34.i.i, %while.body.i.atl1c_clean_buffer.exit.i_crit_edge
  %361 = call ptr @memset(ptr %arrayidx6.i, i32 0, i32 16)
  %inc.i162 = add i16 %index.027.i, 1
  %362 = ptrtoint ptr %count.i90 to i32
  call void @__asan_load2_noabort(i32 %362)
  %363 = load i16, ptr %count.i90, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i162, i16 %363)
  %cmp12.i = icmp eq i16 %inc.i162, %363
  %spec.store.select.i163 = select i1 %cmp12.i, i16 0, i16 %inc.i162
  %364 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_load2_noabort(i32 %364)
  %365 = load i16, ptr %next_to_use3.i, align 2
  %cmp.not.i = icmp eq i16 %spec.store.select.i163, %365
  br i1 %cmp.not.i, label %atl1c_clean_buffer.exit.i.atl1c_tx_rollback.exit_crit_edge, label %atl1c_clean_buffer.exit.i.while.body.i_crit_edge

atl1c_clean_buffer.exit.i.while.body.i_crit_edge: ; preds = %atl1c_clean_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

atl1c_clean_buffer.exit.i.atl1c_tx_rollback.exit_crit_edge: ; preds = %atl1c_clean_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1c_tx_rollback.exit

atl1c_tx_rollback.exit:                           ; preds = %atl1c_clean_buffer.exit.i.atl1c_tx_rollback.exit_crit_edge, %do.end.atl1c_tx_rollback.exit_crit_edge
  %366 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 %conv.i156, ptr %next_to_use3.i, align 2
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

if.else:                                          ; preds = %for.cond.for.end_crit_edge.i, %if.end122.i.if.else_crit_edge
  %buffer_info.2.lcssa.i = phi ptr [ %arrayidx.i323.le.i, %for.cond.for.end_crit_edge.i ], [ %buffer_info.1.i, %if.end122.i.if.else_crit_edge ]
  %use_tpd.3.lcssa.i = phi ptr [ %arrayidx7.i316.i, %for.cond.for.end_crit_edge.i ], [ %use_tpd.2.i, %if.end122.i.if.else_crit_edge ]
  %word1181.i = getelementptr inbounds %struct.atl1c_tpd_desc, ptr %use_tpd.3.lcssa.i, i32 0, i32 2
  %367 = ptrtoint ptr %word1181.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %word1181.i, align 4
  %or182.i = or i32 %368, -2147483648
  store i32 %or182.i, ptr %word1181.i, align 4
  %369 = ptrtoint ptr %buffer_info.2.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store ptr %skb, ptr %buffer_info.2.lcssa.i, align 4
  %370 = tail call i32 @llvm.read_register.i32(metadata !208) #10
  %and.i.i164 = and i32 %370, -16384
  %371 = inttoptr i32 %and.i.i164 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %371, i32 0, i32 3
  %372 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %cpu.i, align 4
  %arrayidx.i165 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %373
  %374 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %arrayidx.i165, align 4
  %add.i166 = add i32 %375, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %376 = inttoptr i32 %add.i166 to ptr
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %376, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %378)
  %tobool.i.not = icmp eq i8 %378, 0
  %379 = ptrtoint ptr %len.i.i120 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %len.i.i120, align 4
  br i1 %tobool.i.not, label %if.end.i169, label %if.then.i168

if.then.i168:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %380)
  %cmp.i.i167 = icmp ugt i32 %380, 268435455
  br i1 %cmp.i.i167, label %do.body2.i.i, label %__netdev_tx_sent_queue.exit, !prof !237

do.body2.i.i:                                     ; preds = %if.then.i168
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #10, !srcloc !388
  unreachable

if.end.i169:                                      ; preds = %if.else
  %dql.i.i = getelementptr %struct.netdev_queue, ptr %3, i32 %conv, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %380)
  %cmp.i.i.i = icmp ugt i32 %380, 268435455
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !237

do.body2.i.i.i:                                   ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #10, !srcloc !388
  unreachable

dql_queued.exit.i.i:                              ; preds = %if.end.i169
  %last_obj_cnt.i.i.i = getelementptr %struct.netdev_queue, ptr %3, i32 %conv, i32 15, i32 2
  %381 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %380, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !389
  %382 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %383, %380
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr %struct.netdev_queue, ptr %3, i32 %conv, i32 15, i32 1
  %384 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %386 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i170 = sub i32 %385, %386
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i170)
  %cmp.i4.i = icmp sgt i32 %sub.i.i.i170, -1
  br i1 %cmp.i4.i, label %dql_queued.exit.i.i.if.then46_crit_edge, label %if.end.i.i171, !prof !225

dql_queued.exit.i.i.if.then46_crit_edge:          ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

if.end.i.i171:                                    ; preds = %dql_queued.exit.i.i
  %state.i5.i = getelementptr %struct.netdev_queue, ptr %3, i32 %conv, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i5.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !390
  %387 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %389 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %388, %390
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i171.if.then46_crit_edge, !prof !237

if.end.i.i171.if.then46_crit_edge:                ; preds = %if.end.i.i171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

if.then14.i.i:                                    ; preds = %if.end.i.i171
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i5.i) #10
  br label %if.then46

__netdev_tx_sent_queue.exit:                      ; preds = %if.then.i168
  %dql.i = getelementptr %struct.netdev_queue, ptr %3, i32 %conv, i32 15
  %last_obj_cnt.i.i = getelementptr %struct.netdev_queue, ptr %3, i32 %conv, i32 15, i32 2
  %391 = ptrtoint ptr %last_obj_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %380, ptr %last_obj_cnt.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !389
  %392 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %dql.i, align 128
  %add.i.i = add i32 %393, %380
  store i32 %add.i.i, ptr %dql.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %3, i32 %conv, i32 13
  %394 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %395, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %__netdev_tx_sent_queue.exit.cleanup_crit_edge, label %__netdev_tx_sent_queue.exit.if.then46_crit_edge

__netdev_tx_sent_queue.exit.if.then46_crit_edge:  ; preds = %__netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

__netdev_tx_sent_queue.exit.cleanup_crit_edge:    ; preds = %__netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then46:                                        ; preds = %__netdev_tx_sent_queue.exit.if.then46_crit_edge, %if.then14.i.i, %if.end.i.i171.if.then46_crit_edge, %dql_queued.exit.i.i.if.then46_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !384
  tail call void @arm_heavy_mb() #10
  %396 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_load2_noabort(i32 %396)
  %397 = load i16, ptr %next_to_use3.i, align 2
  %398 = tail call i16 @llvm.bswap.i16(i16 %397) #10
  %hw.i174 = getelementptr i8, ptr %netdev, i32 2316
  %399 = ptrtoint ptr %hw.i174 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %hw.i174, align 4
  %tpd_prod.i175 = getelementptr [4 x %struct.atl1c_qregs], ptr @atl1c_qregs, i32 0, i32 %conv, i32 1
  %401 = ptrtoint ptr %tpd_prod.i175 to i32
  call void @__asan_load2_noabort(i32 %401)
  %402 = load i16, ptr %tpd_prod.i175, align 2
  %conv.i176 = zext i16 %402 to i32
  %add.ptr.i177 = getelementptr i8, ptr %400, i32 %conv.i176
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i177, i16 %398) #10, !srcloc !385
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %__netdev_tx_sent_queue.exit.cleanup_crit_edge, %atl1c_tx_rollback.exit, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 16, %if.then9 ], [ 0, %if.then15 ], [ 0, %__netdev_tx_sent_queue.exit.cleanup_crit_edge ], [ 0, %if.then46 ], [ 0, %atl1c_tx_rollback.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_set_mac_addr(ptr noundef %netdev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #10
  %hw = getelementptr i8, ptr %netdev, i32 2316
  %mac_addr = getelementptr i8, ptr %netdev, i32 2456
  %addr_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %7 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %8 to i32
  %9 = call ptr @memcpy(ptr %mac_addr, ptr %sa_data, i32 %conv)
  tail call void @atl1c_hw_set_mac_addr(ptr noundef %hw, ptr noundef %mac_addr) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_ioctl(ptr noundef %netdev, ptr noundef %ifr, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd.off = add i32 %cmd, -35143
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cmd.off)
  %switch = icmp ult i32 %cmd.off, 3
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @atl1c_mii_ioctl(ptr noundef %netdev, ptr noundef %ifr, i32 noundef %cmd)
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %while.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  %flags = getelementptr i8, ptr %netdev, i32 2712
  %call215 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool.not16 = icmp eq i32 %call215, 0
  br i1 %tobool.not16, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  tail call void @msleep(i32 noundef 1) #10
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #10
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_mtu, ptr %mtu, align 4
  %conv = trunc i32 %new_mtu to i16
  %max_frame_size = getelementptr i8, ptr %netdev, i32 2406
  %3 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %max_frame_size, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1522, i32 %new_mtu)
  %cmp.i = icmp sgt i32 %new_mtu, 1522
  %add4.i = add i32 %new_mtu, 29
  %div.i = sdiv i32 %add4.i, 8
  %4 = trunc i32 %div.i to i16
  %phi.cast.i = shl i16 %4, 3
  %cond.i = select i1 %cmp.i, i16 %phi.cast.i, i16 1522
  %rx_buffer_len.i = getelementptr i8, ptr %netdev, i32 2700
  %5 = ptrtoint ptr %rx_buffer_len.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %cond.i, ptr %rx_buffer_len.i, align 4
  %conv6.i = zext i16 %cond.i to i32
  %add9.i = add nuw nsw i32 %conv6.i, 257
  %and.i = and i32 %add9.i, 130944
  %sub16.i = add nuw nsw i32 %and.i, 255
  %6 = tail call i32 @llvm.ctlz.i32(i32 %sub16.i, i1 true) #10, !range !339
  %sub.i.i.i.pn.i = sub nuw nsw i32 32, %6
  %cond38.i = shl nuw i32 1, %sub.i.i.i.pn.i
  %rx_frag_size.i = getelementptr i8, ptr %netdev, i32 2312
  %7 = ptrtoint ptr %rx_frag_size.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond38.i, ptr %rx_frag_size.i, align 8
  tail call fastcc void @atl1c_down(ptr noundef %add.ptr.i)
  tail call void @netdev_update_features(ptr noundef %netdev) #10
  %call3 = tail call fastcc i32 @atl1c_up(ptr noundef %add.ptr.i)
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #10
  br label %if.end

if.end:                                           ; preds = %while.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1c_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %work_event = getelementptr i8, ptr %netdev, i32 2716
  tail call void @_set_bit(i32 noundef 0, ptr noundef %work_event) #10
  %common_task = getelementptr i8, ptr %netdev, i32 2784
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %common_task) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atl1c_get_stats(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_stats1 = getelementptr i8, ptr %netdev, i32 2472
  %hw.i = getelementptr i8, ptr %netdev, i32 2316
  %hibernate.i = getelementptr i8, ptr %netdev, i32 2417
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %entry
  %conv105.i = phi i32 [ 5888, %entry ], [ %conv.i, %do.end.i.do.body.i_crit_edge ]
  %stats_item.0104.i = phi ptr [ %hw_stats1, %entry ], [ %incdec.ptr.i, %do.end.i.do.body.i_crit_edge ]
  %0 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hibernate.i, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %3, i32 %conv105.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #10
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !225

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !391
  %5 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %6, i32 %conv105.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #10, !srcloc !222
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !392
  br label %do.end.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %if.then.i
  %data.0.i = phi i32 [ %8, %if.then.i ], [ %9, %if.else.i ]
  %10 = ptrtoint ptr %stats_item.0104.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stats_item.0104.i, align 4
  %add.i = add i32 %11, %data.0.i
  store i32 %add.i, ptr %stats_item.0104.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %stats_item.0104.i, i32 1
  %add26.i = add nuw nsw i32 %conv105.i, 4
  %conv.i = and i32 %add26.i, 65535
  %cmp.i = icmp ult i32 %conv.i, 5981
  br i1 %cmp.i, label %do.end.i.do.body.i_crit_edge, label %while.end.i

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

while.end.i:                                      ; preds = %do.end.i
  %tx_ok.i = getelementptr i8, ptr %netdev, i32 2568
  br label %do.body34.i

do.body34.i:                                      ; preds = %do.end75.i.do.body34.i_crit_edge, %while.end.i
  %conv30108.i = phi i32 [ 5984, %while.end.i ], [ %conv30.i, %do.end75.i.do.body34.i_crit_edge ]
  %stats_item.1107.i = phi ptr [ %tx_ok.i, %while.end.i ], [ %incdec.ptr77.i, %do.end75.i.do.body34.i_crit_edge ]
  %12 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hibernate.i, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool37.not.i = icmp eq i8 %13, 0
  %14 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw.i, align 4
  %add.ptr69.i = getelementptr i8, ptr %15, i32 %conv30108.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69.i) #10
  br i1 %tobool37.not.i, label %if.else63.i, label %if.then44.i, !prof !225

if.then44.i:                                      ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %17 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw.i, align 4
  %add.ptr59.i = getelementptr i8, ptr %18, i32 %conv30108.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #10, !srcloc !222
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !395
  br label %do.end75.i

if.else63.i:                                      ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !396
  br label %do.end75.i

do.end75.i:                                       ; preds = %if.else63.i, %if.then44.i
  %data.1.i = phi i32 [ %20, %if.then44.i ], [ %21, %if.else63.i ]
  %22 = ptrtoint ptr %stats_item.1107.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stats_item.1107.i, align 4
  %add76.i = add i32 %23, %data.1.i
  store i32 %add76.i, ptr %stats_item.1107.i, align 4
  %incdec.ptr77.i = getelementptr i32, ptr %stats_item.1107.i, i32 1
  %add79.i = add nuw nsw i32 %conv30108.i, 4
  %conv30.i = and i32 %add79.i, 65535
  %cmp31.i = icmp ult i32 %conv30.i, 6081
  br i1 %cmp31.i, label %do.end75.i.do.body34.i_crit_edge, label %atl1c_update_hw_stats.exit

do.end75.i.do.body34.i_crit_edge:                 ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34.i

atl1c_update_hw_stats.exit:                       ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #12
  %stats = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36
  %rx_byte_cnt = getelementptr i8, ptr %netdev, i32 2500
  %24 = ptrtoint ptr %rx_byte_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_byte_cnt, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 2
  %26 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rx_bytes, align 4
  %tx_byte_cnt = getelementptr i8, ptr %netdev, i32 2596
  %27 = ptrtoint ptr %tx_byte_cnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_byte_cnt, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 3
  %29 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tx_bytes, align 4
  %rx_mcast = getelementptr i8, ptr %netdev, i32 2480
  %30 = ptrtoint ptr %rx_mcast to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_mcast, align 4
  %multicast = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 8
  %32 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %multicast, align 4
  %tx_1_col = getelementptr i8, ptr %netdev, i32 2628
  %33 = ptrtoint ptr %tx_1_col to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_1_col, align 4
  %tx_2_col = getelementptr i8, ptr %netdev, i32 2632
  %35 = ptrtoint ptr %tx_2_col to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_2_col, align 4
  %tx_late_col = getelementptr i8, ptr %netdev, i32 2636
  %37 = ptrtoint ptr %tx_late_col to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_late_col, align 4
  %tx_abort_col = getelementptr i8, ptr %netdev, i32 2640
  %39 = ptrtoint ptr %tx_abort_col to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_abort_col, align 4
  %add = add i32 %40, %38
  %add2 = add i32 %add, %34
  %add3 = add i32 %add2, %36
  %collisions = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 9
  %41 = ptrtoint ptr %collisions to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add3, ptr %collisions, align 4
  %rx_frag = getelementptr i8, ptr %netdev, i32 2508
  %42 = ptrtoint ptr %rx_frag to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_frag, align 4
  %rx_fcs_err = getelementptr i8, ptr %netdev, i32 2492
  %44 = ptrtoint ptr %rx_fcs_err to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_fcs_err, align 4
  %add4 = add i32 %45, %43
  %rx_len_err = getelementptr i8, ptr %netdev, i32 2496
  %46 = ptrtoint ptr %rx_len_err to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_len_err, align 4
  %add5 = add i32 %add4, %47
  %rx_sz_ov = getelementptr i8, ptr %netdev, i32 2540
  %48 = ptrtoint ptr %rx_sz_ov to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_sz_ov, align 4
  %add6 = add i32 %add5, %49
  %rx_rrd_ov = getelementptr i8, ptr %netdev, i32 2548
  %50 = ptrtoint ptr %rx_rrd_ov to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_rrd_ov, align 4
  %add7 = add i32 %add6, %51
  %rx_align_err = getelementptr i8, ptr %netdev, i32 2552
  %52 = ptrtoint ptr %rx_align_err to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_align_err, align 4
  %add8 = add i32 %add7, %53
  %rx_rxf_ov = getelementptr i8, ptr %netdev, i32 2544
  %54 = ptrtoint ptr %rx_rxf_ov to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_rxf_ov, align 4
  %add9 = add i32 %add8, %55
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 4
  %56 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add9, ptr %rx_errors, align 4
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 14
  %57 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %55, ptr %rx_fifo_errors, align 4
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 10
  %58 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %47, ptr %rx_length_errors, align 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 12
  %59 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %45, ptr %rx_crc_errors, align 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 13
  %60 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %53, ptr %rx_frame_errors, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 6
  %61 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %51, ptr %rx_dropped, align 4
  %tx_underrun = getelementptr i8, ptr %netdev, i32 2644
  %62 = ptrtoint ptr %tx_underrun to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tx_underrun, align 4
  %add18 = add i32 %add, %63
  %tx_trunc = getelementptr i8, ptr %netdev, i32 2656
  %64 = ptrtoint ptr %tx_trunc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_trunc, align 4
  %add19 = add i32 %add18, %65
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 5
  %66 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add19, ptr %tx_errors, align 4
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 18
  %67 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %63, ptr %tx_fifo_errors, align 4
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 16
  %68 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %40, ptr %tx_aborted_errors, align 4
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 20
  %69 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %38, ptr %tx_window_errors, align 4
  %70 = ptrtoint ptr %hw_stats1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hw_stats1, align 4
  %add24 = add i32 %71, %add9
  %72 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add24, ptr %stats, align 4
  %73 = ptrtoint ptr %tx_ok.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_ok.i, align 4
  %add26 = add i32 %74, %add19
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 1
  %75 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add26, ptr %tx_packets, align 4
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1c_netpoll(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #10
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %irq2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq2, align 4
  %call3 = tail call i32 @atl1c_intr(i32 noundef %7, ptr noundef %netdev)
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %irq5 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq5, align 4
  tail call void @enable_irq(i32 noundef %11) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @atl1c_fix_features(ptr nocapture noundef readonly %netdev, i64 noundef %features) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and2 = and i64 %features, -129
  %and = lshr i64 %features, 1
  %0 = and i64 %and, 128
  %features.addr.0 = or i64 %0, %and2
  %nic_type = getelementptr i8, ptr %netdev, i32 2324
  %1 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp.not = icmp eq i32 %2, 6
  br i1 %cmp.not, label %entry.if.end8_crit_edge, label %if.then3

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %3 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7168, i32 %4)
  %cmp4 = icmp ugt i32 %4, 7168
  %and6 = and i64 %features.addr.0, -1114113
  %spec.select = select i1 %cmp4, i64 %and6, i64 %features.addr.0
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %entry.if.end8_crit_edge
  %features.addr.1 = phi i64 [ %features.addr.0, %entry.if.end8_crit_edge ], [ %spec.select, %if.then3 ]
  ret i64 %features.addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_set_features(ptr noundef %netdev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @atl1c_vlan_mode(ptr noundef %netdev, i64 noundef %features)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1c_free_ring_resources(ptr nocapture noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %ring_header = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 21
  %size = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 21, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %4 = ptrtoint ptr %ring_header to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring_header, align 4
  %dma = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 21, i32 1
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef 0) #10
  %8 = ptrtoint ptr %ring_header to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %ring_header, align 4
  %buffer_info = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 22, i32 0, i32 8
  %9 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer_info, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %10) #10
  %11 = ptrtoint ptr %buffer_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %buffer_info, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_queue_count = getelementptr inbounds %struct.atl1c_adapter, ptr %adapter, i32 0, i32 8
  %12 = ptrtoint ptr %rx_queue_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp38.not = icmp eq i32 %13, 0
  br i1 %cmp38.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %rx_page = getelementptr %struct.atl1c_adapter, ptr %adapter, i32 0, i32 24, i32 %i.039, i32 9
  %14 = ptrtoint ptr %rx_page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_page, align 8
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %if.then14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then14:                                        ; preds = %for.body
  %16 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !225

if.then.i.i:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %18, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %15 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %19, %if.end.i.i ]
  %20 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %21 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i.i.i = icmp eq i32 %22, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !237

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.63) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !397
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !226
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !227
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@atl1c_free_ring_resources, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !236

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %20, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %20) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %25 = ptrtoint ptr %rx_page to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rx_page, align 8
  br label %for.inc

for.inc:                                          ; preds = %put_page.exit, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.039, 1
  %26 = ptrtoint ptr %rx_queue_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_queue_count, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl1c_mii_ioctl(ptr noundef %netdev, ptr noundef %ifr, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %do.body5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body5:                                         ; preds = %entry
  %mdio_lock = getelementptr i8, ptr %netdev, i32 2736
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mdio_lock) #10
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %cmd, label %do.body5.out_crit_edge [
    i32 35143, label %sw.bb
    i32 35144, label %sw.bb10
    i32 35145, label %sw.bb16
  ]

do.body5.out_crit_edge:                           ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb:                                            ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %ifr_ifru.i, align 2
  br label %out

sw.bb10:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %hw = getelementptr i8, ptr %netdev, i32 2316
  %reg_num = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %6 = ptrtoint ptr %reg_num to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg_num, align 2
  %8 = and i16 %7, 31
  %val_out = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %call13 = tail call i32 @atl1c_read_phy_reg(ptr noundef %hw, i16 noundef zeroext %8, ptr noundef %val_out) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -5
  br label %out

sw.bb16:                                          ; preds = %do.body5
  %reg_num17 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %9 = ptrtoint ptr %reg_num17 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %reg_num17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %10)
  %tobool20.not = icmp ult i16 %10, 32
  br i1 %tobool20.not, label %do.body23, label %sw.bb16.out_crit_edge

sw.bb16.out_crit_edge:                            ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body23:                                        ; preds = %sw.bb16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1c_mii_ioctl.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1c_mii_ioctl, %if.then29)) #10
          to label %do.end35 [label %if.then29], !srcloc !236

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %11 = ptrtoint ptr %reg_num17 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg_num17, align 2
  %conv31 = zext i16 %12 to i32
  %val_in = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %val_in to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %val_in, align 2
  %conv32 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atl1c_mii_ioctl.__UNIQUE_ID_ddebug507, ptr noundef %dev, ptr noundef nonnull @.str.76, i32 noundef %conv31, i32 noundef %conv32) #10
  br label %do.end35

do.end35:                                         ; preds = %if.then29, %do.body23
  %hw36 = getelementptr i8, ptr %netdev, i32 2316
  %15 = ptrtoint ptr %reg_num17 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %reg_num17, align 2
  %conv38 = zext i16 %16 to i32
  %val_in39 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %val_in39 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %val_in39, align 2
  %call40 = tail call i32 @atl1c_write_phy_reg(ptr noundef %hw36, i32 noundef %conv38, i16 noundef zeroext %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  %spec.select61 = select i1 %tobool41.not, i32 0, i32 -5
  br label %out

out:                                              ; preds = %do.end35, %sw.bb16.out_crit_edge, %sw.bb10, %sw.bb, %do.body5.out_crit_edge
  %retval3.0 = phi i32 [ 0, %sw.bb ], [ %spec.select, %sw.bb10 ], [ -14, %sw.bb16.out_crit_edge ], [ %spec.select61, %do.end35 ], [ -95, %do.body5.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mdio_lock, i32 noundef %call7) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval3.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1c_write_phy_reg(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1c_restart_autoneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_write_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atl1c_phy_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %hw2 = getelementptr i8, ptr %1, i32 2316
  %wol = getelementptr i8, ptr %1, i32 2728
  %2 = ptrtoint ptr %wol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wol, align 8
  %ctrl_flags1.i = getelementptr i8, ptr %1, i32 2432
  %4 = ptrtoint ptr %ctrl_flags1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ctrl_flags1.i, align 4
  %6 = and i16 %5, -385
  store i16 %6, ptr %ctrl_flags1.i, align 4
  tail call fastcc void @atl1c_set_aspm(ptr noundef %hw2, i16 noundef zeroext -1) #10
  %7 = ptrtoint ptr %ctrl_flags1.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %5, ptr %ctrl_flags1.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then:                                          ; preds = %entry
  %flags = getelementptr i8, ptr %1, i32 2712
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.end, !prof !225

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2557, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  tail call fastcc void @atl1c_down(ptr noundef %add.ptr.i)
  br label %if.end25

if.end25:                                         ; preds = %if.end, %entry.if.end25_crit_edge
  tail call void @netif_device_detach(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool26.not = icmp eq i32 %3, 0
  br i1 %tobool26.not, label %if.end25.if.end45_crit_edge, label %if.then27

if.end25.if.end45_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then27:                                        ; preds = %if.end25
  %call28 = tail call i32 @atl1c_phy_to_ps_link(ptr noundef %hw2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp.not = icmp eq i32 %call28, 0
  br i1 %cmp.not, label %if.then27.if.end45_crit_edge, label %do.body30

if.then27.if.end45_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

do.body30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1c_suspend.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1c_suspend, %if.then40)) #10
          to label %if.end45 [label %if.then40], !srcloc !236

if.then40:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atl1c_suspend.__UNIQUE_ID_ddebug513, ptr noundef %dev, ptr noundef nonnull @.str.93) #10
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %do.body30, %if.then27.if.end45_crit_edge, %if.end25.if.end45_crit_edge
  %call46 = tail call i32 @atl1c_power_saving(ptr noundef %hw2, i32 noundef %3) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_wake_from_d3(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1c_phy_to_ps_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1c_power_saving(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_io_error_detected(ptr noundef %pdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @netif_device_detach(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @atl1c_down(ptr noundef %add.ptr.i)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @pci_disable_device(ptr noundef %pdev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.end4 ], [ 4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_io_slot_reset(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @pci_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %1, i32 2720
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.94) #13
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_set_master(ptr noundef %pdev) #10
  %call6 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef 3, i1 noundef zeroext false) #10
  %call7 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef 4, i1 noundef zeroext false) #10
  %hw = getelementptr i8, ptr %1, i32 2316
  %call8 = tail call fastcc i32 @atl1c_reset_mac(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 5, %if.end5 ], [ 4, %do.end ], [ 4, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1c_io_resume(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call3 = tail call fastcc i32 @atl1c_up(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end8_crit_edge, label %if.then4

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %if.then
  %msg_enable = getelementptr i8, ptr %1, i32 2720
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then4.cleanup_crit_edge, label %do.end

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.96) #13
  br label %cleanup

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  tail call void @netif_device_attach(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %if.then4.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !398
  tail call void @arm_heavy_mb() #10
  %hw = getelementptr i8, ptr %1, i32 2316
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !220
  tail call fastcc void @atl1c_reset_pcie(ptr noundef %hw)
  %call4 = tail call i32 @atl1c_phy_reset(ptr noundef %hw) #10
  %call6 = tail call fastcc i32 @atl1c_reset_mac(ptr noundef %hw)
  %call8 = tail call i32 @atl1c_phy_init(ptr noundef %hw) #10
  tail call void @netif_device_attach(ptr noundef %1) #10
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call10 = tail call fastcc i32 @atl1c_up(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !30, !31, !33, !35, !37, !39, !40, !41, !43, !45, !46, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !82, !84, !85, !86, !87, !89, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !117, !118, !119, !121, !122, !124, !125, !127, !128, !129, !131, !133, !134, !135, !136, !138, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !157, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !175, !176, !177, !178, !180, !181, !182, !184, !185, !187, !188, !190, !192, !193, !194, !196, !198, !199, !200, !201, !203, !204, !205, !206}
!llvm.named.register.sp = !{!208}
!llvm.module.flags = !{!209, !210, !211, !212, !213, !214, !215, !216}
!llvm.ident = !{!217}

!0 = !{ptr @atl1c_driver_name, !1, !"atl1c_driver_name", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 11, i32 6}
!2 = !{ptr @__UNIQUE_ID_author498, !3, !"__UNIQUE_ID_author498", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_author499, !5, !"__UNIQUE_ID_author499", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 35, i32 1}
!6 = !{ptr @__UNIQUE_ID_description500, !7, !"__UNIQUE_ID_description500", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 36, i32 1}
!8 = !{ptr @__UNIQUE_ID_file501, !9, !"__UNIQUE_ID_file501", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 37, i32 1}
!10 = !{ptr @__UNIQUE_ID_license502, !9, !"__UNIQUE_ID_license502", i1 false, i1 false}
!11 = !{ptr @__initcall__kmod_atl1c__515_2927_atl1c_driver_init6, !12, !"__initcall__kmod_atl1c__515_2927_atl1c_driver_init6", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2927, i32 1}
!13 = !{ptr @__exitcall_atl1c_driver_exit, !12, !"__exitcall_atl1c_driver_exit", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 463, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @atl1c_restore_vlan.__UNIQUE_ID_ddebug504, !15, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 449, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @atl1c_vlan_mode.__UNIQUE_ID_ddebug503, !21, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 1830, i32 5}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @atl1c_alloc_rx_buffer._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @atl1c_alloc_rx_buffer._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 1850, i32 4}
!33 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @atl1c_qregs, !42, !"atl1c_qregs", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 50, i32 27}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2391, i32 4}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @atl1c_request_irq._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @atl1c_request_irq._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2403, i32 4}
!51 = !{ptr @atl1c_request_irq._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @atl1c_request_irq._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2411, i32 3}
!55 = !{ptr @atl1c_request_irq.__UNIQUE_ID_ddebug512, !54, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 1723, i32 5}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @atl1c_intr._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @atl1c_intr._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 1734, i32 5}
!63 = !{ptr @atl1c_intr._entry.24, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @atl1c_intr._entry_ptr.26, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 330, i32 5}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @atl1c_link_chg_event._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @atl1c_link_chg_event._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 281, i32 5}
!73 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @atl1c_check_link_status._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @atl1c_check_link_status._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 303, i32 5}
!78 = !{ptr @atl1c_check_link_status._entry.32, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @atl1c_check_link_status._entry_ptr.34, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 1305, i32 3}
!84 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @atl1c_reset_mac._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @atl1c_reset_mac._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @atl1c_driver, !88, !"atl1c_driver", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2917, i32 26}
!89 = !{ptr @atl1c_pci_tbl, !90, !"atl1c_pci_tbl", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 22, i32 35}
!91 = !{ptr @atl1c_probe.cards_found, !92, !"cards_found", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2656, i32 13}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2666, i32 41}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2680, i32 3}
!97 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @atl1c_probe._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @atl1c_probe._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2686, i32 3}
!102 = !{ptr @atl1c_probe._entry.42, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @atl1c_probe._entry_ptr.44, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2695, i32 3}
!106 = !{ptr @atl1c_probe._entry.45, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @atl1c_probe._entry_ptr.47, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2711, i32 3}
!110 = !{ptr @atl1c_probe._entry.48, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @atl1c_probe._entry_ptr.50, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @atl1c_probe.__key, !113, !"__key", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2738, i32 2}
!114 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2742, i32 3}
!117 = !{ptr @atl1c_probe._entry.52, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @atl1c_probe._entry_ptr.54, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2772, i32 3}
!121 = !{ptr @atl1c_probe.__UNIQUE_ID_ddebug514, !120, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!122 = !{ptr @atl1c_probe.__key.56, !123, !"__key", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2776, i32 2}
!124 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2780, i32 3}
!127 = !{ptr @atl1c_probe._entry.58, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @atl1c_probe._entry_ptr.60, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @atl1c_netdev_ops, !130, !"atl1c_netdev_ops", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2602, i32 36}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 1063, i32 3}
!133 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @atl1c_setup_ring_resources._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @atl1c_setup_ring_resources._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/linux/mm.h", i32 717, i32 2}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2355, i32 3}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2114, i32 6}
!142 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @atl1c_tso_csum._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @atl1c_tso_csum._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2139, i32 6}
!147 = !{ptr @atl1c_tso_csum._entry.67, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @atl1c_tso_csum._entry_ptr.69, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2166, i32 5}
!151 = !{ptr @atl1c_tso_csum._entry.70, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @atl1c_tso_csum._entry_ptr.72, !150, !"_entry_ptr", i1 false, i1 false}
!153 = distinct !{null, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!155 = distinct !{null, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 642, i32 3}
!159 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @atl1c_mii_ioctl.__UNIQUE_ID_ddebug507, !158, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 1943, i32 6}
!163 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @atl1c_clean_rx._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @atl1c_clean_rx._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 1954, i32 5}
!168 = !{ptr @atl1c_clean_rx._entry.79, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @atl1c_clean_rx._entry_ptr.81, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @atl1c_clean_rx._entry.82, !171, !"_entry", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 1973, i32 5}
!172 = !{ptr @atl1c_clean_rx._entry_ptr.83, !171, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.84, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 818, i32 3}
!175 = !{ptr @.str.85, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @atl1c_sw_init._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @atl1c_sw_init._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.87, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 846, i32 3}
!180 = !{ptr @atl1c_sw_init._entry.86, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @atl1c_sw_init._entry_ptr.88, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @atl1c_sw_init.__key, !183, !"__key", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 852, i32 2}
!184 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @atl1c_sw_init.__key.90, !186, !"__key", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 853, i32 2}
!187 = !{ptr @.str.91, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @plats, !189, !"plats", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 732, i32 42}
!190 = !{ptr @.str.92, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2564, i32 4}
!192 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @atl1c_suspend.__UNIQUE_ID_ddebug513, !191, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!194 = !{ptr @atl1c_err_handler, !195, !"atl1c_err_handler", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2909, i32 40}
!196 = !{ptr @.str.94, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2870, i32 4}
!198 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @atl1c_io_slot_reset._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @atl1c_io_slot_reset._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2900, i32 5}
!203 = !{ptr @.str.97, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @atl1c_io_resume._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @atl1c_io_resume._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @atl1c_pm_ops, !207, !"atl1c_pm_ops", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_main.c", i32 2915, i32 8}
!208 = !{!"sp"}
!209 = !{i32 1, !"wchar_size", i32 2}
!210 = !{i32 1, !"min_enum_size", i32 4}
!211 = !{i32 8, !"branch-target-enforcement", i32 0}
!212 = !{i32 8, !"sign-return-address", i32 0}
!213 = !{i32 8, !"sign-return-address-all", i32 0}
!214 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!215 = !{i32 7, !"uwtable", i32 1}
!216 = !{i32 7, !"frame-pointer", i32 2}
!217 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!218 = !{i64 2148336042, i64 2148336068, i64 2148336097, i64 2148336131, i64 2148336162, i64 2148336185}
!219 = !{i64 2158113612}
!220 = !{i64 4298665}
!221 = !{i64 2158114152}
!222 = !{i64 4299083}
!223 = !{i64 2158114937}
!224 = !{i8 0, i8 2}
!225 = !{!"branch_weights", i32 2000, i32 1}
!226 = !{i64 2148424494}
!227 = !{i64 2148339227, i64 2148339259, i64 2148339288, i64 2148339322, i64 2148339353, i64 2148339376}
!228 = !{i64 2148424723}
!229 = !{i64 2158111737}
!230 = !{i64 2158112315}
!231 = !{i64 2158113133}
!232 = !{i64 2158227937}
!233 = !{i64 2158228491}
!234 = !{i64 2158229045}
!235 = !{i64 2158229525}
!236 = !{i64 2148817857, i64 2148817862, i64 2148817875, i64 2148817919, i64 2148817953, i64 2148817974}
!237 = !{!"branch_weights", i32 1, i32 2000}
!238 = !{i64 2158220737}
!239 = !{i64 2158221251}
!240 = !{i64 2158221765}
!241 = !{i64 2158222325}
!242 = !{i64 2158222833}
!243 = !{i64 2158223533}
!244 = !{i64 2158224060}
!245 = !{i64 2158167904}
!246 = !{i64 2158168694}
!247 = !{i64 2158169406}
!248 = !{i64 2158170112}
!249 = !{i64 2158170896}
!250 = !{i64 2158171588}
!251 = !{i64 2158172205}
!252 = !{i64 2158172923}
!253 = !{i64 2158173621}
!254 = !{i64 2158174192}
!255 = !{i64 2158174703}
!256 = !{i64 2158175222}
!257 = !{i64 2158175753}
!258 = !{i64 2158176284}
!259 = !{i64 2158176815}
!260 = !{i64 2158177326}
!261 = !{i64 2158177807}
!262 = !{i64 2158178288}
!263 = !{i64 2158224640}
!264 = !{i64 2158225534}
!265 = !{i64 2158226115}
!266 = !{i64 2158226732}
!267 = !{i64 2158178849}
!268 = !{i64 2158182721}
!269 = !{i64 2158183669}
!270 = !{i64 2158184882}
!271 = !{!"auto-init"}
!272 = !{i64 2158193680}
!273 = !{i64 2158194194}
!274 = !{i64 2158194708}
!275 = !{i64 2158195540}
!276 = !{i64 2158196054}
!277 = !{i64 2158196568}
!278 = !{i64 2158197400}
!279 = !{i64 2158197914}
!280 = !{i64 2158198428}
!281 = !{i64 2158200355}
!282 = !{i64 2158200846}
!283 = !{i64 2158201337}
!284 = !{i64 2158131967}
!285 = !{i64 2158132481}
!286 = !{i64 2158132995}
!287 = !{i64 2158133754}
!288 = !{i64 2158134271}
!289 = !{i64 2158134791}
!290 = !{i64 2158256932}
!291 = !{i64 2158257342}
!292 = !{i64 2158142146}
!293 = !{i64 2158142700}
!294 = !{i64 2158143254}
!295 = !{i64 2158143588}
!296 = !{i64 2154340836, i64 2154341320, i64 2154340873, i64 2154340929, i64 2154340963, i64 2154340987, i64 2154341028, i64 2154341049, i64 2154341077, i64 2154341111}
!297 = !{i64 2158240248}
!298 = !{i64 2158240762}
!299 = !{i64 2158241276}
!300 = !{i64 2158241637}
!301 = !{i64 2158239177}
!302 = !{i64 2158246990}
!303 = !{i64 2158185943}
!304 = !{i64 2158186457}
!305 = !{i64 2158186971}
!306 = !{i64 2158187351}
!307 = !{i64 2158188385}
!308 = !{i64 2158188899}
!309 = !{i64 2158189413}
!310 = !{i64 2158189791}
!311 = !{i64 2158115943}
!312 = !{i64 2158116457}
!313 = !{i64 2158116971}
!314 = !{i64 2158190989}
!315 = !{i64 2158191503}
!316 = !{i64 2158192017}
!317 = !{i64 2158192477}
!318 = !{i64 2158202378}
!319 = !{i64 2158202892}
!320 = !{i64 2158203406}
!321 = !{i64 2158203936}
!322 = !{i64 2158204748}
!323 = !{i64 2158207520}
!324 = !{i64 2158208579}
!325 = !{i64 2158209093}
!326 = !{i64 2158209607}
!327 = !{i64 2158210059}
!328 = !{i64 2158211211}
!329 = !{i64 2158211725}
!330 = !{i64 2158212239}
!331 = !{i64 2158212713}
!332 = !{i64 2158213402}
!333 = !{i64 2158214488}
!334 = !{i64 2158215002}
!335 = !{i64 2158215516}
!336 = !{i64 2158219655}
!337 = !{i64 2158157557}
!338 = !{i64 2158158912}
!339 = !{i32 0, i32 33}
!340 = !{i64 2158266565}
!341 = !{i64 2158236526}
!342 = !{i64 4298245}
!343 = !{i64 2158237196}
!344 = !{i64 2158237866}
!345 = !{i64 2156193421}
!346 = !{i64 2158238602}
!347 = !{i64 2158104806}
!348 = !{i64 2158105312}
!349 = !{i64 2158105818}
!350 = !{i64 2158106132}
!351 = !{i64 2158107225}
!352 = !{i64 2158107739}
!353 = !{i64 2158108253}
!354 = !{i64 2158108543}
!355 = !{i64 2158109638}
!356 = !{i64 2158110152}
!357 = !{i64 2158110666}
!358 = !{i64 2158110969}
!359 = !{i64 2158088726}
!360 = !{i64 2158089240}
!361 = !{i64 2158089754}
!362 = !{i64 2158090142}
!363 = !{i64 2158091188}
!364 = !{i64 2158091702}
!365 = !{i64 2158092216}
!366 = !{i64 2158092594}
!367 = !{i64 2158093322}
!368 = !{i64 2158094463}
!369 = !{i64 2158094977}
!370 = !{i64 2158095491}
!371 = !{i64 2158096417}
!372 = !{i64 2158097435}
!373 = !{i64 2158097941}
!374 = !{i64 2158098447}
!375 = !{i64 2158098742}
!376 = !{i64 2158099774}
!377 = !{i64 2158100288}
!378 = !{i64 2158100802}
!379 = !{i64 2158101182}
!380 = !{i64 2158102216}
!381 = !{i64 2158102730}
!382 = !{i64 2158103244}
!383 = !{i64 2158103686}
!384 = !{i64 2158276538}
!385 = !{i64 4298045}
!386 = !{i64 7833764, i64 7833805, i64 7833850}
!387 = !{i64 7832662}
!388 = !{i64 2154691089, i64 2154691589, i64 2154691126, i64 2154691182, i64 2154691216, i64 2154691240, i64 2154691281, i64 2154691302, i64 2154691330, i64 2154691364}
!389 = !{i64 2154692433}
!390 = !{i64 2156192350}
!391 = !{i64 2158230754}
!392 = !{i64 2158231328}
!393 = !{i64 2158231902}
!394 = !{i64 2158232868}
!395 = !{i64 2158233442}
!396 = !{i64 2158234016}
!397 = !{i64 2154316863, i64 2154317346, i64 2154316900, i64 2154316956, i64 2154316990, i64 2154317014, i64 2154317055, i64 2154317076, i64 2154317104, i64 2154317138}
!398 = !{i64 2158288154}
