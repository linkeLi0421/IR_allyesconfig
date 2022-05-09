; ModuleID = '/llk/IR_all_yes/drivers/net/vmxnet3/vmxnet3_drv.c_pt.bc'
source_filename = "../drivers/net/vmxnet3/vmxnet3_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.93 }
%union.anon.93 = type { i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vmxnet3_adapter = type { [32 x %struct.vmxnet3_tx_queue], [32 x %struct.vmxnet3_rx_queue], [128 x i32], %struct.vmxnet3_intr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i16, i16, i8, i8, i32, %struct.work_struct, i32, i32, ptr, i8, i32, i32, i32, i8, [39 x i8] }
%struct.vmxnet3_tx_queue = type { [24 x i8], ptr, %struct.spinlock, %struct.vmxnet3_cmd_ring, ptr, %struct.vmxnet3_tx_data_ring, %struct.vmxnet3_comp_ring, ptr, %struct.vmxnet3_tq_driver_stats, i8, i32, i32, i16, [34 x i8] }
%struct.vmxnet3_cmd_ring = type { ptr, i32, i32, i32, i8, i32 }
%struct.vmxnet3_tx_data_ring = type { ptr, i32, i32 }
%struct.vmxnet3_comp_ring = type { ptr, i32, i32, i8, i8, i32 }
%struct.vmxnet3_tq_driver_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.vmxnet3_rx_queue = type { [24 x i8], ptr, %struct.napi_struct, [2 x %struct.vmxnet3_cmd_ring], %struct.vmxnet3_rx_data_ring, %struct.vmxnet3_comp_ring, %struct.vmxnet3_rx_ctx, i32, i32, i32, [2 x ptr], ptr, %struct.vmxnet3_rq_driver_stats, [112 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmxnet3_rx_data_ring = type { ptr, i32, i16 }
%struct.vmxnet3_rx_ctx = type { ptr, i32 }
%struct.vmxnet3_rq_driver_stats = type { i64, i64, i64, i64 }
%struct.vmxnet3_intr = type { i32, i32, i8, i8, [65 x i8], [33 x i8], [65 x %struct.msix_entry] }
%struct.msix_entry = type { i32, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.147, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%union.anon.147 = type { ptr }
%struct.vmxnet3_rx_buf_info = type { i32, i16, %union.anon.145, i32 }
%union.anon.145 = type { ptr }
%struct.vmxnet3_tx_buf_info = type { i32, i16, i16, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.5, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.5 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.Vmxnet3_DriverShared = type { i32, i32, %struct.Vmxnet3_DSDevRead, i32, i32, %union.anon.146, %struct.Vmxnet3_DSDevReadExt }
%struct.Vmxnet3_DSDevRead = type { %struct.Vmxnet3_MiscConf, %struct.Vmxnet3_IntrConf, %struct.Vmxnet3_RxFilterConf, %struct.Vmxnet3_VariableLenConfDesc, %struct.Vmxnet3_VariableLenConfDesc, %struct.Vmxnet3_VariableLenConfDesc }
%struct.Vmxnet3_MiscConf = type { %struct.Vmxnet3_DriverInfo, i64, i64, i64, i32, i32, i32, i16, i8, i8, [4 x i32] }
%struct.Vmxnet3_DriverInfo = type { i32, %struct.Vmxnet3_GOSInfo, i32, i32 }
%struct.Vmxnet3_GOSInfo = type { i32 }
%struct.Vmxnet3_IntrConf = type { i8, i8, i8, [25 x i8], i32, [2 x i32] }
%struct.Vmxnet3_RxFilterConf = type { i32, i16, i16, i64, [128 x i32] }
%struct.Vmxnet3_VariableLenConfDesc = type { i32, i32, i64 }
%union.anon.146 = type { %union.Vmxnet3_CmdInfo }
%union.Vmxnet3_CmdInfo = type { %struct.Vmxnet3_VariableLenConfDesc }
%struct.Vmxnet3_DSDevReadExt = type { %struct.Vmxnet3_IntrConfExt }
%struct.Vmxnet3_IntrConfExt = type { i8, i8, i8, i8, i32, i32, [65 x i8], [3 x i8] }
%struct.Vmxnet3_TxQueueDesc = type { %struct.Vmxnet3_TxQueueCtrl, %struct.Vmxnet3_TxQueueConf, %struct.Vmxnet3_QueueStatus, %struct.UPT1_TxStats, [88 x i8] }
%struct.Vmxnet3_TxQueueCtrl = type { i32, i32, i64 }
%struct.Vmxnet3_TxQueueConf = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, [1 x i8], i16, [4 x i8] }
%struct.Vmxnet3_QueueStatus = type { i8, [3 x i8], i32 }
%struct.UPT1_TxStats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.Vmxnet3_RxQueueDesc = type { %struct.Vmxnet3_RxQueueCtrl, %struct.Vmxnet3_RxQueueConf, %struct.Vmxnet3_QueueStatus, %struct.UPT1_RxStats, [88 x i8] }
%struct.Vmxnet3_RxQueueCtrl = type { i8, [7 x i8], i64 }
%struct.Vmxnet3_RxQueueConf = type { [2 x i64], i64, i64, i64, [2 x i32], i32, i32, i8, [1 x i8], i16, [4 x i8] }
%struct.UPT1_RxStats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.UPT1_RSSConf = type { i16, i16, i16, i16, [40 x i8], [128 x i8] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page = type { i32, %union.anon.30, %union.anon.91, %struct.atomic_t, i32 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.91 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%union.Vmxnet3_GenericDesc = type { [2 x i64] }
%struct.sk_buff = type { %union.anon.2, %union.anon.128, %union.anon.129, [48 x i8], %union.anon.130, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.132, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%union.anon.128 = type { ptr }
%union.anon.129 = type { i64 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { i32, ptr }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.134, i32, i32, i32, i16, i16, %union.anon.136, i32, %union.anon.137, %union.anon.138, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.134 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.vlan_hdr = type { i16, i16 }
%struct.vmxnet3_tx_ctx = type { i8, i8, i16, i32, i32, i32, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.anon.135 = type { i16, i16 }
%struct.Vmxnet3_TxDesc = type { i64, i64 }
%struct.Vmxnet3_RxCompDesc = type { i32, i32, i64 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.vlan_ethhdr = type { %union.anon.157, i16, i16, i16 }
%union.anon.157 = type { %struct.anon.158 }
%struct.anon.158 = type { [6 x i8], [6 x i8] }
%struct.Vmxnet3_PMConf = type { i16, i8, [5 x i8], [6 x %struct.Vmxnet3_PM_PktFilter] }
%struct.Vmxnet3_PM_PktFilter = type { i8, i8, [16 x i8], [128 x i8], [6 x i8] }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.arphdr = type { i16, i16, i8, i8, i16 }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }

@vmxnet3_driver_name = dso_local global { [8 x i8], [24 x i8] } { [8 x i8] c"vmxnet3\00", [24 x i8] zeroinitializer }, align 32
@vmxnet3_activate_dev.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 2, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vmxnet3\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vmxnet3_activate_dev\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/vmxnet3/vmxnet3_drv.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: skb_buf_size %d, rx_buf_per_pkt %d, ring sizes %u %u %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to init rx queue error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to setup irq for error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to activate dev: error %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Could not allocate any rx queues. Aborting.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Number of rx queues changed to : %d.\0A\00", [58 x i8] zeroinitializer }, align 32
@__initcall__kmod_vmxnet3__547_3997_vmxnet3_init_module6 = internal global ptr @vmxnet3_init_module, section ".initcall6.init", align 4
@__exitcall_vmxnet3_exit_module = internal global ptr @vmxnet3_exit_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author548 = internal constant [28 x i8] c"vmxnet3.author=VMware, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description549 = internal constant [54 x i8] c"vmxnet3.description=VMware vmxnet3 virtual NIC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file550 = internal constant [41 x i8] c"vmxnet3.file=drivers/net/vmxnet3/vmxnet3\00", section ".modinfo", align 1
@__UNIQUE_ID_license551 = internal constant [23 x i8] c"vmxnet3.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version552 = internal constant [26 x i8] c"vmxnet3.version=1.6.0.0-k\00", section ".modinfo", align 1
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"1.6.0.0-k\00", [22 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str, ptr @.str.10 }, section "__modver", align 4
@vmxnet3_rq_init_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1839, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: failed to initialize rx queue%i\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vmxnet3_rq_init_all\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vmxnet3_rq_init_all._entry_ptr = internal global ptr @vmxnet3_rq_init_all._entry, section ".printk_index", align 4
@vmxnet3_rq_alloc_rx_buf.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vmxnet3_rq_alloc_rx_buf\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"alloc_rx_buf: %d allocated, next2fill %u, next2comp %u\0A\00", [40 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-tx-%d\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-rxtx-%d\00", [21 x i8] zeroinitializer }, align 32
@vmxnet3_request_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 2165, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to request irq for MSIX, %s, error %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vmxnet3_request_irqs\00", [43 x i8] zeroinitializer }, align 32
@vmxnet3_request_irqs._entry_ptr = internal global ptr @vmxnet3_request_irqs._entry, section ".printk_index", align 4
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-rx-%d\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s-event-%d\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to request irq (intr type:%d), error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"intr type %u, mode %u, %u vectors allocated\0A\00", [51 x i8] zeroinitializer }, align 32
@vmxnet3_process_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 198, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: tq[%d] error 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vmxnet3_process_events\00", [41 x i8] zeroinitializer }, align 32
@vmxnet3_process_events._entry_ptr = internal global ptr @vmxnet3_process_events._entry, section ".printk_index", align 4
@vmxnet3_process_events._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 204, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: rq[%d] error 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@vmxnet3_process_events._entry_ptr.33 = internal global ptr @vmxnet3_process_events._entry.31, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to copy mcast list, setting ALL_MULTI\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NIC Link is Up %d Mbps\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NIC Link is Down\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate tx ring\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate tx data ring\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate tx comp ring\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to allocate rx ring %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rx data ring will be disabled\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate rx comp ring\0A\00", [63 x i8] zeroinitializer }, align 32
@vmxnet3_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 3993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s - version %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vmxnet3_init_module\00", [44 x i8] zeroinitializer }, align 32
@vmxnet3_init_module._entry_ptr = internal global ptr @vmxnet3_init_module._entry, section ".printk_index", align 4
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VMware vmxnet3 virtual NIC driver\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"1.6.0.0-k-NAPI\00", [17 x i8] zeroinitializer }, align 32
@vmxnet3_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @vmxnet3_driver_name, ptr @vmxnet3_pciid_table, ptr @vmxnet3_probe_device, ptr @vmxnet3_remove_device, ptr null, ptr null, ptr @vmxnet3_shutdown_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vmxnet3_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@vmxnet3_pciid_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5549, i32 1968, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@vmxnet3_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @vmxnet3_suspend, ptr @vmxnet3_resume, ptr @vmxnet3_suspend, ptr null, ptr null, ptr @vmxnet3_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vmxnet3_probe_device.vmxnet3_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @vmxnet3_open, ptr @vmxnet3_close, ptr @vmxnet3_xmit_frame, ptr @vmxnet3_features_check, ptr null, ptr null, ptr @vmxnet3_set_mc, ptr @vmxnet3_set_mac_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vmxnet3_change_mtu, ptr null, ptr @vmxnet3_tx_timeout, ptr @vmxnet3_get_stats64, ptr null, ptr null, ptr null, ptr @vmxnet3_vlan_rx_add_vid, ptr @vmxnet3_vlan_rx_kill_vid, ptr @vmxnet3_netpoll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vmxnet3_fix_features, ptr @vmxnet3_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@enable_mq = internal global { i1, [31 x i8] } zeroinitializer, align 32
@vmxnet3_probe_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 3441, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dma_set_mask failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vmxnet3_probe_device\00", [43 x i8] zeroinitializer }, align 32
@vmxnet3_probe_device._entry_ptr = internal global ptr @vmxnet3_probe_device._entry, section ".printk_index", align 4
@vmxnet3_probe_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&adapter->cmd_lock\00", [45 x i8] zeroinitializer }, align 32
@vmxnet3_probe_device._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.48, ptr @.str.2, i32 3450, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to map dma\0A\00", [45 x i8] zeroinitializer }, align 32
@vmxnet3_probe_device._entry_ptr.52 = internal global ptr @vmxnet3_probe_device._entry.50, section ".printk_index", align 4
@vmxnet3_probe_device._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.48, ptr @.str.2, i32 3459, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to allocate memory\0A\00", [37 x i8] zeroinitializer }, align 32
@vmxnet3_probe_device._entry_ptr.55 = internal global ptr @vmxnet3_probe_device._entry.53, section ".printk_index", align 4
@vmxnet3_probe_device._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.48, ptr @.str.2, i32 3501, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Incompatible h/w version (0x%x) for adapter\0A\00", [51 x i8] zeroinitializer }, align 32
@vmxnet3_probe_device._entry_ptr.58 = internal global ptr @vmxnet3_probe_device._entry.56, section ".printk_index", align 4
@vmxnet3_probe_device.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.59, i8 3, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Using device version %d\0A\00", [39 x i8] zeroinitializer }, align 32
@vmxnet3_probe_device._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.48, ptr @.str.2, i32 3512, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Incompatible upt version (0x%x) for adapter\0A\00", [51 x i8] zeroinitializer }, align 32
@vmxnet3_probe_device._entry_ptr.62 = internal global ptr @vmxnet3_probe_device._entry.60, section ".printk_index", align 4
@vmxnet3_probe_device._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.48, ptr @.str.2, i32 3549, ptr @.str.65, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"# of Tx queues : %d, # of Rx queues : %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@vmxnet3_probe_device._entry_ptr.66 = internal global ptr @vmxnet3_probe_device._entry.63, section ".printk_index", align 4
@vmxnet3_probe_device._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.48, ptr @.str.2, i32 3560, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@vmxnet3_probe_device._entry_ptr.68 = internal global ptr @vmxnet3_probe_device._entry.67, section ".printk_index", align 4
@vmxnet3_probe_device.__UNIQUE_ID_ddebug536 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.69, i8 3, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RSS is enabled.\0A\00", [47 x i8] zeroinitializer }, align 32
@vmxnet3_probe_device.__key.70 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&adapter->work)\00", [62 x i8] zeroinitializer }, align 32
@vmxnet3_probe_device._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.48, ptr @.str.2, i32 3669, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register adapter\0A\00", [36 x i8] zeroinitializer }, align 32
@vmxnet3_probe_device._entry_ptr.74 = internal global ptr @vmxnet3_probe_device._entry.72, section ".printk_index", align 4
@vmxnet3_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&adapter->tx_queue[i].tx_lock\00", [34 x i8] zeroinitializer }, align 32
@vmxnet3_tq_xmit.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.77, i8 1, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vmxnet3_tq_xmit\00", [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"tx queue stopped on %s, next2comp %u next2fill %u\0A\00", [45 x i8] zeroinitializer }, align 32
@vmxnet3_tq_xmit.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.78, i8 1, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"txd[%u]: SOP 0x%Lx 0x%x 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@vmxnet3_copy_hdr.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 0, i8 -19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vmxnet3_copy_hdr\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"copy %u bytes to dataRing[%u]\0A\00", [33 x i8] zeroinitializer }, align 32
@vmxnet3_map_pkt.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vmxnet3_map_pkt\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"txd[%u]: 0x%Lx 0x%x 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@vmxnet3_map_pkt.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 0, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@vmxnet3_map_pkt.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.84, i8 0, i8 -60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"txd[%u]: 0x%llx %u %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"failed to re-create rx queues,  error %d. Closing it.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to re-activate, error %d. Closing it\0A\00", [51 x i8] zeroinitializer }, align 32
@vmxnet3_rq_create_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 1923, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to create rx queue%i\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vmxnet3_rq_create_all\00", [42 x i8] zeroinitializer }, align 32
@vmxnet3_rq_create_all._entry_ptr = internal global ptr @vmxnet3_rq_create_all._entry, section ".printk_index", align 4
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx hang\0A\00", [23 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@vmxnet3_alloc_pci_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 2845, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable adapter: error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vmxnet3_alloc_pci_resources\00", [36 x i8] zeroinitializer }, align 32
@vmxnet3_alloc_pci_resources._entry_ptr = internal global ptr @vmxnet3_alloc_pci_resources._entry, section ".printk_index", align 4
@vmxnet3_alloc_pci_resources._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 2853, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to request region for adapter: error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@vmxnet3_alloc_pci_resources._entry_ptr.94 = internal global ptr @vmxnet3_alloc_pci_resources._entry.92, section ".printk_index", align 4
@vmxnet3_alloc_pci_resources._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.91, ptr @.str.2, i32 2863, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to map bar0\0A\00", [44 x i8] zeroinitializer }, align 32
@vmxnet3_alloc_pci_resources._entry_ptr.97 = internal global ptr @vmxnet3_alloc_pci_resources._entry.95, section ".printk_index", align 4
@vmxnet3_alloc_pci_resources._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.91, ptr @.str.2, i32 2872, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to map bar1\0A\00", [44 x i8] zeroinitializer }, align 32
@vmxnet3_alloc_pci_resources._entry_ptr.100 = internal global ptr @vmxnet3_alloc_pci_resources._entry.98, section ".printk_index", align 4
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Number of rx queues : 1\0A\00", [39 x i8] zeroinitializer }, align 32
@vmxnet3_alloc_intr_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 3300, ptr @.str.65, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Failed to enable MSI-X, error %d. Limiting #rx queues to 1, try MSI.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vmxnet3_alloc_intr_resources\00", [35 x i8] zeroinitializer }, align 32
@vmxnet3_alloc_intr_resources._entry_ptr = internal global ptr @vmxnet3_alloc_intr_resources._entry, section ".printk_index", align 4
@vmxnet3_alloc_intr_resources._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 3316, ptr @.str.65, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Using INTx interrupt, #Rx queues: 1.\0A\00", [58 x i8] zeroinitializer }, align 32
@vmxnet3_alloc_intr_resources._entry_ptr.106 = internal global ptr @vmxnet3_alloc_intr_resources._entry.104, section ".printk_index", align 4
@vmxnet3_acquire_msix_vectors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 3222, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to enable %d MSI-X, trying %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vmxnet3_acquire_msix_vectors\00", [35 x i8] zeroinitializer }, align 32
@vmxnet3_acquire_msix_vectors._entry_ptr = internal global ptr @vmxnet3_acquire_msix_vectors._entry, section ".printk_index", align 4
@vmxnet3_acquire_msix_vectors._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.2, i32 3232, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable MSI-X, error: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@vmxnet3_acquire_msix_vectors._entry_ptr.111 = internal global ptr @vmxnet3_acquire_msix_vectors._entry.109, section ".printk_index", align 4
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"resetting\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"already closed\0A\00", [16 x i8] zeroinitializer }, align 32
@vmxnet3_rq_rx_complete.rxprod_reg = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2048, i32 2560], [24 x i8] zeroinitializer }, align 32
@vmxnet3_rq_rx_complete.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.2, ptr @.str.115, i8 1, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vmxnet3_rq_rx_complete\00", [41 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rxRing[%u][%u] 0 length\0A\00", [39 x i8] zeroinitializer }, align 32
@vmxnet3_rq_rx_complete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vmxnet3_rx_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vmxnet3_rx_csum.__already_done.116 = internal unnamed_addr global i1 false, section ".data.once", align 1
@vmxnet3_rx_csum.__already_done.117 = internal unnamed_addr global i1 false, section ".data.once", align 1
@vmxnet3_rx_csum.__already_done.118 = internal unnamed_addr global i1 false, section ".data.once", align 1
@vmxnet3_suspend.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.119 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.120 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.122 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.123 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to re-activate on resume, error: %d\00", [53 x i8] zeroinitializer }, align 32
@switch.table.vmxnet3_rq_rx_complete = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 128, i16 0, i16 128, i16 128, i16 128], [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.126 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.128 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.129 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.131 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.137 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.138 = private unnamed_addr constant [20 x i8] c"vmxnet3_driver_name\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 32, i32 6 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2690, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2701, i32 7 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2708, i32 7 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2726, i32 7 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2986, i32 9 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2991, i32 10 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 4011, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1837, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 639, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 326, i32 6 }
@___asan_gen_.202 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 717, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2150, i32 40 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2158, i32 40 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2162, i32 5 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2187, i32 40 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2207, i32 40 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2230, i32 7 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2252, i32 8 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 195, i32 5 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 201, i32 5 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2433, i32 10 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 151, i32 32 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 161, i32 32 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 511, i32 31 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 519, i32 31 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 527, i32 31 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1864, i32 8 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1877, i32 8 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1890, i32 31 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3992, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant [15 x i8] c"vmxnet3_driver\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3977, i32 26 }
@___asan_gen_.291 = private unnamed_addr constant [20 x i8] c"vmxnet3_pciid_table\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 39, i32 35 }
@___asan_gen_.294 = private unnamed_addr constant [15 x i8] c"vmxnet3_pm_ops\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3969, i32 32 }
@___asan_gen_.297 = private unnamed_addr constant [19 x i8] c"vmxnet3_netdev_ops\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3379, i32 37 }
@___asan_gen_.300 = private unnamed_addr constant [10 x i8] c"enable_mq\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3441, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3445, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3450, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3459, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3500, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3505, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3511, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3547, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3560, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3627, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3647, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3669, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3018, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1096, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1183, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 598, i32 8 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 946, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 697, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 781, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3138, i32 8 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3146, i32 8 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1921, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3342, i32 30 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2845, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2852, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2863, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2872, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3288, i32 9 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3298, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3315, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3220, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3231, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3361, i32 34 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3366, i32 32 }
@___asan_gen_.487 = private unnamed_addr constant [11 x i8] c"rxprod_reg\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1346, i32 19 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1412, i32 5 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3853, i32 9 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 695, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 232, i32 9 }
@___asan_gen_.509 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 723, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.512 = private constant [37 x i8] c"../drivers/net/vmxnet3/vmxnet3_drv.c\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3960, i32 7 }
@___asan_gen_.514 = private unnamed_addr constant [36 x i8] c"switch.table.vmxnet3_rq_rx_complete\00", align 1
@llvm.compiler.used = appending global [157 x ptr] [ptr @__UNIQUE_ID_author548, ptr @__UNIQUE_ID_description549, ptr @__UNIQUE_ID_file550, ptr @__UNIQUE_ID_license551, ptr @__UNIQUE_ID_version552, ptr @__exitcall_vmxnet3_exit_module, ptr @__initcall__kmod_vmxnet3__547_3997_vmxnet3_init_module6, ptr @__modver_attr, ptr @vmxnet3_acquire_msix_vectors._entry, ptr @vmxnet3_acquire_msix_vectors._entry.109, ptr @vmxnet3_acquire_msix_vectors._entry_ptr, ptr @vmxnet3_acquire_msix_vectors._entry_ptr.111, ptr @vmxnet3_alloc_intr_resources._entry, ptr @vmxnet3_alloc_intr_resources._entry.104, ptr @vmxnet3_alloc_intr_resources._entry_ptr, ptr @vmxnet3_alloc_intr_resources._entry_ptr.106, ptr @vmxnet3_alloc_pci_resources._entry, ptr @vmxnet3_alloc_pci_resources._entry.92, ptr @vmxnet3_alloc_pci_resources._entry.95, ptr @vmxnet3_alloc_pci_resources._entry.98, ptr @vmxnet3_alloc_pci_resources._entry_ptr, ptr @vmxnet3_alloc_pci_resources._entry_ptr.100, ptr @vmxnet3_alloc_pci_resources._entry_ptr.94, ptr @vmxnet3_alloc_pci_resources._entry_ptr.97, ptr @vmxnet3_init_module._entry, ptr @vmxnet3_init_module._entry_ptr, ptr @vmxnet3_probe_device._entry, ptr @vmxnet3_probe_device._entry.50, ptr @vmxnet3_probe_device._entry.53, ptr @vmxnet3_probe_device._entry.56, ptr @vmxnet3_probe_device._entry.60, ptr @vmxnet3_probe_device._entry.63, ptr @vmxnet3_probe_device._entry.67, ptr @vmxnet3_probe_device._entry.72, ptr @vmxnet3_probe_device._entry_ptr, ptr @vmxnet3_probe_device._entry_ptr.52, ptr @vmxnet3_probe_device._entry_ptr.55, ptr @vmxnet3_probe_device._entry_ptr.58, ptr @vmxnet3_probe_device._entry_ptr.62, ptr @vmxnet3_probe_device._entry_ptr.66, ptr @vmxnet3_probe_device._entry_ptr.68, ptr @vmxnet3_probe_device._entry_ptr.74, ptr @vmxnet3_process_events._entry, ptr @vmxnet3_process_events._entry.31, ptr @vmxnet3_process_events._entry_ptr, ptr @vmxnet3_process_events._entry_ptr.33, ptr @vmxnet3_request_irqs._entry, ptr @vmxnet3_request_irqs._entry_ptr, ptr @vmxnet3_rq_create_all._entry, ptr @vmxnet3_rq_create_all._entry_ptr, ptr @vmxnet3_rq_init_all._entry, ptr @vmxnet3_rq_init_all._entry_ptr, ptr @vmxnet3_driver_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @vmxnet3_driver, ptr @vmxnet3_pciid_table, ptr @vmxnet3_pm_ops, ptr @vmxnet3_probe_device.vmxnet3_netdev_ops, ptr @enable_mq, ptr @.str.47, ptr @.str.48, ptr @vmxnet3_probe_device.__key, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.65, ptr @.str.69, ptr @vmxnet3_probe_device.__key.70, ptr @.str.71, ptr @.str.73, ptr @vmxnet3_open.__key, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @vmxnet3_rq_rx_complete.rxprod_reg, ptr @.str.114, ptr @.str.115, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @switch.table.vmxnet3_rq_rx_complete], section "llvm.metadata"
@0 = internal global [127 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_driver_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_rq_init_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_request_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_process_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_process_events._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_pciid_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_probe_device.vmxnet3_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_mq to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_probe_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_probe_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_probe_device._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_probe_device._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_probe_device._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_probe_device._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_probe_device._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_probe_device._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_probe_device.__key.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_probe_device._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_rq_create_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_alloc_pci_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_alloc_pci_resources._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_alloc_pci_resources._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_alloc_pci_resources._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_alloc_intr_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_alloc_intr_resources._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_acquire_msix_vectors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_acquire_msix_vectors._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_rq_rx_complete.rxprod_reg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vmxnet3_rq_rx_complete to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vmxnet3_tq_destroy_all(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tx_queues = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06
  tail call fastcc void @vmxnet3_tq_destroy(ptr noundef %arrayidx, ptr noundef %adapter)
  %inc = add nuw i32 %i.06, 1
  %2 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues, align 16
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vmxnet3_tq_destroy(ptr nocapture noundef %tq, ptr nocapture noundef readonly %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %size = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %mul = shl i32 %5, 4
  %basePA = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3, i32 5
  %6 = ptrtoint ptr %basePA to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %basePA, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #11
  %8 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %tx_ring, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data_ring = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 5
  %9 = ptrtoint ptr %data_ring to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data_ring, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.end.if.end21_crit_edge, label %if.then9

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pdev10 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  %11 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %size13 = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %size13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size13, align 4
  %txdata_desc_size = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 12
  %15 = ptrtoint ptr %txdata_desc_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %txdata_desc_size, align 4
  %conv = zext i16 %16 to i32
  %mul14 = mul i32 %14, %conv
  %basePA18 = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %basePA18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %basePA18, align 4
  tail call void @dma_free_attrs(ptr noundef %dev11, i32 noundef %mul14, ptr noundef nonnull %10, i32 noundef %18, i32 noundef 0) #11
  %19 = ptrtoint ptr %data_ring to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %data_ring, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then9, %if.end.if.end21_crit_edge
  %comp_ring = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 6
  %20 = ptrtoint ptr %comp_ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %comp_ring, align 16
  %tobool23.not = icmp eq ptr %21, null
  br i1 %tobool23.not, label %if.end21.if.end36_crit_edge, label %if.then24

if.end21.if.end36_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %pdev25 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  %22 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev25, align 4
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %size28 = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %size28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size28, align 4
  %mul29 = shl i32 %25, 4
  %basePA33 = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 6, i32 5
  %26 = ptrtoint ptr %basePA33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %basePA33, align 16
  tail call void @dma_free_attrs(ptr noundef %dev26, i32 noundef %mul29, ptr noundef nonnull %21, i32 noundef %27, i32 noundef 0) #11
  %28 = ptrtoint ptr %comp_ring to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %comp_ring, align 16
  br label %if.end36

if.end36:                                         ; preds = %if.then24, %if.end21.if.end36_crit_edge
  %buf_info = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 4
  %29 = ptrtoint ptr %buf_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf_info, align 32
  tail call void @kfree(ptr noundef %30) #11
  %31 = ptrtoint ptr %buf_info to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %buf_info, align 32
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vmxnet3_rq_destroy_all(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rx_queues = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 16
  %0 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.06
  tail call fastcc void @vmxnet3_rq_destroy(ptr noundef %arrayidx, ptr noundef %adapter)
  %inc = add nuw i32 %i.06, 1
  %2 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rx_queues, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vmxnet3_rq_destroy(ptr nocapture noundef %rq, ptr nocapture noundef readonly %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 10, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc19_crit_edge, label %for.cond1.preheader

entry.for.inc19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc19

for.cond1.preheader:                              ; preds = %entry
  %size = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3120.not = icmp eq i32 %3, 0
  br i1 %cmp3120.not, label %for.cond1.preheader.for.inc19_crit_edge, label %for.cond1.preheader.do.body_crit_edge

for.cond1.preheader.do.body_crit_edge:            ; preds = %for.cond1.preheader
  br label %do.body

for.cond1.preheader.for.inc19_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc19

for.cond1:                                        ; preds = %do.body
  %inc = add nuw i32 %j.0121, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.cond1.for.inc19_crit_edge, label %for.cond1.do.body_crit_edge

for.cond1.do.body_crit_edge:                      ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.cond1.for.inc19_crit_edge:                    ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc19

do.body:                                          ; preds = %for.cond1.do.body_crit_edge, %for.cond1.preheader.do.body_crit_edge
  %j.0121 = phi i32 [ %inc, %for.cond1.do.body_crit_edge ], [ 0, %for.cond1.preheader.do.body_crit_edge ]
  %4 = getelementptr %struct.vmxnet3_rx_buf_info, ptr %1, i32 %j.0121, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %cmp8.not = icmp eq ptr %6, null
  br i1 %cmp8.not, label %for.cond1, label %do.body.do.body12_crit_edge, !prof !277

do.body.do.body12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

do.body12:                                        ; preds = %do.body.1.do.body12_crit_edge, %do.body.do.body12_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1722, 0\0A.popsection", ""() #11, !srcloc !278
  unreachable

for.inc19:                                        ; preds = %for.cond1.for.inc19_crit_edge, %for.cond1.preheader.for.inc19_crit_edge, %entry.for.inc19_crit_edge
  %arrayidx.1 = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %8, null
  br i1 %tobool.not.1, label %for.inc19.for.inc19.1_crit_edge, label %for.cond1.preheader.1

for.inc19.for.inc19.1_crit_edge:                  ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc19.1

for.cond1.preheader.1:                            ; preds = %for.inc19
  %size.1 = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 1, i32 1
  %9 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp3120.not.1 = icmp eq i32 %10, 0
  br i1 %cmp3120.not.1, label %for.cond1.preheader.1.for.inc19.1_crit_edge, label %for.cond1.preheader.1.do.body.1_crit_edge

for.cond1.preheader.1.do.body.1_crit_edge:        ; preds = %for.cond1.preheader.1
  br label %do.body.1

for.cond1.preheader.1.for.inc19.1_crit_edge:      ; preds = %for.cond1.preheader.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc19.1

do.body.1:                                        ; preds = %for.cond1.1.do.body.1_crit_edge, %for.cond1.preheader.1.do.body.1_crit_edge
  %j.0121.1 = phi i32 [ %inc.1, %for.cond1.1.do.body.1_crit_edge ], [ 0, %for.cond1.preheader.1.do.body.1_crit_edge ]
  %11 = getelementptr %struct.vmxnet3_rx_buf_info, ptr %8, i32 %j.0121.1, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %cmp8.not.1 = icmp eq ptr %13, null
  br i1 %cmp8.not.1, label %for.cond1.1, label %do.body.1.do.body12_crit_edge, !prof !277

do.body.1.do.body12_crit_edge:                    ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

for.cond1.1:                                      ; preds = %do.body.1
  %inc.1 = add nuw i32 %j.0121.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, %10
  br i1 %exitcond.1.not, label %for.cond1.1.for.inc19.1_crit_edge, label %for.cond1.1.do.body.1_crit_edge

for.cond1.1.do.body.1_crit_edge:                  ; preds = %for.cond1.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.1

for.cond1.1.for.inc19.1_crit_edge:                ; preds = %for.cond1.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc19.1

for.inc19.1:                                      ; preds = %for.cond1.1.for.inc19.1_crit_edge, %for.cond1.preheader.1.for.inc19.1_crit_edge, %for.inc19.for.inc19.1_crit_edge
  %pdev = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  %arrayidx26 = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 0
  %14 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx26, align 8
  %tobool27.not = icmp eq ptr %15, null
  br i1 %tobool27.not, label %for.inc19.1.for.inc41_crit_edge, label %if.then28

for.inc19.1.for.inc41_crit_edge:                  ; preds = %for.inc19.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc41

if.then28:                                        ; preds = %for.inc19.1
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %size31 = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 0, i32 1
  %18 = ptrtoint ptr %size31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size31, align 4
  %mul = shl i32 %19, 4
  %basePA = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 0, i32 5
  %20 = ptrtoint ptr %basePA to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %basePA, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef nonnull %15, i32 noundef %21, i32 noundef 0) #11
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx26, align 8
  br label %for.inc41

for.inc41:                                        ; preds = %if.then28, %for.inc19.1.for.inc41_crit_edge
  %arrayidx26.1 = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx26.1, align 8
  %tobool27.not.1 = icmp eq ptr %24, null
  br i1 %tobool27.not.1, label %for.inc41.for.inc41.1_crit_edge, label %if.then28.1

for.inc41.for.inc41.1_crit_edge:                  ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc41.1

if.then28.1:                                      ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 4
  %dev.1 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %size31.1 = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 1, i32 1
  %27 = ptrtoint ptr %size31.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size31.1, align 4
  %mul.1 = shl i32 %28, 4
  %basePA.1 = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 1, i32 5
  %29 = ptrtoint ptr %basePA.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %basePA.1, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.1, i32 noundef %mul.1, ptr noundef nonnull %24, i32 noundef %30, i32 noundef 0) #11
  %31 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx26.1, align 8
  br label %for.inc41.1

for.inc41.1:                                      ; preds = %if.then28.1, %for.inc41.for.inc41.1_crit_edge
  %data_ring = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 4
  %32 = ptrtoint ptr %data_ring to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data_ring, align 16
  %tobool45.not = icmp eq ptr %33, null
  br i1 %tobool45.not, label %for.inc41.1.if.end60_crit_edge, label %if.then46

for.inc41.1.if.end60_crit_edge:                   ; preds = %for.inc41.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then46:                                        ; preds = %for.inc41.1
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 4
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %size51 = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 0, i32 1
  %36 = ptrtoint ptr %size51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size51, align 4
  %desc_size = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 4, i32 2
  %38 = ptrtoint ptr %desc_size to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %desc_size, align 8
  %conv = zext i16 %39 to i32
  %mul53 = mul i32 %37, %conv
  %basePA57 = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %basePA57 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %basePA57, align 4
  tail call void @dma_free_attrs(ptr noundef %dev48, i32 noundef %mul53, ptr noundef nonnull %33, i32 noundef %41, i32 noundef 0) #11
  %42 = ptrtoint ptr %data_ring to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %data_ring, align 16
  br label %if.end60

if.end60:                                         ; preds = %if.then46, %for.inc41.1.if.end60_crit_edge
  %comp_ring = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 5
  %43 = ptrtoint ptr %comp_ring to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %comp_ring, align 4
  %tobool62.not = icmp eq ptr %44, null
  br i1 %tobool62.not, label %if.end60.if.end75_crit_edge, label %if.then63

if.end60.if.end75_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev, align 4
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %size67 = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %size67 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size67, align 4
  %mul68 = shl i32 %48, 4
  %basePA72 = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 5, i32 5
  %49 = ptrtoint ptr %basePA72 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %basePA72, align 4
  tail call void @dma_free_attrs(ptr noundef %dev65, i32 noundef %mul68, ptr noundef nonnull %44, i32 noundef %50, i32 noundef 0) #11
  %51 = ptrtoint ptr %comp_ring to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %comp_ring, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then63, %if.end60.if.end75_crit_edge
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %53) #11
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %arrayidx, align 4
  %55 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %arrayidx.1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vmxnet3_activate_dev(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vmxnet3_activate_dev.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vmxnet3_activate_dev, %if.then)) #11
          to label %do.end14 [label %if.then], !srcloc !279

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %netdev = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 16
  %skb_buf_size = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 18
  %2 = ptrtoint ptr %skb_buf_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %skb_buf_size, align 4
  %rx_buf_per_pkt = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 19
  %4 = ptrtoint ptr %rx_buf_per_pkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_buf_per_pkt, align 8
  %size = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %adapter, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %size7 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %size7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size7, align 4
  %size12 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 0, i32 3, i32 1, i32 1
  %10 = ptrtoint ptr %size12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @vmxnet3_activate_dev.__UNIQUE_ID_ddebug512, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #11
  br label %do.end14

do.end14:                                         ; preds = %if.then, %entry
  %num_tx_queues.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 17
  %12 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp5.not.i = icmp eq i32 %13, 0
  br i1 %cmp5.not.i, label %do.end14.vmxnet3_tq_init_all.exit_crit_edge, label %do.end14.for.body.i_crit_edge

do.end14.for.body.i_crit_edge:                    ; preds = %do.end14
  br label %for.body.i

do.end14.vmxnet3_tq_init_all.exit_crit_edge:      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_tq_init_all.exit

for.body.i:                                       ; preds = %vmxnet3_tq_init.exit.i.for.body.i_crit_edge, %do.end14.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %vmxnet3_tq_init.exit.i.for.body.i_crit_edge ], [ 0, %do.end14.for.body.i_crit_edge ]
  %tx_ring.i.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06.i, i32 3
  %14 = ptrtoint ptr %tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_ring.i.i, align 8
  %size.i.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06.i, i32 3, i32 1
  %16 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i.i, align 4
  %mul.i.i = shl i32 %17, 4
  %18 = call ptr @memset(ptr %15, i32 0, i32 %mul.i.i)
  %next2comp.i.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06.i, i32 3, i32 3
  %19 = ptrtoint ptr %next2comp.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %next2comp.i.i, align 4
  %next2fill.i.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06.i, i32 3, i32 2
  %20 = ptrtoint ptr %next2fill.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %next2fill.i.i, align 8
  %gen.i.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06.i, i32 3, i32 4
  %21 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %gen.i.i, align 8
  %data_ring.i.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06.i, i32 5
  %22 = ptrtoint ptr %data_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data_ring.i.i, align 4
  %size7.i.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06.i, i32 5, i32 1
  %24 = ptrtoint ptr %size7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size7.i.i, align 4
  %txdata_desc_size.i.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06.i, i32 12
  %26 = ptrtoint ptr %txdata_desc_size.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %txdata_desc_size.i.i, align 4
  %conv.i.i = zext i16 %27 to i32
  %mul8.i.i = mul i32 %25, %conv.i.i
  %28 = call ptr @memset(ptr %23, i32 0, i32 %mul8.i.i)
  %comp_ring.i.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06.i, i32 6
  %29 = ptrtoint ptr %comp_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %comp_ring.i.i, align 16
  %size11.i.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06.i, i32 6, i32 1
  %31 = ptrtoint ptr %size11.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size11.i.i, align 4
  %mul12.i.i = shl i32 %32, 4
  %33 = call ptr @memset(ptr %30, i32 0, i32 %mul12.i.i)
  %next2proc.i.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06.i, i32 6, i32 2
  %34 = ptrtoint ptr %next2proc.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %next2proc.i.i, align 8
  %gen15.i.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06.i, i32 6, i32 3
  %35 = ptrtoint ptr %gen15.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %gen15.i.i, align 4
  %buf_info.i.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06.i, i32 4
  %36 = ptrtoint ptr %buf_info.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf_info.i.i, align 32
  %38 = load i32, ptr %size.i.i, align 4
  %mul18.i.i = shl i32 %38, 4
  %39 = call ptr @memset(ptr %37, i32 0, i32 %mul18.i.i)
  %40 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp1.not.i.i = icmp eq i32 %40, 0
  br i1 %cmp1.not.i.i, label %for.body.i.vmxnet3_tq_init.exit.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.vmxnet3_tq_init.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_tq_init.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i_crit_edge ]
  %41 = ptrtoint ptr %buf_info.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buf_info.i.i, align 32
  %arrayidx.i.i = getelementptr %struct.vmxnet3_tx_buf_info, ptr %42, i32 %i.02.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %44 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %45
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.vmxnet3_tq_init.exit.i_crit_edge

for.body.i.i.vmxnet3_tq_init.exit.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_tq_init.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

vmxnet3_tq_init.exit.i:                           ; preds = %for.body.i.i.vmxnet3_tq_init.exit.i_crit_edge, %for.body.i.vmxnet3_tq_init.exit.i_crit_edge
  %inc.i = add nuw i32 %i.06.i, 1
  %46 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_tx_queues.i, align 16
  %cmp.i = icmp ult i32 %inc.i, %47
  br i1 %cmp.i, label %vmxnet3_tq_init.exit.i.for.body.i_crit_edge, label %vmxnet3_tq_init.exit.i.vmxnet3_tq_init_all.exit_crit_edge

vmxnet3_tq_init.exit.i.vmxnet3_tq_init_all.exit_crit_edge: ; preds = %vmxnet3_tq_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_tq_init_all.exit

vmxnet3_tq_init.exit.i.for.body.i_crit_edge:      ; preds = %vmxnet3_tq_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

vmxnet3_tq_init_all.exit:                         ; preds = %vmxnet3_tq_init.exit.i.vmxnet3_tq_init_all.exit_crit_edge, %do.end14.vmxnet3_tq_init_all.exit_crit_edge
  %num_rx_queues.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 16
  %48 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp15.not.i = icmp eq i32 %49, 0
  br i1 %cmp15.not.i, label %vmxnet3_tq_init_all.exit.if.end19_crit_edge, label %for.body.lr.ph.i

vmxnet3_tq_init_all.exit.if.end19_crit_edge:      ; preds = %vmxnet3_tq_init_all.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

for.body.lr.ph.i:                                 ; preds = %vmxnet3_tq_init_all.exit
  %rx_buf_per_pkt.i.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 19
  %skb_buf_size.i.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 18
  br label %for.body.i161

for.body.i161:                                    ; preds = %for.inc.i.for.body.i161_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i172, %for.inc.i.for.body.i161_crit_edge ]
  %arrayidx.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.016.i
  %size.i.i160 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.016.i, i32 3, i32 0, i32 1
  %50 = ptrtoint ptr %size.i.i160 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size.i.i160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp111.not.i.i = icmp eq i32 %51, 0
  br i1 %cmp111.not.i.i, label %for.body.i161.for.cond15.preheader.i.i_crit_edge, label %for.body.lr.ph.i.i

for.body.i161.for.cond15.preheader.i.i_crit_edge: ; preds = %for.body.i161
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond15.preheader.i.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i161
  %buf_info7.i.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.016.i, i32 10
  br label %for.body.i.i162

for.cond15.preheader.i.i:                         ; preds = %for.inc.i.i.for.cond15.preheader.i.i_crit_edge, %for.body.i161.for.cond15.preheader.i.i_crit_edge
  %size18.i.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.016.i, i32 3, i32 1, i32 1
  %52 = ptrtoint ptr %size18.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size18.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp19114.not.i.i = icmp eq i32 %53, 0
  br i1 %cmp19114.not.i.i, label %for.cond15.preheader.i.i.for.cond33.preheader.i.i_crit_edge, label %for.body21.lr.ph.i.i

for.cond15.preheader.i.i.for.cond33.preheader.i.i_crit_edge: ; preds = %for.cond15.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond33.preheader.i.i

for.body21.lr.ph.i.i:                             ; preds = %for.cond15.preheader.i.i
  %arrayidx23.i.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.016.i, i32 10, i32 1
  br label %for.body21.i.i

for.body.i.i162:                                  ; preds = %for.inc.i.i.for.body.i.i162_crit_edge, %for.body.lr.ph.i.i
  %i.0112.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i164, %for.inc.i.i.for.body.i.i162_crit_edge ]
  %54 = ptrtoint ptr %rx_buf_per_pkt.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_buf_per_pkt.i.i, align 8
  %rem.i.i = srem i32 %i.0112.i.i, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp1.i.i = icmp eq i32 %rem.i.i, 0
  %56 = ptrtoint ptr %buf_info7.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buf_info7.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.vmxnet3_rx_buf_info, ptr %57, i32 %i.0112.i.i
  br i1 %cmp1.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i.i162
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %arrayidx3.i.i, align 4
  %59 = ptrtoint ptr %skb_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %skb_buf_size.i.i, align 4
  %conv.i.i163 = trunc i32 %60 to i16
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i162
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %arrayidx3.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %conv.sink.i.i = phi i16 [ %conv.i.i163, %if.then.i.i ], [ 4096, %if.else.i.i ]
  %62 = ptrtoint ptr %buf_info7.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buf_info7.i.i, align 4
  %len.i.i = getelementptr %struct.vmxnet3_rx_buf_info, ptr %63, i32 %i.0112.i.i, i32 1
  %64 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.sink.i.i, ptr %len.i.i, align 4
  %inc.i.i164 = add nuw i32 %i.0112.i.i, 1
  %65 = ptrtoint ptr %size.i.i160 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size.i.i160, align 4
  %cmp.i.i165 = icmp ult i32 %inc.i.i164, %66
  br i1 %cmp.i.i165, label %for.inc.i.i.for.body.i.i162_crit_edge, label %for.inc.i.i.for.cond15.preheader.i.i_crit_edge

for.inc.i.i.for.cond15.preheader.i.i_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond15.preheader.i.i

for.inc.i.i.for.body.i.i162_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i162

for.cond33.preheader.i.i:                         ; preds = %for.body21.i.i.for.cond33.preheader.i.i_crit_edge, %for.cond15.preheader.i.i.for.cond33.preheader.i.i_crit_edge
  %arrayidx38.i.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.016.i, i32 3, i32 0
  %next2comp.i.i166 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.016.i, i32 3, i32 0, i32 3
  %67 = ptrtoint ptr %next2comp.i.i166 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %next2comp.i.i166, align 4
  %next2fill.i.i167 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.016.i, i32 3, i32 0, i32 2
  %68 = ptrtoint ptr %next2fill.i.i167 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %next2fill.i.i167, align 8
  %69 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx38.i.i, align 8
  %71 = ptrtoint ptr %size.i.i160 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %size.i.i160, align 4
  %mul.i.i168 = shl i32 %72, 4
  %73 = call ptr @memset(ptr %70, i32 0, i32 %mul.i.i168)
  %gen.i.i169 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.016.i, i32 3, i32 0, i32 4
  %74 = ptrtoint ptr %gen.i.i169 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %gen.i.i169, align 8
  %arrayidx38.1.i.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.016.i, i32 3, i32 1
  %next2comp.1.i.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.016.i, i32 3, i32 1, i32 3
  %75 = ptrtoint ptr %next2comp.1.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %next2comp.1.i.i, align 4
  %next2fill.1.i.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.016.i, i32 3, i32 1, i32 2
  %76 = ptrtoint ptr %next2fill.1.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %next2fill.1.i.i, align 8
  %77 = ptrtoint ptr %arrayidx38.1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx38.1.i.i, align 8
  %79 = ptrtoint ptr %size18.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size18.i.i, align 4
  %mul.1.i.i = shl i32 %80, 4
  %81 = call ptr @memset(ptr %78, i32 0, i32 %mul.1.i.i)
  %gen.1.i.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.016.i, i32 3, i32 1, i32 4
  %82 = ptrtoint ptr %gen.1.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %gen.1.i.i, align 8
  %83 = load i32, ptr %size.i.i160, align 4
  %sub.i.i = add i32 %83, -1
  %call.i.i = tail call fastcc i32 @vmxnet3_rq_alloc_rx_buf(ptr noundef %arrayidx.i, i32 noundef 0, i32 noundef %sub.i.i, ptr noundef %adapter) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp54.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp54.i.i, label %if.then17, label %for.inc.i

for.body21.i.i:                                   ; preds = %for.body21.i.i.for.body21.i.i_crit_edge, %for.body21.lr.ph.i.i
  %i.1115.i.i = phi i32 [ 0, %for.body21.lr.ph.i.i ], [ %inc31.i.i, %for.body21.i.i.for.body21.i.i_crit_edge ]
  %84 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx23.i.i, align 4
  %arrayidx24.i.i = getelementptr %struct.vmxnet3_rx_buf_info, ptr %85, i32 %i.1115.i.i
  %86 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 2, ptr %arrayidx24.i.i, align 4
  %87 = load ptr, ptr %arrayidx23.i.i, align 4
  %len29.i.i = getelementptr %struct.vmxnet3_rx_buf_info, ptr %87, i32 %i.1115.i.i, i32 1
  %88 = ptrtoint ptr %len29.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 4096, ptr %len29.i.i, align 4
  %inc31.i.i = add nuw i32 %i.1115.i.i, 1
  %89 = ptrtoint ptr %size18.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %size18.i.i, align 4
  %cmp19.i.i = icmp ult i32 %inc31.i.i, %90
  br i1 %cmp19.i.i, label %for.body21.i.i.for.body21.i.i_crit_edge, label %for.body21.i.i.for.cond33.preheader.i.i_crit_edge

for.body21.i.i.for.cond33.preheader.i.i_crit_edge: ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond33.preheader.i.i

for.body21.i.i.for.body21.i.i_crit_edge:          ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body21.i.i

for.inc.i:                                        ; preds = %for.cond33.preheader.i.i
  %91 = ptrtoint ptr %size18.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %size18.i.i, align 4
  %sub61.i.i = add i32 %92, -1
  %call62.i.i = tail call fastcc i32 @vmxnet3_rq_alloc_rx_buf(ptr noundef %arrayidx.i, i32 noundef 1, i32 noundef %sub61.i.i, ptr noundef %adapter) #11
  %comp_ring.i.i170 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.016.i, i32 5
  %next2proc.i.i171 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.016.i, i32 5, i32 2
  %93 = ptrtoint ptr %next2proc.i.i171 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %next2proc.i.i171, align 4
  %94 = ptrtoint ptr %comp_ring.i.i170 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %comp_ring.i.i170, align 4
  %size66.i.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.016.i, i32 5, i32 1
  %96 = ptrtoint ptr %size66.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %size66.i.i, align 4
  %mul67.i.i = shl i32 %97, 4
  %98 = call ptr @memset(ptr %95, i32 0, i32 %mul67.i.i)
  %gen69.i.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.016.i, i32 5, i32 3
  %99 = ptrtoint ptr %gen69.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %gen69.i.i, align 4
  %rx_ctx.i.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.016.i, i32 6
  %100 = ptrtoint ptr %rx_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %rx_ctx.i.i, align 16
  %inc.i172 = add nuw i32 %i.016.i, 1
  %101 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_rx_queues.i, align 4
  %cmp.i173 = icmp ult i32 %inc.i172, %102
  br i1 %cmp.i173, label %for.inc.i.for.body.i161_crit_edge, label %for.inc.i.if.end19_crit_edge

for.inc.i.if.end19_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

for.inc.i.for.body.i161_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i161

if.then17:                                        ; preds = %for.cond33.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %netdev.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %103 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %netdev.i, align 16
  %dev.i = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.11, ptr noundef %104, i32 noundef %i.016.i) #14
  %105 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %netdev.i, align 16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %106, ptr noundef nonnull @.str.4, i32 noundef -12) #14
  br label %rq_err

if.end19:                                         ; preds = %for.inc.i.if.end19_crit_edge, %vmxnet3_tq_init_all.exit.if.end19_crit_edge
  %intr1.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3
  %type.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 1
  %107 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %type.i, align 4
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values)
  switch i32 %108, label %if.else134.i [
    i32 3, label %for.cond.preheader.i
    i32 2, label %if.then127.i
  ]

for.cond.preheader.i:                             ; preds = %if.end19
  %110 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_tx_queues.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp3334.not.i = icmp eq i32 %111, 0
  br i1 %cmp3334.not.i, label %for.cond.preheader.i.for.end52.i_crit_edge, label %for.body.lr.ph.i176

for.cond.preheader.i.for.end52.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end52.i

for.body.lr.ph.i176:                              ; preds = %for.cond.preheader.i
  %share_intr.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 36
  %netdev.i175 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  br label %for.body.i177

for.body.i177:                                    ; preds = %if.else42.i.for.body.i177_crit_edge, %for.body.lr.ph.i176
  %vector.0336.i = phi i32 [ 0, %for.body.lr.ph.i176 ], [ %inc43.i, %if.else42.i.for.body.i177_crit_edge ]
  %112 = ptrtoint ptr %share_intr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %share_intr.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp4.not.i = icmp eq i32 %113, 0
  %arrayidx18.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %vector.0336.i
  %114 = ptrtoint ptr %netdev.i175 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %netdev.i175, align 16
  br i1 %cmp4.not.i, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %for.body.i177
  call void @__sanitizer_cov_trace_pc() #13
  %call24.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx18.i, ptr noundef nonnull @.str.22, ptr noundef %115, i32 noundef %vector.0336.i) #11
  br label %if.end31.i

if.end.i:                                         ; preds = %for.body.i177
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx18.i, ptr noundef nonnull @.str.21, ptr noundef %115, i32 noundef %vector.0336.i) #11
  %arrayidx8.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 6, i32 %vector.0336.i
  %116 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx8.i, align 4
  %call.i.i178 = tail call i32 @request_threaded_irq(i32 noundef %117, ptr noundef nonnull @vmxnet3_msix_tx, ptr noundef null, i32 noundef 0, ptr noundef %arrayidx18.i, ptr noundef %arrayidx18.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i178)
  %tobool.not.i = icmp eq i32 %call.i.i178, 0
  br i1 %tobool.not.i, label %if.end.i.if.end31.i_crit_edge, label %do.end.i180

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

do.end.i180:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %118 = ptrtoint ptr %netdev.i175 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %netdev.i175, align 16
  %dev.i179 = getelementptr inbounds %struct.net_device, ptr %119, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i179, ptr noundef nonnull @.str.23, ptr noundef %arrayidx18.i, i32 noundef %call.i.i178) #14
  br label %if.then22

if.end31.i:                                       ; preds = %if.end.i.if.end31.i_crit_edge, %if.end.thread.i
  %120 = ptrtoint ptr %share_intr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %share_intr.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %121)
  %cmp33.i = icmp eq i32 %121, 1
  br i1 %cmp33.i, label %for.cond35.preheader.i, label %if.else42.i

for.cond35.preheader.i:                           ; preds = %if.end31.i
  %122 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_tx_queues.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %vector.0336.i, i32 %123)
  %cmp37337.i = icmp ult i32 %vector.0336.i, %123
  br i1 %cmp37337.i, label %for.body38.lr.ph.i, label %for.cond35.preheader.i.for.end.i_crit_edge

for.cond35.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond35.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body38.lr.ph.i:                               ; preds = %for.cond35.preheader.i
  %conv.i = trunc i32 %vector.0336.i to i8
  br label %for.body38.i

for.body38.i:                                     ; preds = %for.body38.i.for.body38.i_crit_edge, %for.body38.lr.ph.i
  %i.1338.i = phi i32 [ %vector.0336.i, %for.body38.lr.ph.i ], [ %inc.i181, %for.body38.i.for.body38.i_crit_edge ]
  %intr_idx.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.1338.i, i32 6, i32 4
  %124 = ptrtoint ptr %intr_idx.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv.i, ptr %intr_idx.i, align 1
  %inc.i181 = add nuw i32 %i.1338.i, 1
  %exitcond.not = icmp eq i32 %inc.i181, %123
  br i1 %exitcond.not, label %for.body38.i.for.end.i_crit_edge, label %for.body38.i.for.body38.i_crit_edge

for.body38.i.for.body38.i_crit_edge:              ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body38.i

for.body38.i.for.end.i_crit_edge:                 ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body38.i.for.end.i_crit_edge, %for.cond35.preheader.i.for.end.i_crit_edge
  %inc41.i = add i32 %vector.0336.i, 1
  br label %for.end52.i

if.else42.i:                                      ; preds = %if.end31.i
  %inc43.i = add nuw i32 %vector.0336.i, 1
  %conv44.i = trunc i32 %vector.0336.i to i8
  %intr_idx48.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %vector.0336.i, i32 6, i32 4
  %125 = ptrtoint ptr %intr_idx48.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv44.i, ptr %intr_idx48.i, align 1
  %126 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %num_tx_queues.i, align 16
  %cmp3.i = icmp ult i32 %inc43.i, %127
  br i1 %cmp3.i, label %if.else42.i.for.body.i177_crit_edge, label %if.else42.i.for.end52.i_crit_edge

if.else42.i.for.end52.i_crit_edge:                ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end52.i

if.else42.i.for.body.i177_crit_edge:              ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i177

for.end52.i:                                      ; preds = %if.else42.i.for.end52.i_crit_edge, %for.end.i, %for.cond.preheader.i.for.end52.i_crit_edge
  %vector.1.i = phi i32 [ %inc41.i, %for.end.i ], [ 0, %for.cond.preheader.i.for.end52.i_crit_edge ], [ %inc43.i, %if.else42.i.for.end52.i_crit_edge ]
  %share_intr53.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 36
  %128 = ptrtoint ptr %share_intr53.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %share_intr53.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp54.i = icmp eq i32 %129, 0
  %spec.select.i = select i1 %cmp54.i, i32 0, i32 %vector.1.i
  %130 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp59339.not.i = icmp eq i32 %131, 0
  br i1 %cmp59339.not.i, label %for.end52.i.for.end109.i_crit_edge, label %for.body61.lr.ph.i

for.end52.i.for.end109.i_crit_edge:               ; preds = %for.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end109.i

for.body61.lr.ph.i:                               ; preds = %for.end52.i
  %netdev69.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  br label %for.body61.i

for.body61.i:                                     ; preds = %if.end100.i.for.body61.i_crit_edge, %for.body61.lr.ph.i
  %vector.3342.i = phi i32 [ %spec.select.i, %for.body61.lr.ph.i ], [ %inc101.i, %if.end100.i.for.body61.i_crit_edge ]
  %i.2340.i = phi i32 [ 0, %for.body61.lr.ph.i ], [ %inc108.i, %if.end100.i.for.body61.i_crit_edge ]
  %132 = ptrtoint ptr %share_intr53.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %share_intr53.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp63.not.i = icmp eq i32 %133, 0
  %arrayidx75.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.2340.i
  %134 = ptrtoint ptr %netdev69.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %netdev69.i, align 16
  %.str.22..str.25.i = select i1 %cmp63.not.i, ptr @.str.22, ptr @.str.25
  %call81.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx75.i, ptr noundef nonnull %.str.22..str.25.i, ptr noundef %135, i32 noundef %vector.3342.i) #11
  %arrayidx84.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 6, i32 %vector.3342.i
  %136 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx84.i, align 4
  %call.i321.i = tail call i32 @request_threaded_irq(i32 noundef %137, ptr noundef nonnull @vmxnet3_msix_rx, ptr noundef null, i32 noundef 0, ptr noundef %arrayidx75.i, ptr noundef %arrayidx75.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i321.i)
  %tobool93.not.i = icmp eq i32 %call.i321.i, 0
  br i1 %tobool93.not.i, label %if.end100.i, label %if.then94.i

if.then94.i:                                      ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %netdev69.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %netdev69.i, align 16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %139, ptr noundef nonnull @.str.23, ptr noundef %arrayidx75.i, i32 noundef %call.i321.i) #14
  br label %if.then22

if.end100.i:                                      ; preds = %for.body61.i
  %inc101.i = add i32 %vector.3342.i, 1
  %conv102.i = trunc i32 %vector.3342.i to i8
  %intr_idx106.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.2340.i, i32 5, i32 4
  %140 = ptrtoint ptr %intr_idx106.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv102.i, ptr %intr_idx106.i, align 1
  %inc108.i = add nuw i32 %i.2340.i, 1
  %141 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %num_rx_queues.i, align 4
  %cmp59.i = icmp ult i32 %inc108.i, %142
  br i1 %cmp59.i, label %if.end100.i.for.body61.i_crit_edge, label %if.end100.i.for.end109.i_crit_edge

if.end100.i.for.end109.i_crit_edge:               ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end109.i

if.end100.i.for.body61.i_crit_edge:               ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body61.i

for.end109.i:                                     ; preds = %if.end100.i.for.end109.i_crit_edge, %for.end52.i.for.end109.i_crit_edge
  %vector.3.lcssa.i = phi i32 [ %spec.select.i, %for.end52.i.for.end109.i_crit_edge ], [ %inc101.i, %if.end100.i.for.end109.i_crit_edge ]
  %event_msi_vector_name.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 5
  %netdev111.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %143 = ptrtoint ptr %netdev111.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %netdev111.i, align 16
  %call114.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %event_msi_vector_name.i, ptr noundef nonnull @.str.26, ptr noundef %144, i32 noundef %vector.3.lcssa.i) #11
  %arrayidx116.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 6, i32 %vector.3.lcssa.i
  %145 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx116.i, align 4
  %147 = ptrtoint ptr %netdev111.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %netdev111.i, align 16
  %call.i322.i = tail call i32 @request_threaded_irq(i32 noundef %146, ptr noundef nonnull @vmxnet3_msix_event, ptr noundef null, i32 noundef 0, ptr noundef %event_msi_vector_name.i, ptr noundef %148) #11
  %conv122.i = trunc i32 %vector.3.lcssa.i to i8
  %event_intr_idx.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 3
  %149 = ptrtoint ptr %event_intr_idx.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv122.i, ptr %event_intr_idx.i, align 1
  br label %if.end144.i

if.then127.i:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %150 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 1, ptr %num_rx_queues.i, align 4
  %pdev.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  %151 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 46
  %153 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %irq.i, align 4
  %netdev129.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %155 = ptrtoint ptr %netdev129.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %netdev129.i, align 16
  %call.i323.i = tail call i32 @request_threaded_irq(i32 noundef %154, ptr noundef nonnull @vmxnet3_intr, ptr noundef null, i32 noundef 0, ptr noundef %156, ptr noundef %156) #11
  br label %if.end144.i

if.else134.i:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %157 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %num_rx_queues.i, align 4
  %pdev136.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  %158 = ptrtoint ptr %pdev136.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pdev136.i, align 4
  %irq137.i = getelementptr inbounds %struct.pci_dev, ptr %159, i32 0, i32 46
  %160 = ptrtoint ptr %irq137.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %irq137.i, align 4
  %netdev138.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %162 = ptrtoint ptr %netdev138.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %netdev138.i, align 16
  %call.i324.i = tail call i32 @request_threaded_irq(i32 noundef %161, ptr noundef nonnull @vmxnet3_intr, ptr noundef null, i32 noundef 128, ptr noundef %163, ptr noundef %163) #11
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.else134.i, %if.then127.i, %for.end109.i
  %err.2.i = phi i32 [ %call.i322.i, %for.end109.i ], [ %call.i323.i, %if.then127.i ], [ %call.i324.i, %if.else134.i ]
  %vector.4.i = phi i32 [ %vector.3.lcssa.i, %for.end109.i ], [ 0, %if.then127.i ], [ 0, %if.else134.i ]
  %164 = trunc i32 %vector.4.i to i8
  %conv145.i = add i8 %164, 1
  %num_intrs.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 2
  %165 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv145.i, ptr %num_intrs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %tobool146.not.i = icmp eq i32 %err.2.i, 0
  br i1 %tobool146.not.i, label %for.cond151.preheader.i, label %if.then147.i

for.cond151.preheader.i:                          ; preds = %if.end144.i
  %166 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp153344.not.i = icmp eq i32 %167, 0
  br i1 %cmp153344.not.i, label %for.cond151.preheader.i.for.cond165.preheader.i_crit_edge, label %for.body155.lr.ph.i

for.cond151.preheader.i.for.cond165.preheader.i_crit_edge: ; preds = %for.cond151.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond165.preheader.i

for.body155.lr.ph.i:                              ; preds = %for.cond151.preheader.i
  %mul.i = shl i32 %167, 1
  br label %for.body155.i

if.then147.i:                                     ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #13
  %netdev148.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %168 = ptrtoint ptr %netdev148.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %netdev148.i, align 16
  %170 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %type.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %169, ptr noundef nonnull @.str.27, i32 noundef %171, i32 noundef %err.2.i) #14
  br label %if.then22

for.cond165.preheader.i:                          ; preds = %for.body155.i.for.cond165.preheader.i_crit_edge, %for.cond151.preheader.i.for.cond165.preheader.i_crit_edge
  %conv167.i = zext i8 %conv145.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv145.i)
  %cmp168346.not.i = icmp eq i8 %conv145.i, 0
  br i1 %cmp168346.not.i, label %for.cond165.preheader.i.for.end174.i_crit_edge, label %for.body170.preheader.i

for.cond165.preheader.i.for.end174.i_crit_edge:   ; preds = %for.cond165.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end174.i

for.body170.preheader.i:                          ; preds = %for.cond165.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  %uglygep.i = getelementptr i8, ptr %adapter, i32 25098
  %172 = call ptr @memset(ptr %uglygep.i, i32 8, i32 %conv167.i)
  br label %for.end174.i

for.body155.i:                                    ; preds = %for.body155.i.for.body155.i_crit_edge, %for.body155.lr.ph.i
  %i.3345.i = phi i32 [ 0, %for.body155.lr.ph.i ], [ %inc163.i, %for.body155.i.for.body155.i_crit_edge ]
  %qid.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.3345.i, i32 7
  %173 = ptrtoint ptr %qid.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %i.3345.i, ptr %qid.i, align 8
  %add159.i = add i32 %i.3345.i, %167
  %qid2.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.3345.i, i32 8
  %174 = ptrtoint ptr %qid2.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %add159.i, ptr %qid2.i, align 4
  %add161.i = add i32 %i.3345.i, %mul.i
  %dataRingQid.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.3345.i, i32 9
  %175 = ptrtoint ptr %dataRingQid.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %add161.i, ptr %dataRingQid.i, align 32
  %inc163.i = add nuw i32 %i.3345.i, 1
  %exitcond.not.i = icmp eq i32 %inc163.i, %167
  br i1 %exitcond.not.i, label %for.body155.i.for.cond165.preheader.i_crit_edge, label %for.body155.i.for.body155.i_crit_edge

for.body155.i.for.body155.i_crit_edge:            ; preds = %for.body155.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body155.i

for.body155.i.for.cond165.preheader.i_crit_edge:  ; preds = %for.body155.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond165.preheader.i

for.end174.i:                                     ; preds = %for.body170.preheader.i, %for.cond165.preheader.i.for.end174.i_crit_edge
  %176 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %177)
  %cmp177.not.i = icmp eq i32 %177, 3
  br i1 %cmp177.not.i, label %for.end174.i.if.end24_crit_edge, label %if.then179.i

for.end174.i.if.end24_crit_edge:                  ; preds = %for.end174.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then179.i:                                     ; preds = %for.end174.i
  %event_intr_idx181.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 3
  %178 = ptrtoint ptr %event_intr_idx181.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %event_intr_idx181.i, align 1
  %179 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %num_tx_queues.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp184349.not.i = icmp eq i32 %180, 0
  br i1 %cmp184349.not.i, label %if.then179.i.for.end193.i_crit_edge, label %if.then179.i.for.body186.i_crit_edge

if.then179.i.for.body186.i_crit_edge:             ; preds = %if.then179.i
  br label %for.body186.i

if.then179.i.for.end193.i_crit_edge:              ; preds = %if.then179.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end193.i

for.body186.i:                                    ; preds = %for.body186.i.for.body186.i_crit_edge, %if.then179.i.for.body186.i_crit_edge
  %i.5350.i = phi i32 [ %inc192.i, %for.body186.i.for.body186.i_crit_edge ], [ 0, %if.then179.i.for.body186.i_crit_edge ]
  %intr_idx190.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.5350.i, i32 6, i32 4
  %181 = ptrtoint ptr %intr_idx190.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %intr_idx190.i, align 1
  %inc192.i = add nuw i32 %i.5350.i, 1
  %exitcond357.not.i = icmp eq i32 %inc192.i, %180
  br i1 %exitcond357.not.i, label %for.body186.i.for.end193.i_crit_edge, label %for.body186.i.for.body186.i_crit_edge

for.body186.i.for.body186.i_crit_edge:            ; preds = %for.body186.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body186.i

for.body186.i.for.end193.i_crit_edge:             ; preds = %for.body186.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end193.i

for.end193.i:                                     ; preds = %for.body186.i.for.end193.i_crit_edge, %if.then179.i.for.end193.i_crit_edge
  %intr_idx197.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 0, i32 5, i32 4
  %182 = ptrtoint ptr %intr_idx197.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %intr_idx197.i, align 1
  br label %if.end24

if.then22:                                        ; preds = %if.then147.i, %if.then94.i, %do.end.i180
  %retval.0.i183.ph = phi i32 [ %err.2.i, %if.then147.i ], [ %call.i321.i, %if.then94.i ], [ %call.i.i178, %do.end.i180 ]
  %netdev23 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %183 = ptrtoint ptr %netdev23 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %netdev23, align 16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %184, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i183.ph) #14
  br label %rq_err

if.end24:                                         ; preds = %for.end193.i, %for.end174.i.if.end24_crit_edge
  %netdev199.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %185 = ptrtoint ptr %netdev199.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %netdev199.i, align 16
  %187 = ptrtoint ptr %intr1.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %intr1.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %186, ptr noundef nonnull @.str.28, i32 noundef %177, i32 noundef %188, i32 noundef %conv167.i) #14
  %shared1.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 5
  %189 = ptrtoint ptr %shared1.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %shared1.i, align 32
  %devRead2.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2
  %devReadExt3.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 6
  %191 = call ptr @memset(ptr %190, i32 0, i32 800)
  %192 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 -503398726, ptr %190, align 8
  %193 = ptrtoint ptr %devRead2.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 1537, ptr %devRead2.i, align 8
  %gos.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 0, i32 0, i32 1
  %194 = ptrtoint ptr %gos.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 83886080, ptr %gos.i, align 4
  %vmxnet3RevSpt.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 0, i32 0, i32 2
  %195 = ptrtoint ptr %vmxnet3RevSpt.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 16777216, ptr %vmxnet3RevSpt.i, align 8
  %uptVerSpt.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 0, i32 0, i32 3
  %196 = ptrtoint ptr %uptVerSpt.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 16777216, ptr %uptVerSpt.i, align 4
  %adapter_pa.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 39
  %197 = ptrtoint ptr %adapter_pa.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %adapter_pa.i, align 4
  %conv.i184 = zext i32 %198 to i64
  %199 = tail call i64 @llvm.bswap.i64(i64 %conv.i184) #11
  %ddPA.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 0, i32 2
  %200 = ptrtoint ptr %ddPA.i to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %199, ptr %ddPA.i, align 8
  %ddLen.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 0, i32 4
  %201 = ptrtoint ptr %ddLen.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 -2140864512, ptr %ddLen.i, align 8
  %202 = ptrtoint ptr %netdev199.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %netdev199.i, align 16
  %features.i = getelementptr inbounds %struct.net_device, ptr %203, i32 0, i32 23
  %204 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %features.i, align 16
  %and.i = and i64 %205, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i186 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i186, label %if.end24.if.end.i187_crit_edge, label %if.then.i

if.end24.if.end.i187_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i187

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %uptFeatures.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 0, i32 1
  %206 = ptrtoint ptr %uptFeatures.i to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %uptFeatures.i, align 8
  %or.i = or i64 %207, 72057594037927936
  store i64 %or.i, ptr %uptFeatures.i, align 8
  br label %if.end.i187

if.end.i187:                                      ; preds = %if.then.i, %if.end24.if.end.i187_crit_edge
  %208 = ptrtoint ptr %netdev199.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %netdev199.i, align 16
  %features26.i = getelementptr inbounds %struct.net_device, ptr %209, i32 0, i32 23
  %210 = ptrtoint ptr %features26.i to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %features26.i, align 16
  %and27.i = and i64 %211, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and27.i)
  %tobool28.not.i = icmp eq i64 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end.i187.if.end34.i_crit_edge, label %if.then29.i

if.end.i187.if.end34.i_crit_edge:                 ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

if.then29.i:                                      ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #13
  %uptFeatures31.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 0, i32 1
  %212 = ptrtoint ptr %uptFeatures31.i to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %uptFeatures31.i, align 8
  %or32.i = or i64 %213, 576460752303423488
  store i64 %or32.i, ptr %uptFeatures31.i, align 8
  %maxNumRxSG.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 0, i32 7
  %214 = ptrtoint ptr %maxNumRxSG.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 4608, ptr %maxNumRxSG.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then29.i, %if.end.i187.if.end34.i_crit_edge
  %215 = ptrtoint ptr %netdev199.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %netdev199.i, align 16
  %features36.i = getelementptr inbounds %struct.net_device, ptr %216, i32 0, i32 23
  %217 = ptrtoint ptr %features36.i to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %features36.i, align 16
  %and37.i = and i64 %218, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and37.i)
  %tobool38.not.i = icmp eq i64 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end34.i.if.end43.i_crit_edge, label %if.then39.i

if.end34.i.if.end43.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

if.then39.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  %uptFeatures41.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 0, i32 1
  %219 = ptrtoint ptr %uptFeatures41.i to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %uptFeatures41.i, align 8
  %or42.i = or i64 %220, 288230376151711744
  store i64 %or42.i, ptr %uptFeatures41.i, align 8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then39.i, %if.end34.i.if.end43.i_crit_edge
  %221 = ptrtoint ptr %netdev199.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %netdev199.i, align 16
  %features45.i = getelementptr inbounds %struct.net_device, ptr %222, i32 0, i32 23
  %223 = ptrtoint ptr %features45.i to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %features45.i, align 16
  %and46.i = and i64 %224, 201326592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and46.i)
  %tobool47.not.i = icmp eq i64 %and46.i, 0
  br i1 %tobool47.not.i, label %if.end43.i.if.end52.i_crit_edge, label %if.then48.i

if.end43.i.if.end52.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.i

if.then48.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  %uptFeatures50.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 0, i32 1
  %225 = ptrtoint ptr %uptFeatures50.i to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %uptFeatures50.i, align 8
  %or51.i = or i64 %226, 1152921504606846976
  store i64 %or51.i, ptr %uptFeatures50.i, align 8
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then48.i, %if.end43.i.if.end52.i_crit_edge
  %227 = ptrtoint ptr %netdev199.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %netdev199.i, align 16
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %228, i32 0, i32 20
  %229 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %mtu.i, align 4
  %231 = tail call i32 @llvm.bswap.i32(i32 %230) #11
  %mtu55.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 0, i32 6
  %232 = ptrtoint ptr %mtu55.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %231, ptr %mtu55.i, align 8
  %queue_desc_pa.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 21
  %233 = ptrtoint ptr %queue_desc_pa.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %queue_desc_pa.i, align 32
  %conv56.i = zext i32 %234 to i64
  %235 = tail call i64 @llvm.bswap.i64(i64 %conv56.i) #11
  %queueDescPA.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 0, i32 3
  %236 = ptrtoint ptr %queueDescPA.i to i32
  call void @__asan_store8_noabort(i32 %236)
  store i64 %235, ptr %queueDescPA.i, align 8
  %237 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %num_tx_queues.i, align 16
  %239 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %num_rx_queues.i, align 4
  %mul376.i = add i32 %240, %238
  %241 = tail call i32 @llvm.bswap.i32(i32 %mul376.i) #11
  %242 = lshr i32 %241, 8
  %queueDescLen.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 0, i32 5
  %243 = ptrtoint ptr %queueDescLen.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %242, ptr %queueDescLen.i, align 4
  %244 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %num_tx_queues.i, align 16
  %conv61.i = trunc i32 %245 to i8
  %numTxQueues.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 0, i32 8
  %246 = ptrtoint ptr %numTxQueues.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %conv61.i, ptr %numTxQueues.i, align 2
  %247 = load i32, ptr %num_tx_queues.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %cmp379.not.i = icmp eq i32 %247, 0
  br i1 %cmp379.not.i, label %if.end52.i.for.end.i195_crit_edge, label %for.body.lr.ph.i190

if.end52.i.for.end.i195_crit_edge:                ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i195

for.body.lr.ph.i190:                              ; preds = %if.end52.i
  %tqd_start.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 7
  br label %for.body.i191

for.body.i191:                                    ; preds = %do.end78.i.for.body.i191_crit_edge, %for.body.lr.ph.i190
  %i.0380.i = phi i32 [ 0, %for.body.lr.ph.i190 ], [ %inc.i193, %do.end78.i.for.body.i191_crit_edge ]
  %tx_ring.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0380.i, i32 3
  %248 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %tx_ring.i, align 8
  %cmp67.i = icmp eq ptr %249, null
  br i1 %cmp67.i, label %do.body72.i, label %do.end78.i, !prof !280

do.body72.i:                                      ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2528, 0\0A.popsection", ""() #11, !srcloc !281
  unreachable

do.end78.i:                                       ; preds = %for.body.i191
  %250 = ptrtoint ptr %tqd_start.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %tqd_start.i, align 8
  %conf.i = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %251, i32 %i.0380.i, i32 1
  %basePA.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0380.i, i32 3, i32 5
  %252 = ptrtoint ptr %basePA.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %basePA.i, align 4
  %conv81.i = zext i32 %253 to i64
  %254 = tail call i64 @llvm.bswap.i64(i64 %conv81.i) #11
  %255 = ptrtoint ptr %conf.i to i32
  call void @__asan_store8_noabort(i32 %255)
  store i64 %254, ptr %conf.i, align 8
  %basePA82.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0380.i, i32 5, i32 2
  %256 = ptrtoint ptr %basePA82.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %basePA82.i, align 4
  %conv83.i = zext i32 %257 to i64
  %258 = tail call i64 @llvm.bswap.i64(i64 %conv83.i) #11
  %dataRingBasePA.i = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %251, i32 %i.0380.i, i32 1, i32 1
  %259 = ptrtoint ptr %dataRingBasePA.i to i32
  call void @__asan_store8_noabort(i32 %259)
  store i64 %258, ptr %dataRingBasePA.i, align 8
  %basePA84.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0380.i, i32 6, i32 5
  %260 = ptrtoint ptr %basePA84.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %basePA84.i, align 16
  %conv85.i = zext i32 %261 to i64
  %262 = tail call i64 @llvm.bswap.i64(i64 %conv85.i) #11
  %compRingBasePA.i = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %251, i32 %i.0380.i, i32 1, i32 2
  %263 = ptrtoint ptr %compRingBasePA.i to i32
  call void @__asan_store8_noabort(i32 %263)
  store i64 %262, ptr %compRingBasePA.i, align 8
  %ddPA86.i = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %251, i32 %i.0380.i, i32 1, i32 3
  %264 = ptrtoint ptr %ddPA86.i to i32
  call void @__asan_store8_noabort(i32 %264)
  store i64 -1, ptr %ddPA86.i, align 8
  %size.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0380.i, i32 3, i32 1
  %265 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %size.i, align 4
  %267 = tail call i32 @llvm.bswap.i32(i32 %266) #11
  %txRingSize.i = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %251, i32 %i.0380.i, i32 1, i32 5
  %268 = ptrtoint ptr %txRingSize.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %267, ptr %txRingSize.i, align 8
  %size89.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0380.i, i32 5, i32 1
  %269 = ptrtoint ptr %size89.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %size89.i, align 4
  %271 = tail call i32 @llvm.bswap.i32(i32 %270) #11
  %dataRingSize.i = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %251, i32 %i.0380.i, i32 1, i32 6
  %272 = ptrtoint ptr %dataRingSize.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %271, ptr %dataRingSize.i, align 4
  %txDataRingDescSize.i = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %251, i32 %i.0380.i, i32 1, i32 11
  %273 = ptrtoint ptr %txDataRingDescSize.i to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 0, ptr %txDataRingDescSize.i, align 2
  %size93.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0380.i, i32 6, i32 1
  %274 = ptrtoint ptr %size93.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %size93.i, align 4
  %276 = tail call i32 @llvm.bswap.i32(i32 %275) #11
  %compRingSize.i = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %251, i32 %i.0380.i, i32 1, i32 7
  %277 = ptrtoint ptr %compRingSize.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %276, ptr %compRingSize.i, align 8
  %ddLen94.i = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %251, i32 %i.0380.i, i32 1, i32 8
  %278 = ptrtoint ptr %ddLen94.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 0, ptr %ddLen94.i, align 4
  %intr_idx.i192 = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0380.i, i32 6, i32 4
  %279 = ptrtoint ptr %intr_idx.i192 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %intr_idx.i192, align 1
  %intrIdx.i = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %251, i32 %i.0380.i, i32 1, i32 9
  %281 = ptrtoint ptr %intrIdx.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 %280, ptr %intrIdx.i, align 8
  %inc.i193 = add nuw i32 %i.0380.i, 1
  %282 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %num_tx_queues.i, align 16
  %cmp.i194 = icmp ult i32 %inc.i193, %283
  br i1 %cmp.i194, label %do.end78.i.for.body.i191_crit_edge, label %do.end78.i.for.end.i195_crit_edge

do.end78.i.for.end.i195_crit_edge:                ; preds = %do.end78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i195

do.end78.i.for.body.i191_crit_edge:               ; preds = %do.end78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i191

for.end.i195:                                     ; preds = %do.end78.i.for.end.i195_crit_edge, %if.end52.i.for.end.i195_crit_edge
  %284 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %num_rx_queues.i, align 4
  %conv97.i = trunc i32 %285 to i8
  %numRxQueues.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 0, i32 9
  %286 = ptrtoint ptr %numRxQueues.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 %conv97.i, ptr %numRxQueues.i, align 1
  %287 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %cmp101381.not.i = icmp eq i32 %287, 0
  br i1 %cmp101381.not.i, label %for.end.i195.for.end150.i_crit_edge, label %for.body103.lr.ph.i

for.end.i195.for.end150.i_crit_edge:              ; preds = %for.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end150.i

for.body103.lr.ph.i:                              ; preds = %for.end.i195
  %rqd_start.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 8
  %version138.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 13
  br label %for.body103.i

for.body103.i:                                    ; preds = %if.end147.i.for.body103.i_crit_edge, %for.body103.lr.ph.i
  %i.1382.i = phi i32 [ 0, %for.body103.lr.ph.i ], [ %inc149.i, %if.end147.i.for.body103.i_crit_edge ]
  %288 = ptrtoint ptr %rqd_start.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %rqd_start.i, align 4
  %conf106.i = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %289, i32 %i.1382.i, i32 1
  %rx_ring.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.1382.i, i32 3
  %basePA108.i = getelementptr inbounds %struct.vmxnet3_cmd_ring, ptr %rx_ring.i, i32 0, i32 5
  %290 = ptrtoint ptr %basePA108.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %basePA108.i, align 4
  %conv109.i = zext i32 %291 to i64
  %292 = tail call i64 @llvm.bswap.i64(i64 %conv109.i) #11
  %293 = ptrtoint ptr %conf106.i to i32
  call void @__asan_store8_noabort(i32 %293)
  store i64 %292, ptr %conf106.i, align 8
  %basePA113.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.1382.i, i32 3, i32 1, i32 5
  %294 = ptrtoint ptr %basePA113.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %basePA113.i, align 4
  %conv114.i = zext i32 %295 to i64
  %296 = tail call i64 @llvm.bswap.i64(i64 %conv114.i) #11
  %arrayidx116.i196 = getelementptr [2 x i64], ptr %conf106.i, i32 0, i32 1
  %297 = ptrtoint ptr %arrayidx116.i196 to i32
  call void @__asan_store8_noabort(i32 %297)
  store i64 %296, ptr %arrayidx116.i196, align 8
  %basePA118.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.1382.i, i32 5, i32 5
  %298 = ptrtoint ptr %basePA118.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %basePA118.i, align 4
  %conv119.i = zext i32 %299 to i64
  %300 = tail call i64 @llvm.bswap.i64(i64 %conv119.i) #11
  %compRingBasePA120.i = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %289, i32 %i.1382.i, i32 1, i32 1
  %301 = ptrtoint ptr %compRingBasePA120.i to i32
  call void @__asan_store8_noabort(i32 %301)
  store i64 %300, ptr %compRingBasePA120.i, align 8
  %ddPA121.i = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %289, i32 %i.1382.i, i32 1, i32 2
  %302 = ptrtoint ptr %ddPA121.i to i32
  call void @__asan_store8_noabort(i32 %302)
  store i64 -1, ptr %ddPA121.i, align 8
  %size124.i = getelementptr inbounds %struct.vmxnet3_cmd_ring, ptr %rx_ring.i, i32 0, i32 1
  %303 = ptrtoint ptr %size124.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %size124.i, align 4
  %305 = tail call i32 @llvm.bswap.i32(i32 %304) #11
  %rxRingSize.i = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %289, i32 %i.1382.i, i32 1, i32 4
  %306 = ptrtoint ptr %rxRingSize.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %rxRingSize.i, align 8
  %size128.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.1382.i, i32 3, i32 1, i32 1
  %307 = ptrtoint ptr %size128.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %size128.i, align 4
  %309 = tail call i32 @llvm.bswap.i32(i32 %308) #11
  %arrayidx130.i = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %289, i32 %i.1382.i, i32 1, i32 4, i32 1
  %310 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %309, ptr %arrayidx130.i, align 4
  %size132.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.1382.i, i32 5, i32 1
  %311 = ptrtoint ptr %size132.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %size132.i, align 4
  %313 = tail call i32 @llvm.bswap.i32(i32 %312) #11
  %compRingSize133.i = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %289, i32 %i.1382.i, i32 1, i32 5
  %314 = ptrtoint ptr %compRingSize133.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %313, ptr %compRingSize133.i, align 8
  %ddLen134.i = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %289, i32 %i.1382.i, i32 1, i32 6
  %315 = ptrtoint ptr %ddLen134.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 0, ptr %ddLen134.i, align 4
  %intr_idx136.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.1382.i, i32 5, i32 4
  %316 = ptrtoint ptr %intr_idx136.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %intr_idx136.i, align 1
  %intrIdx137.i = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %289, i32 %i.1382.i, i32 1, i32 7
  %318 = ptrtoint ptr %intrIdx137.i to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 %317, ptr %intrIdx137.i, align 8
  %319 = ptrtoint ptr %version138.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %version138.i, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %320)
  %cmp140.i = icmp ugt i8 %320, 2
  br i1 %cmp140.i, label %if.then142.i, label %for.body103.i.if.end147.i_crit_edge

for.body103.i.if.end147.i_crit_edge:              ; preds = %for.body103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147.i

if.then142.i:                                     ; preds = %for.body103.i
  call void @__sanitizer_cov_trace_pc() #13
  %basePA144.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.1382.i, i32 4, i32 1
  %321 = ptrtoint ptr %basePA144.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %basePA144.i, align 4
  %conv145.i197 = zext i32 %322 to i64
  %323 = tail call i64 @llvm.bswap.i64(i64 %conv145.i197) #11
  %rxDataRingBasePA.i = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %289, i32 %i.1382.i, i32 1, i32 3
  %324 = ptrtoint ptr %rxDataRingBasePA.i to i32
  call void @__asan_store8_noabort(i32 %324)
  store i64 %323, ptr %rxDataRingBasePA.i, align 8
  %desc_size.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.1382.i, i32 4, i32 2
  %325 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %desc_size.i, align 8
  %327 = tail call i16 @llvm.bswap.i16(i16 %326) #11
  %rxDataRingDescSize.i = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %289, i32 %i.1382.i, i32 1, i32 9
  %328 = ptrtoint ptr %rxDataRingDescSize.i to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 %327, ptr %rxDataRingDescSize.i, align 2
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.then142.i, %for.body103.i.if.end147.i_crit_edge
  %inc149.i = add nuw i32 %i.1382.i, 1
  %329 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %num_rx_queues.i, align 4
  %cmp101.i = icmp ult i32 %inc149.i, %330
  br i1 %cmp101.i, label %if.end147.i.for.body103.i_crit_edge, label %if.end147.i.for.end150.i_crit_edge

if.end147.i.for.end150.i_crit_edge:               ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end150.i

if.end147.i.for.body103.i_crit_edge:              ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body103.i

for.end150.i:                                     ; preds = %if.end147.i.for.end150.i_crit_edge, %for.end.i195.for.end150.i_crit_edge
  %rss_conf.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 14
  %331 = ptrtoint ptr %rss_conf.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %rss_conf.i, align 4
  %333 = call ptr @memset(ptr %332, i32 0, i32 176)
  %rss.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 15
  %334 = ptrtoint ptr %rss.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %rss.i, align 8, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %335)
  %tobool151.not.i = icmp eq i8 %335, 0
  br i1 %tobool151.not.i, label %for.end150.i.if.end176.i_crit_edge, label %if.then152.i

for.end150.i.if.end176.i_crit_edge:               ; preds = %for.end150.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176.i

if.then152.i:                                     ; preds = %for.end150.i
  %336 = ptrtoint ptr %rss_conf.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %rss_conf.i, align 4
  %uptFeatures155.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 0, i32 1
  %338 = ptrtoint ptr %uptFeatures155.i to i32
  call void @__asan_load8_noabort(i32 %338)
  %339 = load i64, ptr %uptFeatures155.i, align 8
  %or156.i = or i64 %339, 144115188075855872
  store i64 %or156.i, ptr %uptFeatures155.i, align 8
  %340 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %num_rx_queues.i, align 4
  %conv158.i = trunc i32 %341 to i8
  %342 = ptrtoint ptr %numRxQueues.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %conv158.i, ptr %numRxQueues.i, align 1
  %343 = ptrtoint ptr %337 to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 15, ptr %337, align 2
  %hashFunc.i = getelementptr inbounds %struct.UPT1_RSSConf, ptr %337, i32 0, i32 1
  %344 = ptrtoint ptr %hashFunc.i to i32
  call void @__asan_store2_noabort(i32 %344)
  store i16 1, ptr %hashFunc.i, align 2
  %hashKeySize.i = getelementptr inbounds %struct.UPT1_RSSConf, ptr %337, i32 0, i32 2
  %345 = ptrtoint ptr %hashKeySize.i to i32
  call void @__asan_store2_noabort(i32 %345)
  store i16 40, ptr %hashKeySize.i, align 2
  %indTableSize.i = getelementptr inbounds %struct.UPT1_RSSConf, ptr %337, i32 0, i32 3
  %346 = ptrtoint ptr %indTableSize.i to i32
  call void @__asan_store2_noabort(i32 %346)
  store i16 128, ptr %indTableSize.i, align 2
  %hashKey.i = getelementptr inbounds %struct.UPT1_RSSConf, ptr %337, i32 0, i32 4
  tail call void @netdev_rss_key_fill(ptr noundef %hashKey.i, i32 noundef 40) #11
  %347 = ptrtoint ptr %indTableSize.i to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %indTableSize.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %348)
  %cmp164385.not.i = icmp eq i16 %348, 0
  br i1 %cmp164385.not.i, label %if.then152.i.for.end172.i_crit_edge, label %if.then152.i.for.body166.i_crit_edge

if.then152.i.for.body166.i_crit_edge:             ; preds = %if.then152.i
  br label %for.body166.i

if.then152.i.for.end172.i_crit_edge:              ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end172.i

for.body166.i:                                    ; preds = %for.body166.i.for.body166.i_crit_edge, %if.then152.i.for.body166.i_crit_edge
  %i.2386.i = phi i32 [ %inc171.i, %for.body166.i.for.body166.i_crit_edge ], [ 0, %if.then152.i.for.body166.i_crit_edge ]
  %349 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %num_rx_queues.i, align 4
  %rem.i.i198 = urem i32 %i.2386.i, %350
  %conv168.i = trunc i32 %rem.i.i198 to i8
  %arrayidx169.i = getelementptr %struct.UPT1_RSSConf, ptr %337, i32 0, i32 5, i32 %i.2386.i
  %351 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 %conv168.i, ptr %arrayidx169.i, align 1
  %inc171.i = add nuw nsw i32 %i.2386.i, 1
  %352 = ptrtoint ptr %indTableSize.i to i32
  call void @__asan_load2_noabort(i32 %352)
  %353 = load i16, ptr %indTableSize.i, align 2
  %conv163.i = zext i16 %353 to i32
  %cmp164.i = icmp ult i32 %inc171.i, %conv163.i
  br i1 %cmp164.i, label %for.body166.i.for.body166.i_crit_edge, label %for.body166.i.for.end172.i_crit_edge

for.body166.i.for.end172.i_crit_edge:             ; preds = %for.body166.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end172.i

for.body166.i.for.body166.i_crit_edge:            ; preds = %for.body166.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body166.i

for.end172.i:                                     ; preds = %for.body166.i.for.end172.i_crit_edge, %if.then152.i.for.end172.i_crit_edge
  %rssConfDesc.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 3
  %354 = ptrtoint ptr %rssConfDesc.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 1, ptr %rssConfDesc.i, align 8
  %confLen.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 3, i32 1
  %355 = ptrtoint ptr %confLen.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 -1342177280, ptr %confLen.i, align 4
  %rss_conf_pa.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 41
  %356 = ptrtoint ptr %rss_conf_pa.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %rss_conf_pa.i, align 4
  %conv174.i = zext i32 %357 to i64
  %358 = tail call i64 @llvm.bswap.i64(i64 %conv174.i) #11
  %confPA.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 3, i32 2
  %359 = ptrtoint ptr %confPA.i to i32
  call void @__asan_store8_noabort(i32 %359)
  store i64 %358, ptr %confPA.i, align 8
  br label %if.end176.i

if.end176.i:                                      ; preds = %for.end172.i, %for.end150.i.if.end176.i_crit_edge
  %version177.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 13
  %360 = ptrtoint ptr %version177.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %version177.i, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %361)
  %cmp179.i = icmp ugt i8 %361, 5
  br i1 %cmp179.i, label %lor.lhs.false.i, label %if.end176.i.if.then182.i_crit_edge

if.end176.i.if.then182.i_crit_edge:               ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then182.i

lor.lhs.false.i:                                  ; preds = %if.end176.i
  %queuesExtEnabled.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 42
  %362 = ptrtoint ptr %queuesExtEnabled.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %queuesExtEnabled.i, align 8, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %363)
  %tobool181.not.i = icmp eq i8 %363, 0
  br i1 %tobool181.not.i, label %lor.lhs.false.i.if.then182.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then182.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then182.i

if.then182.i:                                     ; preds = %lor.lhs.false.i.if.then182.i_crit_edge, %if.end176.i.if.then182.i_crit_edge
  %364 = ptrtoint ptr %intr1.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %intr1.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %365)
  %cmp183.i = icmp eq i32 %365, 0
  %intrConf.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 1
  %frombool.i = zext i1 %cmp183.i to i8
  %366 = ptrtoint ptr %intrConf.i to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 %frombool.i, ptr %intrConf.i, align 8
  %367 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %num_intrs.i, align 8
  %numIntrs.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 1, i32 1
  %369 = ptrtoint ptr %numIntrs.i to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 %368, ptr %numIntrs.i, align 1
  %370 = load i8, ptr %num_intrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %370)
  %cmp191391.not.i = icmp eq i8 %370, 0
  br i1 %cmp191391.not.i, label %if.then182.i.for.end200.i_crit_edge, label %if.then182.i.for.body193.i_crit_edge

if.then182.i.for.body193.i_crit_edge:             ; preds = %if.then182.i
  br label %for.body193.i

if.then182.i.for.end200.i_crit_edge:              ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end200.i

for.body193.i:                                    ; preds = %for.body193.i.for.body193.i_crit_edge, %if.then182.i.for.body193.i_crit_edge
  %i.3392.i = phi i32 [ %inc199.i, %for.body193.i.for.body193.i_crit_edge ], [ 0, %if.then182.i.for.body193.i_crit_edge ]
  %arrayidx195.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 4, i32 %i.3392.i
  %371 = ptrtoint ptr %arrayidx195.i to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %arrayidx195.i, align 1
  %arrayidx197.i = getelementptr %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 1, i32 3, i32 %i.3392.i
  %373 = ptrtoint ptr %arrayidx197.i to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 %372, ptr %arrayidx197.i, align 1
  %inc199.i = add nuw nsw i32 %i.3392.i, 1
  %374 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %num_intrs.i, align 8
  %conv190.i = zext i8 %375 to i32
  %cmp191.i = icmp ult i32 %inc199.i, %conv190.i
  br i1 %cmp191.i, label %for.body193.i.for.body193.i_crit_edge, label %for.body193.i.for.end200.i_crit_edge

for.body193.i.for.end200.i_crit_edge:             ; preds = %for.body193.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end200.i

for.body193.i.for.body193.i_crit_edge:            ; preds = %for.body193.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body193.i

for.end200.i:                                     ; preds = %for.body193.i.for.end200.i_crit_edge, %if.then182.i.for.end200.i_crit_edge
  %event_intr_idx.i200 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 3
  %376 = ptrtoint ptr %event_intr_idx.i200 to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %event_intr_idx.i200, align 1
  %eventIntrIdx.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 1, i32 2
  %378 = ptrtoint ptr %eventIntrIdx.i to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 %377, ptr %eventIntrIdx.i, align 2
  %intrCtrl.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 1, i32 4
  br label %if.end238.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  %379 = ptrtoint ptr %intr1.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %intr1.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %380)
  %cmp207.i = icmp eq i32 %380, 0
  %conv209.i = zext i1 %cmp207.i to i8
  %381 = ptrtoint ptr %devReadExt3.i to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 %conv209.i, ptr %devReadExt3.i, align 4
  %382 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %num_intrs.i, align 8
  %numIntrs214.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 6, i32 0, i32 1
  %384 = ptrtoint ptr %numIntrs214.i to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 %383, ptr %numIntrs214.i, align 1
  %385 = load i8, ptr %num_intrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %385)
  %cmp219388.not.i = icmp eq i8 %385, 0
  br i1 %cmp219388.not.i, label %if.else.i.for.end230.i_crit_edge, label %if.else.i.for.body221.i_crit_edge

if.else.i.for.body221.i_crit_edge:                ; preds = %if.else.i
  br label %for.body221.i

if.else.i.for.end230.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end230.i

for.body221.i:                                    ; preds = %for.body221.i.for.body221.i_crit_edge, %if.else.i.for.body221.i_crit_edge
  %i.4389.i = phi i32 [ %inc229.i, %for.body221.i.for.body221.i_crit_edge ], [ 0, %if.else.i.for.body221.i_crit_edge ]
  %arrayidx224.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 4, i32 %i.4389.i
  %386 = ptrtoint ptr %arrayidx224.i to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %arrayidx224.i, align 1
  %arrayidx227.i = getelementptr %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 6, i32 0, i32 6, i32 %i.4389.i
  %388 = ptrtoint ptr %arrayidx227.i to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 %387, ptr %arrayidx227.i, align 1
  %inc229.i = add nuw nsw i32 %i.4389.i, 1
  %389 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %num_intrs.i, align 8
  %conv218.i = zext i8 %390 to i32
  %cmp219.i = icmp ult i32 %inc229.i, %conv218.i
  br i1 %cmp219.i, label %for.body221.i.for.body221.i_crit_edge, label %for.body221.i.for.end230.i_crit_edge

for.body221.i.for.end230.i_crit_edge:             ; preds = %for.body221.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end230.i

for.body221.i.for.body221.i_crit_edge:            ; preds = %for.body221.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body221.i

for.end230.i:                                     ; preds = %for.body221.i.for.end230.i_crit_edge, %if.else.i.for.end230.i_crit_edge
  %event_intr_idx232.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 3
  %391 = ptrtoint ptr %event_intr_idx232.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %event_intr_idx232.i, align 1
  %eventIntrIdx234.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 6, i32 0, i32 2
  %393 = ptrtoint ptr %eventIntrIdx234.i to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 %392, ptr %eventIntrIdx234.i, align 2
  %intrCtrl236.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 6, i32 0, i32 4
  br label %if.end238.i

if.end238.i:                                      ; preds = %for.end230.i, %for.end200.i
  %intrCtrl236.sink393.i = phi ptr [ %intrCtrl236.i, %for.end230.i ], [ %intrCtrl.i, %for.end200.i ]
  %394 = ptrtoint ptr %intrCtrl236.sink393.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %intrCtrl236.sink393.i, align 4
  %or237.i = or i32 %395, 16777216
  store i32 %or237.i, ptr %intrCtrl236.sink393.i, align 4
  %rxFilterConf.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %190, i32 0, i32 2, i32 2
  %396 = ptrtoint ptr %rxFilterConf.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 0, ptr %rxFilterConf.i, align 8
  %397 = ptrtoint ptr %shared1.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %shared1.i, align 32
  %vfTable1.i.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %398, i32 0, i32 2, i32 2, i32 4
  %399 = ptrtoint ptr %vfTable1.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %vfTable1.i.i, align 4
  %or.i.i = or i32 %400, 1
  store i32 %or.i.i, ptr %vfTable1.i.i, align 4
  %active_vlans.i.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 2
  %call.i.i201 = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i.i, i32 noundef 4096, i32 noundef 0) #11
  %conv320.i.i = and i32 %call.i.i201, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv320.i.i)
  %cmp21.i.i = icmp ult i32 %conv320.i.i, 4096
  br i1 %cmp21.i.i, label %if.end238.i.for.body.i.i203_crit_edge, label %if.end238.i.vmxnet3_setup_driver_shared.exit_crit_edge

if.end238.i.vmxnet3_setup_driver_shared.exit_crit_edge: ; preds = %if.end238.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_setup_driver_shared.exit

if.end238.i.for.body.i.i203_crit_edge:            ; preds = %if.end238.i
  br label %for.body.i.i203

for.body.i.i203:                                  ; preds = %for.body.i.i203.for.body.i.i203_crit_edge, %if.end238.i.for.body.i.i203_crit_edge
  %conv323.i.i = phi i32 [ %conv3.i.i, %for.body.i.i203.for.body.i.i203_crit_edge ], [ %conv320.i.i, %if.end238.i.for.body.i.i203_crit_edge ]
  %vid.0.in22.i.i = phi i32 [ %call12.i.i, %for.body.i.i203.for.body.i.i203_crit_edge ], [ %call.i.i201, %if.end238.i.for.body.i.i203_crit_edge ]
  %and.i.i = and i32 %vid.0.in22.i.i, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  %401 = lshr i32 %conv323.i.i, 5
  %arrayidx7.i.i = getelementptr i32, ptr %vfTable1.i.i, i32 %401
  %402 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %shl.i.i, %403
  store i32 %or8.i.i, ptr %arrayidx7.i.i, align 4
  %add.i.i = add nuw nsw i32 %conv323.i.i, 1
  %call12.i.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i.i, i32 noundef 4096, i32 noundef %add.i.i) #11
  %conv3.i.i = and i32 %call12.i.i, 65535
  %cmp.i.i202 = icmp ult i32 %conv3.i.i, 4096
  br i1 %cmp.i.i202, label %for.body.i.i203.for.body.i.i203_crit_edge, label %for.body.i.i203.vmxnet3_setup_driver_shared.exit_crit_edge

for.body.i.i203.vmxnet3_setup_driver_shared.exit_crit_edge: ; preds = %for.body.i.i203
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_setup_driver_shared.exit

for.body.i.i203.for.body.i.i203_crit_edge:        ; preds = %for.body.i.i203
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i203

vmxnet3_setup_driver_shared.exit:                 ; preds = %for.body.i.i203.vmxnet3_setup_driver_shared.exit_crit_edge, %if.end238.i.vmxnet3_setup_driver_shared.exit_crit_edge
  %404 = ptrtoint ptr %netdev199.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %netdev199.i, align 16
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %405, i32 0, i32 86
  %406 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %dev_addr.i, align 64
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %407, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  tail call void @arm_heavy_mb() #11
  %410 = tail call i32 @llvm.bswap.i32(i32 %409) #11
  %hw_addr1.i.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 12
  %411 = ptrtoint ptr %hw_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %hw_addr1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %412, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %410) #11, !srcloc !284
  %arrayidx.i.i204 = getelementptr i8, ptr %407, i32 5
  %413 = ptrtoint ptr %arrayidx.i.i204 to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %arrayidx.i.i204, align 1
  %conv.i.i205 = zext i8 %414 to i32
  %shl.i377.i = shl nuw nsw i32 %conv.i.i205, 8
  %arrayidx1.i.i = getelementptr i8, ptr %407, i32 4
  %415 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %416 to i32
  %or.i378.i = or i32 %shl.i377.i, %conv2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !285
  tail call void @arm_heavy_mb() #11
  %417 = tail call i32 @llvm.bswap.i32(i32 %or.i378.i) #11
  %418 = ptrtoint ptr %hw_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %hw_addr1.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %419, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %417) #11, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !286
  tail call void @arm_heavy_mb() #11
  %shared_pa = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 20
  %420 = ptrtoint ptr %shared_pa to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %shared_pa, align 4
  %422 = tail call i32 @llvm.bswap.i32(i32 %421)
  %423 = ptrtoint ptr %hw_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %hw_addr1.i.i, align 4
  %add.ptr = getelementptr i8, ptr %424, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %422) #11, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !287
  tail call void @arm_heavy_mb() #11
  %425 = ptrtoint ptr %hw_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %hw_addr1.i.i, align 4
  %add.ptr34 = getelementptr i8, ptr %426, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 0) #11, !srcloc !284
  %cmd_lock = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 4
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !288
  tail call void @arm_heavy_mb() #11
  %427 = ptrtoint ptr %hw_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %hw_addr1.i.i, align 4
  %add.ptr49 = getelementptr i8, ptr %428, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 65226) #11, !srcloc !284
  %429 = ptrtoint ptr %hw_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %hw_addr1.i.i, align 4
  %add.ptr51 = getelementptr i8, ptr %430, i32 32
  %431 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #11, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !290
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %431)
  %cmp56.not = icmp eq i32 %431, 0
  br i1 %cmp56.not, label %if.end60, label %if.then58

if.then58:                                        ; preds = %vmxnet3_setup_driver_shared.exit
  call void @__sanitizer_cov_trace_pc() #13
  %432 = tail call i32 @llvm.bswap.i32(i32 %431)
  %433 = ptrtoint ptr %netdev199.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %netdev199.i, align 16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %434, ptr noundef nonnull @.str.6, i32 noundef %432) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !291
  tail call void @arm_heavy_mb() #11
  %435 = ptrtoint ptr %hw_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %hw_addr1.i.i, align 4
  %add.ptr99 = getelementptr i8, ptr %436, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 0) #11, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !292
  tail call void @arm_heavy_mb() #11
  %437 = ptrtoint ptr %hw_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %hw_addr1.i.i, align 4
  %add.ptr104 = getelementptr i8, ptr %438, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 0) #11, !srcloc !284
  tail call fastcc void @vmxnet3_free_irqs(ptr noundef %adapter)
  br label %rq_err

if.end60:                                         ; preds = %vmxnet3_setup_driver_shared.exit
  %439 = ptrtoint ptr %version177.i to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %version177.i, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %440)
  %cmp.i206 = icmp ugt i8 %440, 2
  br i1 %cmp.i206, label %do.body3.i, label %if.end60.vmxnet3_init_rssfields.exit_crit_edge

if.end60.vmxnet3_init_rssfields.exit_crit_edge:   ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_init_rssfields.exit

do.body3.i:                                       ; preds = %if.end60
  %441 = ptrtoint ptr %shared1.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %shared1.i, align 32
  %cu.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %442, i32 0, i32 5
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #11
  %443 = ptrtoint ptr %cu.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 1, ptr %cu.i, align 8
  %confLen.i208 = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %442, i32 0, i32 5, i32 0, i32 0, i32 1
  %444 = ptrtoint ptr %confLen.i208 to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 268435456, ptr %confLen.i208, align 4
  %coal_conf_pa.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 22
  %445 = ptrtoint ptr %coal_conf_pa.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %coal_conf_pa.i, align 4
  %conv9.i = zext i32 %446 to i64
  %447 = tail call i64 @llvm.bswap.i64(i64 %conv9.i) #11
  %confPA.i209 = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %442, i32 0, i32 5, i32 0, i32 0, i32 2
  %448 = ptrtoint ptr %confPA.i209 to i32
  call void @__asan_store8_noabort(i32 %448)
  store i64 %447, ptr %confPA.i209, align 8
  %default_coal_mode.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 38
  %449 = ptrtoint ptr %default_coal_mode.i to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %default_coal_mode.i, align 8, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %450)
  %tobool.not.i210 = icmp eq i8 %450, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %451 = ptrtoint ptr %hw_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %hw_addr1.i.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %452, i32 32
  br i1 %tobool.not.i210, label %do.body14.i, label %do.body11.i

do.body11.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 184552944) #11, !srcloc !284
  br label %vmxnet3_init_coalesce.exit

do.body14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 234946250) #11, !srcloc !284
  br label %vmxnet3_init_coalesce.exit

vmxnet3_init_coalesce.exit:                       ; preds = %do.body14.i, %do.body11.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call6.i) #11
  %453 = ptrtoint ptr %version177.i to i32
  call void @__asan_load1_noabort(i32 %453)
  %.pr = load i8, ptr %version177.i, align 64
  %454 = ptrtoint ptr %shared1.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %shared1.i, align 32
  %cu.i212 = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %455, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr)
  %cmp.i214 = icmp ugt i8 %.pr, 3
  br i1 %cmp.i214, label %do.body3.i218, label %vmxnet3_init_coalesce.exit.vmxnet3_init_rssfields.exit_crit_edge

vmxnet3_init_coalesce.exit.vmxnet3_init_rssfields.exit_crit_edge: ; preds = %vmxnet3_init_coalesce.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_init_rssfields.exit

do.body3.i218:                                    ; preds = %vmxnet3_init_coalesce.exit
  %call6.i216 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #11
  %default_rss_fields.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 32
  %456 = ptrtoint ptr %default_rss_fields.i to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %default_rss_fields.i, align 1, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %457)
  %tobool.not.i217 = icmp eq i8 %457, 0
  br i1 %tobool.not.i217, label %if.else.i219, label %do.body10.i

do.body10.i:                                      ; preds = %do.body3.i218
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !293
  tail call void @arm_heavy_mb() #11
  %458 = ptrtoint ptr %hw_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %hw_addr1.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %459, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 201330160) #11, !srcloc !284
  %460 = ptrtoint ptr %hw_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %hw_addr1.i.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %461, i32 32
  %462 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #11, !srcloc !289
  %463 = tail call i32 @llvm.bswap.i32(i32 %462) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !294
  %rss_fields.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 33
  %464 = ptrtoint ptr %rss_fields.i to i32
  call void @__asan_store4_noabort(i32 %464)
  store i32 %463, ptr %rss_fields.i, align 4
  br label %if.end37.i

if.else.i219:                                     ; preds = %do.body3.i218
  call void @__sanitizer_cov_trace_pc() #13
  %rss_fields18.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 33
  %465 = ptrtoint ptr %rss_fields18.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %rss_fields18.i, align 4
  %467 = ptrtoint ptr %cu.i212 to i32
  call void @__asan_store4_noabort(i32 %467)
  store i32 %466, ptr %cu.i212, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !295
  tail call void @arm_heavy_mb() #11
  %468 = ptrtoint ptr %hw_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %hw_addr1.i.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %469, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 268500682) #11, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !296
  tail call void @arm_heavy_mb() #11
  %470 = ptrtoint ptr %hw_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %hw_addr1.i.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %471, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 201330160) #11, !srcloc !284
  %472 = ptrtoint ptr %hw_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %hw_addr1.i.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %473, i32 32
  %474 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i) #11, !srcloc !289
  %475 = tail call i32 @llvm.bswap.i32(i32 %474) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !297
  %476 = ptrtoint ptr %rss_fields18.i to i32
  call void @__asan_store4_noabort(i32 %476)
  store i32 %475, ptr %rss_fields18.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else.i219, %do.body10.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call6.i216) #11
  br label %vmxnet3_init_rssfields.exit

vmxnet3_init_rssfields.exit:                      ; preds = %if.end37.i, %vmxnet3_init_coalesce.exit.vmxnet3_init_rssfields.exit_crit_edge, %if.end60.vmxnet3_init_rssfields.exit_crit_edge
  %477 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %478)
  %cmp61263.not = icmp eq i32 %478, 0
  br i1 %cmp61263.not, label %vmxnet3_init_rssfields.exit.for.end_crit_edge, label %do.body63.lr.ph

vmxnet3_init_rssfields.exit.for.end_crit_edge:    ; preds = %vmxnet3_init_rssfields.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body63.lr.ph:                                  ; preds = %vmxnet3_init_rssfields.exit
  %hw_addr0 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 11
  br label %do.body63

do.body63:                                        ; preds = %do.body63.do.body63_crit_edge, %do.body63.lr.ph
  %i.0264 = phi i32 [ 0, %do.body63.lr.ph ], [ %inc, %do.body63.do.body63_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !298
  tail call void @arm_heavy_mb() #11
  %next2fill = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.0264, i32 3, i32 0, i32 2
  %479 = ptrtoint ptr %next2fill to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %next2fill, align 8
  %481 = tail call i32 @llvm.bswap.i32(i32 %480)
  %482 = ptrtoint ptr %hw_addr0 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %hw_addr0, align 8
  %mul = shl i32 %i.0264, 3
  %add = add i32 %mul, 2048
  %add.ptr70 = getelementptr i8, ptr %483, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %481) #11, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !299
  tail call void @arm_heavy_mb() #11
  %next2fill78 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.0264, i32 3, i32 1, i32 2
  %484 = ptrtoint ptr %next2fill78 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %next2fill78, align 8
  %486 = tail call i32 @llvm.bswap.i32(i32 %485)
  %487 = ptrtoint ptr %hw_addr0 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %hw_addr0, align 8
  %add81 = add i32 %mul, 2560
  %add.ptr82 = getelementptr i8, ptr %488, i32 %add81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %486) #11, !srcloc !284
  %inc = add nuw i32 %i.0264, 1
  %489 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %num_rx_queues.i, align 4
  %cmp61 = icmp ult i32 %inc, %490
  br i1 %cmp61, label %do.body63.do.body63_crit_edge, label %do.body63.for.end_crit_edge

do.body63.for.end_crit_edge:                      ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body63.do.body63_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body63

for.end:                                          ; preds = %do.body63.for.end_crit_edge, %vmxnet3_init_rssfields.exit.for.end_crit_edge
  %491 = ptrtoint ptr %netdev199.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %netdev199.i, align 16
  tail call void @vmxnet3_set_mc(ptr noundef %492)
  tail call fastcc void @vmxnet3_check_link(ptr noundef %adapter, i1 noundef zeroext true)
  %493 = ptrtoint ptr %netdev199.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %netdev199.i, align 16
  %num_tx_queues.i220 = getelementptr inbounds %struct.net_device, ptr %494, i32 0, i32 104
  %495 = ptrtoint ptr %num_tx_queues.i220 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %num_tx_queues.i220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %496)
  %cmp4.not.i221 = icmp eq i32 %496, 0
  br i1 %cmp4.not.i221, label %for.end.netif_tx_wake_all_queues.exit_crit_edge, label %for.body.lr.ph.i222

for.end.netif_tx_wake_all_queues.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_tx_wake_all_queues.exit

for.body.lr.ph.i222:                              ; preds = %for.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %494, i32 0, i32 103
  br label %for.body.i226

for.body.i226:                                    ; preds = %for.body.i226.for.body.i226_crit_edge, %for.body.lr.ph.i222
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i222 ], [ %inc.i224, %for.body.i226.for.body.i226_crit_edge ]
  %497 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i223 = getelementptr %struct.netdev_queue, ptr %498, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i223) #11
  %inc.i224 = add nuw i32 %i.05.i, 1
  %499 = ptrtoint ptr %num_tx_queues.i220 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %num_tx_queues.i220, align 4
  %cmp.i225 = icmp ult i32 %inc.i224, %500
  br i1 %cmp.i225, label %for.body.i226.for.body.i226_crit_edge, label %for.body.i226.netif_tx_wake_all_queues.exit_crit_edge

for.body.i226.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %for.body.i226
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_tx_wake_all_queues.exit

for.body.i226.for.body.i226_crit_edge:            ; preds = %for.body.i226
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i226

netif_tx_wake_all_queues.exit:                    ; preds = %for.body.i226.netif_tx_wake_all_queues.exit_crit_edge, %for.end.netif_tx_wake_all_queues.exit_crit_edge
  %501 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %502)
  %cmp87265.not = icmp eq i32 %502, 0
  br i1 %cmp87265.not, label %netif_tx_wake_all_queues.exit.for.end94_crit_edge, label %netif_tx_wake_all_queues.exit.for.body89_crit_edge

netif_tx_wake_all_queues.exit.for.body89_crit_edge: ; preds = %netif_tx_wake_all_queues.exit
  br label %for.body89

netif_tx_wake_all_queues.exit.for.end94_crit_edge: ; preds = %netif_tx_wake_all_queues.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end94

for.body89:                                       ; preds = %for.body89.for.body89_crit_edge, %netif_tx_wake_all_queues.exit.for.body89_crit_edge
  %i.1266 = phi i32 [ %inc93, %for.body89.for.body89_crit_edge ], [ 0, %netif_tx_wake_all_queues.exit.for.body89_crit_edge ]
  %napi = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.1266, i32 2
  tail call void @napi_enable(ptr noundef %napi) #11
  %inc93 = add nuw i32 %i.1266, 1
  %503 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %num_rx_queues.i, align 4
  %cmp87 = icmp ult i32 %inc93, %504
  br i1 %cmp87, label %for.body89.for.body89_crit_edge, label %for.body89.for.end94_crit_edge

for.body89.for.end94_crit_edge:                   ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end94

for.body89.for.body89_crit_edge:                  ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body89

for.end94:                                        ; preds = %for.body89.for.end94_crit_edge, %netif_tx_wake_all_queues.exit.for.end94_crit_edge
  %505 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %num_intrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %506)
  %cmp7.not.i = icmp eq i8 %506, 0
  br i1 %cmp7.not.i, label %for.end94.vmxnet3_enable_all_intrs.exit_crit_edge, label %for.body.lr.ph.i229

for.end94.vmxnet3_enable_all_intrs.exit_crit_edge: ; preds = %for.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_enable_all_intrs.exit

for.body.lr.ph.i229:                              ; preds = %for.end94
  %hw_addr0.i.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 11
  br label %for.body.i235

for.body.i235:                                    ; preds = %for.body.i235.for.body.i235_crit_edge, %for.body.lr.ph.i229
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i229 ], [ %inc.i232, %for.body.i235.for.body.i235_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  tail call void @arm_heavy_mb() #11
  %507 = ptrtoint ptr %hw_addr0.i.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %hw_addr0.i.i, align 8
  %mul.i.i230 = shl i32 %i.08.i, 3
  %add.ptr.i.i231 = getelementptr i8, ptr %508, i32 %mul.i.i230
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i231, i32 0) #11, !srcloc !284
  %inc.i232 = add nuw nsw i32 %i.08.i, 1
  %509 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %num_intrs.i, align 8
  %conv.i233 = zext i8 %510 to i32
  %cmp.i234 = icmp ult i32 %inc.i232, %conv.i233
  br i1 %cmp.i234, label %for.body.i235.for.body.i235_crit_edge, label %for.body.i235.vmxnet3_enable_all_intrs.exit_crit_edge

for.body.i235.vmxnet3_enable_all_intrs.exit_crit_edge: ; preds = %for.body.i235
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_enable_all_intrs.exit

for.body.i235.for.body.i235_crit_edge:            ; preds = %for.body.i235
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i235

vmxnet3_enable_all_intrs.exit:                    ; preds = %for.body.i235.vmxnet3_enable_all_intrs.exit_crit_edge, %for.end94.vmxnet3_enable_all_intrs.exit_crit_edge
  %511 = ptrtoint ptr %shared1.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %shared1.i, align 32
  %intrCtrl.i236 = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %512, i32 0, i32 2, i32 1, i32 4
  %513 = ptrtoint ptr %intrCtrl.i236 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %intrCtrl.i236, align 4
  %and.i237 = and i32 %514, -16777217
  store i32 %and.i237, ptr %intrCtrl.i236, align 4
  %state = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 35
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #11
  br label %cleanup

rq_err:                                           ; preds = %if.then58, %if.then22, %if.then17
  %err.0 = phi i32 [ -12, %if.then17 ], [ %retval.0.i183.ph, %if.then22 ], [ -22, %if.then58 ]
  %515 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %516)
  %cmp5.not.i240 = icmp eq i32 %516, 0
  br i1 %cmp5.not.i240, label %rq_err.cleanup_crit_edge, label %rq_err.for.body.i245_crit_edge

rq_err.for.body.i245_crit_edge:                   ; preds = %rq_err
  br label %for.body.i245

rq_err.cleanup_crit_edge:                         ; preds = %rq_err
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i245:                                    ; preds = %for.body.i245.for.body.i245_crit_edge, %rq_err.for.body.i245_crit_edge
  %i.06.i241 = phi i32 [ %inc.i243, %for.body.i245.for.body.i245_crit_edge ], [ 0, %rq_err.for.body.i245_crit_edge ]
  %arrayidx.i242 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.06.i241
  tail call fastcc void @vmxnet3_rq_cleanup(ptr noundef %arrayidx.i242, ptr noundef %adapter) #11
  %inc.i243 = add nuw i32 %i.06.i241, 1
  %517 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %num_rx_queues.i, align 4
  %cmp.i244 = icmp ult i32 %inc.i243, %518
  br i1 %cmp.i244, label %for.body.i245.for.body.i245_crit_edge, label %for.body.i245.cleanup_crit_edge

for.body.i245.cleanup_crit_edge:                  ; preds = %for.body.i245
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i245.for.body.i245_crit_edge:            ; preds = %for.body.i245
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i245

cleanup:                                          ; preds = %for.body.i245.cleanup_crit_edge, %rq_err.cleanup_crit_edge, %vmxnet3_enable_all_intrs.exit
  %retval.0 = phi i32 [ 0, %vmxnet3_enable_all_intrs.exit ], [ %err.0, %rq_err.cleanup_crit_edge ], [ %err.0, %for.body.i245.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vmxnet3_set_mc(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %shared = getelementptr i8, ptr %netdev, i32 28064
  %0 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shared, align 32
  %rxFilterConf = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %1, i32 0, i32 2, i32 2
  %flags1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %vfTable1.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %1, i32 0, i32 2, i32 2, i32 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = call ptr @memset(ptr %vfTable1.i, i32 0, i32 512)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = ptrtoint ptr %vfTable1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vfTable1.i, align 4
  %or.i = or i32 %6, 1
  store i32 %or.i, ptr %vfTable1.i, align 4
  %active_vlans.i = getelementptr i8, ptr %netdev, i32 26880
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i, i32 noundef 4096, i32 noundef 0) #11
  %conv320.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv320.i)
  %cmp21.i = icmp ult i32 %conv320.i, 4096
  br i1 %cmp21.i, label %if.else.for.body.i_crit_edge, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %conv323.i = phi i32 [ %conv3.i, %for.body.i.for.body.i_crit_edge ], [ %conv320.i, %if.else.for.body.i_crit_edge ]
  %vid.0.in22.i = phi i32 [ %call12.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.else.for.body.i_crit_edge ]
  %and.i = and i32 %vid.0.in22.i, 31
  %shl.i = shl nuw i32 1, %and.i
  %7 = lshr i32 %conv323.i, 5
  %arrayidx7.i = getelementptr i32, ptr %vfTable1.i, i32 %7
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %shl.i, %9
  store i32 %or8.i, ptr %arrayidx7.i, align 4
  %add.i = add nuw nsw i32 %conv323.i, 1
  %call12.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i, i32 noundef 4096, i32 noundef %add.i) #11
  %conv3.i = and i32 %call12.i, 65535
  %cmp.i = icmp ult i32 %conv3.i, 4096
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  %new_mode.0 = phi i32 [ 17, %if.then ], [ 1, %if.else.if.end_crit_edge ], [ 1, %for.body.i.if.end_crit_edge ]
  %10 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags1, align 8
  %and7 = shl i32 %11, 1
  %12 = and i32 %and7, 4
  %13 = or i32 %12, %new_mode.0
  %and13 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else17, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %or16 = or i32 %13, 8
  br label %if.end39

if.else17:                                        ; preds = %if.end
  %count = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.else17.if.end39_crit_edge, label %if.then18

if.else17.if.end39_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then18:                                        ; preds = %if.else17
  %mc.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %mul.i = mul i32 %15, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %mul.i)
  %cmp.i117 = icmp ult i32 %mul.i, 65536
  br i1 %cmp.i117, label %if.end8.i.i, label %if.then18.if.then35_crit_edge

if.then18.if.then35_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

if.end8.i.i:                                      ; preds = %if.then18
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 2592) #15
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.if.then35_crit_edge, label %for.cond.preheader.i

if.end8.i.i.if.then35_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

for.cond.preheader.i:                             ; preds = %if.end8.i.i
  %16 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %ha.022.i = load ptr, ptr %mc.i, align 4
  %cmp6.not23.i = icmp eq ptr %ha.022.i, %mc.i
  br i1 %cmp6.not23.i, label %for.cond.preheader.i.if.then21_crit_edge, label %for.cond.preheader.i.for.body.i118_crit_edge

for.cond.preheader.i.for.body.i118_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i118

for.cond.preheader.i.if.then21_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

for.body.i118:                                    ; preds = %for.body.i118.for.body.i118_crit_edge, %for.cond.preheader.i.for.body.i118_crit_edge
  %ha.025.i = phi ptr [ %ha.0.i, %for.body.i118.for.body.i118_crit_edge ], [ %ha.022.i, %for.cond.preheader.i.for.body.i118_crit_edge ]
  %i.024.i = phi i32 [ %inc.i, %for.body.i118.for.body.i118_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i118_crit_edge ]
  %inc.i = add i32 %i.024.i, 1
  %mul7.i = mul i32 %i.024.i, 6
  %add.ptr8.i = getelementptr i8, ptr %call9.i.i, i32 %mul7.i
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.025.i, i32 0, i32 2
  %17 = call ptr @memcpy(ptr %add.ptr8.i, ptr %addr.i, i32 6)
  %18 = ptrtoint ptr %ha.025.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %ha.0.i = load ptr, ptr %ha.025.i, align 4
  %cmp6.not.i = icmp eq ptr %ha.0.i, %mc.i
  br i1 %cmp6.not.i, label %for.body.i118.if.then21_crit_edge, label %for.body.i118.for.body.i118_crit_edge

for.body.i118.for.body.i118_crit_edge:            ; preds = %for.body.i118
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i118

for.body.i118.if.then21_crit_edge:                ; preds = %for.body.i118
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

if.then21:                                        ; preds = %for.body.i118.if.then21_crit_edge, %for.cond.preheader.i.if.then21_crit_edge
  %19 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count, align 8
  %mul = mul i32 %20, 6
  %conv = trunc i32 %mul to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %mfTableLen = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %1, i32 0, i32 2, i32 2, i32 1
  %22 = ptrtoint ptr %mfTableLen to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %mfTableLen, align 4
  %pdev = getelementptr i8, ptr %netdev, i32 28084
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %call.i119 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i) #11
  br i1 %call.i119, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then21
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i120, !prof !277

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i120:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44, i32 3
  %25 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end.i.i121, label %if.then.i120.dev_name.exit.i_crit_edge

if.then.i120.dev_name.exit.i_crit_edge:           ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i121:                                    ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i121, %if.then.i120.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %28, %if.end.i.i121 ], [ %26, %if.then.i120.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef nonnull %call9.i.i, i32 noundef %mul) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %29 = load ptr, ptr @mem_map, align 4
  %30 = ptrtoint ptr %call9.i.i to i32
  %sub.i = add i32 %30, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i122 = getelementptr %struct.page, ptr %29, i32 %shr.i
  %and.i123 = and i32 %30, 3968
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i122, i32 noundef %and.i123, i32 noundef %mul, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 4
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev26, i32 noundef %retval.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i124 = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i124, label %dma_map_single_attrs.exit.if.then35_crit_edge, label %if.end33

dma_map_single_attrs.exit.if.then35_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

if.end33:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %or30 = or i32 %13, 2
  %conv31 = zext i32 %retval.0.i to i64
  %33 = tail call i64 @llvm.bswap.i64(i64 %conv31)
  %mfTablePA = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %1, i32 0, i32 2, i32 2, i32 3
  %34 = ptrtoint ptr %mfTablePA to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %mfTablePA, align 8
  br label %if.end39

if.then35:                                        ; preds = %dma_map_single_attrs.exit.if.then35_crit_edge, %if.end8.i.i.if.then35_crit_edge, %if.then18.if.then35_crit_edge
  %buf.0.i127.ph = phi ptr [ %call9.i.i, %dma_map_single_attrs.exit.if.then35_crit_edge ], [ null, %if.end8.i.i.if.then35_crit_edge ], [ null, %if.then18.if.then35_crit_edge ]
  %new_table_pa.0.ph = phi i32 [ -1, %dma_map_single_attrs.exit.if.then35_crit_edge ], [ 0, %if.end8.i.i.if.then35_crit_edge ], [ 0, %if.then18.if.then35_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.34) #14
  %or36 = or i32 %13, 8
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end33, %if.else17.if.end39_crit_edge, %if.then15
  %new_table.0 = phi ptr [ null, %if.then15 ], [ null, %if.else17.if.end39_crit_edge ], [ %call9.i.i, %if.end33 ], [ %buf.0.i127.ph, %if.then35 ]
  %new_table_pa.1 = phi i32 [ 0, %if.then15 ], [ 0, %if.else17.if.end39_crit_edge ], [ %retval.0.i, %if.end33 ], [ %new_table_pa.0.ph, %if.then35 ]
  %new_table_pa_valid.2.off0 = phi i1 [ false, %if.then15 ], [ false, %if.else17.if.end39_crit_edge ], [ true, %if.end33 ], [ false, %if.then35 ]
  %new_mode.4 = phi i32 [ %or16, %if.then15 ], [ %13, %if.else17.if.end39_crit_edge ], [ %or30, %if.end33 ], [ %or36, %if.then35 ]
  %and40 = and i32 %new_mode.4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end39.do.body46_crit_edge

if.end39.do.body46_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body46

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %mfTableLen43 = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %1, i32 0, i32 2, i32 2, i32 1
  %35 = ptrtoint ptr %mfTableLen43 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %mfTableLen43, align 4
  %mfTablePA44 = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %1, i32 0, i32 2, i32 2, i32 3
  %36 = ptrtoint ptr %mfTablePA44 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %mfTablePA44, align 8
  br label %do.body46

do.body46:                                        ; preds = %if.then42, %if.end39.do.body46_crit_edge
  %cmd_lock = getelementptr i8, ptr %netdev, i32 28020
  %call50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #11
  %37 = ptrtoint ptr %rxFilterConf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rxFilterConf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %new_mode.4, i32 %38)
  %cmp53.not = icmp eq i32 %new_mode.4, %38
  br i1 %cmp53.not, label %do.body46.do.body66_crit_edge, label %if.then55

do.body46.do.body66_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body66

if.then55:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  %39 = tail call i32 @llvm.bswap.i32(i32 %new_mode.4)
  %40 = ptrtoint ptr %rxFilterConf to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %rxFilterConf, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !301
  tail call void @arm_heavy_mb() #11
  %hw_addr1 = getelementptr i8, ptr %netdev, i32 28092
  %41 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_addr1, align 4
  %add.ptr = getelementptr i8, ptr %42, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50396874) #11, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !302
  tail call void @arm_heavy_mb() #11
  %43 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_addr1, align 4
  %add.ptr64 = getelementptr i8, ptr %44, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 83951306) #11, !srcloc !284
  br label %do.body66

do.body66:                                        ; preds = %if.then55, %do.body46.do.body66_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !303
  tail call void @arm_heavy_mb() #11
  %hw_addr169 = getelementptr i8, ptr %netdev, i32 28092
  %45 = ptrtoint ptr %hw_addr169 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_addr169, align 4
  %add.ptr70 = getelementptr i8, ptr %46, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 67174090) #11, !srcloc !284
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call50) #11
  br i1 %new_table_pa_valid.2.off0, label %if.then73, label %do.body66.if.end78_crit_edge

do.body66.if.end78_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then73:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #13
  %pdev74 = getelementptr i8, ptr %netdev, i32 28084
  %47 = ptrtoint ptr %pdev74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev74, align 4
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %mfTableLen76 = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %1, i32 0, i32 2, i32 2, i32 1
  %49 = ptrtoint ptr %mfTableLen76 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %mfTableLen76, align 4
  %conv77 = zext i16 %50 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev75, i32 noundef %new_table_pa.1, i32 noundef %conv77, i32 noundef 1, i32 noundef 0) #11
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %do.body66.if.end78_crit_edge
  tail call void @kfree(ptr noundef %new_table.0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vmxnet3_check_link(ptr noundef %adapter, i1 noundef zeroext %affectTxQueue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_lock = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !304
  tail call void @arm_heavy_mb() #11
  %hw_addr1 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33558000) #11, !srcloc !284
  %2 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr1, align 4
  %add.ptr9 = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #11, !srcloc !289
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !305
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call2) #11
  %shr = lshr i32 %5, 16
  %link_speed = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 24
  %6 = ptrtoint ptr %link_speed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr, ptr %link_speed, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %netdev20 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %7 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev20, align 16
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %8, ptr noundef nonnull @.str.35, i32 noundef %shr) #14
  %9 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev20, align 16
  tail call void @netif_carrier_on(ptr noundef %10) #11
  br i1 %affectTxQueue, label %for.cond.preheader, label %if.then.if.end35_crit_edge

if.then.if.end35_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

for.cond.preheader:                               ; preds = %if.then
  %num_tx_queues = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 17
  %11 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_tx_queues, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1867.not = icmp eq i32 %12, 0
  br i1 %cmp1867.not, label %for.cond.preheader.if.end35_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end35_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.068 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %stopped.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.068, i32 9
  %13 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %stopped.i, align 16
  %14 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev20, align 16
  %conv.i.i = and i32 %i.068, 65535
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %17, i32 %conv.i.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #11
  %inc = add nuw i32 %i.068, 1
  %18 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_tx_queues, align 16
  %cmp18 = icmp ult i32 %inc, %19
  br i1 %cmp18, label %for.body.for.body_crit_edge, label %for.body.if.end35_crit_edge

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.else:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %8, ptr noundef nonnull @.str.36) #14
  %20 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev20, align 16
  tail call void @netif_carrier_off(ptr noundef %21) #11
  br i1 %affectTxQueue, label %for.cond24.preheader, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

for.cond24.preheader:                             ; preds = %if.else
  %num_tx_queues25 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 17
  %22 = ptrtoint ptr %num_tx_queues25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_tx_queues25, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2669.not = icmp eq i32 %23, 0
  br i1 %cmp2669.not, label %for.cond24.preheader.if.end35_crit_edge, label %for.cond24.preheader.for.body28_crit_edge

for.cond24.preheader.for.body28_crit_edge:        ; preds = %for.cond24.preheader
  br label %for.body28

for.cond24.preheader.if.end35_crit_edge:          ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.cond24.preheader.for.body28_crit_edge
  %i.170 = phi i32 [ %inc32, %for.body28.for.body28_crit_edge ], [ 0, %for.cond24.preheader.for.body28_crit_edge ]
  %stopped.i58 = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.170, i32 9
  %24 = ptrtoint ptr %stopped.i58 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %stopped.i58, align 16
  %num_stop.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.170, i32 10
  %25 = ptrtoint ptr %num_stop.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_stop.i, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %num_stop.i, align 4
  %27 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev20, align 16
  %conv.i.i63 = and i32 %i.170, 65535
  %_tx.i.i.i64 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 103
  %29 = ptrtoint ptr %_tx.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i.i64, align 128
  %state.i.i.i65 = getelementptr %struct.netdev_queue, ptr %30, i32 %conv.i.i63, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i65) #11
  %inc32 = add nuw i32 %i.170, 1
  %31 = ptrtoint ptr %num_tx_queues25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_tx_queues25, align 16
  %cmp26 = icmp ult i32 %inc32, %32
  br i1 %cmp26, label %for.body28.for.body28_crit_edge, label %for.body28.if.end35_crit_edge

for.body28.if.end35_crit_edge:                    ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body28

if.end35:                                         ; preds = %for.body28.if.end35_crit_edge, %for.cond24.preheader.if.end35_crit_edge, %if.else.if.end35_crit_edge, %for.body.if.end35_crit_edge, %for.cond.preheader.if.end35_crit_edge, %if.then.if.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vmxnet3_free_irqs(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.do.body5_crit_edge, label %lor.rhs, !prof !280

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5

lor.rhs:                                          ; preds = %entry
  %num_intrs = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %num_intrs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_intrs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2 = icmp eq i8 %3, 0
  br i1 %cmp2, label %lor.rhs.do.body5_crit_edge, label %do.end10, !prof !280

lor.rhs.do.body5_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5

do.body5:                                         ; preds = %lor.rhs.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2264, 0\0A.popsection", ""() #11, !srcloc !306
  unreachable

do.end10:                                         ; preds = %lor.rhs
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %1, label %do.body72 [
    i32 3, label %sw.bb
    i32 2, label %do.end10.sw.epilog.sink.split_crit_edge
    i32 1, label %do.end10.sw.epilog.sink.split_crit_edge112
  ]

do.end10.sw.epilog.sink.split_crit_edge112:       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

do.end10.sw.epilog.sink.split_crit_edge:          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb:                                            ; preds = %do.end10
  %share_intr = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 36
  %5 = ptrtoint ptr %share_intr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %share_intr, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp12.not = icmp eq i32 %6, 0
  br i1 %cmp12.not, label %sw.bb.if.end25_crit_edge, label %for.cond.preheader

sw.bb.if.end25_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

for.cond.preheader:                               ; preds = %sw.bb
  %num_tx_queues = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 17
  %7 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_tx_queues, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp15103.not = icmp eq i32 %8, 0
  br i1 %cmp15103.not, label %for.cond.preheader.if.end25_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end25_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

for.cond:                                         ; preds = %for.body
  %9 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_tx_queues, align 16
  %cmp15 = icmp ult i32 %inc, %10
  br i1 %cmp15, label %for.cond.for.body_crit_edge, label %for.cond.if.end25_crit_edge

for.cond.if.end25_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %vector.0105 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %inc = add nuw i32 %vector.0105, 1
  %arrayidx = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 6, i32 %vector.0105
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %arrayidx18 = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %vector.0105
  %call = tail call ptr @free_irq(i32 noundef %12, ptr noundef %arrayidx18) #11
  %13 = ptrtoint ptr %share_intr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %share_intr, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp20 = icmp eq i32 %14, 1
  br i1 %cmp20, label %for.body.if.end25_crit_edge, label %for.cond

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end25:                                         ; preds = %for.body.if.end25_crit_edge, %for.cond.if.end25_crit_edge, %for.cond.preheader.if.end25_crit_edge, %sw.bb.if.end25_crit_edge
  %vector.1 = phi i32 [ 0, %sw.bb.if.end25_crit_edge ], [ 0, %for.cond.preheader.if.end25_crit_edge ], [ %inc, %for.cond.if.end25_crit_edge ], [ %inc, %for.body.if.end25_crit_edge ]
  %num_rx_queues = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 16
  %15 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp27107.not = icmp eq i32 %16, 0
  br i1 %cmp27107.not, label %if.end25.for.end38_crit_edge, label %if.end25.for.body29_crit_edge

if.end25.for.body29_crit_edge:                    ; preds = %if.end25
  br label %for.body29

if.end25.for.end38_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end38

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %if.end25.for.body29_crit_edge
  %vector.2109 = phi i32 [ %inc31, %for.body29.for.body29_crit_edge ], [ %vector.1, %if.end25.for.body29_crit_edge ]
  %i.1108 = phi i32 [ %inc37, %for.body29.for.body29_crit_edge ], [ 0, %if.end25.for.body29_crit_edge ]
  %inc31 = add i32 %vector.2109, 1
  %arrayidx32 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 6, i32 %vector.2109
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx32, align 4
  %arrayidx34 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.1108
  %call35 = tail call ptr @free_irq(i32 noundef %18, ptr noundef %arrayidx34) #11
  %inc37 = add nuw i32 %i.1108, 1
  %19 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_rx_queues, align 4
  %cmp27 = icmp ult i32 %inc37, %20
  br i1 %cmp27, label %for.body29.for.body29_crit_edge, label %for.body29.for.end38_crit_edge

for.body29.for.end38_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end38

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body29

for.end38:                                        ; preds = %for.body29.for.end38_crit_edge, %if.end25.for.end38_crit_edge
  %vector.2.lcssa = phi i32 [ %vector.1, %if.end25.for.end38_crit_edge ], [ %inc31, %for.body29.for.end38_crit_edge ]
  %arrayidx40 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 6, i32 %vector.2.lcssa
  %21 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx40, align 4
  %netdev = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %23 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev, align 16
  %call42 = tail call ptr @free_irq(i32 noundef %22, ptr noundef %24) #11
  %25 = ptrtoint ptr %num_intrs to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num_intrs, align 4
  %conv45 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %vector.2.lcssa, i32 %conv45)
  %cmp46.not = icmp slt i32 %vector.2.lcssa, %conv45
  br i1 %cmp46.not, label %for.end38.sw.epilog_crit_edge, label %do.body55, !prof !277

for.end38.sw.epilog_crit_edge:                    ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body55:                                        ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2288, 0\0A.popsection", ""() #11, !srcloc !307
  unreachable

do.body72:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2299, 0\0A.popsection", ""() #11, !srcloc !308
  unreachable

sw.epilog.sink.split:                             ; preds = %do.end10.sw.epilog.sink.split_crit_edge, %do.end10.sw.epilog.sink.split_crit_edge112
  %pdev68 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  %27 = ptrtoint ptr %pdev68 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev68, align 4
  %irq69 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 46
  %29 = ptrtoint ptr %irq69 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq69, align 4
  %netdev70 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %31 = ptrtoint ptr %netdev70 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev70, align 16
  %call71 = tail call ptr @free_irq(i32 noundef %30, ptr noundef %32) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.end38.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vmxnet3_reset_dev(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_lock = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !309
  tail call void @arm_heavy_mb() #11
  %hw_addr1 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33619658) #11, !srcloc !284
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vmxnet3_quiesce_dev(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 35
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1:                                         ; preds = %entry
  %cmd_lock = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !310
  tail call void @arm_heavy_mb() #11
  %hw_addr1 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16842442) #11, !srcloc !284
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call3) #11
  %shared.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 5
  %2 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared.i, align 32
  %intrCtrl.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %3, i32 0, i32 2, i32 1, i32 4
  %4 = ptrtoint ptr %intrCtrl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intrCtrl.i, align 4
  %or.i = or i32 %5, 16777216
  store i32 %or.i, ptr %intrCtrl.i, align 4
  %num_intrs.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_intrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp7.not.i = icmp eq i8 %7, 0
  br i1 %cmp7.not.i, label %do.body1.vmxnet3_disable_all_intrs.exit_crit_edge, label %for.body.lr.ph.i

do.body1.vmxnet3_disable_all_intrs.exit_crit_edge: ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_disable_all_intrs.exit

for.body.lr.ph.i:                                 ; preds = %do.body1
  %hw_addr0.i.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !311
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %hw_addr0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr0.i.i, align 8
  %mul.i.i = shl i32 %i.08.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #11, !srcloc !284
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %10 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_intrs.i, align 8
  %conv.i = zext i8 %11 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.vmxnet3_disable_all_intrs.exit_crit_edge

for.body.i.vmxnet3_disable_all_intrs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_disable_all_intrs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

vmxnet3_disable_all_intrs.exit:                   ; preds = %for.body.i.vmxnet3_disable_all_intrs.exit_crit_edge, %do.body1.vmxnet3_disable_all_intrs.exit_crit_edge
  %num_rx_queues = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 16
  %12 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1035.not = icmp eq i32 %13, 0
  br i1 %cmp1035.not, label %vmxnet3_disable_all_intrs.exit.for.end_crit_edge, label %vmxnet3_disable_all_intrs.exit.for.body_crit_edge

vmxnet3_disable_all_intrs.exit.for.body_crit_edge: ; preds = %vmxnet3_disable_all_intrs.exit
  br label %for.body

vmxnet3_disable_all_intrs.exit.for.end_crit_edge: ; preds = %vmxnet3_disable_all_intrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %vmxnet3_disable_all_intrs.exit.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %vmxnet3_disable_all_intrs.exit.for.body_crit_edge ]
  %napi = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.036, i32 2
  tail call void @napi_disable(ptr noundef %napi) #11
  %inc = add nuw i32 %i.036, 1
  %14 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_rx_queues, align 4
  %cmp10 = icmp ult i32 %inc, %15
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %vmxnet3_disable_all_intrs.exit.for.end_crit_edge
  %netdev = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %16 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev, align 16
  tail call fastcc void @local_bh_disable() #11
  %18 = tail call i32 @llvm.read_register.i32(metadata !267) #11
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #11
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 104
  %22 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp13.not.i = icmp eq i32 %23, 0
  br i1 %cmp13.not.i, label %for.end.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i28

for.end.netif_tx_disable.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_tx_disable.exit

for.body.lr.ph.i28:                               ; preds = %for.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 103
  br label %for.body.i31

for.body.i31:                                     ; preds = %for.body.i31.for.body.i31_crit_edge, %for.body.lr.ph.i28
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i28 ], [ %inc.i29, %for.body.i31.for.body.i31_crit_edge ]
  %24 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %25, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #11
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %25, i32 %i.014.i, i32 11
  %26 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %21, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %25, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %27 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #11
  %inc.i29 = add nuw i32 %i.014.i, 1
  %28 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i30 = icmp ult i32 %inc.i29, %29
  br i1 %cmp.i30, label %for.body.i31.for.body.i31_crit_edge, label %for.body.i31.netif_tx_disable.exit_crit_edge

for.body.i31.netif_tx_disable.exit_crit_edge:     ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_tx_disable.exit

for.body.i31.for.body.i31_crit_edge:              ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i31

netif_tx_disable.exit:                            ; preds = %for.body.i31.netif_tx_disable.exit_crit_edge, %for.end.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #11
  tail call fastcc void @local_bh_enable() #11
  %link_speed = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 24
  %30 = ptrtoint ptr %link_speed to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %link_speed, align 4
  %31 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev, align 16
  tail call void @netif_carrier_off(ptr noundef %32) #11
  tail call fastcc void @vmxnet3_tq_cleanup_all(ptr noundef %adapter)
  %33 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp5.not.i = icmp eq i32 %34, 0
  br i1 %cmp5.not.i, label %netif_tx_disable.exit.vmxnet3_rq_cleanup_all.exit_crit_edge, label %netif_tx_disable.exit.for.body.i34_crit_edge

netif_tx_disable.exit.for.body.i34_crit_edge:     ; preds = %netif_tx_disable.exit
  br label %for.body.i34

netif_tx_disable.exit.vmxnet3_rq_cleanup_all.exit_crit_edge: ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rq_cleanup_all.exit

for.body.i34:                                     ; preds = %for.body.i34.for.body.i34_crit_edge, %netif_tx_disable.exit.for.body.i34_crit_edge
  %i.06.i = phi i32 [ %inc.i32, %for.body.i34.for.body.i34_crit_edge ], [ 0, %netif_tx_disable.exit.for.body.i34_crit_edge ]
  %arrayidx.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.06.i
  tail call fastcc void @vmxnet3_rq_cleanup(ptr noundef %arrayidx.i, ptr noundef %adapter) #11
  %inc.i32 = add nuw i32 %i.06.i, 1
  %35 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_rx_queues, align 4
  %cmp.i33 = icmp ult i32 %inc.i32, %36
  br i1 %cmp.i33, label %for.body.i34.for.body.i34_crit_edge, label %for.body.i34.vmxnet3_rq_cleanup_all.exit_crit_edge

for.body.i34.vmxnet3_rq_cleanup_all.exit_crit_edge: ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rq_cleanup_all.exit

for.body.i34.for.body.i34_crit_edge:              ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i34

vmxnet3_rq_cleanup_all.exit:                      ; preds = %for.body.i34.vmxnet3_rq_cleanup_all.exit_crit_edge, %netif_tx_disable.exit.vmxnet3_rq_cleanup_all.exit_crit_edge
  tail call fastcc void @vmxnet3_free_irqs(ptr noundef %adapter)
  br label %cleanup

cleanup:                                          ; preds = %vmxnet3_rq_cleanup_all.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vmxnet3_tq_cleanup_all(ptr nocapture noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tx_queues = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %vmxnet3_tq_cleanup.exit.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vmxnet3_tq_cleanup.exit.for.body_crit_edge ]
  %next2comp.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06, i32 3, i32 3
  %next2fill.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06, i32 3, i32 2
  %2 = ptrtoint ptr %next2comp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next2comp.i, align 4
  %4 = ptrtoint ptr %next2fill.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next2fill.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not53.i = icmp eq i32 %3, %5
  br i1 %cmp.not53.i, label %for.body.for.cond.preheader.i_crit_edge, label %while.body.lr.ph.i

for.body.for.cond.preheader.i_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader.i

while.body.lr.ph.i:                               ; preds = %for.body
  %buf_info.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06, i32 4
  %size.i.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06, i32 3, i32 1
  br label %while.body.i

for.cond.preheader.i:                             ; preds = %vmxnet3_cmd_ring_adv_next2comp.exit.i.for.cond.preheader.i_crit_edge, %for.body.for.cond.preheader.i_crit_edge
  %size.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06, i32 3, i32 1
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp854.not.i = icmp eq i32 %7, 0
  br i1 %cmp854.not.i, label %for.cond.preheader.i.vmxnet3_tq_cleanup.exit_crit_edge, label %do.body.lr.ph.i

for.cond.preheader.i.vmxnet3_tq_cleanup.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_tq_cleanup.exit

do.body.lr.ph.i:                                  ; preds = %for.cond.preheader.i
  %buf_info9.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06, i32 4
  %8 = ptrtoint ptr %buf_info9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf_info9.i, align 32
  br label %do.body.i

while.body.i:                                     ; preds = %vmxnet3_cmd_ring_adv_next2comp.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %10 = phi i32 [ %3, %while.body.lr.ph.i ], [ %32, %vmxnet3_cmd_ring_adv_next2comp.exit.i.while.body.i_crit_edge ]
  %11 = ptrtoint ptr %buf_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf_info.i, align 32
  %add.ptr.i = getelementptr %struct.vmxnet3_tx_buf_info, ptr %12, i32 %10
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %14, label %do.body15.i.i [
    i32 2, label %while.body.i.if.end20.sink.split.i.i_crit_edge
    i32 3, label %while.body.i.if.end20.sink.split.i.i_crit_edge7
    i32 1, label %while.body.i.vmxnet3_unmap_tx_buf.exit.i_crit_edge
  ], !prof !312

while.body.i.vmxnet3_unmap_tx_buf.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_unmap_tx_buf.exit.i

while.body.i.if.end20.sink.split.i.i_crit_edge7:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.sink.split.i.i

while.body.i.if.end20.sink.split.i.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.sink.split.i.i

do.body15.i.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 322, 0\0A.popsection", ""() #11, !srcloc !313
  unreachable

if.end20.sink.split.i.i:                          ; preds = %while.body.i.if.end20.sink.split.i.i_crit_edge, %while.body.i.if.end20.sink.split.i.i_crit_edge7
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 4
  %dev5.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %dma_addr6.i.i = getelementptr %struct.vmxnet3_tx_buf_info, ptr %12, i32 %10, i32 3
  %18 = ptrtoint ptr %dma_addr6.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_addr6.i.i, align 4
  %len7.i.i = getelementptr %struct.vmxnet3_tx_buf_info, ptr %12, i32 %10, i32 1
  %20 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %len7.i.i, align 4
  %conv8.i.i = zext i16 %21 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev5.i.i, i32 noundef %19, i32 noundef %conv8.i.i, i32 noundef 1, i32 noundef 0) #11
  br label %vmxnet3_unmap_tx_buf.exit.i

vmxnet3_unmap_tx_buf.exit.i:                      ; preds = %if.end20.sink.split.i.i, %while.body.i.vmxnet3_unmap_tx_buf.exit.i_crit_edge
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %add.ptr.i, align 4
  %skb.i = getelementptr %struct.vmxnet3_tx_buf_info, ptr %12, i32 %10, i32 4
  %23 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %vmxnet3_unmap_tx_buf.exit.i.if.end.i_crit_edge, label %if.then.i

vmxnet3_unmap_tx_buf.exit.i.if.end.i_crit_edge:   ; preds = %vmxnet3_unmap_tx_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %vmxnet3_unmap_tx_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %24, i32 noundef 1) #11
  %25 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %skb.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %vmxnet3_unmap_tx_buf.exit.i.if.end.i_crit_edge
  %26 = ptrtoint ptr %next2comp.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %next2comp.i, align 4
  %inc.i.i = add i32 %27, 1
  store i32 %inc.i.i, ptr %next2comp.i, align 4
  %28 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %29)
  %cmp.i.i = icmp eq i32 %inc.i.i, %29
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.vmxnet3_cmd_ring_adv_next2comp.exit.i_crit_edge, !prof !280

if.end.i.vmxnet3_cmd_ring_adv_next2comp.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_cmd_ring_adv_next2comp.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %next2comp.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %next2comp.i, align 4
  br label %vmxnet3_cmd_ring_adv_next2comp.exit.i

vmxnet3_cmd_ring_adv_next2comp.exit.i:            ; preds = %if.then.i.i, %if.end.i.vmxnet3_cmd_ring_adv_next2comp.exit.i_crit_edge
  %31 = ptrtoint ptr %next2comp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %next2comp.i, align 4
  %33 = ptrtoint ptr %next2fill.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %next2fill.i, align 8
  %cmp.not.i = icmp eq i32 %32, %34
  br i1 %cmp.not.i, label %vmxnet3_cmd_ring_adv_next2comp.exit.i.for.cond.preheader.i_crit_edge, label %vmxnet3_cmd_ring_adv_next2comp.exit.i.while.body.i_crit_edge

vmxnet3_cmd_ring_adv_next2comp.exit.i.while.body.i_crit_edge: ; preds = %vmxnet3_cmd_ring_adv_next2comp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

vmxnet3_cmd_ring_adv_next2comp.exit.i.for.cond.preheader.i_crit_edge: ; preds = %vmxnet3_cmd_ring_adv_next2comp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader.i

for.cond.i:                                       ; preds = %lor.rhs.i
  %inc.i = add nuw i32 %i.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.cond.i.vmxnet3_tq_cleanup.exit_crit_edge, label %for.cond.i.do.body.i_crit_edge

for.cond.i.do.body.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

for.cond.i.vmxnet3_tq_cleanup.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_tq_cleanup.exit

do.body.i:                                        ; preds = %for.cond.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.055.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %for.cond.i.do.body.i_crit_edge ]
  %skb10.i = getelementptr %struct.vmxnet3_tx_buf_info, ptr %9, i32 %i.055.i, i32 4
  %35 = ptrtoint ptr %skb10.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %skb10.i, align 4
  %cmp11.not.i = icmp eq ptr %36, null
  br i1 %cmp11.not.i, label %lor.rhs.i, label %do.body.i.do.body18.i_crit_edge, !prof !277

do.body.i.do.body18.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18.i

lor.rhs.i:                                        ; preds = %do.body.i
  %arrayidx.i = getelementptr %struct.vmxnet3_tx_buf_info, ptr %9, i32 %i.055.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp14.not.i = icmp eq i32 %38, 1
  br i1 %cmp14.not.i, label %for.cond.i, label %lor.rhs.i.do.body18.i_crit_edge, !prof !277

lor.rhs.i.do.body18.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18.i

do.body18.i:                                      ; preds = %lor.rhs.i.do.body18.i_crit_edge, %do.body.i.do.body18.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 421, 0\0A.popsection", ""() #11, !srcloc !314
  unreachable

vmxnet3_tq_cleanup.exit:                          ; preds = %for.cond.i.vmxnet3_tq_cleanup.exit_crit_edge, %for.cond.preheader.i.vmxnet3_tq_cleanup.exit_crit_edge
  %gen.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06, i32 3, i32 4
  %39 = ptrtoint ptr %gen.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %gen.i, align 8
  %40 = ptrtoint ptr %next2comp.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %next2comp.i, align 4
  %41 = ptrtoint ptr %next2fill.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %next2fill.i, align 8
  %gen30.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06, i32 6, i32 3
  %42 = ptrtoint ptr %gen30.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %gen30.i, align 4
  %next2proc.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06, i32 6, i32 2
  %43 = ptrtoint ptr %next2proc.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %next2proc.i, align 8
  %inc = add nuw i32 %i.06, 1
  %44 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_tx_queues, align 16
  %cmp = icmp ult i32 %inc, %45
  br i1 %cmp, label %vmxnet3_tq_cleanup.exit.for.body_crit_edge, label %vmxnet3_tq_cleanup.exit.for.end_crit_edge

vmxnet3_tq_cleanup.exit.for.end_crit_edge:        ; preds = %vmxnet3_tq_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

vmxnet3_tq_cleanup.exit.for.body_crit_edge:       ; preds = %vmxnet3_tq_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %vmxnet3_tq_cleanup.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vmxnet3_create_queues(ptr noundef %adapter, i32 noundef %tx_ring_size, i32 noundef %rx_ring_size, i32 noundef %rx_ring2_size, i16 noundef zeroext %txdata_desc_size, i16 noundef zeroext %rxdata_desc_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tx_queues = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp152.not = icmp eq i32 %1, 0
  br i1 %cmp152.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tqd_start = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 7
  %pdev.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %size = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0153, i32 3, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %tx_ring_size, ptr %size, align 4
  %size1 = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0153, i32 5, i32 1
  %3 = ptrtoint ptr %size1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %tx_ring_size, ptr %size1, align 4
  %size2 = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0153, i32 6, i32 1
  %4 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tx_ring_size, ptr %size2, align 4
  %txdata_desc_size3 = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0153, i32 12
  %5 = ptrtoint ptr %txdata_desc_size3 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %txdata_desc_size, ptr %txdata_desc_size3, align 4
  %6 = ptrtoint ptr %tqd_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tqd_start, align 8
  %arrayidx4 = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %7, i32 %i.0153
  %shared = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0153, i32 7
  %8 = ptrtoint ptr %shared to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx4, ptr %shared, align 4
  %stopped = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0153, i32 9
  %9 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %stopped, align 16
  %adapter5 = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0153, i32 1
  %10 = ptrtoint ptr %adapter5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %adapter, ptr %adapter5, align 8
  %qid = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0153, i32 11
  %11 = ptrtoint ptr %qid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %i.0153, ptr %qid, align 8
  %tx_ring.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0153, i32 3
  %12 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_ring.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.do.body9.i_crit_edge, !prof !277

for.body.do.body9.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9.i

lor.lhs.false.i:                                  ; preds = %for.body
  %data_ring.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0153, i32 5
  %14 = ptrtoint ptr %data_ring.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data_ring.i, align 4
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.do.body9.i_crit_edge, !prof !277

lor.lhs.false.i.do.body9.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %comp_ring.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0153, i32 6
  %16 = ptrtoint ptr %comp_ring.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %comp_ring.i, align 16
  %tobool5.not.i = icmp eq ptr %17, null
  br i1 %tobool5.not.i, label %lor.rhs.i, label %lor.lhs.false3.i.do.body9.i_crit_edge, !prof !277

lor.lhs.false3.i.do.body9.i_crit_edge:            ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9.i

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  %buf_info.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0153, i32 4
  %18 = ptrtoint ptr %buf_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf_info.i, align 32
  %tobool6.not.i = icmp eq ptr %19, null
  br i1 %tobool6.not.i, label %do.end12.i, label %lor.rhs.i.do.body9.i_crit_edge, !prof !277

lor.rhs.i.do.body9.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9.i

do.body9.i:                                       ; preds = %lor.rhs.i.do.body9.i_crit_edge, %lor.lhs.false3.i.do.body9.i_crit_edge, %lor.lhs.false.i.do.body9.i_crit_edge, %for.body.do.body9.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 505, 0\0A.popsection", ""() #11, !srcloc !315
  unreachable

do.end12.i:                                       ; preds = %lor.rhs.i
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  %mul.i = shl i32 %23, 4
  %basePA.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0153, i32 3, i32 5
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %mul.i, ptr noundef %basePA.i, i32 noundef 3264, i32 noundef 0) #11
  %24 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.i, ptr %tx_ring.i, align 8
  %tobool19.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end21.i

if.then20.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %netdev.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %25 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev.i, align 16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.37) #14
  br label %vmxnet3_tq_create.exit

if.end21.i:                                       ; preds = %do.end12.i
  %27 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i, align 4
  %dev23.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %29 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size1, align 4
  %31 = ptrtoint ptr %txdata_desc_size3 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %txdata_desc_size3, align 4
  %conv.i = zext i16 %32 to i32
  %mul26.i = mul i32 %30, %conv.i
  %basePA28.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0153, i32 5, i32 2
  %call.i94.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev23.i, i32 noundef %mul26.i, ptr noundef %basePA28.i, i32 noundef 3264, i32 noundef 0) #11
  %33 = ptrtoint ptr %data_ring.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i94.i, ptr %data_ring.i, align 4
  %tobool34.not.i = icmp eq ptr %call.i94.i, null
  br i1 %tobool34.not.i, label %if.then35.i, label %if.end37.i

if.then35.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  %netdev36.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %34 = ptrtoint ptr %netdev36.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev36.i, align 16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.38) #14
  br label %vmxnet3_tq_create.exit

if.end37.i:                                       ; preds = %if.end21.i
  %36 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev.i, align 4
  %dev39.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size2, align 4
  %mul42.i = shl i32 %39, 4
  %basePA44.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0153, i32 6, i32 5
  %call.i95.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev39.i, i32 noundef %mul42.i, ptr noundef %basePA44.i, i32 noundef 3264, i32 noundef 0) #11
  %40 = ptrtoint ptr %comp_ring.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i95.i, ptr %comp_ring.i, align 16
  %tobool50.not.i = icmp eq ptr %call.i95.i, null
  br i1 %tobool50.not.i, label %if.then51.i, label %if.end53.i

if.then51.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %netdev52.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %41 = ptrtoint ptr %netdev52.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %netdev52.i, align 16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.39) #14
  br label %vmxnet3_tq_create.exit

if.end53.i:                                       ; preds = %if.end37.i
  %43 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size, align 4
  %45 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %44, i32 16) #11
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %kcalloc_node.exit.thread.i, label %if.end7.i.i.i, !prof !280

kcalloc_node.exit.thread.i:                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %buf_info.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %buf_info.i, align 32
  br label %vmxnet3_tq_create.exit

if.end7.i.i.i:                                    ; preds = %if.end53.i
  %48 = extractvalue { i32, i1 } %45, 0
  %call.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %48, i32 noundef 3520) #15
  %49 = ptrtoint ptr %buf_info.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i.i.i.i, ptr %buf_info.i, align 32
  %tobool62.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool62.not.i, label %if.end7.i.i.i.vmxnet3_tq_create.exit_crit_edge, label %for.inc

if.end7.i.i.i.vmxnet3_tq_create.exit_crit_edge:   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_tq_create.exit

vmxnet3_tq_create.exit:                           ; preds = %if.end7.i.i.i.vmxnet3_tq_create.exit_crit_edge, %kcalloc_node.exit.thread.i, %if.then51.i, %if.then35.i, %if.then20.i
  %arrayidx139 = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.0153
  tail call fastcc void @vmxnet3_tq_destroy(ptr noundef %arrayidx139, ptr noundef %adapter) #11
  br label %queue_err

for.inc:                                          ; preds = %if.end7.i.i.i
  %inc = add nuw i32 %i.0153, 1
  %50 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_tx_queues, align 16
  %cmp = icmp ult i32 %inc, %51
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %size8 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 0, i32 3, i32 0, i32 1
  %52 = ptrtoint ptr %size8 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %rx_ring_size, ptr %size8, align 4
  %size13 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 0, i32 3, i32 1, i32 1
  %53 = ptrtoint ptr %size13 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %rx_ring2_size, ptr %size13, align 4
  %netdev.i96 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %54 = ptrtoint ptr %netdev.i96 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %netdev.i96, align 16
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 20
  %56 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3051, i32 %57)
  %cmp.i = icmp ult i32 %57, 3051
  %skb_buf_size.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 18
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %58 = tail call i32 @llvm.umax.i32(i32 %57, i32 106) #11
  %59 = add nuw nsw i32 %58, 22
  %60 = ptrtoint ptr %skb_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %skb_buf_size.i, align 4
  br label %if.end15.i

if.else.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %skb_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3072, ptr %skb_buf_size.i, align 4
  %62 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mtu.i, align 4
  %sub12.i = add i32 %63, 1045
  %div90.i = lshr i32 %sub12.i, 12
  %add13.i = add nuw nsw i32 %div90.i, 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else.i, %if.then.i
  %add13.sink.i = phi i32 [ 1, %if.then.i ], [ %add13.i, %if.else.i ]
  %64 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 19
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add13.sink.i, ptr %64, align 8
  %mul.i97 = shl nuw nsw i32 %add13.sink.i, 5
  %add18.i = add nsw i32 %mul.i97, -1
  %sub19.i = add i32 %add18.i, %rx_ring_size
  %66 = urem i32 %sub19.i, %mul.i97
  %mul21.i = sub i32 %sub19.i, %66
  %67 = urem i32 4096, %mul.i97
  %mul23.i = sub nuw nsw i32 4096, %67
  %68 = tail call i32 @llvm.umin.i32(i32 %mul21.i, i32 %mul23.i) #11
  %sub31.i = add i32 %add18.i, %rx_ring2_size
  %69 = urem i32 %sub31.i, %mul.i97
  %mul33.i = sub i32 %sub31.i, %69
  %70 = tail call i32 @llvm.umin.i32(i32 %mul33.i, i32 %mul23.i) #11
  %add42.i = add nuw nsw i32 %70, %68
  %num_rx_queues.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 16
  %71 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp4391.not.i = icmp eq i32 %72, 0
  br i1 %cmp4391.not.i, label %if.end15.i.vmxnet3_adjust_rx_ring_size.exit_crit_edge, label %if.end15.i.for.body.i_crit_edge

if.end15.i.for.body.i_crit_edge:                  ; preds = %if.end15.i
  br label %for.body.i

if.end15.i.vmxnet3_adjust_rx_ring_size.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_adjust_rx_ring_size.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end15.i.for.body.i_crit_edge
  %i.092.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end15.i.for.body.i_crit_edge ]
  %size48.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.092.i, i32 3, i32 0, i32 1
  %73 = ptrtoint ptr %size48.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %68, ptr %size48.i, align 4
  %size51.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.092.i, i32 3, i32 1, i32 1
  %74 = ptrtoint ptr %size51.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %70, ptr %size51.i, align 4
  %size52.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.092.i, i32 5, i32 1
  %75 = ptrtoint ptr %size52.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add42.i, ptr %size52.i, align 4
  %inc.i = add nuw i32 %i.092.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %72
  br i1 %exitcond.not.i, label %vmxnet3_adjust_rx_ring_size.exitthread-pre-split, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

vmxnet3_adjust_rx_ring_size.exitthread-pre-split: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %phi.cmp = icmp eq i32 %.pr, 0
  br label %vmxnet3_adjust_rx_ring_size.exit

vmxnet3_adjust_rx_ring_size.exit:                 ; preds = %vmxnet3_adjust_rx_ring_size.exitthread-pre-split, %if.end15.i.vmxnet3_adjust_rx_ring_size.exit_crit_edge
  %77 = phi i1 [ %phi.cmp, %vmxnet3_adjust_rx_ring_size.exitthread-pre-split ], [ true, %if.end15.i.vmxnet3_adjust_rx_ring_size.exit_crit_edge ]
  %version = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 13
  %78 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %version, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %79)
  %cmp14 = icmp ugt i8 %79, 2
  %rxdataring_enabled = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 31
  %frombool = zext i1 %cmp14 to i8
  %80 = ptrtoint ptr %rxdataring_enabled to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %frombool, ptr %rxdataring_enabled, align 8
  br i1 %77, label %vmxnet3_adjust_rx_ring_size.exit.for.end41_crit_edge, label %for.body19.lr.ph

vmxnet3_adjust_rx_ring_size.exit.for.end41_crit_edge: ; preds = %vmxnet3_adjust_rx_ring_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end41

for.body19.lr.ph:                                 ; preds = %vmxnet3_adjust_rx_ring_size.exit
  %rqd_start = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 8
  br label %for.body19

for.body19:                                       ; preds = %for.inc39.for.body19_crit_edge, %for.body19.lr.ph
  %i.1156 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc40, %for.inc39.for.body19_crit_edge ]
  %arrayidx21 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.1156
  %81 = ptrtoint ptr %rqd_start to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rqd_start, align 4
  %arrayidx22 = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %82, i32 %i.1156
  %shared24 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.1156, i32 11
  %83 = ptrtoint ptr %shared24 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %arrayidx22, ptr %shared24, align 4
  %adapter25 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.1156, i32 1
  %84 = ptrtoint ptr %adapter25 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %adapter, ptr %adapter25, align 8
  %desc_size = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.1156, i32 4, i32 2
  %85 = ptrtoint ptr %desc_size to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %rxdata_desc_size, ptr %desc_size, align 8
  %call27 = tail call fastcc i32 @vmxnet3_rq_create(ptr noundef %arrayidx21, ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %for.inc39, label %if.then29

if.then29:                                        ; preds = %for.body19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1156)
  %cmp30 = icmp eq i32 %i.1156, 0
  %86 = ptrtoint ptr %netdev.i96 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %netdev.i96, align 16
  br i1 %cmp30, label %cleanup36, label %cleanup36.thread121

cleanup36.thread121:                              ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %87, ptr noundef nonnull @.str.8, i32 noundef %i.1156) #14
  %88 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %i.1156, ptr %num_rx_queues.i, align 4
  br label %for.end41thread-pre-split

cleanup36:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %87, ptr noundef nonnull @.str.7) #14
  br label %queue_err

for.inc39:                                        ; preds = %for.body19
  %inc40 = add nuw i32 %i.1156, 1
  %89 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_rx_queues.i, align 4
  %cmp17 = icmp ult i32 %inc40, %90
  br i1 %cmp17, label %for.inc39.for.body19_crit_edge, label %for.inc39.for.end41thread-pre-split_crit_edge

for.inc39.for.end41thread-pre-split_crit_edge:    ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end41thread-pre-split

for.inc39.for.body19_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19

for.end41thread-pre-split:                        ; preds = %for.inc39.for.end41thread-pre-split_crit_edge, %cleanup36.thread121
  %91 = ptrtoint ptr %rxdataring_enabled to i32
  call void @__asan_load1_noabort(i32 %91)
  %.pr172 = load i8, ptr %rxdataring_enabled, align 8
  br label %for.end41

for.end41:                                        ; preds = %for.end41thread-pre-split, %vmxnet3_adjust_rx_ring_size.exit.for.end41_crit_edge
  %92 = phi i8 [ %.pr172, %for.end41thread-pre-split ], [ %frombool, %vmxnet3_adjust_rx_ring_size.exit.for.end41_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool43.not = icmp eq i8 %92, 0
  br i1 %tobool43.not, label %if.then44, label %for.end41.cleanup46_crit_edge

for.end41.cleanup46_crit_edge:                    ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup46

if.then44:                                        ; preds = %for.end41
  %93 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp20.not.i = icmp eq i32 %94, 0
  br i1 %cmp20.not.i, label %if.then44.cleanup46_crit_edge, label %for.body.lr.ph.i

if.then44.cleanup46_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup46

for.body.lr.ph.i:                                 ; preds = %if.then44
  %pdev.i100 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  br label %for.body.i103

for.body.i103:                                    ; preds = %if.end.i.for.body.i103_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i110, %if.end.i.for.body.i103_crit_edge ]
  %data_ring.i101 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.021.i, i32 4
  %95 = ptrtoint ptr %data_ring.i101 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data_ring.i101, align 16
  %tobool.not.i102 = icmp eq ptr %96, null
  br i1 %tobool.not.i102, label %for.body.i103.if.end.i_crit_edge, label %if.then.i109

for.body.i103.if.end.i_crit_edge:                 ; preds = %for.body.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i109:                                     ; preds = %for.body.i103
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %pdev.i100 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pdev.i100, align 4
  %dev.i104 = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  %size.i105 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.021.i, i32 3, i32 0, i32 1
  %99 = ptrtoint ptr %size.i105 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %size.i105, align 4
  %desc_size.i = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.021.i, i32 4, i32 2
  %101 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %desc_size.i, align 8
  %conv.i106 = zext i16 %102 to i32
  %mul.i107 = mul i32 %100, %conv.i106
  %basePA.i108 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.021.i, i32 4, i32 1
  %103 = ptrtoint ptr %basePA.i108 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %basePA.i108, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i104, i32 noundef %mul.i107, ptr noundef nonnull %96, i32 noundef %104, i32 noundef 0) #11
  %105 = ptrtoint ptr %data_ring.i101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %data_ring.i101, align 16
  %106 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %desc_size.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i109, %for.body.i103.if.end.i_crit_edge
  %inc.i110 = add nuw i32 %i.021.i, 1
  %107 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_rx_queues.i, align 4
  %cmp.i111 = icmp ult i32 %inc.i110, %108
  br i1 %cmp.i111, label %if.end.i.for.body.i103_crit_edge, label %if.end.i.cleanup46_crit_edge

if.end.i.cleanup46_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup46

if.end.i.for.body.i103_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i103

queue_err:                                        ; preds = %cleanup36, %vmxnet3_tq_create.exit
  %err.4 = phi i32 [ -12, %vmxnet3_tq_create.exit ], [ %call27, %cleanup36 ]
  %109 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %num_tx_queues, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp5.not.i = icmp eq i32 %110, 0
  br i1 %cmp5.not.i, label %queue_err.cleanup46_crit_edge, label %queue_err.for.body.i114_crit_edge

queue_err.for.body.i114_crit_edge:                ; preds = %queue_err
  br label %for.body.i114

queue_err.cleanup46_crit_edge:                    ; preds = %queue_err
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup46

for.body.i114:                                    ; preds = %for.body.i114.for.body.i114_crit_edge, %queue_err.for.body.i114_crit_edge
  %i.06.i = phi i32 [ %inc.i112, %for.body.i114.for.body.i114_crit_edge ], [ 0, %queue_err.for.body.i114_crit_edge ]
  %arrayidx.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %adapter, i32 0, i32 %i.06.i
  tail call fastcc void @vmxnet3_tq_destroy(ptr noundef %arrayidx.i, ptr noundef %adapter) #11
  %inc.i112 = add nuw i32 %i.06.i, 1
  %111 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %num_tx_queues, align 16
  %cmp.i113 = icmp ult i32 %inc.i112, %112
  br i1 %cmp.i113, label %for.body.i114.for.body.i114_crit_edge, label %for.body.i114.cleanup46_crit_edge

for.body.i114.cleanup46_crit_edge:                ; preds = %for.body.i114
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup46

for.body.i114.for.body.i114_crit_edge:            ; preds = %for.body.i114
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i114

cleanup46:                                        ; preds = %for.body.i114.cleanup46_crit_edge, %queue_err.cleanup46_crit_edge, %if.end.i.cleanup46_crit_edge, %if.then44.cleanup46_crit_edge, %for.end41.cleanup46_crit_edge
  %retval.0 = phi i32 [ 0, %for.end41.cleanup46_crit_edge ], [ 0, %if.then44.cleanup46_crit_edge ], [ %err.4, %queue_err.cleanup46_crit_edge ], [ 0, %if.end.i.cleanup46_crit_edge ], [ %err.4, %for.body.i114.cleanup46_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vmxnet3_rq_create(ptr noundef %rq, ptr nocapture noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  %arrayidx = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 0
  %size = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %mul = shl i32 %1, 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %basePA = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 0, i32 5
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef %basePA, i32 noundef 3264, i32 noundef 0) #11
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.0123.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ]
  %netdev = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.40, i32 noundef %i.0123.lcssa) #14
  br label %err

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 1
  %size.1 = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 1, i32 1
  %7 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.1, align 4
  %mul.1 = shl i32 %8, 4
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev.1 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %basePA.1 = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 1, i32 5
  %call.i.1 = tail call ptr @dma_alloc_attrs(ptr noundef %dev.1, i32 noundef %mul.1, ptr noundef %basePA.1, i32 noundef 3264, i32 noundef 0) #11
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.1, ptr %arrayidx.1, align 8
  %tobool.not.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool.not.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %rxdataring_enabled = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 31
  %12 = ptrtoint ptr %rxdataring_enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rxdataring_enabled, align 8, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  br i1 %tobool8.not, label %for.inc.1.if.else_crit_edge, label %land.lhs.true

for.inc.1.if.else_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %for.inc.1
  %desc_size = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %desc_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %desc_size, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp9.not = icmp eq i16 %15, 0
  br i1 %cmp9.not, label %land.lhs.true.if.else_crit_edge, label %if.then11

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then11:                                        ; preds = %land.lhs.true
  %conv = zext i16 %15 to i32
  %data_ring = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 4
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %mul18 = mul i32 %17, %conv
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %basePA22 = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 4, i32 1
  %call.i114 = tail call ptr @dma_alloc_attrs(ptr noundef %dev20, i32 noundef %mul18, ptr noundef %basePA22, i32 noundef 3264, i32 noundef 0) #11
  %20 = ptrtoint ptr %data_ring to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i114, ptr %data_ring, align 16
  %tobool28.not = icmp eq ptr %call.i114, null
  br i1 %tobool28.not, label %if.then29, label %if.then11.if.end37_crit_edge

if.then11.if.end37_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then29:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %netdev30 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %21 = ptrtoint ptr %netdev30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev30, align 16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.41) #14
  %23 = ptrtoint ptr %rxdataring_enabled to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %rxdataring_enabled, align 8
  br label %if.end37

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.inc.1.if.else_crit_edge
  %data_ring33 = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 4
  %24 = ptrtoint ptr %data_ring33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %data_ring33, align 16
  %desc_size36 = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %desc_size36 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %desc_size36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then29, %if.then11.if.end37_crit_edge
  %comp_ring = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 5
  %size38 = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %size38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size38, align 4
  %mul39 = shl i32 %27, 4
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 4
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %basePA43 = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 5, i32 5
  %call.i115 = tail call ptr @dma_alloc_attrs(ptr noundef %dev41, i32 noundef %mul39, ptr noundef %basePA43, i32 noundef 3264, i32 noundef 0) #11
  %30 = ptrtoint ptr %comp_ring to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i115, ptr %comp_ring, align 4
  %tobool49.not = icmp eq ptr %call.i115, null
  br i1 %tobool49.not, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %netdev51 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %31 = ptrtoint ptr %netdev51 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev51, align 16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %32, ptr noundef nonnull @.str.42) #14
  br label %err

if.end52:                                         ; preds = %if.end37
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 4
  %35 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.1, align 4
  %add = add i32 %36, %34
  %37 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 16) #11
  %38 = extractvalue { i32, i1 } %37, 1
  br i1 %38, label %if.end52.err_crit_edge, label %if.end7.i.i, !prof !280

if.end52.err_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end7.i.i:                                      ; preds = %if.end52
  %39 = extractvalue { i32, i1 } %37, 0
  %call.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #15
  %tobool63.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool63.not, label %if.end7.i.i.err_crit_edge, label %if.end65

if.end7.i.i.err_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end65:                                         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %buf_info = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 10
  %40 = ptrtoint ptr %buf_info to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i.i, ptr %buf_info, align 4
  %41 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size, align 4
  %add.ptr = getelementptr %struct.vmxnet3_rx_buf_info, ptr %call.i.i.i, i32 %42
  %arrayidx71 = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr, ptr %arrayidx71, align 4
  br label %cleanup

err:                                              ; preds = %if.end7.i.i.err_crit_edge, %if.end52.err_crit_edge, %if.then50, %if.then
  tail call fastcc void @vmxnet3_rq_destroy(ptr noundef %rq, ptr noundef %adapter)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end65
  %retval.0 = phi i32 [ -12, %err ], [ 0, %if.end65 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vmxnet3_force_close(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 35
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.body3, !prof !277

for.cond.preheader:                               ; preds = %entry
  %num_rx_queues = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 16
  %2 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp16.not = icmp eq i32 %3, 0
  br i1 %cmp16.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3099, 0\0A.popsection", ""() #11, !srcloc !316
  unreachable

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %napi = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 1, i32 %i.017, i32 2
  tail call void @napi_enable(ptr noundef %napi) #11
  %inc = add nuw i32 %i.017, 1
  %4 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rx_queues, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #11
  %netdev = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 16
  tail call void @dev_close(ptr noundef %7) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_init_module() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #14
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @vmxnet3_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vmxnet3_exit_module() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_unregister_driver(ptr noundef nonnull @vmxnet3_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vmxnet3_rq_alloc_rx_buf(ptr nocapture noundef %rq, i32 noundef %ring_idx, i32 noundef %num_to_alloc, ptr nocapture noundef readonly %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 10, i32 %ring_idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 %ring_idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_to_alloc)
  %cmp.not220 = icmp slt i32 %num_to_alloc, 0
  br i1 %cmp.not220, label %entry.do.body102_crit_edge, label %while.body.lr.ph

entry.do.body102_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body102

while.body.lr.ph:                                 ; preds = %entry
  %next2fill = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 %ring_idx, i32 2
  %pdev64 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  %netdev = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %gen = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 %ring_idx, i32 4
  %size.i = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 %ring_idx, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %num_allocated.0221 = phi i32 [ 0, %while.body.lr.ph ], [ %inc99, %cleanup.while.body_crit_edge ]
  %2 = ptrtoint ptr %next2fill to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next2fill, align 4
  %add.ptr = getelementptr %struct.vmxnet3_rx_buf_info, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %add.ptr3 = getelementptr %union.Vmxnet3_GenericDesc, ptr %5, i32 %3
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %7, label %while.body.do.body40_crit_edge [
    i32 1, label %if.then
    i32 2, label %lor.rhs
  ], !prof !317

while.body.do.body40_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body40

if.then:                                          ; preds = %while.body
  %9 = getelementptr %struct.vmxnet3_rx_buf_info, ptr %1, i32 %3, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %cmp5 = icmp eq ptr %11, null
  br i1 %cmp5, label %if.then6, label %if.then.if.end80_crit_edge

if.then.if.end80_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then6:                                         ; preds = %if.then
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 16
  %len = getelementptr %struct.vmxnet3_rx_buf_info, ptr %1, i32 %3, i32 1
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len, align 4
  %conv = zext i16 %15 to i32
  %add.i = add nuw nsw i32 %conv, 2
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %13, i32 noundef %add.i, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %9, align 4
  br label %do.body102.sink.split

if.end:                                           ; preds = %if.then6
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 2
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %20, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %9, align 4
  %22 = ptrtoint ptr %pdev64 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev64, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = load ptr, ptr %data.i.i, align 4
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %len, align 4
  %call.i194 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %24) #11
  br i1 %call.i194, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i195, !prof !277

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i195:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i195.dev_name.exit.i_crit_edge

if.then.i195.dev_name.exit.i_crit_edge:           ; preds = %if.then.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i195
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i195.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.then.i195.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv12 = zext i16 %26 to i32
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %24, i32 noundef %conv12) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %31 = load ptr, ptr @mem_map, align 4
  %32 = ptrtoint ptr %24 to i32
  %sub.i = add i32 %32, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %31, i32 %shr.i
  %and.i = and i32 %32, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %conv12, i32 noundef 2, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i196 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_addr = getelementptr %struct.vmxnet3_rx_buf_info, ptr %1, i32 %3, i32 3
  %33 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i196, ptr %dma_addr, align 4
  %34 = ptrtoint ptr %pdev64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev64, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev15, i32 noundef %retval.0.i196) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i196)
  %cmp.i = icmp eq i32 %retval.0.i196, -1
  br i1 %cmp.i, label %if.then19, label %dma_map_single_attrs.exit.if.end80_crit_edge

dma_map_single_attrs.exit.if.end80_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then19:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %9, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %37, i32 noundef 1) #11
  br label %do.body102.sink.split

lor.rhs:                                          ; preds = %while.body
  %len29 = getelementptr %struct.vmxnet3_rx_buf_info, ptr %1, i32 %3, i32 1
  %38 = ptrtoint ptr %len29 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %len29, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %39)
  %cmp31.not = icmp eq i16 %39, 4096
  br i1 %cmp31.not, label %do.end46, label %lor.rhs.do.body40_crit_edge, !prof !277

lor.rhs.do.body40_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body40

do.body40:                                        ; preds = %lor.rhs.do.body40_crit_edge, %while.body.do.body40_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 601, 0\0A.popsection", ""() #11, !srcloc !318
  unreachable

do.end46:                                         ; preds = %lor.rhs
  %40 = getelementptr %struct.vmxnet3_rx_buf_info, ptr %1, i32 %3, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %cmp47 = icmp eq ptr %42, null
  br i1 %cmp47, label %if.then49, label %do.end46.if.end80_crit_edge

do.end46.if.end80_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then49:                                        ; preds = %do.end46
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 2592, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call38.i.i.i, ptr %40, align 4
  %cmp51 = icmp eq ptr %call38.i.i.i, null
  br i1 %cmp51, label %if.then49.do.body102.sink.split_crit_edge, label %if.end63, !prof !280

if.then49.do.body102.sink.split_crit_edge:        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body102.sink.split

if.end63:                                         ; preds = %if.then49
  %44 = ptrtoint ptr %pdev64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev64, align 4
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %call66 = tail call i32 @dma_map_page_attrs(ptr noundef %dev65, ptr noundef nonnull %call38.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #11
  %dma_addr67 = getelementptr %struct.vmxnet3_rx_buf_info, ptr %1, i32 %3, i32 3
  %46 = ptrtoint ptr %dma_addr67 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call66, ptr %dma_addr67, align 4
  %47 = ptrtoint ptr %pdev64 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev64, align 4
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev69, i32 noundef %call66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call66)
  %cmp.i197.not = icmp eq i32 %call66, -1
  br i1 %cmp.i197.not, label %if.then73, label %if.end63.if.end80_crit_edge

if.end63.if.end80_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then73:                                        ; preds = %if.end63
  %49 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %40, align 4
  %51 = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i199 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i199, label %if.end.i.i200, label %if.then.i.i, !prof !277

if.then.i.i:                                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %53, -1
  br label %_compound_head.exit.i

if.end.i.i200:                                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %50 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i200, %if.then.i.i
  %retval.0.i.i201 = phi i32 [ %sub.i.i, %if.then.i.i ], [ %54, %if.end.i.i200 ]
  %55 = inttoptr i32 %retval.0.i.i201 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %56 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i.i.i = icmp eq i32 %57, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !280

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %55, ptr noundef nonnull @.str.20) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !319
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !320
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !321
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %58, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !322
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@vmxnet3_rq_alloc_rx_buf, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !279

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %55, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.do.body102.sink.split_crit_edge

folio_put_testzero.exit.i.i.do.body102.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body102.sink.split

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %55) #11
  br label %do.body102.sink.split

if.end80:                                         ; preds = %if.end63.if.end80_crit_edge, %do.end46.if.end80_crit_edge, %dma_map_single_attrs.exit.if.end80_crit_edge, %if.then.if.end80_crit_edge
  %val.0 = phi i32 [ 0, %if.then.if.end80_crit_edge ], [ 16384, %do.end46.if.end80_crit_edge ], [ 16384, %if.end63.if.end80_crit_edge ], [ 0, %dma_map_single_attrs.exit.if.end80_crit_edge ]
  %dma_addr81 = getelementptr %struct.vmxnet3_rx_buf_info, ptr %1, i32 %3, i32 3
  %59 = ptrtoint ptr %dma_addr81 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dma_addr81, align 4
  %conv82 = zext i32 %60 to i64
  %61 = tail call i64 @llvm.bswap.i64(i64 %conv82)
  %62 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %add.ptr3, align 8
  %63 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %gen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool83.not = icmp eq i8 %64, 0
  %shl = select i1 %tobool83.not, i32 -2147483648, i32 0
  %or = or i32 %shl, %val.0
  %len86 = getelementptr %struct.vmxnet3_rx_buf_info, ptr %1, i32 %3, i32 1
  %65 = ptrtoint ptr %len86 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %len86, align 4
  %conv87 = zext i16 %66 to i32
  %or88 = or i32 %or, %conv87
  %67 = tail call i32 @llvm.bswap.i32(i32 %or88)
  %arrayidx89 = getelementptr [4 x i32], ptr %add.ptr3, i32 0, i32 2
  %68 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx89, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %num_allocated.0221, i32 %num_to_alloc)
  %cmp90 = icmp eq i32 %num_allocated.0221, %num_to_alloc
  br i1 %cmp90, label %if.end80.do.body102_crit_edge, label %if.end93

if.end80.do.body102_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body102

if.end93:                                         ; preds = %if.end80
  %69 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %gen, align 4
  %conv95 = zext i8 %70 to i32
  %71 = shl nuw nsw i32 %conv95, 7
  %72 = and i32 %71, 128
  %or98 = or i32 %72, %67
  %73 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or98, ptr %arrayidx89, align 8
  %inc99 = add nuw i32 %num_allocated.0221, 1
  %74 = ptrtoint ptr %next2fill to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %next2fill, align 4
  %inc.i = add i32 %75, 1
  store i32 %inc.i, ptr %next2fill, align 4
  %76 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %77)
  %cmp.i202 = icmp eq i32 %inc.i, %77
  br i1 %cmp.i202, label %if.then.i203, label %if.end93.cleanup_crit_edge, !prof !280

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i203:                                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %next2fill to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %next2fill, align 4
  %79 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %gen, align 4
  %81 = xor i8 %80, 1
  store i8 %81, ptr %gen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i203, %if.end93.cleanup_crit_edge
  %cmp.not = icmp sgt i32 %inc99, %num_to_alloc
  br i1 %cmp.not, label %cleanup.do.body102_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.do.body102_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body102

do.body102.sink.split:                            ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.do.body102.sink.split_crit_edge, %if.then49.do.body102.sink.split_crit_edge, %if.then19, %if.then10
  %rx_buf_alloc_failure = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 12, i32 3
  %82 = ptrtoint ptr %rx_buf_alloc_failure to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %rx_buf_alloc_failure, align 8
  %inc76 = add i64 %83, 1
  store i64 %inc76, ptr %rx_buf_alloc_failure, align 8
  br label %do.body102

do.body102:                                       ; preds = %do.body102.sink.split, %cleanup.do.body102_crit_edge, %if.end80.do.body102_crit_edge, %entry.do.body102_crit_edge
  %num_allocated.0218 = phi i32 [ 0, %entry.do.body102_crit_edge ], [ %num_allocated.0221, %do.body102.sink.split ], [ %inc99, %cleanup.do.body102_crit_edge ], [ %num_to_alloc, %if.end80.do.body102_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vmxnet3_rq_alloc_rx_buf.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vmxnet3_rq_alloc_rx_buf, %if.then111)) #11
          to label %do.body119 [label %if.then111], !srcloc !279

if.then111:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #13
  %netdev112 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %84 = ptrtoint ptr %netdev112 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %netdev112, align 16
  %next2fill113 = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 %ring_idx, i32 2
  %86 = ptrtoint ptr %next2fill113 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %next2fill113, align 4
  %next2comp = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 %ring_idx, i32 3
  %88 = ptrtoint ptr %next2comp to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %next2comp, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @vmxnet3_rq_alloc_rx_buf.__UNIQUE_ID_ddebug500, ptr noundef %85, ptr noundef nonnull @.str.16, i32 noundef %num_allocated.0218, i32 noundef %87, i32 noundef %89) #11
  br label %do.body119

do.body119:                                       ; preds = %if.then111, %do.body102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_allocated.0218)
  %cmp120.not = icmp eq i32 %num_allocated.0218, 0
  br i1 %cmp120.not, label %do.body119.do.end141_crit_edge, label %land.rhs

do.body119.do.end141_crit_edge:                   ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end141

land.rhs:                                         ; preds = %do.body119
  %next2fill122 = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 %ring_idx, i32 2
  %90 = ptrtoint ptr %next2fill122 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %next2fill122, align 4
  %next2comp123 = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 %ring_idx, i32 3
  %92 = ptrtoint ptr %next2comp123 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %next2comp123, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp124 = icmp eq i32 %91, %93
  br i1 %cmp124, label %do.body133, label %land.rhs.do.end141_crit_edge, !prof !280

land.rhs.do.end141_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end141

do.body133:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 644, 0\0A.popsection", ""() #11, !srcloc !323
  unreachable

do.end141:                                        ; preds = %land.rhs.do.end141_crit_edge, %do.body119.do.end141_crit_edge
  ret i32 %num_allocated.0218
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_msix_tx(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %intr = getelementptr inbounds %struct.vmxnet3_adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %intr_idx = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %data, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %intr_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %intr_idx, align 1
  %conv = zext i8 %5 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !311
  tail call void @arm_heavy_mb() #11
  %hw_addr0.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %hw_addr0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr0.i, align 8
  %mul.i = shl nuw nsw i32 %conv, 3
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #11, !srcloc !284
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %share_intr = getelementptr inbounds %struct.vmxnet3_adapter, ptr %1, i32 0, i32 36
  %8 = ptrtoint ptr %share_intr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %share_intr, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp2 = icmp eq i32 %9, 1
  br i1 %cmp2, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end
  %num_tx_queues = getelementptr inbounds %struct.vmxnet3_adapter, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_queues, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp527.not = icmp eq i32 %11, 0
  br i1 %cmp527.not, label %for.cond.preheader.if.end8_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %1, i32 0, i32 %i.028
  tail call fastcc void @vmxnet3_tq_tx_complete(ptr noundef %arrayidx, ptr noundef %1)
  %inc = add nuw i32 %i.028, 1
  %12 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues, align 16
  %cmp5 = icmp ult i32 %inc, %13
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.if.end8_crit_edge

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @vmxnet3_tq_tx_complete(ptr noundef %data, ptr noundef %1)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.body.if.end8_crit_edge, %for.cond.preheader.if.end8_crit_edge
  %intr_idx10 = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %data, i32 0, i32 6, i32 4
  %14 = ptrtoint ptr %intr_idx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %intr_idx10, align 1
  %conv11 = zext i8 %15 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  tail call void @arm_heavy_mb() #11
  %hw_addr0.i24 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %hw_addr0.i24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_addr0.i24, align 8
  %mul.i25 = shl nuw nsw i32 %conv11, 3
  %add.ptr.i26 = getelementptr i8, ptr %17, i32 %mul.i25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 0) #11, !srcloc !284
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_msix_rx(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %intr = getelementptr inbounds %struct.vmxnet3_adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %intr_idx = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %data, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %intr_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %intr_idx, align 1
  %conv = zext i8 %5 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !311
  tail call void @arm_heavy_mb() #11
  %hw_addr0.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %hw_addr0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr0.i, align 8
  %mul.i = shl nuw nsw i32 %conv, 3
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #11, !srcloc !284
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %napi = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %data, i32 0, i32 2
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #11
  br i1 %call.i, label %if.then.i, label %if.end.napi_schedule.exit_crit_edge

if.end.napi_schedule.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__napi_schedule(ptr noundef %napi) #11
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %if.end.napi_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_msix_event(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %data, i32 2304
  %intr = getelementptr i8, ptr %data, i32 27392
  %0 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intr, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %event_intr_idx = getelementptr i8, ptr %data, i32 27401
  %2 = ptrtoint ptr %event_intr_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %event_intr_idx, align 1
  %conv = zext i8 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !311
  tail call void @arm_heavy_mb() #11
  %hw_addr0.i = getelementptr i8, ptr %data, i32 28088
  %4 = ptrtoint ptr %hw_addr0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr0.i, align 8
  %mul.i = shl nuw nsw i32 %conv, 3
  %add.ptr.i13 = getelementptr i8, ptr %5, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 16777216) #11, !srcloc !284
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %shared = getelementptr i8, ptr %data, i32 28064
  %6 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shared, align 32
  %ecr = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ecr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ecr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @vmxnet3_process_events(ptr noundef %add.ptr.i)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %event_intr_idx5 = getelementptr i8, ptr %data, i32 27401
  %10 = ptrtoint ptr %event_intr_idx5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %event_intr_idx5, align 1
  %conv6 = zext i8 %11 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  tail call void @arm_heavy_mb() #11
  %hw_addr0.i14 = getelementptr i8, ptr %data, i32 28088
  %12 = ptrtoint ptr %hw_addr0.i14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr0.i14, align 8
  %mul.i15 = shl nuw nsw i32 %conv6, 3
  %add.ptr.i16 = getelementptr i8, ptr %13, i32 %mul.i15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 0) #11, !srcloc !284
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_intr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %intr = getelementptr i8, ptr %dev_id, i32 27392
  %type = getelementptr i8, ptr %dev_id, i32 27396
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %hw_addr1 = getelementptr i8, ptr %dev_id, i32 28092
  %2 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 56
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %if.then.cleanup11_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then.cleanup11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup11

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %5 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %intr, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp8 = icmp eq i32 %6, 1
  br i1 %cmp8, label %if.then9, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  %shared.i = getelementptr i8, ptr %dev_id, i32 28064
  %7 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shared.i, align 32
  %intrCtrl.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %8, i32 0, i32 2, i32 1, i32 4
  %9 = ptrtoint ptr %intrCtrl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %intrCtrl.i, align 4
  %or.i = or i32 %10, 16777216
  store i32 %or.i, ptr %intrCtrl.i, align 4
  %num_intrs.i = getelementptr i8, ptr %dev_id, i32 27400
  %11 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_intrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp7.not.i = icmp eq i8 %12, 0
  br i1 %cmp7.not.i, label %if.then9.if.end10_crit_edge, label %for.body.lr.ph.i

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

for.body.lr.ph.i:                                 ; preds = %if.then9
  %hw_addr0.i.i = getelementptr i8, ptr %dev_id, i32 28088
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !311
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %hw_addr0.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_addr0.i.i, align 8
  %mul.i.i = shl i32 %i.08.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #11, !srcloc !284
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %15 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_intrs.i, align 8
  %conv.i = zext i8 %16 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end10_crit_edge

for.body.i.if.end10_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end10:                                         ; preds = %for.body.i.if.end10_crit_edge, %if.then9.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %napi = getelementptr i8, ptr %dev_id, i32 10528
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #11
  br i1 %call.i, label %if.then.i, label %if.end10.cleanup11_crit_edge

if.end10.cleanup11_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup11

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__napi_schedule(ptr noundef %napi) #11
  br label %cleanup11

cleanup11:                                        ; preds = %if.then.i, %if.end10.cleanup11_crit_edge, %if.then.cleanup11_crit_edge
  %retval.1 = phi i32 [ 0, %if.then.cleanup11_crit_edge ], [ 1, %if.end10.cleanup11_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vmxnet3_tq_tx_complete(ptr noundef %tq, ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %comp_ring = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 6
  %0 = ptrtoint ptr %comp_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp_ring, align 16
  %next2proc = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %next2proc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next2proc, align 8
  %add.ptr = getelementptr %union.Vmxnet3_GenericDesc, ptr %1, i32 %3
  %gen = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 6, i32 3
  %add.ptr213 = getelementptr i32, ptr %add.ptr, i32 3
  %4 = ptrtoint ptr %add.ptr213 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr213, align 4
  %6 = lshr i32 %5, 7
  %shr.i14 = and i32 %6, 1
  %7 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %gen, align 4
  %conv15 = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i14, i32 %conv15)
  %cmp17 = icmp eq i32 %shr.i14, %conv15
  br i1 %cmp17, label %while.body.lr.ph, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

while.body.lr.ph:                                 ; preds = %entry
  %pdev = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  %buf_info.i = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 4
  %next2comp.i = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3, i32 3
  %tx_ring.i = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3
  %size.i = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3, i32 1
  %size.i4 = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 6, i32 1
  br label %while.body

while.body:                                       ; preds = %vmxnet3_comp_ring_adv_next2proc.exit.while.body_crit_edge, %while.body.lr.ph
  %gdesc.019 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr12, %vmxnet3_comp_ring_adv_next2proc.exit.while.body_crit_edge ]
  %completed.018 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %vmxnet3_comp_ring_adv_next2proc.exit.while.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !325
  %9 = ptrtoint ptr %gdesc.019 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gdesc.019, align 4
  %11 = and i32 %10, -15794176
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %15 = ptrtoint ptr %buf_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf_info.i, align 32
  %sop_idx.i = getelementptr %struct.vmxnet3_tx_buf_info, ptr %16, i32 %12, i32 2
  %17 = ptrtoint ptr %sop_idx.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sop_idx.i, align 2
  %conv.i = zext i16 %18 to i32
  %19 = ptrtoint ptr %next2comp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %next2comp.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %20, %conv.i
  br i1 %cmp.not.i, label %do.body9.i, label %do.body3.i, !prof !277

do.body3.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 336, 0\0A.popsection", ""() #11, !srcloc !326
  unreachable

do.body9.i:                                       ; preds = %while.body
  %21 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_ring.i, align 8
  %arrayidx11.i = getelementptr %union.Vmxnet3_GenericDesc, ptr %22, i32 %12
  %add.ptr.i = getelementptr i32, ptr %arrayidx11.i, i32 3
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 4
  %25 = and i32 %24, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp12.not.not.i = icmp eq i32 %25, 0
  br i1 %cmp12.not.not.i, label %do.body21.i, label %do.end29.i, !prof !280

do.body21.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 337, 0\0A.popsection", ""() #11, !srcloc !327
  unreachable

do.end29.i:                                       ; preds = %do.body9.i
  %skb32.i = getelementptr %struct.vmxnet3_tx_buf_info, ptr %16, i32 %12, i32 4
  %26 = ptrtoint ptr %skb32.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skb32.i, align 4
  %cmp34.i = icmp eq ptr %27, null
  br i1 %cmp34.i, label %do.body43.i, label %do.end51.i, !prof !280

do.body43.i:                                      ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 340, 0\0A.popsection", ""() #11, !srcloc !328
  unreachable

do.end51.i:                                       ; preds = %do.end29.i
  %28 = ptrtoint ptr %skb32.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %skb32.i, align 4
  %inc.i = add nuw nsw i32 %12, 1
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %30)
  %cmp57.i = icmp eq i32 %inc.i, %30
  br i1 %cmp57.i, label %if.then65.i, label %do.end51.i.do.end68.i_crit_edge, !prof !280

do.end51.i.do.end68.i_crit_edge:                  ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68.i

if.then65.i:                                      ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68.i

do.end68.i:                                       ; preds = %if.then65.i, %do.end51.i.do.end68.i_crit_edge
  %eop_idx.addr.0.i = phi i32 [ 0, %if.then65.i ], [ %inc.i, %do.end51.i.do.end68.i_crit_edge ]
  %31 = ptrtoint ptr %next2comp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %next2comp.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %eop_idx.addr.0.i)
  %cmp71.not2.i = icmp eq i32 %32, %eop_idx.addr.0.i
  br i1 %cmp71.not2.i, label %do.end68.i.vmxnet3_unmap_pkt.exit_crit_edge, label %while.body.lr.ph.i

do.end68.i.vmxnet3_unmap_pkt.exit_crit_edge:      ; preds = %do.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_unmap_pkt.exit

while.body.lr.ph.i:                               ; preds = %do.end68.i
  %dev5.i.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  br label %while.body.i

while.body.i:                                     ; preds = %vmxnet3_cmd_ring_adv_next2comp.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %33 = phi i32 [ %32, %while.body.lr.ph.i ], [ %50, %vmxnet3_cmd_ring_adv_next2comp.exit.i.while.body.i_crit_edge ]
  %entries.03.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc78.i, %vmxnet3_cmd_ring_adv_next2comp.exit.i.while.body.i_crit_edge ]
  %34 = ptrtoint ptr %buf_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf_info.i, align 32
  %add.ptr76.i = getelementptr %struct.vmxnet3_tx_buf_info, ptr %35, i32 %33
  %36 = ptrtoint ptr %add.ptr76.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr76.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %37, label %do.body15.i.i [
    i32 2, label %while.body.i.if.end20.sink.split.i.i_crit_edge
    i32 3, label %while.body.i.if.end20.sink.split.i.i_crit_edge21
    i32 1, label %while.body.i.vmxnet3_unmap_tx_buf.exit.i_crit_edge
  ], !prof !312

while.body.i.vmxnet3_unmap_tx_buf.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_unmap_tx_buf.exit.i

while.body.i.if.end20.sink.split.i.i_crit_edge21: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.sink.split.i.i

while.body.i.if.end20.sink.split.i.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.sink.split.i.i

do.body15.i.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 322, 0\0A.popsection", ""() #11, !srcloc !313
  unreachable

if.end20.sink.split.i.i:                          ; preds = %while.body.i.if.end20.sink.split.i.i_crit_edge, %while.body.i.if.end20.sink.split.i.i_crit_edge21
  %dma_addr6.i.i = getelementptr %struct.vmxnet3_tx_buf_info, ptr %35, i32 %33, i32 3
  %39 = ptrtoint ptr %dma_addr6.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_addr6.i.i, align 4
  %len7.i.i = getelementptr %struct.vmxnet3_tx_buf_info, ptr %35, i32 %33, i32 1
  %41 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %len7.i.i, align 4
  %conv8.i.i = zext i16 %42 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev5.i.i, i32 noundef %40, i32 noundef %conv8.i.i, i32 noundef 1, i32 noundef 0) #11
  br label %vmxnet3_unmap_tx_buf.exit.i

vmxnet3_unmap_tx_buf.exit.i:                      ; preds = %if.end20.sink.split.i.i, %while.body.i.vmxnet3_unmap_tx_buf.exit.i_crit_edge
  %43 = ptrtoint ptr %add.ptr76.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %add.ptr76.i, align 4
  %44 = ptrtoint ptr %next2comp.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %next2comp.i, align 4
  %inc.i.i = add i32 %45, 1
  store i32 %inc.i.i, ptr %next2comp.i, align 4
  %46 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %47)
  %cmp.i.i = icmp eq i32 %inc.i.i, %47
  br i1 %cmp.i.i, label %if.then.i.i, label %vmxnet3_unmap_tx_buf.exit.i.vmxnet3_cmd_ring_adv_next2comp.exit.i_crit_edge, !prof !280

vmxnet3_unmap_tx_buf.exit.i.vmxnet3_cmd_ring_adv_next2comp.exit.i_crit_edge: ; preds = %vmxnet3_unmap_tx_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_cmd_ring_adv_next2comp.exit.i

if.then.i.i:                                      ; preds = %vmxnet3_unmap_tx_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %next2comp.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %next2comp.i, align 4
  br label %vmxnet3_cmd_ring_adv_next2comp.exit.i

vmxnet3_cmd_ring_adv_next2comp.exit.i:            ; preds = %if.then.i.i, %vmxnet3_unmap_tx_buf.exit.i.vmxnet3_cmd_ring_adv_next2comp.exit.i_crit_edge
  %inc78.i = add i32 %entries.03.i, 1
  %49 = ptrtoint ptr %next2comp.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %next2comp.i, align 4
  %cmp71.not.i = icmp eq i32 %50, %eop_idx.addr.0.i
  br i1 %cmp71.not.i, label %vmxnet3_cmd_ring_adv_next2comp.exit.i.vmxnet3_unmap_pkt.exit_crit_edge, label %vmxnet3_cmd_ring_adv_next2comp.exit.i.while.body.i_crit_edge

vmxnet3_cmd_ring_adv_next2comp.exit.i.while.body.i_crit_edge: ; preds = %vmxnet3_cmd_ring_adv_next2comp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

vmxnet3_cmd_ring_adv_next2comp.exit.i.vmxnet3_unmap_pkt.exit_crit_edge: ; preds = %vmxnet3_cmd_ring_adv_next2comp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_unmap_pkt.exit

vmxnet3_unmap_pkt.exit:                           ; preds = %vmxnet3_cmd_ring_adv_next2comp.exit.i.vmxnet3_unmap_pkt.exit_crit_edge, %do.end68.i.vmxnet3_unmap_pkt.exit_crit_edge
  %entries.0.lcssa.i = phi i32 [ 0, %do.end68.i.vmxnet3_unmap_pkt.exit_crit_edge ], [ %inc78.i, %vmxnet3_cmd_ring_adv_next2comp.exit.i.vmxnet3_unmap_pkt.exit_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %27, i32 noundef 1) #11
  %add = add i32 %entries.0.lcssa.i, %completed.018
  %51 = ptrtoint ptr %next2proc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %next2proc, align 4
  %inc.i3 = add i32 %52, 1
  store i32 %inc.i3, ptr %next2proc, align 4
  %53 = ptrtoint ptr %size.i4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size.i4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i3, i32 %54)
  %cmp.i = icmp eq i32 %inc.i3, %54
  br i1 %cmp.i, label %if.then.i, label %vmxnet3_unmap_pkt.exit.vmxnet3_comp_ring_adv_next2proc.exit_crit_edge, !prof !280

vmxnet3_unmap_pkt.exit.vmxnet3_comp_ring_adv_next2proc.exit_crit_edge: ; preds = %vmxnet3_unmap_pkt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_comp_ring_adv_next2proc.exit

if.then.i:                                        ; preds = %vmxnet3_unmap_pkt.exit
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %next2proc to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %next2proc, align 4
  %56 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %gen, align 4
  %58 = xor i8 %57, 1
  store i8 %58, ptr %gen, align 4
  br label %vmxnet3_comp_ring_adv_next2proc.exit

vmxnet3_comp_ring_adv_next2proc.exit:             ; preds = %if.then.i, %vmxnet3_unmap_pkt.exit.vmxnet3_comp_ring_adv_next2proc.exit_crit_edge
  %59 = ptrtoint ptr %comp_ring to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %comp_ring, align 16
  %61 = ptrtoint ptr %next2proc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %next2proc, align 8
  %add.ptr12 = getelementptr %union.Vmxnet3_GenericDesc, ptr %60, i32 %62
  %add.ptr2 = getelementptr i32, ptr %add.ptr12, i32 3
  %63 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr2, align 4
  %65 = lshr i32 %64, 7
  %shr.i = and i32 %65, 1
  %66 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %gen, align 4
  %conv = zext i8 %67 to i32
  %cmp = icmp eq i32 %shr.i, %conv
  br i1 %cmp, label %vmxnet3_comp_ring_adv_next2proc.exit.while.body_crit_edge, label %while.end

vmxnet3_comp_ring_adv_next2proc.exit.while.body_crit_edge: ; preds = %vmxnet3_comp_ring_adv_next2proc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %vmxnet3_comp_ring_adv_next2proc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %phi.cmp = icmp eq i32 %add, 0
  br i1 %phi.cmp, label %while.end.if.end24_crit_edge, label %if.then

while.end.if.end24_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then:                                          ; preds = %while.end
  %tx_lock = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %tx_lock) #11
  %stopped.i = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 9
  %68 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %stopped.i, align 16, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.i.not = icmp eq i8 %69, 0
  br i1 %tobool.i.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %next2comp.i5 = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3, i32 3
  %70 = ptrtoint ptr %next2comp.i5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %next2comp.i5, align 4
  %next2fill.i = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3, i32 2
  %72 = ptrtoint ptr %next2fill.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %next2fill.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp.i6 = icmp ugt i32 %71, %73
  br i1 %cmp.i6, label %land.lhs.true.vmxnet3_cmd_ring_desc_avail.exit_crit_edge, label %cond.false.i

land.lhs.true.vmxnet3_cmd_ring_desc_avail.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_cmd_ring_desc_avail.exit

cond.false.i:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %size.i7 = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3, i32 1
  %74 = ptrtoint ptr %size.i7 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size.i7, align 4
  br label %vmxnet3_cmd_ring_desc_avail.exit

vmxnet3_cmd_ring_desc_avail.exit:                 ; preds = %cond.false.i, %land.lhs.true.vmxnet3_cmd_ring_desc_avail.exit_crit_edge
  %cond.i = phi i32 [ %75, %cond.false.i ], [ 0, %land.lhs.true.vmxnet3_cmd_ring_desc_avail.exit_crit_edge ]
  %76 = xor i32 %73, -1
  %add.i = add i32 %71, %76
  %sub3.i = add i32 %add.i, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub3.i)
  %cmp16 = icmp sgt i32 %sub3.i, 5
  br i1 %cmp16, label %land.rhs, label %vmxnet3_cmd_ring_desc_avail.exit.if.end_crit_edge

vmxnet3_cmd_ring_desc_avail.exit.if.end_crit_edge: ; preds = %vmxnet3_cmd_ring_desc_avail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %vmxnet3_cmd_ring_desc_avail.exit
  %netdev = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %77 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %netdev, align 16
  %state.i = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %state.i, align 4
  %81 = and i32 %80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i = icmp eq i32 %81, 0
  br i1 %tobool.not.i, label %if.then22, label %land.rhs.if.end_crit_edge, !prof !280

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then22:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %stopped.i, align 16
  %83 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %netdev, align 16
  %sub.ptr.lhs.cast.i = ptrtoint ptr %tq to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %adapter to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %85 = lshr exact i32 %sub.ptr.sub.i, 8
  %conv.i.i = and i32 %85, 65535
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 103
  %86 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %_tx.i.i.i, align 128
  %arrayidx.i.i.i = getelementptr %struct.netdev_queue, ptr %87, i32 %conv.i.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then22, %land.rhs.if.end_crit_edge, %vmxnet3_cmd_ring_desc_avail.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock) #11
  br label %if.end24

if.end24:                                         ; preds = %if.end, %while.end.if.end24_crit_edge, %entry.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vmxnet3_process_events(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %shared = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 5
  %0 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shared, align 32
  %ecr = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ecr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecr, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %hw_addr1.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 12
  %5 = ptrtoint ptr %hw_addr1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #11, !srcloc !284
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @vmxnet3_check_link(ptr noundef %adapter, i1 noundef zeroext true)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %and4 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %do.body7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body7:                                         ; preds = %if.end3
  %cmd_lock = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 4
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %hw_addr1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr1.i, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 3568) #11, !srcloc !284
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call8) #11
  %num_tx_queues = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 17
  %9 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_tx_queues, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1584.not = icmp eq i32 %10, 0
  br i1 %cmp1584.not, label %do.body7.for.cond27.preheader_crit_edge, label %for.body.lr.ph

do.body7.for.cond27.preheader_crit_edge:          ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond27.preheader

for.body.lr.ph:                                   ; preds = %do.body7
  %tqd_start = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 7
  %netdev = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  br label %for.body

for.cond27.preheader:                             ; preds = %for.inc.for.cond27.preheader_crit_edge, %do.body7.for.cond27.preheader_crit_edge
  %num_rx_queues = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 16
  %11 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2887.not = icmp eq i32 %12, 0
  br i1 %cmp2887.not, label %for.cond27.preheader.for.end51_crit_edge, label %for.body30.lr.ph

for.cond27.preheader.for.end51_crit_edge:         ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end51

for.body30.lr.ph:                                 ; preds = %for.cond27.preheader
  %rqd_start = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 8
  %netdev39 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  br label %for.body30

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %tqd_start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tqd_start, align 8
  %status = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %14, i32 %i.085, i32 2
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %status, align 8, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool17.not = icmp eq i8 %16, 0
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %do.end21

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev, align 16
  %dev = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 133
  %error = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %14, i32 %i.085, i32 2, i32 2
  %19 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %error, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef %18, i32 noundef %i.085, i32 noundef %21) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end21, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.085, 1
  %22 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_tx_queues, align 16
  %cmp15 = icmp ult i32 %inc, %23
  br i1 %cmp15, label %for.inc.for.body_crit_edge, label %for.inc.for.cond27.preheader_crit_edge

for.inc.for.cond27.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond27.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body30:                                       ; preds = %for.inc49.for.body30_crit_edge, %for.body30.lr.ph
  %i.188 = phi i32 [ 0, %for.body30.lr.ph ], [ %inc50, %for.inc49.for.body30_crit_edge ]
  %24 = ptrtoint ptr %rqd_start to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rqd_start, align 4
  %status32 = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %25, i32 %i.188, i32 2
  %26 = ptrtoint ptr %status32 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %status32, align 8, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool34.not = icmp eq i8 %27, 0
  br i1 %tobool34.not, label %for.body30.for.inc49_crit_edge, label %do.end38

for.body30.for.inc49_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc49

do.end38:                                         ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %netdev39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev39, align 16
  %dev40 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 133
  %error47 = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %25, i32 %i.188, i32 2, i32 2
  %30 = ptrtoint ptr %error47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.32, ptr noundef %29, i32 noundef %i.188, i32 noundef %31) #14
  br label %for.inc49

for.inc49:                                        ; preds = %do.end38, %for.body30.for.inc49_crit_edge
  %inc50 = add nuw i32 %i.188, 1
  %32 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_rx_queues, align 4
  %cmp28 = icmp ult i32 %inc50, %33
  br i1 %cmp28, label %for.inc49.for.body30_crit_edge, label %for.inc49.for.end51_crit_edge

for.inc49.for.end51_crit_edge:                    ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end51

for.inc49.for.body30_crit_edge:                   ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body30

for.end51:                                        ; preds = %for.inc49.for.end51_crit_edge, %for.cond27.preheader.for.end51_crit_edge
  %work = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %34 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %work) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end51, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rss_key_fill(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vmxnet3_rq_cleanup(ptr nocapture noundef %rq, ptr nocapture noundef readonly %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev30 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end.for.cond1.preheader_crit_edge, %entry
  %ring_idx.097 = phi i32 [ 0, %entry ], [ %inc51, %for.end.for.cond1.preheader_crit_edge ]
  %size = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 %ring_idx.097, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp294.not = icmp eq i32 %1, 0
  br i1 %cmp294.not, label %for.cond1.preheader.for.end_crit_edge, label %for.body3.lr.ph

for.cond1.preheader.for.end_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %arrayidx = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 %ring_idx.097
  %arrayidx26 = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 10, i32 %ring_idx.097
  br label %for.body3

for.body3:                                        ; preds = %if.end43.for.body3_crit_edge, %for.body3.lr.ph
  %i.095 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc, %if.end43.for.body3_crit_edge ]
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %arrayidx6 = getelementptr %union.Vmxnet3_GenericDesc, ptr %3, i32 %i.095
  %add.ptr.i = getelementptr i32, ptr %arrayidx6, i32 2
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx6, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5) #11
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  %10 = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7 = icmp eq i32 %10, 0
  %11 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx26, align 4
  %13 = getelementptr %struct.vmxnet3_rx_buf_info, ptr %12, i32 %i.095, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %cmp7, label %land.lhs.true, label %land.lhs.true24

land.lhs.true:                                    ; preds = %for.body3
  br i1 %tobool.not, label %land.lhs.true.if.end43_crit_edge, label %if.then

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %pdev30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev30, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %conv = trunc i64 %6 to i32
  %bf.clear11 = and i32 %9, 16383
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv, i32 noundef %bf.clear11, i32 noundef 2, i32 noundef 0) #11
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx26, align 4
  %20 = getelementptr %struct.vmxnet3_rx_buf_info, ptr %19, i32 %i.095, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  tail call void @consume_skb(ptr noundef %22) #11
  br label %if.end43.sink.split

land.lhs.true24:                                  ; preds = %for.body3
  br i1 %tobool.not, label %land.lhs.true24.if.end43_crit_edge, label %if.then29

land.lhs.true24.if.end43_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then29:                                        ; preds = %land.lhs.true24
  %23 = ptrtoint ptr %pdev30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev30, align 4
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %conv33 = trunc i64 %6 to i32
  %bf.clear36 = and i32 %9, 16383
  tail call void @dma_unmap_page_attrs(ptr noundef %dev31, i32 noundef %conv33, i32 noundef %bf.clear36, i32 noundef 2, i32 noundef 0) #11
  %25 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx26, align 4
  %27 = getelementptr %struct.vmxnet3_rx_buf_info, ptr %26, i32 %i.095, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !277

if.then.i.i:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %32, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %29 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %33, %if.end.i.i ]
  %34 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %35 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i.i.i = icmp eq i32 %36, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !280

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.20) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !319
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !320
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !321
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !322
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@vmxnet3_rq_cleanup, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !279

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %34, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end43.sink.split_crit_edge

folio_put_testzero.exit.i.i.if.end43.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.sink.split

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %34) #11
  br label %if.end43.sink.split

if.end43.sink.split:                              ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end43.sink.split_crit_edge, %if.then
  %39 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx26, align 4
  %41 = getelementptr %struct.vmxnet3_rx_buf_info, ptr %40, i32 %i.095, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %41, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %land.lhs.true24.if.end43_crit_edge, %land.lhs.true.if.end43_crit_edge
  %inc = add nuw i32 %i.095, 1
  %43 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size, align 4
  %cmp2 = icmp ult i32 %inc, %44
  br i1 %cmp2, label %if.end43.for.body3_crit_edge, label %if.end43.for.end_crit_edge

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end43.for.body3_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3

for.end:                                          ; preds = %if.end43.for.end_crit_edge, %for.cond1.preheader.for.end_crit_edge
  %gen = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 %ring_idx.097, i32 4
  %45 = ptrtoint ptr %gen to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %gen, align 8
  %next2comp = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 %ring_idx.097, i32 3
  %46 = ptrtoint ptr %next2comp to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %next2comp, align 4
  %next2fill = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 %ring_idx.097, i32 2
  %47 = ptrtoint ptr %next2fill to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %next2fill, align 8
  %inc51 = add nuw nsw i32 %ring_idx.097, 1
  %exitcond.not = icmp eq i32 %inc51, 2
  br i1 %exitcond.not, label %for.end52, label %for.end.for.cond1.preheader_crit_edge

for.end.for.cond1.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader

for.end52:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %gen53 = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 5, i32 3
  %48 = ptrtoint ptr %gen53 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %gen53, align 4
  %next2proc = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 5, i32 2
  %49 = ptrtoint ptr %next2proc to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %next2proc, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_probe_device(ptr noundef %pdev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %mac = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #11
  %0 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %1 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 5
  %2 = call ptr @memset(ptr %mac, i32 255, i32 6)
  %call = tail call i32 @pci_msi_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @enable_mq, align 4
  br label %if.end15

if.end:                                           ; preds = %entry
  %.b714.pr = load i1, ptr @enable_mq, align 4
  br i1 %.b714.pr, label %if.end.if.end15_crit_edge, label %if.end4

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end4:                                          ; preds = %if.end
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %3 = load volatile i32, ptr @__num_online_cpus, align 4
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 32)
  %.b.pr = load i1, ptr @enable_mq, align 4
  br i1 %.b.pr, label %if.end4.if.end15_crit_edge, label %if.then6

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i719 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %5 = load volatile i32, ptr @__num_online_cpus, align 4
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 32)
  br label %if.end15

if.end15:                                         ; preds = %if.then6, %if.end4.if.end15_crit_edge, %if.end.if.end15_crit_edge, %if.end.thread
  %num_rx_queues.0751 = phi i32 [ %4, %if.then6 ], [ %4, %if.end4.if.end15_crit_edge ], [ 1, %if.end.thread ], [ 1, %if.end.if.end15_crit_edge ]
  %num_tx_queues.0 = phi i32 [ %6, %if.then6 ], [ 1, %if.end4.if.end15_crit_edge ], [ 1, %if.end.thread ], [ 1, %if.end.if.end15_crit_edge ]
  %7 = tail call i32 @llvm.smax.i32(i32 %num_tx_queues.0, i32 %num_rx_queues.0751)
  %call30 = tail call ptr @alloc_etherdev_mqs(i32 noundef 25984, i32 noundef %7, i32 noundef %7) #11
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end15.cleanup_crit_edge, label %if.end33

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end33:                                         ; preds = %if.end15
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call30, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call30, i32 2304
  %netdev35 = getelementptr i8, ptr %call30, i32 28080
  %9 = ptrtoint ptr %netdev35 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call30, ptr %netdev35, align 16
  %pdev36 = getelementptr i8, ptr %call30, i32 28084
  %10 = ptrtoint ptr %pdev36 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pdev, ptr %pdev36, align 4
  %tx_ring_size = getelementptr i8, ptr %call30, i32 28152
  %11 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 512, ptr %tx_ring_size, align 8
  %rx_ring_size = getelementptr i8, ptr %call30, i32 28156
  %12 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1024, ptr %rx_ring_size, align 4
  %rx_ring2_size = getelementptr i8, ptr %call30, i32 28160
  %13 = ptrtoint ptr %rx_ring2_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 256, ptr %rx_ring2_size, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %do.body42, label %do.end

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #14
  br label %err_set_mask

do.body42:                                        ; preds = %if.end33
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #11
  %cmd_lock = getelementptr i8, ptr %call30, i32 28020
  tail call void @__raw_spin_lock_init(ptr noundef %cmd_lock, ptr noundef nonnull @.str.49, ptr noundef nonnull @vmxnet3_probe_device.__key, i16 noundef signext 3) #11
  %14 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev36, align 4
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %call.i720 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i) #11
  br i1 %call.i720, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %do.body42
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i721, !prof !277

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i721:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev47) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44, i32 3
  %16 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i721.dev_name.exit.i_crit_edge

if.then.i721.dev_name.exit.i_crit_edge:           ; preds = %if.then.i721
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i721
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev47, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i721.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %19, %if.end.i.i ], [ %17, %if.then.i721.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev47, ptr noundef %add.ptr.i, i32 noundef 25984) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  %sub.i = add i32 %21, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i722 = getelementptr %struct.page, ptr %20, i32 %shr.i
  %and.i = and i32 %21, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev47, ptr noundef %add.ptr.i722, i32 noundef %and.i, i32 noundef 25984, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i723 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %adapter_pa = getelementptr i8, ptr %call30, i32 28236
  %22 = ptrtoint ptr %adapter_pa to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i723, ptr %adapter_pa, align 4
  %23 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev36, align 4
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev50, i32 noundef %retval.0.i723) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i723)
  %cmp.i724 = icmp eq i32 %retval.0.i723, -1
  br i1 %cmp.i724, label %do.end57, label %if.end59

do.end57:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51) #14
  br label %err_set_mask

if.end59:                                         ; preds = %dma_map_single_attrs.exit
  %25 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev36, align 4
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %shared_pa = getelementptr i8, ptr %call30, i32 28124
  %call.i725 = tail call ptr @dma_alloc_attrs(ptr noundef %dev61, i32 noundef 800, ptr noundef %shared_pa, i32 noundef 3264, i32 noundef 0) #11
  %shared = getelementptr i8, ptr %call30, i32 28064
  %27 = ptrtoint ptr %shared to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i725, ptr %shared, align 32
  %tobool64.not = icmp eq ptr %call.i725, null
  br i1 %tobool64.not, label %do.end68, label %if.end70

do.end68:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54) #14
  br label %err_alloc_shared

if.end70:                                         ; preds = %if.end59
  %28 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev36, align 4
  %call.i726 = tail call i32 @pci_enable_device(ptr noundef %29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i726)
  %tobool.not.i = icmp eq i32 %call.i726, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.90, i32 noundef %call.i726) #14
  br label %vmxnet3_alloc_pci_resources.exit

if.end.i:                                         ; preds = %if.end70
  %call2.i = tail call i32 @pci_request_selected_regions(ptr noundef %29, i32 noundef 3, ptr noundef nonnull @vmxnet3_driver_name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end9.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.93, i32 noundef %call2.i) #14
  br label %err_enable_device.i

if.end9.i:                                        ; preds = %if.end.i
  tail call void @pci_set_master(ptr noundef %29) #11
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 47
  %30 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %resource.i, align 8
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 47, i32 0, i32 1
  %32 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i727 = icmp eq i32 %33, 0
  %sub.i728 = sub i32 1, %31
  %add.i = add i32 %sub.i728, %33
  %cond.i = select i1 %cmp.i727, i32 0, i32 %add.i
  %call18.i = tail call ptr @ioremap(i32 noundef %31, i32 noundef %cond.i) #11
  %hw_addr0.i = getelementptr i8, ptr %call30, i32 28088
  %34 = ptrtoint ptr %hw_addr0.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call18.i, ptr %hw_addr0.i, align 8
  %tobool20.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool20.not.i, label %do.end24.i, label %if.end26.i

do.end24.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev25.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25.i, ptr noundef nonnull @.str.96) #14
  br label %err_ioremap.i

if.end26.i:                                       ; preds = %if.end9.i
  %arrayidx28.i = getelementptr %struct.pci_dev, ptr %29, i32 0, i32 47, i32 1
  %35 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx28.i, align 8
  %end32.i = getelementptr %struct.pci_dev, ptr %29, i32 0, i32 47, i32 1, i32 1
  %37 = ptrtoint ptr %end32.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %end32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp33.i = icmp eq i32 %38, 0
  %sub42.i = sub i32 1, %36
  %add43.i = add i32 %sub42.i, %38
  %cond45.i = select i1 %cmp33.i, i32 0, i32 %add43.i
  %call46.i = tail call ptr @ioremap(i32 noundef %36, i32 noundef %cond45.i) #11
  %hw_addr1.i = getelementptr i8, ptr %call30, i32 28092
  %39 = ptrtoint ptr %hw_addr1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call46.i, ptr %hw_addr1.i, align 4
  %tobool48.not.i = icmp eq ptr %call46.i, null
  br i1 %tobool48.not.i, label %do.end52.i, label %if.end26.i.if.end74_crit_edge

if.end26.i.if.end74_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

do.end52.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev53.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53.i, ptr noundef nonnull @.str.99) #14
  %40 = ptrtoint ptr %hw_addr0.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_addr0.i, align 8
  tail call void @iounmap(ptr noundef %41) #11
  br label %err_ioremap.i

err_ioremap.i:                                    ; preds = %do.end52.i, %do.end24.i
  tail call void @pci_release_selected_regions(ptr noundef %29, i32 noundef 3) #11
  br label %err_enable_device.i

err_enable_device.i:                              ; preds = %err_ioremap.i, %do.end7.i
  %err.1.i = phi i32 [ %call2.i, %do.end7.i ], [ -5, %err_ioremap.i ]
  tail call void @pci_disable_device(ptr noundef %29) #11
  br label %vmxnet3_alloc_pci_resources.exit

vmxnet3_alloc_pci_resources.exit:                 ; preds = %err_enable_device.i, %do.end.i
  %retval.0.i729 = phi i32 [ %call.i726, %do.end.i ], [ %err.1.i, %err_enable_device.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i729)
  %cmp72 = icmp slt i32 %retval.0.i729, 0
  br i1 %cmp72, label %vmxnet3_alloc_pci_resources.exit.err_alloc_pci_crit_edge, label %vmxnet3_alloc_pci_resources.exit.if.end74_crit_edge

vmxnet3_alloc_pci_resources.exit.if.end74_crit_edge: ; preds = %vmxnet3_alloc_pci_resources.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

vmxnet3_alloc_pci_resources.exit.err_alloc_pci_crit_edge: ; preds = %vmxnet3_alloc_pci_resources.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_alloc_pci

if.end74:                                         ; preds = %vmxnet3_alloc_pci_resources.exit.if.end74_crit_edge, %if.end26.i.if.end74_crit_edge
  %hw_addr1 = getelementptr i8, ptr %call30, i32 28092
  %42 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_addr1, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #11, !srcloc !289
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %and = and i32 %45, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool78.not = icmp eq i32 %and, 0
  br i1 %tobool78.not, label %if.else85, label %do.body80

do.body80:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !332
  tail call void @arm_heavy_mb() #11
  %46 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_addr1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 536870912) #11, !srcloc !284
  br label %do.body146

if.else85:                                        ; preds = %if.end74
  %and86 = and i32 %45, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.else95, label %do.body89

do.body89:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  tail call void @arm_heavy_mb() #11
  %48 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_addr1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 268435456) #11, !srcloc !284
  br label %do.body146

if.else95:                                        ; preds = %if.else85
  %and96 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.else105, label %do.body99

do.body99:                                        ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  %50 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw_addr1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 134217728) #11, !srcloc !284
  br label %do.body146

if.else105:                                       ; preds = %if.else95
  %and106 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.else115, label %do.body109

do.body109:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !335
  tail call void @arm_heavy_mb() #11
  %52 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_addr1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 67108864) #11, !srcloc !284
  br label %do.body146

if.else115:                                       ; preds = %if.else105
  %and116 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.else125, label %do.body119

do.body119:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  tail call void @arm_heavy_mb() #11
  %54 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw_addr1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 33554432) #11, !srcloc !284
  br label %do.body146

if.else125:                                       ; preds = %if.else115
  %and126 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %do.end138, label %do.body129

do.body129:                                       ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  %56 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw_addr1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 16777216) #11, !srcloc !284
  br label %do.body146

do.end138:                                        ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %45) #14
  br label %err_ver

do.body146:                                       ; preds = %do.body129, %do.body119, %do.body109, %do.body99, %do.body89, %do.body80
  %.sink766 = phi i8 [ 6, %do.body80 ], [ 4, %do.body99 ], [ 2, %do.body119 ], [ 1, %do.body129 ], [ 3, %do.body109 ], [ 5, %do.body89 ]
  %version = getelementptr i8, ptr %call30, i32 28096
  %58 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %.sink766, ptr %version, align 64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vmxnet3_probe_device.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vmxnet3_probe_device, %if.then152)) #11
          to label %do.end157 [label %if.then152], !srcloc !279

if.then152:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #13
  %version154 = getelementptr i8, ptr %call30, i32 28096
  %59 = ptrtoint ptr %version154 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %version154, align 64
  %conv = zext i8 %60 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vmxnet3_probe_device.__UNIQUE_ID_ddebug523, ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %conv) #11
  br label %do.end157

do.end157:                                        ; preds = %if.then152, %do.body146
  %61 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw_addr1, align 4
  %add.ptr161 = getelementptr i8, ptr %62, i32 8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr161) #11, !srcloc !289
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !338
  %and165 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %do.end176, label %do.body168

do.body168:                                       ; preds = %do.end157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !339
  tail call void @arm_heavy_mb() #11
  %65 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw_addr1, align 4
  %add.ptr172 = getelementptr i8, ptr %66, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172, i32 16777216) #11, !srcloc !284
  %version179 = getelementptr i8, ptr %call30, i32 28096
  %67 = ptrtoint ptr %version179 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %version179, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %68)
  %cmp181 = icmp ugt i8 %68, 5
  br i1 %cmp181, label %do.body185, label %if.else258

do.end176:                                        ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %64) #14
  br label %err_ver

do.body185:                                       ; preds = %do.body168
  %call191 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  tail call void @arm_heavy_mb() #11
  %69 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw_addr1, align 4
  %add.ptr200 = getelementptr i8, ptr %70, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr200, i32 251661808) #11, !srcloc !284
  %71 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw_addr1, align 4
  %add.ptr204 = getelementptr i8, ptr %72, i32 32
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr204) #11, !srcloc !289
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call191) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp209 = icmp sgt i32 %74, 0
  br i1 %cmp209, label %if.then211, label %if.else230

if.then211:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #13
  %75 = lshr i32 %74, 8
  %and212 = and i32 %75, 255
  %76 = tail call i32 @llvm.smin.i32(i32 %num_rx_queues.0751, i32 %and212)
  %and221 = and i32 %74, 255
  %77 = tail call i32 @llvm.smin.i32(i32 %num_tx_queues.0, i32 %and221)
  br label %if.end247

if.else230:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #13
  %78 = tail call i32 @llvm.smin.i32(i32 %num_rx_queues.0751, i32 8)
  %79 = tail call i32 @llvm.smin.i32(i32 %num_tx_queues.0, i32 8)
  br label %if.end247

if.end247:                                        ; preds = %if.else230, %if.then211
  %.sink763 = phi i32 [ %76, %if.then211 ], [ %78, %if.else230 ]
  %.sink = phi i32 [ %77, %if.then211 ], [ %79, %if.else230 ]
  %80 = getelementptr i8, ptr %call30, i32 28108
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %.sink763, ptr %80, align 4
  %82 = getelementptr i8, ptr %call30, i32 28112
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %.sink, ptr %82, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.sink763)
  %cmp249 = icmp ugt i32 %.sink763, 16
  br i1 %cmp249, label %if.end247.if.then254_crit_edge, label %lor.lhs.false

if.end247.if.then254_crit_edge:                   ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then254

lor.lhs.false:                                    ; preds = %if.end247
  %84 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %82, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %85)
  %cmp252 = icmp ugt i32 %85, 8
  br i1 %cmp252, label %lor.lhs.false.if.then254_crit_edge, label %if.else255

lor.lhs.false.if.then254_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then254

if.then254:                                       ; preds = %lor.lhs.false.if.then254_crit_edge, %if.end247.if.then254_crit_edge
  %queuesExtEnabled = getelementptr i8, ptr %call30, i32 28248
  %86 = ptrtoint ptr %queuesExtEnabled to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %queuesExtEnabled, align 8
  br label %do.end316

if.else255:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %queuesExtEnabled256 = getelementptr i8, ptr %call30, i32 28248
  %87 = ptrtoint ptr %queuesExtEnabled256 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %queuesExtEnabled256, align 8
  br label %do.end316

if.else258:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #13
  %queuesExtEnabled259 = getelementptr i8, ptr %call30, i32 28248
  %88 = ptrtoint ptr %queuesExtEnabled259 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %queuesExtEnabled259, align 8
  %89 = tail call i32 @llvm.ctlz.i32(i32 %num_rx_queues.0751, i1 true) #11, !range !342
  %sub.i.i.op.i = xor i32 %89, 31
  %cond276 = shl nuw i32 1, %sub.i.i.op.i
  %90 = tail call i32 @llvm.ctlz.i32(i32 %num_tx_queues.0, i1 true) #11, !range !342
  %sub.i.i.op.i730 = xor i32 %90, 31
  %cond296 = shl nuw i32 1, %sub.i.i.op.i730
  %91 = tail call i32 @llvm.smin.i32(i32 %cond276, i32 8)
  %num_rx_queues304 = getelementptr i8, ptr %call30, i32 28108
  %92 = ptrtoint ptr %num_rx_queues304 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %num_rx_queues304, align 4
  %93 = tail call i32 @llvm.smin.i32(i32 %cond296, i32 8)
  %num_tx_queues312 = getelementptr i8, ptr %call30, i32 28112
  %94 = ptrtoint ptr %num_tx_queues312 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %num_tx_queues312, align 16
  br label %do.end316

do.end316:                                        ; preds = %if.else258, %if.else255, %if.then254
  %num_tx_queues318 = getelementptr i8, ptr %call30, i32 28112
  %95 = ptrtoint ptr %num_tx_queues318 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_tx_queues318, align 16
  %num_rx_queues319 = getelementptr i8, ptr %call30, i32 28108
  %97 = ptrtoint ptr %num_rx_queues319 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_rx_queues319, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.64, i32 noundef %96, i32 noundef %98) #14
  %rx_buf_per_pkt = getelementptr i8, ptr %call30, i32 28120
  %99 = ptrtoint ptr %rx_buf_per_pkt to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %rx_buf_per_pkt, align 8
  %100 = ptrtoint ptr %num_tx_queues318 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_tx_queues318, align 16
  %102 = ptrtoint ptr %num_rx_queues319 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_rx_queues319, align 4
  %mul715 = add i32 %103, %101
  %add = shl i32 %mul715, 8
  %104 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdev36, align 4
  %dev324 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  %queue_desc_pa = getelementptr i8, ptr %call30, i32 28128
  %call.i732 = tail call ptr @dma_alloc_attrs(ptr noundef %dev324, i32 noundef %add, ptr noundef %queue_desc_pa, i32 noundef 3264, i32 noundef 0) #11
  %tqd_start = getelementptr i8, ptr %call30, i32 28072
  %106 = ptrtoint ptr %tqd_start to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call.i732, ptr %tqd_start, align 8
  %tobool327.not = icmp eq ptr %call.i732, null
  br i1 %tobool327.not, label %do.end331, label %if.end333

do.end331:                                        ; preds = %do.end316
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54) #14
  br label %err_ver

if.end333:                                        ; preds = %do.end316
  %107 = ptrtoint ptr %num_tx_queues318 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_tx_queues318, align 16
  %add.ptr336 = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %call.i732, i32 %108
  %rqd_start = getelementptr i8, ptr %call30, i32 28076
  %109 = ptrtoint ptr %rqd_start to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %add.ptr336, ptr %rqd_start, align 4
  %110 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev36, align 4
  %dev338 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  %pm_conf_pa = getelementptr i8, ptr %call30, i32 28240
  %call.i733 = tail call ptr @dma_alloc_attrs(ptr noundef %dev338, i32 noundef 920, ptr noundef %pm_conf_pa, i32 noundef 3264, i32 noundef 0) #11
  %pm_conf = getelementptr i8, ptr %call30, i32 28068
  %112 = ptrtoint ptr %pm_conf to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call.i733, ptr %pm_conf, align 4
  %cmp341 = icmp eq ptr %call.i733, null
  br i1 %cmp341, label %if.end333.err_alloc_pm_crit_edge, label %if.end344

if.end333.err_alloc_pm_crit_edge:                 ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_alloc_pm

if.end344:                                        ; preds = %if.end333
  %113 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev36, align 4
  %dev346 = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  %rss_conf_pa = getelementptr i8, ptr %call30, i32 28244
  %call.i734 = tail call ptr @dma_alloc_attrs(ptr noundef %dev346, i32 noundef 176, ptr noundef %rss_conf_pa, i32 noundef 3264, i32 noundef 0) #11
  %rss_conf = getelementptr i8, ptr %call30, i32 28100
  %115 = ptrtoint ptr %rss_conf to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call.i734, ptr %rss_conf, align 4
  %cmp349 = icmp eq ptr %call.i734, null
  br i1 %cmp349, label %if.end344.err_alloc_rss_crit_edge, label %if.end352

if.end344.err_alloc_rss_crit_edge:                ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_alloc_rss

if.end352:                                        ; preds = %if.end344
  %116 = ptrtoint ptr %version179 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %version179, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %117)
  %cmp355 = icmp ugt i8 %117, 2
  br i1 %cmp355, label %if.then357, label %if.end352.if.end372_crit_edge

if.end352.if.end372_crit_edge:                    ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end372

if.then357:                                       ; preds = %if.end352
  %118 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pdev36, align 4
  %dev359 = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 44
  %coal_conf_pa = getelementptr i8, ptr %call30, i32 28132
  %call.i735 = tail call ptr @dma_alloc_attrs(ptr noundef %dev359, i32 noundef 16, ptr noundef %coal_conf_pa, i32 noundef 3264, i32 noundef 0) #11
  %coal_conf = getelementptr i8, ptr %call30, i32 28228
  %120 = ptrtoint ptr %coal_conf to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call.i735, ptr %coal_conf, align 4
  %tobool362.not = icmp eq ptr %call.i735, null
  br i1 %tobool362.not, label %if.then357.err_coal_conf_crit_edge, label %if.end366

if.then357.err_coal_conf_crit_edge:               ; preds = %if.then357
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_coal_conf

if.end366:                                        ; preds = %if.then357
  %121 = ptrtoint ptr %call.i735 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %call.i735, align 4
  %default_coal_mode = getelementptr i8, ptr %call30, i32 28232
  %122 = ptrtoint ptr %default_coal_mode to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %default_coal_mode, align 8
  %123 = ptrtoint ptr %version179 to i32
  call void @__asan_load1_noabort(i32 %123)
  %.pr = load i8, ptr %version179, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr)
  %cmp369 = icmp ugt i8 %.pr, 3
  br i1 %cmp369, label %if.then371, label %if.end366.if.end372_crit_edge

if.end366.if.end372_crit_edge:                    ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end372

if.then371:                                       ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #13
  %default_rss_fields = getelementptr i8, ptr %call30, i32 28169
  %124 = ptrtoint ptr %default_rss_fields to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %default_rss_fields, align 1
  %rss_fields = getelementptr i8, ptr %call30, i32 28172
  %125 = ptrtoint ptr %rss_fields to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 3, ptr %rss_fields, align 4
  br label %if.end372

if.end372:                                        ; preds = %if.then371, %if.end366.if.end372_crit_edge, %if.end352.if.end372_crit_edge
  %parent = getelementptr inbounds %struct.net_device, ptr %call30, i32 0, i32 133, i32 1
  %126 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %dev, ptr %parent, align 8
  %127 = ptrtoint ptr %netdev35 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %netdev35, align 16
  %hw_features.i = getelementptr inbounds %struct.net_device, ptr %128, i32 0, i32 24
  %129 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 1099512775081, ptr %hw_features.i, align 8
  %130 = ptrtoint ptr %version179 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %version179, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %131)
  %cmp.i736 = icmp ugt i8 %131, 3
  br i1 %cmp.i736, label %if.then.i737, label %if.end372.vmxnet3_declare_features.exit_crit_edge

if.end372.vmxnet3_declare_features.exit_crit_edge: ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_declare_features.exit

if.then.i737:                                     ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #13
  %132 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 1099714101673, ptr %hw_features.i, align 8
  %hw_enc_features.i = getelementptr inbounds %struct.net_device, ptr %128, i32 0, i32 27
  %133 = ptrtoint ptr %hw_enc_features.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 1099714101641, ptr %hw_enc_features.i, align 16
  br label %vmxnet3_declare_features.exit

vmxnet3_declare_features.exit:                    ; preds = %if.then.i737, %if.end372.vmxnet3_declare_features.exit_crit_edge
  %134 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %hw_features.i, align 8
  %and.i738 = and i64 %135, -385
  %vlan_features.i = getelementptr inbounds %struct.net_device, ptr %128, i32 0, i32 26
  %136 = ptrtoint ptr %vlan_features.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %and.i738, ptr %vlan_features.i, align 8
  %or6.i = or i64 %135, 512
  %features.i = getelementptr inbounds %struct.net_device, ptr %128, i32 0, i32 23
  %137 = ptrtoint ptr %features.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %or6.i, ptr %features.i, align 16
  %138 = ptrtoint ptr %version179 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %version179, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %139)
  %cmp377 = icmp ugt i8 %139, 2
  %conv380 = select i1 %cmp377, i16 128, i16 0
  %rxdata_desc_size = getelementptr i8, ptr %call30, i32 28166
  %140 = ptrtoint ptr %rxdata_desc_size to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv380, ptr %rxdata_desc_size, align 2
  %141 = ptrtoint ptr %num_tx_queues318 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %num_tx_queues318, align 16
  %143 = ptrtoint ptr %num_rx_queues319 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %num_rx_queues319, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %144)
  %cmp383 = icmp eq i32 %142, %144
  %spec.select = select i1 %cmp383, i32 0, i32 2
  %145 = getelementptr i8, ptr %call30, i32 28224
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %spec.select, ptr %145, align 64
  tail call fastcc void @vmxnet3_alloc_intr_resources(ptr noundef %add.ptr.i)
  %147 = ptrtoint ptr %num_rx_queues319 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %num_rx_queues319, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp390 = icmp ugt i32 %148, 1
  br i1 %cmp390, label %land.lhs.true, label %vmxnet3_declare_features.exit.if.else413_crit_edge

vmxnet3_declare_features.exit.if.else413_crit_edge: ; preds = %vmxnet3_declare_features.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else413

land.lhs.true:                                    ; preds = %vmxnet3_declare_features.exit
  %type = getelementptr i8, ptr %call30, i32 27396
  %149 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %150)
  %cmp392 = icmp eq i32 %150, 3
  br i1 %cmp392, label %if.then394, label %land.lhs.true.if.else413_crit_edge

land.lhs.true.if.else413_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else413

if.then394:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %rss = getelementptr i8, ptr %call30, i32 28104
  %151 = ptrtoint ptr %rss to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 1, ptr %rss, align 8
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call30, i32 0, i32 24
  %152 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %hw_features, align 8
  %or = or i64 %153, 549755813888
  store i64 %or, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call30, i32 0, i32 23
  %154 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %features, align 16
  %or395 = or i64 %155, 549755813888
  store i64 %or395, ptr %features, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vmxnet3_probe_device.__UNIQUE_ID_ddebug536, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vmxnet3_probe_device, %if.then408)) #11
          to label %if.end415 [label %if.then408], !srcloc !279

if.then408:                                       ; preds = %if.then394
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vmxnet3_probe_device.__UNIQUE_ID_ddebug536, ptr noundef %dev, ptr noundef nonnull @.str.69) #11
  br label %if.end415

if.else413:                                       ; preds = %land.lhs.true.if.else413_crit_edge, %vmxnet3_declare_features.exit.if.else413_crit_edge
  %rss414 = getelementptr i8, ptr %call30, i32 28104
  %156 = ptrtoint ptr %rss414 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %rss414, align 8
  br label %if.end415

if.end415:                                        ; preds = %if.else413, %if.then408, %if.then394
  %157 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hw_addr1, align 4
  %add.ptr.i741 = getelementptr i8, ptr %158, i32 40
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i741) #11, !srcloc !289
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !343
  %161 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %mac, align 4
  %162 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hw_addr1, align 4
  %add.ptr6.i = getelementptr i8, ptr %163, i32 48
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !289
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %conv.i = trunc i32 %165 to i8
  %166 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %conv.i, ptr %0, align 4
  %shr.i742 = lshr i32 %165, 8
  %conv11.i = trunc i32 %shr.i742 to i8
  %167 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv11.i, ptr %1, align 1
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %call30, i32 0, i32 56
  %168 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %addr_len.i, align 1
  %conv.i743 = zext i8 %169 to i32
  call void @dev_addr_mod(ptr noundef nonnull %call30, i32 noundef 0, ptr noundef nonnull %mac, i32 noundef %conv.i743) #11
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call30, i32 0, i32 16
  %170 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr @vmxnet3_probe_device.vmxnet3_netdev_ops, ptr %netdev_ops, align 8
  call void @vmxnet3_set_ethtool_ops(ptr noundef nonnull %call30) #11
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call30, i32 0, i32 115
  %171 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 500, ptr %watchdog_timeo, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call30, i32 0, i32 30
  %172 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 60, ptr %min_mtu, align 8
  %173 = ptrtoint ptr %version179 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %version179, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %174)
  %cmp419 = icmp ugt i8 %174, 5
  %spec.select767 = select i1 %cmp419, i32 9190, i32 9000
  %175 = getelementptr inbounds %struct.net_device, ptr %call30, i32 0, i32 31
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %spec.select767, ptr %175, align 4
  %work = getelementptr i8, ptr %call30, i32 28176
  call void @__init_work(ptr noundef %work, i32 noundef 0) #11
  %177 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 -64, ptr %work, align 16
  %lockdep_map = getelementptr i8, ptr %call30, i32 28192
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.71, ptr noundef nonnull @vmxnet3_probe_device.__key.70, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry429 = getelementptr i8, ptr %call30, i32 28180
  %178 = ptrtoint ptr %entry429 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile ptr %entry429, ptr %entry429, align 4
  %prev.i = getelementptr i8, ptr %call30, i32 28184
  %179 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %entry429, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call30, i32 28188
  %180 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @vmxnet3_reset_work, ptr %func, align 4
  %state = getelementptr i8, ptr %call30, i32 28220
  call void @_set_bit(i32 noundef 1, ptr noundef %state) #11
  %type434 = getelementptr i8, ptr %call30, i32 27396
  %181 = ptrtoint ptr %type434 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %type434, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %182)
  %cmp435 = icmp eq i32 %182, 3
  br i1 %cmp435, label %for.cond.preheader, label %if.else442

for.cond.preheader:                               ; preds = %if.end415
  %183 = ptrtoint ptr %num_rx_queues319 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %num_rx_queues319, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp439761.not = icmp eq i32 %184, 0
  br i1 %cmp439761.not, label %for.cond.preheader.if.end447_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end447_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end447

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0762 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %185 = ptrtoint ptr %netdev35 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %netdev35, align 16
  %napi = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.0762, i32 2
  call void @netif_napi_add(ptr noundef %186, ptr noundef %napi, ptr noundef nonnull @vmxnet3_poll_rx_only, i32 noundef 64) #11
  %inc = add nuw i32 %i.0762, 1
  %187 = ptrtoint ptr %num_rx_queues319 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %num_rx_queues319, align 4
  %cmp439 = icmp ult i32 %inc, %188
  br i1 %cmp439, label %for.body.for.body_crit_edge, label %for.body.if.end447_crit_edge

for.body.if.end447_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end447

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.else442:                                       ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #13
  %189 = ptrtoint ptr %netdev35 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %netdev35, align 16
  %napi446 = getelementptr i8, ptr %call30, i32 10528
  call void @netif_napi_add(ptr noundef %190, ptr noundef %napi446, ptr noundef nonnull @vmxnet3_poll, i32 noundef 64) #11
  br label %if.end447

if.end447:                                        ; preds = %if.else442, %for.body.if.end447_crit_edge, %for.cond.preheader.if.end447_crit_edge
  %191 = ptrtoint ptr %netdev35 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %netdev35, align 16
  %193 = ptrtoint ptr %num_tx_queues318 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %num_tx_queues318, align 16
  %call450 = call i32 @netif_set_real_num_tx_queues(ptr noundef %192, i32 noundef %194) #11
  %195 = ptrtoint ptr %netdev35 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %netdev35, align 16
  %197 = ptrtoint ptr %num_rx_queues319 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %num_rx_queues319, align 4
  %call453 = call i32 @netif_set_real_num_rx_queues(ptr noundef %196, i32 noundef %198) #11
  call void @netif_carrier_off(ptr noundef nonnull %call30) #11
  %call454 = call i32 @register_netdev(ptr noundef nonnull %call30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call454)
  %tobool455.not = icmp eq i32 %call454, 0
  br i1 %tobool455.not, label %if.end461, label %do.end459

do.end459:                                        ; preds = %if.end447
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73) #14
  %199 = ptrtoint ptr %version179 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %version179, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %200)
  %cmp464 = icmp ugt i8 %200, 2
  br i1 %cmp464, label %if.then466, label %do.end459.if.end471_crit_edge

do.end459.if.end471_crit_edge:                    ; preds = %do.end459
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end471

if.end461:                                        ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @vmxnet3_check_link(ptr noundef %add.ptr.i, i1 noundef zeroext false)
  br label %cleanup

if.then466:                                       ; preds = %do.end459
  call void @__sanitizer_cov_trace_pc() #13
  %201 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %pdev36, align 4
  %dev468 = getelementptr inbounds %struct.pci_dev, ptr %202, i32 0, i32 44
  %coal_conf469 = getelementptr i8, ptr %call30, i32 28228
  %203 = ptrtoint ptr %coal_conf469 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %coal_conf469, align 4
  %coal_conf_pa470 = getelementptr i8, ptr %call30, i32 28132
  %205 = ptrtoint ptr %coal_conf_pa470 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %coal_conf_pa470, align 4
  call void @dma_free_attrs(ptr noundef %dev468, i32 noundef 16, ptr noundef %204, i32 noundef %206, i32 noundef 0) #11
  br label %if.end471

if.end471:                                        ; preds = %if.then466, %do.end459.if.end471_crit_edge
  call fastcc void @vmxnet3_free_intr_resources(ptr noundef %add.ptr.i)
  br label %err_coal_conf

err_coal_conf:                                    ; preds = %if.end471, %if.then357.err_coal_conf_crit_edge
  %err.0 = phi i32 [ %call454, %if.end471 ], [ -12, %if.then357.err_coal_conf_crit_edge ]
  %207 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %pdev36, align 4
  %dev473 = getelementptr inbounds %struct.pci_dev, ptr %208, i32 0, i32 44
  %209 = ptrtoint ptr %rss_conf to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %rss_conf, align 4
  %211 = ptrtoint ptr %rss_conf_pa to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %rss_conf_pa, align 4
  call void @dma_free_attrs(ptr noundef %dev473, i32 noundef 176, ptr noundef %210, i32 noundef %212, i32 noundef 0) #11
  br label %err_alloc_rss

err_alloc_rss:                                    ; preds = %err_coal_conf, %if.end344.err_alloc_rss_crit_edge
  %err.1 = phi i32 [ %err.0, %err_coal_conf ], [ -12, %if.end344.err_alloc_rss_crit_edge ]
  %213 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %pdev36, align 4
  %dev477 = getelementptr inbounds %struct.pci_dev, ptr %214, i32 0, i32 44
  %215 = ptrtoint ptr %pm_conf to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %pm_conf, align 4
  %217 = ptrtoint ptr %pm_conf_pa to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %pm_conf_pa, align 16
  call void @dma_free_attrs(ptr noundef %dev477, i32 noundef 920, ptr noundef %216, i32 noundef %218, i32 noundef 0) #11
  br label %err_alloc_pm

err_alloc_pm:                                     ; preds = %err_alloc_rss, %if.end333.err_alloc_pm_crit_edge
  %err.2 = phi i32 [ %err.1, %err_alloc_rss ], [ -12, %if.end333.err_alloc_pm_crit_edge ]
  %219 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %pdev36, align 4
  %dev481 = getelementptr inbounds %struct.pci_dev, ptr %220, i32 0, i32 44
  %221 = ptrtoint ptr %tqd_start to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %tqd_start, align 8
  %223 = ptrtoint ptr %queue_desc_pa to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %queue_desc_pa, align 32
  call void @dma_free_attrs(ptr noundef %dev481, i32 noundef %add, ptr noundef %222, i32 noundef %224, i32 noundef 0) #11
  br label %err_ver

err_ver:                                          ; preds = %err_alloc_pm, %do.end331, %do.end176, %do.end138
  %err.3 = phi i32 [ %err.2, %err_alloc_pm ], [ -12, %do.end331 ], [ -16, %do.end176 ], [ -16, %do.end138 ]
  %225 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %pdev36, align 4
  %tobool.not.i744 = icmp eq ptr %226, null
  br i1 %tobool.not.i744, label %do.body4.i, label %vmxnet3_free_pci_resources.exit, !prof !280

do.body4.i:                                       ; preds = %err_ver
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2891, 0\0A.popsection", ""() #11, !srcloc !345
  unreachable

vmxnet3_free_pci_resources.exit:                  ; preds = %err_ver
  call void @__sanitizer_cov_trace_pc() #13
  %hw_addr0.i745 = getelementptr i8, ptr %call30, i32 28088
  %227 = ptrtoint ptr %hw_addr0.i745 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hw_addr0.i745, align 8
  call void @iounmap(ptr noundef %228) #11
  %229 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %hw_addr1, align 4
  call void @iounmap(ptr noundef %230) #11
  %231 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %pdev36, align 4
  call void @pci_release_selected_regions(ptr noundef %232, i32 noundef 3) #11
  %233 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %pdev36, align 4
  call void @pci_disable_device(ptr noundef %234) #11
  br label %err_alloc_pci

err_alloc_pci:                                    ; preds = %vmxnet3_free_pci_resources.exit, %vmxnet3_alloc_pci_resources.exit.err_alloc_pci_crit_edge
  %err.4 = phi i32 [ %retval.0.i729, %vmxnet3_alloc_pci_resources.exit.err_alloc_pci_crit_edge ], [ %err.3, %vmxnet3_free_pci_resources.exit ]
  %235 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %pdev36, align 4
  %dev485 = getelementptr inbounds %struct.pci_dev, ptr %236, i32 0, i32 44
  %237 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %shared, align 32
  %239 = ptrtoint ptr %shared_pa to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %shared_pa, align 4
  call void @dma_free_attrs(ptr noundef %dev485, i32 noundef 800, ptr noundef %238, i32 noundef %240, i32 noundef 0) #11
  br label %err_alloc_shared

err_alloc_shared:                                 ; preds = %err_alloc_pci, %do.end68
  %err.5 = phi i32 [ %err.4, %err_alloc_pci ], [ -12, %do.end68 ]
  %241 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %pdev36, align 4
  %dev489 = getelementptr inbounds %struct.pci_dev, ptr %242, i32 0, i32 44
  %243 = ptrtoint ptr %adapter_pa to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %adapter_pa, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev489, i32 noundef %244, i32 noundef 25984, i32 noundef 1, i32 noundef 0) #11
  br label %err_set_mask

err_set_mask:                                     ; preds = %err_alloc_shared, %do.end57, %do.end
  %err.6 = phi i32 [ %call.i, %do.end ], [ -14, %do.end57 ], [ %err.5, %err_alloc_shared ]
  call void @free_netdev(ptr noundef nonnull %call30) #11
  br label %cleanup

cleanup:                                          ; preds = %err_set_mask, %if.end461, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.6, %err_set_mask ], [ 0, %if.end461 ], [ -12, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vmxnet3_remove_device(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %.b = load i1, ptr @enable_mq, align 4
  br i1 %.b, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %2 = load volatile i32, ptr @__num_online_cpus, align 4
  %3 = tail call i32 @llvm.smin.i32(i32 %2, i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %num_rx_queues.0 = phi i32 [ %3, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %version = getelementptr i8, ptr %1, i32 28096
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %version, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp3 = icmp ugt i8 %5, 5
  br i1 %cmp3, label %do.body29, label %if.else65

do.body29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cmd_lock = getelementptr i8, ptr %1, i32 28020
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !346
  tail call void @arm_heavy_mb() #11
  %hw_addr1 = getelementptr i8, ptr %1, i32 28092
  %6 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr1, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 251661808) #11, !srcloc !284
  %8 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr1, align 4
  %add.ptr41 = getelementptr i8, ptr %9, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #11, !srcloc !289
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp46 = icmp sgt i32 %11, 0
  %12 = lshr i32 %11, 8
  %and = and i32 %12, 255
  %13 = tail call i32 @llvm.smin.i32(i32 %num_rx_queues.0, i32 8)
  %rx_queues.0 = select i1 %cmp46, i32 %and, i32 %13
  %14 = tail call i32 @llvm.smin.i32(i32 %num_rx_queues.0, i32 %rx_queues.0)
  br label %if.end73

if.else65:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %15 = tail call i32 @llvm.ctlz.i32(i32 %num_rx_queues.0, i1 true) #11, !range !342
  %sub.i.i.op.i = xor i32 %15, 31
  %num_rx_queues.1.ph = shl nuw i32 1, %sub.i.i.op.i
  %16 = tail call i32 @llvm.smin.i32(i32 %num_rx_queues.1.ph, i32 8)
  br label %if.end73

if.end73:                                         ; preds = %if.else65, %do.body29
  %num_rx_queues.2 = phi i32 [ %14, %do.body29 ], [ %16, %if.else65 ]
  %work = getelementptr i8, ptr %1, i32 28176
  %call74 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #11
  tail call void @unregister_netdev(ptr noundef %1) #11
  %type.i = getelementptr i8, ptr %1, i32 27396
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %18, label %do.body12.i [
    i32 3, label %if.then.i
    i32 2, label %if.then4.i
    i32 1, label %if.end73.vmxnet3_free_intr_resources.exit_crit_edge
  ], !prof !312

if.end73.vmxnet3_free_intr_resources.exit_crit_edge: ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_free_intr_resources.exit

if.then.i:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  %pdev.i = getelementptr i8, ptr %1, i32 28084
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_disable_msix(ptr noundef %21) #11
  br label %vmxnet3_free_intr_resources.exit

if.then4.i:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  %pdev5.i = getelementptr i8, ptr %1, i32 28084
  %22 = ptrtoint ptr %pdev5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev5.i, align 4
  tail call void @pci_disable_msi(ptr noundef %23) #11
  br label %vmxnet3_free_intr_resources.exit

do.body12.i:                                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3332, 0\0A.popsection", ""() #11, !srcloc !348
  unreachable

vmxnet3_free_intr_resources.exit:                 ; preds = %if.then4.i, %if.then.i, %if.end73.vmxnet3_free_intr_resources.exit_crit_edge
  %pdev.i144 = getelementptr i8, ptr %1, i32 28084
  %24 = ptrtoint ptr %pdev.i144 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i144, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %do.body4.i, label %vmxnet3_free_pci_resources.exit, !prof !280

do.body4.i:                                       ; preds = %vmxnet3_free_intr_resources.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2891, 0\0A.popsection", ""() #11, !srcloc !345
  unreachable

vmxnet3_free_pci_resources.exit:                  ; preds = %vmxnet3_free_intr_resources.exit
  %hw_addr0.i = getelementptr i8, ptr %1, i32 28088
  %26 = ptrtoint ptr %hw_addr0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_addr0.i, align 8
  tail call void @iounmap(ptr noundef %27) #11
  %hw_addr1.i = getelementptr i8, ptr %1, i32 28092
  %28 = ptrtoint ptr %hw_addr1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_addr1.i, align 4
  tail call void @iounmap(ptr noundef %29) #11
  %30 = ptrtoint ptr %pdev.i144 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i144, align 4
  tail call void @pci_release_selected_regions(ptr noundef %31, i32 noundef 3) #11
  %32 = ptrtoint ptr %pdev.i144 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i144, align 4
  tail call void @pci_disable_device(ptr noundef %33) #11
  %34 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %version, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp77 = icmp ugt i8 %35, 2
  br i1 %cmp77, label %if.then79, label %vmxnet3_free_pci_resources.exit.if.end81_crit_edge

vmxnet3_free_pci_resources.exit.if.end81_crit_edge: ; preds = %vmxnet3_free_pci_resources.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then79:                                        ; preds = %vmxnet3_free_pci_resources.exit
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %pdev.i144 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev.i144, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %coal_conf = getelementptr i8, ptr %1, i32 28228
  %38 = ptrtoint ptr %coal_conf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %coal_conf, align 4
  %coal_conf_pa = getelementptr i8, ptr %1, i32 28132
  %40 = ptrtoint ptr %coal_conf_pa to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %coal_conf_pa, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 16, ptr noundef %39, i32 noundef %41, i32 noundef 0) #11
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %vmxnet3_free_pci_resources.exit.if.end81_crit_edge
  %42 = ptrtoint ptr %pdev.i144 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev.i144, align 4
  %dev83 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %rss_conf = getelementptr i8, ptr %1, i32 28100
  %44 = ptrtoint ptr %rss_conf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rss_conf, align 4
  %rss_conf_pa = getelementptr i8, ptr %1, i32 28244
  %46 = ptrtoint ptr %rss_conf_pa to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rss_conf_pa, align 4
  tail call void @dma_free_attrs(ptr noundef %dev83, i32 noundef 176, ptr noundef %45, i32 noundef %47, i32 noundef 0) #11
  %48 = ptrtoint ptr %pdev.i144 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev.i144, align 4
  %dev85 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %pm_conf = getelementptr i8, ptr %1, i32 28068
  %50 = ptrtoint ptr %pm_conf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pm_conf, align 4
  %pm_conf_pa = getelementptr i8, ptr %1, i32 28240
  %52 = ptrtoint ptr %pm_conf_pa to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pm_conf_pa, align 16
  tail call void @dma_free_attrs(ptr noundef %dev85, i32 noundef 920, ptr noundef %51, i32 noundef %53, i32 noundef 0) #11
  %num_tx_queues = getelementptr i8, ptr %1, i32 28112
  %54 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_tx_queues, align 16
  %mul142 = add i32 %55, %num_rx_queues.2
  %add = shl i32 %mul142, 8
  %56 = ptrtoint ptr %pdev.i144 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev.i144, align 4
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %tqd_start = getelementptr i8, ptr %1, i32 28072
  %58 = ptrtoint ptr %tqd_start to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tqd_start, align 8
  %queue_desc_pa = getelementptr i8, ptr %1, i32 28128
  %60 = ptrtoint ptr %queue_desc_pa to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %queue_desc_pa, align 32
  tail call void @dma_free_attrs(ptr noundef %dev88, i32 noundef %add, ptr noundef %59, i32 noundef %61, i32 noundef 0) #11
  %62 = ptrtoint ptr %pdev.i144 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev.i144, align 4
  %dev90 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %shared = getelementptr i8, ptr %1, i32 28064
  %64 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %shared, align 32
  %shared_pa = getelementptr i8, ptr %1, i32 28124
  %66 = ptrtoint ptr %shared_pa to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %shared_pa, align 4
  tail call void @dma_free_attrs(ptr noundef %dev90, i32 noundef 800, ptr noundef %65, i32 noundef %67, i32 noundef 0) #11
  %68 = ptrtoint ptr %pdev.i144 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev.i144, align 4
  %dev92 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %adapter_pa = getelementptr i8, ptr %1, i32 28236
  %70 = ptrtoint ptr %adapter_pa to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %adapter_pa, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev92, i32 noundef %71, i32 noundef 25984, i32 noundef 1, i32 noundef 0) #11
  tail call void @free_netdev(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vmxnet3_shutdown_device(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr i8, ptr %1, i32 28220
  %call226 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %tobool.not27 = icmp eq i32 %call226, 0
  br i1 %tobool.not27, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body7, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body7:                                         ; preds = %while.end
  %cmd_lock = getelementptr i8, ptr %1, i32 28020
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !349
  tail call void @arm_heavy_mb() #11
  %hw_addr1 = getelementptr i8, ptr %1, i32 28092
  %2 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16842442) #11, !srcloc !284
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call9) #11
  %shared.i = getelementptr i8, ptr %1, i32 28064
  %4 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shared.i, align 32
  %intrCtrl.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %5, i32 0, i32 2, i32 1, i32 4
  %6 = ptrtoint ptr %intrCtrl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intrCtrl.i, align 4
  %or.i = or i32 %7, 16777216
  store i32 %or.i, ptr %intrCtrl.i, align 4
  %num_intrs.i = getelementptr i8, ptr %1, i32 27400
  %8 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_intrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp7.not.i = icmp eq i8 %9, 0
  br i1 %cmp7.not.i, label %do.body7.cleanup_crit_edge, label %for.body.lr.ph.i

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %do.body7
  %hw_addr0.i.i = getelementptr i8, ptr %1, i32 28088
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !311
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %hw_addr0.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr0.i.i, align 8
  %mul.i.i = shl i32 %i.08.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #11, !srcloc !284
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %12 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_intrs.i, align 8
  %conv.i = zext i8 %13 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %do.body7.cleanup_crit_edge, %while.end.cleanup_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_open(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 28112
  %0 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp81.not = icmp eq i32 %1, 0
  br i1 %cmp81.not, label %entry.for.end_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %i.082 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %tx_lock = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %i.082, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.75, ptr noundef nonnull @vmxnet3_open.__key, i16 noundef signext 3) #11
  %inc = add nuw i32 %i.082, 1
  %2 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues, align 16
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  %version = getelementptr i8, ptr %netdev, i32 28096
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %version, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp2 = icmp ugt i8 %5, 2
  br i1 %cmp2, label %if.then, label %for.end.if.end37_crit_edge

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %cmd_lock = getelementptr i8, ptr %netdev, i32 28020
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !350
  tail call void @arm_heavy_mb() #11
  %hw_addr1 = getelementptr i8, ptr %netdev, i32 28092
  %6 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr1, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 167775728) #11, !srcloc !284
  %8 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr1, align 4
  %add.ptr18 = getelementptr i8, ptr %9, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #11, !srcloc !289
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call9) #11
  %conv24 = and i32 %11, 65535
  %12 = add nsw i32 %conv24, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1921, i32 %12)
  %13 = icmp ult i32 %12, 1921
  %and = and i32 %11, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond74 = select i1 %13, i1 %tobool.not, i1 false
  %conv22 = trunc i32 %11 to i16
  %spec.select = select i1 %or.cond74, i16 %conv22, i16 128
  br label %if.end37

if.end37:                                         ; preds = %if.then, %for.end.if.end37_crit_edge
  %.sink = phi i16 [ 128, %for.end.if.end37_crit_edge ], [ %spec.select, %if.then ]
  %txdata_desc_size33 = getelementptr i8, ptr %netdev, i32 28164
  %14 = ptrtoint ptr %txdata_desc_size33 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %.sink, ptr %txdata_desc_size33, align 4
  %tx_ring_size = getelementptr i8, ptr %netdev, i32 28152
  %15 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_ring_size, align 8
  %rx_ring_size = getelementptr i8, ptr %netdev, i32 28156
  %17 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_ring_size, align 4
  %rx_ring2_size = getelementptr i8, ptr %netdev, i32 28160
  %19 = ptrtoint ptr %rx_ring2_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_ring2_size, align 128
  %txdata_desc_size38 = getelementptr i8, ptr %netdev, i32 28164
  %21 = ptrtoint ptr %txdata_desc_size38 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %txdata_desc_size38, align 4
  %rxdata_desc_size = getelementptr i8, ptr %netdev, i32 28166
  %23 = ptrtoint ptr %rxdata_desc_size to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rxdata_desc_size, align 2
  %call39 = tail call i32 @vmxnet3_create_queues(ptr noundef %add.ptr.i, i32 noundef %16, i32 noundef %18, i32 noundef %20, i16 noundef zeroext %22, i16 noundef zeroext %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %call43 = tail call i32 @vmxnet3_activate_dev(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %activate_err

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

activate_err:                                     ; preds = %if.end42
  %num_rx_queues.i = getelementptr i8, ptr %netdev, i32 28108
  %25 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp5.not.i = icmp eq i32 %26, 0
  br i1 %cmp5.not.i, label %activate_err.vmxnet3_rq_destroy_all.exit_crit_edge, label %activate_err.for.body.i_crit_edge

activate_err.for.body.i_crit_edge:                ; preds = %activate_err
  br label %for.body.i

activate_err.vmxnet3_rq_destroy_all.exit_crit_edge: ; preds = %activate_err
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rq_destroy_all.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %activate_err.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %activate_err.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.06.i
  tail call fastcc void @vmxnet3_rq_destroy(ptr noundef %arrayidx.i, ptr noundef %add.ptr.i) #11
  %inc.i = add nuw i32 %i.06.i, 1
  %27 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_rx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %28
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.vmxnet3_rq_destroy_all.exit_crit_edge

for.body.i.vmxnet3_rq_destroy_all.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rq_destroy_all.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

vmxnet3_rq_destroy_all.exit:                      ; preds = %for.body.i.vmxnet3_rq_destroy_all.exit_crit_edge, %activate_err.vmxnet3_rq_destroy_all.exit_crit_edge
  %29 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_tx_queues, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp5.not.i75 = icmp eq i32 %30, 0
  br i1 %cmp5.not.i75, label %vmxnet3_rq_destroy_all.exit.cleanup_crit_edge, label %vmxnet3_rq_destroy_all.exit.for.body.i80_crit_edge

vmxnet3_rq_destroy_all.exit.for.body.i80_crit_edge: ; preds = %vmxnet3_rq_destroy_all.exit
  br label %for.body.i80

vmxnet3_rq_destroy_all.exit.cleanup_crit_edge:    ; preds = %vmxnet3_rq_destroy_all.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i80:                                     ; preds = %for.body.i80.for.body.i80_crit_edge, %vmxnet3_rq_destroy_all.exit.for.body.i80_crit_edge
  %i.06.i76 = phi i32 [ %inc.i78, %for.body.i80.for.body.i80_crit_edge ], [ 0, %vmxnet3_rq_destroy_all.exit.for.body.i80_crit_edge ]
  %arrayidx.i77 = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %i.06.i76
  tail call fastcc void @vmxnet3_tq_destroy(ptr noundef %arrayidx.i77, ptr noundef %add.ptr.i) #11
  %inc.i78 = add nuw i32 %i.06.i76, 1
  %31 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_tx_queues, align 16
  %cmp.i79 = icmp ult i32 %inc.i78, %32
  br i1 %cmp.i79, label %for.body.i80.for.body.i80_crit_edge, label %for.body.i80.cleanup_crit_edge

for.body.i80.cleanup_crit_edge:                   ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i80.for.body.i80_crit_edge:              ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i80

cleanup:                                          ; preds = %for.body.i80.cleanup_crit_edge, %vmxnet3_rq_destroy_all.exit.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end37.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end42.cleanup_crit_edge ], [ %call39, %if.end37.cleanup_crit_edge ], [ %call43, %vmxnet3_rq_destroy_all.exit.cleanup_crit_edge ], [ %call43, %for.body.i80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_close(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state = getelementptr i8, ptr %netdev, i32 28220
  %call114 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool.not15 = icmp eq i32 %call114, 0
  br i1 %tobool.not15, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %call2 = tail call i32 @vmxnet3_quiesce_dev(ptr noundef %add.ptr.i)
  %num_rx_queues.i = getelementptr i8, ptr %netdev, i32 28108
  %0 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not.i = icmp eq i32 %1, 0
  br i1 %cmp5.not.i, label %while.end.vmxnet3_rq_destroy_all.exit_crit_edge, label %while.end.for.body.i_crit_edge

while.end.for.body.i_crit_edge:                   ; preds = %while.end
  br label %for.body.i

while.end.vmxnet3_rq_destroy_all.exit_crit_edge:  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rq_destroy_all.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.end.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %while.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.06.i
  tail call fastcc void @vmxnet3_rq_destroy(ptr noundef %arrayidx.i, ptr noundef %add.ptr.i) #11
  %inc.i = add nuw i32 %i.06.i, 1
  %2 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %3
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.vmxnet3_rq_destroy_all.exit_crit_edge

for.body.i.vmxnet3_rq_destroy_all.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rq_destroy_all.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

vmxnet3_rq_destroy_all.exit:                      ; preds = %for.body.i.vmxnet3_rq_destroy_all.exit_crit_edge, %while.end.vmxnet3_rq_destroy_all.exit_crit_edge
  %num_tx_queues.i = getelementptr i8, ptr %netdev, i32 28112
  %4 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.not.i8 = icmp eq i32 %5, 0
  br i1 %cmp5.not.i8, label %vmxnet3_rq_destroy_all.exit.vmxnet3_tq_destroy_all.exit_crit_edge, label %vmxnet3_rq_destroy_all.exit.for.body.i13_crit_edge

vmxnet3_rq_destroy_all.exit.for.body.i13_crit_edge: ; preds = %vmxnet3_rq_destroy_all.exit
  br label %for.body.i13

vmxnet3_rq_destroy_all.exit.vmxnet3_tq_destroy_all.exit_crit_edge: ; preds = %vmxnet3_rq_destroy_all.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_tq_destroy_all.exit

for.body.i13:                                     ; preds = %for.body.i13.for.body.i13_crit_edge, %vmxnet3_rq_destroy_all.exit.for.body.i13_crit_edge
  %i.06.i9 = phi i32 [ %inc.i11, %for.body.i13.for.body.i13_crit_edge ], [ 0, %vmxnet3_rq_destroy_all.exit.for.body.i13_crit_edge ]
  %arrayidx.i10 = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %i.06.i9
  tail call fastcc void @vmxnet3_tq_destroy(ptr noundef %arrayidx.i10, ptr noundef %add.ptr.i) #11
  %inc.i11 = add nuw i32 %i.06.i9, 1
  %6 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues.i, align 16
  %cmp.i12 = icmp ult i32 %inc.i11, %7
  br i1 %cmp.i12, label %for.body.i13.for.body.i13_crit_edge, label %for.body.i13.vmxnet3_tq_destroy_all.exit_crit_edge

for.body.i13.vmxnet3_tq_destroy_all.exit_crit_edge: ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_tq_destroy_all.exit

for.body.i13.for.body.i13_crit_edge:              ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i13

vmxnet3_tq_destroy_all.exit:                      ; preds = %for.body.i13.vmxnet3_tq_destroy_all.exit_crit_edge, %vmxnet3_rq_destroy_all.exit.vmxnet3_tq_destroy_all.exit_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_xmit_frame(ptr noundef %skb, ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping, align 8
  %conv = zext i16 %1 to i32
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 28112
  %2 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp ult i32 %3, %conv
  br i1 %cmp, label %do.body3, label %do.end8, !prof !280

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1214, 0\0A.popsection", ""() #11, !srcloc !352
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %arrayidx = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %conv
  %call10 = tail call fastcc i32 @vmxnet3_tq_xmit(ptr noundef %skb, ptr noundef %arrayidx, ptr noundef %add.ptr.i)
  ret i32 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vmxnet3_features_check(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_set_mac_addr(ptr noundef %netdev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %0 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %1 to i32
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef %conv.i) #11
  %2 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sa_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  tail call void @arm_heavy_mb() #11
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  %hw_addr1.i = getelementptr i8, ptr %netdev, i32 28092
  %5 = ptrtoint ptr %hw_addr1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr1.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %4) #11, !srcloc !284
  %arrayidx.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %conv.i6 = zext i8 %8 to i32
  %shl.i = shl nuw nsw i32 %conv.i6, 8
  %arrayidx1.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %10 to i32
  %or.i = or i32 %shl.i, %conv2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !285
  tail call void @arm_heavy_mb() #11
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %12 = ptrtoint ptr %hw_addr1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr1.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %13, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %11) #11, !srcloc !284
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_mtu, ptr %mtu, align 4
  %state = getelementptr i8, ptr %netdev, i32 28220
  %call160 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool.not61 = icmp eq i32 %call160, 0
  br i1 %tobool.not61, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %while.end.out.thread_crit_edge, label %if.then

while.end.out.thread_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.then:                                          ; preds = %while.end
  %call3 = tail call i32 @vmxnet3_quiesce_dev(ptr noundef %add.ptr.i)
  %cmd_lock.i = getelementptr i8, ptr %netdev, i32 28020
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !309
  tail call void @arm_heavy_mb() #11
  %hw_addr1.i = getelementptr i8, ptr %netdev, i32 28092
  %3 = ptrtoint ptr %hw_addr1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr1.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 33619658) #11, !srcloc !284
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i, i32 noundef %call2.i) #11
  %num_rx_queues.i = getelementptr i8, ptr %netdev, i32 28108
  %5 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5.not.i = icmp eq i32 %6, 0
  br i1 %cmp5.not.i, label %if.then.vmxnet3_rq_destroy_all.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.vmxnet3_rq_destroy_all.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rq_destroy_all.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.06.i
  tail call fastcc void @vmxnet3_rq_destroy(ptr noundef %arrayidx.i, ptr noundef %add.ptr.i) #11
  %inc.i = add nuw i32 %i.06.i, 1
  %7 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_rx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %8
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.vmxnet3_rq_destroy_all.exit_crit_edge

for.body.i.vmxnet3_rq_destroy_all.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rq_destroy_all.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

vmxnet3_rq_destroy_all.exit:                      ; preds = %for.body.i.vmxnet3_rq_destroy_all.exit_crit_edge, %if.then.vmxnet3_rq_destroy_all.exit_crit_edge
  %netdev.i = getelementptr i8, ptr %netdev, i32 28080
  %9 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev.i, align 16
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3051, i32 %12)
  %cmp.i34 = icmp ult i32 %12, 3051
  %skb_buf_size.i = getelementptr i8, ptr %netdev, i32 28116
  br i1 %cmp.i34, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %vmxnet3_rq_destroy_all.exit
  call void @__sanitizer_cov_trace_pc() #13
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 106) #11
  %14 = add nuw nsw i32 %13, 22
  %15 = ptrtoint ptr %skb_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %skb_buf_size.i, align 4
  br label %if.end15.i

if.else.i:                                        ; preds = %vmxnet3_rq_destroy_all.exit
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %skb_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3072, ptr %skb_buf_size.i, align 4
  %17 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mtu.i, align 4
  %sub12.i = add i32 %18, 1045
  %div90.i = lshr i32 %sub12.i, 12
  %add13.i = add nuw nsw i32 %div90.i, 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else.i, %if.then.i
  %add13.sink.i = phi i32 [ 1, %if.then.i ], [ %add13.i, %if.else.i ]
  %19 = getelementptr i8, ptr %netdev, i32 28120
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add13.sink.i, ptr %19, align 8
  %mul.i = shl nuw nsw i32 %add13.sink.i, 5
  %size.i = getelementptr i8, ptr %netdev, i32 10756
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i, align 4
  %add18.i = add nsw i32 %mul.i, -1
  %sub19.i = add i32 %add18.i, %22
  %23 = urem i32 %sub19.i, %mul.i
  %mul21.i = sub i32 %sub19.i, %23
  %24 = urem i32 4096, %mul.i
  %mul23.i = sub nuw nsw i32 4096, %24
  %25 = tail call i32 @llvm.umin.i32(i32 %mul21.i, i32 %mul23.i) #11
  %size29.i = getelementptr i8, ptr %netdev, i32 10780
  %26 = ptrtoint ptr %size29.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size29.i, align 4
  %sub31.i = add i32 %27, %add18.i
  %28 = urem i32 %sub31.i, %mul.i
  %mul33.i = sub i32 %sub31.i, %28
  %29 = tail call i32 @llvm.umin.i32(i32 %mul33.i, i32 %mul23.i) #11
  %add42.i = add nuw nsw i32 %29, %25
  %30 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp4391.not.i = icmp eq i32 %31, 0
  br i1 %cmp4391.not.i, label %vmxnet3_adjust_rx_ring_size.exit.thread, label %if.end15.i.for.body.i37_crit_edge

if.end15.i.for.body.i37_crit_edge:                ; preds = %if.end15.i
  br label %for.body.i37

vmxnet3_adjust_rx_ring_size.exit.thread:          ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %version.i64 = getelementptr i8, ptr %netdev, i32 28096
  %32 = ptrtoint ptr %version.i64 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %version.i64, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp.i3865 = icmp ugt i8 %33, 2
  %rxdataring_enabled.i66 = getelementptr i8, ptr %netdev, i32 28168
  %frombool.i67 = zext i1 %cmp.i3865 to i8
  %34 = ptrtoint ptr %rxdataring_enabled.i66 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool.i67, ptr %rxdataring_enabled.i66, align 8
  br label %if.end

for.body.i37:                                     ; preds = %for.body.i37.for.body.i37_crit_edge, %if.end15.i.for.body.i37_crit_edge
  %i.092.i = phi i32 [ %inc.i36, %for.body.i37.for.body.i37_crit_edge ], [ 0, %if.end15.i.for.body.i37_crit_edge ]
  %size48.i = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.092.i, i32 3, i32 0, i32 1
  %35 = ptrtoint ptr %size48.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %25, ptr %size48.i, align 4
  %size51.i = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.092.i, i32 3, i32 1, i32 1
  %36 = ptrtoint ptr %size51.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %29, ptr %size51.i, align 4
  %size52.i = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.092.i, i32 5, i32 1
  %37 = ptrtoint ptr %size52.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add42.i, ptr %size52.i, align 4
  %inc.i36 = add nuw i32 %i.092.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i36, %31
  br i1 %exitcond.not.i, label %vmxnet3_adjust_rx_ring_size.exit, label %for.body.i37.for.body.i37_crit_edge

for.body.i37.for.body.i37_crit_edge:              ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i37

vmxnet3_adjust_rx_ring_size.exit:                 ; preds = %for.body.i37
  %38 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %phi.cmp = icmp eq i32 %.pr, 0
  %version.i = getelementptr i8, ptr %netdev, i32 28096
  %39 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %version.i, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %cmp.i38 = icmp ugt i8 %40, 2
  %rxdataring_enabled.i = getelementptr i8, ptr %netdev, i32 28168
  %frombool.i = zext i1 %cmp.i38 to i8
  %41 = ptrtoint ptr %rxdataring_enabled.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %frombool.i, ptr %rxdataring_enabled.i, align 8
  br i1 %phi.cmp, label %vmxnet3_adjust_rx_ring_size.exit.if.end_crit_edge, label %vmxnet3_adjust_rx_ring_size.exit.for.body.i41_crit_edge

vmxnet3_adjust_rx_ring_size.exit.for.body.i41_crit_edge: ; preds = %vmxnet3_adjust_rx_ring_size.exit
  br label %for.body.i41

vmxnet3_adjust_rx_ring_size.exit.if.end_crit_edge: ; preds = %vmxnet3_adjust_rx_ring_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i41:                                     ; preds = %for.inc.i.for.body.i41_crit_edge, %vmxnet3_adjust_rx_ring_size.exit.for.body.i41_crit_edge
  %i.030.i = phi i32 [ %inc.i43, %for.inc.i.for.body.i41_crit_edge ], [ 0, %vmxnet3_adjust_rx_ring_size.exit.for.body.i41_crit_edge ]
  %arrayidx.i40 = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.030.i
  %call.i = tail call fastcc i32 @vmxnet3_rq_create(ptr noundef %arrayidx.i40, ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.then6, !prof !277

for.inc.i:                                        ; preds = %for.body.i41
  %inc.i43 = add nuw i32 %i.030.i, 1
  %42 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_rx_queues.i, align 4
  %cmp2.i = icmp ult i32 %inc.i43, %43
  br i1 %cmp2.i, label %for.inc.i.for.body.i41_crit_edge, label %for.end.i

for.inc.i.for.body.i41_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i41

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %phi.cmp.i = icmp eq i32 %43, 0
  %44 = ptrtoint ptr %rxdataring_enabled.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rxdataring_enabled.i, align 8, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool8.not.i = icmp ne i8 %45, 0
  %or.cond.i = select i1 %tobool8.not.i, i1 true, i1 %phi.cmp.i
  br i1 %or.cond.i, label %for.end.i.if.end_crit_edge, label %for.body.lr.ph.i.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph.i.i:                               ; preds = %for.end.i
  %pdev.i.i = getelementptr i8, ptr %netdev, i32 28084
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.021.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %data_ring.i.i = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.021.i.i, i32 4
  %46 = ptrtoint ptr %data_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data_ring.i.i, align 16
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %size.i.i = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.021.i.i, i32 3, i32 0, i32 1
  %50 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size.i.i, align 4
  %desc_size.i.i = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.021.i.i, i32 4, i32 2
  %52 = ptrtoint ptr %desc_size.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %desc_size.i.i, align 8
  %conv.i.i = zext i16 %53 to i32
  %mul.i.i = mul i32 %51, %conv.i.i
  %basePA.i.i = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.021.i.i, i32 4, i32 1
  %54 = ptrtoint ptr %basePA.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %basePA.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef %mul.i.i, ptr noundef nonnull %47, i32 noundef %55, i32 noundef 0) #11
  %56 = ptrtoint ptr %data_ring.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %data_ring.i.i, align 16
  %57 = ptrtoint ptr %desc_size.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %desc_size.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.021.i.i, 1
  %58 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_rx_queues.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %59
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.if.end_crit_edge

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.then6:                                         ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %netdev.i, align 16
  %dev.i = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.87, ptr noundef %61, i32 noundef %i.030.i) #14
  tail call void @vmxnet3_rq_destroy_all(ptr noundef %add.ptr.i) #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.85, i32 noundef %call.i) #14
  br label %if.then14

if.end:                                           ; preds = %if.end.i.i.if.end_crit_edge, %for.end.i.if.end_crit_edge, %vmxnet3_adjust_rx_ring_size.exit.if.end_crit_edge, %vmxnet3_adjust_rx_ring_size.exit.thread
  %call7 = tail call i32 @vmxnet3_activate_dev(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.out.thread_crit_edge, label %if.then9

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.86, i32 noundef %call7) #14
  br label %if.then14

out.thread:                                       ; preds = %if.end.out.thread_crit_edge, %while.end.out.thread_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #11
  br label %if.end15

if.then14:                                        ; preds = %if.then9, %if.then6
  %err.0 = phi i32 [ %call.i, %if.then6 ], [ %call7, %if.then9 ]
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #11
  %62 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %state, align 4
  %and1.i.i45 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i45)
  %tobool.not.i46 = icmp eq i32 %and1.i.i45, 0
  br i1 %tobool.not.i46, label %for.cond.preheader.i, label %do.body3.i, !prof !277

for.cond.preheader.i:                             ; preds = %if.then14
  %64 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp16.not.i = icmp eq i32 %65, 0
  br i1 %cmp16.not.i, label %for.cond.preheader.i.vmxnet3_force_close.exit_crit_edge, label %for.cond.preheader.i.for.body.i50_crit_edge

for.cond.preheader.i.for.body.i50_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i50

for.cond.preheader.i.vmxnet3_force_close.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_force_close.exit

do.body3.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3099, 0\0A.popsection", ""() #11, !srcloc !316
  unreachable

for.body.i50:                                     ; preds = %for.body.i50.for.body.i50_crit_edge, %for.cond.preheader.i.for.body.i50_crit_edge
  %i.017.i = phi i32 [ %inc.i48, %for.body.i50.for.body.i50_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i50_crit_edge ]
  %napi.i = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.017.i, i32 2
  tail call void @napi_enable(ptr noundef %napi.i) #11
  %inc.i48 = add nuw i32 %i.017.i, 1
  %66 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_rx_queues.i, align 4
  %cmp.i49 = icmp ult i32 %inc.i48, %67
  br i1 %cmp.i49, label %for.body.i50.for.body.i50_crit_edge, label %for.body.i50.vmxnet3_force_close.exit_crit_edge

for.body.i50.vmxnet3_force_close.exit_crit_edge:  ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_force_close.exit

for.body.i50.for.body.i50_crit_edge:              ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i50

vmxnet3_force_close.exit:                         ; preds = %for.body.i50.vmxnet3_force_close.exit_crit_edge, %for.cond.preheader.i.vmxnet3_force_close.exit_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #11
  %68 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %netdev.i, align 16
  tail call void @dev_close(ptr noundef %69) #11
  br label %if.end15

if.end15:                                         ; preds = %vmxnet3_force_close.exit, %out.thread
  %err.057 = phi i32 [ 0, %out.thread ], [ %err.0, %vmxnet3_force_close.exit ]
  ret i32 %err.057
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vmxnet3_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_timeout_count = getelementptr i8, ptr %netdev, i32 28144
  %0 = ptrtoint ptr %tx_timeout_count to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tx_timeout_count, align 16
  %inc = add i64 %1, 1
  store i64 %inc, ptr %tx_timeout_count, align 16
  %netdev1 = getelementptr i8, ptr %netdev, i32 28080
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.89) #14
  %work = getelementptr i8, ptr %netdev, i32 28176
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vmxnet3_get_stats64(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_vlan_rx_add_vid(ptr noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = zext i16 %vid to i32
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shared = getelementptr i8, ptr %netdev, i32 28064
  %2 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared, align 32
  %vfTable1 = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %3, i32 0, i32 2, i32 2, i32 4
  %conv = zext i16 %vid to i32
  %and3 = and i32 %conv, 31
  %shl = shl nuw i32 1, %and3
  %4 = lshr i32 %conv, 5
  %arrayidx = getelementptr i32, ptr %vfTable1, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %or = or i32 %6, %shl
  store i32 %or, ptr %arrayidx, align 4
  %cmd_lock = getelementptr i8, ptr %netdev, i32 28020
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @arm_heavy_mb() #11
  %hw_addr1 = getelementptr i8, ptr %netdev, i32 28092
  %7 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr1, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 83951306) #11, !srcloc !284
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call8) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv15.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %conv, %if.then ]
  %active_vlans = getelementptr i8, ptr %netdev, i32 26880
  tail call void @_set_bit(i32 noundef %conv15.pre-phi, ptr noundef %active_vlans) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_vlan_rx_kill_vid(ptr noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = zext i16 %vid to i32
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shared = getelementptr i8, ptr %netdev, i32 28064
  %2 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared, align 32
  %vfTable1 = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %3, i32 0, i32 2, i32 2, i32 4
  %conv = zext i16 %vid to i32
  %and3 = and i32 %conv, 31
  %shl = shl nuw i32 1, %and3
  %neg = xor i32 %shl, -1
  %4 = lshr i32 %conv, 5
  %arrayidx = getelementptr i32, ptr %vfTable1, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %and5 = and i32 %6, %neg
  store i32 %and5, ptr %arrayidx, align 4
  %cmd_lock = getelementptr i8, ptr %netdev, i32 28020
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !354
  tail call void @arm_heavy_mb() #11
  %hw_addr1 = getelementptr i8, ptr %netdev, i32 28092
  %7 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr1, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 83951306) #11, !srcloc !284
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call9) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv16.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %conv, %if.then ]
  %active_vlans = getelementptr i8, ptr %netdev, i32 26880
  tail call void @_clear_bit(i32 noundef %conv16.pre-phi, ptr noundef %active_vlans) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vmxnet3_netpoll(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %type = getelementptr i8, ptr %netdev, i32 27396
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cond = icmp eq i32 %1, 3
  br i1 %cond, label %for.cond.preheader, label %sw.default

for.cond.preheader:                               ; preds = %entry
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 28108
  %2 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17.not = icmp eq i32 %3, 0
  br i1 %cmp17.not, label %for.cond.preheader.sw.epilog_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body:                                         ; preds = %vmxnet3_msix_rx.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %vmxnet3_msix_rx.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.018
  %adapter1.i = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %arrayidx, i32 0, i32 1
  %4 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter1.i, align 8
  %intr.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %intr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intr.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %intr_idx.i = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %arrayidx, i32 0, i32 5, i32 4
  %8 = ptrtoint ptr %intr_idx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %intr_idx.i, align 1
  %conv.i = zext i8 %9 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !311
  tail call void @arm_heavy_mb() #11
  %hw_addr0.i.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %hw_addr0.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr0.i.i, align 8
  %mul.i.i = shl nuw nsw i32 %conv.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #11, !srcloc !284
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %napi.i = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %arrayidx, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #11
  br i1 %call.i.i, label %if.then.i.i, label %if.end.i.vmxnet3_msix_rx.exit_crit_edge

if.end.i.vmxnet3_msix_rx.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_msix_rx.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__napi_schedule(ptr noundef %napi.i) #11
  br label %vmxnet3_msix_rx.exit

vmxnet3_msix_rx.exit:                             ; preds = %if.then.i.i, %if.end.i.vmxnet3_msix_rx.exit_crit_edge
  %inc = add nuw i32 %i.018, 1
  %12 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_rx_queues, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %vmxnet3_msix_rx.exit.for.body_crit_edge, label %vmxnet3_msix_rx.exit.sw.epilog_crit_edge

vmxnet3_msix_rx.exit.sw.epilog_crit_edge:         ; preds = %vmxnet3_msix_rx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

vmxnet3_msix_rx.exit.for.body_crit_edge:          ; preds = %vmxnet3_msix_rx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

sw.default:                                       ; preds = %entry
  %netdev3 = getelementptr i8, ptr %netdev, i32 28080
  %14 = ptrtoint ptr %netdev3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev3, align 16
  %intr.i10 = getelementptr i8, ptr %15, i32 27392
  %type.i = getelementptr i8, ptr %15, i32 27396
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i11 = icmp eq i32 %17, 1
  br i1 %cmp.i11, label %if.then.i13, label %sw.default.if.end6.i_crit_edge

sw.default.if.end6.i_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then.i13:                                      ; preds = %sw.default
  %hw_addr1.i = getelementptr i8, ptr %15, i32 28092
  %18 = ptrtoint ptr %hw_addr1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr1.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %19, i32 56
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #11, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp3.i = icmp eq i32 %20, 0
  br i1 %cmp3.i, label %if.then.i13.sw.epilog_crit_edge, label %if.then.i13.if.end6.i_crit_edge

if.then.i13.if.end6.i_crit_edge:                  ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then.i13.sw.epilog_crit_edge:                  ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end6.i:                                        ; preds = %if.then.i13.if.end6.i_crit_edge, %sw.default.if.end6.i_crit_edge
  %21 = ptrtoint ptr %intr.i10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %intr.i10, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp8.i = icmp eq i32 %22, 1
  br i1 %cmp8.i, label %if.then9.i, label %if.end6.i.if.end10.i_crit_edge

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end6.i
  %shared.i.i = getelementptr i8, ptr %15, i32 28064
  %23 = ptrtoint ptr %shared.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %shared.i.i, align 32
  %intrCtrl.i.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %24, i32 0, i32 2, i32 1, i32 4
  %25 = ptrtoint ptr %intrCtrl.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %intrCtrl.i.i, align 4
  %or.i.i = or i32 %26, 16777216
  store i32 %or.i.i, ptr %intrCtrl.i.i, align 4
  %num_intrs.i.i = getelementptr i8, ptr %15, i32 27400
  %27 = ptrtoint ptr %num_intrs.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_intrs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp7.not.i.i = icmp eq i8 %28, 0
  br i1 %cmp7.not.i.i, label %if.then9.i.if.end10.i_crit_edge, label %for.body.lr.ph.i.i

if.then9.i.if.end10.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

for.body.lr.ph.i.i:                               ; preds = %if.then9.i
  %hw_addr0.i.i.i = getelementptr i8, ptr %15, i32 28088
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !311
  tail call void @arm_heavy_mb() #11
  %29 = ptrtoint ptr %hw_addr0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_addr0.i.i.i, align 8
  %mul.i.i.i = shl i32 %i.08.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 %mul.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #11, !srcloc !284
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %31 = ptrtoint ptr %num_intrs.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_intrs.i.i, align 8
  %conv.i.i = zext i8 %32 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end10.i_crit_edge

for.body.i.i.if.end10.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.end10.i:                                       ; preds = %for.body.i.i.if.end10.i_crit_edge, %if.then9.i.if.end10.i_crit_edge, %if.end6.i.if.end10.i_crit_edge
  %napi.i14 = getelementptr i8, ptr %15, i32 10528
  %call.i.i15 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i14) #11
  br i1 %call.i.i15, label %if.then.i.i16, label %if.end10.i.sw.epilog_crit_edge

if.end10.i.sw.epilog_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i.i16:                                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__napi_schedule(ptr noundef %napi.i14) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i.i16, %if.end10.i.sw.epilog_crit_edge, %if.then.i13.sw.epilog_crit_edge, %vmxnet3_msix_rx.exit.sw.epilog_crit_edge, %for.cond.preheader.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vmxnet3_fix_features(ptr noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmxnet3_set_features(ptr noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msi_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vmxnet3_alloc_intr_resources(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_lock = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !355
  tail call void @arm_heavy_mb() #11
  %hw_addr1 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134221296) #11, !srcloc !284
  %2 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr1, align 4
  %add.ptr9 = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #11, !srcloc !289
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call2) #11
  %and = and i32 %5, 3
  %intr = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3
  %type = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %type, align 4
  %shr = lshr i32 %5, 2
  %and14 = and i32 %shr, 3
  %7 = ptrtoint ptr %intr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and14, ptr %intr, align 128
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %and, label %if.end78 [
    i32 0, label %if.end.thread
    i32 3, label %entry.if.then26_crit_edge
  ]

entry.if.then26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %type, align 4
  br label %if.then26

if.then26:                                        ; preds = %if.end.thread, %entry.if.then26_crit_edge
  %share_intr = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 36
  %10 = ptrtoint ptr %share_intr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %share_intr, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp27 = icmp eq i32 %11, 1
  br i1 %cmp27, label %if.then26.cond.false33_crit_edge, label %cond.end

if.then26.cond.false33_crit_edge:                 ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false33

cond.end:                                         ; preds = %if.then26
  %num_tx_queues = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 17
  %12 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp30 = icmp eq i32 %11, 0
  br i1 %cmp30, label %cond.end.cond.end34_crit_edge, label %cond.end.cond.false33_crit_edge

cond.end.cond.false33_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false33

cond.end.cond.end34_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end34

cond.false33:                                     ; preds = %cond.end.cond.false33_crit_edge, %if.then26.cond.false33_crit_edge
  %cond153 = phi i32 [ %13, %cond.end.cond.false33_crit_edge ], [ 1, %if.then26.cond.false33_crit_edge ]
  %num_rx_queues = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 16
  %14 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_rx_queues, align 4
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false33, %cond.end.cond.end34_crit_edge
  %cond154 = phi i32 [ %cond153, %cond.false33 ], [ %13, %cond.end.cond.end34_crit_edge ]
  %cond35 = phi i32 [ %15, %cond.false33 ], [ 0, %cond.end.cond.end34_crit_edge ]
  %add = add i32 %cond154, 1
  %add36 = add i32 %add, %cond35
  %16 = tail call i32 @llvm.smax.i32(i32 %add36, i32 3)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %cond.end34
  %i.0159 = phi i32 [ 0, %cond.end34 ], [ %inc, %for.body.for.body_crit_edge ]
  %conv45 = trunc i32 %i.0159 to i16
  %entry47 = getelementptr %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 6, i32 %i.0159, i32 1
  %17 = ptrtoint ptr %entry47 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv45, ptr %entry47, align 4
  %inc = add nuw nsw i32 %i.0159, 1
  %exitcond.not = icmp eq i32 %inc, %16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  %pdev.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 4
  %msix_entries.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 6
  %call.i = tail call i32 @pci_enable_msix_range(ptr noundef %19, ptr noundef %msix_entries.i, i32 noundef %16, i32 noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -28
  br i1 %cmp.i, label %land.lhs.true.i, label %for.end.if.end.i_crit_edge

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add36)
  %cmp37 = icmp sgt i32 %add36, 3
  br i1 %cmp37, label %do.end.i, label %land.lhs.true.i.if.end78.thread_crit_edge

land.lhs.true.i.if.end78.thread_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78.thread

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %netdev.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %20 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev.i, align 16
  %dev.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.107, i32 noundef %16, i32 noundef 3) #14
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 4
  %call6.i = tail call i32 @pci_enable_msix_range(ptr noundef %23, ptr noundef %msix_entries.i, i32 noundef 3, i32 noundef 3) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.end.if.end.i_crit_edge
  %ret.0.i = phi i32 [ %call6.i, %do.end.i ], [ %call.i, %for.end.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp7.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp7.i, label %if.end.i.if.end78.thread_crit_edge, label %if.end52

if.end.i.if.end78.thread_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78.thread

if.end52:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ret.0.i)
  %cmp53 = icmp ne i32 %ret.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add36)
  %cmp55.not = icmp slt i32 %add36, 4
  %or.cond = select i1 %cmp53, i1 true, i1 %cmp55.not
  br i1 %or.cond, label %if.end52.if.end68_crit_edge, label %if.then57

if.end52.if.end68_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then57:                                        ; preds = %if.end52
  %24 = ptrtoint ptr %share_intr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %share_intr, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp59.not = icmp eq i32 %25, 0
  br i1 %cmp59.not, label %lor.lhs.false, label %if.then57.if.then64_crit_edge

if.then57.if.then64_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then64

lor.lhs.false:                                    ; preds = %if.then57
  %num_rx_queues61 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 16
  %26 = ptrtoint ptr %num_rx_queues61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_rx_queues61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp62.not = icmp eq i32 %27, 1
  br i1 %cmp62.not, label %lor.lhs.false.if.end68_crit_edge, label %lor.lhs.false.if.then64_crit_edge

lor.lhs.false.if.then64_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then64

lor.lhs.false.if.end68_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then64:                                        ; preds = %lor.lhs.false.if.then64_crit_edge, %if.then57.if.then64_crit_edge
  %28 = ptrtoint ptr %share_intr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %share_intr, align 64
  %netdev = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %29 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev, align 16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.101) #14
  %num_rx_queues66 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 16
  %31 = ptrtoint ptr %num_rx_queues66 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %num_rx_queues66, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %lor.lhs.false.if.end68_crit_edge, %if.end52.if.end68_crit_edge
  %conv69 = trunc i32 %ret.0.i to i8
  br label %cleanup102

if.end78.thread:                                  ; preds = %if.end.i.if.end78.thread_crit_edge, %land.lhs.true.i.if.end78.thread_crit_edge
  %ret.029.i = phi i32 [ %ret.0.i, %if.end.i.if.end78.thread_crit_edge ], [ -28, %land.lhs.true.i.if.end78.thread_crit_edge ]
  %netdev12.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %32 = ptrtoint ptr %netdev12.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev12.i, align 16
  %dev13.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.110, i32 noundef %ret.029.i) #14
  %34 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.102, i32 noundef %ret.029.i) #14
  %36 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %type, align 4
  br label %if.then83

if.end78:                                         ; preds = %entry
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp81 = icmp eq i32 %.pr, 2
  br i1 %cmp81, label %if.end78.if.then83_crit_edge, label %if.end78.if.end91_crit_edge

if.end78.if.end91_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.end78.if.then83_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then83

if.then83:                                        ; preds = %if.end78.if.then83_crit_edge, %if.end78.thread
  %pdev84 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  %38 = ptrtoint ptr %pdev84 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev84, align 4
  %call85 = tail call i32 @pci_enable_msi(ptr noundef %39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool.not = icmp eq i32 %call85, 0
  br i1 %tobool.not, label %if.then86, label %if.then83.if.end91_crit_edge

if.then83.if.end91_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then86:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  %num_rx_queues87 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 16
  %40 = ptrtoint ptr %num_rx_queues87 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %num_rx_queues87, align 4
  br label %cleanup102

if.end91:                                         ; preds = %if.then83.if.end91_crit_edge, %if.end78.if.end91_crit_edge
  %num_rx_queues92 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 16
  %41 = ptrtoint ptr %num_rx_queues92 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %num_rx_queues92, align 4
  %netdev96 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %42 = ptrtoint ptr %netdev96 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev96, align 16
  %dev97 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev97, ptr noundef nonnull @.str.105) #14
  %44 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %type, align 4
  br label %cleanup102

cleanup102:                                       ; preds = %if.end91, %if.then86, %if.end68
  %conv69.sink = phi i8 [ %conv69, %if.end68 ], [ 1, %if.end91 ], [ 1, %if.then86 ]
  %num_intrs = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 2
  %45 = ptrtoint ptr %num_intrs to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv69.sink, ptr %num_intrs, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vmxnet3_set_ethtool_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vmxnet3_reset_work(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -25872
  %state = getelementptr i8, ptr %data, i32 44
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rtnl_lock() #11
  %netdev = getelementptr i8, ptr %data, i32 -96
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 16
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %1, ptr noundef nonnull @.str.112) #14
  %call4 = tail call i32 @vmxnet3_quiesce_dev(ptr noundef %add.ptr)
  %cmd_lock.i = getelementptr i8, ptr %data, i32 -156
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !309
  tail call void @arm_heavy_mb() #11
  %hw_addr1.i = getelementptr i8, ptr %data, i32 -84
  %4 = ptrtoint ptr %hw_addr1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33619658) #11, !srcloc !284
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i, i32 noundef %call2.i) #11
  %call5 = tail call i32 @vmxnet3_activate_dev(ptr noundef %add.ptr)
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.113) #14
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then2
  tail call void @rtnl_unlock() #11
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %9) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_poll_rx_only(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -32
  %adapter1 = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %share_intr = getelementptr inbounds %struct.vmxnet3_adapter, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %share_intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %share_intr, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rx_queue = getelementptr inbounds %struct.vmxnet3_adapter, ptr %1, i32 0, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %rx_queue to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 9
  %arrayidx = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %1, i32 0, i32 %sub.ptr.div
  tail call fastcc void @vmxnet3_tq_tx_complete(ptr noundef %arrayidx, ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call fastcc i32 @vmxnet3_rq_rx_complete(ptr noundef %add.ptr, ptr noundef %1, i32 noundef %budget)
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %budget)
  %cmp3 = icmp slt i32 %call2, %budget
  br i1 %cmp3, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call2) #11
  %intr_idx = getelementptr i8, ptr %napi, i32 297
  %4 = ptrtoint ptr %intr_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %intr_idx, align 1
  %conv = zext i8 %5 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  tail call void @arm_heavy_mb() #11
  %hw_addr0.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %hw_addr0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr0.i, align 8
  %mul.i = shl nuw nsw i32 %conv, 3
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !284
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %shared.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared.i, align 32
  %ecr.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ecr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ecr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i, !prof !277

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @vmxnet3_process_events(ptr noundef %1) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %num_tx_queues.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp24.not.i = icmp eq i32 %7, 0
  br i1 %cmp24.not.i, label %if.end.i.for.cond3.preheader.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.cond3.preheader.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.body.i.for.cond3.preheader.i_crit_edge, %if.end.i.for.cond3.preheader.i_crit_edge
  %num_rx_queues.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp426.not.i = icmp eq i32 %9, 0
  br i1 %cmp426.not.i, label %for.cond3.preheader.i.vmxnet3_do_poll.exit_crit_edge, label %for.cond3.preheader.i.for.body5.i_crit_edge

for.cond3.preheader.i.for.body5.i_crit_edge:      ; preds = %for.cond3.preheader.i
  br label %for.body5.i

for.cond3.preheader.i.vmxnet3_do_poll.exit_crit_edge: ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_do_poll.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.025.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %1, i32 0, i32 %i.025.i
  tail call fastcc void @vmxnet3_tq_tx_complete(ptr noundef %arrayidx.i, ptr noundef %1) #11
  %inc.i = add nuw i32 %i.025.i, 1
  %10 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_queues.i, align 16
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond3.preheader.i_crit_edge

for.body.i.for.cond3.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond3.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.cond3.preheader.i.for.body5.i_crit_edge
  %i.128.i = phi i32 [ %inc9.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %rcd_done.027.i = phi i32 [ %add.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.vmxnet3_adapter, ptr %1, i32 0, i32 1, i32 %i.128.i
  %call7.i = tail call fastcc i32 @vmxnet3_rq_rx_complete(ptr noundef %arrayidx6.i, ptr noundef %1, i32 noundef %budget) #11
  %add.i = add i32 %call7.i, %rcd_done.027.i
  %inc9.i = add nuw i32 %i.128.i, 1
  %12 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_rx_queues.i, align 4
  %cmp4.i = icmp ult i32 %inc9.i, %13
  br i1 %cmp4.i, label %for.body5.i.for.body5.i_crit_edge, label %for.body5.i.vmxnet3_do_poll.exit_crit_edge

for.body5.i.vmxnet3_do_poll.exit_crit_edge:       ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_do_poll.exit

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5.i

vmxnet3_do_poll.exit:                             ; preds = %for.body5.i.vmxnet3_do_poll.exit_crit_edge, %for.cond3.preheader.i.vmxnet3_do_poll.exit_crit_edge
  %rcd_done.0.lcssa.i = phi i32 [ 0, %for.cond3.preheader.i.vmxnet3_do_poll.exit_crit_edge ], [ %add.i, %for.body5.i.vmxnet3_do_poll.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rcd_done.0.lcssa.i, i32 %budget)
  %cmp = icmp slt i32 %rcd_done.0.lcssa.i, %budget
  br i1 %cmp, label %if.then, label %vmxnet3_do_poll.exit.if.end_crit_edge

vmxnet3_do_poll.exit.if.end_crit_edge:            ; preds = %vmxnet3_do_poll.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %vmxnet3_do_poll.exit
  %call1 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %rcd_done.0.lcssa.i) #11
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  %num_intrs.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %15, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_intrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp7.not.i = icmp eq i8 %17, 0
  br i1 %cmp7.not.i, label %if.then.vmxnet3_enable_all_intrs.exit_crit_edge, label %for.body.lr.ph.i

if.then.vmxnet3_enable_all_intrs.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_enable_all_intrs.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %hw_addr0.i.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %15, i32 0, i32 11
  br label %for.body.i10

for.body.i10:                                     ; preds = %for.body.i10.for.body.i10_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i8, %for.body.i10.for.body.i10_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  tail call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %hw_addr0.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr0.i.i, align 8
  %mul.i.i = shl i32 %i.08.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !284
  %inc.i8 = add nuw nsw i32 %i.08.i, 1
  %20 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_intrs.i, align 8
  %conv.i = zext i8 %21 to i32
  %cmp.i9 = icmp ult i32 %inc.i8, %conv.i
  br i1 %cmp.i9, label %for.body.i10.for.body.i10_crit_edge, label %for.body.i10.vmxnet3_enable_all_intrs.exit_crit_edge

for.body.i10.vmxnet3_enable_all_intrs.exit_crit_edge: ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_enable_all_intrs.exit

for.body.i10.for.body.i10_crit_edge:              ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i10

vmxnet3_enable_all_intrs.exit:                    ; preds = %for.body.i10.vmxnet3_enable_all_intrs.exit_crit_edge, %if.then.vmxnet3_enable_all_intrs.exit_crit_edge
  %shared.i11 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %15, i32 0, i32 5
  %22 = ptrtoint ptr %shared.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %shared.i11, align 32
  %intrCtrl.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %23, i32 0, i32 2, i32 1, i32 4
  %24 = ptrtoint ptr %intrCtrl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %intrCtrl.i, align 4
  %and.i = and i32 %25, -16777217
  store i32 %and.i, ptr %intrCtrl.i, align 4
  br label %if.end

if.end:                                           ; preds = %vmxnet3_enable_all_intrs.exit, %vmxnet3_do_poll.exit.if.end_crit_edge
  ret i32 %rcd_done.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vmxnet3_free_intr_resources(ptr nocapture noundef readonly %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %1, label %do.body12 [
    i32 3, label %if.then
    i32 2, label %if.then4
    i32 1, label %entry.if.end17_crit_edge
  ], !prof !312

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  tail call void @pci_disable_msix(ptr noundef %4) #11
  br label %if.end17

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev5 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  %5 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev5, align 4
  tail call void @pci_disable_msi(ptr noundef %6) #11
  br label %if.end17

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3332, 0\0A.popsection", ""() #11, !srcloc !348
  unreachable

if.end17:                                         ; preds = %if.then4, %if.then, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vmxnet3_tq_xmit(ptr noundef %skb, ptr noundef %tq, ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  %vhdr.i.i6 = alloca %struct.vlan_hdr, align 2
  %vhdr.i.i = alloca %struct.vlan_hdr, align 2
  %ctx = alloca %struct.vmxnet3_tx_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #11
  %0 = getelementptr inbounds %struct.vmxnet3_tx_ctx, ptr %ctx, i32 0, i32 1
  %1 = getelementptr inbounds %struct.vmxnet3_tx_ctx, ptr %ctx, i32 0, i32 2
  %2 = getelementptr inbounds %struct.vmxnet3_tx_ctx, ptr %ctx, i32 0, i32 3
  %3 = getelementptr inbounds %struct.vmxnet3_tx_ctx, ptr %ctx, i32 0, i32 4
  %4 = getelementptr inbounds %struct.vmxnet3_tx_ctx, ptr %ctx, i32 0, i32 5
  %5 = getelementptr inbounds %struct.vmxnet3_tx_ctx, ptr %ctx, i32 0, i32 6
  %6 = getelementptr inbounds %struct.vmxnet3_tx_ctx, ptr %ctx, i32 0, i32 7
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = getelementptr inbounds i8, ptr %ctx, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 20)
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = add i32 %10, 16383
  %sub.i = sub i32 %sub.i.i, %12
  %div15.i = lshr i32 %sub.i, 14
  %add1.i = add nuw nsw i32 %div15.i, 1
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %13 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp18.not.i = icmp eq i8 %16, 0
  br i1 %cmp18.not.i, label %entry.txd_estimate.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.txd_estimate.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %txd_estimate.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %count.020.i = phi i32 [ %add9.i, %for.body.i.for.body.i_crit_edge ], [ %add1.i, %entry.for.body.i_crit_edge ]
  %i.019.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %14, i32 0, i32 12, i32 %i.019.i, i32 1
  %17 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bv_len.i.i, align 4
  %sub7.i = add i32 %18, 16383
  %div816.i = lshr i32 %sub7.i, 14
  %add9.i = add i32 %div816.i, %count.020.i
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body.i.txd_estimate.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.txd_estimate.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %txd_estimate.exit

txd_estimate.exit:                                ; preds = %for.body.i.txd_estimate.exit_crit_edge, %entry.txd_estimate.exit_crit_edge
  %count.0.lcssa.i = phi i32 [ %add1.i, %entry.txd_estimate.exit_crit_edge ], [ %add9.i, %for.body.i.txd_estimate.exit_crit_edge ]
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %19 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %protocol.i, align 8
  %mac_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %21 = ptrtoint ptr %mac_len.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mac_len.i.i, align 4
  %conv.i.i = zext i16 %22 to i32
  %23 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.132)
  switch i16 %20, label %txd_estimate.exit.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %txd_estimate.exit.if.then.i.i_crit_edge
    i16 -32512, label %txd_estimate.exit.if.then.i.i_crit_edge160
  ]

txd_estimate.exit.if.then.i.i_crit_edge160:       ; preds = %txd_estimate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

txd_estimate.exit.if.then.i.i_crit_edge:          ; preds = %txd_estimate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

txd_estimate.exit.vlan_get_protocol.exit_crit_edge: ; preds = %txd_estimate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_get_protocol.exit

if.then.i.i:                                      ; preds = %txd_estimate.exit.if.then.i.i_crit_edge, %txd_estimate.exit.if.then.i.i_crit_edge160
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i.i = icmp eq i16 %22, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end26.i.i_crit_edge, label %if.then1.i.i

if.then.i.i.if.end26.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %22)
  %cmp.i.i = icmp ult i16 %22, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end25.i.i, !prof !280

do.end.i.i:                                       ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.79, i32 noundef 598, i32 noundef 9, ptr noundef null) #11
  br label %vlan_get_protocol.exitthread-pre-split

if.end25.i.i:                                     ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i5 = add nsw i32 %conv.i.i, -4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end25.i.i, %if.then.i.i.if.end26.i.i_crit_edge
  %vlan_depth.0.i.i = phi i32 [ %sub.i.i5, %if.end25.i.i ], [ 14, %if.then.i.i.if.end26.i.i_crit_edge ]
  %24 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i, i32 0, i32 1
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.body27.backedge.i.i, %if.end26.i.i
  %vlan_depth.1.i.i = phi i32 [ %vlan_depth.0.i.i, %if.end26.i.i ], [ %add.i.i, %do.body27.backedge.i.i ]
  %parse_depth.0.i.i = phi i32 [ 8, %if.end26.i.i ], [ %dec.i.i, %do.body27.backedge.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i) #11
  %25 = ptrtoint ptr %vhdr.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %vhdr.i.i, align 2, !annotation !357
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %24, align 2, !annotation !357
  %27 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i, align 4
  %29 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i, align 8
  %31 = add i32 %vlan_depth.1.i.i, %30
  %sub.i1.i.i.i = sub i32 %28, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i, 3
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i, !prof !277

if.then.i.i.i.i:                                  ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %33, i32 %vlan_depth.1.i.i
  br label %skb_header_pointer.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body27.i.i
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.cleanup.thread.i.i_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i, ptr noundef nonnull %vhdr.i.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %cmp3.i.i.i.i, ptr null, ptr %vhdr.i.i, !prof !280
  br label %skb_header_pointer.exit.i.i

skb_header_pointer.exit.i.i:                      ; preds = %lor.lhs.false.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ %spec.select.i.i.i.i, %lor.lhs.false.i.i.i.i ]
  %tobool29.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  %dec.i.i = add nsw i32 %parse_depth.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool30.not.i.i = icmp eq i32 %dec.i.i, 0
  %34 = select i1 %tobool29.not.i.i, i1 true, i1 %tobool30.not.i.i, !prof !280
  br i1 %34, label %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, label %do.cond42.i.i, !prof !280

skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #11
  br label %vlan_get_protocol.exitthread-pre-split

do.cond42.i.i:                                    ; preds = %skb_header_pointer.exit.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #11
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.133)
  switch i16 %36, label %do.cond42.i.i.vlan_get_protocol.exitthread-pre-split_crit_edge [
    i16 -30552, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge161
  ]

do.cond42.i.i.do.body27.backedge.i.i_crit_edge161: ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i

do.cond42.i.i.do.body27.backedge.i.i_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i

do.cond42.i.i.vlan_get_protocol.exitthread-pre-split_crit_edge: ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_get_protocol.exitthread-pre-split

do.body27.backedge.i.i:                           ; preds = %do.cond42.i.i.do.body27.backedge.i.i_crit_edge, %do.cond42.i.i.do.body27.backedge.i.i_crit_edge161
  %add.i.i = add nsw i32 %vlan_depth.1.i.i, 4
  br label %do.body27.i.i

vlan_get_protocol.exitthread-pre-split:           ; preds = %do.cond42.i.i.vlan_get_protocol.exitthread-pre-split_crit_edge, %cleanup.thread.i.i, %do.end.i.i
  %retval.2.i.i.ph = phi i16 [ 0, %cleanup.thread.i.i ], [ 0, %do.end.i.i ], [ %36, %do.cond42.i.i.vlan_get_protocol.exitthread-pre-split_crit_edge ]
  %38 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %.pr = load i16, ptr %protocol.i, align 8
  %39 = ptrtoint ptr %mac_len.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %.pr124 = load i16, ptr %mac_len.i.i, align 4
  %.pre = zext i16 %.pr124 to i32
  br label %vlan_get_protocol.exit

vlan_get_protocol.exit:                           ; preds = %vlan_get_protocol.exitthread-pre-split, %txd_estimate.exit.vlan_get_protocol.exit_crit_edge
  %conv.i.i9.pre-phi = phi i32 [ %.pre, %vlan_get_protocol.exitthread-pre-split ], [ %conv.i.i, %txd_estimate.exit.vlan_get_protocol.exit_crit_edge ]
  %40 = phi i16 [ %.pr124, %vlan_get_protocol.exitthread-pre-split ], [ %22, %txd_estimate.exit.vlan_get_protocol.exit_crit_edge ]
  %41 = phi i16 [ %.pr, %vlan_get_protocol.exitthread-pre-split ], [ %20, %txd_estimate.exit.vlan_get_protocol.exit_crit_edge ]
  %retval.2.i.i = phi i16 [ %retval.2.i.i.ph, %vlan_get_protocol.exitthread-pre-split ], [ %20, %txd_estimate.exit.vlan_get_protocol.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %retval.2.i.i)
  %cmp = icmp eq i16 %retval.2.i.i, 2048
  %frombool = zext i1 %cmp to i8
  %42 = ptrtoint ptr %ctx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %frombool, ptr %ctx, align 4
  %43 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.134)
  switch i16 %41, label %vlan_get_protocol.exit.vlan_get_protocol.exit46_crit_edge [
    i16 -30552, label %vlan_get_protocol.exit.if.then.i.i11_crit_edge
    i16 -32512, label %vlan_get_protocol.exit.if.then.i.i11_crit_edge162
  ]

vlan_get_protocol.exit.if.then.i.i11_crit_edge162: ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i11

vlan_get_protocol.exit.if.then.i.i11_crit_edge:   ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i11

vlan_get_protocol.exit.vlan_get_protocol.exit46_crit_edge: ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_get_protocol.exit46

if.then.i.i11:                                    ; preds = %vlan_get_protocol.exit.if.then.i.i11_crit_edge, %vlan_get_protocol.exit.if.then.i.i11_crit_edge162
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.not.i.i10 = icmp eq i16 %40, 0
  br i1 %tobool.not.i.i10, label %if.then.i.i11.if.end26.i.i22_crit_edge, label %if.then1.i.i13

if.then.i.i11.if.end26.i.i22_crit_edge:           ; preds = %if.then.i.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i22

if.then1.i.i13:                                   ; preds = %if.then.i.i11
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %40)
  %cmp.i.i12 = icmp ult i16 %40, 4
  br i1 %cmp.i.i12, label %do.end.i.i14, label %if.end25.i.i16, !prof !280

do.end.i.i14:                                     ; preds = %if.then1.i.i13
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.79, i32 noundef 598, i32 noundef 9, ptr noundef null) #11
  br label %vlan_get_protocol.exit46

if.end25.i.i16:                                   ; preds = %if.then1.i.i13
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i15 = add nsw i32 %conv.i.i9.pre-phi, -4
  br label %if.end26.i.i22

if.end26.i.i22:                                   ; preds = %if.end25.i.i16, %if.then.i.i11.if.end26.i.i22_crit_edge
  %vlan_depth.0.i.i17 = phi i32 [ %sub.i.i15, %if.end25.i.i16 ], [ 14, %if.then.i.i11.if.end26.i.i22_crit_edge ]
  %44 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i6, i32 0, i32 1
  %tobool2.not.i.i.i.i20 = icmp eq ptr %skb, null
  %data.i.i.i21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i27

do.body27.i.i27:                                  ; preds = %do.body27.backedge.i.i44, %if.end26.i.i22
  %vlan_depth.1.i.i23 = phi i32 [ %vlan_depth.0.i.i17, %if.end26.i.i22 ], [ %add.i.i43, %do.body27.backedge.i.i44 ]
  %parse_depth.0.i.i24 = phi i32 [ 8, %if.end26.i.i22 ], [ %dec.i.i37, %do.body27.backedge.i.i44 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i6) #11
  %45 = ptrtoint ptr %vhdr.i.i6 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -1, ptr %vhdr.i.i6, align 2, !annotation !357
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -1, ptr %44, align 2, !annotation !357
  %47 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len.i.i, align 4
  %49 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data_len.i.i, align 8
  %51 = add i32 %vlan_depth.1.i.i23, %50
  %sub.i1.i.i.i25 = sub i32 %48, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i25)
  %cmp.i.i.i.i26 = icmp sgt i32 %sub.i1.i.i.i25, 3
  br i1 %cmp.i.i.i.i26, label %if.then.i.i.i.i29, label %if.end.i.i.i.i30, !prof !277

if.then.i.i.i.i29:                                ; preds = %do.body27.i.i27
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %data.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i.i21, align 4
  %add.ptr.i.i.i.i28 = getelementptr i8, ptr %53, i32 %vlan_depth.1.i.i23
  br label %skb_header_pointer.exit.i.i39

if.end.i.i.i.i30:                                 ; preds = %do.body27.i.i27
  br i1 %tobool2.not.i.i.i.i20, label %if.end.i.i.i.i30.cleanup.thread.i.i40_crit_edge, label %lor.lhs.false.i.i.i.i34

if.end.i.i.i.i30.cleanup.thread.i.i40_crit_edge:  ; preds = %if.end.i.i.i.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i40

lor.lhs.false.i.i.i.i34:                          ; preds = %if.end.i.i.i.i30
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i31 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i23, ptr noundef nonnull %vhdr.i.i6, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i31)
  %cmp3.i.i.i.i32 = icmp slt i32 %call.i.i.i.i31, 0
  %spec.select.i.i.i.i33 = select i1 %cmp3.i.i.i.i32, ptr null, ptr %vhdr.i.i6, !prof !280
  br label %skb_header_pointer.exit.i.i39

skb_header_pointer.exit.i.i39:                    ; preds = %lor.lhs.false.i.i.i.i34, %if.then.i.i.i.i29
  %retval.0.i.i.i.i35 = phi ptr [ %add.ptr.i.i.i.i28, %if.then.i.i.i.i29 ], [ %spec.select.i.i.i.i33, %lor.lhs.false.i.i.i.i34 ]
  %tobool29.not.i.i36 = icmp eq ptr %retval.0.i.i.i.i35, null
  %dec.i.i37 = add nsw i32 %parse_depth.0.i.i24, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i37)
  %tobool30.not.i.i38 = icmp eq i32 %dec.i.i37, 0
  %54 = select i1 %tobool29.not.i.i36, i1 true, i1 %tobool30.not.i.i38, !prof !280
  br i1 %54, label %skb_header_pointer.exit.i.i39.cleanup.thread.i.i40_crit_edge, label %do.cond42.i.i42, !prof !280

skb_header_pointer.exit.i.i39.cleanup.thread.i.i40_crit_edge: ; preds = %skb_header_pointer.exit.i.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i40

cleanup.thread.i.i40:                             ; preds = %skb_header_pointer.exit.i.i39.cleanup.thread.i.i40_crit_edge, %if.end.i.i.i.i30.cleanup.thread.i.i40_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i6) #11
  br label %vlan_get_protocol.exit46

do.cond42.i.i42:                                  ; preds = %skb_header_pointer.exit.i.i39
  %h_vlan_encapsulated_proto.i.i41 = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i35, i32 0, i32 1
  %55 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i41 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %h_vlan_encapsulated_proto.i.i41, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i6) #11
  %57 = zext i16 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.135)
  switch i16 %56, label %do.cond42.i.i42.vlan_get_protocol.exit46_crit_edge [
    i16 -30552, label %do.cond42.i.i42.do.body27.backedge.i.i44_crit_edge
    i16 -32512, label %do.cond42.i.i42.do.body27.backedge.i.i44_crit_edge163
  ]

do.cond42.i.i42.do.body27.backedge.i.i44_crit_edge163: ; preds = %do.cond42.i.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i44

do.cond42.i.i42.do.body27.backedge.i.i44_crit_edge: ; preds = %do.cond42.i.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i44

do.cond42.i.i42.vlan_get_protocol.exit46_crit_edge: ; preds = %do.cond42.i.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_get_protocol.exit46

do.body27.backedge.i.i44:                         ; preds = %do.cond42.i.i42.do.body27.backedge.i.i44_crit_edge, %do.cond42.i.i42.do.body27.backedge.i.i44_crit_edge163
  %add.i.i43 = add nsw i32 %vlan_depth.1.i.i23, 4
  br label %do.body27.i.i27

vlan_get_protocol.exit46:                         ; preds = %do.cond42.i.i42.vlan_get_protocol.exit46_crit_edge, %cleanup.thread.i.i40, %do.end.i.i14, %vlan_get_protocol.exit.vlan_get_protocol.exit46_crit_edge
  %retval.2.i.i45 = phi i16 [ 0, %do.end.i.i14 ], [ %41, %vlan_get_protocol.exit.vlan_get_protocol.exit46_crit_edge ], [ 0, %cleanup.thread.i.i40 ], [ %56, %do.cond42.i.i42.vlan_get_protocol.exit46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %retval.2.i.i45)
  %cmp5 = icmp eq i16 %retval.2.i.i45, -31011
  %frombool7 = zext i1 %cmp5 to i8
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %frombool7, ptr %0, align 1
  %59 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %gso_size, align 4
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool.not = icmp eq i16 %62, 0
  br i1 %tobool.not, label %if.else25, label %if.then

if.then:                                          ; preds = %vlan_get_protocol.exit46
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %64 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.if.end21_crit_edge, label %skb_header_cloned.exit

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

skb_header_cloned.exit:                           ; preds = %if.then
  %dataref1.i = getelementptr inbounds %struct.skb_shared_info, ptr %60, i32 0, i32 10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i, i32 noundef 4) #11
  %65 = ptrtoint ptr %dataref1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %dataref1.i, align 4
  %and.i = and i32 %66, 65535
  %shr.i = ashr i32 %66, 16
  %sub.i48 = sub nsw i32 %and.i, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i48)
  %cmp.i.not = icmp eq i32 %sub.i48, 1
  br i1 %cmp.i.not, label %skb_header_cloned.exit.if.end21_crit_edge, label %if.then12

skb_header_cloned.exit.if.end21_crit_edge:        ; preds = %skb_header_cloned.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then12:                                        ; preds = %skb_header_cloned.exit
  %call13 = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end, label %if.then18, !prof !277

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %drop_tso = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 8, i32 4
  %67 = ptrtoint ptr %drop_tso to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %drop_tso, align 8
  %inc = add i64 %68, 1
  store i64 %inc, ptr %drop_tso, align 8
  br label %drop_pkt

if.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %copy_skb_header = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 8, i32 7
  %69 = ptrtoint ptr %copy_skb_header to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %copy_skb_header, align 8
  %inc20 = add i64 %70, 1
  store i64 %inc20, ptr %copy_skb_header, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end, %skb_header_cloned.exit.if.end21_crit_edge, %if.then.if.end21_crit_edge
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %71 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load = load i16, ptr %encapsulation, align 8
  %72 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool22.not = icmp eq i16 %72, 0
  %head.i.i.i54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %73 = ptrtoint ptr %head.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %head.i.i.i54, align 8
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end21
  %inner_transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %75 = ptrtoint ptr %inner_transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %inner_transport_header.i.i.i, align 2
  %inner_network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %77 = ptrtoint ptr %inner_network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %inner_network_header.i.i.i, align 4
  %conv.i.i2.i = zext i16 %78 to i32
  %add.ptr.i.i3.i = getelementptr i8, ptr %74, i32 %conv.i.i2.i
  %79 = ptrtoint ptr %add.ptr.i.i3.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load.i51 = load i8, ptr %add.ptr.i.i3.i, align 4
  %bf.lshr.mask.i = and i8 %bf.load.i51, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i)
  %cmp.i52 = icmp eq i8 %bf.lshr.mask.i, 64
  br i1 %cmp.i52, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i3.i, i32 0, i32 7
  %80 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %check.i, align 2
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i3.i, i32 0, i32 8
  %81 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i3.i, i32 0, i32 9
  %83 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %daddr.i, align 4
  %85 = call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %84, i32 %82, i32 6) #16, !srcloc !358
  %86 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %85) #16, !srcloc !359
  br label %vmxnet3_prepare_inner_tso.exit

if.else.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %saddr9.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i3.i, i32 0, i32 5
  %daddr10.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i3.i, i32 0, i32 6
  %call.i.i = call i32 @__csum_ipv6_magic(ptr noundef %saddr9.i, ptr noundef %daddr10.i, i32 noundef 0, i32 noundef 6, i32 noundef 0) #11
  %87 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #16, !srcloc !359
  br label %vmxnet3_prepare_inner_tso.exit

vmxnet3_prepare_inner_tso.exit:                   ; preds = %if.else.i, %if.then.i
  %neg13.sink.in.in.in.in.i = phi i32 [ %86, %if.then.i ], [ %87, %if.else.i ]
  %neg13.sink.in.in.in.i = xor i32 %neg13.sink.in.in.in.in.i, -1
  %neg13.sink.in.in.i = lshr i32 %neg13.sink.in.in.in.i, 16
  %neg13.sink.in.i = trunc i32 %neg13.sink.in.in.i to i16
  %neg13.sink.i = xor i16 %neg13.sink.in.i, -1
  %conv.i.i.i = zext i16 %76 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %74, i32 %conv.i.i.i
  %88 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %neg13.sink.i, ptr %88, align 4
  br label %if.end47

if.else:                                          ; preds = %if.end21
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %90 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i55 = zext i16 %91 to i32
  %add.ptr.i.i.i56 = getelementptr i8, ptr %74, i32 %conv.i.i.i55
  br i1 %cmp, label %if.then.i61, label %if.else.i62

if.then.i61:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %92 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i14.i = zext i16 %93 to i32
  %add.ptr.i.i15.i = getelementptr i8, ptr %74, i32 %conv.i.i14.i
  %check.i58 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i15.i, i32 0, i32 7
  %94 = ptrtoint ptr %check.i58 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %check.i58, align 2
  %saddr.i59 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i15.i, i32 0, i32 8
  %95 = ptrtoint ptr %saddr.i59 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %saddr.i59, align 4
  %daddr.i60 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i15.i, i32 0, i32 9
  %97 = ptrtoint ptr %daddr.i60 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %daddr.i60, align 4
  %99 = call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %98, i32 %96, i32 6) #16, !srcloc !358
  %100 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %99) #16, !srcloc !359
  br label %if.end7.sink.split.i

if.else.i62:                                      ; preds = %if.else
  br i1 %cmp5, label %if.then6.i, label %if.else.i62.if.end47_crit_edge

if.else.i62.if.end47_crit_edge:                   ; preds = %if.else.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then6.i:                                       ; preds = %if.else.i62
  call void @__sanitizer_cov_trace_pc() #13
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %101 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %102 to i32
  %add.ptr.i.i.i.i63 = getelementptr i8, ptr %74, i32 %conv.i.i.i.i
  %payload_len.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i63, i32 0, i32 2
  %103 = ptrtoint ptr %payload_len.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 0, ptr %payload_len.i.i, align 4
  %saddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i63, i32 0, i32 5
  %daddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i63, i32 0, i32 6
  %call.i.i.i.i64 = call i32 @__csum_ipv6_magic(ptr noundef %saddr.i.i, ptr noundef %daddr.i.i, i32 noundef 0, i32 noundef 6, i32 noundef 0) #11
  %104 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i.i.i64) #16, !srcloc !359
  br label %if.end7.sink.split.i

if.end7.sink.split.i:                             ; preds = %if.then6.i, %if.then.i61
  %.sink.i = phi i32 [ %104, %if.then6.i ], [ %100, %if.then.i61 ]
  %neg.i.i.i.i.i = xor i32 %.sink.i, -1
  %shr.i.i.i.i.i = lshr i32 %neg.i.i.i.i.i, 16
  %conv.i.i.i.i.i = trunc i32 %shr.i.i.i.i.i to i16
  %neg.i.i = xor i16 %conv.i.i.i.i.i, -1
  %check.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i56, i32 0, i32 6
  %105 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %neg.i.i, ptr %check.i.i, align 4
  br label %if.end47

if.else25:                                        ; preds = %vlan_get_protocol.exit46
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %count.0.lcssa.i)
  %cmp26 = icmp ugt i32 %count.0.lcssa.i, 16
  br i1 %cmp26, label %if.then34, label %if.else25.if.else16.i_crit_edge, !prof !280

if.else25.if.else16.i_crit_edge:                  ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else16.i

if.then34:                                        ; preds = %if.else25
  %106 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.i.not.i = icmp eq i32 %107, 0
  br i1 %tobool.i.not.i, label %if.then34.if.end41_crit_edge, label %cond.true.i

if.then34.if.end41_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

cond.true.i:                                      ; preds = %if.then34
  %call.i.i66 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %107) #11
  %tobool.not.i.i67 = icmp eq ptr %call.i.i66, null
  br i1 %tobool.not.i.i67, label %if.then38, label %cond.true.i.if.end41_crit_edge

cond.true.i.if.end41_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then38:                                        ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %drop_too_many_frags = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 8, i32 1
  %108 = ptrtoint ptr %drop_too_many_frags to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %drop_too_many_frags, align 8
  %inc40 = add i64 %109, 1
  store i64 %inc40, ptr %drop_too_many_frags, align 8
  br label %drop_pkt

if.end41:                                         ; preds = %cond.true.i.if.end41_crit_edge, %if.then34.if.end41_crit_edge
  %linearized = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 8, i32 6
  %110 = ptrtoint ptr %linearized to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %linearized, align 8
  %inc43 = add i64 %111, 1
  store i64 %inc43, ptr %linearized, align 8
  %112 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %len.i.i, align 4
  %114 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %data_len.i.i, align 8
  %sub.i68 = add i32 %113, 16383
  %sub = sub i32 %sub.i68, %115
  %div1 = lshr i32 %sub, 14
  %add45 = add nuw nsw i32 %div1, 1
  br label %if.end47

if.end47:                                         ; preds = %if.end41, %if.end7.sink.split.i, %if.else.i62.if.end47_crit_edge, %vmxnet3_prepare_inner_tso.exit
  %count.0.ph = phi i32 [ %count.0.lcssa.i, %if.end7.sink.split.i ], [ %count.0.lcssa.i, %if.else.i62.if.end47_crit_edge ], [ %add45, %if.end41 ], [ %count.0.lcssa.i, %vmxnet3_prepare_inner_tso.exit ]
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %116)
  %.pr129 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr129)
  %tobool.not.i69 = icmp eq i16 %.pr129, 0
  br i1 %tobool.not.i69, label %if.end47.if.else16.i_crit_edge, label %if.then.i71

if.end47.if.else16.i_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else16.i

if.then.i71:                                      ; preds = %if.end47
  %version.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 13
  %117 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %version.i, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %118)
  %cmp.i70 = icmp ugt i8 %118, 3
  br i1 %cmp.i70, label %land.lhs.true.i, label %if.then.i71.if.else.i80_crit_edge

if.then.i71.if.else.i80_crit_edge:                ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i80

land.lhs.true.i:                                  ; preds = %if.then.i71
  %encapsulation.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %119 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %bf.load.i72 = load i16, ptr %encapsulation.i, align 8
  %120 = and i16 %bf.load.i72, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool3.not.i = icmp eq i16 %120, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i80_crit_edge, label %if.then4.i

land.lhs.true.i.if.else.i80_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i80

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i.i73 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %121 = ptrtoint ptr %head.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %head.i.i.i73, align 8
  %inner_transport_header.i.i.i74 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %123 = ptrtoint ptr %inner_transport_header.i.i.i74 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %inner_transport_header.i.i.i74, align 2
  %conv.i.i.i75 = zext i16 %124 to i32
  %add.ptr.i.i.i76 = getelementptr i8, ptr %122, i32 %conv.i.i.i75
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %125 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i76 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %126 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %127 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %sub.ptr.sub.i.i, ptr %2, align 4
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i76, i32 0, i32 4
  %128 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %129 = lshr i16 %bf.load.i.i, 10
  %130 = and i16 %129, 60
  %mul.i.i = zext i16 %130 to i32
  %131 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %mul.i.i, ptr %3, align 4
  %add.i = add i32 %sub.ptr.sub.i.i, %mul.i.i
  br label %if.end118.sink.split.i

if.else.i80:                                      ; preds = %land.lhs.true.i.if.else.i80_crit_edge, %if.then.i71.if.else.i80_crit_edge
  %head.i.i187.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %132 = ptrtoint ptr %head.i.i187.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %head.i.i187.i, align 8
  %transport_header.i.i.i79 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %134 = ptrtoint ptr %transport_header.i.i.i79 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %transport_header.i.i.i79, align 2
  %conv.i.i188.i = zext i16 %135 to i32
  %add.ptr.i.i189.i = getelementptr i8, ptr %133, i32 %conv.i.i188.i
  %data.i190.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %136 = ptrtoint ptr %data.i190.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %data.i190.i, align 4
  %sub.ptr.lhs.cast.i191.i = ptrtoint ptr %add.ptr.i.i189.i to i32
  %sub.ptr.rhs.cast.i192.i = ptrtoint ptr %137 to i32
  %sub.ptr.sub.i193.i = sub i32 %sub.ptr.lhs.cast.i191.i, %sub.ptr.rhs.cast.i192.i
  %138 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %sub.ptr.sub.i193.i, ptr %2, align 4
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i189.i, i32 0, i32 4
  %139 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %bf.load.i.i.i = load i16, ptr %doff.i.i.i, align 4
  %140 = lshr i16 %bf.load.i.i.i, 10
  %141 = and i16 %140, 60
  %mul.i.i.i = zext i16 %141 to i32
  %142 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %mul.i.i.i, ptr %3, align 4
  %add14.i = add i32 %sub.ptr.sub.i193.i, %mul.i.i.i
  br label %if.end118.sink.split.i

if.else16.i:                                      ; preds = %if.end47.if.else16.i_crit_edge, %if.else25.if.else16.i_crit_edge
  %count.0134 = phi i32 [ %count.0.ph, %if.end47.if.else16.i_crit_edge ], [ %count.0.lcssa.i, %if.else25.if.else16.i_crit_edge ]
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %143 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %bf.load17.i = load i16, ptr %ip_summed.i, align 8
  %144 = and i16 %bf.load17.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %144)
  %cmp22.i = icmp eq i16 %144, 1536
  br i1 %cmp22.i, label %if.then24.i, label %if.else90.i

if.then24.i:                                      ; preds = %if.else16.i
  %145 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %145, align 8
  %conv.i.i81 = zext i16 %147 to i32
  %data.i.i.i82 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %148 = ptrtoint ptr %data.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %data.i.i.i82, align 4
  %head.i.i197.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %150 = ptrtoint ptr %head.i.i197.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %head.i.i197.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %149 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %151 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i81, %sub.ptr.lhs.cast.i.i.i
  %sub.i.i83 = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  %152 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %sub.i.i83, ptr %2, align 4
  %version27.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 13
  %153 = ptrtoint ptr %version27.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %version27.i, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %154)
  %cmp29.i = icmp ult i8 %154, 4
  %155 = and i16 %bf.load17.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %tobool38.not.i = icmp eq i16 %155, 0
  %or.cond144 = select i1 %cmp29.i, i1 true, i1 %tobool38.not.i
  br i1 %or.cond144, label %if.else51.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #13
  %inner_network_header.i.i.i84 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %156 = ptrtoint ptr %inner_network_header.i.i.i84 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %inner_network_header.i.i.i84, align 4
  %conv.i.i199.i = zext i16 %157 to i32
  %add.ptr.i.i200.i = getelementptr i8, ptr %151, i32 %conv.i.i199.i
  %158 = ptrtoint ptr %add.ptr.i.i200.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %bf.load41.i = load i8, ptr %add.ptr.i.i200.i, align 4
  %bf.lshr42.mask.i = and i8 %bf.load41.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr42.mask.i)
  %cmp44.i = icmp eq i8 %bf.lshr42.mask.i, 64
  %protocol47.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i200.i, i32 0, i32 6
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i200.i, i32 0, i32 3
  %protocol.0.in.i = select i1 %cmp44.i, ptr %protocol47.i, ptr %nexthdr.i
  br label %if.end65.i

if.else51.i:                                      ; preds = %if.then24.i
  %159 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %ctx, align 4, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool52.not.i = icmp eq i8 %160, 0
  br i1 %tobool52.not.i, label %if.else57.i, label %if.then53.i

if.then53.i:                                      ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #13
  %network_header.i.i.i85 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %161 = ptrtoint ptr %network_header.i.i.i85 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %network_header.i.i.i85, align 4
  %conv.i.i206.i = zext i16 %162 to i32
  %add.ptr.i.i207.i = getelementptr i8, ptr %151, i32 %conv.i.i206.i
  %protocol56.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i207.i, i32 0, i32 6
  br label %if.end65.i

if.else57.i:                                      ; preds = %if.else51.i
  %163 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %0, align 1, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool58.not.i = icmp eq i8 %164, 0
  br i1 %tobool58.not.i, label %if.else57.i.sw.default.i_crit_edge, label %if.then59.i

if.else57.i.sw.default.i_crit_edge:               ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default.i

if.then59.i:                                      ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #13
  %network_header.i.i209.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %165 = ptrtoint ptr %network_header.i.i209.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %network_header.i.i209.i, align 4
  %conv.i.i210.i = zext i16 %166 to i32
  %add.ptr.i.i211.i = getelementptr i8, ptr %151, i32 %conv.i.i210.i
  %nexthdr62.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i211.i, i32 0, i32 3
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then59.i, %if.then53.i, %if.then39.i
  %protocol.1.in.i = phi ptr [ %protocol.0.in.i, %if.then39.i ], [ %protocol56.i, %if.then53.i ], [ %nexthdr62.i, %if.then59.i ]
  %167 = ptrtoint ptr %protocol.1.in.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %protocol.1.i = load i8, ptr %protocol.1.in.i, align 1
  %168 = zext i8 %protocol.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %protocol.1.i, label %if.end65.i.sw.default.i_crit_edge [
    i8 6, label %sw.bb.i
    i8 17, label %if.end65.i.sw.epilog.i_crit_edge
  ]

if.end65.i.sw.epilog.i_crit_edge:                 ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end65.i.sw.default.i_crit_edge:                ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default.i

sw.bb.i:                                          ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  %transport_header.i.i.i220.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %inner_transport_header.i.i.i213.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %transport_header.i.i.i220.sink.i = select i1 %tobool38.not.i, ptr %transport_header.i.i.i220.i, ptr %inner_transport_header.i.i.i213.i
  %169 = ptrtoint ptr %transport_header.i.i.i220.sink.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %transport_header.i.i.i220.sink.i, align 2
  %conv.i.i.i221.i = zext i16 %170 to i32
  %add.ptr.i.i.i222.i = getelementptr i8, ptr %151, i32 %conv.i.i.i221.i
  %cond.in.in.in.in.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i222.i, i32 0, i32 4
  %171 = ptrtoint ptr %cond.in.in.in.in.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %cond.in.in.in.i = load i16, ptr %cond.in.in.in.in.i, align 4
  %cond.in.in.i = lshr i16 %cond.in.in.in.i, 10
  %cond.in.i = and i16 %cond.in.in.i, 60
  %cond.i87 = zext i16 %cond.in.i to i32
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end65.i.sw.default.i_crit_edge, %if.else57.i.sw.default.i_crit_edge
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb.i, %if.end65.i.sw.epilog.i_crit_edge
  %.sink.i88 = phi i32 [ 0, %sw.default.i ], [ %cond.i87, %sw.bb.i ], [ 8, %if.end65.i.sw.epilog.i_crit_edge ]
  %172 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %.sink.i88, ptr %3, align 4
  %add82.i = add i32 %.sink.i88, %sub.i.i83
  %173 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %len.i.i, align 4
  %175 = call i32 @llvm.umin.i32(i32 %add82.i, i32 %174) #11
  br label %if.end103.i

if.else90.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #13
  %176 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %2, align 4
  %177 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %3, align 4
  %txdata_desc_size.i = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 12
  %178 = ptrtoint ptr %txdata_desc_size.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %txdata_desc_size.i, align 4
  %conv93.i = zext i16 %179 to i32
  %180 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %len.i.i, align 4
  %182 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %data_len.i.i, align 8
  %sub.i226.i = sub i32 %181, %183
  %184 = call i32 @llvm.umin.i32(i32 %sub.i226.i, i32 %conv93.i) #11
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.else90.i, %sw.epilog.i
  %185 = phi i32 [ %181, %if.else90.i ], [ %174, %sw.epilog.i ]
  %.sink232.i = phi i32 [ %184, %if.else90.i ], [ %175, %sw.epilog.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %185)
  %cmp105.i = icmp ult i32 %185, 129
  %spec.store.select = select i1 %cmp105.i, i32 %185, i32 %.sink232.i
  %186 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %spec.store.select, ptr %4, align 4
  %187 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i.i = sub i32 %185, %188
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %spec.store.select, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end103.i.if.end118.i_crit_edge, !prof !280

if.end103.i.if.end118.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118.i

if.end.i.i:                                       ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_cmp4(i32 %185, i32 %spec.store.select)
  %cmp3.i.i = icmp ult i32 %185, %spec.store.select
  br i1 %cmp3.i.i, label %if.end.i.i.if.else113_crit_edge, label %pskb_may_pull.exit.i, !prof !280

if.end.i.i.if.else113_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else113

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i227.i = sub i32 %spec.store.select, %sub.i.i.i
  %call13.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i227.i) #11
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.if.else113_crit_edge, label %pskb_may_pull.exit.i.if.end118.i_crit_edge, !prof !280

pskb_may_pull.exit.i.if.end118.i_crit_edge:       ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118.i

pskb_may_pull.exit.i.if.else113_crit_edge:        ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else113

if.end118.sink.split.i:                           ; preds = %if.else.i80, %if.then4.i
  %add.sink.i = phi i32 [ %add.i, %if.then4.i ], [ %add14.i, %if.else.i80 ]
  %189 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %add.sink.i, ptr %4, align 4
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.end118.sink.split.i, %pskb_may_pull.exit.i.if.end118.i_crit_edge, %if.end103.i.if.end118.i_crit_edge
  %count.0133 = phi i32 [ %count.0.ph, %if.end118.sink.split.i ], [ %count.0134, %pskb_may_pull.exit.i.if.end118.i_crit_edge ], [ %count.0134, %if.end103.i.if.end118.i_crit_edge ]
  %190 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %4, align 4
  %txdata_desc_size120.i = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 12
  %192 = ptrtoint ptr %txdata_desc_size120.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %txdata_desc_size120.i, align 4
  %conv121.i = zext i16 %193 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %191, i32 %conv121.i)
  %cmp122.i = icmp ugt i32 %191, %conv121.i
  br i1 %cmp122.i, label %land.rhs, label %if.end118.i.do.end69_crit_edge, !prof !280

if.end118.i.do.end69_crit_edge:                   ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69

land.rhs:                                         ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #13
  %oversized_hdr.i = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 8, i32 8
  %194 = ptrtoint ptr %oversized_hdr.i to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %oversized_hdr.i, align 8
  %inc.i92 = add i64 %195, 1
  store i64 %inc.i92, ptr %oversized_hdr.i, align 8
  %196 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %4, align 4
  br label %do.end69

do.end69:                                         ; preds = %land.rhs, %if.end118.i.do.end69_crit_edge
  %197 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %198)
  %tobool71.not = icmp eq i16 %198, 0
  br i1 %tobool71.not, label %if.else86, label %if.then72

if.then72:                                        ; preds = %do.end69
  %199 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %2, align 4
  %201 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %3, align 4
  %add73 = add i32 %202, %200
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add73)
  %cmp74 = icmp ugt i32 %add73, 16384
  br i1 %cmp74, label %if.then82, label %if.then72.do.body118_crit_edge, !prof !280

if.then72.do.body118_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body118

if.then82:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #13
  %drop_oversized_hdr = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 8, i32 2
  %203 = ptrtoint ptr %drop_oversized_hdr to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %drop_oversized_hdr, align 8
  %inc84 = add i64 %204, 1
  store i64 %inc84, ptr %drop_oversized_hdr, align 8
  br label %drop_pkt

if.else86:                                        ; preds = %do.end69
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %205 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %205)
  %bf.load87 = load i16, ptr %ip_summed, align 8
  %206 = and i16 %bf.load87, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %206)
  %cmp92 = icmp eq i16 %206, 1536
  br i1 %cmp92, label %if.then94, label %if.else86.do.body118_crit_edge

if.else86.do.body118_crit_edge:                   ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body118

if.then94:                                        ; preds = %if.else86
  %207 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %2, align 4
  %209 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %csum_offset = getelementptr inbounds %struct.anon.135, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %csum_offset to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %csum_offset, align 2
  %conv96 = zext i16 %211 to i32
  %add97 = add i32 %208, %conv96
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add97)
  %cmp98 = icmp ugt i32 %add97, 1024
  br i1 %cmp98, label %if.then106, label %if.then94.do.body118_crit_edge, !prof !280

if.then94.do.body118_crit_edge:                   ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body118

if.then106:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  %drop_oversized_hdr108 = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 8, i32 2
  %212 = ptrtoint ptr %drop_oversized_hdr108 to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %drop_oversized_hdr108, align 8
  %inc109 = add i64 %213, 1
  store i64 %inc109, ptr %drop_oversized_hdr108, align 8
  br label %drop_pkt

if.else113:                                       ; preds = %pskb_may_pull.exit.i.if.else113_crit_edge, %if.end.i.i.if.else113_crit_edge
  %drop_hdr_inspect_err = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 8, i32 3
  %214 = ptrtoint ptr %drop_hdr_inspect_err to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %drop_hdr_inspect_err, align 8
  %inc115 = add i64 %215, 1
  store i64 %inc115, ptr %drop_hdr_inspect_err, align 8
  br label %drop_pkt

do.body118:                                       ; preds = %if.then94.do.body118_crit_edge, %if.else86.do.body118_crit_edge, %if.then72.do.body118_crit_edge
  %tx_lock = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 2
  %call122 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #11
  %tx_ring = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3
  %next2comp.i = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3, i32 3
  %216 = ptrtoint ptr %next2comp.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %next2comp.i, align 4
  %next2fill.i = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3, i32 2
  %218 = ptrtoint ptr %next2fill.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %next2fill.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %217, i32 %219)
  %cmp.i94 = icmp ugt i32 %217, %219
  br i1 %cmp.i94, label %do.body118.vmxnet3_cmd_ring_desc_avail.exit_crit_edge, label %cond.false.i

do.body118.vmxnet3_cmd_ring_desc_avail.exit_crit_edge: ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_cmd_ring_desc_avail.exit

cond.false.i:                                     ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #13
  %size.i = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3, i32 1
  %220 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %size.i, align 4
  br label %vmxnet3_cmd_ring_desc_avail.exit

vmxnet3_cmd_ring_desc_avail.exit:                 ; preds = %cond.false.i, %do.body118.vmxnet3_cmd_ring_desc_avail.exit_crit_edge
  %cond.i95 = phi i32 [ %221, %cond.false.i ], [ 0, %do.body118.vmxnet3_cmd_ring_desc_avail.exit_crit_edge ]
  %222 = xor i32 %219, -1
  %add.i96 = add i32 %217, %222
  %sub3.i = add i32 %add.i96, %cond.i95
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0133, i32 %sub3.i)
  %cmp128 = icmp ugt i32 %count.0133, %sub3.i
  br i1 %cmp128, label %if.then130, label %if.end156

if.then130:                                       ; preds = %vmxnet3_cmd_ring_desc_avail.exit
  %tx_ring_full = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 8, i32 5
  %223 = ptrtoint ptr %tx_ring_full to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %tx_ring_full, align 8
  %inc132 = add i64 %224, 1
  store i64 %inc132, ptr %tx_ring_full, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vmxnet3_tq_xmit.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vmxnet3_tq_xmit, %if.then145)) #11
          to label %do.end154 [label %if.then145], !srcloc !279

if.then145:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #13
  %netdev146 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %225 = ptrtoint ptr %netdev146 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %netdev146, align 16
  %227 = ptrtoint ptr %next2comp.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %next2comp.i, align 4
  %229 = ptrtoint ptr %next2fill.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %next2fill.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @vmxnet3_tq_xmit.__UNIQUE_ID_ddebug509, ptr noundef %226, ptr noundef nonnull @.str.77, ptr noundef %226, i32 noundef %228, i32 noundef %230) #11
  br label %do.end154

do.end154:                                        ; preds = %if.then145, %if.then130
  %stopped.i = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 9
  %231 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 1, ptr %stopped.i, align 16
  %num_stop.i = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 10
  %232 = ptrtoint ptr %num_stop.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %num_stop.i, align 4
  %inc.i97 = add i32 %233, 1
  store i32 %inc.i97, ptr %num_stop.i, align 4
  %netdev.i = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %234 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %netdev.i, align 16
  %sub.ptr.lhs.cast.i = ptrtoint ptr %tq to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %adapter to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %236 = lshr exact i32 %sub.ptr.sub.i, 8
  %conv.i.i98 = and i32 %236, 65535
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %235, i32 0, i32 103
  %237 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %238, i32 %conv.i.i98, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call122) #11
  br label %cleanup

if.end156:                                        ; preds = %vmxnet3_cmd_ring_desc_avail.exit
  %data_ring.i = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 5
  %239 = ptrtoint ptr %data_ring.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %data_ring.i, align 4
  %241 = ptrtoint ptr %next2fill.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %next2fill.i, align 8
  %243 = ptrtoint ptr %txdata_desc_size120.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %txdata_desc_size120.i, align 4
  %conv.i101 = zext i16 %244 to i32
  %mul.i = mul i32 %242, %conv.i101
  %add.ptr.i = getelementptr i8, ptr %240, i32 %mul.i
  %data1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %245 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %data1.i, align 4
  %247 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %4, align 4
  %249 = call ptr @memcpy(ptr %add.ptr.i, ptr %246, i32 %248)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vmxnet3_copy_hdr.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vmxnet3_tq_xmit, %if.then.i104)) #11
          to label %vmxnet3_copy_hdr.exit [label %if.then.i104], !srcloc !279

if.then.i104:                                     ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  %netdev.i103 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %250 = ptrtoint ptr %netdev.i103 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %netdev.i103, align 16
  %252 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %4, align 4
  %254 = ptrtoint ptr %next2fill.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %next2fill.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @vmxnet3_copy_hdr.__UNIQUE_ID_ddebug508, ptr noundef %251, ptr noundef nonnull @.str.81, i32 noundef %253, i32 noundef %255) #11
  br label %vmxnet3_copy_hdr.exit

vmxnet3_copy_hdr.exit:                            ; preds = %if.then.i104, %if.end156
  %call157 = call fastcc i32 @vmxnet3_map_pkt(ptr noundef %skb, ptr noundef nonnull %ctx, ptr noundef %tq, ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %unlock_drop_pkt

if.end160:                                        ; preds = %vmxnet3_copy_hdr.exit
  %256 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %6, align 4
  %arrayidx = getelementptr [4 x i32], ptr %257, i32 0, i32 3
  %258 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 3145728, ptr %arrayidx, align 4
  %259 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %5, align 4
  %arrayidx161 = getelementptr [4 x i32], ptr %260, i32 0, i32 2
  %261 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx161, align 8
  %tempTxDesc.sroa.3.8.insert.ext117 = zext i32 %262 to i64
  %tempTxDesc.sroa.3.8.insert.shift118 = shl nuw i64 %tempTxDesc.sroa.3.8.insert.ext117, 32
  %arrayidx164 = getelementptr [4 x i32], ptr %260, i32 0, i32 3
  %263 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %arrayidx164, align 4
  %tempTxDesc.sroa.3.12.insert.ext = zext i32 %264 to i64
  %tempTxDesc.sroa.3.12.insert.insert = or i64 %tempTxDesc.sroa.3.8.insert.shift118, %tempTxDesc.sroa.3.12.insert.ext
  %shared = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 7
  %265 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %shared, align 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %266, align 8
  %269 = call i32 @llvm.bswap.i32(i32 %268)
  %270 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %271)
  %tobool167.not = icmp eq i16 %271, 0
  br i1 %tobool167.not, label %if.else238, label %if.then168

if.then168:                                       ; preds = %if.end160
  %version = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 13
  %272 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %version, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %273)
  %cmp170 = icmp ugt i8 %273, 3
  br i1 %cmp170, label %land.lhs.true, label %if.then168.if.else202_crit_edge

if.then168.if.else202_crit_edge:                  ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else202

land.lhs.true:                                    ; preds = %if.then168
  %encapsulation172 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %274 = ptrtoint ptr %encapsulation172 to i32
  call void @__asan_load2_noabort(i32 %274)
  %bf.load173 = load i16, ptr %encapsulation172, align 8
  %275 = and i16 %bf.load173, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %275)
  %tobool178.not = icmp eq i16 %275, 0
  br i1 %tobool178.not, label %land.lhs.true.if.else202_crit_edge, label %if.then179

land.lhs.true.if.else202_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else202

if.then179:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %276 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %2, align 4
  %278 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %3, align 4
  %add182 = add i32 %279, %277
  %280 = and i32 %add182, 1023
  %bf.value = zext i32 %280 to i64
  %bf.clear184 = and i64 %tempTxDesc.sroa.3.12.insert.insert, 1125899906838528
  %bf.set = or i64 %bf.clear184, %bf.value
  %bf.value191 = zext i16 %271 to i64
  %bf.shl = shl i64 %bf.value191, 50
  %bf.set187 = or i64 %bf.set, %bf.shl
  %281 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %end.i.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %282, i32 0, i32 8
  %283 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %gso_type, align 8
  %and = and i32 %284, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool196.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool196.not, i64 1024, i64 140737488356352
  %spec.select = or i64 %bf.set187, %spec.select.v
  br label %if.end225

if.else202:                                       ; preds = %land.lhs.true.if.else202_crit_edge, %if.then168.if.else202_crit_edge
  %285 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %2, align 4
  %287 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %3, align 4
  %add205 = add i32 %288, %286
  %289 = and i32 %add205, 1023
  %bf.value208 = zext i32 %289 to i64
  %bf.clear209 = and i64 %tempTxDesc.sroa.3.12.insert.insert, 1125899906838528
  %bf.set210 = or i64 %bf.clear209, %bf.value208
  %bf.value220 = zext i16 %271 to i64
  %bf.shl221 = shl i64 %bf.value220, 50
  %bf.set215 = or i64 %bf.set210, %bf.shl221
  %bf.set223 = or i64 %bf.set215, 3072
  br label %if.end225

if.end225:                                        ; preds = %if.else202, %if.then179
  %tempTxDesc.sroa.3.0 = phi i64 [ %bf.set223, %if.else202 ], [ %spec.select, %if.then179 ]
  %290 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %len.i.i, align 4
  %292 = trunc i64 %tempTxDesc.sroa.3.0 to i32
  %bf.cast229 = and i32 %292, 1023
  %conv232 = zext i16 %271 to i32
  %sub230 = add nsw i32 %conv232, -1
  %add233 = add i32 %sub230, %291
  %sub234 = sub i32 %add233, %bf.cast229
  %div237 = udiv i32 %sub234, %conv232
  br label %if.end312

if.else238:                                       ; preds = %if.end160
  %ip_summed239 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %293 = ptrtoint ptr %ip_summed239 to i32
  call void @__asan_load2_noabort(i32 %293)
  %bf.load240 = load i16, ptr %ip_summed239, align 8
  %294 = and i16 %bf.load240, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %294)
  %cmp245 = icmp eq i16 %294, 1536
  br i1 %cmp245, label %if.then247, label %if.else302

if.then247:                                       ; preds = %if.else238
  %version248 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 13
  %295 = ptrtoint ptr %version248 to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %version248, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %296)
  %cmp250 = icmp ult i8 %296, 4
  %297 = and i16 %bf.load240, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %297)
  %tobool259.not = icmp eq i16 %297, 0
  %or.cond = select i1 %cmp250, i1 true, i1 %tobool259.not
  %298 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %2, align 4
  br i1 %or.cond, label %if.else278, label %if.then260

if.then260:                                       ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #13
  %300 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %3, align 4
  %add263 = add i32 %301, %299
  %302 = and i32 %add263, 1023
  %bf.value266 = zext i32 %302 to i64
  %bf.clear267 = and i64 %tempTxDesc.sroa.3.12.insert.insert, 1125899906838528
  %bf.set268 = or i64 %bf.clear267, %bf.value266
  %bf.set273 = or i64 %bf.set268, 1024
  br label %if.end312

if.else278:                                       ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #13
  %303 = and i32 %299, 1023
  %bf.value282 = zext i32 %303 to i64
  %bf.clear283 = and i64 %tempTxDesc.sroa.3.12.insert.insert, 1125899906838528
  %bf.set284 = or i64 %bf.clear283, %bf.value282
  %304 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %csum_offset291 = getelementptr inbounds %struct.anon.135, ptr %304, i32 0, i32 1
  %305 = ptrtoint ptr %csum_offset291 to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %csum_offset291, align 2
  %conv292 = zext i16 %306 to i32
  %add293 = add i32 %299, %conv292
  %bf.value296 = zext i32 %add293 to i64
  %bf.shl297 = shl i64 %bf.value296, 50
  %bf.set289 = or i64 %bf.shl297, %bf.set284
  %bf.set299 = or i64 %bf.set289, 2048
  br label %if.end312

if.else302:                                       ; preds = %if.else238
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear309 = and i64 %tempTxDesc.sroa.3.12.insert.insert, 1125899906839551
  br label %if.end312

if.end312:                                        ; preds = %if.else302, %if.else278, %if.then260, %if.end225
  %tempTxDesc.sroa.3.1 = phi i64 [ %bf.set299, %if.else278 ], [ %bf.set273, %if.then260 ], [ %bf.clear309, %if.else302 ], [ %tempTxDesc.sroa.3.0, %if.end225 ]
  %num_pkts.0 = phi i32 [ 1, %if.else278 ], [ 1, %if.then260 ], [ 1, %if.else302 ], [ %div237, %if.end225 ]
  %add.i106 = add i32 %num_pkts.0, %269
  %307 = call i32 @llvm.bswap.i32(i32 %add.i106) #11
  %308 = ptrtoint ptr %266 to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %307, ptr %266, align 4
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %309 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %309, i32 4)
  %bf.load316 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load316)
  %tobool319.not = icmp sgt i32 %bf.load316, -1
  %extract.t = trunc i64 %tempTxDesc.sroa.3.1 to i32
  %extract = lshr i64 %tempTxDesc.sroa.3.1, 32
  %extract.t146 = trunc i64 %extract to i32
  br i1 %tobool319.not, label %if.end312.if.end331_crit_edge, label %if.then320

if.end312.if.end331_crit_edge:                    ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end331

if.then320:                                       ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #13
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %310 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %vlan_tci, align 2
  %312 = zext i16 %311 to i64
  %bf.shl327 = shl nuw nsw i64 %312, 16
  %bf.set323 = and i64 %tempTxDesc.sroa.3.1, 32767
  %bf.clear328 = or i64 %bf.shl327, %bf.set323
  %313 = trunc i64 %bf.clear328 to i32
  %extract.t145 = or i32 %313, 32768
  br label %if.end331

if.end331:                                        ; preds = %if.then320, %if.end312.if.end331_crit_edge
  %tempTxDesc.sroa.3.2.off0 = phi i32 [ %extract.t, %if.end312.if.end331_crit_edge ], [ %extract.t145, %if.then320 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !360
  %314 = xor i32 %extract.t146, 4194304
  %315 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %5, align 4
  %add.ptr1.i = getelementptr %struct.Vmxnet3_TxDesc, ptr %316, i32 1
  %incdec.ptr2.i = getelementptr i32, ptr %add.ptr1.i, i32 -1
  %317 = call i32 @llvm.bswap.i32(i32 %tempTxDesc.sroa.3.2.off0) #11
  %318 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %317, ptr %incdec.ptr2.i, align 4
  %incdec.ptr2.1.i = getelementptr i32, ptr %incdec.ptr2.i, i32 -1
  %319 = call i32 @llvm.bswap.i32(i32 %314) #11
  %320 = ptrtoint ptr %incdec.ptr2.1.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %319, ptr %incdec.ptr2.1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vmxnet3_tq_xmit.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vmxnet3_tq_xmit, %if.then349)) #11
          to label %do.end359 [label %if.then349], !srcloc !279

if.then349:                                       ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #13
  %netdev350 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %321 = ptrtoint ptr %netdev350 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %netdev350, align 16
  %323 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %5, align 4
  %325 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %tx_ring, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %324 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %326 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 4
  %327 = ptrtoint ptr %316 to i32
  call void @__asan_load8_noabort(i32 %327)
  %328 = load i64, ptr %316, align 8
  %329 = call i64 @llvm.bswap.i64(i64 %328)
  %arrayidx353 = getelementptr [4 x i32], ptr %316, i32 0, i32 2
  %330 = ptrtoint ptr %arrayidx353 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx353, align 8
  %332 = call i32 @llvm.bswap.i32(i32 %331)
  %arrayidx354 = getelementptr [4 x i32], ptr %316, i32 0, i32 3
  %333 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %arrayidx354, align 4
  %335 = call i32 @llvm.bswap.i32(i32 %334)
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @vmxnet3_tq_xmit.__UNIQUE_ID_ddebug510, ptr noundef %322, ptr noundef nonnull @.str.78, i32 noundef %sub.ptr.div, i64 noundef %329, i32 noundef %332, i32 noundef %335) #11
  br label %do.end359

do.end359:                                        ; preds = %if.then349, %if.end331
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call122) #11
  %336 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %shared, align 4
  %txThreshold = getelementptr inbounds %struct.Vmxnet3_TxQueueCtrl, ptr %337, i32 0, i32 1
  %338 = ptrtoint ptr %txThreshold to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %txThreshold, align 4
  %340 = call i32 @llvm.bswap.i32(i32 %339)
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i106, i32 %340)
  %cmp362.not = icmp ult i32 %add.i106, %340
  br i1 %cmp362.not, label %do.end359.cleanup_crit_edge, label %if.then364

do.end359.cleanup_crit_edge:                      ; preds = %do.end359
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then364:                                       ; preds = %do.end359
  call void @__sanitizer_cov_trace_pc() #13
  %341 = ptrtoint ptr %337 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 0, ptr %337, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  call void @arm_heavy_mb() #11
  %342 = ptrtoint ptr %next2fill.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %next2fill.i, align 8
  %344 = call i32 @llvm.bswap.i32(i32 %343)
  %hw_addr0 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 11
  %345 = ptrtoint ptr %hw_addr0 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %hw_addr0, align 8
  %qid = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 11
  %347 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %qid, align 8
  %mul = shl i32 %348, 3
  %add372 = add i32 %mul, 1536
  %add.ptr = getelementptr i8, ptr %346, i32 %add372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %344) #11, !srcloc !284
  br label %cleanup

unlock_drop_pkt:                                  ; preds = %vmxnet3_copy_hdr.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call122) #11
  br label %drop_pkt

drop_pkt:                                         ; preds = %unlock_drop_pkt, %if.else113, %if.then106, %if.then82, %if.then38, %if.then18
  %stats375 = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 8
  %349 = ptrtoint ptr %stats375 to i32
  call void @__asan_load8_noabort(i32 %349)
  %350 = load i64, ptr %stats375, align 8
  %inc376 = add i64 %350, 1
  store i64 %inc376, ptr %stats375, align 8
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %drop_pkt, %if.then364, %do.end359.cleanup_crit_edge, %do.end154
  %retval.0 = phi i32 [ 0, %drop_pkt ], [ 16, %do.end154 ], [ 0, %if.then364 ], [ 0, %do.end359.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vmxnet3_map_pkt(ptr noundef %skb, ptr nocapture noundef %ctx, ptr nocapture noundef %tq, ptr nocapture noundef readonly %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %copy_size = getelementptr inbounds %struct.vmxnet3_tx_ctx, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %copy_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %copy_size, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub.i)
  %cmp = icmp ugt i32 %1, %sub.i
  br i1 %cmp, label %do.body2, label %do.end7, !prof !280

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #11, !srcloc !362
  unreachable

do.end7:                                          ; preds = %entry
  %tx_ring = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3
  %gen = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3, i32 4
  %6 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gen, align 8
  %8 = xor i8 %7, 1
  %xor = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %xor, 14
  %9 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_ring, align 8
  %next2fill = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %next2fill to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %next2fill, align 8
  %add.ptr = getelementptr %union.Vmxnet3_GenericDesc, ptr %10, i32 %12
  %sop_txd = getelementptr inbounds %struct.vmxnet3_tx_ctx, ptr %ctx, i32 0, i32 6
  %13 = ptrtoint ptr %sop_txd to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %sop_txd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool12.not = icmp eq i32 %1, 0
  br i1 %tobool12.not, label %do.end7.if.end55_crit_edge, label %if.then13

do.end7.if.end55_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then13:                                        ; preds = %do.end7
  %basePA = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %basePA to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %basePA, align 4
  %16 = ptrtoint ptr %next2fill to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next2fill, align 8
  %txdata_desc_size = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 12
  %18 = ptrtoint ptr %txdata_desc_size to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %txdata_desc_size, align 4
  %conv16 = zext i16 %19 to i32
  %mul = mul i32 %17, %conv16
  %add = add i32 %mul, %15
  %conv17 = zext i32 %add to i64
  %20 = tail call i64 @llvm.bswap.i64(i64 %conv17)
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %add.ptr, align 8
  %22 = ptrtoint ptr %copy_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %copy_size, align 4
  %or = or i32 %23, %shl
  %24 = tail call i32 @llvm.bswap.i32(i32 %or)
  %25 = ptrtoint ptr %sop_txd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sop_txd, align 4
  %arrayidx = getelementptr [4 x i32], ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %arrayidx, align 8
  %28 = load ptr, ptr %sop_txd, align 4
  %arrayidx22 = getelementptr [4 x i32], ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx22, align 4
  %buf_info = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 4
  %30 = ptrtoint ptr %buf_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf_info, align 32
  %32 = ptrtoint ptr %next2fill to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %next2fill, align 8
  %add.ptr25 = getelementptr %struct.vmxnet3_tx_buf_info, ptr %31, i32 %33
  %34 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %add.ptr25, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vmxnet3_map_pkt.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vmxnet3_map_pkt, %if.then36)) #11
          to label %do.end49 [label %if.then36], !srcloc !279

if.then36:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %netdev = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %35 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %netdev, align 16
  %37 = ptrtoint ptr %next2fill to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %next2fill, align 8
  %39 = ptrtoint ptr %sop_txd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sop_txd, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %40, align 8
  %43 = tail call i64 @llvm.bswap.i64(i64 %42)
  %arrayidx42 = getelementptr [4 x i32], ptr %40, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx42, align 8
  %arrayidx44 = getelementptr [4 x i32], ptr %40, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx44, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @vmxnet3_map_pkt.__UNIQUE_ID_ddebug501, ptr noundef %36, ptr noundef nonnull @.str.83, i32 noundef %38, i64 noundef %43, i32 noundef %45, i32 noundef %47) #11
  br label %do.end49

do.end49:                                         ; preds = %if.then36, %if.then13
  %48 = ptrtoint ptr %next2fill to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %next2fill, align 4
  %inc.i = add i32 %49, 1
  store i32 %inc.i, ptr %next2fill, align 4
  %size.i = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %51)
  %cmp.i = icmp eq i32 %inc.i, %51
  br i1 %cmp.i, label %if.then.i, label %do.end49.vmxnet3_cmd_ring_adv_next2fill.exit_crit_edge, !prof !280

do.end49.vmxnet3_cmd_ring_adv_next2fill.exit_crit_edge: ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_cmd_ring_adv_next2fill.exit

if.then.i:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %next2fill to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %next2fill, align 4
  %53 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %gen, align 4
  %55 = xor i8 %54, 1
  store i8 %55, ptr %gen, align 4
  br label %vmxnet3_cmd_ring_adv_next2fill.exit

vmxnet3_cmd_ring_adv_next2fill.exit:              ; preds = %if.then.i, %do.end49.vmxnet3_cmd_ring_adv_next2fill.exit_crit_edge
  %56 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %gen, align 8
  %conv53 = zext i8 %57 to i32
  %shl54 = shl nuw nsw i32 %conv53, 14
  br label %if.end55

if.end55:                                         ; preds = %vmxnet3_cmd_ring_adv_next2fill.exit, %do.end7.if.end55_crit_edge
  %tbi.0 = phi ptr [ %add.ptr25, %vmxnet3_cmd_ring_adv_next2fill.exit ], [ null, %do.end7.if.end55_crit_edge ]
  %dw2.0 = phi i32 [ %shl54, %vmxnet3_cmd_ring_adv_next2fill.exit ], [ %shl, %do.end7.if.end55_crit_edge ]
  %58 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i, align 4
  %60 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %data_len.i, align 8
  %62 = ptrtoint ptr %copy_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %copy_size, align 4
  %64 = add i32 %61, %63
  %sub = sub i32 %59, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool59.not65 = icmp eq i32 %sub, 0
  br i1 %tobool59.not65, label %if.end55.for.cond.preheader_crit_edge, label %while.body.lr.ph

if.end55.for.cond.preheader_crit_edge:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

while.body.lr.ph:                                 ; preds = %if.end55
  %buf_info65 = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 4
  %pdev70 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %netdev129 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %size.i16 = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3, i32 1
  br label %while.body

for.cond.preheader:                               ; preds = %cleanup.for.cond.preheader_crit_edge, %if.end55.for.cond.preheader_crit_edge
  %tbi.1.lcssa = phi ptr [ %tbi.0, %if.end55.for.cond.preheader_crit_edge ], [ %add.ptr68, %cleanup.for.cond.preheader_crit_edge ]
  %gdesc.0.lcssa = phi ptr [ %add.ptr, %if.end55.for.cond.preheader_crit_edge ], [ %add.ptr86, %cleanup.for.cond.preheader_crit_edge ]
  %dw2.1.lcssa = phi i32 [ %dw2.0, %if.end55.for.cond.preheader_crit_edge ], [ %shl144, %cleanup.for.cond.preheader_crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %65 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %end.i, align 4
  %nr_frags78 = getelementptr inbounds %struct.skb_shared_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %nr_frags78 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %nr_frags78, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp14980.not = icmp eq i8 %68, 0
  br i1 %cmp14980.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %buf_info158 = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 4
  %pdev169 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  %netdev233 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %size.i26 = getelementptr inbounds %struct.vmxnet3_tx_queue, ptr %tq, i32 0, i32 3, i32 1
  br label %for.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %dw2.168 = phi i32 [ %dw2.0, %while.body.lr.ph ], [ %shl144, %cleanup.while.body_crit_edge ]
  %len.067 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub145, %cleanup.while.body_crit_edge ]
  %buf_offset.066 = phi i32 [ %63, %while.body.lr.ph ], [ %add146, %cleanup.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %len.067)
  %cmp60 = icmp ult i32 %len.067, 16384
  %69 = tail call i32 @llvm.umin.i32(i32 %len.067, i32 16384)
  %or63 = select i1 %cmp60, i32 %len.067, i32 0
  %dw2.2 = or i32 %or63, %dw2.168
  %70 = ptrtoint ptr %buf_info65 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buf_info65, align 32
  %72 = ptrtoint ptr %next2fill to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %next2fill, align 8
  %add.ptr68 = getelementptr %struct.vmxnet3_tx_buf_info, ptr %71, i32 %73
  %74 = ptrtoint ptr %add.ptr68 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %add.ptr68, align 4
  %75 = ptrtoint ptr %pdev70 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev70, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data, align 4
  %add.ptr71 = getelementptr i8, ptr %78, i32 %buf_offset.066
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr71) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %while.body
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i10, !prof !277

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i10:                                      ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44, i32 3
  %79 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %80, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i10.dev_name.exit.i_crit_edge

if.then.i10.dev_name.exit.i_crit_edge:            ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i10.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %82, %if.end.i.i ], [ %80, %if.then.i10.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %add.ptr71, i32 noundef %69) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %83 = load ptr, ptr @mem_map, align 4
  %84 = ptrtoint ptr %add.ptr71 to i32
  %sub.i11 = add i32 %84, 1073741824
  %shr.i = lshr i32 %sub.i11, 12
  %add.ptr.i = getelementptr %struct.page, ptr %83, i32 %shr.i
  %and.i = and i32 %84, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %69, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i12 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_addr = getelementptr %struct.vmxnet3_tx_buf_info, ptr %71, i32 %73, i32 3
  %85 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %retval.0.i12, ptr %dma_addr, align 4
  %86 = ptrtoint ptr %pdev70 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev70, align 4
  %dev74 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev74, i32 noundef %retval.0.i12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i12)
  %cmp.i13 = icmp eq i32 %retval.0.i12, -1
  br i1 %cmp.i13, label %dma_map_single_attrs.exit.cleanup261_crit_edge, label %if.end79

dma_map_single_attrs.exit.cleanup261_crit_edge:   ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup261

if.end79:                                         ; preds = %dma_map_single_attrs.exit
  %conv80 = trunc i32 %69 to i16
  %len81 = getelementptr %struct.vmxnet3_tx_buf_info, ptr %71, i32 %73, i32 1
  %88 = ptrtoint ptr %len81 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv80, ptr %len81, align 4
  %89 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tx_ring, align 8
  %91 = ptrtoint ptr %next2fill to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %next2fill, align 8
  %add.ptr86 = getelementptr %union.Vmxnet3_GenericDesc, ptr %90, i32 %92
  %gen88 = getelementptr %struct.Vmxnet3_TxDesc, ptr %add.ptr86, i32 0, i32 1
  %93 = ptrtoint ptr %gen88 to i32
  call void @__asan_load8_noabort(i32 %93)
  %bf.load = load i64, ptr %gen88, align 8
  %bf.lshr = lshr i64 %bf.load, 46
  %94 = trunc i64 %bf.lshr to i32
  %bf.cast = and i32 %94, 1
  %95 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %gen, align 8
  %conv91 = zext i8 %96 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast, i32 %conv91)
  %cmp92 = icmp eq i32 %bf.cast, %conv91
  br i1 %cmp92, label %do.body101, label %do.end109, !prof !280

do.body101:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 733, 0\0A.popsection", ""() #11, !srcloc !363
  unreachable

do.end109:                                        ; preds = %if.end79
  %97 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dma_addr, align 4
  %conv111 = zext i32 %98 to i64
  %99 = tail call i64 @llvm.bswap.i64(i64 %conv111)
  %100 = ptrtoint ptr %add.ptr86 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %add.ptr86, align 8
  %101 = tail call i32 @llvm.bswap.i32(i32 %dw2.2)
  %102 = ptrtoint ptr %gen88 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %gen88, align 8
  %arrayidx114 = getelementptr [4 x i32], ptr %add.ptr86, i32 0, i32 3
  %103 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %arrayidx114, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vmxnet3_map_pkt.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vmxnet3_map_pkt, %if.then128)) #11
          to label %do.end139 [label %if.then128], !srcloc !279

if.then128:                                       ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %netdev129 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %netdev129, align 16
  %106 = ptrtoint ptr %next2fill to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %next2fill, align 8
  %108 = ptrtoint ptr %add.ptr86 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %add.ptr86, align 8
  %110 = tail call i64 @llvm.bswap.i64(i64 %109)
  %111 = ptrtoint ptr %gen88 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %gen88, align 8
  %113 = tail call i32 @llvm.bswap.i32(i32 %112)
  %114 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx114, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @vmxnet3_map_pkt.__UNIQUE_ID_ddebug502, ptr noundef %105, ptr noundef nonnull @.str.83, i32 noundef %107, i64 noundef %110, i32 noundef %113, i32 noundef %115) #11
  br label %do.end139

do.end139:                                        ; preds = %if.then128, %do.end109
  %116 = ptrtoint ptr %next2fill to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %next2fill, align 4
  %inc.i15 = add i32 %117, 1
  store i32 %inc.i15, ptr %next2fill, align 4
  %118 = ptrtoint ptr %size.i16 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %size.i16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i15, i32 %119)
  %cmp.i17 = icmp eq i32 %inc.i15, %119
  br i1 %cmp.i17, label %if.then.i19, label %do.end139.cleanup_crit_edge, !prof !280

do.end139.cleanup_crit_edge:                      ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i19:                                      ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %next2fill to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %next2fill, align 4
  %121 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %gen, align 4
  %123 = xor i8 %122, 1
  store i8 %123, ptr %gen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i19, %do.end139.cleanup_crit_edge
  %124 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %gen, align 8
  %conv143 = zext i8 %125 to i32
  %shl144 = shl nuw nsw i32 %conv143, 14
  %sub145 = sub i32 %len.067, %69
  %add146 = add i32 %69, %buf_offset.066
  %tobool59.not = icmp eq i32 %sub145, 0
  br i1 %tobool59.not, label %cleanup.for.cond.preheader_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.for.cond.preheader_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %126 = phi ptr [ %66, %for.body.lr.ph ], [ %183, %for.inc.for.body_crit_edge ]
  %dw2.485 = phi i32 [ %dw2.1.lcssa, %for.body.lr.ph ], [ %dw2.5.lcssa, %for.inc.for.body_crit_edge ]
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %gdesc.282 = phi ptr [ %gdesc.0.lcssa, %for.body.lr.ph ], [ %gdesc.3.lcssa, %for.inc.for.body_crit_edge ]
  %tbi.281 = phi ptr [ %tbi.1.lcssa, %for.body.lr.ph ], [ %tbi.3.lcssa, %for.inc.for.body_crit_edge ]
  %arrayidx152 = getelementptr %struct.skb_shared_info, ptr %126, i32 0, i32 12, i32 %i.083
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %126, i32 0, i32 12, i32 %i.083, i32 1
  %127 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %bv_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool156.not71 = icmp eq i32 %128, 0
  br i1 %tobool156.not71, label %for.body.for.inc_crit_edge, label %while.body157.lr.ph

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

while.body157.lr.ph:                              ; preds = %for.body
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %126, i32 0, i32 12, i32 %i.083, i32 2
  br label %while.body157

while.body157:                                    ; preds = %vmxnet3_cmd_ring_adv_next2fill.exit30.while.body157_crit_edge, %while.body157.lr.ph
  %dw2.574 = phi i32 [ %dw2.485, %while.body157.lr.ph ], [ %shl248, %vmxnet3_cmd_ring_adv_next2fill.exit30.while.body157_crit_edge ]
  %len.273 = phi i32 [ %128, %while.body157.lr.ph ], [ %sub249, %vmxnet3_cmd_ring_adv_next2fill.exit30.while.body157_crit_edge ]
  %buf_offset.272 = phi i32 [ 0, %while.body157.lr.ph ], [ %add250, %vmxnet3_cmd_ring_adv_next2fill.exit30.while.body157_crit_edge ]
  %129 = ptrtoint ptr %buf_info158 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %buf_info158, align 32
  %131 = ptrtoint ptr %next2fill to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %next2fill, align 8
  %add.ptr161 = getelementptr %struct.vmxnet3_tx_buf_info, ptr %130, i32 %132
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %len.273)
  %cmp162 = icmp ult i32 %len.273, 16384
  %133 = tail call i32 @llvm.umin.i32(i32 %len.273, i32 16384)
  %or165 = select i1 %cmp162, i32 %len.273, i32 0
  %dw2.6 = or i32 %or165, %dw2.574
  %134 = ptrtoint ptr %add.ptr161 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 3, ptr %add.ptr161, align 4
  %135 = ptrtoint ptr %pdev169 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pdev169, align 4
  %dev170 = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 44
  %137 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx152, align 4
  %139 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %bv_offset.i.i, align 4
  %add.i = add i32 %140, %buf_offset.272
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev170, ptr noundef %138, i32 noundef %add.i, i32 noundef %133, i32 noundef 1, i32 noundef 0) #11
  %dma_addr172 = getelementptr %struct.vmxnet3_tx_buf_info, ptr %130, i32 %132, i32 3
  %141 = ptrtoint ptr %dma_addr172 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %call2.i, ptr %dma_addr172, align 4
  %142 = ptrtoint ptr %pdev169 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pdev169, align 4
  %dev174 = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev174, i32 noundef %call2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i22.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i22.not, label %while.body157.cleanup261_crit_edge, label %if.end179

while.body157.cleanup261_crit_edge:               ; preds = %while.body157
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup261

if.end179:                                        ; preds = %while.body157
  %conv180 = trunc i32 %133 to i16
  %len181 = getelementptr %struct.vmxnet3_tx_buf_info, ptr %130, i32 %132, i32 1
  %144 = ptrtoint ptr %len181 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv180, ptr %len181, align 4
  %145 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %tx_ring, align 8
  %147 = ptrtoint ptr %next2fill to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %next2fill, align 8
  %add.ptr186 = getelementptr %union.Vmxnet3_GenericDesc, ptr %146, i32 %148
  %gen188 = getelementptr %struct.Vmxnet3_TxDesc, ptr %add.ptr186, i32 0, i32 1
  %149 = ptrtoint ptr %gen188 to i32
  call void @__asan_load8_noabort(i32 %149)
  %bf.load189 = load i64, ptr %gen188, align 8
  %bf.lshr190 = lshr i64 %bf.load189, 46
  %150 = trunc i64 %bf.lshr190 to i32
  %bf.cast192 = and i32 %150, 1
  %151 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %gen, align 8
  %conv195 = zext i8 %152 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast192, i32 %conv195)
  %cmp196 = icmp eq i32 %bf.cast192, %conv195
  br i1 %cmp196, label %do.body205, label %do.end213, !prof !280

do.body205:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 775, 0\0A.popsection", ""() #11, !srcloc !364
  unreachable

do.end213:                                        ; preds = %if.end179
  %153 = ptrtoint ptr %dma_addr172 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %dma_addr172, align 4
  %conv215 = zext i32 %154 to i64
  %155 = tail call i64 @llvm.bswap.i64(i64 %conv215)
  %156 = ptrtoint ptr %add.ptr186 to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %155, ptr %add.ptr186, align 8
  %157 = tail call i32 @llvm.bswap.i32(i32 %dw2.6)
  %158 = ptrtoint ptr %gen188 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %gen188, align 8
  %arrayidx218 = getelementptr [4 x i32], ptr %add.ptr186, i32 0, i32 3
  %159 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %arrayidx218, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vmxnet3_map_pkt.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vmxnet3_map_pkt, %if.then232)) #11
          to label %do.end243 [label %if.then232], !srcloc !279

if.then232:                                       ; preds = %do.end213
  call void @__sanitizer_cov_trace_pc() #13
  %160 = ptrtoint ptr %netdev233 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %netdev233, align 16
  %162 = ptrtoint ptr %next2fill to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %next2fill, align 8
  %164 = ptrtoint ptr %add.ptr186 to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %add.ptr186, align 8
  %166 = tail call i64 @llvm.bswap.i64(i64 %165)
  %167 = ptrtoint ptr %gen188 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %gen188, align 8
  %169 = tail call i32 @llvm.bswap.i32(i32 %168)
  %170 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx218, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @vmxnet3_map_pkt.__UNIQUE_ID_ddebug503, ptr noundef %161, ptr noundef nonnull @.str.84, i32 noundef %163, i64 noundef %166, i32 noundef %169, i32 noundef %171) #11
  br label %do.end243

do.end243:                                        ; preds = %if.then232, %do.end213
  %172 = ptrtoint ptr %next2fill to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %next2fill, align 4
  %inc.i25 = add i32 %173, 1
  store i32 %inc.i25, ptr %next2fill, align 4
  %174 = ptrtoint ptr %size.i26 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %size.i26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i25, i32 %175)
  %cmp.i27 = icmp eq i32 %inc.i25, %175
  br i1 %cmp.i27, label %if.then.i29, label %do.end243.vmxnet3_cmd_ring_adv_next2fill.exit30_crit_edge, !prof !280

do.end243.vmxnet3_cmd_ring_adv_next2fill.exit30_crit_edge: ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_cmd_ring_adv_next2fill.exit30

if.then.i29:                                      ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #13
  %176 = ptrtoint ptr %next2fill to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %next2fill, align 4
  %177 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %gen, align 4
  %179 = xor i8 %178, 1
  store i8 %179, ptr %gen, align 4
  br label %vmxnet3_cmd_ring_adv_next2fill.exit30

vmxnet3_cmd_ring_adv_next2fill.exit30:            ; preds = %if.then.i29, %do.end243.vmxnet3_cmd_ring_adv_next2fill.exit30_crit_edge
  %180 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %gen, align 8
  %conv247 = zext i8 %181 to i32
  %shl248 = shl nuw nsw i32 %conv247, 14
  %sub249 = sub i32 %len.273, %133
  %add250 = add i32 %133, %buf_offset.272
  %tobool156.not = icmp eq i32 %sub249, 0
  br i1 %tobool156.not, label %vmxnet3_cmd_ring_adv_next2fill.exit30.for.inc_crit_edge, label %vmxnet3_cmd_ring_adv_next2fill.exit30.while.body157_crit_edge

vmxnet3_cmd_ring_adv_next2fill.exit30.while.body157_crit_edge: ; preds = %vmxnet3_cmd_ring_adv_next2fill.exit30
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body157

vmxnet3_cmd_ring_adv_next2fill.exit30.for.inc_crit_edge: ; preds = %vmxnet3_cmd_ring_adv_next2fill.exit30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %vmxnet3_cmd_ring_adv_next2fill.exit30.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %tbi.3.lcssa = phi ptr [ %tbi.281, %for.body.for.inc_crit_edge ], [ %add.ptr161, %vmxnet3_cmd_ring_adv_next2fill.exit30.for.inc_crit_edge ]
  %gdesc.3.lcssa = phi ptr [ %gdesc.282, %for.body.for.inc_crit_edge ], [ %add.ptr186, %vmxnet3_cmd_ring_adv_next2fill.exit30.for.inc_crit_edge ]
  %dw2.5.lcssa = phi i32 [ %dw2.485, %for.body.for.inc_crit_edge ], [ %shl248, %vmxnet3_cmd_ring_adv_next2fill.exit30.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.083, 1
  %182 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %nr_frags, align 2
  %conv148 = zext i8 %185 to i32
  %cmp149 = icmp ult i32 %inc, %conv148
  br i1 %cmp149, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %tbi.2.lcssa = phi ptr [ %tbi.1.lcssa, %for.cond.preheader.for.end_crit_edge ], [ %tbi.3.lcssa, %for.inc.for.end_crit_edge ]
  %gdesc.2.lcssa = phi ptr [ %gdesc.0.lcssa, %for.cond.preheader.for.end_crit_edge ], [ %gdesc.3.lcssa, %for.inc.for.end_crit_edge ]
  %eop_txd = getelementptr inbounds %struct.vmxnet3_tx_ctx, ptr %ctx, i32 0, i32 7
  %186 = ptrtoint ptr %eop_txd to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %gdesc.2.lcssa, ptr %eop_txd, align 4
  %skb256 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, ptr %tbi.2.lcssa, i32 0, i32 4
  %187 = ptrtoint ptr %skb256 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %skb, ptr %skb256, align 4
  %188 = ptrtoint ptr %sop_txd to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %sop_txd, align 4
  %190 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %tx_ring, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %189 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %191 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %192 = lshr exact i32 %sub.ptr.sub, 4
  %conv260 = trunc i32 %192 to i16
  %sop_idx = getelementptr inbounds %struct.vmxnet3_tx_buf_info, ptr %tbi.2.lcssa, i32 0, i32 2
  %193 = ptrtoint ptr %sop_idx to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %conv260, ptr %sop_idx, align 2
  br label %cleanup261

cleanup261:                                       ; preds = %for.end, %while.body157.cleanup261_crit_edge, %dma_map_single_attrs.exit.cleanup261_crit_edge
  %retval.4 = phi i32 [ 0, %for.end ], [ -14, %while.body157.cleanup261_crit_edge ], [ -14, %dma_map_single_attrs.exit.cleanup261_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_selected_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_selected_regions(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vmxnet3_rq_rx_complete(ptr noundef %rq, ptr nocapture noundef readonly %adapter, i32 noundef %quota) unnamed_addr #0 align 64 {
entry:
  %rxComp = alloca %struct.Vmxnet3_RxCompDesc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ctx = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rxComp) #11
  %0 = getelementptr inbounds %struct.Vmxnet3_RxCompDesc, ptr %rxComp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.Vmxnet3_RxCompDesc, ptr %rxComp, i32 0, i32 2
  %comp_ring = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 5
  %2 = ptrtoint ptr %comp_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comp_ring, align 4
  %next2proc = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %next2proc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next2proc, align 4
  %arrayidx = getelementptr %union.Vmxnet3_GenericDesc, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  %9 = ptrtoint ptr %rxComp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rxComp, align 4
  %incdec.ptr.i = getelementptr i32, ptr %arrayidx, i32 1
  %10 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %0, align 4
  %incdec.ptr.1.i = getelementptr i32, ptr %arrayidx, i32 2
  %14 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr.1.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %1, align 4
  %incdec.ptr.2.i = getelementptr i32, ptr %arrayidx, i32 3
  %incdec.ptr1.2.i = getelementptr inbounds i32, ptr %rxComp, i32 3
  %18 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %incdec.ptr.2.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #11
  %gen3 = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 5, i32 3
  %21 = ptrtoint ptr %incdec.ptr1.2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %incdec.ptr1.2.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %bf.load1119 = load i64, ptr %1, align 4
  %23 = trunc i64 %bf.load1119 to i32
  %24 = lshr i32 %23, 31
  %25 = ptrtoint ptr %gen3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %gen3, align 4
  %conv1120 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv1120)
  %cmp1121 = icmp eq i32 %24, %conv1120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quota)
  %cmp5.not1122 = icmp ne i32 %quota, 0
  %or.cond10971123 = and i1 %cmp1121, %cmp5.not1122
  br i1 %or.cond10971123, label %if.end.lr.ph, label %entry.while.end795_crit_edge

entry.while.end795_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end795

if.end.lr.ph:                                     ; preds = %entry
  %qid = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 7
  %qid2 = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 8
  %dataRingQid = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 9
  %num_rx_queues = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 16
  %rx_ring = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3
  %netdev278 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 9
  %pdev = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 10
  %stats340 = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 12
  %rx_buf_alloc_failure341 = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 12, i32 3
  %desc_size = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 4, i32 2
  %data_ring = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 4
  %version = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 13
  %napi = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 2
  %shared = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 11
  %hw_addr0 = getelementptr inbounds %struct.vmxnet3_adapter, ptr %adapter, i32 0, i32 11
  %size.i1063 = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 5, i32 1
  br label %if.end

if.end:                                           ; preds = %cleanup783.if.end_crit_edge, %if.end.lr.ph
  %num_pkts.01127 = phi i32 [ 0, %if.end.lr.ph ], [ %num_pkts.1, %cleanup783.if.end_crit_edge ]
  %skip_page_frags.0.off01126 = phi i1 [ false, %if.end.lr.ph ], [ %skip_page_frags.3.off0, %cleanup783.if.end_crit_edge ]
  %mss.01125 = phi i16 [ 0, %if.end.lr.ph ], [ %mss.4, %cleanup783.if.end_crit_edge ]
  %segCnt.01124 = phi i16 [ 0, %if.end.lr.ph ], [ %segCnt.5, %cleanup783.if.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !365
  %27 = ptrtoint ptr %rxComp to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load8 = load i32, ptr %rxComp, align 4
  %bf.lshr9 = lshr i32 %bf.load8, 16
  %bf.clear10 = and i32 %bf.lshr9, 1023
  %28 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear10, i32 %29)
  %cmp11.not = icmp eq i32 %bf.clear10, %29
  br i1 %cmp11.not, label %if.end.do.end33_crit_edge, label %land.lhs.true

if.end.do.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

land.lhs.true:                                    ; preds = %if.end
  %30 = ptrtoint ptr %qid2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qid2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear10, i32 %31)
  %cmp16.not = icmp eq i32 %bf.clear10, %31
  br i1 %cmp16.not, label %land.lhs.true.do.end33_crit_edge, label %land.rhs

land.lhs.true.do.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

land.rhs:                                         ; preds = %land.lhs.true
  %32 = ptrtoint ptr %dataRingQid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dataRingQid, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear10, i32 %33)
  %cmp21.not = icmp eq i32 %bf.clear10, %33
  br i1 %cmp21.not, label %land.rhs.do.end33_crit_edge, label %do.body25, !prof !277

land.rhs.do.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

do.body25:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1382, 0\0A.popsection", ""() #11, !srcloc !366
  unreachable

do.end33:                                         ; preds = %land.rhs.do.end33_crit_edge, %land.lhs.true.do.end33_crit_edge, %if.end.do.end33_crit_edge
  %bf.clear35 = and i32 %bf.load8, 4095
  %34 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear10, i32 %35)
  %cmp39.not = icmp uge i32 %bf.clear10, %35
  %mul = shl i32 %35, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear10, i32 %mul)
  %cmp46 = icmp ult i32 %bf.clear10, %mul
  %36 = and i1 %cmp39.not, %cmp46
  %cond = zext i1 %36 to i32
  %add.ptr = getelementptr %struct.vmxnet3_cmd_ring, ptr %rx_ring, i32 %cond
  %arrayidx51 = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 3, i32 %cond
  %37 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx51, align 8
  %arrayidx53 = getelementptr %union.Vmxnet3_GenericDesc, ptr %38, i32 %bf.clear35
  %add.ptr.i = getelementptr i32, ptr %arrayidx53, i32 2
  %39 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx53, align 8
  %41 = tail call i64 @llvm.bswap.i64(i64 %40) #11
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #11
  %arrayidx56 = getelementptr %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 10, i32 %cond
  %45 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx56, align 4
  %add.ptr57 = getelementptr %struct.vmxnet3_rx_buf_info, ptr %46, i32 %bf.clear35
  %dma_addr = getelementptr %struct.vmxnet3_rx_buf_info, ptr %46, i32 %bf.clear35, i32 3
  %47 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_addr, align 4
  %conv59 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %conv59)
  %cmp60.not = icmp eq i64 %41, %conv59
  br i1 %cmp60.not, label %lor.rhs, label %do.end33.do.body75_crit_edge, !prof !277

do.end33.do.body75_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body75

lor.rhs:                                          ; preds = %do.end33
  %bf.clear63 = and i32 %44, 16383
  %len64 = getelementptr %struct.vmxnet3_rx_buf_info, ptr %46, i32 %bf.clear35, i32 1
  %49 = ptrtoint ptr %len64 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %len64, align 4
  %conv65 = zext i16 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear63, i32 %conv65)
  %cmp66.not = icmp eq i32 %bf.clear63, %conv65
  br i1 %cmp66.not, label %do.end83, label %lor.rhs.do.body75_crit_edge, !prof !277

lor.rhs.do.body75_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body75

do.body75:                                        ; preds = %lor.rhs.do.body75_crit_edge, %do.end33.do.body75_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1391, 0\0A.popsection", ""() #11, !srcloc !367
  unreachable

do.end83:                                         ; preds = %lor.rhs
  %51 = and i32 %bf.load8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool87.not = icmp eq i32 %51, 0
  br i1 %tobool87.not, label %do.end83.if.end102_crit_edge, label %land.rhs88

do.end83.if.end102_crit_edge:                     ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

land.rhs88:                                       ; preds = %do.end83
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %bf.load89 = load i64, ptr %1, align 4
  %53 = and i64 %bf.load89, 70368744177664
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %tobool93.not = icmp eq i64 %53, 0
  br i1 %tobool93.not, label %land.rhs88.if.end102_crit_edge, label %if.then101, !prof !277

land.rhs88.if.end102_crit_edge:                   ; preds = %land.rhs88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.then101:                                       ; preds = %land.rhs88
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @vmxnet3_rx_error(ptr noundef %rq, ptr noundef nonnull %rxComp, ptr noundef %rx_ctx)
  br label %rcd_done

if.end102:                                        ; preds = %land.rhs88.if.end102_crit_edge, %do.end83.if.end102_crit_edge
  %54 = and i32 %bf.load8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool106.not = icmp eq i32 %54, 0
  br i1 %tobool106.not, label %do.body472, label %if.then107

if.then107:                                       ; preds = %if.end102
  %55 = and i32 %44, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp113.not = icmp eq i32 %55, 0
  br i1 %cmp113.not, label %lor.rhs115, label %if.then107.do.body138_crit_edge, !prof !277

if.then107.do.body138_crit_edge:                  ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body138

lor.rhs115:                                       ; preds = %if.then107
  br i1 %cmp11.not, label %lor.rhs115.do.body147_crit_edge, label %land.rhs122

lor.rhs115.do.body147_crit_edge:                  ; preds = %lor.rhs115
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body147

land.rhs122:                                      ; preds = %lor.rhs115
  %56 = ptrtoint ptr %dataRingQid to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dataRingQid, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear10, i32 %57)
  %cmp127.not = icmp eq i32 %bf.clear10, %57
  br i1 %cmp127.not, label %land.rhs122.do.body147_crit_edge, label %land.rhs122.do.body138_crit_edge, !prof !277

land.rhs122.do.body138_crit_edge:                 ; preds = %land.rhs122
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body138

land.rhs122.do.body147_crit_edge:                 ; preds = %land.rhs122
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body147

do.body138:                                       ; preds = %land.rhs122.do.body138_crit_edge, %if.then107.do.body138_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1404, 0\0A.popsection", ""() #11, !srcloc !368
  unreachable

do.body147:                                       ; preds = %land.rhs122.do.body147_crit_edge, %lor.rhs115.do.body147_crit_edge
  %58 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp148.not = icmp eq i32 %59, 1
  br i1 %cmp148.not, label %do.body166, label %do.body157, !prof !277

do.body157:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1406, 0\0A.popsection", ""() #11, !srcloc !369
  unreachable

do.body166:                                       ; preds = %do.body147
  %60 = ptrtoint ptr %rx_ctx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_ctx, align 4
  %cmp168.not = icmp eq ptr %61, null
  br i1 %cmp168.not, label %lor.rhs170, label %do.body166.do.body181_crit_edge, !prof !277

do.body166.do.body181_crit_edge:                  ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body181

lor.rhs170:                                       ; preds = %do.body166
  %62 = getelementptr %struct.vmxnet3_rx_buf_info, ptr %46, i32 %bf.clear35, i32 2
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %cmp171 = icmp eq ptr %64, null
  br i1 %cmp171, label %lor.rhs170.do.body181_crit_edge, label %do.end189, !prof !280

lor.rhs170.do.body181_crit_edge:                  ; preds = %lor.rhs170
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body181

do.body181:                                       ; preds = %lor.rhs170.do.body181_crit_edge, %do.body166.do.body181_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1407, 0\0A.popsection", ""() #11, !srcloc !370
  unreachable

do.end189:                                        ; preds = %lor.rhs170
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 8)
  %bf.load191 = load i64, ptr %1, align 4
  %66 = and i64 %bf.load191, 70364449210368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %cmp195 = icmp eq i64 %66, 0
  br i1 %cmp195, label %do.body204, label %if.end248, !prof !280

do.body204:                                       ; preds = %do.end189
  br i1 %tobool87.not, label %do.body224, label %do.body234, !prof !280

do.body224:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1411, 0\0A.popsection", ""() #11, !srcloc !371
  unreachable

do.body234:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vmxnet3_rq_rx_complete.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vmxnet3_rq_rx_complete, %if.then242)) #11
          to label %rcd_done [label %if.then242], !srcloc !279

if.then242:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %netdev278 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %netdev278, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @vmxnet3_rq_rx_complete.__UNIQUE_ID_ddebug511, ptr noundef %68, ptr noundef nonnull @.str.115, i32 noundef %cond, i32 noundef %bf.clear35) #11
  br label %rcd_done

if.end248:                                        ; preds = %do.end189
  %69 = ptrtoint ptr %rx_ctx to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %64, ptr %rx_ctx, align 4
  %70 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_rx_queues, align 4
  %mul254 = shl i32 %71, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear10, i32 %mul254)
  %cmp255.not = icmp uge i32 %bf.clear10, %mul254
  %mul262 = mul i32 %71, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear10, i32 %mul262)
  %cmp263 = icmp ult i32 %bf.clear10, %mul262
  %72 = and i1 %cmp255.not, %cmp263
  br i1 %72, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #13
  %bf.lshr271 = lshr i64 %bf.load191, 32
  %73 = trunc i64 %bf.lshr271 to i16
  %bf.cast273 = and i16 %73, 16383
  br label %cond.end

cond.false:                                       ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %len64 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %len64, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond276 = phi i16 [ %bf.cast273, %cond.true ], [ %75, %cond.false ]
  %76 = ptrtoint ptr %netdev278 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %netdev278, align 16
  %conv279 = zext i16 %cond276 to i32
  %add.i.i = add nuw nsw i32 %conv279, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %77, i32 noundef %add.i.i, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then283, label %if.end287

if.then283:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %rx_buf_alloc_failure341 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %rx_buf_alloc_failure341, align 8
  %inc = add i64 %79, 1
  store i64 %inc, ptr %rx_buf_alloc_failure341, align 8
  %80 = ptrtoint ptr %rx_ctx to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %rx_ctx, align 4
  %81 = ptrtoint ptr %stats340 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %stats340, align 16
  %inc286 = add i64 %82, 1
  store i64 %inc286, ptr %stats340, align 16
  br label %rcd_done

if.end287:                                        ; preds = %cond.end
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %83 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %84, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %85 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %86, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  br i1 %72, label %if.then289, label %if.else

if.then289:                                       ; preds = %if.end287
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 8)
  %bf.load292 = load i64, ptr %1, align 4
  %bf.lshr293 = lshr i64 %bf.load292, 32
  %88 = trunc i64 %bf.lshr293 to i32
  %bf.cast295 = and i32 %88, 16383
  %89 = ptrtoint ptr %desc_size to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %desc_size, align 8
  %conv296 = zext i16 %90 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast295, i32 %conv296)
  %cmp297 = icmp ugt i32 %bf.cast295, %conv296
  br i1 %cmp297, label %do.body306, label %do.end314, !prof !280

do.body306:                                       ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1440, 0\0A.popsection", ""() #11, !srcloc !372
  unreachable

do.end314:                                        ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %rx_ctx to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call.i.i, ptr %rx_ctx, align 4
  %92 = ptrtoint ptr %rxComp to i32
  call void @__asan_load4_noabort(i32 %92)
  %bf.load316 = load i32, ptr %rxComp, align 4
  %bf.clear317 = and i32 %bf.load316, 4095
  %mul321 = mul nuw nsw i32 %bf.clear317, %conv296
  %93 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data.i.i.i, align 4
  %95 = ptrtoint ptr %data_ring to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data_ring, align 16
  %arrayidx324 = getelementptr i8, ptr %96, i32 %mul321
  %97 = call ptr @memcpy(ptr %94, ptr %arrayidx324, i32 %bf.cast295)
  br label %if.end362

if.else:                                          ; preds = %if.end287
  %98 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %62, align 4
  %100 = ptrtoint ptr %rx_ctx to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %rx_ctx, align 4
  %101 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %103 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data.i.i.i, align 4
  %105 = ptrtoint ptr %len64 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %len64, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %104) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.else
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !277

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44, i32 3
  %107 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i1017 = icmp eq ptr %108, null
  br i1 %tobool.not.i.i1017, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %110, %if.end.i.i ], [ %108, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv333 = zext i16 %106 to i32
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %104, i32 noundef %conv333) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %111 = load ptr, ptr @mem_map, align 4
  %112 = ptrtoint ptr %104 to i32
  %sub.i = add i32 %112, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i1018 = getelementptr %struct.page, ptr %111, i32 %shr.i
  %and.i = and i32 %112, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i1018, i32 noundef %and.i, i32 noundef %conv333, i32 noundef 2, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i1019 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %113 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev, align 4
  %dev336 = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev336, i32 noundef %retval.0.i1019) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i1019)
  %cmp.i = icmp eq i32 %retval.0.i1019, -1
  br i1 %cmp.i, label %if.then339, label %if.end347

if.then339:                                       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #11
  %115 = ptrtoint ptr %rx_buf_alloc_failure341 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %rx_buf_alloc_failure341, align 8
  %inc342 = add i64 %116, 1
  store i64 %inc342, ptr %rx_buf_alloc_failure341, align 8
  %117 = ptrtoint ptr %rx_ctx to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %rx_ctx, align 4
  %118 = ptrtoint ptr %stats340 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %stats340, align 16
  %inc346 = add i64 %119, 1
  store i64 %inc346, ptr %stats340, align 16
  br label %rcd_done

if.end347:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pdev, align 4
  %dev349 = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44
  %122 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dma_addr, align 4
  %124 = ptrtoint ptr %len64 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %len64, align 4
  %conv352 = zext i16 %125 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev349, i32 noundef %123, i32 noundef %conv352, i32 noundef 2, i32 noundef 0) #11
  %126 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call.i.i, ptr %62, align 4
  %127 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %retval.0.i1019, ptr %dma_addr, align 4
  br label %if.end362

if.end362:                                        ; preds = %if.end347, %do.end314
  %128 = ptrtoint ptr %rxComp to i32
  call void @__asan_load4_noabort(i32 %128)
  %bf.load363 = load i32, ptr %rxComp, align 4
  %bf.lshr364 = lshr i32 %bf.load363, 26
  %bf.clear365 = and i32 %bf.lshr364, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear365)
  %cmp366.not = icmp eq i32 %bf.clear365, 0
  br i1 %cmp366.not, label %if.end362.if.end377_crit_edge, label %land.lhs.true368

if.end362.if.end377_crit_edge:                    ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end377

land.lhs.true368:                                 ; preds = %if.end362
  %129 = ptrtoint ptr %netdev278 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %netdev278, align 16
  %features = getelementptr inbounds %struct.net_device, ptr %130, i32 0, i32 23
  %131 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %features, align 16
  %and = and i64 %132, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool370.not = icmp eq i64 %and, 0
  br i1 %tobool370.not, label %land.lhs.true368.if.end377_crit_edge, label %if.then371

land.lhs.true368.if.end377_crit_edge:             ; preds = %land.lhs.true368
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end377

if.then371:                                       ; preds = %land.lhs.true368
  %switch.tableidx = add nsw i32 %bf.clear365, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %133 = icmp ult i32 %switch.tableidx, 5
  br i1 %133, label %switch.lookup, label %if.then371.sw.epilog_crit_edge

if.then371.sw.epilog_crit_edge:                   ; preds = %if.then371
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.then371
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [5 x i16], ptr @switch.table.vmxnet3_rq_rx_complete, i32 0, i32 %switch.tableidx
  %134 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %134)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.then371.sw.epilog_crit_edge
  %cmp.i1020 = phi i16 [ 0, %if.then371.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %135 = ptrtoint ptr %rx_ctx to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rx_ctx, align 4
  %137 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %0, align 4
  %139 = tail call i32 @llvm.bswap.i32(i32 %138)
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %136, i32 0, i32 15
  %140 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %bf.load.i.i = load i16, ptr %l4_hash.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -193
  %bf.set.i.i = or i16 %bf.clear.i.i, %cmp.i1020
  store i16 %bf.set.i.i, ptr %l4_hash.i.i, align 8
  %hash10.i.i = getelementptr inbounds %struct.sk_buff, ptr %136, i32 0, i32 15, i32 0, i32 8
  %141 = ptrtoint ptr %hash10.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %139, ptr %hash10.i.i, align 4
  br label %if.end377

if.end377:                                        ; preds = %sw.epilog, %land.lhs.true368.if.end377_crit_edge, %if.end362.if.end377_crit_edge
  %142 = ptrtoint ptr %rx_ctx to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rx_ctx, align 4
  %144 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 8)
  %bf.load380 = load i64, ptr %1, align 4
  %bf.lshr381 = lshr i64 %bf.load380, 32
  %145 = trunc i64 %bf.lshr381 to i32
  %bf.cast383 = and i32 %145, 16383
  %call384 = tail call ptr @skb_put(ptr noundef %143, i32 noundef %bf.cast383) #11
  %146 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %version, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %147)
  %cmp386 = icmp ugt i8 %147, 1
  br i1 %cmp386, label %land.lhs.true388, label %if.end377.if.end599_crit_edge

if.end377.if.end599_crit_edge:                    ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end599

land.lhs.true388:                                 ; preds = %if.end377
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 8)
  %bf.load389 = load i64, ptr %1, align 4
  %149 = and i64 %bf.load389, 2130706432
  call void @__sanitizer_cov_trace_const_cmp8(i64 67108864, i64 %149)
  %cmp393 = icmp eq i64 %149, 67108864
  br i1 %cmp393, label %if.then395, label %land.lhs.true388.if.end599_crit_edge

land.lhs.true388.if.end599_crit_edge:             ; preds = %land.lhs.true388
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end599

if.then395:                                       ; preds = %land.lhs.true388
  %150 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %cmp399 = icmp eq i8 %151, 0
  br i1 %cmp399, label %land.rhs408, label %if.end445

land.rhs408:                                      ; preds = %if.then395
  %.b1014 = load i1, ptr @vmxnet3_rq_rx_complete.__already_done, align 1
  br i1 %.b1014, label %land.rhs408.if.end445.thread_crit_edge, label %if.then419, !prof !277

land.rhs408.if.end445.thread_crit_edge:           ; preds = %land.rhs408
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end445.thread

if.then419:                                       ; preds = %land.rhs408
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vmxnet3_rq_rx_complete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1512, i32 noundef 9, ptr noundef null) #11
  br label %if.end445.thread

if.end445.thread:                                 ; preds = %if.then419, %land.rhs408.if.end445.thread_crit_edge
  %152 = ptrtoint ptr %incdec.ptr1.2.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %bf.load4541077 = load i32, ptr %incdec.ptr1.2.i, align 4
  %conv4561078 = trunc i32 %bf.load4541077 to i16
  br label %if.then466

if.end445:                                        ; preds = %if.then395
  %conv397 = zext i8 %151 to i16
  %153 = ptrtoint ptr %incdec.ptr1.2.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %bf.load454 = load i32, ptr %incdec.ptr1.2.i, align 4
  %conv456 = trunc i32 %bf.load454 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %151)
  %cmp458 = icmp eq i8 %151, 1
  br i1 %cmp458, label %if.end445.if.then466_crit_edge, label %if.end445.if.end599_crit_edge, !prof !280

if.end445.if.end599_crit_edge:                    ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end599

if.end445.if.then466_crit_edge:                   ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then466

if.then466:                                       ; preds = %if.end445.if.then466_crit_edge, %if.end445.thread
  %conv4561080 = phi i16 [ %conv4561078, %if.end445.thread ], [ %conv456, %if.end445.if.then466_crit_edge ]
  br label %if.end599

do.body472:                                       ; preds = %if.end102
  %154 = ptrtoint ptr %rx_ctx to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rx_ctx, align 4
  %cmp474 = icmp eq ptr %155, null
  %lnot478 = xor i1 %skip_page_frags.0.off01126, true
  %spec.select = select i1 %cmp474, i1 %lnot478, i1 false
  br i1 %spec.select, label %do.body488, label %do.body497, !prof !280

do.body488:                                       ; preds = %do.body472
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1520, 0\0A.popsection", ""() #11, !srcloc !373
  unreachable

do.body497:                                       ; preds = %do.body472
  %156 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %add.ptr57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %157)
  %cmp499.not = icmp eq i32 %157, 2
  br i1 %cmp499.not, label %do.body517, label %do.body508, !prof !277

do.body508:                                       ; preds = %do.body497
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1523, 0\0A.popsection", ""() #11, !srcloc !374
  unreachable

do.body517:                                       ; preds = %do.body497
  %158 = and i32 %44, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp522.not.not = icmp eq i32 %158, 0
  br i1 %cmp522.not.not, label %do.body531, label %do.end539, !prof !280

do.body531:                                       ; preds = %do.body517
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1524, 0\0A.popsection", ""() #11, !srcloc !375
  unreachable

do.end539:                                        ; preds = %do.body517
  br i1 %skip_page_frags.0.off01126, label %do.end539.rcd_done_crit_edge, label %if.end542

do.end539.rcd_done_crit_edge:                     ; preds = %do.end539
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcd_done

if.end542:                                        ; preds = %do.end539
  %159 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %159, i32 8)
  %bf.load544 = load i64, ptr %1, align 4
  %160 = and i64 %bf.load544, 70364449210368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %160)
  %tobool548.not = icmp eq i64 %160, 0
  br i1 %tobool548.not, label %if.end542.if.end599_crit_edge, label %if.then549

if.end542.if.end599_crit_edge:                    ; preds = %if.end542
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end599

if.then549:                                       ; preds = %if.end542
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 2592, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool551.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool551.not, label %if.then560, label %if.end566, !prof !280

if.then560:                                       ; preds = %if.then549
  call void @__sanitizer_cov_trace_pc() #13
  %161 = ptrtoint ptr %rx_buf_alloc_failure341 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %rx_buf_alloc_failure341, align 8
  %inc563 = add i64 %162, 1
  store i64 %inc563, ptr %rx_buf_alloc_failure341, align 8
  %163 = ptrtoint ptr %rx_ctx to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rx_ctx, align 4
  tail call void @consume_skb(ptr noundef %164) #11
  %165 = ptrtoint ptr %rx_ctx to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %rx_ctx, align 4
  br label %rcd_done

if.end566:                                        ; preds = %if.then549
  %166 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pdev, align 4
  %dev568 = getelementptr inbounds %struct.pci_dev, ptr %167, i32 0, i32 44
  %call569 = tail call i32 @dma_map_page_attrs(ptr noundef %dev568, ptr noundef nonnull %call38.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #11
  %168 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %pdev, align 4
  %dev571 = getelementptr inbounds %struct.pci_dev, ptr %169, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev571, i32 noundef %call569) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call569)
  %cmp.i1021.not = icmp eq i32 %call569, -1
  br i1 %cmp.i1021.not, label %if.then574, label %if.end580

if.then574:                                       ; preds = %if.end566
  %170 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %170, align 4
  %and.i.i = and i32 %172, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i1023 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i1023, label %if.end.i.i1025, label %if.then.i.i1024, !prof !277

if.then.i.i1024:                                  ; preds = %if.then574
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %172, -1
  br label %_compound_head.exit.i

if.end.i.i1025:                                   ; preds = %if.then574
  call void @__sanitizer_cov_trace_pc() #13
  %173 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i1025, %if.then.i.i1024
  %retval.0.i.i1026 = phi i32 [ %sub.i.i, %if.then.i.i1024 ], [ %173, %if.end.i.i1025 ]
  %174 = inttoptr i32 %retval.0.i.i1026 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %174, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %175 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp.i.i.i.i = icmp eq i32 %176, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !280

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %177 = inttoptr i32 %retval.0.i.i1026 to ptr
  tail call void @dump_page(ptr noundef %177, ptr noundef nonnull @.str.20) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !319
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !320
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %178 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !321
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %178, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !322
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@vmxnet3_rq_rx_complete, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !279

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %174, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %174) #11
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %179 = ptrtoint ptr %rx_buf_alloc_failure341 to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %rx_buf_alloc_failure341, align 8
  %inc577 = add i64 %180, 1
  store i64 %inc577, ptr %rx_buf_alloc_failure341, align 8
  %181 = ptrtoint ptr %rx_ctx to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %rx_ctx, align 4
  tail call void @consume_skb(ptr noundef %182) #11
  %183 = ptrtoint ptr %rx_ctx to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr null, ptr %rx_ctx, align 4
  br label %rcd_done

if.end580:                                        ; preds = %if.end566
  %184 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pdev, align 4
  %dev582 = getelementptr inbounds %struct.pci_dev, ptr %185, i32 0, i32 44
  %186 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %dma_addr, align 4
  %188 = ptrtoint ptr %len64 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %len64, align 4
  %conv585 = zext i16 %189 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev582, i32 noundef %187, i32 noundef %conv585, i32 noundef 2, i32 noundef 0) #11
  %190 = ptrtoint ptr %rx_ctx to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %rx_ctx, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %191, i32 0, i32 17
  %192 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %193, i32 0, i32 2
  %194 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %nr_frags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %195)
  %cmp.i1027 = icmp ugt i8 %195, 16
  br i1 %cmp.i1027, label %do.body7.i, label %vmxnet3_append_frag.exit, !prof !280

do.body7.i:                                       ; preds = %if.end580
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 656, 0\0A.popsection", ""() #11, !srcloc !376
  unreachable

vmxnet3_append_frag.exit:                         ; preds = %if.end580
  call void @__sanitizer_cov_trace_pc() #13
  %frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %193, i32 0, i32 12
  %conv.i = zext i8 %195 to i32
  %add.ptr.i1028 = getelementptr %struct.bio_vec, ptr %frags.i, i32 %conv.i
  %196 = getelementptr %struct.vmxnet3_rx_buf_info, ptr %46, i32 %bf.clear35, i32 2
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 4
  %199 = ptrtoint ptr %add.ptr.i1028 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %198, ptr %add.ptr.i1028, align 4
  %bv_offset.i.i = getelementptr %struct.bio_vec, ptr %frags.i, i32 %conv.i, i32 2
  %200 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %bv_offset.i.i, align 4
  %201 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %201, i32 8)
  %bf.load.i = load i64, ptr %1, align 4
  %bf.lshr.i = lshr i64 %bf.load.i, 32
  %202 = trunc i64 %bf.lshr.i to i32
  %bf.cast.i = and i32 %202, 16383
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %frags.i, i32 %conv.i, i32 1
  %203 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %bf.cast.i, ptr %bv_len.i.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %191, i32 0, i32 7
  %204 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %data_len.i, align 8
  %add.i = add i32 %bf.cast.i, %205
  store i32 %add.i, ptr %data_len.i, align 8
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %191, i32 0, i32 20
  %206 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %truesize.i, align 8
  %add18.i = add i32 %207, 4096
  store i32 %add18.i, ptr %truesize.i, align 8
  %208 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %end.i.i, align 4
  %nr_frags20.i = getelementptr inbounds %struct.skb_shared_info, ptr %209, i32 0, i32 2
  %210 = ptrtoint ptr %nr_frags20.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %nr_frags20.i, align 2
  %inc.i = add i8 %211, 1
  store i8 %inc.i, ptr %nr_frags20.i, align 2
  store ptr %call38.i.i.i, ptr %196, align 4
  %212 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %call569, ptr %dma_addr, align 4
  br label %if.end599

if.end599:                                        ; preds = %vmxnet3_append_frag.exit, %if.end542.if.end599_crit_edge, %if.then466, %if.end445.if.end599_crit_edge, %land.lhs.true388.if.end599_crit_edge, %if.end377.if.end599_crit_edge
  %segCnt.4 = phi i16 [ %segCnt.01124, %vmxnet3_append_frag.exit ], [ %segCnt.01124, %if.end542.if.end599_crit_edge ], [ 0, %if.end377.if.end599_crit_edge ], [ 0, %land.lhs.true388.if.end599_crit_edge ], [ %conv397, %if.end445.if.end599_crit_edge ], [ 0, %if.then466 ]
  %mss.3 = phi i16 [ %mss.01125, %vmxnet3_append_frag.exit ], [ %mss.01125, %if.end542.if.end599_crit_edge ], [ %mss.01125, %if.end377.if.end599_crit_edge ], [ %mss.01125, %land.lhs.true388.if.end599_crit_edge ], [ %conv456, %if.end445.if.end599_crit_edge ], [ %conv4561080, %if.then466 ]
  %213 = ptrtoint ptr %rx_ctx to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %rx_ctx, align 4
  %215 = ptrtoint ptr %rxComp to i32
  call void @__asan_load4_noabort(i32 %215)
  %bf.load601 = load i32, ptr %rxComp, align 4
  %216 = and i32 %bf.load601, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool604.not = icmp eq i32 %216, 0
  br i1 %tobool604.not, label %if.end599.rcd_done_crit_edge, label %if.then605

if.end599.rcd_done_crit_edge:                     ; preds = %if.end599
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcd_done

if.then605:                                       ; preds = %if.end599
  %217 = ptrtoint ptr %netdev278 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %netdev278, align 16
  %mtu607 = getelementptr inbounds %struct.net_device, ptr %218, i32 0, i32 20
  %219 = ptrtoint ptr %mtu607 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %mtu607, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %214, i32 0, i32 7
  %221 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %data_len, align 8
  %len608 = getelementptr inbounds %struct.sk_buff, ptr %214, i32 0, i32 6
  %223 = ptrtoint ptr %len608 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %len608, align 4
  %add = add i32 %224, %222
  store i32 %add, ptr %len608, align 4
  %225 = and i32 %bf.load601, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool.not.i = icmp eq i32 %225, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then605.vmxnet3_rx_csum.exit_crit_edge

if.then605.vmxnet3_rx_csum.exit_crit_edge:        ; preds = %if.then605
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rx_csum.exit

land.lhs.true.i:                                  ; preds = %if.then605
  %226 = ptrtoint ptr %netdev278 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %netdev278, align 16
  %features.i = getelementptr inbounds %struct.net_device, ptr %227, i32 0, i32 23
  %228 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %features.i, align 16
  %and.i1030 = and i64 %229, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i1030)
  %tobool1.not.i = icmp eq i64 %and.i1030, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.vmxnet3_rx_csum.exit_crit_edge, label %if.then.i1031

land.lhs.true.i.vmxnet3_rx_csum.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rx_csum.exit

if.then.i1031:                                    ; preds = %land.lhs.true.i
  %230 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %230)
  %bf.load2.i = load i64, ptr %1, align 8
  %231 = and i64 %bf.load2.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %231)
  %tobool5.not.i = icmp eq i64 %231, 0
  br i1 %tobool5.not.i, label %if.then.i1031.if.else.i_crit_edge, label %land.lhs.true6.i

if.then.i1031.if.else.i_crit_edge:                ; preds = %if.then.i1031
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %if.then.i1031
  %232 = ptrtoint ptr %incdec.ptr1.2.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %incdec.ptr1.2.i, align 4
  %234 = and i32 %233, 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 2304, i32 %234)
  %cmp.i1032 = icmp eq i32 %234, 2304
  br i1 %cmp.i1032, label %if.then8.i, label %land.lhs.true6.i.if.else.i_crit_edge

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %214, i32 0, i32 15
  %235 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %bf.load9.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear10.i = and i16 %bf.load9.i, -1537
  %bf.set.i = or i16 %bf.clear10.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  %236 = and i64 %bf.load2.i, 393216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %236)
  %237 = icmp eq i64 %236, 0
  %238 = and i32 %bf.load601, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool23.not.i = icmp eq i32 %238, 0
  %or.cond1099 = select i1 %237, i1 %tobool23.not.i, i1 false
  br i1 %or.cond1099, label %land.rhs27.i, label %if.then8.i.if.end55.i_crit_edge

if.then8.i.if.end55.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55.i

land.rhs27.i:                                     ; preds = %if.then8.i
  %.b337.i = load i1, ptr @vmxnet3_rx_csum.__already_done, align 1
  br i1 %.b337.i, label %land.rhs27.i.if.end55.i_crit_edge, label %if.then34.i, !prof !277

land.rhs27.i.if.end55.i_crit_edge:                ; preds = %land.rhs27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55.i

if.then34.i:                                      ; preds = %land.rhs27.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vmxnet3_rx_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1233, i32 noundef 9, ptr noundef null) #11
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then34.i, %land.rhs27.i.if.end55.i_crit_edge, %if.then8.i.if.end55.i_crit_edge
  %239 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %239)
  %bf.load64.i = load i64, ptr %1, align 8
  %240 = and i64 %bf.load64.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %240)
  %tobool68.not.i = icmp eq i64 %240, 0
  br i1 %tobool68.not.i, label %if.end55.i.vmxnet3_rx_csum.exit_crit_edge, label %land.rhs69.i

if.end55.i.vmxnet3_rx_csum.exit_crit_edge:        ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rx_csum.exit

land.rhs69.i:                                     ; preds = %if.end55.i
  %241 = ptrtoint ptr %rxComp to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %rxComp, align 8
  %243 = and i32 %242, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool72.not.i = icmp eq i32 %243, 0
  br i1 %tobool72.not.i, label %land.rhs82.i, label %land.rhs69.i.vmxnet3_rx_csum.exit_crit_edge

land.rhs69.i.vmxnet3_rx_csum.exit_crit_edge:      ; preds = %land.rhs69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rx_csum.exit

land.rhs82.i:                                     ; preds = %land.rhs69.i
  %.b331336.i = load i1, ptr @vmxnet3_rx_csum.__already_done.116, align 1
  br i1 %.b331336.i, label %land.rhs82.i.vmxnet3_rx_csum.exit_crit_edge, label %if.then93.i, !prof !277

land.rhs82.i.vmxnet3_rx_csum.exit_crit_edge:      ; preds = %land.rhs82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rx_csum.exit

if.then93.i:                                      ; preds = %land.rhs82.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vmxnet3_rx_csum.__already_done.116, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1236, i32 noundef 9, ptr noundef null) #11
  br label %vmxnet3_rx_csum.exit

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %if.then.i1031.if.else.i_crit_edge
  %244 = and i64 %bf.load2.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %244)
  %tobool132.not.i = icmp eq i64 %244, 0
  br i1 %tobool132.not.i, label %if.else.i.if.else281.i_crit_edge, label %land.lhs.true133.i

if.else.i.if.else281.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else281.i

land.lhs.true133.i:                               ; preds = %if.else.i
  %245 = ptrtoint ptr %incdec.ptr1.2.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %incdec.ptr1.2.i, align 4
  %247 = and i32 %246, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %tobool136.not.i = icmp eq i32 %247, 0
  br i1 %tobool136.not.i, label %land.lhs.true133.i.if.else281.i_crit_edge, label %if.then137.i

land.lhs.true133.i.if.else281.i_crit_edge:        ; preds = %land.lhs.true133.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else281.i

if.then137.i:                                     ; preds = %land.lhs.true133.i
  %ip_summed138.i = getelementptr inbounds %struct.sk_buff, ptr %214, i32 0, i32 15
  %248 = ptrtoint ptr %ip_summed138.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %bf.load139.i = load i16, ptr %ip_summed138.i, align 8
  %bf.clear140.i = and i16 %bf.load139.i, -1537
  %bf.set141.i = or i16 %bf.clear140.i, 512
  store i16 %bf.set141.i, ptr %ip_summed138.i, align 8
  %249 = and i64 %bf.load2.i, 393216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %249)
  %250 = icmp eq i64 %249, 0
  %251 = and i32 %bf.load601, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %tobool159.not.i = icmp eq i32 %251, 0
  %or.cond1100 = select i1 %250, i1 %tobool159.not.i, i1 false
  br i1 %or.cond1100, label %land.rhs169.i, label %if.then137.i.if.end207.i_crit_edge

if.then137.i.if.end207.i_crit_edge:               ; preds = %if.then137.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end207.i

land.rhs169.i:                                    ; preds = %if.then137.i
  %.b332335.i = load i1, ptr @vmxnet3_rx_csum.__already_done.117, align 1
  br i1 %.b332335.i, label %land.rhs169.i.if.end207.i_crit_edge, label %if.then180.i, !prof !277

land.rhs169.i.if.end207.i_crit_edge:              ; preds = %land.rhs169.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end207.i

if.then180.i:                                     ; preds = %land.rhs169.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vmxnet3_rx_csum.__already_done.117, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1242, i32 noundef 9, ptr noundef null) #11
  br label %if.end207.i

if.end207.i:                                      ; preds = %if.then180.i, %land.rhs169.i.if.end207.i_crit_edge, %if.then137.i.if.end207.i_crit_edge
  %252 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %252)
  %bf.load217.i = load i64, ptr %1, align 8
  %253 = and i64 %bf.load217.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %253)
  %tobool221.not.i = icmp eq i64 %253, 0
  br i1 %tobool221.not.i, label %if.end207.i.vmxnet3_rx_csum.exit_crit_edge, label %land.rhs222.i

if.end207.i.vmxnet3_rx_csum.exit_crit_edge:       ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rx_csum.exit

land.rhs222.i:                                    ; preds = %if.end207.i
  %254 = ptrtoint ptr %rxComp to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %rxComp, align 8
  %256 = and i32 %255, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool225.not.i = icmp eq i32 %256, 0
  br i1 %tobool225.not.i, label %land.rhs235.i, label %land.rhs222.i.vmxnet3_rx_csum.exit_crit_edge

land.rhs222.i.vmxnet3_rx_csum.exit_crit_edge:     ; preds = %land.rhs222.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rx_csum.exit

land.rhs235.i:                                    ; preds = %land.rhs222.i
  %.b333334.i = load i1, ptr @vmxnet3_rx_csum.__already_done.118, align 1
  br i1 %.b333334.i, label %land.rhs235.i.vmxnet3_rx_csum.exit_crit_edge, label %if.then246.i, !prof !277

land.rhs235.i.vmxnet3_rx_csum.exit_crit_edge:     ; preds = %land.rhs235.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rx_csum.exit

if.then246.i:                                     ; preds = %land.rhs235.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vmxnet3_rx_csum.__already_done.118, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1245, i32 noundef 9, ptr noundef null) #11
  br label %vmxnet3_rx_csum.exit

if.else281.i:                                     ; preds = %land.lhs.true133.i.if.else281.i_crit_edge, %if.else.i.if.else281.i_crit_edge
  %bf.cast284338.i = and i64 %bf.load2.i, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bf.cast284338.i)
  %tobool285.not.i = icmp eq i64 %bf.cast284338.i, 0
  br i1 %tobool285.not.i, label %if.else281.i.vmxnet3_rx_csum.exit_crit_edge, label %if.then286.i

if.else281.i.vmxnet3_rx_csum.exit_crit_edge:      ; preds = %if.else281.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rx_csum.exit

if.then286.i:                                     ; preds = %if.else281.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i1034 = trunc i64 %bf.load2.i to i32
  %conv291.i = and i32 %conv.i1034, 65535
  %257 = getelementptr inbounds %struct.sk_buff, ptr %214, i32 0, i32 15, i32 0, i32 5
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %conv291.i, ptr %257, align 8
  %ip_summed292.i = getelementptr inbounds %struct.sk_buff, ptr %214, i32 0, i32 15
  %259 = ptrtoint ptr %ip_summed292.i to i32
  call void @__asan_load2_noabort(i32 %259)
  %bf.load293.i = load i16, ptr %ip_summed292.i, align 8
  %bf.set295.i = or i16 %bf.load293.i, 1536
  store i16 %bf.set295.i, ptr %ip_summed292.i, align 8
  br label %vmxnet3_rx_csum.exit

vmxnet3_rx_csum.exit:                             ; preds = %if.then286.i, %if.else281.i.vmxnet3_rx_csum.exit_crit_edge, %if.then246.i, %land.rhs235.i.vmxnet3_rx_csum.exit_crit_edge, %land.rhs222.i.vmxnet3_rx_csum.exit_crit_edge, %if.end207.i.vmxnet3_rx_csum.exit_crit_edge, %if.then93.i, %land.rhs82.i.vmxnet3_rx_csum.exit_crit_edge, %land.rhs69.i.vmxnet3_rx_csum.exit_crit_edge, %if.end55.i.vmxnet3_rx_csum.exit_crit_edge, %land.lhs.true.i.vmxnet3_rx_csum.exit_crit_edge, %if.then605.vmxnet3_rx_csum.exit_crit_edge
  %260 = ptrtoint ptr %netdev278 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %netdev278, align 16
  %call610 = tail call zeroext i16 @eth_type_trans(ptr noundef %214, ptr noundef %261) #11
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %214, i32 0, i32 15, i32 0, i32 18
  %262 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %call610, ptr %protocol, align 8
  %263 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %263, i32 8)
  %bf.load611 = load i64, ptr %1, align 4
  %264 = and i64 %bf.load611, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %264)
  %tobool615.not = icmp eq i64 %264, 0
  br i1 %tobool615.not, label %vmxnet3_rx_csum.exit.not_lro_crit_edge, label %lor.lhs.false

vmxnet3_rx_csum.exit.not_lro_crit_edge:           ; preds = %vmxnet3_rx_csum.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %not_lro

lor.lhs.false:                                    ; preds = %vmxnet3_rx_csum.exit
  %265 = ptrtoint ptr %netdev278 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %netdev278, align 16
  %features617 = getelementptr inbounds %struct.net_device, ptr %266, i32 0, i32 23
  %267 = ptrtoint ptr %features617 to i32
  call void @__asan_load8_noabort(i32 %267)
  %268 = load i64, ptr %features617, align 16
  %and618 = and i64 %268, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and618)
  %tobool619.not = icmp eq i64 %and618, 0
  br i1 %tobool619.not, label %lor.lhs.false.not_lro_crit_edge, label %if.end621

lor.lhs.false.not_lro_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %not_lro

if.end621:                                        ; preds = %lor.lhs.false
  %conv622 = zext i16 %segCnt.4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %segCnt.4)
  %cmp623.not = icmp eq i16 %segCnt.4, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mss.3)
  %cmp627.not = icmp eq i16 %mss.3, 0
  %or.cond = select i1 %cmp623.not, i1 true, i1 %cmp627.not
  br i1 %or.cond, label %if.else639, label %if.then629

if.then629:                                       ; preds = %if.end621
  call void @__sanitizer_cov_trace_pc() #13
  %269 = and i64 %bf.load611, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %269)
  %tobool634.not = icmp eq i64 %269, 0
  %cond635 = select i1 %tobool634.not, i32 16, i32 1
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %214, i32 0, i32 17
  %270 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %271, i32 0, i32 8
  %272 = ptrtoint ptr %gso_type to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %cond635, ptr %gso_type, align 8
  %273 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %273, i32 0, i32 4
  %274 = ptrtoint ptr %gso_size to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 %mss.3, ptr %gso_size, align 4
  %275 = load ptr, ptr %end.i, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %275, i32 0, i32 5
  %276 = ptrtoint ptr %gso_segs to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 %segCnt.4, ptr %gso_segs, align 2
  br label %not_lro

if.else639:                                       ; preds = %if.end621
  br i1 %cmp623.not, label %lor.lhs.false643, label %if.else639.do.end7.i_crit_edge

if.else639.do.end7.i_crit_edge:                   ; preds = %if.else639
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

lor.lhs.false643:                                 ; preds = %if.else639
  %277 = ptrtoint ptr %len608 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %len608, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %278, i32 %220)
  %cmp645 = icmp ugt i32 %278, %220
  br i1 %cmp645, label %lor.lhs.false643.do.end7.i_crit_edge, label %lor.lhs.false643.not_lro_crit_edge

lor.lhs.false643.not_lro_crit_edge:               ; preds = %lor.lhs.false643
  call void @__sanitizer_cov_trace_pc() #13
  br label %not_lro

lor.lhs.false643.do.end7.i_crit_edge:             ; preds = %lor.lhs.false643
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

do.end7.i:                                        ; preds = %lor.lhs.false643.do.end7.i_crit_edge, %if.else639.do.end7.i_crit_edge
  %279 = ptrtoint ptr %len608 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %len608, align 4
  %281 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %data_len, align 8
  %sub.i.i1039 = sub i32 %280, %282
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i.i1039)
  %cmp8.i = icmp ult i32 %sub.i.i1039, 40
  br i1 %cmp8.i, label %do.end7.i.not_lro_crit_edge, label %if.end16.i, !prof !280

do.end7.i.not_lro_crit_edge:                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %not_lro

if.end16.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %call610)
  %switch.selectcmp.case1.i = icmp eq i16 %call610, -32512
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30552, i16 %call610)
  %switch.selectcmp.case2.i = icmp eq i16 %call610, -30552
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %283 = select i1 %switch.selectcmp.i, i32 18, i32 14
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %214, i32 0, i32 18
  %284 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %214, i32 0, i32 15, i32 0, i32 21
  %286 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %287 to i32
  %add.ptr.i.i.i1040 = getelementptr i8, ptr %285, i32 %conv.i.i.i
  %288 = and i64 %bf.load611, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %288)
  %tobool30.not.i = icmp eq i64 %288, 0
  br i1 %tobool30.not.i, label %if.else84.i, label %do.body32.i

do.body32.i:                                      ; preds = %if.end16.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i1040, i32 0, i32 2
  %289 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %289, i32 2)
  %290 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %290)
  %cmp34.not.i = icmp eq i16 %290, 2048
  br i1 %cmp34.not.i, label %do.body32.i.do.end54.i_crit_edge, label %land.rhs.i1041

do.body32.i.do.end54.i_crit_edge:                 ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end54.i

land.rhs.i1041:                                   ; preds = %do.body32.i
  %h_vlan_encapsulated_proto.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i.i1040, i32 0, i32 3
  %291 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %h_vlan_encapsulated_proto.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %292)
  %cmp37.not.i = icmp eq i16 %292, 2048
  br i1 %cmp37.not.i, label %land.rhs.i1041.do.end54.i_crit_edge, label %do.body46.i, !prof !277

land.rhs.i1041.do.end54.i_crit_edge:              ; preds = %land.rhs.i1041
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end54.i

do.body46.i:                                      ; preds = %land.rhs.i1041
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1315, 0\0A.popsection", ""() #11, !srcloc !377
  unreachable

do.end54.i:                                       ; preds = %land.rhs.i1041.do.end54.i_crit_edge, %do.body32.i.do.end54.i_crit_edge
  %add.ptr.i1042 = getelementptr i8, ptr %add.ptr.i.i.i1040, i32 %283
  %protocol56.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i1042, i32 0, i32 6
  %293 = ptrtoint ptr %protocol56.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %protocol56.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %294)
  %cmp58.not.i = icmp eq i8 %294, 6
  br i1 %cmp58.not.i, label %do.end75.i, label %do.body67.i, !prof !277

do.body67.i:                                      ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1317, 0\0A.popsection", ""() #11, !srcloc !378
  unreachable

do.end75.i:                                       ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  %295 = ptrtoint ptr %add.ptr.i1042 to i32
  call void @__asan_load1_noabort(i32 %295)
  %bf.load76.i = load i8, ptr %add.ptr.i1042, align 4
  %bf.clear77.i = shl i8 %bf.load76.i, 2
  %296 = and i8 %bf.clear77.i, 60
  %shl.i = zext i8 %296 to i32
  %add.ptr83.i = getelementptr i8, ptr %add.ptr.i1042, i32 %shl.i
  br label %if.end127.i

if.else84.i:                                      ; preds = %if.end16.i
  %297 = and i64 %bf.load611, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %297)
  %tobool89.not.i = icmp eq i64 %297, 0
  br i1 %tobool89.not.i, label %if.else84.i.not_lro_crit_edge, label %do.body91.i

if.else84.i.not_lro_crit_edge:                    ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %not_lro

do.body91.i:                                      ; preds = %if.else84.i
  %h_proto92.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i1040, i32 0, i32 2
  %298 = ptrtoint ptr %h_proto92.i to i32
  call void @__asan_loadN_noabort(i32 %298, i32 2)
  %299 = load i16, ptr %h_proto92.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %299)
  %cmp94.not.i = icmp eq i16 %299, -31011
  br i1 %cmp94.not.i, label %do.body91.i.do.end117.i_crit_edge, label %land.rhs96.i

do.body91.i.do.end117.i_crit_edge:                ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end117.i

land.rhs96.i:                                     ; preds = %do.body91.i
  %h_vlan_encapsulated_proto97.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i.i1040, i32 0, i32 3
  %300 = ptrtoint ptr %h_vlan_encapsulated_proto97.i to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %h_vlan_encapsulated_proto97.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %301)
  %cmp99.not.i = icmp eq i16 %301, -31011
  br i1 %cmp99.not.i, label %land.rhs96.i.do.end117.i_crit_edge, label %do.body109.i, !prof !277

land.rhs96.i.do.end117.i_crit_edge:               ; preds = %land.rhs96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end117.i

do.body109.i:                                     ; preds = %land.rhs96.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #11, !srcloc !379
  unreachable

do.end117.i:                                      ; preds = %land.rhs96.i.do.end117.i_crit_edge, %do.body91.i.do.end117.i_crit_edge
  %add.ptr118.i = getelementptr i8, ptr %add.ptr.i.i.i1040, i32 %283
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr118.i, i32 0, i32 3
  %302 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %nexthdr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %303)
  %cmp120.not.i = icmp eq i8 %303, 6
  br i1 %cmp120.not.i, label %if.end123.i, label %do.end117.i.if.end652_crit_edge

do.end117.i.if.end652_crit_edge:                  ; preds = %do.end117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end652

if.end123.i:                                      ; preds = %do.end117.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr124.i = getelementptr i8, ptr %add.ptr118.i, i32 40
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.end123.i, %do.end75.i
  %hlen.1.i = phi i32 [ %shl.i, %do.end75.i ], [ 40, %if.end123.i ]
  %hdr.sroa.0.0.i = phi ptr [ %add.ptr83.i, %do.end75.i ], [ %add.ptr124.i, %if.end123.i ]
  %add.i1043 = add nuw nsw i32 %hlen.1.i, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i1043, i32 %sub.i.i1039)
  %cmp128.i = icmp ugt i32 %add.i1043, %sub.i.i1039
  br i1 %cmp128.i, label %if.end127.i.not_lro_crit_edge, label %vmxnet3_get_hdr_len.exit

if.end127.i.not_lro_crit_edge:                    ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %not_lro

vmxnet3_get_hdr_len.exit:                         ; preds = %if.end127.i
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %hdr.sroa.0.0.i, i32 0, i32 4
  %304 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %bf.load132.i = load i16, ptr %doff.i, align 4
  %305 = lshr i16 %bf.load132.i, 10
  %306 = and i16 %305, 60
  %shl135.i = zext i16 %306 to i32
  %add136.i = add nuw nsw i32 %hlen.1.i, %shl135.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add136.i)
  %cmp649 = icmp eq i32 %add136.i, 0
  br i1 %cmp649, label %vmxnet3_get_hdr_len.exit.not_lro_crit_edge, label %vmxnet3_get_hdr_len.exit.if.end652_crit_edge

vmxnet3_get_hdr_len.exit.if.end652_crit_edge:     ; preds = %vmxnet3_get_hdr_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end652

vmxnet3_get_hdr_len.exit.not_lro_crit_edge:       ; preds = %vmxnet3_get_hdr_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %not_lro

if.end652:                                        ; preds = %vmxnet3_get_hdr_len.exit.if.end652_crit_edge, %do.end117.i.if.end652_crit_edge
  %retval.0.i10441090 = phi i32 [ %add136.i, %vmxnet3_get_hdr_len.exit.if.end652_crit_edge ], [ 60, %do.end117.i.if.end652_crit_edge ]
  %cond659 = select i1 %tobool30.not.i, i32 16, i32 1
  %end.i1045 = getelementptr inbounds %struct.sk_buff, ptr %214, i32 0, i32 17
  %307 = ptrtoint ptr %end.i1045 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %end.i1045, align 4
  %gso_type661 = getelementptr inbounds %struct.skb_shared_info, ptr %308, i32 0, i32 8
  %309 = ptrtoint ptr %gso_type661 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %cond659, ptr %gso_type661, align 8
  br i1 %cmp623.not, label %if.else676, label %if.then665

if.then665:                                       ; preds = %if.end652
  call void @__sanitizer_cov_trace_pc() #13
  %310 = ptrtoint ptr %end.i1045 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %end.i1045, align 4
  %gso_segs667 = getelementptr inbounds %struct.skb_shared_info, ptr %311, i32 0, i32 5
  %312 = ptrtoint ptr %gso_segs667 to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 %segCnt.4, ptr %gso_segs667, align 2
  %313 = ptrtoint ptr %len608 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %len608, align 4
  %315 = xor i32 %retval.0.i10441090, -1
  %add670 = add nsw i32 %315, %conv622
  %sub671 = add i32 %add670, %314
  %div = udiv i32 %sub671, %conv622
  %conv673 = trunc i32 %div to i16
  %316 = load ptr, ptr %end.i1045, align 4
  %gso_size675 = getelementptr inbounds %struct.skb_shared_info, ptr %316, i32 0, i32 4
  %317 = ptrtoint ptr %gso_size675 to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 %conv673, ptr %gso_size675, align 4
  br label %not_lro

if.else676:                                       ; preds = %if.end652
  call void @__sanitizer_cov_trace_pc() #13
  %sub677 = sub i32 %220, %retval.0.i10441090
  %conv678 = trunc i32 %sub677 to i16
  %318 = ptrtoint ptr %end.i1045 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %end.i1045, align 4
  %gso_size680 = getelementptr inbounds %struct.skb_shared_info, ptr %319, i32 0, i32 4
  %320 = ptrtoint ptr %gso_size680 to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 %conv678, ptr %gso_size680, align 4
  br label %not_lro

not_lro:                                          ; preds = %if.else676, %if.then665, %vmxnet3_get_hdr_len.exit.not_lro_crit_edge, %if.end127.i.not_lro_crit_edge, %if.else84.i.not_lro_crit_edge, %do.end7.i.not_lro_crit_edge, %lor.lhs.false643.not_lro_crit_edge, %if.then629, %lor.lhs.false.not_lro_crit_edge, %vmxnet3_rx_csum.exit.not_lro_crit_edge
  %321 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %321, i32 8)
  %bf.load687 = load i64, ptr %1, align 4
  %322 = and i64 %bf.load687, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %322)
  %tobool691.not = icmp eq i64 %322, 0
  br i1 %tobool691.not, label %not_lro.if.end703_crit_edge, label %if.then698, !prof !277

not_lro.if.end703_crit_edge:                      ; preds = %not_lro
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end703

if.then698:                                       ; preds = %not_lro
  call void @__sanitizer_cov_trace_pc() #13
  %bf.lshr700 = lshr i64 %bf.load687, 48
  %conv702 = trunc i64 %bf.lshr700 to i16
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %214, i32 0, i32 15, i32 0, i32 9
  %323 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %214, i32 0, i32 15, i32 0, i32 10
  %324 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 %conv702, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %214, i32 0, i32 15, i32 0, i32 3
  %325 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %325, i32 4)
  %bf.load.i1049 = load i32, ptr %vlan_present.i, align 2
  %bf.set.i1050 = or i32 %bf.load.i1049, -2147483648
  store i32 %bf.set.i1050, ptr %vlan_present.i, align 2
  br label %if.end703

if.end703:                                        ; preds = %if.then698, %not_lro.if.end703_crit_edge
  %326 = ptrtoint ptr %netdev278 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %netdev278, align 16
  %features705 = getelementptr inbounds %struct.net_device, ptr %327, i32 0, i32 23
  %328 = ptrtoint ptr %features705 to i32
  call void @__asan_load8_noabort(i32 %328)
  %329 = load i64, ptr %features705, align 16
  %and706 = and i64 %329, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and706)
  %tobool707.not = icmp eq i64 %and706, 0
  br i1 %tobool707.not, label %if.else710, label %if.then708

if.then708:                                       ; preds = %if.end703
  call void @__sanitizer_cov_trace_pc() #13
  %call709 = tail call i32 @netif_receive_skb(ptr noundef %214) #11
  br label %if.end712

if.else710:                                       ; preds = %if.end703
  call void @__sanitizer_cov_trace_pc() #13
  %call711 = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef %214) #11
  br label %if.end712

if.end712:                                        ; preds = %if.else710, %if.then708
  %330 = ptrtoint ptr %rx_ctx to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr null, ptr %rx_ctx, align 4
  %inc714 = add nuw i32 %num_pkts.01127, 1
  br label %rcd_done

rcd_done:                                         ; preds = %if.end712, %if.end599.rcd_done_crit_edge, %put_page.exit, %if.then560, %do.end539.rcd_done_crit_edge, %if.then339, %if.then283, %if.then242, %do.body234, %if.then101
  %segCnt.5 = phi i16 [ %segCnt.01124, %if.then101 ], [ %segCnt.4, %if.end712 ], [ %segCnt.4, %if.end599.rcd_done_crit_edge ], [ %segCnt.01124, %do.end539.rcd_done_crit_edge ], [ %segCnt.01124, %if.then560 ], [ %segCnt.01124, %put_page.exit ], [ %segCnt.01124, %if.then283 ], [ %segCnt.01124, %if.then339 ], [ %segCnt.01124, %if.then242 ], [ %segCnt.01124, %do.body234 ]
  %mss.4 = phi i16 [ %mss.01125, %if.then101 ], [ %mss.3, %if.end712 ], [ %mss.3, %if.end599.rcd_done_crit_edge ], [ %mss.01125, %do.end539.rcd_done_crit_edge ], [ %mss.01125, %if.then560 ], [ %mss.01125, %put_page.exit ], [ %mss.01125, %if.then283 ], [ %mss.01125, %if.then339 ], [ %mss.01125, %if.then242 ], [ %mss.01125, %do.body234 ]
  %skip_page_frags.3.off0 = phi i1 [ %skip_page_frags.0.off01126, %if.then101 ], [ false, %if.end712 ], [ false, %if.end599.rcd_done_crit_edge ], [ true, %do.end539.rcd_done_crit_edge ], [ true, %if.then560 ], [ true, %put_page.exit ], [ true, %if.then283 ], [ true, %if.then339 ], [ %skip_page_frags.0.off01126, %if.then242 ], [ %skip_page_frags.0.off01126, %do.body234 ]
  %num_pkts.1 = phi i32 [ %num_pkts.01127, %if.then101 ], [ %inc714, %if.end712 ], [ %num_pkts.01127, %if.end599.rcd_done_crit_edge ], [ %num_pkts.01127, %do.end539.rcd_done_crit_edge ], [ %num_pkts.01127, %if.then560 ], [ %num_pkts.01127, %put_page.exit ], [ %num_pkts.01127, %if.then283 ], [ %num_pkts.01127, %if.then339 ], [ %num_pkts.01127, %if.then242 ], [ %num_pkts.01127, %do.body234 ]
  %next2comp = getelementptr %struct.vmxnet3_cmd_ring, ptr %rx_ring, i32 %cond, i32 3
  %331 = ptrtoint ptr %next2comp to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %bf.clear35, ptr %next2comp, align 4
  %next2fill.i = getelementptr %struct.vmxnet3_cmd_ring, ptr %rx_ring, i32 %cond, i32 2
  %332 = ptrtoint ptr %next2fill.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %next2fill.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear35, i32 %333)
  %cmp.i1051 = icmp ugt i32 %bf.clear35, %333
  br i1 %cmp.i1051, label %rcd_done.vmxnet3_cmd_ring_desc_avail.exit_crit_edge, label %cond.false.i

rcd_done.vmxnet3_cmd_ring_desc_avail.exit_crit_edge: ; preds = %rcd_done
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_cmd_ring_desc_avail.exit

cond.false.i:                                     ; preds = %rcd_done
  call void @__sanitizer_cov_trace_pc() #13
  %size.i = getelementptr %struct.vmxnet3_cmd_ring, ptr %rx_ring, i32 %cond, i32 1
  %334 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %size.i, align 4
  br label %vmxnet3_cmd_ring_desc_avail.exit

vmxnet3_cmd_ring_desc_avail.exit:                 ; preds = %cond.false.i, %rcd_done.vmxnet3_cmd_ring_desc_avail.exit_crit_edge
  %cond.i = phi i32 [ %335, %cond.false.i ], [ 0, %rcd_done.vmxnet3_cmd_ring_desc_avail.exit_crit_edge ]
  %336 = xor i32 %333, -1
  %add.i1052 = add i32 %bf.clear35, %336
  %sub3.i = add i32 %add.i1052, %cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !380
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %tobool721.not1117 = icmp eq i32 %sub3.i, 0
  br i1 %tobool721.not1117, label %vmxnet3_cmd_ring_desc_avail.exit.while.end_crit_edge, label %do.body723.lr.ph

vmxnet3_cmd_ring_desc_avail.exit.while.end_crit_edge: ; preds = %vmxnet3_cmd_ring_desc_avail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.body723.lr.ph:                                 ; preds = %vmxnet3_cmd_ring_desc_avail.exit
  %size.i1059 = getelementptr %struct.vmxnet3_cmd_ring, ptr %rx_ring, i32 %cond, i32 1
  %gen.i = getelementptr %struct.vmxnet3_cmd_ring, ptr %rx_ring, i32 %cond, i32 4
  br label %do.body723

do.body723:                                       ; preds = %vmxnet3_cmd_ring_adv_next2fill.exit.do.body723_crit_edge, %do.body723.lr.ph
  %num_to_alloc.01118 = phi i32 [ %sub3.i, %do.body723.lr.ph ], [ %dec, %vmxnet3_cmd_ring_adv_next2fill.exit.do.body723_crit_edge ]
  %337 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %add.ptr, align 4
  %339 = ptrtoint ptr %next2fill.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %next2fill.i, align 4
  %arrayidx725 = getelementptr %union.Vmxnet3_GenericDesc, ptr %338, i32 %340
  %341 = ptrtoint ptr %arrayidx725 to i32
  call void @__asan_load8_noabort(i32 %341)
  %342 = load i64, ptr %arrayidx725, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %342)
  %tobool730.not = icmp eq i64 %342, 0
  br i1 %tobool730.not, label %do.body740, label %do.end748, !prof !280

do.body740:                                       ; preds = %do.body723
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1638, 0\0A.popsection", ""() #11, !srcloc !381
  unreachable

do.end748:                                        ; preds = %do.body723
  %343 = ptrtoint ptr %next2fill.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %next2fill.i, align 4
  %inc.i1058 = add i32 %344, 1
  store i32 %inc.i1058, ptr %next2fill.i, align 4
  %345 = ptrtoint ptr %size.i1059 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %size.i1059, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1058, i32 %346)
  %cmp.i1060 = icmp eq i32 %inc.i1058, %346
  br i1 %cmp.i1060, label %if.then.i1061, label %do.end748.vmxnet3_cmd_ring_adv_next2fill.exit_crit_edge, !prof !280

do.end748.vmxnet3_cmd_ring_adv_next2fill.exit_crit_edge: ; preds = %do.end748
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_cmd_ring_adv_next2fill.exit

if.then.i1061:                                    ; preds = %do.end748
  call void @__sanitizer_cov_trace_pc() #13
  %347 = ptrtoint ptr %next2fill.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 0, ptr %next2fill.i, align 4
  %348 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %gen.i, align 4
  %350 = xor i8 %349, 1
  store i8 %350, ptr %gen.i, align 4
  br label %vmxnet3_cmd_ring_adv_next2fill.exit

vmxnet3_cmd_ring_adv_next2fill.exit:              ; preds = %if.then.i1061, %do.end748.vmxnet3_cmd_ring_adv_next2fill.exit_crit_edge
  %dec = add i32 %num_to_alloc.01118, -1
  %tobool721.not = icmp eq i32 %dec, 0
  br i1 %tobool721.not, label %vmxnet3_cmd_ring_adv_next2fill.exit.while.end_crit_edge, label %vmxnet3_cmd_ring_adv_next2fill.exit.do.body723_crit_edge

vmxnet3_cmd_ring_adv_next2fill.exit.do.body723_crit_edge: ; preds = %vmxnet3_cmd_ring_adv_next2fill.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body723

vmxnet3_cmd_ring_adv_next2fill.exit.while.end_crit_edge: ; preds = %vmxnet3_cmd_ring_adv_next2fill.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %vmxnet3_cmd_ring_adv_next2fill.exit.while.end_crit_edge, %vmxnet3_cmd_ring_desc_avail.exit.while.end_crit_edge
  %351 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %shared, align 4
  %353 = ptrtoint ptr %352 to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %352, align 8, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %354)
  %tobool756.not = icmp eq i8 %354, 0
  br i1 %tobool756.not, label %while.end.if.end773_crit_edge, label %do.body764, !prof !277

while.end.if.end773_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end773

do.body764:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  tail call void @arm_heavy_mb() #11
  %355 = ptrtoint ptr %next2fill.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %next2fill.i, align 4
  %357 = tail call i32 @llvm.bswap.i32(i32 %356)
  %358 = ptrtoint ptr %hw_addr0 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %hw_addr0, align 8
  %arrayidx768 = getelementptr [2 x i32], ptr @vmxnet3_rq_rx_complete.rxprod_reg, i32 0, i32 %cond
  %360 = ptrtoint ptr %arrayidx768 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %arrayidx768, align 4
  %362 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %qid, align 8
  %mul770 = shl i32 %363, 3
  %add771 = add i32 %mul770, %361
  %add.ptr772 = getelementptr i8, ptr %359, i32 %add771
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr772, i32 %357) #11, !srcloc !284
  br label %if.end773

if.end773:                                        ; preds = %do.body764, %while.end.if.end773_crit_edge
  %364 = ptrtoint ptr %next2proc to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %next2proc, align 4
  %inc.i1062 = add i32 %365, 1
  store i32 %inc.i1062, ptr %next2proc, align 4
  %366 = ptrtoint ptr %size.i1063 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %size.i1063, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1062, i32 %367)
  %cmp.i1064 = icmp eq i32 %inc.i1062, %367
  br i1 %cmp.i1064, label %if.then.i1066, label %if.end773.cleanup783_crit_edge, !prof !280

if.end773.cleanup783_crit_edge:                   ; preds = %if.end773
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup783

if.then.i1066:                                    ; preds = %if.end773
  call void @__sanitizer_cov_trace_pc() #13
  %368 = ptrtoint ptr %next2proc to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 0, ptr %next2proc, align 4
  %369 = ptrtoint ptr %gen3 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %gen3, align 4
  %371 = xor i8 %370, 1
  store i8 %371, ptr %gen3, align 4
  br label %cleanup783

cleanup783:                                       ; preds = %if.then.i1066, %if.end773.cleanup783_crit_edge
  %372 = ptrtoint ptr %comp_ring to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %comp_ring, align 4
  %374 = ptrtoint ptr %next2proc to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %next2proc, align 4
  %arrayidx780 = getelementptr %union.Vmxnet3_GenericDesc, ptr %373, i32 %375
  %376 = ptrtoint ptr %arrayidx780 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %arrayidx780, align 4
  %378 = tail call i32 @llvm.bswap.i32(i32 %377) #11
  %379 = ptrtoint ptr %rxComp to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %378, ptr %rxComp, align 4
  %incdec.ptr.i1067 = getelementptr i32, ptr %arrayidx780, i32 1
  %380 = ptrtoint ptr %incdec.ptr.i1067 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %incdec.ptr.i1067, align 4
  %382 = tail call i32 @llvm.bswap.i32(i32 %381) #11
  %383 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %382, ptr %0, align 4
  %incdec.ptr.1.i1069 = getelementptr i32, ptr %arrayidx780, i32 2
  %384 = ptrtoint ptr %incdec.ptr.1.i1069 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %incdec.ptr.1.i1069, align 4
  %386 = tail call i32 @llvm.bswap.i32(i32 %385) #11
  %387 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 %386, ptr %1, align 4
  %incdec.ptr.2.i1071 = getelementptr i32, ptr %arrayidx780, i32 3
  %388 = ptrtoint ptr %incdec.ptr.2.i1071 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %incdec.ptr.2.i1071, align 4
  %390 = tail call i32 @llvm.bswap.i32(i32 %389) #11
  %391 = ptrtoint ptr %incdec.ptr1.2.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %390, ptr %incdec.ptr1.2.i, align 4
  %392 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %392, i32 8)
  %bf.load = load i64, ptr %1, align 4
  %393 = trunc i64 %bf.load to i32
  %394 = lshr i32 %393, 31
  %395 = ptrtoint ptr %gen3 to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %gen3, align 4
  %conv = zext i8 %396 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %394, i32 %conv)
  %cmp = icmp eq i32 %394, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %num_pkts.1, i32 %quota)
  %cmp5.not = icmp ult i32 %num_pkts.1, %quota
  %or.cond1097 = select i1 %cmp, i1 %cmp5.not, i1 false
  br i1 %or.cond1097, label %cleanup783.if.end_crit_edge, label %cleanup783.while.end795_crit_edge

cleanup783.while.end795_crit_edge:                ; preds = %cleanup783
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end795

cleanup783.if.end_crit_edge:                      ; preds = %cleanup783
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

while.end795:                                     ; preds = %cleanup783.while.end795_crit_edge, %entry.while.end795_crit_edge
  %num_pkts.0.lcssa = phi i32 [ 0, %entry.while.end795_crit_edge ], [ %num_pkts.1, %cleanup783.while.end795_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rxComp) #11
  ret i32 %num_pkts.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vmxnet3_rx_error(ptr nocapture noundef %rq, ptr nocapture noundef readonly %rcd, ptr nocapture noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 12
  %drop_err = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %drop_err to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %drop_err, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %drop_err, align 8
  %fcs = getelementptr inbounds %struct.Vmxnet3_RxCompDesc, ptr %rcd, i32 0, i32 2
  %2 = ptrtoint ptr %fcs to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %bf.load = load i64, ptr %fcs, align 4
  %3 = and i64 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %drop_fcs = getelementptr inbounds %struct.vmxnet3_rx_queue, ptr %rq, i32 0, i32 12, i32 2
  %4 = ptrtoint ptr %drop_fcs to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %drop_fcs, align 16
  %inc2 = add i64 %5, 1
  store i64 %inc2, ptr %drop_fcs, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %stats, align 16
  %inc4 = add i64 %7, 1
  store i64 %inc4, ptr %stats, align 16
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %9, i32 noundef 1) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ctx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_suspend(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %device, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %device, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_rx_queues = getelementptr i8, ptr %1, i32 28108
  %4 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp250.not = icmp eq i32 %5, 0
  br i1 %cmp250.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0251 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %napi = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.0251, i32 2
  tail call void @napi_disable(ptr noundef %napi) #11
  %inc = add nuw i32 %i.0251, 1
  %6 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_rx_queues, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %shared.i = getelementptr i8, ptr %1, i32 28064
  %8 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shared.i, align 32
  %intrCtrl.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %9, i32 0, i32 2, i32 1, i32 4
  %10 = ptrtoint ptr %intrCtrl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %intrCtrl.i, align 4
  %or.i = or i32 %11, 16777216
  store i32 %or.i, ptr %intrCtrl.i, align 4
  %num_intrs.i = getelementptr i8, ptr %1, i32 27400
  %12 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_intrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp7.not.i = icmp eq i8 %13, 0
  br i1 %cmp7.not.i, label %for.end.vmxnet3_disable_all_intrs.exit_crit_edge, label %for.body.lr.ph.i

for.end.vmxnet3_disable_all_intrs.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_disable_all_intrs.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %hw_addr0.i.i = getelementptr i8, ptr %1, i32 28088
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !311
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %hw_addr0.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_addr0.i.i, align 8
  %mul.i.i = shl i32 %i.08.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #11, !srcloc !284
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %16 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_intrs.i, align 8
  %conv.i = zext i8 %17 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.vmxnet3_disable_all_intrs.exit_crit_edge

for.body.i.vmxnet3_disable_all_intrs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_disable_all_intrs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

vmxnet3_disable_all_intrs.exit:                   ; preds = %for.body.i.vmxnet3_disable_all_intrs.exit_crit_edge, %for.end.vmxnet3_disable_all_intrs.exit_crit_edge
  tail call fastcc void @vmxnet3_free_irqs(ptr noundef %add.ptr.i)
  %type.i = getelementptr i8, ptr %1, i32 27396
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %19, label %do.body12.i [
    i32 3, label %if.then.i214
    i32 2, label %if.then4.i
    i32 1, label %vmxnet3_disable_all_intrs.exit.vmxnet3_free_intr_resources.exit_crit_edge
  ], !prof !312

vmxnet3_disable_all_intrs.exit.vmxnet3_free_intr_resources.exit_crit_edge: ; preds = %vmxnet3_disable_all_intrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_free_intr_resources.exit

if.then.i214:                                     ; preds = %vmxnet3_disable_all_intrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pdev.i = getelementptr i8, ptr %1, i32 28084
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_disable_msix(ptr noundef %22) #11
  br label %vmxnet3_free_intr_resources.exit

if.then4.i:                                       ; preds = %vmxnet3_disable_all_intrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pdev5.i = getelementptr i8, ptr %1, i32 28084
  %23 = ptrtoint ptr %pdev5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev5.i, align 4
  tail call void @pci_disable_msi(ptr noundef %24) #11
  br label %vmxnet3_free_intr_resources.exit

do.body12.i:                                      ; preds = %vmxnet3_disable_all_intrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/vmxnet3/vmxnet3_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3332, 0\0A.popsection", ""() #11, !srcloc !348
  unreachable

vmxnet3_free_intr_resources.exit:                 ; preds = %if.then4.i, %if.then.i214, %vmxnet3_disable_all_intrs.exit.vmxnet3_free_intr_resources.exit_crit_edge
  tail call void @netif_device_detach(ptr noundef %1) #11
  %pm_conf = getelementptr i8, ptr %1, i32 28068
  %25 = ptrtoint ptr %pm_conf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pm_conf, align 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 920)
  %wol = getelementptr i8, ptr %1, i32 28136
  %28 = ptrtoint ptr %wol to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wol, align 8
  %and = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %vmxnet3_free_intr_resources.exit.if.end14_crit_edge, label %if.then3

vmxnet3_free_intr_resources.exit.if.end14_crit_edge: ; preds = %vmxnet3_free_intr_resources.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then3:                                         ; preds = %vmxnet3_free_intr_resources.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx4 = getelementptr %struct.Vmxnet3_PMConf, ptr %26, i32 0, i32 3, i32 %i.0.lcssa
  %patternSize = getelementptr %struct.Vmxnet3_PMConf, ptr %26, i32 0, i32 3, i32 %i.0.lcssa, i32 1
  %30 = ptrtoint ptr %patternSize to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 6, ptr %patternSize, align 1
  %31 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %arrayidx4, align 2
  %pattern = getelementptr %struct.Vmxnet3_PMConf, ptr %26, i32 0, i32 3, i32 %i.0.lcssa, i32 3
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %32 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_addr, align 64
  %34 = call ptr @memcpy(ptr %pattern, ptr %33, i32 6)
  %mask = getelementptr %struct.Vmxnet3_PMConf, ptr %26, i32 0, i32 3, i32 %i.0.lcssa, i32 2
  %35 = ptrtoint ptr %mask to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 63, ptr %mask, align 2
  %36 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %26, align 2
  %38 = or i16 %37, 512
  store i16 %38, ptr %26, align 2
  %inc13 = add i32 %i.0.lcssa, 1
  br label %if.end14

if.end14:                                         ; preds = %if.then3, %vmxnet3_free_intr_resources.exit.if.end14_crit_edge
  %i.1 = phi i32 [ %inc13, %if.then3 ], [ %i.0.lcssa, %vmxnet3_free_intr_resources.exit.if.end14_crit_edge ]
  %39 = ptrtoint ptr %wol to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wol, align 8
  %and16 = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.skip_arp_crit_edge, label %if.then18

if.end14.skip_arp_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip_arp

if.then18:                                        ; preds = %if.end14
  %41 = tail call i32 @llvm.read_register.i32(metadata !267) #11
  %and.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %44, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !383
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.then18.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then18.rcu_read_lock.exit_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then18
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.120, i32 noundef 696, ptr noundef nonnull @.str.121) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then18.rcu_read_lock.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 78
  %45 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i215 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %tobool.not.i216 = icmp eq i32 %call.i215, 0
  br i1 %tobool.not.i216, label %land.lhs.true.i217, label %rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge

rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__in_dev_get_rcu.exit

land.lhs.true.i217:                               ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i217.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i217.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true.i217
  call void @__sanitizer_cov_trace_pc() #13
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i217
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i218

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__in_dev_get_rcu.exit

if.then.i218:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.122, i32 noundef 232, ptr noundef nonnull @.str.119) #11
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i218, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i217.__in_dev_get_rcu.exit_crit_edge, %rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge
  %tobool20.not = icmp eq ptr %46, null
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %__in_dev_get_rcu.exit
  %call.i219 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i219, label %if.then21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i222

if.then21.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i222:                               ; preds = %if.then21
  %call1.i220 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i220)
  %tobool.not.i221 = icmp eq i32 %call1.i220, 0
  br i1 %tobool.not.i221, label %land.lhs.true.i222.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i224

land.lhs.true.i222.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i222
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i224:                              ; preds = %land.lhs.true.i222
  %.b4.i223 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i223, label %land.lhs.true2.i224.rcu_read_unlock.exit_crit_edge, label %if.then.i225

land.lhs.true2.i224.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i224
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i225:                                     ; preds = %land.lhs.true2.i224
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.120, i32 noundef 724, ptr noundef nonnull @.str.123) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i225, %land.lhs.true2.i224.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i222.rcu_read_unlock.exit_crit_edge, %if.then21.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !384
  %47 = tail call i32 @llvm.read_register.i32(metadata !267) #11
  %and.i.i.i.i.i226 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i226 to ptr
  %preempt_count.i.i.i.i227 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i227 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i227, align 4
  %sub.i.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i227, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %skip_arp

if.end22:                                         ; preds = %__in_dev_get_rcu.exit
  %ifa_list = getelementptr inbounds %struct.in_device, ptr %46, i32 0, i32 4
  %51 = ptrtoint ptr %ifa_list to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %ifa_list, align 4
  %call25 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true, label %if.end22.do.end34_crit_edge

if.end22.do.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

land.lhs.true:                                    ; preds = %if.end22
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true.do.end34_crit_edge, label %land.lhs.true29

land.lhs.true.do.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

land.lhs.true29:                                  ; preds = %land.lhs.true
  %.b213 = load i1, ptr @vmxnet3_suspend.__warned, align 1
  br i1 %.b213, label %land.lhs.true29.do.end34_crit_edge, label %if.then31

land.lhs.true29.do.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vmxnet3_suspend.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 3853, ptr noundef nonnull @.str.119) #11
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %land.lhs.true29.do.end34_crit_edge, %land.lhs.true.do.end34_crit_edge, %if.end22.do.end34_crit_edge
  %tobool36.not = icmp eq ptr %52, null
  br i1 %tobool36.not, label %if.then37, label %if.end38

if.then37:                                        ; preds = %do.end34
  %call.i228 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i228, label %if.then37.rcu_read_unlock.exit238_crit_edge, label %land.lhs.true.i231

if.then37.rcu_read_unlock.exit238_crit_edge:      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit238

land.lhs.true.i231:                               ; preds = %if.then37
  %call1.i229 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i229)
  %tobool.not.i230 = icmp eq i32 %call1.i229, 0
  br i1 %tobool.not.i230, label %land.lhs.true.i231.rcu_read_unlock.exit238_crit_edge, label %land.lhs.true2.i233

land.lhs.true.i231.rcu_read_unlock.exit238_crit_edge: ; preds = %land.lhs.true.i231
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit238

land.lhs.true2.i233:                              ; preds = %land.lhs.true.i231
  %.b4.i232 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i232, label %land.lhs.true2.i233.rcu_read_unlock.exit238_crit_edge, label %if.then.i234

land.lhs.true2.i233.rcu_read_unlock.exit238_crit_edge: ; preds = %land.lhs.true2.i233
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit238

if.then.i234:                                     ; preds = %land.lhs.true2.i233
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.120, i32 noundef 724, ptr noundef nonnull @.str.123) #11
  br label %rcu_read_unlock.exit238

rcu_read_unlock.exit238:                          ; preds = %if.then.i234, %land.lhs.true2.i233.rcu_read_unlock.exit238_crit_edge, %land.lhs.true.i231.rcu_read_unlock.exit238_crit_edge, %if.then37.rcu_read_unlock.exit238_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !384
  %53 = tail call i32 @llvm.read_register.i32(metadata !267) #11
  %and.i.i.i.i.i235 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i235 to ptr
  %preempt_count.i.i.i.i236 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i236 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i236, align 4
  %sub.i.i.i237 = add i32 %56, -1
  store volatile i32 %sub.i.i.i237, ptr %preempt_count.i.i.i.i236, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %skip_arp

if.end38:                                         ; preds = %do.end34
  %arrayidx40 = getelementptr %struct.Vmxnet3_PMConf, ptr %26, i32 0, i32 3, i32 %i.1
  %patternSize41 = getelementptr %struct.Vmxnet3_PMConf, ptr %26, i32 0, i32 3, i32 %i.1, i32 1
  %57 = ptrtoint ptr %patternSize41 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 42, ptr %patternSize41, align 1
  %58 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 6, ptr %arrayidx40, align 2
  %h_proto = getelementptr %struct.Vmxnet3_PMConf, ptr %26, i32 0, i32 3, i32 %i.1, i32 3, i32 12
  %59 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 2054, ptr %h_proto, align 1
  %arrayidx57 = getelementptr %struct.Vmxnet3_PMConf, ptr %26, i32 0, i32 3, i32 %i.1, i32 3, i32 14
  %ar_op = getelementptr inbounds %struct.arphdr, ptr %arrayidx57, i32 0, i32 4
  %60 = ptrtoint ptr %ar_op to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %ar_op, align 2
  %add.ptr59 = getelementptr %struct.arphdr, ptr %arrayidx57, i32 3
  %ifa_address = getelementptr inbounds %struct.in_ifaddr, ptr %52, i32 0, i32 5
  %61 = ptrtoint ptr %ifa_address to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ifa_address, align 4
  %63 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %add.ptr59, align 4
  %call.i239 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i239, label %if.end38.rcu_read_unlock.exit249_crit_edge, label %land.lhs.true.i242

if.end38.rcu_read_unlock.exit249_crit_edge:       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit249

land.lhs.true.i242:                               ; preds = %if.end38
  %call1.i240 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i240)
  %tobool.not.i241 = icmp eq i32 %call1.i240, 0
  br i1 %tobool.not.i241, label %land.lhs.true.i242.rcu_read_unlock.exit249_crit_edge, label %land.lhs.true2.i244

land.lhs.true.i242.rcu_read_unlock.exit249_crit_edge: ; preds = %land.lhs.true.i242
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit249

land.lhs.true2.i244:                              ; preds = %land.lhs.true.i242
  %.b4.i243 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i243, label %land.lhs.true2.i244.rcu_read_unlock.exit249_crit_edge, label %if.then.i245

land.lhs.true2.i244.rcu_read_unlock.exit249_crit_edge: ; preds = %land.lhs.true2.i244
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit249

if.then.i245:                                     ; preds = %land.lhs.true2.i244
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.120, i32 noundef 724, ptr noundef nonnull @.str.123) #11
  br label %rcu_read_unlock.exit249

rcu_read_unlock.exit249:                          ; preds = %if.then.i245, %land.lhs.true2.i244.rcu_read_unlock.exit249_crit_edge, %land.lhs.true.i242.rcu_read_unlock.exit249_crit_edge, %if.end38.rcu_read_unlock.exit249_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !384
  %64 = tail call i32 @llvm.read_register.i32(metadata !267) #11
  %and.i.i.i.i.i246 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i246 to ptr
  %preempt_count.i.i.i.i247 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i247 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i247, align 4
  %sub.i.i.i248 = add i32 %67, -1
  store volatile i32 %sub.i.i.i248, ptr %preempt_count.i.i.i.i247, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %mask62 = getelementptr %struct.Vmxnet3_PMConf, ptr %26, i32 0, i32 3, i32 %i.1, i32 2
  %68 = ptrtoint ptr %mask62 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %mask62, align 2
  %arrayidx67 = getelementptr %struct.Vmxnet3_PMConf, ptr %26, i32 0, i32 3, i32 %i.1, i32 2, i32 1
  %69 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 48, ptr %arrayidx67, align 1
  %arrayidx71 = getelementptr %struct.Vmxnet3_PMConf, ptr %26, i32 0, i32 3, i32 %i.1, i32 2, i32 2
  %70 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 48, ptr %arrayidx71, align 2
  %arrayidx75 = getelementptr %struct.Vmxnet3_PMConf, ptr %26, i32 0, i32 3, i32 %i.1, i32 2, i32 3
  %71 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx75, align 1
  %arrayidx79 = getelementptr %struct.Vmxnet3_PMConf, ptr %26, i32 0, i32 3, i32 %i.1, i32 2, i32 4
  %72 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -64, ptr %arrayidx79, align 2
  %arrayidx83 = getelementptr %struct.Vmxnet3_PMConf, ptr %26, i32 0, i32 3, i32 %i.1, i32 2, i32 5
  %73 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 3, ptr %arrayidx83, align 1
  %74 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %26, align 2
  %76 = or i16 %75, 512
  store i16 %76, ptr %26, align 2
  %inc88 = add i32 %i.1, 1
  br label %skip_arp

skip_arp:                                         ; preds = %rcu_read_unlock.exit249, %rcu_read_unlock.exit238, %rcu_read_unlock.exit, %if.end14.skip_arp_crit_edge
  %i.2 = phi i32 [ %inc88, %rcu_read_unlock.exit249 ], [ %i.1, %rcu_read_unlock.exit238 ], [ %i.1, %rcu_read_unlock.exit ], [ %i.1, %if.end14.skip_arp_crit_edge ]
  %77 = ptrtoint ptr %wol to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %wol, align 8
  %and91 = and i32 %78, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %skip_arp.if.end98_crit_edge, label %if.then93

skip_arp.if.end98_crit_edge:                      ; preds = %skip_arp
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.then93:                                        ; preds = %skip_arp
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %26, align 2
  %81 = or i16 %80, 256
  store i16 %81, ptr %26, align 2
  br label %if.end98

if.end98:                                         ; preds = %if.then93, %skip_arp.if.end98_crit_edge
  %conv99 = trunc i32 %i.2 to i8
  %numFilters = getelementptr inbounds %struct.Vmxnet3_PMConf, ptr %26, i32 0, i32 1
  %82 = ptrtoint ptr %numFilters to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv99, ptr %numFilters, align 2
  %83 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %shared.i, align 32
  %pmConfDesc = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %84, i32 0, i32 2, i32 4
  %85 = ptrtoint ptr %pmConfDesc to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 16777216, ptr %pmConfDesc, align 8
  %86 = load ptr, ptr %shared.i, align 32
  %confLen = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %86, i32 0, i32 2, i32 4, i32 1
  %87 = ptrtoint ptr %confLen to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1744633856, ptr %confLen, align 4
  %pm_conf_pa = getelementptr i8, ptr %1, i32 28240
  %88 = ptrtoint ptr %pm_conf_pa to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pm_conf_pa, align 16
  %conv103 = zext i32 %89 to i64
  %90 = tail call i64 @llvm.bswap.i64(i64 %conv103)
  %91 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %shared.i, align 32
  %confPA = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %92, i32 0, i32 2, i32 4, i32 2
  %93 = ptrtoint ptr %confPA to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %90, ptr %confPA, align 8
  %cmd_lock = getelementptr i8, ptr %1, i32 28020
  %call113 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !385
  tail call void @arm_heavy_mb() #11
  %hw_addr1 = getelementptr i8, ptr %1, i32 28092
  %94 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw_addr1, align 4
  %add.ptr121 = getelementptr i8, ptr %95, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 134282954) #11, !srcloc !284
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call113) #11
  %call123 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #11
  %call124 = tail call i32 @pci_choose_state(ptr noundef %add.ptr, [1 x i32] [i32 2]) #11
  %96 = ptrtoint ptr %wol to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %wol, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool126 = icmp ne i32 %97, 0
  %call127 = tail call i32 @pci_enable_wake(ptr noundef %add.ptr, i32 noundef %call124, i1 noundef zeroext %tobool126) #11
  tail call void @pci_disable_device(ptr noundef %add.ptr) #11
  %call131 = tail call i32 @pci_choose_state(ptr noundef %add.ptr, [1 x i32] [i32 2]) #11
  %call132 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef %call131) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_resume(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %device, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %device, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #11
  tail call void @pci_restore_state(ptr noundef %add.ptr) #11
  %call4 = tail call i32 @pci_enable_device_mem(ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @pci_enable_wake(ptr noundef %add.ptr, i32 noundef 0, i1 noundef zeroext false) #11
  tail call fastcc void @vmxnet3_alloc_intr_resources(ptr noundef %add.ptr.i)
  %cmd_lock = getelementptr i8, ptr %1, i32 28020
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !386
  tail call void @arm_heavy_mb() #11
  %hw_addr1 = getelementptr i8, ptr %1, i32 28092
  %4 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr1, align 4
  %add.ptr18 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 16842442) #11, !srcloc !284
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call12) #11
  tail call fastcc void @vmxnet3_tq_cleanup_all(ptr noundef %add.ptr.i)
  %num_rx_queues.i = getelementptr i8, ptr %1, i32 28108
  %6 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5.not.i = icmp eq i32 %7, 0
  br i1 %cmp5.not.i, label %if.end6.vmxnet3_rq_cleanup_all.exit_crit_edge, label %if.end6.for.body.i_crit_edge

if.end6.for.body.i_crit_edge:                     ; preds = %if.end6
  br label %for.body.i

if.end6.vmxnet3_rq_cleanup_all.exit_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rq_cleanup_all.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end6.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end6.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.06.i
  tail call fastcc void @vmxnet3_rq_cleanup(ptr noundef %arrayidx.i, ptr noundef %add.ptr.i) #11
  %inc.i = add nuw i32 %i.06.i, 1
  %8 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_rx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.vmxnet3_rq_cleanup_all.exit_crit_edge

for.body.i.vmxnet3_rq_cleanup_all.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vmxnet3_rq_cleanup_all.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

vmxnet3_rq_cleanup_all.exit:                      ; preds = %for.body.i.vmxnet3_rq_cleanup_all.exit_crit_edge, %if.end6.vmxnet3_rq_cleanup_all.exit_crit_edge
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !309
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr1, align 4
  %add.ptr.i48 = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 33619658) #11, !srcloc !284
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call2.i) #11
  %call20 = tail call i32 @vmxnet3_activate_dev(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %vmxnet3_rq_cleanup_all.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.124, i32 noundef %call20) #14
  tail call void @vmxnet3_force_close(ptr noundef %add.ptr.i)
  br label %cleanup

if.end24:                                         ; preds = %vmxnet3_rq_cleanup_all.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_device_attach(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.then23 ], [ 0, %if.end24 ], [ 0, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_choose_state(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !60, !61, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102, !103, !104, !106, !108, !110, !112, !113, !114, !115, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !155, !157, !158, !160, !161, !162, !164, !165, !167, !169, !170, !171, !173, !174, !175, !177, !179, !180, !182, !184, !186, !187, !188, !189, !191, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !214, !215, !216, !217, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !232, !234, !236, !238, !239, !240, !242, !244, !246, !248, !250, !252, !254, !255, !257, !258, !259, !261, !262, !264, !265}
!llvm.named.register.sp = !{!267}
!llvm.module.flags = !{!268, !269, !270, !271, !272, !273, !274, !275}
!llvm.ident = !{!276}

!0 = !{ptr @vmxnet3_driver_name, !1, !"vmxnet3_driver_name", i1 false, i1 false}
!1 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 32, i32 6}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 2690, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @vmxnet3_activate_dev.__UNIQUE_ID_ddebug512, !3, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 2701, i32 7}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 2708, i32 7}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 2726, i32 7}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 2986, i32 9}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 2991, i32 10}
!18 = !{ptr @__initcall__kmod_vmxnet3__547_3997_vmxnet3_init_module6, !19, !"__initcall__kmod_vmxnet3__547_3997_vmxnet3_init_module6", i1 false, i1 false}
!19 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3997, i32 1}
!20 = !{ptr @__exitcall_vmxnet3_exit_module, !21, !"__exitcall_vmxnet3_exit_module", i1 false, i1 false}
!21 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 4006, i32 1}
!22 = !{ptr @__UNIQUE_ID_author548, !23, !"__UNIQUE_ID_author548", i1 false, i1 false}
!23 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 4008, i32 1}
!24 = !{ptr @__UNIQUE_ID_description549, !25, !"__UNIQUE_ID_description549", i1 false, i1 false}
!25 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 4009, i32 1}
!26 = !{ptr @__UNIQUE_ID_file550, !27, !"__UNIQUE_ID_file550", i1 false, i1 false}
!27 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 4010, i32 1}
!28 = !{ptr @__UNIQUE_ID_license551, !27, !"__UNIQUE_ID_license551", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_version552, !30, !"__UNIQUE_ID_version552", i1 false, i1 false}
!30 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 4011, i32 1}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @__modver_attr, !30, !"__modver_attr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 1837, i32 4}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @vmxnet3_rq_init_all._entry, !35, !"_entry", i1 false, i1 false}
!40 = !{ptr @vmxnet3_rq_init_all._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 639, i32 2}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @vmxnet3_rq_alloc_rx_buf.__UNIQUE_ID_ddebug500, !42, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/mm.h", i32 717, i32 2}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 2150, i32 40}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 2158, i32 40}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 2162, i32 5}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @vmxnet3_request_irqs._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @vmxnet3_request_irqs._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 2187, i32 40}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 2207, i32 40}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 2230, i32 7}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 2252, i32 8}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 195, i32 5}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @vmxnet3_process_events._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @vmxnet3_process_events._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 201, i32 5}
!77 = !{ptr @vmxnet3_process_events._entry.31, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @vmxnet3_process_events._entry_ptr.33, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 2433, i32 10}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 151, i32 32}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 161, i32 32}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 511, i32 31}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 519, i32 31}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 527, i32 31}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 1864, i32 8}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 1877, i32 8}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 1890, i32 31}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3992, i32 2}
!99 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @vmxnet3_init_module._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @vmxnet3_init_module._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @vmxnet3_driver, !105, !"vmxnet3_driver", i1 false, i1 false}
!105 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3977, i32 26}
!106 = !{ptr @vmxnet3_pciid_table, !107, !"vmxnet3_pciid_table", i1 false, i1 false}
!107 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 39, i32 35}
!108 = !{ptr @vmxnet3_probe_device.vmxnet3_netdev_ops, !109, !"vmxnet3_netdev_ops", i1 false, i1 false}
!109 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3379, i32 37}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3441, i32 3}
!112 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @vmxnet3_probe_device._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @vmxnet3_probe_device._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @vmxnet3_probe_device.__key, !116, !"__key", i1 false, i1 false}
!116 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3445, i32 2}
!117 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3450, i32 3}
!120 = !{ptr @vmxnet3_probe_device._entry.50, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @vmxnet3_probe_device._entry_ptr.52, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3459, i32 3}
!124 = !{ptr @vmxnet3_probe_device._entry.53, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @vmxnet3_probe_device._entry_ptr.55, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3500, i32 3}
!128 = !{ptr @vmxnet3_probe_device._entry.56, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @vmxnet3_probe_device._entry_ptr.58, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3505, i32 2}
!132 = !{ptr @vmxnet3_probe_device.__UNIQUE_ID_ddebug523, !131, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3511, i32 3}
!135 = !{ptr @vmxnet3_probe_device._entry.60, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @vmxnet3_probe_device._entry_ptr.62, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3547, i32 2}
!139 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @vmxnet3_probe_device._entry.63, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @vmxnet3_probe_device._entry_ptr.66, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @vmxnet3_probe_device._entry.67, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3560, i32 3}
!144 = !{ptr @vmxnet3_probe_device._entry_ptr.68, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3627, i32 3}
!147 = !{ptr @vmxnet3_probe_device.__UNIQUE_ID_ddebug536, !146, !"__UNIQUE_ID_ddebug536", i1 false, i1 false}
!148 = !{ptr @vmxnet3_probe_device.__key.70, !149, !"__key", i1 false, i1 false}
!149 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3647, i32 2}
!150 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3669, i32 3}
!153 = !{ptr @vmxnet3_probe_device._entry.72, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @vmxnet3_probe_device._entry_ptr.74, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @vmxnet3_open.__key, !156, !"__key", i1 false, i1 false}
!156 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3018, i32 3}
!157 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 1096, i32 3}
!160 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @vmxnet3_tq_xmit.__UNIQUE_ID_ddebug509, !159, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 1183, i32 2}
!164 = !{ptr @vmxnet3_tq_xmit.__UNIQUE_ID_ddebug510, !163, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 946, i32 2}
!169 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @vmxnet3_copy_hdr.__UNIQUE_ID_ddebug508, !168, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 697, i32 3}
!173 = !{ptr @.str.83, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @vmxnet3_map_pkt.__UNIQUE_ID_ddebug501, !172, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!175 = !{ptr @vmxnet3_map_pkt.__UNIQUE_ID_ddebug502, !176, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!176 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 739, i32 3}
!177 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 781, i32 4}
!179 = !{ptr @vmxnet3_map_pkt.__UNIQUE_ID_ddebug503, !178, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3138, i32 8}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3146, i32 8}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 1921, i32 4}
!186 = !{ptr @.str.88, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @vmxnet3_rq_create_all._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @vmxnet3_rq_create_all._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3342, i32 30}
!191 = distinct !{null, !192, !"enable_mq", i1 false, i1 false}
!192 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 46, i32 12}
!193 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 2845, i32 3}
!195 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @vmxnet3_alloc_pci_resources._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @vmxnet3_alloc_pci_resources._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 2852, i32 3}
!200 = !{ptr @vmxnet3_alloc_pci_resources._entry.92, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @vmxnet3_alloc_pci_resources._entry_ptr.94, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.96, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 2863, i32 3}
!204 = !{ptr @vmxnet3_alloc_pci_resources._entry.95, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @vmxnet3_alloc_pci_resources._entry_ptr.97, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.99, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 2872, i32 3}
!208 = !{ptr @vmxnet3_alloc_pci_resources._entry.98, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @vmxnet3_alloc_pci_resources._entry_ptr.100, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3288, i32 9}
!212 = !{ptr @.str.102, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3298, i32 3}
!214 = !{ptr @.str.103, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @vmxnet3_alloc_intr_resources._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @vmxnet3_alloc_intr_resources._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.105, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3315, i32 2}
!219 = !{ptr @vmxnet3_alloc_intr_resources._entry.104, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @vmxnet3_alloc_intr_resources._entry_ptr.106, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.107, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3220, i32 3}
!223 = !{ptr @.str.108, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @vmxnet3_acquire_msix_vectors._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @vmxnet3_acquire_msix_vectors._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.110, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3231, i32 3}
!228 = !{ptr @vmxnet3_acquire_msix_vectors._entry.109, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @vmxnet3_acquire_msix_vectors._entry_ptr.111, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.112, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3361, i32 34}
!232 = !{ptr @.str.113, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3366, i32 32}
!234 = !{ptr @vmxnet3_rq_rx_complete.rxprod_reg, !235, !"rxprod_reg", i1 false, i1 false}
!235 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 1346, i32 19}
!236 = !{ptr @.str.114, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 1412, i32 5}
!238 = !{ptr @.str.115, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @vmxnet3_rq_rx_complete.__UNIQUE_ID_ddebug511, !237, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!240 = distinct !{null, !241, !"__already_done", i1 false, i1 false}
!241 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 1512, i32 5}
!242 = distinct !{null, !243, !"__already_done", i1 false, i1 false}
!243 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 1231, i32 4}
!244 = distinct !{null, !245, !"__already_done", i1 false, i1 false}
!245 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 1234, i32 4}
!246 = distinct !{null, !247, !"__already_done", i1 false, i1 false}
!247 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 1240, i32 4}
!248 = distinct !{null, !249, !"__already_done", i1 false, i1 false}
!249 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 1243, i32 4}
!250 = !{ptr @vmxnet3_pm_ops, !251, !"vmxnet3_pm_ops", i1 false, i1 false}
!251 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3969, i32 32}
!252 = distinct !{null, !253, !"__warned", i1 false, i1 false}
!253 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3853, i32 9}
!254 = !{ptr @.str.119, !253, !"<string literal>", i1 false, i1 false}
!255 = distinct !{null, !256, !"__warned", i1 false, i1 false}
!256 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!257 = !{ptr @.str.120, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.121, !256, !"<string literal>", i1 false, i1 false}
!259 = distinct !{null, !260, !"__warned", i1 false, i1 false}
!260 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!261 = !{ptr @.str.122, !260, !"<string literal>", i1 false, i1 false}
!262 = distinct !{null, !263, !"__warned", i1 false, i1 false}
!263 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!264 = !{ptr @.str.123, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.124, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/vmxnet3/vmxnet3_drv.c", i32 3960, i32 7}
!267 = !{!"sp"}
!268 = !{i32 1, !"wchar_size", i32 2}
!269 = !{i32 1, !"min_enum_size", i32 4}
!270 = !{i32 8, !"branch-target-enforcement", i32 0}
!271 = !{i32 8, !"sign-return-address", i32 0}
!272 = !{i32 8, !"sign-return-address-all", i32 0}
!273 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!274 = !{i32 7, !"uwtable", i32 1}
!275 = !{i32 7, !"frame-pointer", i32 2}
!276 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!277 = !{!"branch_weights", i32 2000, i32 1}
!278 = !{i64 2158117929, i64 2158118428, i64 2158117966, i64 2158118022, i64 2158118056, i64 2158118080, i64 2158118121, i64 2158118142, i64 2158118170, i64 2158118204}
!279 = !{i64 2149059924, i64 2149059929, i64 2149059942, i64 2149059986, i64 2149060020, i64 2149060041}
!280 = !{!"branch_weights", i32 1, i32 2000}
!281 = !{i64 2158146556, i64 2158147055, i64 2158146593, i64 2158146649, i64 2158146683, i64 2158146707, i64 2158146748, i64 2158146769, i64 2158146797, i64 2158146831}
!282 = !{i8 0, i8 2}
!283 = !{i64 2158167915}
!284 = !{i64 6362007}
!285 = !{i64 2158168446}
!286 = !{i64 2158160085}
!287 = !{i64 2158160823}
!288 = !{i64 2158161885}
!289 = !{i64 6362425}
!290 = !{i64 2158162810}
!291 = !{i64 2158164764}
!292 = !{i64 2158165285}
!293 = !{i64 2158153438}
!294 = !{i64 2158154369}
!295 = !{i64 2158154730}
!296 = !{i64 2158155373}
!297 = !{i64 2158156304}
!298 = !{i64 2158163228}
!299 = !{i64 2158164001}
!300 = !{i64 2158003400}
!301 = !{i64 2158141920}
!302 = !{i64 2158142573}
!303 = !{i64 2158143239}
!304 = !{i64 2158005647}
!305 = !{i64 2158006560}
!306 = !{i64 2158129441, i64 2158129940, i64 2158129478, i64 2158129534, i64 2158129568, i64 2158129592, i64 2158129633, i64 2158129654, i64 2158129682, i64 2158129716}
!307 = !{i64 2158131096, i64 2158131595, i64 2158131133, i64 2158131189, i64 2158131223, i64 2158131247, i64 2158131288, i64 2158131309, i64 2158131337, i64 2158131371}
!308 = !{i64 2158132619, i64 2158133118, i64 2158132656, i64 2158132712, i64 2158132746, i64 2158132770, i64 2158132811, i64 2158132832, i64 2158132860, i64 2158132894}
!309 = !{i64 2158166212}
!310 = !{i64 2158167325}
!311 = !{i64 2158003963}
!312 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!313 = !{i64 2158012814, i64 2158013312, i64 2158012851, i64 2158012907, i64 2158012941, i64 2158012965, i64 2158013006, i64 2158013027, i64 2158013055, i64 2158013089}
!314 = !{i64 2158020628, i64 2158021126, i64 2158020665, i64 2158020721, i64 2158020755, i64 2158020779, i64 2158020820, i64 2158020841, i64 2158020869, i64 2158020903}
!315 = !{i64 2158022450, i64 2158022948, i64 2158022487, i64 2158022543, i64 2158022577, i64 2158022601, i64 2158022642, i64 2158022663, i64 2158022691, i64 2158022725}
!316 = !{i64 2158188339, i64 2158188838, i64 2158188376, i64 2158188432, i64 2158188466, i64 2158188490, i64 2158188531, i64 2158188552, i64 2158188580, i64 2158188614}
!317 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!318 = !{i64 2158025352, i64 2158025850, i64 2158025389, i64 2158025445, i64 2158025479, i64 2158025503, i64 2158025544, i64 2158025565, i64 2158025593, i64 2158025627}
!319 = !{i64 2153622609, i64 2153623092, i64 2153622646, i64 2153622702, i64 2153622736, i64 2153622760, i64 2153622801, i64 2153622822, i64 2153622850, i64 2153622884}
!320 = !{i64 2148535023}
!321 = !{i64 2148449732, i64 2148449764, i64 2148449793, i64 2148449827, i64 2148449858, i64 2148449881}
!322 = !{i64 2148535252}
!323 = !{i64 2158030734, i64 2158031232, i64 2158030771, i64 2158030827, i64 2158030861, i64 2158030885, i64 2158030926, i64 2158030947, i64 2158030975, i64 2158031009}
!324 = !{i64 2158126982}
!325 = !{i64 2158019808}
!326 = !{i64 2158014520, i64 2158015018, i64 2158014557, i64 2158014613, i64 2158014647, i64 2158014671, i64 2158014712, i64 2158014733, i64 2158014761, i64 2158014795}
!327 = !{i64 2158016459, i64 2158016957, i64 2158016496, i64 2158016552, i64 2158016586, i64 2158016610, i64 2158016651, i64 2158016672, i64 2158016700, i64 2158016734}
!328 = !{i64 2158018105, i64 2158018603, i64 2158018142, i64 2158018198, i64 2158018232, i64 2158018256, i64 2158018297, i64 2158018318, i64 2158018346, i64 2158018380}
!329 = !{i64 2158004708}
!330 = !{i64 2158007477}
!331 = !{i64 2158218773}
!332 = !{i64 2158219100}
!333 = !{i64 2158219652}
!334 = !{i64 2158220204}
!335 = !{i64 2158220756}
!336 = !{i64 2158221308}
!337 = !{i64 2158221860}
!338 = !{i64 2158226883}
!339 = !{i64 2158227196}
!340 = !{i64 2158229995}
!341 = !{i64 2158230941}
!342 = !{i32 0, i32 33}
!343 = !{i64 2158194125}
!344 = !{i64 2158194779}
!345 = !{i64 2158176394, i64 2158176893, i64 2158176431, i64 2158176487, i64 2158176521, i64 2158176545, i64 2158176586, i64 2158176607, i64 2158176635, i64 2158176669}
!346 = !{i64 2158252674}
!347 = !{i64 2158253620}
!348 = !{i64 2158204309, i64 2158204808, i64 2158204346, i64 2158204402, i64 2158204436, i64 2158204460, i64 2158204501, i64 2158204522, i64 2158204550, i64 2158204584}
!349 = !{i64 2158259046}
!350 = !{i64 2158186686}
!351 = !{i64 2158187635}
!352 = !{i64 2158071606, i64 2158072105, i64 2158071643, i64 2158071699, i64 2158071733, i64 2158071757, i64 2158071798, i64 2158071819, i64 2158071847, i64 2158071881}
!353 = !{i64 2158135150}
!354 = !{i64 2158136366}
!355 = !{i64 2158199066}
!356 = !{i64 2158199994}
!357 = !{!"auto-init"}
!358 = !{i64 6705270, i64 6705311, i64 6705356}
!359 = !{i64 6704168}
!360 = !{i64 2158066589}
!361 = !{i64 2158070894}
!362 = !{i64 2158034564, i64 2158035062, i64 2158034601, i64 2158034657, i64 2158034691, i64 2158034715, i64 2158034756, i64 2158034777, i64 2158034805, i64 2158034839}
!363 = !{i64 2158039647, i64 2158040145, i64 2158039684, i64 2158039740, i64 2158039774, i64 2158039798, i64 2158039839, i64 2158039860, i64 2158039888, i64 2158039922}
!364 = !{i64 2158048723, i64 2158049221, i64 2158048760, i64 2158048816, i64 2158048850, i64 2158048874, i64 2158048915, i64 2158048936, i64 2158048964, i64 2158048998}
!365 = !{i64 2158087175}
!366 = !{i64 2158087689, i64 2158088188, i64 2158087726, i64 2158087782, i64 2158087816, i64 2158087840, i64 2158087881, i64 2158087902, i64 2158087930, i64 2158087964}
!367 = !{i64 2158089676, i64 2158090175, i64 2158089713, i64 2158089769, i64 2158089803, i64 2158089827, i64 2158089868, i64 2158089889, i64 2158089917, i64 2158089951}
!368 = !{i64 2158091501, i64 2158092000, i64 2158091538, i64 2158091594, i64 2158091628, i64 2158091652, i64 2158091693, i64 2158091714, i64 2158091742, i64 2158091776}
!369 = !{i64 2158093172, i64 2158093671, i64 2158093209, i64 2158093265, i64 2158093299, i64 2158093323, i64 2158093364, i64 2158093385, i64 2158093413, i64 2158093447}
!370 = !{i64 2158094897, i64 2158095396, i64 2158094934, i64 2158094990, i64 2158095024, i64 2158095048, i64 2158095089, i64 2158095110, i64 2158095138, i64 2158095172}
!371 = !{i64 2158096585, i64 2158097084, i64 2158096622, i64 2158096678, i64 2158096712, i64 2158096736, i64 2158096777, i64 2158096798, i64 2158096826, i64 2158096860}
!372 = !{i64 2158104805, i64 2158105304, i64 2158104842, i64 2158104898, i64 2158104932, i64 2158104956, i64 2158104997, i64 2158105018, i64 2158105046, i64 2158105080}
!373 = !{i64 2158108228, i64 2158108727, i64 2158108265, i64 2158108321, i64 2158108355, i64 2158108379, i64 2158108420, i64 2158108441, i64 2158108469, i64 2158108503}
!374 = !{i64 2158109901, i64 2158110400, i64 2158109938, i64 2158109994, i64 2158110028, i64 2158110052, i64 2158110093, i64 2158110114, i64 2158110142, i64 2158110176}
!375 = !{i64 2158111534, i64 2158112033, i64 2158111571, i64 2158111627, i64 2158111661, i64 2158111685, i64 2158111726, i64 2158111747, i64 2158111775, i64 2158111809}
!376 = !{i64 2158032773, i64 2158033271, i64 2158032810, i64 2158032866, i64 2158032900, i64 2158032924, i64 2158032965, i64 2158032986, i64 2158033014, i64 2158033048}
!377 = !{i64 2158081885, i64 2158082384, i64 2158081922, i64 2158081978, i64 2158082012, i64 2158082036, i64 2158082077, i64 2158082098, i64 2158082126, i64 2158082160}
!378 = !{i64 2158083564, i64 2158084063, i64 2158083601, i64 2158083657, i64 2158083691, i64 2158083715, i64 2158083756, i64 2158083777, i64 2158083805, i64 2158083839}
!379 = !{i64 2158085621, i64 2158086120, i64 2158085658, i64 2158085714, i64 2158085748, i64 2158085772, i64 2158085813, i64 2158085834, i64 2158085862, i64 2158085896}
!380 = !{i64 2158114485}
!381 = !{i64 2158114990, i64 2158115489, i64 2158115027, i64 2158115083, i64 2158115117, i64 2158115141, i64 2158115182, i64 2158115203, i64 2158115231, i64 2158115265}
!382 = !{i64 2158116678}
!383 = !{i64 2149462706}
!384 = !{i64 2149462972}
!385 = !{i64 2158270520}
!386 = !{i64 2158272877}
