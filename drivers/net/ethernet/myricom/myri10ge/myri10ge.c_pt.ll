; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/myricom/myri10ge/myri10ge.c_pt.bc'
source_filename = "../drivers/net/ethernet/myricom/myri10ge/myri10ge.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.164 }
%union.anon.164 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.165 }
%struct.atomic_t = type { i32 }
%union.anon.165 = type { i32 }
%struct.myri10ge_cmd = type { i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.192, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.192 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.170, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.191, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.170 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.191 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.msix_entry = type { i32, i16 }
%struct.myri10ge_slice_state = type { %struct.myri10ge_tx_buf, %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf, %struct.myri10ge_rx_done, ptr, %struct.napi_struct, ptr, %struct.myri10ge_slice_netstats, ptr, ptr, i32, i32, i32, i32, i32, [32 x i8], [88 x i8] }
%struct.myri10ge_tx_buf = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, [100 x i8], i32, i32, i32, i32, [112 x i8], i32, i32, i32, i32, [112 x i8] }
%struct.myri10ge_rx_buf = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.myri10ge_rx_done = type { ptr, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.myri10ge_slice_netstats = type { i32, i32, i32, i32, i32, i32 }
%struct.myri10ge_priv = type { ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, %struct.wait_queue_head, %struct.work_struct, %struct.timer_list, i32, i32, i32, i8, ptr, [256 x i8], ptr, [128 x i8], i32, i32, i32, i32, [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.mcp_irq_data = type { [1 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.163, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.163 = type { %struct.atomic_t }
%struct.mcp_cmd = type { i32, i32, i32, i32, %struct.mcp_dma_addr, [40 x i8] }
%struct.mcp_dma_addr = type { i32, i32 }
%struct.mcp_cmd_response = type { i32, i32 }
%struct.mcp_gen_header = type { i32, i32, [128 x i8], i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.mcp_slot = type { i16, i16 }
%struct.myri10ge_rx_buffer_state = type { ptr, i32, i32, i32 }
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
%struct.mcp_kreq_ether_recv = type { i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.60 = type { i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.myri10ge_tx_buffer_state = type { ptr, i32, i32, i32 }
%struct.mcp_kreq_ether_send = type { i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.186, i32 }
%struct.anon.186 = type { [3 x i32], [3 x i32], [3 x i32] }

@__UNIQUE_ID_description595 = internal constant [48 x i8] c"myri10ge.description=Myricom 10G driver (10GbE)\00", section ".modinfo", align 1
@__UNIQUE_ID_author596 = internal constant [42 x i8] c"myri10ge.author=Maintainer: help@myri.com\00", section ".modinfo", align 1
@__UNIQUE_ID_version597 = internal constant [29 x i8] c"myri10ge.version=1.5.3-1.534\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"myri10ge\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"1.5.3-1.534\00", [20 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file598 = internal constant [61 x i8] c"myri10ge.file=drivers/net/ethernet/myricom/myri10ge/myri10ge\00", section ".modinfo", align 1
@__UNIQUE_ID_license599 = internal constant [30 x i8] c"myri10ge.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware600 = internal constant [40 x i8] c"myri10ge.firmware=myri10ge_ethp_z8e.dat\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware601 = internal constant [39 x i8] c"myri10ge.firmware=myri10ge_eth_z8e.dat\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware602 = internal constant [44 x i8] c"myri10ge.firmware=myri10ge_rss_ethp_z8e.dat\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware603 = internal constant [43 x i8] c"myri10ge.firmware=myri10ge_rss_eth_z8e.dat\00", section ".modinfo", align 1
@__param_str_myri10ge_fw_name = internal constant [26 x i8] c"myri10ge.myri10ge_fw_name\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@myri10ge_fw_name = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_myri10ge_fw_name = internal constant %struct.kernel_param { ptr @__param_str_myri10ge_fw_name, ptr null, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @myri10ge_fw_name } }, section "__param", align 4
@__UNIQUE_ID_myri10ge_fw_nametype604 = internal constant [41 x i8] c"myri10ge.parmtype=myri10ge_fw_name:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_myri10ge_fw_name605 = internal constant [51 x i8] c"myri10ge.parm=myri10ge_fw_name:Firmware image name\00", section ".modinfo", align 1
@__param_str_myri10ge_fw_names = internal constant [27 x i8] c"myri10ge.myri10ge_fw_names\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_myri10ge_fw_names = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_charp, ptr @myri10ge_fw_names }, align 4
@__param_myri10ge_fw_names = internal constant %struct.kernel_param { ptr @__param_str_myri10ge_fw_names, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @__param_arr_myri10ge_fw_names } }, section "__param", align 4
@__UNIQUE_ID_myri10ge_fw_namestype606 = internal constant [51 x i8] c"myri10ge.parmtype=myri10ge_fw_names:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_myri10ge_fw_names607 = internal constant [63 x i8] c"myri10ge.parm=myri10ge_fw_names:Firmware image names per board\00", section ".modinfo", align 1
@__param_str_myri10ge_ecrc_enable = internal constant [30 x i8] c"myri10ge.myri10ge_ecrc_enable\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@myri10ge_ecrc_enable = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_myri10ge_ecrc_enable = internal constant %struct.kernel_param { ptr @__param_str_myri10ge_ecrc_enable, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @myri10ge_ecrc_enable } }, section "__param", align 4
@__UNIQUE_ID_myri10ge_ecrc_enabletype608 = internal constant [43 x i8] c"myri10ge.parmtype=myri10ge_ecrc_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_myri10ge_ecrc_enable609 = internal constant [64 x i8] c"myri10ge.parm=myri10ge_ecrc_enable:Enable Extended CRC on PCI-E\00", section ".modinfo", align 1
@__param_str_myri10ge_small_bytes = internal constant [30 x i8] c"myri10ge.myri10ge_small_bytes\00", align 1
@myri10ge_small_bytes = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_myri10ge_small_bytes = internal constant %struct.kernel_param { ptr @__param_str_myri10ge_small_bytes, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @myri10ge_small_bytes } }, section "__param", align 4
@__UNIQUE_ID_myri10ge_small_bytestype610 = internal constant [43 x i8] c"myri10ge.parmtype=myri10ge_small_bytes:int\00", section ".modinfo", align 1
@__UNIQUE_ID_myri10ge_small_bytes611 = internal constant [62 x i8] c"myri10ge.parm=myri10ge_small_bytes:Threshold of small packets\00", section ".modinfo", align 1
@__param_str_myri10ge_msi = internal constant [22 x i8] c"myri10ge.myri10ge_msi\00", align 1
@myri10ge_msi = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_myri10ge_msi = internal constant %struct.kernel_param { ptr @__param_str_myri10ge_msi, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @myri10ge_msi } }, section "__param", align 4
@__UNIQUE_ID_myri10ge_msitype612 = internal constant [35 x i8] c"myri10ge.parmtype=myri10ge_msi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_myri10ge_msi613 = internal constant [63 x i8] c"myri10ge.parm=myri10ge_msi:Enable Message Signalled Interrupts\00", section ".modinfo", align 1
@__param_str_myri10ge_intr_coal_delay = internal constant [34 x i8] c"myri10ge.myri10ge_intr_coal_delay\00", align 1
@myri10ge_intr_coal_delay = internal global { i32, [28 x i8] } { i32 75, [28 x i8] zeroinitializer }, align 32
@__param_myri10ge_intr_coal_delay = internal constant %struct.kernel_param { ptr @__param_str_myri10ge_intr_coal_delay, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @myri10ge_intr_coal_delay } }, section "__param", align 4
@__UNIQUE_ID_myri10ge_intr_coal_delaytype614 = internal constant [47 x i8] c"myri10ge.parmtype=myri10ge_intr_coal_delay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_myri10ge_intr_coal_delay615 = internal constant [66 x i8] c"myri10ge.parm=myri10ge_intr_coal_delay:Interrupt coalescing delay\00", section ".modinfo", align 1
@__param_str_myri10ge_flow_control = internal constant [31 x i8] c"myri10ge.myri10ge_flow_control\00", align 1
@myri10ge_flow_control = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_myri10ge_flow_control = internal constant %struct.kernel_param { ptr @__param_str_myri10ge_flow_control, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @myri10ge_flow_control } }, section "__param", align 4
@__UNIQUE_ID_myri10ge_flow_controltype616 = internal constant [44 x i8] c"myri10ge.parmtype=myri10ge_flow_control:int\00", section ".modinfo", align 1
@__UNIQUE_ID_myri10ge_flow_control617 = internal constant [52 x i8] c"myri10ge.parm=myri10ge_flow_control:Pause parameter\00", section ".modinfo", align 1
@__param_str_myri10ge_deassert_wait = internal constant [32 x i8] c"myri10ge.myri10ge_deassert_wait\00", align 1
@myri10ge_deassert_wait = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_myri10ge_deassert_wait = internal constant %struct.kernel_param { ptr @__param_str_myri10ge_deassert_wait, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @myri10ge_deassert_wait } }, section "__param", align 4
@__UNIQUE_ID_myri10ge_deassert_waittype618 = internal constant [45 x i8] c"myri10ge.parmtype=myri10ge_deassert_wait:int\00", section ".modinfo", align 1
@__UNIQUE_ID_myri10ge_deassert_wait619 = internal constant [77 x i8] c"myri10ge.parm=myri10ge_deassert_wait:Wait when deasserting legacy interrupts\00", section ".modinfo", align 1
@__param_str_myri10ge_force_firmware = internal constant [33 x i8] c"myri10ge.myri10ge_force_firmware\00", align 1
@myri10ge_force_firmware = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_myri10ge_force_firmware = internal constant %struct.kernel_param { ptr @__param_str_myri10ge_force_firmware, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @myri10ge_force_firmware } }, section "__param", align 4
@__UNIQUE_ID_myri10ge_force_firmwaretype620 = internal constant [46 x i8] c"myri10ge.parmtype=myri10ge_force_firmware:int\00", section ".modinfo", align 1
@__UNIQUE_ID_myri10ge_force_firmware621 = internal constant [83 x i8] c"myri10ge.parm=myri10ge_force_firmware:Force firmware to assume aligned completions\00", section ".modinfo", align 1
@__param_str_myri10ge_initial_mtu = internal constant [30 x i8] c"myri10ge.myri10ge_initial_mtu\00", align 1
@myri10ge_initial_mtu = internal global { i32, [28 x i8] } { i32 9000, [28 x i8] zeroinitializer }, align 32
@__param_myri10ge_initial_mtu = internal constant %struct.kernel_param { ptr @__param_str_myri10ge_initial_mtu, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @myri10ge_initial_mtu } }, section "__param", align 4
@__UNIQUE_ID_myri10ge_initial_mtutype622 = internal constant [43 x i8] c"myri10ge.parmtype=myri10ge_initial_mtu:int\00", section ".modinfo", align 1
@__UNIQUE_ID_myri10ge_initial_mtu623 = internal constant [47 x i8] c"myri10ge.parm=myri10ge_initial_mtu:Initial MTU\00", section ".modinfo", align 1
@__param_str_myri10ge_napi_weight = internal constant [30 x i8] c"myri10ge.myri10ge_napi_weight\00", align 1
@myri10ge_napi_weight = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_myri10ge_napi_weight = internal constant %struct.kernel_param { ptr @__param_str_myri10ge_napi_weight, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @myri10ge_napi_weight } }, section "__param", align 4
@__UNIQUE_ID_myri10ge_napi_weighttype624 = internal constant [43 x i8] c"myri10ge.parmtype=myri10ge_napi_weight:int\00", section ".modinfo", align 1
@__UNIQUE_ID_myri10ge_napi_weight625 = internal constant [51 x i8] c"myri10ge.parm=myri10ge_napi_weight:Set NAPI weight\00", section ".modinfo", align 1
@__param_str_myri10ge_watchdog_timeout = internal constant [35 x i8] c"myri10ge.myri10ge_watchdog_timeout\00", align 1
@myri10ge_watchdog_timeout = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_myri10ge_watchdog_timeout = internal constant %struct.kernel_param { ptr @__param_str_myri10ge_watchdog_timeout, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @myri10ge_watchdog_timeout } }, section "__param", align 4
@__UNIQUE_ID_myri10ge_watchdog_timeouttype626 = internal constant [48 x i8] c"myri10ge.parmtype=myri10ge_watchdog_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_myri10ge_watchdog_timeout627 = internal constant [61 x i8] c"myri10ge.parm=myri10ge_watchdog_timeout:Set watchdog timeout\00", section ".modinfo", align 1
@__param_str_myri10ge_max_irq_loops = internal constant [32 x i8] c"myri10ge.myri10ge_max_irq_loops\00", align 1
@myri10ge_max_irq_loops = internal global { i32, [28 x i8] } { i32 1048576, [28 x i8] zeroinitializer }, align 32
@__param_myri10ge_max_irq_loops = internal constant %struct.kernel_param { ptr @__param_str_myri10ge_max_irq_loops, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @myri10ge_max_irq_loops } }, section "__param", align 4
@__UNIQUE_ID_myri10ge_max_irq_loopstype628 = internal constant [45 x i8] c"myri10ge.parmtype=myri10ge_max_irq_loops:int\00", section ".modinfo", align 1
@__UNIQUE_ID_myri10ge_max_irq_loops629 = internal constant [78 x i8] c"myri10ge.parm=myri10ge_max_irq_loops:Set stuck legacy IRQ detection threshold\00", section ".modinfo", align 1
@__param_str_myri10ge_debug = internal constant [24 x i8] c"myri10ge.myri10ge_debug\00", align 1
@myri10ge_debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_myri10ge_debug = internal constant %struct.kernel_param { ptr @__param_str_myri10ge_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.164 { ptr @myri10ge_debug } }, section "__param", align 4
@__UNIQUE_ID_myri10ge_debugtype630 = internal constant [37 x i8] c"myri10ge.parmtype=myri10ge_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_myri10ge_debug631 = internal constant [61 x i8] c"myri10ge.parm=myri10ge_debug:Debug level (0=none,...,16=all)\00", section ".modinfo", align 1
@__param_str_myri10ge_fill_thresh = internal constant [30 x i8] c"myri10ge.myri10ge_fill_thresh\00", align 1
@myri10ge_fill_thresh = internal global { i32, [28 x i8] } { i32 256, [28 x i8] zeroinitializer }, align 32
@__param_myri10ge_fill_thresh = internal constant %struct.kernel_param { ptr @__param_str_myri10ge_fill_thresh, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @myri10ge_fill_thresh } }, section "__param", align 4
@__UNIQUE_ID_myri10ge_fill_threshtype632 = internal constant [43 x i8] c"myri10ge.parmtype=myri10ge_fill_thresh:int\00", section ".modinfo", align 1
@__UNIQUE_ID_myri10ge_fill_thresh633 = internal constant [68 x i8] c"myri10ge.parm=myri10ge_fill_thresh:Number of empty rx slots allowed\00", section ".modinfo", align 1
@__param_str_myri10ge_max_slices = internal constant [29 x i8] c"myri10ge.myri10ge_max_slices\00", align 1
@myri10ge_max_slices = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_myri10ge_max_slices = internal constant %struct.kernel_param { ptr @__param_str_myri10ge_max_slices, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @myri10ge_max_slices } }, section "__param", align 4
@__UNIQUE_ID_myri10ge_max_slicestype634 = internal constant [42 x i8] c"myri10ge.parmtype=myri10ge_max_slices:int\00", section ".modinfo", align 1
@__UNIQUE_ID_myri10ge_max_slices635 = internal constant [51 x i8] c"myri10ge.parm=myri10ge_max_slices:Max tx/rx queues\00", section ".modinfo", align 1
@__param_str_myri10ge_rss_hash = internal constant [27 x i8] c"myri10ge.myri10ge_rss_hash\00", align 1
@myri10ge_rss_hash = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_myri10ge_rss_hash = internal constant %struct.kernel_param { ptr @__param_str_myri10ge_rss_hash, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @myri10ge_rss_hash } }, section "__param", align 4
@__UNIQUE_ID_myri10ge_rss_hashtype636 = internal constant [40 x i8] c"myri10ge.parmtype=myri10ge_rss_hash:int\00", section ".modinfo", align 1
@__UNIQUE_ID_myri10ge_rss_hash637 = internal constant [58 x i8] c"myri10ge.parm=myri10ge_rss_hash:Type of RSS hashing to do\00", section ".modinfo", align 1
@__param_str_myri10ge_dca = internal constant [22 x i8] c"myri10ge.myri10ge_dca\00", align 1
@myri10ge_dca = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_myri10ge_dca = internal constant %struct.kernel_param { ptr @__param_str_myri10ge_dca, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @myri10ge_dca } }, section "__param", align 4
@__UNIQUE_ID_myri10ge_dcatype638 = internal constant [35 x i8] c"myri10ge.parmtype=myri10ge_dca:int\00", section ".modinfo", align 1
@__UNIQUE_ID_myri10ge_dca639 = internal constant [50 x i8] c"myri10ge.parm=myri10ge_dca:Enable DCA if possible\00", section ".modinfo", align 1
@__initcall__kmod_myri10ge__643_4041_myri10ge_init_module6 = internal global ptr @myri10ge_init_module, section ".initcall6.init", align 4
@myri10ge_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @myri10ge_pci_tbl, ptr @myri10ge_probe, ptr @myri10ge_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @myri10ge_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_myri10ge_cleanup_module = internal global ptr @myri10ge_cleanup_module, section ".exitcall.exit", align 4
@myri10ge_fw_names = internal global { [8 x ptr], [32 x i8] } zeroinitializer, align 32
@myri10ge_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 4025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016myri10ge: Version %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"myri10ge_init_module\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/myricom/myri10ge/myri10ge.c\00", [47 x i8] zeroinitializer }, align 32
@myri10ge_init_module._entry_ptr = internal global ptr @myri10ge_init_module._entry, section ".printk_index", align 4
@myri10ge_init_module._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 4029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013myri10ge: Illegal rssh hash type %d, defaulting to source port\0A\00", [62 x i8] zeroinitializer }, align 32
@myri10ge_init_module._entry_ptr.8 = internal global ptr @myri10ge_init_module._entry.6, section ".printk_index", align 4
@myri10ge_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5313, i32 8, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5313, i32 9, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@myri10ge_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @myri10ge_suspend, ptr @myri10ge_resume, ptr @myri10ge_suspend, ptr @myri10ge_resume, ptr @myri10ge_suspend, ptr @myri10ge_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@myri10ge_probe.board_number = internal global { i32, [28 x i8] } zeroinitializer, align 32
@myri10ge_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&mgp->down_wq\00", [18 x i8] zeroinitializer }, align 32
@myri10ge_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 3764, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pci_enable_device call failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"myri10ge_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@myri10ge_probe._entry_ptr = internal global ptr @myri10ge_probe._entry, section ".printk_index", align 4
@myri10ge_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.5, i32 3778, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error %d writing PCI_EXP_DEVCTL\0A\00", [63 x i8] zeroinitializer }, align 32
@myri10ge_probe._entry_ptr.16 = internal global ptr @myri10ge_probe._entry.14, section ".printk_index", align 4
@myri10ge_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.5, i32 3786, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error %d setting DMA mask\0A\00", [37 x i8] zeroinitializer }, align 32
@myri10ge_probe._entry_ptr.19 = internal global ptr @myri10ge_probe._entry.17, section ".printk_index", align 4
@myri10ge_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.11, ptr @.str.5, i32 3802, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ioremap failed for %ld bytes at 0x%lx\0A\00", [57 x i8] zeroinitializer }, align 32
@myri10ge_probe._entry_ptr.22 = internal global ptr @myri10ge_probe._entry.20, section ".printk_index", align 4
@myri10ge_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.11, ptr @.str.5, i32 3814, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"invalid sram_size %dB or board span %ldB\0A\00", [54 x i8] zeroinitializer }, align 32
@myri10ge_probe._entry_ptr.25 = internal global ptr @myri10ge_probe._entry.23, section ".printk_index", align 4
@myri10ge_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.11, ptr @.str.5, i32 3831, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to load firmware\0A\00", [39 x i8] zeroinitializer }, align 32
@myri10ge_probe._entry_ptr.28 = internal global ptr @myri10ge_probe._entry.26, section ".printk_index", align 4
@myri10ge_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.11, ptr @.str.5, i32 3837, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to alloc slice state\0A\00", [35 x i8] zeroinitializer }, align 32
@myri10ge_probe._entry_ptr.31 = internal global ptr @myri10ge_probe._entry.29, section ".printk_index", align 4
@myri10ge_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.11, ptr @.str.5, i32 3844, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"failed reset\0A\00", [18 x i8] zeroinitializer }, align 32
@myri10ge_probe._entry_ptr.34 = internal global ptr @myri10ge_probe._entry.32, section ".printk_index", align 4
@myri10ge_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @myri10ge_open, ptr @myri10ge_close, ptr @myri10ge_xmit, ptr null, ptr null, ptr null, ptr @myri10ge_set_multicast_list, ptr @myri10ge_set_mac_address, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @myri10ge_change_mtu, ptr null, ptr null, ptr @myri10ge_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@myri10ge_probe.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&mgp->watchdog_timer)\00", [41 x i8] zeroinitializer }, align 32
@myri10ge_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 1, i32 0, ptr @myri10ge_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @myri10ge_get_msglevel, ptr @myri10ge_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @myri10ge_get_coalesce, ptr @myri10ge_set_coalesce, ptr @myri10ge_get_ringparam, ptr null, ptr null, ptr @myri10ge_get_pauseparam, ptr @myri10ge_set_pauseparam, ptr null, ptr @myri10ge_get_strings, ptr @myri10ge_phys_id, ptr @myri10ge_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @myri10ge_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @myri10ge_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@myri10ge_probe.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&mgp->watchdog_work)\00", [57 x i8] zeroinitializer }, align 32
@myri10ge_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.11, ptr @.str.5, i32 3895, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"register_netdev failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@myri10ge_probe._entry_ptr.41 = internal global ptr @myri10ge_probe._entry.39, section ".printk_index", align 4
@myri10ge_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.11, ptr @.str.5, i32 3901, ptr @.str.44, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%d MSI-X IRQs, tx bndry %d, fw %s, MTRR %s, WC Enabled\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@myri10ge_probe._entry_ptr.45 = internal global ptr @myri10ge_probe._entry.42, section ".printk_index", align 4
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@myri10ge_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.11, ptr @.str.5, i32 3906, ptr @.str.44, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s IRQ %d, tx bndry %d, fw %s, MTRR %s, WC Enabled\0A\00", [44 x i8] zeroinitializer }, align 32
@myri10ge_probe._entry_ptr.50 = internal global ptr @myri10ge_probe._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xPIC\00", [27 x i8] zeroinitializer }, align 32
@myri10ge_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.11, ptr @.str.5, i32 3924, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"myri10ge_probe() failed: MAC=%s, SN=%ld\0A\00", [55 x i8] zeroinitializer }, align 32
@myri10ge_probe._entry_ptr.55 = internal global ptr @myri10ge_probe._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MAC=\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PC=\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SN=\00", [28 x i8] zeroinitializer }, align 32
@myri10ge_read_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.5, i32 498, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to parse eeprom_strings\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"myri10ge_read_mac_addr\00", [41 x i8] zeroinitializer }, align 32
@myri10ge_read_mac_addr._entry_ptr = internal global ptr @myri10ge_read_mac_addr._entry, section ".printk_index", align 4
@myri10ge_select_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.5, i32 3207, ptr @.str.44, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PCIE x%d Link\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"myri10ge_select_firmware\00", [39 x i8] zeroinitializer }, align 32
@myri10ge_select_firmware._entry_ptr = internal global ptr @myri10ge_select_firmware._entry, section ".printk_index", align 4
@myri10ge_select_firmware._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.5, i32 3216, ptr @.str.44, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Assuming aligned completions (forced)\0A\00", [57 x i8] zeroinitializer }, align 32
@myri10ge_select_firmware._entry_ptr.65 = internal global ptr @myri10ge_select_firmware._entry.63, section ".printk_index", align 4
@myri10ge_select_firmware._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.5, i32 3221, ptr @.str.44, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Assuming unaligned completions (forced)\0A\00", [55 x i8] zeroinitializer }, align 32
@myri10ge_select_firmware._entry_ptr.68 = internal global ptr @myri10ge_select_firmware._entry.66, section ".printk_index", align 4
@myri10ge_select_firmware._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.5, i32 3245, ptr @.str.44, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"overriding firmware to %s\0A\00", [37 x i8] zeroinitializer }, align 32
@myri10ge_select_firmware._entry_ptr.71 = internal global ptr @myri10ge_select_firmware._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"myri10ge_eth_z8e.dat\00", [43 x i8] zeroinitializer }, align 32
@myri10ge_firmware_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.5, i32 3149, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't read max read req size: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"myri10ge_firmware_probe\00", [40 x i8] zeroinitializer }, align 32
@myri10ge_firmware_probe._entry_ptr = internal global ptr @myri10ge_firmware_probe._entry, section ".printk_index", align 4
@myri10ge_firmware_probe._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.5, i32 3153, ptr @.str.77, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Max Read Request size != 4096 (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@myri10ge_firmware_probe._entry_ptr.78 = internal global ptr @myri10ge_firmware_probe._entry.75, section ".printk_index", align 4
@myri10ge_firmware_probe._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.74, ptr @.str.5, i32 3181, ptr @.str.77, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DMA test failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@myri10ge_firmware_probe._entry_ptr.81 = internal global ptr @myri10ge_firmware_probe._entry.79, section ".printk_index", align 4
@myri10ge_firmware_probe._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.74, ptr @.str.5, i32 3184, ptr @.str.77, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Falling back to ethp! Please install up to date fw\0A\00", [44 x i8] zeroinitializer }, align 32
@myri10ge_firmware_probe._entry_ptr.84 = internal global ptr @myri10ge_firmware_probe._entry.82, section ".printk_index", align 4
@myri10ge_enable_ecrc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.5, i32 3079, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to find root port to force ECRC\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"myri10ge_enable_ecrc\00", [43 x i8] zeroinitializer }, align 32
@myri10ge_enable_ecrc._entry_ptr = internal global ptr @myri10ge_enable_ecrc._entry, section ".printk_index", align 4
@myri10ge_enable_ecrc._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.5, i32 3088, ptr @.str.44, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Forcing ECRC on non-root port %s (enabling on root port %s)\0A\00", [35 x i8] zeroinitializer }, align 32
@myri10ge_enable_ecrc._entry_ptr.89 = internal global ptr @myri10ge_enable_ecrc._entry.87, section ".printk_index", align 4
@myri10ge_enable_ecrc._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.5, i32 3092, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Not enabling ECRC on non-root port %s\0A\00", [57 x i8] zeroinitializer }, align 32
@myri10ge_enable_ecrc._entry_ptr.92 = internal global ptr @myri10ge_enable_ecrc._entry.90, section ".printk_index", align 4
@myri10ge_enable_ecrc._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.86, ptr @.str.5, i32 3104, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed reading ext-conf-space of %s\0A\00", [59 x i8] zeroinitializer }, align 32
@myri10ge_enable_ecrc._entry_ptr.95 = internal global ptr @myri10ge_enable_ecrc._entry.93, section ".printk_index", align 4
@myri10ge_enable_ecrc._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.86, ptr @.str.5, i32 3106, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\09 pci=nommconf in use? or buggy/incomplete/absent ACPI MCFG attr?\0A\00", [61 x i8] zeroinitializer }, align 32
@myri10ge_enable_ecrc._entry_ptr.98 = internal global ptr @myri10ge_enable_ecrc._entry.96, section ".printk_index", align 4
@myri10ge_enable_ecrc._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.86, ptr @.str.5, i32 3114, ptr @.str.44, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Enabled ECRC on upstream bridge %s\0A\00", [60 x i8] zeroinitializer }, align 32
@myri10ge_enable_ecrc._entry_ptr.101 = internal global ptr @myri10ge_enable_ecrc._entry.99, section ".printk_index", align 4
@.str.102 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read/write\00", [21 x i8] zeroinitializer }, align 32
@myri10ge_dma_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.5, i32 909, ptr @.str.77, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DMA %s benchmark failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"myri10ge_dma_test\00", [46 x i8] zeroinitializer }, align 32
@myri10ge_dma_test._entry_ptr = internal global ptr @myri10ge_dma_test._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@myri10ge_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.5, i32 447, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"command %d failed, result = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"myri10ge_send_cmd\00", [46 x i8] zeroinitializer }, align 32
@myri10ge_send_cmd._entry_ptr = internal global ptr @myri10ge_send_cmd._entry, section ".printk_index", align 4
@myri10ge_send_cmd._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.5, i32 453, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"command %d timed out, result = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@myri10ge_send_cmd._entry_ptr.113 = internal global ptr @myri10ge_send_cmd._entry.111, section ".printk_index", align 4
@.str.114 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"myri10ge_ethp_z8e.dat\00", [42 x i8] zeroinitializer }, align 32
@myri10ge_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.5, i32 722, ptr @.str.77, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hotplug firmware loading failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"myri10ge_load_firmware\00", [41 x i8] zeroinitializer }, align 32
@myri10ge_load_firmware._entry_ptr = internal global ptr @myri10ge_load_firmware._entry, section ".printk_index", align 4
@myri10ge_load_firmware._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.5, i32 732, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to adopt running firmware\0A\00", [62 x i8] zeroinitializer }, align 32
@myri10ge_load_firmware._entry_ptr.120 = internal global ptr @myri10ge_load_firmware._entry.118, section ".printk_index", align 4
@myri10ge_load_firmware._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.117, ptr @.str.5, i32 736, ptr @.str.44, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Successfully adopted running firmware\0A\00", [57 x i8] zeroinitializer }, align 32
@myri10ge_load_firmware._entry_ptr.123 = internal global ptr @myri10ge_load_firmware._entry.121, section ".printk_index", align 4
@myri10ge_load_firmware._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.117, ptr @.str.5, i32 740, ptr @.str.77, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Using firmware currently running on NIC.  For optimal\0A\00", [41 x i8] zeroinitializer }, align 32
@myri10ge_load_firmware._entry_ptr.126 = internal global ptr @myri10ge_load_firmware._entry.124, section ".printk_index", align 4
@myri10ge_load_firmware._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.117, ptr @.str.5, i32 743, ptr @.str.77, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"performance consider loading optimized firmware\0A\00", [47 x i8] zeroinitializer }, align 32
@myri10ge_load_firmware._entry_ptr.129 = internal global ptr @myri10ge_load_firmware._entry.127, section ".printk_index", align 4
@myri10ge_load_firmware._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.117, ptr @.str.5, i32 744, ptr @.str.77, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"via hotplug\0A\00", [19 x i8] zeroinitializer }, align 32
@myri10ge_load_firmware._entry_ptr.132 = internal global ptr @myri10ge_load_firmware._entry.130, section ".printk_index", align 4
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adopted\00", [24 x i8] zeroinitializer }, align 32
@myri10ge_load_firmware._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.117, ptr @.str.5, i32 790, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"handoff failed\0A\00", [16 x i8] zeroinitializer }, align 32
@myri10ge_load_firmware._entry_ptr.136 = internal global ptr @myri10ge_load_firmware._entry.134, section ".printk_index", align 4
@myri10ge_load_hotplug_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.5, i32 584, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unable to load %s firmware image via hotplug\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"myri10ge_load_hotplug_firmware\00", [33 x i8] zeroinitializer }, align 32
@myri10ge_load_hotplug_firmware._entry_ptr = internal global ptr @myri10ge_load_hotplug_firmware._entry, section ".printk_index", align 4
@myri10ge_load_hotplug_firmware._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.5, i32 593, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Firmware size invalid:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@myri10ge_load_hotplug_firmware._entry_ptr.141 = internal global ptr @myri10ge_load_hotplug_firmware._entry.139, section ".printk_index", align 4
@myri10ge_load_hotplug_firmware._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.138, ptr @.str.5, i32 601, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bad firmware file\0A\00", [45 x i8] zeroinitializer }, align 32
@myri10ge_load_hotplug_firmware._entry_ptr.144 = internal global ptr @myri10ge_load_hotplug_firmware._entry.142, section ".printk_index", align 4
@myri10ge_load_hotplug_firmware._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.138, ptr @.str.5, i32 630, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"CRC failed(fw-len=%u), got 0x%x (expect 0x%x)\0A\00", [49 x i8] zeroinitializer }, align 32
@myri10ge_load_hotplug_firmware._entry_ptr.147 = internal global ptr @myri10ge_load_hotplug_firmware._entry.145, section ".printk_index", align 4
@myri10ge_validate_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.5, i32 550, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bad firmware type: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"myri10ge_validate_firmware\00", [37 x i8] zeroinitializer }, align 32
@myri10ge_validate_firmware._entry_ptr = internal global ptr @myri10ge_validate_firmware._entry, section ".printk_index", align 4
@.str.150 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%d.%d\00", [23 x i8] zeroinitializer }, align 32
@myri10ge_validate_firmware._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.149, ptr @.str.5, i32 563, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Found firmware version %s\0A\00", [37 x i8] zeroinitializer }, align 32
@myri10ge_validate_firmware._entry_ptr.153 = internal global ptr @myri10ge_validate_firmware._entry.151, section ".printk_index", align 4
@myri10ge_validate_firmware._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.149, ptr @.str.5, i32 565, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Driver needs %d.%d\0A\00", [44 x i8] zeroinitializer }, align 32
@myri10ge_validate_firmware._entry_ptr.156 = internal global ptr @myri10ge_validate_firmware._entry.154, section ".printk_index", align 4
@myri10ge_adopt_running_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.5, i32 656, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Running firmware has bad header offset (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"myri10ge_adopt_running_firmware\00", [32 x i8] zeroinitializer }, align 32
@myri10ge_adopt_running_firmware._entry_ptr = internal global ptr @myri10ge_adopt_running_firmware._entry, section ".printk_index", align 4
@myri10ge_adopt_running_firmware._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.158, ptr @.str.5, i32 679, ptr @.str.77, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Adopting fw %d.%d.%d: working around rx filter bug\0A\00", [44 x i8] zeroinitializer }, align 32
@myri10ge_adopt_running_firmware._entry_ptr.161 = internal global ptr @myri10ge_adopt_running_firmware._entry.159, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@myri10ge_get_firmware_capabilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.5, i32 701, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed MXGEFW_CMD_GET_RX_RING_SIZE\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"myri10ge_get_firmware_capabilities\00", [61 x i8] zeroinitializer }, align 32
@myri10ge_get_firmware_capabilities._entry_ptr = internal global ptr @myri10ge_get_firmware_capabilities._entry, section ".printk_index", align 4
@myri10ge_probe_slices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.5, i32 3629, ptr @.str.44, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"overriding rss firmware to %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"myri10ge_probe_slices\00", [42 x i8] zeroinitializer }, align 32
@myri10ge_probe_slices._entry_ptr = internal global ptr @myri10ge_probe_slices._entry, section ".printk_index", align 4
@myri10ge_probe_slices._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.165, ptr @.str.5, i32 3637, ptr @.str.44, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Rss firmware not found\0A\00", [40 x i8] zeroinitializer }, align 32
@myri10ge_probe_slices._entry_ptr.168 = internal global ptr @myri10ge_probe_slices._entry.166, section ".printk_index", align 4
@myri10ge_probe_slices._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.165, ptr @.str.5, i32 3647, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@myri10ge_probe_slices._entry_ptr.170 = internal global ptr @myri10ge_probe_slices._entry.169, section ".printk_index", align 4
@myri10ge_probe_slices._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.165, ptr @.str.5, i32 3657, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed MXGEFW_CMD_SET_INTRQ_SIZE\0A\00", [62 x i8] zeroinitializer }, align 32
@myri10ge_probe_slices._entry_ptr.173 = internal global ptr @myri10ge_probe_slices._entry.171, section ".printk_index", align 4
@.str.174 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"myri10ge_rss_eth_z8e.dat\00", [39 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"myri10ge_rss_ethp_z8e.dat\00", [38 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@myri10ge_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.177, ptr @.str.5, i32 929, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"myri10ge_reset\00", [17 x i8] zeroinitializer }, align 32
@myri10ge_reset._entry_ptr = internal global ptr @myri10ge_reset._entry, section ".printk_index", align 4
@myri10ge_reset._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.177, ptr @.str.5, i32 967, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get number of slices\0A\00", [32 x i8] zeroinitializer }, align 32
@myri10ge_reset._entry_ptr.180 = internal global ptr @myri10ge_reset._entry.178, section ".printk_index", align 4
@myri10ge_reset._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.177, ptr @.str.5, i32 996, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set number of slices\0A\00", [32 x i8] zeroinitializer }, align 32
@myri10ge_reset._entry_ptr.183 = internal global ptr @myri10ge_reset._entry.181, section ".printk_index", align 4
@myri10ge_reset._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.177, ptr @.str.5, i32 1025, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed set interrupt parameters\0A\00", [63 x i8] zeroinitializer }, align 32
@myri10ge_reset._entry_ptr.186 = internal global ptr @myri10ge_reset._entry.184, section ".printk_index", align 4
@.str.187 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set flow control mode\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed MXGEFW_ENABLE_ALLMULTI, error status: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Failed MXGEFW_LEAVE_ALL_MULTICAST_GROUPS, error status: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Failed MXGEFW_JOIN_MULTICAST_GROUP, error status:%d %pM\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed MXGEFW_DISABLE_ALLMULTI, error status: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set promisc mode\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to setup rss tables\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to enable slices\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get ring sizes or locations\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Couldn't set stats DMA\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Couldn't set buffer sizes\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Couldn't set TSO mode\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Couldn't bring up link\0A\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.200 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"slice-%d: alloced only %d small bufs\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"slice-%d: alloced only %d big bufs\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't bring down link\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"never got down irq\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TSO but wanted to linearize?!?!?\0A\00", [62 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.205 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.207 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"changing mac address failed with %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"changing mtu from %d to %d\0A\00", [36 x i8] zeroinitializer }, align 32
@myri10ge_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.5, i32 2165, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error %d setting up MSI-X\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"myri10ge_request_irq\00", [43 x i8] zeroinitializer }, align 32
@myri10ge_request_irq._entry_ptr = internal global ptr @myri10ge_request_irq._entry, section ".printk_index", align 4
@myri10ge_request_irq._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.210, ptr @.str.5, i32 2175, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Error %d setting up MSI; falling back to xPIC\0A\00", [49 x i8] zeroinitializer }, align 32
@myri10ge_request_irq._entry_ptr.213 = internal global ptr @myri10ge_request_irq._entry.211, section ".printk_index", align 4
@.str.214 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s:slice-%d\00", [20 x i8] zeroinitializer }, align 32
@myri10ge_request_irq._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.210, ptr @.str.5, i32 2191, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"slice %d failed to allocate IRQ\0A\00", [63 x i8] zeroinitializer }, align 32
@myri10ge_request_irq._entry_ptr.217 = internal global ptr @myri10ge_request_irq._entry.215, section ".printk_index", align 4
@myri10ge_request_irq._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.210, ptr @.str.5, i32 2206, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to allocate IRQ\0A\00", [40 x i8] zeroinitializer }, align 32
@myri10ge_request_irq._entry_ptr.220 = internal global ptr @myri10ge_request_irq._entry.218, section ".printk_index", align 4
@.str.221 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"irq stuck?\0A\00", [20 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.222 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"link up\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"link %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mismatch (Myrinet detected)\00", [36 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RDMA timed out! %d tags left\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"slice %d: TX paused, check link partner\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"slice %d: TX stuck %d %d %d %d %d %d\0A\00", [58 x i8] zeroinitializer }, align 32
@myri10ge_gstrings_main_stats = internal constant { [43 x [32 x i8]], [320 x i8] } { [43 x [32 x i8]] [[32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_over_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_frame_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_missed_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_aborted_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_carrier_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_heartbeat_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_window_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_boundary\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MSI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MSIX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"read_dma_bw_MBs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"write_dma_bw_MBs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"read_write_dma_bw_MBs\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"serial_number\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"watchdog_resets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"link_changes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"link_up\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dropped_link_overflow\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dropped_link_error_or_filtered\00\00", [32 x i8] c"dropped_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dropped_bad_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dropped_bad_crc32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dropped_unicast_filtered\00\00\00\00\00\00\00\00", [32 x i8] c"dropped_multicast_filtered\00\00\00\00\00\00", [32 x i8] c"dropped_runt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dropped_overrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dropped_no_small_buffer\00\00\00\00\00\00\00\00\00", [32 x i8] c"dropped_no_big_buffer\00\00\00\00\00\00\00\00\00\00\00"], [320 x i8] zeroinitializer }, align 32
@myri10ge_gstrings_slice_stats = internal constant { [10 x [32 x i8]], [64 x i8] } { [10 x [32 x i8]] [[32 x i8] c"----------- slice ---------\00\00\00\00\00", [32 x i8] c"tx_pkt_start\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pkt_done\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_req\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_done\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_small_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_big_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"wake_queue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"stop_queue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_linearized\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [64 x i8] zeroinitializer }, align 32
@myri10ge_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.229, ptr @.str.5, i32 1880, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"myri10ge_led\00", [19 x i8] zeroinitializer }, align 32
@myri10ge_led._entry_ptr = internal global ptr @myri10ge_led._entry, section ".printk_index", align 4
@myri10ge_led._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.229, ptr @.str.5, i32 1887, ptr @.str.44, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Firmware does not support LED identification\0A\00", [50 x i8] zeroinitializer }, align 32
@myri10ge_led._entry_ptr.232 = internal global ptr @myri10ge_led._entry.230, section ".printk_index", align 4
@.str.233 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Missing product code\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid product code %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NIC rebooted (0x%x),%s resetting\0A\00", [62 x i8] zeroinitializer }, align 32
@myri10ge_reset_recover = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.237 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" not\00", [27 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"device disappeared!\0A\00", [43 x i8] zeroinitializer }, align 32
@myri10ge_watchdog.__UNIQUE_ID_ddebug642 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.239, ptr @.str.5, ptr @.str.240, i8 3, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.239 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"myri10ge_watchdog\00", [46 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"not resetting\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"device timeout, resetting\0A\00", [37 x i8] zeroinitializer }, align 32
@myri10ge_dummy_rdma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.243, ptr @.str.5, i32 539, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dummy rdma %s failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"myri10ge_dummy_rdma\00", [44 x i8] zeroinitializer }, align 32
@myri10ge_dummy_rdma._entry_ptr = internal global ptr @myri10ge_dummy_rdma._entry, section ".printk_index", align 4
@.str.244 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"closing\0A\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.247 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967289]
@__sancov_gen_cov_switch_values.248 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 10, i64 4294967295]
@__sancov_gen_cov_switch_values.249 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@__sancov_gen_cov_switch_values.250 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 81, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant [17 x i8] c"myri10ge_fw_name\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 267, i32 14 }
@___asan_gen_.263 = private unnamed_addr constant [21 x i8] c"myri10ge_ecrc_enable\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 278, i32 12 }
@___asan_gen_.266 = private unnamed_addr constant [21 x i8] c"myri10ge_small_bytes\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 282, i32 12 }
@___asan_gen_.269 = private unnamed_addr constant [13 x i8] c"myri10ge_msi\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 286, i32 12 }
@___asan_gen_.272 = private unnamed_addr constant [25 x i8] c"myri10ge_intr_coal_delay\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 290, i32 12 }
@___asan_gen_.275 = private unnamed_addr constant [22 x i8] c"myri10ge_flow_control\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 294, i32 12 }
@___asan_gen_.278 = private unnamed_addr constant [23 x i8] c"myri10ge_deassert_wait\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 298, i32 12 }
@___asan_gen_.281 = private unnamed_addr constant [24 x i8] c"myri10ge_force_firmware\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 303, i32 12 }
@___asan_gen_.284 = private unnamed_addr constant [21 x i8] c"myri10ge_initial_mtu\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 308, i32 12 }
@___asan_gen_.287 = private unnamed_addr constant [21 x i8] c"myri10ge_napi_weight\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 312, i32 12 }
@___asan_gen_.290 = private unnamed_addr constant [26 x i8] c"myri10ge_watchdog_timeout\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 316, i32 12 }
@___asan_gen_.293 = private unnamed_addr constant [23 x i8] c"myri10ge_max_irq_loops\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 320, i32 12 }
@___asan_gen_.296 = private unnamed_addr constant [15 x i8] c"myri10ge_debug\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 327, i32 12 }
@___asan_gen_.299 = private unnamed_addr constant [21 x i8] c"myri10ge_fill_thresh\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 331, i32 12 }
@___asan_gen_.302 = private unnamed_addr constant [20 x i8] c"myri10ge_max_slices\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 337, i32 12 }
@___asan_gen_.305 = private unnamed_addr constant [18 x i8] c"myri10ge_rss_hash\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 341, i32 12 }
@___asan_gen_.308 = private unnamed_addr constant [13 x i8] c"myri10ge_dca\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 345, i32 12 }
@___asan_gen_.311 = private unnamed_addr constant [16 x i8] c"myri10ge_driver\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3995, i32 26 }
@___asan_gen_.314 = private unnamed_addr constant [18 x i8] c"myri10ge_fw_names\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 272, i32 14 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 4025, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 4028, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant [17 x i8] c"myri10ge_pci_tbl\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3984, i32 35 }
@___asan_gen_.338 = private unnamed_addr constant [16 x i8] c"myri10ge_pm_ops\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3993, i32 8 }
@___asan_gen_.341 = private unnamed_addr constant [13 x i8] c"board_number\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3746, i32 13 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3761, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3764, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3777, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3786, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3801, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3812, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3831, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3837, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3844, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant [20 x i8] c"myri10ge_netdev_ops\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3728, i32 36 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3889, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant [21 x i8] c"myri10ge_ethtool_ops\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 1918, i32 33 }
@___asan_gen_.419 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3892, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3895, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3899, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3903, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3922, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 473, i32 19 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 484, i32 19 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 488, i32 33 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 498, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3206, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3215, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3220, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3244, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 258, i32 36 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3149, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3153, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3181, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3183, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3077, i32 6 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3085, i32 4 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3090, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3103, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3105, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3114, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 849, i32 15 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 877, i32 10 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 886, i32 10 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 896, i32 10 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 908, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 445, i32 4 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 452, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 717, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 257, i32 38 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 722, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 731, i32 4 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 735, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 738, i32 4 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 741, i32 4 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 744, i32 4 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 747, i32 20 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 790, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 583, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 593, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 601, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 629, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 550, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 558, i32 26 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 563, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 564, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 655, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 676, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 700, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3628, i32 3 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3637, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3647, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3657, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 260, i32 40 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 259, i32 42 }
@___asan_gen_.777 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1160, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 929, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 966, i32 4 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 995, i32 4 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 1025, i32 3 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 823, i32 24 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2963, i32 19 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2978, i32 19 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2992, i32 20 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3000, i32 19 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 839, i32 24 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2332, i32 20 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2346, i32 20 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2394, i32 20 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2407, i32 20 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2425, i32 19 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2437, i32 19 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2446, i32 19 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2021, i32 19 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2028, i32 19 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2499, i32 20 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2504, i32 20 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2872, i32 24 }
@___asan_gen_.861 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.861, i32 326, i32 6 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3022, i32 19 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3036, i32 19 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2164, i32 5 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2173, i32 5 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2185, i32 6 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2190, i32 5 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 2206, i32 4 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 1582, i32 26 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 1495, i32 5 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 1499, i32 5 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 1511, i32 26 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3356, i32 27 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3360, i32 9 }
@___asan_gen_.923 = private unnamed_addr constant [29 x i8] c"myri10ge_gstrings_main_stats\00", align 1
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 1723, i32 19 }
@___asan_gen_.926 = private unnamed_addr constant [30 x i8] c"myri10ge_gstrings_slice_stats\00", align 1
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 1745, i32 19 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 1879, i32 3 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 1887, i32 3 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 1620, i32 22 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 1626, i32 23 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3403, i32 24 }
@___asan_gen_.950 = private unnamed_addr constant [23 x i8] c"myri10ge_reset_recover\00", align 1
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 335, i32 12 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3404, i32 40 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3404, i32 45 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3432, i32 26 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3449, i32 4 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3453, i32 24 }
@___asan_gen_.971 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 538, i32 3 }
@___asan_gen_.986 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.987 = private constant [52 x i8] c"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c\00", align 1
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.987, i32 3280, i32 23 }
@llvm.compiler.used = appending global [377 x ptr] [ptr @__UNIQUE_ID_author596, ptr @__UNIQUE_ID_description595, ptr @__UNIQUE_ID_file598, ptr @__UNIQUE_ID_firmware600, ptr @__UNIQUE_ID_firmware601, ptr @__UNIQUE_ID_firmware602, ptr @__UNIQUE_ID_firmware603, ptr @__UNIQUE_ID_license599, ptr @__UNIQUE_ID_myri10ge_dca639, ptr @__UNIQUE_ID_myri10ge_dcatype638, ptr @__UNIQUE_ID_myri10ge_deassert_wait619, ptr @__UNIQUE_ID_myri10ge_deassert_waittype618, ptr @__UNIQUE_ID_myri10ge_debug631, ptr @__UNIQUE_ID_myri10ge_debugtype630, ptr @__UNIQUE_ID_myri10ge_ecrc_enable609, ptr @__UNIQUE_ID_myri10ge_ecrc_enabletype608, ptr @__UNIQUE_ID_myri10ge_fill_thresh633, ptr @__UNIQUE_ID_myri10ge_fill_threshtype632, ptr @__UNIQUE_ID_myri10ge_flow_control617, ptr @__UNIQUE_ID_myri10ge_flow_controltype616, ptr @__UNIQUE_ID_myri10ge_force_firmware621, ptr @__UNIQUE_ID_myri10ge_force_firmwaretype620, ptr @__UNIQUE_ID_myri10ge_fw_name605, ptr @__UNIQUE_ID_myri10ge_fw_names607, ptr @__UNIQUE_ID_myri10ge_fw_namestype606, ptr @__UNIQUE_ID_myri10ge_fw_nametype604, ptr @__UNIQUE_ID_myri10ge_initial_mtu623, ptr @__UNIQUE_ID_myri10ge_initial_mtutype622, ptr @__UNIQUE_ID_myri10ge_intr_coal_delay615, ptr @__UNIQUE_ID_myri10ge_intr_coal_delaytype614, ptr @__UNIQUE_ID_myri10ge_max_irq_loops629, ptr @__UNIQUE_ID_myri10ge_max_irq_loopstype628, ptr @__UNIQUE_ID_myri10ge_max_slices635, ptr @__UNIQUE_ID_myri10ge_max_slicestype634, ptr @__UNIQUE_ID_myri10ge_msi613, ptr @__UNIQUE_ID_myri10ge_msitype612, ptr @__UNIQUE_ID_myri10ge_napi_weight625, ptr @__UNIQUE_ID_myri10ge_napi_weighttype624, ptr @__UNIQUE_ID_myri10ge_rss_hash637, ptr @__UNIQUE_ID_myri10ge_rss_hashtype636, ptr @__UNIQUE_ID_myri10ge_small_bytes611, ptr @__UNIQUE_ID_myri10ge_small_bytestype610, ptr @__UNIQUE_ID_myri10ge_watchdog_timeout627, ptr @__UNIQUE_ID_myri10ge_watchdog_timeouttype626, ptr @__UNIQUE_ID_version597, ptr @__exitcall_myri10ge_cleanup_module, ptr @__initcall__kmod_myri10ge__643_4041_myri10ge_init_module6, ptr @__modver_attr, ptr @__param_myri10ge_dca, ptr @__param_myri10ge_deassert_wait, ptr @__param_myri10ge_debug, ptr @__param_myri10ge_ecrc_enable, ptr @__param_myri10ge_fill_thresh, ptr @__param_myri10ge_flow_control, ptr @__param_myri10ge_force_firmware, ptr @__param_myri10ge_fw_name, ptr @__param_myri10ge_fw_names, ptr @__param_myri10ge_initial_mtu, ptr @__param_myri10ge_intr_coal_delay, ptr @__param_myri10ge_max_irq_loops, ptr @__param_myri10ge_max_slices, ptr @__param_myri10ge_msi, ptr @__param_myri10ge_napi_weight, ptr @__param_myri10ge_rss_hash, ptr @__param_myri10ge_small_bytes, ptr @__param_myri10ge_watchdog_timeout, ptr @myri10ge_adopt_running_firmware._entry, ptr @myri10ge_adopt_running_firmware._entry.159, ptr @myri10ge_adopt_running_firmware._entry_ptr, ptr @myri10ge_adopt_running_firmware._entry_ptr.161, ptr @myri10ge_cleanup_module, ptr @myri10ge_dma_test._entry, ptr @myri10ge_dma_test._entry_ptr, ptr @myri10ge_dummy_rdma._entry, ptr @myri10ge_dummy_rdma._entry_ptr, ptr @myri10ge_enable_ecrc._entry, ptr @myri10ge_enable_ecrc._entry.87, ptr @myri10ge_enable_ecrc._entry.90, ptr @myri10ge_enable_ecrc._entry.93, ptr @myri10ge_enable_ecrc._entry.96, ptr @myri10ge_enable_ecrc._entry.99, ptr @myri10ge_enable_ecrc._entry_ptr, ptr @myri10ge_enable_ecrc._entry_ptr.101, ptr @myri10ge_enable_ecrc._entry_ptr.89, ptr @myri10ge_enable_ecrc._entry_ptr.92, ptr @myri10ge_enable_ecrc._entry_ptr.95, ptr @myri10ge_enable_ecrc._entry_ptr.98, ptr @myri10ge_firmware_probe._entry, ptr @myri10ge_firmware_probe._entry.75, ptr @myri10ge_firmware_probe._entry.79, ptr @myri10ge_firmware_probe._entry.82, ptr @myri10ge_firmware_probe._entry_ptr, ptr @myri10ge_firmware_probe._entry_ptr.78, ptr @myri10ge_firmware_probe._entry_ptr.81, ptr @myri10ge_firmware_probe._entry_ptr.84, ptr @myri10ge_get_firmware_capabilities._entry, ptr @myri10ge_get_firmware_capabilities._entry_ptr, ptr @myri10ge_init_module._entry, ptr @myri10ge_init_module._entry.6, ptr @myri10ge_init_module._entry_ptr, ptr @myri10ge_init_module._entry_ptr.8, ptr @myri10ge_led._entry, ptr @myri10ge_led._entry.230, ptr @myri10ge_led._entry_ptr, ptr @myri10ge_led._entry_ptr.232, ptr @myri10ge_load_firmware._entry, ptr @myri10ge_load_firmware._entry.118, ptr @myri10ge_load_firmware._entry.121, ptr @myri10ge_load_firmware._entry.124, ptr @myri10ge_load_firmware._entry.127, ptr @myri10ge_load_firmware._entry.130, ptr @myri10ge_load_firmware._entry.134, ptr @myri10ge_load_firmware._entry_ptr, ptr @myri10ge_load_firmware._entry_ptr.120, ptr @myri10ge_load_firmware._entry_ptr.123, ptr @myri10ge_load_firmware._entry_ptr.126, ptr @myri10ge_load_firmware._entry_ptr.129, ptr @myri10ge_load_firmware._entry_ptr.132, ptr @myri10ge_load_firmware._entry_ptr.136, ptr @myri10ge_load_hotplug_firmware._entry, ptr @myri10ge_load_hotplug_firmware._entry.139, ptr @myri10ge_load_hotplug_firmware._entry.142, ptr @myri10ge_load_hotplug_firmware._entry.145, ptr @myri10ge_load_hotplug_firmware._entry_ptr, ptr @myri10ge_load_hotplug_firmware._entry_ptr.141, ptr @myri10ge_load_hotplug_firmware._entry_ptr.144, ptr @myri10ge_load_hotplug_firmware._entry_ptr.147, ptr @myri10ge_probe._entry, ptr @myri10ge_probe._entry.14, ptr @myri10ge_probe._entry.17, ptr @myri10ge_probe._entry.20, ptr @myri10ge_probe._entry.23, ptr @myri10ge_probe._entry.26, ptr @myri10ge_probe._entry.29, ptr @myri10ge_probe._entry.32, ptr @myri10ge_probe._entry.39, ptr @myri10ge_probe._entry.42, ptr @myri10ge_probe._entry.48, ptr @myri10ge_probe._entry.53, ptr @myri10ge_probe._entry_ptr, ptr @myri10ge_probe._entry_ptr.16, ptr @myri10ge_probe._entry_ptr.19, ptr @myri10ge_probe._entry_ptr.22, ptr @myri10ge_probe._entry_ptr.25, ptr @myri10ge_probe._entry_ptr.28, ptr @myri10ge_probe._entry_ptr.31, ptr @myri10ge_probe._entry_ptr.34, ptr @myri10ge_probe._entry_ptr.41, ptr @myri10ge_probe._entry_ptr.45, ptr @myri10ge_probe._entry_ptr.50, ptr @myri10ge_probe._entry_ptr.55, ptr @myri10ge_probe_slices._entry, ptr @myri10ge_probe_slices._entry.166, ptr @myri10ge_probe_slices._entry.169, ptr @myri10ge_probe_slices._entry.171, ptr @myri10ge_probe_slices._entry_ptr, ptr @myri10ge_probe_slices._entry_ptr.168, ptr @myri10ge_probe_slices._entry_ptr.170, ptr @myri10ge_probe_slices._entry_ptr.173, ptr @myri10ge_read_mac_addr._entry, ptr @myri10ge_read_mac_addr._entry_ptr, ptr @myri10ge_request_irq._entry, ptr @myri10ge_request_irq._entry.211, ptr @myri10ge_request_irq._entry.215, ptr @myri10ge_request_irq._entry.218, ptr @myri10ge_request_irq._entry_ptr, ptr @myri10ge_request_irq._entry_ptr.213, ptr @myri10ge_request_irq._entry_ptr.217, ptr @myri10ge_request_irq._entry_ptr.220, ptr @myri10ge_reset._entry, ptr @myri10ge_reset._entry.178, ptr @myri10ge_reset._entry.181, ptr @myri10ge_reset._entry.184, ptr @myri10ge_reset._entry_ptr, ptr @myri10ge_reset._entry_ptr.180, ptr @myri10ge_reset._entry_ptr.183, ptr @myri10ge_reset._entry_ptr.186, ptr @myri10ge_select_firmware._entry, ptr @myri10ge_select_firmware._entry.63, ptr @myri10ge_select_firmware._entry.66, ptr @myri10ge_select_firmware._entry.69, ptr @myri10ge_select_firmware._entry_ptr, ptr @myri10ge_select_firmware._entry_ptr.65, ptr @myri10ge_select_firmware._entry_ptr.68, ptr @myri10ge_select_firmware._entry_ptr.71, ptr @myri10ge_send_cmd._entry, ptr @myri10ge_send_cmd._entry.111, ptr @myri10ge_send_cmd._entry_ptr, ptr @myri10ge_send_cmd._entry_ptr.113, ptr @myri10ge_validate_firmware._entry, ptr @myri10ge_validate_firmware._entry.151, ptr @myri10ge_validate_firmware._entry.154, ptr @myri10ge_validate_firmware._entry_ptr, ptr @myri10ge_validate_firmware._entry_ptr.153, ptr @myri10ge_validate_firmware._entry_ptr.156, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @myri10ge_fw_name, ptr @myri10ge_ecrc_enable, ptr @myri10ge_small_bytes, ptr @myri10ge_msi, ptr @myri10ge_intr_coal_delay, ptr @myri10ge_flow_control, ptr @myri10ge_deassert_wait, ptr @myri10ge_force_firmware, ptr @myri10ge_initial_mtu, ptr @myri10ge_napi_weight, ptr @myri10ge_watchdog_timeout, ptr @myri10ge_max_irq_loops, ptr @myri10ge_debug, ptr @myri10ge_fill_thresh, ptr @myri10ge_max_slices, ptr @myri10ge_rss_hash, ptr @myri10ge_dca, ptr @myri10ge_driver, ptr @myri10ge_fw_names, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @myri10ge_pci_tbl, ptr @myri10ge_pm_ops, ptr @myri10ge_probe.board_number, ptr @myri10ge_probe.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @myri10ge_netdev_ops, ptr @myri10ge_probe.__key.35, ptr @.str.36, ptr @myri10ge_ethtool_ops, ptr @myri10ge_probe.__key.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @.str.160, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.167, ptr @.str.172, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.179, ptr @.str.182, ptr @.str.185, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.212, ptr @.str.214, ptr @.str.216, ptr @.str.219, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @myri10ge_gstrings_main_stats, ptr @myri10ge_gstrings_slice_stats, ptr @.str.229, ptr @.str.231, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @myri10ge_reset_recover, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246], section "llvm.metadata"
@0 = internal global [246 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_fw_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_ecrc_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_small_bytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_msi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_intr_coal_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_flow_control to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_deassert_wait to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_force_firmware to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_initial_mtu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_napi_weight to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_watchdog_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_max_irq_loops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_fill_thresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_max_slices to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_rss_hash to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_dca to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_fw_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_init_module._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe.board_number to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_read_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_select_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_select_firmware._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_select_firmware._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_select_firmware._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_firmware_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_firmware_probe._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_firmware_probe._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_firmware_probe._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_enable_ecrc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_enable_ecrc._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_enable_ecrc._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_enable_ecrc._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_enable_ecrc._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_enable_ecrc._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_dma_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_send_cmd._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_load_firmware._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_load_firmware._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_load_firmware._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_load_firmware._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_load_firmware._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_load_firmware._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_load_hotplug_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_load_hotplug_firmware._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_load_hotplug_firmware._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_load_hotplug_firmware._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_validate_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_validate_firmware._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_validate_firmware._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_adopt_running_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_adopt_running_firmware._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_get_firmware_capabilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe_slices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe_slices._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe_slices._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_probe_slices._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_reset._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_reset._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_reset._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_request_irq._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_request_irq._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_request_irq._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_gstrings_main_stats to i32), i32 1376, i32 1696, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_gstrings_slice_stats to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_led._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_reset_recover to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myri10ge_dummy_rdma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @myri10ge_init_module() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2) #27
  %0 = load i32, ptr @myri10ge_rss_hash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %0)
  %cmp = icmp sgt i32 %0, 5
  br i1 %cmp, label %do.end2, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

do.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %0) #27
  store i32 4, ptr @myri10ge_rss_hash, align 4
  br label %if.end

if.end:                                           ; preds = %do.end2, %entry.if.end_crit_edge
  %1 = load i32, ptr @myri10ge_max_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp5 = icmp sgt i32 %1, 32
  br i1 %cmp5, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  store i32 32, ptr @myri10ge_max_slices, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @__pci_register_driver(ptr noundef nonnull @myri10ge_driver, ptr noundef null, ptr noundef nonnull @.str.1) #24
  ret i32 %call8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @myri10ge_cleanup_module() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @pci_unregister_driver(ptr noundef nonnull @myri10ge_driver) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myri10ge_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #3 align 64 {
entry:
  %cmd.i = alloca %struct.myri10ge_cmd, align 4
  %err_cap.i.i.i = alloca i32, align 4
  %lnk.i = alloca i16, align 2
  %ptr.i = alloca ptr, align 4
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 728, i32 noundef 32, i32 noundef 32) #24
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %dev5 = getelementptr i8, ptr %call, i32 2332
  %1 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %dev5, align 4
  %pdev6 = getelementptr i8, ptr %call, i32 2368
  %2 = ptrtoint ptr %pdev6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %pdev6, align 4
  %3 = load i32, ptr @myri10ge_flow_control, align 4
  %pause = getelementptr i8, ptr %call, i32 2560
  %4 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pause, align 4
  %5 = load i32, ptr @myri10ge_intr_coal_delay, align 4
  %intr_coal_delay = getelementptr i8, ptr %call, i32 2392
  %6 = ptrtoint ptr %intr_coal_delay to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %intr_coal_delay, align 4
  %7 = load i32, ptr @myri10ge_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %7)
  %cmp1.i = icmp ugt i32 %7, 31
  br i1 %cmp1.i, label %if.end.netif_msg_init.exit_crit_edge, label %if.end.i

if.end.netif_msg_init.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.i = icmp eq i32 %7, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #26
  %notmask.i = shl nsw i32 -1, %7
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %if.end.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 4, %if.end.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %call, i32 3020
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i, ptr %msg_enable, align 4
  %9 = load i32, ptr @myri10ge_probe.board_number, align 4
  %board_number = getelementptr i8, ptr %call, i32 3024
  %10 = ptrtoint ptr %board_number to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %board_number, align 4
  %down_wq = getelementptr i8, ptr %call, i32 2408
  tail call void @__init_waitqueue_head(ptr noundef %down_wq, ptr noundef nonnull @.str.9, ptr noundef nonnull @myri10ge_probe.__key) #24
  %call8 = tail call i32 @pci_enable_device(ptr noundef %pdev) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #27
  br label %abort_with_netdev

if.end14:                                         ; preds = %netif_msg_init.exit
  %call15 = tail call zeroext i8 @pci_find_capability(ptr noundef %pdev, i32 noundef 9) #24
  %conv = zext i8 %call15 to i32
  %vendor_specific_offset = getelementptr i8, ptr %call, i32 2988
  %11 = ptrtoint ptr %vendor_specific_offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %vendor_specific_offset, align 4
  %call16 = tail call i32 @pcie_set_readrq(ptr noundef %pdev, i32 noundef 4096) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call16) #27
  br label %abort_with_enabled

if.end24:                                         ; preds = %if.end14
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %self.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #24
  %16 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %mask.i, align 4, !annotation !609
  %cmp.i = icmp eq ptr %15, null
  br i1 %cmp.i, label %if.end24.myri10ge_mask_surprise_down.exit_crit_edge, label %if.end.i378

if.end24.myri10ge_mask_surprise_down.exit_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_mask_surprise_down.exit

if.end.i378:                                      ; preds = %if.end24
  %call.i = tail call zeroext i16 @pci_find_ext_capability(ptr noundef nonnull %15, i32 noundef 1) #24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i378.myri10ge_mask_surprise_down.exit_crit_edge, label %if.then1.i

if.end.i378.myri10ge_mask_surprise_down.exit_crit_edge: ; preds = %if.end.i378
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_mask_surprise_down.exit

if.then1.i:                                       ; preds = %if.end.i378
  call void @__sanitizer_cov_trace_pc() #26
  %conv.i = zext i16 %call.i to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %call2.i = call i32 @pci_read_config_dword(ptr noundef nonnull %15, i32 noundef %add.i, ptr noundef nonnull %mask.i) #24
  %17 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask.i, align 4
  %or.i = or i32 %18, 32
  store i32 %or.i, ptr %mask.i, align 4
  %call4.i = call i32 @pci_write_config_dword(ptr noundef nonnull %15, i32 noundef %add.i, i32 noundef %or.i) #24
  br label %myri10ge_mask_surprise_down.exit

myri10ge_mask_surprise_down.exit:                 ; preds = %if.then1.i, %if.end.i378.myri10ge_mask_surprise_down.exit_crit_edge, %if.end24.myri10ge_mask_surprise_down.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #24
  call void @pci_set_master(ptr noundef %pdev) #24
  %call.i379 = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef -1) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i379)
  %cmp.i380 = icmp eq i32 %call.i379, 0
  br i1 %cmp.i380, label %if.end34, label %do.end32

do.end32:                                         ; preds = %myri10ge_mask_surprise_down.exit
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %call.i379) #27
  br label %abort_with_enabled

if.end34:                                         ; preds = %myri10ge_mask_surprise_down.exit
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef -1) #24
  %cmd_bus = getelementptr i8, ptr %call, i32 2364
  %call.i382 = call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 8, ptr noundef %cmd_bus, i32 noundef 3264, i32 noundef 0) #24
  %cmd = getelementptr i8, ptr %call, i32 2360
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i382, ptr %cmd, align 4
  %tobool38.not = icmp eq ptr %call.i382, null
  br i1 %tobool38.not, label %if.end34.abort_with_enabled_crit_edge, label %if.end40

if.end34.abort_with_enabled_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_enabled

if.end40:                                         ; preds = %if.end34
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %20 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp41 = icmp eq i32 %21, 0
  br i1 %cmp41, label %if.end40.cond.end_crit_edge, label %cond.false

if.end40.cond.end_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #26
  br label %cond.end

cond.false:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #26
  %22 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resource, align 8
  %sub = add i32 %21, 1
  %add = sub i32 %sub, %23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end40.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end40.cond.end_crit_edge ]
  %board_span = getelementptr i8, ptr %call, i32 2344
  %24 = ptrtoint ptr %board_span to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond, ptr %board_span, align 4
  %25 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resource, align 8
  %iomem_base = getelementptr i8, ptr %call, i32 2348
  %27 = ptrtoint ptr %iomem_base to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %iomem_base, align 4
  %wc_cookie = getelementptr i8, ptr %call, i32 2400
  %28 = ptrtoint ptr %wc_cookie to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %wc_cookie, align 4
  %call56 = call ptr @ioremap_wc(i32 noundef %26, i32 noundef %cond) #24
  %sram = getelementptr i8, ptr %call, i32 2336
  %29 = ptrtoint ptr %sram to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call56, ptr %sram, align 4
  %cmp58 = icmp eq ptr %call56, null
  br i1 %cmp58, label %do.end63, label %if.end67

do.end63:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #26
  %30 = ptrtoint ptr %board_span to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %board_span, align 4
  %32 = ptrtoint ptr %iomem_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iomem_base, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %31, i32 noundef %33) #27
  br label %abort_with_mtrr

if.end67:                                         ; preds = %cond.end
  %add.ptr = getelementptr i8, ptr %call56, i32 60
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #24, !srcloc !610
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !611
  %and = and i32 %34, 1048572
  %add71 = add nuw nsw i32 %and, 144
  %35 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sram, align 4
  %add.ptr75 = getelementptr i8, ptr %36, i32 %add71
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #24, !srcloc !610
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !612
  %sram_size = getelementptr i8, ptr %call, i32 2340
  %38 = ptrtoint ptr %sram_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %sram_size, align 4
  %39 = ptrtoint ptr %board_span to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %board_span, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %40)
  %cmp81 = icmp ugt i32 %37, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048577, i32 %37)
  %cmp84 = icmp slt i32 %37, 1048577
  %or.cond = or i1 %cmp84, %cmp81
  br i1 %or.cond, label %do.end89, label %if.end93

do.end89:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %37, i32 noundef %40) #27
  br label %abort_with_ioremap

if.end93:                                         ; preds = %if.end67
  %eeprom_strings = getelementptr i8, ptr %call, i32 2572
  %41 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sram, align 4
  %add.ptr96 = getelementptr i8, ptr %42, i32 %37
  call void @mmiocpy(ptr noundef %eeprom_strings, ptr noundef %add.ptr96, i32 noundef 256) #24
  %add.ptr100 = getelementptr i8, ptr %call, i32 2826
  %43 = ptrtoint ptr %add.ptr100 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 0, ptr %add.ptr100, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr.i) #24
  %44 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %eeprom_strings, ptr %ptr.i, align 4
  %add.ptr.i383 = getelementptr i8, ptr %call, i32 2828
  %45 = ptrtoint ptr %eeprom_strings to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %eeprom_strings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp.not56.i = icmp ne i8 %46, 0
  %cmp457.i = icmp ult ptr %eeprom_strings, %add.ptr.i383
  %or.cond58.i = and i1 %cmp457.i, %cmp.not56.i
  br i1 %or.cond58.i, label %while.body.lr.ph.i, label %if.end93.if.end104_crit_edge

if.end93.if.end104_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end104

while.body.lr.ph.i:                               ; preds = %if.end93
  %mac_addr_string.i = getelementptr i8, ptr %call, i32 2356
  %serial_number.i = getelementptr i8, ptr %call, i32 2984
  %arrayidx.i = getelementptr i8, ptr %call, i32 2976
  %arrayidx.1.i = getelementptr i8, ptr %call, i32 2977
  %arrayidx.2.i = getelementptr i8, ptr %call, i32 2978
  %arrayidx.3.i = getelementptr i8, ptr %call, i32 2979
  %arrayidx.4.i = getelementptr i8, ptr %call, i32 2980
  %arrayidx.5.i = getelementptr i8, ptr %call, i32 2981
  br label %while.body.i

while.body.i:                                     ; preds = %while.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %47 = phi ptr [ %eeprom_strings, %while.body.lr.ph.i ], [ %82, %while.end.i.while.body.i_crit_edge ]
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(4) %47, ptr noundef nonnull dereferenceable(4) @.str.56, i32 4) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp6.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp6.i, label %if.then.i384, label %while.body.i.if.end18.i_crit_edge

while.body.i.if.end18.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end18.i

if.then.i384:                                     ; preds = %while.body.i
  %add.ptr8.i = getelementptr i8, ptr %47, i32 4
  %48 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr8.i, ptr %ptr.i, align 4
  %49 = ptrtoint ptr %mac_addr_string.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr8.i, ptr %mac_addr_string.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %47, i32 6
  %cmp12.i = icmp ugt ptr %add.ptr11.i, %add.ptr.i383
  br i1 %cmp12.i, label %if.then.i384.myri10ge_read_mac_addr.exit_crit_edge, label %if.end.i385

if.then.i384.myri10ge_read_mac_addr.exit_crit_edge: ; preds = %if.then.i384
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_read_mac_addr.exit

if.end.i385:                                      ; preds = %if.then.i384
  %call15.i = call i32 @simple_strtoul(ptr noundef %add.ptr8.i, ptr noundef nonnull %ptr.i, i32 noundef 16) #24
  %conv16.i = trunc i32 %call15.i to i8
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv16.i, ptr %arrayidx.i, align 1
  %51 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ptr.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %52, i32 1
  store ptr %add.ptr17.i, ptr %ptr.i, align 4
  %add.ptr11.1.i = getelementptr i8, ptr %52, i32 3
  %cmp12.1.i = icmp ugt ptr %add.ptr11.1.i, %add.ptr.i383
  br i1 %cmp12.1.i, label %if.end.i385.myri10ge_read_mac_addr.exit_crit_edge, label %if.end.1.i

if.end.i385.myri10ge_read_mac_addr.exit_crit_edge: ; preds = %if.end.i385
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_read_mac_addr.exit

if.end.1.i:                                       ; preds = %if.end.i385
  %call15.1.i = call i32 @simple_strtoul(ptr noundef %add.ptr17.i, ptr noundef nonnull %ptr.i, i32 noundef 16) #24
  %conv16.1.i = trunc i32 %call15.1.i to i8
  %53 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv16.1.i, ptr %arrayidx.1.i, align 1
  %54 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ptr.i, align 4
  %add.ptr17.1.i = getelementptr i8, ptr %55, i32 1
  store ptr %add.ptr17.1.i, ptr %ptr.i, align 4
  %add.ptr11.2.i = getelementptr i8, ptr %55, i32 3
  %cmp12.2.i = icmp ugt ptr %add.ptr11.2.i, %add.ptr.i383
  br i1 %cmp12.2.i, label %if.end.1.i.myri10ge_read_mac_addr.exit_crit_edge, label %if.end.2.i

if.end.1.i.myri10ge_read_mac_addr.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_read_mac_addr.exit

if.end.2.i:                                       ; preds = %if.end.1.i
  %call15.2.i = call i32 @simple_strtoul(ptr noundef %add.ptr17.1.i, ptr noundef nonnull %ptr.i, i32 noundef 16) #24
  %conv16.2.i = trunc i32 %call15.2.i to i8
  %56 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv16.2.i, ptr %arrayidx.2.i, align 1
  %57 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ptr.i, align 4
  %add.ptr17.2.i = getelementptr i8, ptr %58, i32 1
  store ptr %add.ptr17.2.i, ptr %ptr.i, align 4
  %add.ptr11.3.i = getelementptr i8, ptr %58, i32 3
  %cmp12.3.i = icmp ugt ptr %add.ptr11.3.i, %add.ptr.i383
  br i1 %cmp12.3.i, label %if.end.2.i.myri10ge_read_mac_addr.exit_crit_edge, label %if.end.3.i

if.end.2.i.myri10ge_read_mac_addr.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_read_mac_addr.exit

if.end.3.i:                                       ; preds = %if.end.2.i
  %call15.3.i = call i32 @simple_strtoul(ptr noundef %add.ptr17.2.i, ptr noundef nonnull %ptr.i, i32 noundef 16) #24
  %conv16.3.i = trunc i32 %call15.3.i to i8
  %59 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv16.3.i, ptr %arrayidx.3.i, align 1
  %60 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ptr.i, align 4
  %add.ptr17.3.i = getelementptr i8, ptr %61, i32 1
  store ptr %add.ptr17.3.i, ptr %ptr.i, align 4
  %add.ptr11.4.i = getelementptr i8, ptr %61, i32 3
  %cmp12.4.i = icmp ugt ptr %add.ptr11.4.i, %add.ptr.i383
  br i1 %cmp12.4.i, label %if.end.3.i.myri10ge_read_mac_addr.exit_crit_edge, label %if.end.4.i

if.end.3.i.myri10ge_read_mac_addr.exit_crit_edge: ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_read_mac_addr.exit

if.end.4.i:                                       ; preds = %if.end.3.i
  %call15.4.i = call i32 @simple_strtoul(ptr noundef %add.ptr17.3.i, ptr noundef nonnull %ptr.i, i32 noundef 16) #24
  %conv16.4.i = trunc i32 %call15.4.i to i8
  %62 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv16.4.i, ptr %arrayidx.4.i, align 1
  %63 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ptr.i, align 4
  %add.ptr17.4.i = getelementptr i8, ptr %64, i32 1
  store ptr %add.ptr17.4.i, ptr %ptr.i, align 4
  %add.ptr11.5.i = getelementptr i8, ptr %64, i32 3
  %cmp12.5.i = icmp ugt ptr %add.ptr11.5.i, %add.ptr.i383
  br i1 %cmp12.5.i, label %if.end.4.i.myri10ge_read_mac_addr.exit_crit_edge, label %if.end.5.i

if.end.4.i.myri10ge_read_mac_addr.exit_crit_edge: ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_read_mac_addr.exit

if.end.5.i:                                       ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #26
  %call15.5.i = call i32 @simple_strtoul(ptr noundef %add.ptr17.4.i, ptr noundef nonnull %ptr.i, i32 noundef 16) #24
  %conv16.5.i = trunc i32 %call15.5.i to i8
  %65 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv16.5.i, ptr %arrayidx.5.i, align 1
  %66 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ptr.i, align 4
  %add.ptr17.5.i = getelementptr i8, ptr %67, i32 1
  store ptr %add.ptr17.5.i, ptr %ptr.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end.5.i, %while.body.i.if.end18.i_crit_edge
  %68 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ptr.i, align 4
  %bcmp53.i = call i32 @bcmp(ptr noundef dereferenceable(3) %69, ptr noundef nonnull dereferenceable(3) @.str.57, i32 3) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp53.i)
  %cmp20.i = icmp eq i32 %bcmp53.i, 0
  br i1 %cmp20.i, label %if.then22.i, label %if.end18.i.if.end24.i_crit_edge

if.end18.i.if.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr23.i = getelementptr i8, ptr %69, i32 3
  %70 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr23.i, ptr %ptr.i, align 4
  %71 = ptrtoint ptr %add.ptr.i383 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr23.i, ptr %add.ptr.i383, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.end18.i.if.end24.i_crit_edge
  %72 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ptr.i, align 4
  %bcmp54.i = call i32 @bcmp(ptr noundef dereferenceable(3) %73, ptr noundef nonnull dereferenceable(3) @.str.58, i32 3) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp54.i)
  %cmp26.i = icmp eq i32 %bcmp54.i, 0
  br i1 %cmp26.i, label %if.then28.i, label %if.end24.i.while.cond32.i.preheader_crit_edge

if.end24.i.while.cond32.i.preheader_crit_edge:    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.cond32.i.preheader

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr29.i = getelementptr i8, ptr %73, i32 3
  %74 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr29.i, ptr %ptr.i, align 4
  %call30.i = call i32 @simple_strtoul(ptr noundef %add.ptr29.i, ptr noundef nonnull %ptr.i, i32 noundef 10) #24
  %75 = ptrtoint ptr %serial_number.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call30.i, ptr %serial_number.i, align 4
  br label %while.cond32.i.preheader

while.cond32.i.preheader:                         ; preds = %if.then28.i, %if.end24.i.while.cond32.i.preheader_crit_edge
  br label %while.cond32.i

while.cond32.i:                                   ; preds = %land.rhs35.i.while.cond32.i_crit_edge, %while.cond32.i.preheader
  %76 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ptr.i, align 4
  %cmp33.i = icmp ult ptr %77, %add.ptr.i383
  br i1 %cmp33.i, label %land.rhs35.i, label %while.cond32.i.while.end.i_crit_edge

while.cond32.i.while.end.i_crit_edge:             ; preds = %while.cond32.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.end.i

land.rhs35.i:                                     ; preds = %while.cond32.i
  %incdec.ptr.i = getelementptr i8, ptr %77, i32 1
  %78 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %incdec.ptr.i, ptr %ptr.i, align 4
  %79 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %77, align 1
  %tobool.not.i386 = icmp eq i8 %80, 0
  br i1 %tobool.not.i386, label %land.rhs35.i.while.end.i_crit_edge, label %land.rhs35.i.while.cond32.i_crit_edge

land.rhs35.i.while.cond32.i_crit_edge:            ; preds = %land.rhs35.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.cond32.i

land.rhs35.i.while.end.i_crit_edge:               ; preds = %land.rhs35.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.end.i

while.end.i:                                      ; preds = %land.rhs35.i.while.end.i_crit_edge, %while.cond32.i.while.end.i_crit_edge
  %81 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ptr.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp.not.i = icmp ne i8 %84, 0
  %cmp4.i = icmp ult ptr %82, %add.ptr.i383
  %or.cond.i = and i1 %cmp4.i, %cmp.not.i
  br i1 %or.cond.i, label %while.end.i.while.body.i_crit_edge, label %while.end.i.if.end104_crit_edge

while.end.i.if.end104_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end104

while.end.i.while.body.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.body.i

myri10ge_read_mac_addr.exit:                      ; preds = %if.end.4.i.myri10ge_read_mac_addr.exit_crit_edge, %if.end.3.i.myri10ge_read_mac_addr.exit_crit_edge, %if.end.2.i.myri10ge_read_mac_addr.exit_crit_edge, %if.end.1.i.myri10ge_read_mac_addr.exit_crit_edge, %if.end.i385.myri10ge_read_mac_addr.exit_crit_edge, %if.then.i384.myri10ge_read_mac_addr.exit_crit_edge
  %85 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev6, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.59) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr.i) #24
  br label %abort_with_ioremap

if.end104:                                        ; preds = %while.end.i.if.end104_crit_edge, %if.end93.if.end104_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr.i) #24
  %mac_addr = getelementptr i8, ptr %call, i32 2976
  call void @dev_addr_mod(ptr noundef %call, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #24
  %87 = load i32, ptr @myri10ge_force_firmware, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values)
  switch i32 %87, label %do.end18.i [
    i32 0, label %if.then.i391
    i32 1, label %do.end11.i
  ]

if.then.i391:                                     ; preds = %if.end104
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lnk.i) #24
  %89 = ptrtoint ptr %lnk.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -1, ptr %lnk.i, align 2, !annotation !609
  %90 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev6, align 4
  %call.i389 = call i32 @pcie_capability_read_word(ptr noundef %91, i32 noundef 18, ptr noundef nonnull %lnk.i) #24
  %92 = ptrtoint ptr %lnk.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %lnk.i, align 2
  %94 = lshr i16 %93, 4
  %95 = and i16 %94, 63
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %95)
  %cmp1.i390 = icmp ult i16 %95, 8
  br i1 %cmp1.i390, label %do.end.i393, label %if.else.i

do.end.i393:                                      ; preds = %if.then.i391
  %and.i = zext i16 %95 to i32
  %96 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdev6, align 4
  %dev.i392 = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i392, ptr noundef nonnull @.str.61, i32 noundef %and.i) #27
  %tx_boundary.i = getelementptr i8, ptr %call, i32 2308
  %98 = ptrtoint ptr %tx_boundary.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 4096, ptr %tx_boundary.i, align 4
  %fw_name_allocated.i.i = getelementptr i8, ptr %call, i32 2564
  %99 = ptrtoint ptr %fw_name_allocated.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %fw_name_allocated.i.i, align 4, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i.i = icmp eq i8 %100, 0
  br i1 %tobool.not.i.i, label %do.end.i393.if.end.sink.split.i_crit_edge, label %do.end.i393.if.end.sink.split.sink.split.i_crit_edge

do.end.i393.if.end.sink.split.sink.split.i_crit_edge: ; preds = %do.end.i393
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end.sink.split.sink.split.i

do.end.i393.if.end.sink.split.i_crit_edge:        ; preds = %do.end.i393
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end.sink.split.i

if.else.i:                                        ; preds = %if.then.i391
  %101 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev6, align 4
  %dev2.i.i = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %tx_boundary.i.i = getelementptr i8, ptr %call, i32 2308
  %103 = ptrtoint ptr %tx_boundary.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 4096, ptr %tx_boundary.i.i, align 4
  %call.i.i = call i32 @pcie_get_readrq(ptr noundef %102) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.73, i32 noundef %call.i.i) #27
  br label %abort.i.i

if.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call.i.i)
  %cmp3.not.i.i = icmp eq i32 %call.i.i, 4096
  br i1 %cmp3.not.i.i, label %if.end.i.i.if.end9.i.i_crit_edge, label %do.end7.i.i

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end9.i.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.76, i32 noundef %call.i.i) #27
  %104 = ptrtoint ptr %tx_boundary.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 2048, ptr %tx_boundary.i.i, align 4
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %do.end7.i.i, %if.end.i.i.if.end9.i.i_crit_edge
  %fw_name_allocated.i.i.i = getelementptr i8, ptr %call, i32 2564
  %105 = ptrtoint ptr %fw_name_allocated.i.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %fw_name_allocated.i.i.i, align 4, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i.i.i = icmp eq i8 %106, 0
  br i1 %tobool.not.i.i.i, label %if.end9.i.i.set_fw_name.exit.i.i_crit_edge, label %if.then.i.i.i

if.end9.i.i.set_fw_name.exit.i.i_crit_edge:       ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %set_fw_name.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %fw_name.i.i.i = getelementptr i8, ptr %call, i32 2568
  %107 = ptrtoint ptr %fw_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %fw_name.i.i.i, align 4
  call void @kfree(ptr noundef %108) #24
  br label %set_fw_name.exit.i.i

set_fw_name.exit.i.i:                             ; preds = %if.then.i.i.i, %if.end9.i.i.set_fw_name.exit.i.i_crit_edge
  %fw_name1.i.i.i = getelementptr i8, ptr %call, i32 2568
  %109 = ptrtoint ptr %fw_name1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @.str.72, ptr %fw_name1.i.i.i, align 4
  %110 = ptrtoint ptr %fw_name_allocated.i.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %fw_name_allocated.i.i.i, align 4
  %call10.i.i = call fastcc i32 @myri10ge_load_firmware(ptr noundef %add.ptr.i, i32 noundef 1) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %cmp11.not.i.i, label %if.end13.i.i, label %set_fw_name.exit.i.i.abort.i.i_crit_edge

set_fw_name.exit.i.i.abort.i.i_crit_edge:         ; preds = %set_fw_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort.i.i

if.end13.i.i:                                     ; preds = %set_fw_name.exit.i.i
  %111 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pdev6, align 4
  %bus.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bus.i.i.i, align 8
  %self.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %self.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %self.i.i.i, align 4
  %dev2.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err_cap.i.i.i) #24
  %117 = ptrtoint ptr %err_cap.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -1, ptr %err_cap.i.i.i, align 4, !annotation !609
  %118 = load i32, ptr @myri10ge_ecrc_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.not.i53.i.i = icmp eq i32 %118, 0
  %tobool3.not.i.i.i = icmp eq ptr %116, null
  %or.cond.i.i.i = select i1 %tobool.not.i53.i.i, i1 true, i1 %tobool3.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end13.i.i.myri10ge_enable_ecrc.exit.i.i_crit_edge, label %if.end.i.i.i

if.end13.i.i.myri10ge_enable_ecrc.exit.i.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_enable_ecrc.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end13.i.i
  %pcie_flags_reg.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %116, i32 0, i32 25
  %119 = ptrtoint ptr %pcie_flags_reg.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %pcie_flags_reg.i.i.i.i.i, align 2
  %121 = and i16 %120, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %121)
  %cmp.not.i.i.i = icmp eq i16 %121, 64
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i.if.end30.i.i.i_crit_edge, label %if.then4.i.i.i

if.end.i.i.i.if.end30.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end30.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %cmp5.i.i.i = icmp sgt i32 %118, 1
  br i1 %cmp5.i.i.i, label %if.then4.i.i.i.do.body.i.i.i_crit_edge, label %do.end27.i.i.i

if.then4.i.i.i.do.body.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond15.i.i.i.do.body.i.i.i_crit_edge, %if.then4.i.i.i.do.body.i.i.i_crit_edge
  %bridge.0.i.i.i = phi ptr [ %125, %do.cond15.i.i.i.do.body.i.i.i_crit_edge ], [ %116, %if.then4.i.i.i.do.body.i.i.i_crit_edge ]
  %bus7.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %bridge.0.i.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %bus7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bus7.i.i.i, align 8
  %self8.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %self8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %self8.i.i.i, align 4
  %tobool9.not.i.i.i = icmp eq ptr %125, null
  %cmp11.i.i.i = icmp eq ptr %bridge.0.i.i.i, %125
  %or.cond85.i.i.i = select i1 %tobool9.not.i.i.i, i1 true, i1 %cmp11.i.i.i
  br i1 %or.cond85.i.i.i, label %do.end.i.i.i, label %do.cond15.i.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i.i, ptr noundef nonnull @.str.85) #27
  br label %myri10ge_enable_ecrc.exit.i.i

do.cond15.i.i.i:                                  ; preds = %do.body.i.i.i
  %pcie_flags_reg.i.i86.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 25
  %126 = ptrtoint ptr %pcie_flags_reg.i.i86.i.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %pcie_flags_reg.i.i86.i.i.i, align 2
  %128 = and i16 %127, 240
  %cmp17.not.i.i.i = icmp eq i16 %128, 64
  br i1 %cmp17.not.i.i.i, label %do.end21.i.i.i, label %do.cond15.i.i.i.do.body.i.i.i_crit_edge

do.cond15.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %do.cond15.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.body.i.i.i

do.end21.i.i.i:                                   ; preds = %do.cond15.i.i.i
  %init_name.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %116, i32 0, i32 44, i32 3
  %129 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %130, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %do.end21.i.i.i.pci_name.exit.i.i.i_crit_edge

do.end21.i.i.i.pci_name.exit.i.i.i_crit_edge:     ; preds = %do.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %pci_name.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %dev.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %116, i32 0, i32 44
  %131 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev.i.i.i.i, align 4
  br label %pci_name.exit.i.i.i

pci_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %do.end21.i.i.i.pci_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %132, %if.end.i.i.i.i.i ], [ %130, %do.end21.i.i.i.pci_name.exit.i.i.i_crit_edge ]
  %init_name.i.i87.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 44, i32 3
  %133 = ptrtoint ptr %init_name.i.i87.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %init_name.i.i87.i.i.i, align 8
  %tobool.not.i.i88.i.i.i = icmp eq ptr %134, null
  br i1 %tobool.not.i.i88.i.i.i, label %if.end.i.i90.i.i.i, label %pci_name.exit.i.i.i.pci_name.exit92.i.i.i_crit_edge

pci_name.exit.i.i.i.pci_name.exit92.i.i.i_crit_edge: ; preds = %pci_name.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %pci_name.exit92.i.i.i

if.end.i.i90.i.i.i:                               ; preds = %pci_name.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %dev.i89.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 44
  %135 = ptrtoint ptr %dev.i89.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev.i89.i.i.i, align 4
  br label %pci_name.exit92.i.i.i

pci_name.exit92.i.i.i:                            ; preds = %if.end.i.i90.i.i.i, %pci_name.exit.i.i.i.pci_name.exit92.i.i.i_crit_edge
  %retval.0.i.i91.i.i.i = phi ptr [ %136, %if.end.i.i90.i.i.i ], [ %134, %pci_name.exit.i.i.i.pci_name.exit92.i.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i.i.i, ptr noundef nonnull @.str.88, ptr noundef %retval.0.i.i.i.i.i, ptr noundef %retval.0.i.i91.i.i.i) #27
  br label %if.end30.i.i.i

do.end27.i.i.i:                                   ; preds = %if.then4.i.i.i
  %init_name.i.i93.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %116, i32 0, i32 44, i32 3
  %137 = ptrtoint ptr %init_name.i.i93.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %init_name.i.i93.i.i.i, align 8
  %tobool.not.i.i94.i.i.i = icmp eq ptr %138, null
  br i1 %tobool.not.i.i94.i.i.i, label %if.end.i.i96.i.i.i, label %do.end27.i.i.i.pci_name.exit98.i.i.i_crit_edge

do.end27.i.i.i.pci_name.exit98.i.i.i_crit_edge:   ; preds = %do.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %pci_name.exit98.i.i.i

if.end.i.i96.i.i.i:                               ; preds = %do.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %dev.i95.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %116, i32 0, i32 44
  %139 = ptrtoint ptr %dev.i95.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev.i95.i.i.i, align 4
  br label %pci_name.exit98.i.i.i

pci_name.exit98.i.i.i:                            ; preds = %if.end.i.i96.i.i.i, %do.end27.i.i.i.pci_name.exit98.i.i.i_crit_edge
  %retval.0.i.i97.i.i.i = phi ptr [ %140, %if.end.i.i96.i.i.i ], [ %138, %do.end27.i.i.i.pci_name.exit98.i.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i.i, ptr noundef nonnull @.str.91, ptr noundef %retval.0.i.i97.i.i.i) #27
  br label %myri10ge_enable_ecrc.exit.i.i

if.end30.i.i.i:                                   ; preds = %pci_name.exit92.i.i.i, %if.end.i.i.i.if.end30.i.i.i_crit_edge
  %bridge.1.i.i.i = phi ptr [ %116, %if.end.i.i.i.if.end30.i.i.i_crit_edge ], [ %125, %pci_name.exit92.i.i.i ]
  %call31.i.i.i = call zeroext i16 @pci_find_ext_capability(ptr noundef nonnull %bridge.1.i.i.i, i32 noundef 1) #24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call31.i.i.i)
  %tobool32.not.i.i.i = icmp eq i16 %call31.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.end30.i.i.i.myri10ge_enable_ecrc.exit.i.i_crit_edge, label %if.end34.i.i.i

if.end30.i.i.i.myri10ge_enable_ecrc.exit.i.i_crit_edge: ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_enable_ecrc.exit.i.i

if.end34.i.i.i:                                   ; preds = %if.end30.i.i.i
  %conv.i.i.i = zext i16 %call31.i.i.i to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 24
  %call35.i.i.i = call i32 @pci_read_config_dword(ptr noundef nonnull %bridge.1.i.i.i, i32 noundef %add.i.i.i, ptr noundef nonnull %err_cap.i.i.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i.i)
  %tobool36.not.i.i.i = icmp eq i32 %call35.i.i.i, 0
  br i1 %tobool36.not.i.i.i, label %if.end45.i.i.i, label %do.end40.i.i.i

do.end40.i.i.i:                                   ; preds = %if.end34.i.i.i
  %init_name.i.i99.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %bridge.1.i.i.i, i32 0, i32 44, i32 3
  %141 = ptrtoint ptr %init_name.i.i99.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %init_name.i.i99.i.i.i, align 8
  %tobool.not.i.i100.i.i.i = icmp eq ptr %142, null
  br i1 %tobool.not.i.i100.i.i.i, label %if.end.i.i102.i.i.i, label %do.end40.i.i.i.pci_name.exit104.i.i.i_crit_edge

do.end40.i.i.i.pci_name.exit104.i.i.i_crit_edge:  ; preds = %do.end40.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %pci_name.exit104.i.i.i

if.end.i.i102.i.i.i:                              ; preds = %do.end40.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %dev.i101.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %bridge.1.i.i.i, i32 0, i32 44
  %143 = ptrtoint ptr %dev.i101.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev.i101.i.i.i, align 4
  br label %pci_name.exit104.i.i.i

pci_name.exit104.i.i.i:                           ; preds = %if.end.i.i102.i.i.i, %do.end40.i.i.i.pci_name.exit104.i.i.i_crit_edge
  %retval.0.i.i103.i.i.i = phi ptr [ %144, %if.end.i.i102.i.i.i ], [ %142, %do.end40.i.i.i.pci_name.exit104.i.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i.i, ptr noundef nonnull @.str.94, ptr noundef %retval.0.i.i103.i.i.i) #27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i.i, ptr noundef nonnull @.str.97) #27
  br label %myri10ge_enable_ecrc.exit.i.i

if.end45.i.i.i:                                   ; preds = %if.end34.i.i.i
  %145 = ptrtoint ptr %err_cap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %err_cap.i.i.i, align 4
  %and.i.i.i = and i32 %146, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool46.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool46.not.i.i.i, label %if.end45.i.i.i.myri10ge_enable_ecrc.exit.i.i_crit_edge, label %if.end48.i.i.i

if.end45.i.i.i.myri10ge_enable_ecrc.exit.i.i_crit_edge: ; preds = %if.end45.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_enable_ecrc.exit.i.i

if.end48.i.i.i:                                   ; preds = %if.end45.i.i.i
  %or.i.i.i = or i32 %146, 64
  %147 = ptrtoint ptr %err_cap.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %or.i.i.i, ptr %err_cap.i.i.i, align 4
  %call50.i.i.i = call i32 @pci_write_config_dword(ptr noundef nonnull %bridge.1.i.i.i, i32 noundef %add.i.i.i, i32 noundef %or.i.i.i) #24
  %init_name.i.i105.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %bridge.1.i.i.i, i32 0, i32 44, i32 3
  %148 = ptrtoint ptr %init_name.i.i105.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %init_name.i.i105.i.i.i, align 8
  %tobool.not.i.i106.i.i.i = icmp eq ptr %149, null
  br i1 %tobool.not.i.i106.i.i.i, label %if.end.i.i108.i.i.i, label %if.end48.i.i.i.pci_name.exit110.i.i.i_crit_edge

if.end48.i.i.i.pci_name.exit110.i.i.i_crit_edge:  ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %pci_name.exit110.i.i.i

if.end.i.i108.i.i.i:                              ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %dev.i107.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %bridge.1.i.i.i, i32 0, i32 44
  %150 = ptrtoint ptr %dev.i107.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev.i107.i.i.i, align 4
  br label %pci_name.exit110.i.i.i

pci_name.exit110.i.i.i:                           ; preds = %if.end.i.i108.i.i.i, %if.end48.i.i.i.pci_name.exit110.i.i.i_crit_edge
  %retval.0.i.i109.i.i.i = phi ptr [ %151, %if.end.i.i108.i.i.i ], [ %149, %if.end48.i.i.i.pci_name.exit110.i.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i.i.i, ptr noundef nonnull @.str.100, ptr noundef %retval.0.i.i109.i.i.i) #27
  br label %myri10ge_enable_ecrc.exit.i.i

myri10ge_enable_ecrc.exit.i.i:                    ; preds = %pci_name.exit110.i.i.i, %if.end45.i.i.i.myri10ge_enable_ecrc.exit.i.i_crit_edge, %pci_name.exit104.i.i.i, %if.end30.i.i.i.myri10ge_enable_ecrc.exit.i.i_crit_edge, %pci_name.exit98.i.i.i, %do.end.i.i.i, %if.end13.i.i.myri10ge_enable_ecrc.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err_cap.i.i.i) #24
  %call14.i.i = call fastcc i32 @myri10ge_dma_test(ptr noundef %add.ptr.i, i32 noundef 32) #24
  %152 = zext i32 %call14.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %call14.i.i, label %do.end22.i.i [
    i32 0, label %myri10ge_enable_ecrc.exit.i.i.if.end.i394_crit_edge
    i32 -7, label %myri10ge_enable_ecrc.exit.i.i.abort.i.i_crit_edge
  ]

myri10ge_enable_ecrc.exit.i.i.abort.i.i_crit_edge: ; preds = %myri10ge_enable_ecrc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort.i.i

myri10ge_enable_ecrc.exit.i.i.if.end.i394_crit_edge: ; preds = %myri10ge_enable_ecrc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end.i394

do.end22.i.i:                                     ; preds = %myri10ge_enable_ecrc.exit.i.i
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.80, i32 noundef %call14.i.i) #27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call14.i.i)
  %cmp24.i.i = icmp eq i32 %call14.i.i, -38
  br i1 %cmp24.i.i, label %do.end28.i.i, label %do.end22.i.i.abort.i.i_crit_edge

do.end22.i.i.abort.i.i_crit_edge:                 ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort.i.i

do.end28.i.i:                                     ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.83) #27
  br label %abort.i.i

abort.i.i:                                        ; preds = %do.end28.i.i, %do.end22.i.i.abort.i.i_crit_edge, %myri10ge_enable_ecrc.exit.i.i.abort.i.i_crit_edge, %set_fw_name.exit.i.i.abort.i.i_crit_edge, %do.end.i.i
  %153 = ptrtoint ptr %tx_boundary.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 2048, ptr %tx_boundary.i.i, align 4
  %fw_name_allocated.i54.i.i = getelementptr i8, ptr %call, i32 2564
  %154 = ptrtoint ptr %fw_name_allocated.i54.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %fw_name_allocated.i54.i.i, align 4, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i55.i.i = icmp eq i8 %155, 0
  br i1 %tobool.not.i55.i.i, label %abort.i.i.if.end.sink.split.i_crit_edge, label %abort.i.i.if.end.sink.split.sink.split.i_crit_edge

abort.i.i.if.end.sink.split.sink.split.i_crit_edge: ; preds = %abort.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end.sink.split.sink.split.i

abort.i.i.if.end.sink.split.i_crit_edge:          ; preds = %abort.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end.sink.split.i

if.end.sink.split.sink.split.i:                   ; preds = %abort.i.i.if.end.sink.split.sink.split.i_crit_edge, %do.end.i393.if.end.sink.split.sink.split.i_crit_edge
  %.str.115.sink.ph.i = phi ptr [ @.str.72, %do.end.i393.if.end.sink.split.sink.split.i_crit_edge ], [ @.str.115, %abort.i.i.if.end.sink.split.sink.split.i_crit_edge ]
  %fw_name_allocated.i54.i.sink.ph.i = phi ptr [ %fw_name_allocated.i.i, %do.end.i393.if.end.sink.split.sink.split.i_crit_edge ], [ %fw_name_allocated.i54.i.i, %abort.i.i.if.end.sink.split.sink.split.i_crit_edge ]
  %fw_name.i56.i.i = getelementptr i8, ptr %call, i32 2568
  %156 = ptrtoint ptr %fw_name.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %fw_name.i56.i.i, align 4
  call void @kfree(ptr noundef %157) #24
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %if.end.sink.split.sink.split.i, %abort.i.i.if.end.sink.split.i_crit_edge, %do.end.i393.if.end.sink.split.i_crit_edge
  %.str.115.sink.i = phi ptr [ @.str.72, %do.end.i393.if.end.sink.split.i_crit_edge ], [ @.str.115, %abort.i.i.if.end.sink.split.i_crit_edge ], [ %.str.115.sink.ph.i, %if.end.sink.split.sink.split.i ]
  %fw_name_allocated.i54.i.sink.i = phi ptr [ %fw_name_allocated.i.i, %do.end.i393.if.end.sink.split.i_crit_edge ], [ %fw_name_allocated.i54.i.i, %abort.i.i.if.end.sink.split.i_crit_edge ], [ %fw_name_allocated.i54.i.sink.ph.i, %if.end.sink.split.sink.split.i ]
  %fw_name1.i58.i.i = getelementptr i8, ptr %call, i32 2568
  %158 = ptrtoint ptr %fw_name1.i58.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %.str.115.sink.i, ptr %fw_name1.i58.i.i, align 4
  %159 = ptrtoint ptr %fw_name_allocated.i54.i.sink.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %fw_name_allocated.i54.i.sink.i, align 4
  br label %if.end.i394

if.end.i394:                                      ; preds = %if.end.sink.split.i, %myri10ge_enable_ecrc.exit.i.i.if.end.i394_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lnk.i) #24
  br label %if.end23.i

do.end11.i:                                       ; preds = %if.end104
  %160 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pdev6, align 4
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %161, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev13.i, ptr noundef nonnull @.str.64) #27
  %tx_boundary14.i = getelementptr i8, ptr %call, i32 2308
  %162 = ptrtoint ptr %tx_boundary14.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 4096, ptr %tx_boundary14.i, align 4
  %fw_name_allocated.i77.i = getelementptr i8, ptr %call, i32 2564
  %163 = ptrtoint ptr %fw_name_allocated.i77.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %fw_name_allocated.i77.i, align 4, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i78.i = icmp eq i8 %164, 0
  br i1 %tobool.not.i78.i, label %do.end11.i.set_fw_name.exit83.i_crit_edge, label %if.then.i80.i

do.end11.i.set_fw_name.exit83.i_crit_edge:        ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %set_fw_name.exit83.i

if.then.i80.i:                                    ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #26
  %fw_name.i79.i = getelementptr i8, ptr %call, i32 2568
  %165 = ptrtoint ptr %fw_name.i79.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %fw_name.i79.i, align 4
  call void @kfree(ptr noundef %166) #24
  br label %set_fw_name.exit83.i

set_fw_name.exit83.i:                             ; preds = %if.then.i80.i, %do.end11.i.set_fw_name.exit83.i_crit_edge
  %fw_name1.i81.i = getelementptr i8, ptr %call, i32 2568
  %167 = ptrtoint ptr %fw_name1.i81.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @.str.72, ptr %fw_name1.i81.i, align 4
  %168 = ptrtoint ptr %fw_name_allocated.i77.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %fw_name_allocated.i77.i, align 4
  br label %if.end23.i

do.end18.i:                                       ; preds = %if.end104
  %169 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pdev6, align 4
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %170, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20.i, ptr noundef nonnull @.str.67) #27
  %tx_boundary21.i = getelementptr i8, ptr %call, i32 2308
  %171 = ptrtoint ptr %tx_boundary21.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 2048, ptr %tx_boundary21.i, align 4
  %fw_name_allocated.i84.i = getelementptr i8, ptr %call, i32 2564
  %172 = ptrtoint ptr %fw_name_allocated.i84.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %fw_name_allocated.i84.i, align 4, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool.not.i85.i = icmp eq i8 %173, 0
  br i1 %tobool.not.i85.i, label %do.end18.i.set_fw_name.exit90.i_crit_edge, label %if.then.i87.i

do.end18.i.set_fw_name.exit90.i_crit_edge:        ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %set_fw_name.exit90.i

if.then.i87.i:                                    ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #26
  %fw_name.i86.i = getelementptr i8, ptr %call, i32 2568
  %174 = ptrtoint ptr %fw_name.i86.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %fw_name.i86.i, align 4
  call void @kfree(ptr noundef %175) #24
  br label %set_fw_name.exit90.i

set_fw_name.exit90.i:                             ; preds = %if.then.i87.i, %do.end18.i.set_fw_name.exit90.i_crit_edge
  %fw_name1.i88.i = getelementptr i8, ptr %call, i32 2568
  %176 = ptrtoint ptr %fw_name1.i88.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @.str.115, ptr %fw_name1.i88.i, align 4
  %177 = ptrtoint ptr %fw_name_allocated.i84.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 0, ptr %fw_name_allocated.i84.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %set_fw_name.exit90.i, %set_fw_name.exit83.i, %if.end.i394
  call void @kernel_param_lock(ptr noundef null) #24
  %178 = load ptr, ptr @myri10ge_fw_name, align 4
  %cmp24.not.i = icmp eq ptr %178, null
  br i1 %cmp24.not.i, label %if.end23.i.if.end30.i_crit_edge, label %if.then26.i

if.end23.i.if.end30.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end30.i

if.then26.i:                                      ; preds = %if.end23.i
  %call27.i = call noalias ptr @kstrdup(ptr noundef nonnull %178, i32 noundef 3264) #24
  %tobool.not.i395 = icmp eq ptr %call27.i, null
  br i1 %tobool.not.i395, label %if.then26.i.if.end30.i_crit_edge, label %if.then28.i396

if.then26.i.if.end30.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end30.i

if.then28.i396:                                   ; preds = %if.then26.i
  %fw_name_allocated.i91.i = getelementptr i8, ptr %call, i32 2564
  %179 = ptrtoint ptr %fw_name_allocated.i91.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %fw_name_allocated.i91.i, align 4, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool.not.i92.i = icmp eq i8 %180, 0
  br i1 %tobool.not.i92.i, label %if.then28.i396.set_fw_name.exit97.i_crit_edge, label %if.then.i94.i

if.then28.i396.set_fw_name.exit97.i_crit_edge:    ; preds = %if.then28.i396
  call void @__sanitizer_cov_trace_pc() #26
  br label %set_fw_name.exit97.i

if.then.i94.i:                                    ; preds = %if.then28.i396
  call void @__sanitizer_cov_trace_pc() #26
  %fw_name.i93.i = getelementptr i8, ptr %call, i32 2568
  %181 = ptrtoint ptr %fw_name.i93.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %fw_name.i93.i, align 4
  call void @kfree(ptr noundef %182) #24
  br label %set_fw_name.exit97.i

set_fw_name.exit97.i:                             ; preds = %if.then.i94.i, %if.then28.i396.set_fw_name.exit97.i_crit_edge
  %fw_name1.i95.i = getelementptr i8, ptr %call, i32 2568
  %183 = ptrtoint ptr %fw_name1.i95.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call27.i, ptr %fw_name1.i95.i, align 4
  %184 = ptrtoint ptr %fw_name_allocated.i91.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %fw_name_allocated.i91.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %set_fw_name.exit97.i, %if.then26.i.if.end30.i_crit_edge, %if.end23.i.if.end30.i_crit_edge
  %tobool45.not.i = phi i1 [ true, %if.then26.i.if.end30.i_crit_edge ], [ false, %set_fw_name.exit97.i ], [ true, %if.end23.i.if.end30.i_crit_edge ]
  call void @kernel_param_unlock(ptr noundef null) #24
  %185 = ptrtoint ptr %board_number to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %board_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %186)
  %cmp31.i = icmp ult i32 %186, 8
  br i1 %cmp31.i, label %land.lhs.true.i, label %if.end30.i.if.end44.i_crit_edge

if.end30.i.if.end44.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end44.i

land.lhs.true.i:                                  ; preds = %if.end30.i
  %arrayidx.i397 = getelementptr [8 x ptr], ptr @myri10ge_fw_names, i32 0, i32 %186
  %187 = ptrtoint ptr %arrayidx.i397 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx.i397, align 4
  %cmp34.not.i = icmp eq ptr %188, null
  br i1 %cmp34.not.i, label %land.lhs.true.i.if.end44.i_crit_edge, label %land.lhs.true36.i

land.lhs.true.i.if.end44.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end44.i

land.lhs.true36.i:                                ; preds = %land.lhs.true.i
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load1_noabort(i32 %189)
  %char0.i = load i8, ptr %188, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool40.not.i = icmp eq i8 %char0.i, 0
  br i1 %tobool40.not.i, label %land.lhs.true36.i.if.end44.i_crit_edge, label %if.then41.i

land.lhs.true36.i.if.end44.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end44.i

if.then41.i:                                      ; preds = %land.lhs.true36.i
  %fw_name_allocated.i98.i = getelementptr i8, ptr %call, i32 2564
  %190 = ptrtoint ptr %fw_name_allocated.i98.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %fw_name_allocated.i98.i, align 4, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool.not.i99.i = icmp eq i8 %191, 0
  br i1 %tobool.not.i99.i, label %if.then41.i.if.end44.thread.i_crit_edge, label %if.then.i101.i

if.then41.i.if.end44.thread.i_crit_edge:          ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end44.thread.i

if.then.i101.i:                                   ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #26
  %fw_name.i100.i = getelementptr i8, ptr %call, i32 2568
  %192 = ptrtoint ptr %fw_name.i100.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %fw_name.i100.i, align 4
  call void @kfree(ptr noundef %193) #24
  br label %if.end44.thread.i

if.end44.thread.i:                                ; preds = %if.then.i101.i, %if.then41.i.if.end44.thread.i_crit_edge
  %fw_name1.i102.i = getelementptr i8, ptr %call, i32 2568
  %194 = ptrtoint ptr %fw_name1.i102.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %188, ptr %fw_name1.i102.i, align 4
  %195 = ptrtoint ptr %fw_name_allocated.i98.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %fw_name_allocated.i98.i, align 4
  br label %do.end49.i

if.end44.i:                                       ; preds = %land.lhs.true36.i.if.end44.i_crit_edge, %land.lhs.true.i.if.end44.i_crit_edge, %if.end30.i.if.end44.i_crit_edge
  br i1 %tobool45.not.i, label %if.end44.i.myri10ge_select_firmware.exit_crit_edge, label %if.end44.i.do.end49.i_crit_edge

if.end44.i.do.end49.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end49.i

if.end44.i.myri10ge_select_firmware.exit_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_select_firmware.exit

do.end49.i:                                       ; preds = %if.end44.i.do.end49.i_crit_edge, %if.end44.thread.i
  %196 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pdev6, align 4
  %dev51.i = getelementptr inbounds %struct.pci_dev, ptr %197, i32 0, i32 44
  %fw_name52.i = getelementptr i8, ptr %call, i32 2568
  %198 = ptrtoint ptr %fw_name52.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %fw_name52.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev51.i, ptr noundef nonnull @.str.70, ptr noundef %199) #27
  br label %myri10ge_select_firmware.exit

myri10ge_select_firmware.exit:                    ; preds = %do.end49.i, %if.end44.i.myri10ge_select_firmware.exit_crit_edge
  %call106 = call fastcc i32 @myri10ge_load_firmware(ptr noundef %add.ptr.i, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107.not = icmp eq i32 %call106, 0
  br i1 %cmp107.not, label %if.end114, label %do.end112

do.end112:                                        ; preds = %myri10ge_select_firmware.exit
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #27
  br label %abort_with_ioremap

if.end114:                                        ; preds = %myri10ge_select_firmware.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i) #24
  %200 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %pdev6, align 4
  %num_slices.i = getelementptr i8, ptr %call, i32 2312
  %202 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 1, ptr %num_slices.i, align 4
  %call.i398 = call i32 @netif_get_num_default_rss_queues() #24
  %203 = load i32, ptr @myri10ge_max_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %203)
  %cmp.i399 = icmp eq i32 %203, 1
  br i1 %cmp.i399, label %if.end114.myri10ge_probe_slices.exit_crit_edge, label %lor.lhs.false.i

if.end114.myri10ge_probe_slices.exit_crit_edge:   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_probe_slices.exit

lor.lhs.false.i:                                  ; preds = %if.end114
  %msix_cap.i = getelementptr inbounds %struct.pci_dev, ptr %201, i32 0, i32 21
  %204 = ptrtoint ptr %msix_cap.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %msix_cap.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool.not.i400 = icmp eq i8 %205, 0
  br i1 %tobool.not.i400, label %lor.lhs.false.i.myri10ge_probe_slices.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.myri10ge_probe_slices.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_probe_slices.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %203)
  %cmp3.i = icmp eq i32 %203, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i398)
  %cmp4.i401 = icmp slt i32 %call.i398, 2
  %or.cond.i402 = select i1 %cmp3.i, i1 %cmp4.i401, i1 false
  br i1 %or.cond.i402, label %lor.lhs.false2.i.myri10ge_probe_slices.exit_crit_edge, label %if.end.i403

lor.lhs.false2.i.myri10ge_probe_slices.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_probe_slices.exit

if.end.i403:                                      ; preds = %lor.lhs.false2.i
  %fw_name.i = getelementptr i8, ptr %call, i32 2568
  %206 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %fw_name.i, align 4
  %fw_name_allocated.i = getelementptr i8, ptr %call, i32 2564
  %208 = ptrtoint ptr %fw_name_allocated.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %fw_name_allocated.i, align 4, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool5.not.i = icmp eq i8 %209, 0
  %210 = ptrtoint ptr %fw_name_allocated.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 0, ptr %fw_name_allocated.i, align 4
  %211 = load ptr, ptr @myri10ge_fw_name, align 4
  %cmp7.not.i = icmp eq ptr %211, null
  br i1 %cmp7.not.i, label %if.else.i407, label %do.end.i406

do.end.i406:                                      ; preds = %if.end.i403
  %212 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %pdev6, align 4
  %dev.i404 = getelementptr inbounds %struct.pci_dev, ptr %213, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i404, ptr noundef nonnull @.str.164, ptr noundef nonnull %211) #27
  %214 = load ptr, ptr @myri10ge_fw_name, align 4
  %215 = ptrtoint ptr %fw_name_allocated.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %fw_name_allocated.i, align 4, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool.not.i.i405 = icmp eq i8 %216, 0
  br i1 %tobool.not.i.i405, label %do.end.i406.if.end14.i_crit_edge, label %if.then.i.i

do.end.i406.if.end14.i_crit_edge:                 ; preds = %do.end.i406
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end14.i

if.then.i.i:                                      ; preds = %do.end.i406
  call void @__sanitizer_cov_trace_pc() #26
  %217 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %fw_name.i, align 4
  call void @kfree(ptr noundef %218) #24
  br label %if.end14.i

if.else.i407:                                     ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #26
  %cmp10.i = icmp eq ptr %207, @.str.72
  %.str.174..str.175.i = select i1 %cmp10.i, ptr @.str.174, ptr @.str.175
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i407, %if.then.i.i, %do.end.i406.if.end14.i_crit_edge
  %.str.174.sink.i = phi ptr [ %214, %do.end.i406.if.end14.i_crit_edge ], [ %214, %if.then.i.i ], [ %.str.174..str.175.i, %if.else.i407 ]
  %219 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %.str.174.sink.i, ptr %fw_name.i, align 4
  %220 = ptrtoint ptr %fw_name_allocated.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %fw_name_allocated.i, align 4
  %call15.i408 = call fastcc i32 @myri10ge_load_firmware(ptr noundef %add.ptr.i, i32 noundef 0) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i408)
  %cmp16.not.i = icmp eq i32 %call15.i408, 0
  br i1 %cmp16.not.i, label %if.end25.i, label %do.end20.i

do.end20.i:                                       ; preds = %if.end14.i
  %dev21.i = getelementptr inbounds %struct.pci_dev, ptr %201, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21.i, ptr noundef nonnull @.str.167) #27
  br i1 %tobool5.not.i, label %do.end20.i.myri10ge_probe_slices.exit_crit_edge, label %if.then23.i

do.end20.i.myri10ge_probe_slices.exit_crit_edge:  ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_probe_slices.exit

if.then23.i:                                      ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #26
  call void @kfree(ptr noundef %207) #24
  br label %myri10ge_probe_slices.exit

if.end25.i:                                       ; preds = %if.end14.i
  %221 = call ptr @memset(ptr %cmd.i, i32 0, i32 12)
  %call26.i = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 1, ptr noundef nonnull %cmd.i, i32 noundef 0) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.not.i = icmp eq i32 %call26.i, 0
  br i1 %cmp27.not.i, label %if.end34.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #26
  %222 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %pdev6, align 4
  %dev33.i = getelementptr inbounds %struct.pci_dev, ptr %223, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33.i, ptr noundef nonnull @.str.33) #27
  br label %abort_with_fw.i

if.end34.i:                                       ; preds = %if.end25.i
  %224 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %cmd.i, align 4
  %div202.i = lshr i32 %225, 2
  %max_intr_slots.i = getelementptr i8, ptr %call, i32 2328
  %226 = ptrtoint ptr %max_intr_slots.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %div202.i, ptr %max_intr_slots.i, align 4
  %mul.i = and i32 %225, -4
  store i32 %mul.i, ptr %cmd.i, align 4
  %call37.i = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 13, ptr noundef nonnull %cmd.i, i32 noundef 0) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.not.i = icmp eq i32 %call37.i, 0
  br i1 %cmp38.not.i, label %if.end45.i, label %do.end42.i

do.end42.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #26
  %227 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %pdev6, align 4
  %dev44.i = getelementptr inbounds %struct.pci_dev, ptr %228, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44.i, ptr noundef nonnull @.str.172) #27
  br label %abort_with_fw.i

if.end45.i:                                       ; preds = %if.end34.i
  %call46.i = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 35, ptr noundef nonnull %cmd.i, i32 noundef 0) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.not.i = icmp eq i32 %call46.i, 0
  br i1 %cmp47.not.i, label %if.else49.i, label %if.end45.i.abort_with_fw.i_crit_edge

if.end45.i.abort_with_fw.i_crit_edge:             ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_fw.i

if.else49.i:                                      ; preds = %if.end45.i
  %229 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %cmd.i, align 4
  %231 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %num_slices.i, align 4
  %232 = load i32, ptr @myri10ge_msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool53.not.i = icmp eq i32 %232, 0
  br i1 %tobool53.not.i, label %if.else49.i.abort_with_fw.i_crit_edge, label %if.end55.i

if.else49.i.abort_with_fw.i_crit_edge:            ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_fw.i

if.end55.i:                                       ; preds = %if.else49.i
  %233 = load i32, ptr @myri10ge_max_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %233)
  %cmp56.i = icmp eq i32 %233, -1
  br i1 %cmp56.i, label %if.then57.i, label %if.end55.i.if.end58.i_crit_edge

if.end55.i.if.end58.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end58.i

if.then57.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #26
  store i32 %call.i398, ptr @myri10ge_max_slices, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then57.i, %if.end55.i.if.end58.i_crit_edge
  %234 = load i32, ptr @myri10ge_max_slices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %230, i32 %234)
  %cmp60.i = icmp sgt i32 %230, %234
  br i1 %cmp60.i, label %if.then61.i, label %if.end58.i.if.end63.i_crit_edge

if.end58.i.if.end63.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end63.i

if.then61.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #26
  %235 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %234, ptr %num_slices.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then61.i, %if.end58.i.if.end63.i_crit_edge
  %236 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %num_slices.i, align 4
  %238 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %237, i32 8) #24
  %239 = extractvalue { i32, i1 } %238, 1
  br i1 %239, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !614

kcalloc.exit.thread.i:                            ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #26
  %msix_vectors222.i = getelementptr i8, ptr %call, i32 2380
  %240 = ptrtoint ptr %msix_vectors222.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr null, ptr %msix_vectors222.i, align 4
  br label %abort_with_fw.i

if.end7.i.i.i:                                    ; preds = %if.end63.i
  %241 = extractvalue { i32, i1 } %238, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %241, i32 noundef 3520) #29
  %msix_vectors.i = getelementptr i8, ptr %call, i32 2380
  %242 = ptrtoint ptr %msix_vectors.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %call8.i.i.i, ptr %msix_vectors.i, align 4
  %cmp67.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp67.i, label %if.end7.i.i.i.abort_with_fw.i_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.abort_with_fw.i_crit_edge:          ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_fw.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %243 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %num_slices.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %cmp71228.i = icmp sgt i32 %244, 0
  br i1 %cmp71228.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.no_msix.i_crit_edge

for.cond.preheader.i.no_msix.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %no_msix.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

while.cond.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %249)
  %cmp75230.i = icmp sgt i32 %249, 1
  br i1 %cmp75230.i, label %while.cond.preheader.i.while.body.i413_crit_edge, label %while.cond.preheader.i.no_msix.i_crit_edge

while.cond.preheader.i.no_msix.i_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %no_msix.i

while.cond.preheader.i.while.body.i413_crit_edge: ; preds = %while.cond.preheader.i
  br label %while.body.i413

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0229.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %conv.i412 = trunc i32 %i.0229.i to i16
  %245 = ptrtoint ptr %msix_vectors.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %msix_vectors.i, align 4
  %entry73.i = getelementptr %struct.msix_entry, ptr %246, i32 %i.0229.i, i32 1
  %247 = ptrtoint ptr %entry73.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %conv.i412, ptr %entry73.i, align 4
  %inc.i = add nuw nsw i32 %i.0229.i, 1
  %248 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %num_slices.i, align 4
  %cmp71.i = icmp slt i32 %inc.i, %249
  br i1 %cmp71.i, label %for.body.i.for.body.i_crit_edge, label %while.cond.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body.i

while.body.i413:                                  ; preds = %if.else117.i.while.body.i413_crit_edge, %while.cond.preheader.i.while.body.i413_crit_edge
  %250 = phi i32 [ %call105.i, %if.else117.i.while.body.i413_crit_edge ], [ %249, %while.cond.preheader.i.while.body.i413_crit_edge ]
  %251 = call i32 @llvm.ctlz.i32(i32 %250, i1 true) #24, !range !615
  %shl.i.i = lshr i32 -2147483648, %251
  %252 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %shl.i.i, ptr %num_slices.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %251)
  %cmp98.i = icmp eq i32 %251, 31
  br i1 %cmp98.i, label %while.body.i413.no_msix.i_crit_edge, label %if.end101.i

while.body.i413.no_msix.i_crit_edge:              ; preds = %while.body.i413
  call void @__sanitizer_cov_trace_pc() #26
  br label %no_msix.i

if.end101.i:                                      ; preds = %while.body.i413
  %253 = ptrtoint ptr %msix_vectors.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %msix_vectors.i, align 4
  %call105.i = call i32 @pci_enable_msix_range(ptr noundef %201, ptr noundef %254, i32 noundef %shl.i.i, i32 noundef %shl.i.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i)
  %cmp106.i = icmp slt i32 %call105.i, 0
  br i1 %cmp106.i, label %if.end101.i.no_msix.i_crit_edge, label %if.end109.i

if.end101.i.no_msix.i_crit_edge:                  ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %no_msix.i

if.end109.i:                                      ; preds = %if.end101.i
  call void @pci_disable_msix(ptr noundef %201) #24
  %255 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %num_slices.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call105.i, i32 %256)
  %cmp111.i = icmp eq i32 %call105.i, %256
  br i1 %cmp111.i, label %if.then113.i, label %if.else117.i

if.then113.i:                                     ; preds = %if.end109.i
  br i1 %tobool5.not.i, label %if.then113.i.myri10ge_probe_slices.exit_crit_edge, label %if.then115.i

if.then113.i.myri10ge_probe_slices.exit_crit_edge: ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_probe_slices.exit

if.then115.i:                                     ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #26
  call void @kfree(ptr noundef %207) #24
  br label %myri10ge_probe_slices.exit

if.else117.i:                                     ; preds = %if.end109.i
  %257 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %call105.i, ptr %num_slices.i, align 4
  %cmp75.i = icmp ugt i32 %call105.i, 1
  br i1 %cmp75.i, label %if.else117.i.while.body.i413_crit_edge, label %if.else117.i.no_msix.i_crit_edge

if.else117.i.no_msix.i_crit_edge:                 ; preds = %if.else117.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %no_msix.i

if.else117.i.while.body.i413_crit_edge:           ; preds = %if.else117.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.body.i413

no_msix.i:                                        ; preds = %if.else117.i.no_msix.i_crit_edge, %if.end101.i.no_msix.i_crit_edge, %while.body.i413.no_msix.i_crit_edge, %while.cond.preheader.i.no_msix.i_crit_edge, %for.cond.preheader.i.no_msix.i_crit_edge
  %258 = ptrtoint ptr %msix_vectors.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %.pr.i = load ptr, ptr %msix_vectors.i, align 4
  %cmp121.not.i = icmp eq ptr %.pr.i, null
  br i1 %cmp121.not.i, label %no_msix.i.abort_with_fw.i_crit_edge, label %if.then123.i

no_msix.i.abort_with_fw.i_crit_edge:              ; preds = %no_msix.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_fw.i

if.then123.i:                                     ; preds = %no_msix.i
  call void @__sanitizer_cov_trace_pc() #26
  call void @kfree(ptr noundef nonnull %.pr.i) #24
  %259 = ptrtoint ptr %msix_vectors.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr null, ptr %msix_vectors.i, align 4
  br label %abort_with_fw.i

abort_with_fw.i:                                  ; preds = %if.then123.i, %no_msix.i.abort_with_fw.i_crit_edge, %if.end7.i.i.i.abort_with_fw.i_crit_edge, %kcalloc.exit.thread.i, %if.else49.i.abort_with_fw.i_crit_edge, %if.end45.i.abort_with_fw.i_crit_edge, %do.end42.i, %do.end31.i
  %260 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 1, ptr %num_slices.i, align 4
  %261 = ptrtoint ptr %fw_name_allocated.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %fw_name_allocated.i, align 4, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool.not.i216.i = icmp eq i8 %262, 0
  br i1 %tobool.not.i216.i, label %abort_with_fw.i.set_fw_name.exit220.i_crit_edge, label %if.then.i218.i

abort_with_fw.i.set_fw_name.exit220.i_crit_edge:  ; preds = %abort_with_fw.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %set_fw_name.exit220.i

if.then.i218.i:                                   ; preds = %abort_with_fw.i
  call void @__sanitizer_cov_trace_pc() #26
  %263 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %fw_name.i, align 4
  call void @kfree(ptr noundef %264) #24
  br label %set_fw_name.exit220.i

set_fw_name.exit220.i:                            ; preds = %if.then.i218.i, %abort_with_fw.i.set_fw_name.exit220.i_crit_edge
  %265 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %207, ptr %fw_name.i, align 4
  %266 = ptrtoint ptr %fw_name_allocated.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %209, ptr %fw_name_allocated.i, align 4
  %call129.i = call fastcc i32 @myri10ge_load_firmware(ptr noundef %add.ptr.i, i32 noundef 0) #24
  br label %myri10ge_probe_slices.exit

myri10ge_probe_slices.exit:                       ; preds = %set_fw_name.exit220.i, %if.then115.i, %if.then113.i.myri10ge_probe_slices.exit_crit_edge, %if.then23.i, %do.end20.i.myri10ge_probe_slices.exit_crit_edge, %lor.lhs.false2.i.myri10ge_probe_slices.exit_crit_edge, %lor.lhs.false.i.myri10ge_probe_slices.exit_crit_edge, %if.end114.myri10ge_probe_slices.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #24
  %267 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %pdev6, align 4
  %269 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %num_slices.i, align 4
  %mul.i417 = mul i32 %270, 896
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i417, i32 noundef 3520) #29
  %271 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %call9.i.i.i, ptr %add.ptr.i, align 4
  %cmp.i423 = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp.i423, label %myri10ge_probe_slices.exit.do.end121_crit_edge, label %for.cond.preheader.i424

myri10ge_probe_slices.exit.do.end121_crit_edge:   ; preds = %myri10ge_probe_slices.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end121

for.cond.preheader.i424:                          ; preds = %myri10ge_probe_slices.exit
  %272 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %num_slices.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %cmp553.i = icmp sgt i32 %273, 0
  br i1 %cmp553.i, label %for.body.lr.ph.i, label %for.cond.preheader.i424.if.end123_crit_edge

for.cond.preheader.i424.if.end123_crit_edge:      ; preds = %for.cond.preheader.i424
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end123

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i424
  %max_intr_slots.i425 = getelementptr i8, ptr %call, i32 2328
  %dev.i426 = getelementptr inbounds %struct.pci_dev, ptr %268, i32 0, i32 44
  br label %for.body.i429

for.body.i429:                                    ; preds = %if.end21.i.for.body.i429_crit_edge, %for.body.lr.ph.i
  %i.054.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i430, %if.end21.i.for.body.i429_crit_edge ]
  %274 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %add.ptr.i, align 4
  %276 = ptrtoint ptr %max_intr_slots.i425 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %max_intr_slots.i425, align 4
  %mul7.i = shl i32 %277, 2
  %rx_done.i = getelementptr %struct.myri10ge_slice_state, ptr %275, i32 %i.054.i, i32 3
  %bus.i427 = getelementptr %struct.myri10ge_slice_state, ptr %275, i32 %i.054.i, i32 3, i32 1
  %call.i.i428 = call ptr @dma_alloc_attrs(ptr noundef %dev.i426, i32 noundef %mul7.i, ptr noundef %bus.i427, i32 noundef 3264, i32 noundef 0) #24
  %278 = ptrtoint ptr %rx_done.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %call.i.i428, ptr %rx_done.i, align 8
  %cmp13.i = icmp eq ptr %call.i.i428, null
  br i1 %cmp13.i, label %for.body.i429.abort.i_crit_edge, label %if.end15.i

for.body.i429.abort.i_crit_edge:                  ; preds = %for.body.i429
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort.i

if.end15.i:                                       ; preds = %for.body.i429
  %fw_stats_bus.i = getelementptr %struct.myri10ge_slice_state, ptr %275, i32 %i.054.i, i32 10
  %call.i52.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i426, i32 noundef 64, ptr noundef %fw_stats_bus.i, i32 noundef 3264, i32 noundef 0) #24
  %fw_stats.i = getelementptr %struct.myri10ge_slice_state, ptr %275, i32 %i.054.i, i32 9
  %279 = ptrtoint ptr %fw_stats.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %call.i52.i, ptr %fw_stats.i, align 16
  %cmp19.i = icmp eq ptr %call.i52.i, null
  br i1 %cmp19.i, label %if.end15.i.abort.i_crit_edge, label %if.end21.i

if.end15.i.abort.i_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort.i

if.end21.i:                                       ; preds = %if.end15.i
  %mgp22.i = getelementptr %struct.myri10ge_slice_state, ptr %275, i32 %i.054.i, i32 6
  %280 = ptrtoint ptr %mgp22.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %add.ptr.i, ptr %mgp22.i, align 16
  %281 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %dev5, align 4
  %dev24.i = getelementptr %struct.myri10ge_slice_state, ptr %275, i32 %i.054.i, i32 4
  %283 = ptrtoint ptr %dev24.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %282, ptr %dev24.i, align 8
  %napi.i = getelementptr %struct.myri10ge_slice_state, ptr %275, i32 %i.054.i, i32 5
  %284 = load i32, ptr @myri10ge_napi_weight, align 4
  call void @netif_napi_add(ptr noundef %282, ptr noundef %napi.i, ptr noundef nonnull @myri10ge_poll, i32 noundef %284) #24
  %inc.i430 = add nuw nsw i32 %i.054.i, 1
  %285 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %num_slices.i, align 4
  %cmp5.i = icmp slt i32 %inc.i430, %286
  br i1 %cmp5.i, label %if.end21.i.for.body.i429_crit_edge, label %if.end21.i.if.end123_crit_edge

if.end21.i.if.end123_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end123

if.end21.i.for.body.i429_crit_edge:               ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body.i429

abort.i:                                          ; preds = %if.end15.i.abort.i_crit_edge, %for.body.i429.abort.i_crit_edge
  call fastcc void @myri10ge_free_slices(ptr noundef %add.ptr.i) #24
  br label %do.end121

do.end121:                                        ; preds = %abort.i, %myri10ge_probe_slices.exit.do.end121_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30) #27
  br label %abort_with_firmware

if.end123:                                        ; preds = %if.end21.i.if.end123_crit_edge, %for.cond.preheader.i424.if.end123_crit_edge
  %287 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %num_slices.i, align 4
  %call124 = call i32 @netif_set_real_num_tx_queues(ptr noundef nonnull %call, i32 noundef %288) #24
  %289 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %num_slices.i, align 4
  %call126 = call i32 @netif_set_real_num_rx_queues(ptr noundef nonnull %call, i32 noundef %290) #24
  %call127 = call fastcc i32 @myri10ge_reset(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128.not = icmp eq i32 %call127, 0
  br i1 %cmp128.not, label %if.end135, label %do.end133

do.end133:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33) #27
  br label %abort_with_slices

if.end135:                                        ; preds = %if.end123
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %291 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %292 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %293 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 9000, ptr %max_mtu, align 4
  %294 = load i32, ptr @myri10ge_initial_mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9000, i32 %294)
  %cmp137 = icmp ugt i32 %294, 9000
  br i1 %cmp137, label %if.then139, label %if.end135.if.end141_crit_edge

if.end135.if.end141_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end141

if.then139:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #26
  store i32 9000, ptr @myri10ge_initial_mtu, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %if.end135.if.end141_crit_edge
  %295 = load i32, ptr @myri10ge_initial_mtu, align 4
  %296 = ptrtoint ptr %min_mtu to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %min_mtu, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %295, i32 %297)
  %cmp143 = icmp ult i32 %295, %297
  br i1 %cmp143, label %if.then145, label %if.end141.if.end147_crit_edge

if.end141.if.end147_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end147

if.then145:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #26
  store i32 %297, ptr @myri10ge_initial_mtu, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then145, %if.end141.if.end147_crit_edge
  %298 = load i32, ptr @myri10ge_initial_mtu, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 20
  %299 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %298, ptr %mtu, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %300 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr @myri10ge_netdev_ops, ptr %netdev_ops, align 8
  %features = getelementptr i8, ptr %call, i32 2996
  %301 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %features, align 4
  %conv148 = zext i32 %302 to i64
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %or150 = or i64 %conv148, 1099511628032
  %303 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %303)
  store i64 %or150, ptr %hw_features, align 8
  %or152 = or i64 %conv148, 1099511628064
  %features153 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %304 = ptrtoint ptr %features153 to i32
  call void @__asan_store8_noabort(i32 %304)
  store i64 %or152, ptr %features153, align 16
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 26
  %305 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %305)
  %306 = load i64, ptr %vlan_features, align 8
  %or156 = or i64 %306, %conv148
  store i64 %or156, ptr %vlan_features, align 8
  %fw_ver_tiny = getelementptr i8, ptr %call, i32 2968
  %307 = ptrtoint ptr %fw_ver_tiny to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %fw_ver_tiny, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %308)
  %cmp157 = icmp slt i32 %308, 37
  br i1 %cmp157, label %if.end162, label %if.end147.if.end169_crit_edge

if.end147.if.end169_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end169

if.end162:                                        ; preds = %if.end147
  %and161 = and i64 %or156, -1048577
  %309 = ptrtoint ptr %vlan_features to i32
  call void @__asan_store8_noabort(i32 %309)
  store i64 %and161, ptr %vlan_features, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %308)
  %cmp164 = icmp slt i32 %308, 32
  br i1 %cmp164, label %if.then166, label %if.end162.if.end169_crit_edge

if.end162.if.end169_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end169

if.then166:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #26
  %310 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %310)
  %311 = load i64, ptr %vlan_features, align 8
  %and168 = and i64 %311, -65537
  store i64 %and168, ptr %vlan_features, align 8
  br label %if.end169

if.end169:                                        ; preds = %if.then166, %if.end162.if.end169_crit_edge, %if.end147.if.end169_crit_edge
  %call170 = call fastcc i32 @myri10ge_request_irq(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %cmp171.not = icmp eq i32 %call170, 0
  br i1 %cmp171.not, label %if.end174, label %if.end169.abort_with_slices_crit_edge

if.end169.abort_with_slices_crit_edge:            ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_slices

if.end174:                                        ; preds = %if.end169
  call fastcc void @myri10ge_free_irq(ptr noundef %add.ptr.i)
  %call175 = call i32 @pci_save_state(ptr noundef %pdev) #24
  %watchdog_timer = getelementptr i8, ptr %call, i32 2504
  call void @init_timer_key(ptr noundef %watchdog_timer, ptr noundef nonnull @myri10ge_watchdog_timer, i32 noundef 0, ptr noundef nonnull @.str.36, ptr noundef nonnull @myri10ge_probe.__key.35) #24
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %312 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr @myri10ge_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_work = getelementptr i8, ptr %call, i32 2460
  call void @__init_work(ptr noundef %watchdog_work, i32 noundef 0) #24
  %313 = ptrtoint ptr %watchdog_work to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 -64, ptr %watchdog_work, align 4
  %lockdep_map = getelementptr i8, ptr %call, i32 2476
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @myri10ge_probe.__key.37, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #24
  %entry183 = getelementptr i8, ptr %call, i32 2464
  %314 = ptrtoint ptr %entry183 to i32
  call void @__asan_store4_noabort(i32 %314)
  store volatile ptr %entry183, ptr %entry183, align 4
  %prev.i = getelementptr i8, ptr %call, i32 2468
  %315 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %entry183, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call, i32 2472
  %316 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr @myri10ge_watchdog, ptr %func, align 4
  %call187 = call i32 @register_netdev(ptr noundef nonnull %call) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %cmp188.not = icmp eq i32 %call187, 0
  br i1 %cmp188.not, label %if.end195, label %do.end193

do.end193:                                        ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %call187) #27
  call void @pci_restore_state(ptr noundef %pdev) #24
  br label %abort_with_slices

if.end195:                                        ; preds = %if.end174
  %msix_enabled = getelementptr i8, ptr %call, i32 2376
  %317 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %msix_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %tobool196.not = icmp eq i32 %318, 0
  br i1 %tobool196.not, label %do.end208, label %do.end200

do.end200:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #26
  %319 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %num_slices.i, align 4
  %tx_boundary = getelementptr i8, ptr %call, i32 2308
  %321 = ptrtoint ptr %tx_boundary to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %tx_boundary, align 4
  %fw_name = getelementptr i8, ptr %call, i32 2568
  %323 = ptrtoint ptr %fw_name to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %fw_name, align 4
  %325 = ptrtoint ptr %wc_cookie to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %wc_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %326)
  %cmp203 = icmp sgt i32 %326, 0
  %cond205 = select i1 %cmp203, ptr @.str.46, ptr @.str.47
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %320, i32 noundef %322, ptr noundef %324, ptr noundef nonnull %cond205) #27
  br label %if.end217

do.end208:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #26
  %msi_enabled = getelementptr i8, ptr %call, i32 2372
  %327 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %msi_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %tobool209.not = icmp eq i32 %328, 0
  %cond210 = select i1 %tobool209.not, ptr @.str.52, ptr @.str.51
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %329 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %irq, align 4
  %tx_boundary211 = getelementptr i8, ptr %call, i32 2308
  %331 = ptrtoint ptr %tx_boundary211 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %tx_boundary211, align 4
  %fw_name212 = getelementptr i8, ptr %call, i32 2568
  %333 = ptrtoint ptr %fw_name212 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %fw_name212, align 4
  %335 = ptrtoint ptr %wc_cookie to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %wc_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %336)
  %cmp214 = icmp sgt i32 %336, 0
  %cond216 = select i1 %cmp214, ptr @.str.46, ptr @.str.47
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.49, ptr noundef nonnull %cond210, i32 noundef %330, i32 noundef %332, ptr noundef %334, ptr noundef nonnull %cond216) #27
  br label %if.end217

if.end217:                                        ; preds = %do.end208, %do.end200
  %337 = load i32, ptr @myri10ge_probe.board_number, align 4
  %inc = add i32 %337, 1
  store i32 %inc, ptr @myri10ge_probe.board_number, align 4
  br label %cleanup

abort_with_slices:                                ; preds = %do.end193, %if.end169.abort_with_slices_crit_edge, %do.end133
  %status.0 = phi i32 [ %call127, %do.end133 ], [ %call170, %if.end169.abort_with_slices_crit_edge ], [ %call187, %do.end193 ]
  call fastcc void @myri10ge_free_slices(ptr noundef %add.ptr.i)
  br label %abort_with_firmware

abort_with_firmware:                              ; preds = %abort_with_slices, %do.end121
  %status.1 = phi i32 [ -12, %do.end121 ], [ %status.0, %abort_with_slices ]
  call fastcc void @myri10ge_dummy_rdma(ptr noundef %add.ptr.i, i32 noundef 0)
  br label %abort_with_ioremap

abort_with_ioremap:                               ; preds = %abort_with_firmware, %do.end112, %myri10ge_read_mac_addr.exit, %do.end89
  %status.2 = phi i32 [ -22, %do.end89 ], [ -6, %myri10ge_read_mac_addr.exit ], [ %call106, %do.end112 ], [ %status.1, %abort_with_firmware ]
  %mac_addr_string = getelementptr i8, ptr %call, i32 2356
  %338 = ptrtoint ptr %mac_addr_string to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %mac_addr_string, align 4
  %cmp218.not = icmp eq ptr %339, null
  br i1 %cmp218.not, label %abort_with_ioremap.if.end226_crit_edge, label %do.end223

abort_with_ioremap.if.end226_crit_edge:           ; preds = %abort_with_ioremap
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end226

do.end223:                                        ; preds = %abort_with_ioremap
  call void @__sanitizer_cov_trace_pc() #26
  %serial_number = getelementptr i8, ptr %call, i32 2984
  %340 = ptrtoint ptr %serial_number to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %serial_number, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.54, ptr noundef nonnull %339, i32 noundef %341) #27
  br label %if.end226

if.end226:                                        ; preds = %do.end223, %abort_with_ioremap.if.end226_crit_edge
  %342 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %sram, align 4
  call void @iounmap(ptr noundef %343) #24
  br label %abort_with_mtrr

abort_with_mtrr:                                  ; preds = %if.end226, %do.end63
  %status.3 = phi i32 [ -6, %do.end63 ], [ %status.2, %if.end226 ]
  %344 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %cmd, align 4
  %346 = ptrtoint ptr %cmd_bus to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %cmd_bus, align 4
  call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 8, ptr noundef %345, i32 noundef %347, i32 noundef 0) #24
  br label %abort_with_enabled

abort_with_enabled:                               ; preds = %abort_with_mtrr, %if.end34.abort_with_enabled_crit_edge, %do.end32, %do.end22
  %status.4 = phi i32 [ %call16, %do.end22 ], [ %call.i379, %do.end32 ], [ %status.3, %abort_with_mtrr ], [ -12, %if.end34.abort_with_enabled_crit_edge ]
  call void @pci_disable_device(ptr noundef %pdev) #24
  br label %abort_with_netdev

abort_with_netdev:                                ; preds = %abort_with_enabled, %do.end12
  %status.5 = phi i32 [ -19, %do.end12 ], [ %status.4, %abort_with_enabled ]
  %fw_name_allocated.i432 = getelementptr i8, ptr %call, i32 2564
  %348 = ptrtoint ptr %fw_name_allocated.i432 to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %fw_name_allocated.i432, align 4, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %349)
  %tobool.not.i433 = icmp eq i8 %349, 0
  br i1 %tobool.not.i433, label %abort_with_netdev.set_fw_name.exit_crit_edge, label %if.then.i435

abort_with_netdev.set_fw_name.exit_crit_edge:     ; preds = %abort_with_netdev
  call void @__sanitizer_cov_trace_pc() #26
  br label %set_fw_name.exit

if.then.i435:                                     ; preds = %abort_with_netdev
  call void @__sanitizer_cov_trace_pc() #26
  %fw_name.i434 = getelementptr i8, ptr %call, i32 2568
  %350 = ptrtoint ptr %fw_name.i434 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %fw_name.i434, align 4
  call void @kfree(ptr noundef %351) #24
  br label %set_fw_name.exit

set_fw_name.exit:                                 ; preds = %if.then.i435, %abort_with_netdev.set_fw_name.exit_crit_edge
  %fw_name1.i = getelementptr i8, ptr %call, i32 2568
  %352 = ptrtoint ptr %fw_name1.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store ptr null, ptr %fw_name1.i, align 4
  %353 = ptrtoint ptr %fw_name_allocated.i432 to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 0, ptr %fw_name_allocated.i432, align 4
  call void @free_netdev(ptr noundef nonnull %call) #24
  br label %cleanup

cleanup:                                          ; preds = %set_fw_name.exit, %if.end217, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.5, %set_fw_name.exit ], [ 0, %if.end217 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @myri10ge_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %watchdog_work = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 27
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %watchdog_work) #24
  %dev = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @unregister_netdev(ptr noundef %3) #24
  tail call fastcc void @myri10ge_dummy_rdma(ptr noundef nonnull %1, i32 noundef 0)
  tail call void @pci_restore_state(ptr noundef %pdev) #24
  %sram = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sram, align 4
  tail call void @iounmap(ptr noundef %5) #24
  tail call fastcc void @myri10ge_free_slices(ptr noundef nonnull %1)
  %msix_vectors = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %msix_vectors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msix_vectors, align 4
  tail call void @kfree(ptr noundef %7) #24
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %cmd = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd, align 4
  %cmd_bus = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %cmd_bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmd_bus, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 8, ptr noundef %9, i32 noundef %11, i32 noundef 0) #24
  %fw_name_allocated.i = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 32
  %12 = ptrtoint ptr %fw_name_allocated.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fw_name_allocated.i, align 4, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.set_fw_name.exit_crit_edge, label %if.then.i

if.end.set_fw_name.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %set_fw_name.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %fw_name.i = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 33
  %14 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw_name.i, align 4
  tail call void @kfree(ptr noundef %15) #24
  br label %set_fw_name.exit

set_fw_name.exit:                                 ; preds = %if.then.i, %if.end.set_fw_name.exit_crit_edge
  %fw_name1.i = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 33
  %16 = ptrtoint ptr %fw_name1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %fw_name1.i, align 4
  %17 = ptrtoint ptr %fw_name_allocated.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %fw_name_allocated.i, align 4
  tail call void @free_netdev(ptr noundef %3) #24
  tail call void @pci_disable_device(ptr noundef %pdev) #24
  br label %cleanup

cleanup:                                          ; preds = %set_fw_name.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_readrq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @myri10ge_load_firmware(ptr noundef %mgp, i32 noundef %adopt) unnamed_addr #3 align 64 {
entry:
  %cmd.i = alloca %struct.myri10ge_cmd, align 4
  %fw.i = alloca ptr, align 4
  %buf = alloca [16 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #24
  %0 = getelementptr inbounds i8, ptr %buf, i32 24
  %1 = call ptr @memset(ptr %0, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #24
  %2 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !609
  %pdev.i = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 16
  %3 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %fw_name.i = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 33
  %5 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw_name.i, align 4
  %call.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef %6, ptr noundef %dev1.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %myri10ge_load_hotplug_firmware.exit.thread, label %if.end.i

myri10ge_load_hotplug_firmware.exit.thread:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %7 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw_name.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.137, ptr noundef %8) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #24
  br label %if.then

if.end.i:                                         ; preds = %entry
  %9 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %sram_size.i = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 9
  %13 = ptrtoint ptr %sram_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sram_size.i, align 4
  %sub.i = add i32 %14, -1048576
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %sub.i)
  %cmp4.not.i = icmp uge i32 %12, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %12)
  %cmp6.i = icmp ult i32 %12, 64
  %or.cond.i = or i1 %cmp6.i, %cmp4.not.i
  br i1 %or.cond.i, label %do.end10.i, label %if.end12.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.140, i32 noundef %12) #27
  br label %myri10ge_load_hotplug_firmware.exit.thread119

if.end12.i:                                       ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 60
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %add.i = add i32 %18, 192
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %12)
  %cmp15.i = icmp ugt i32 %add.i, %12
  %or.cond92.i = select i1 %tobool.not.i, i1 true, i1 %cmp15.i
  br i1 %or.cond92.i, label %do.end19.i, label %if.end20.i

do.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.143) #27
  br label %myri10ge_load_hotplug_firmware.exit.thread119

if.end20.i:                                       ; preds = %if.end12.i
  %add.ptr22.i = getelementptr i8, ptr %16, i32 %18
  %call23.i = call fastcc i32 @myri10ge_validate_firmware(ptr noundef %mgp, ptr noundef %add.ptr22.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.not.i = icmp eq i32 %call23.i, 0
  br i1 %cmp24.not.i, label %if.end26.i, label %if.end20.i.myri10ge_load_hotplug_firmware.exit.thread119_crit_edge

if.end20.i.myri10ge_load_hotplug_firmware.exit.thread119_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_load_hotplug_firmware.exit.thread119

if.end26.i:                                       ; preds = %if.end20.i
  %19 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw.i, align 4
  %data27.i = getelementptr inbounds %struct.firmware, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %data27.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data27.i, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 4
  %call29.i = call i32 @crc32_le(i32 noundef -1, ptr noundef %22, i32 noundef %24) #30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp3193.not.i = icmp eq i32 %24, 0
  br i1 %cmp3193.not.i, label %if.end26.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end26.i.for.end.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end26.i
  %sram.i = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %25 = phi i32 [ %24, %for.body.lr.ph.i ], [ %38, %for.body.i.for.body.i_crit_edge ]
  %26 = phi ptr [ %20, %for.body.lr.ph.i ], [ %36, %for.body.i.for.body.i_crit_edge ]
  %i.094.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add46.i, %for.body.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sram.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %28, i32 1048576
  %add.ptr33.i = getelementptr i8, ptr %add.ptr32.i, i32 %i.094.i
  %data34.i = getelementptr inbounds %struct.firmware, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %data34.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data34.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %30, i32 %i.094.i
  %sub37.i = sub i32 %25, %i.094.i
  %31 = call i32 @llvm.umin.i32(i32 %sub37.i, i32 256) #24
  %div91.i = lshr i32 %31, 3
  call void @__iowrite64_copy(ptr noundef %add.ptr33.i, ptr noundef %add.ptr35.i, i32 noundef %div91.i) #24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !616
  call void @arm_heavy_mb() #24
  %32 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sram.i, align 4
  %34 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %33) #24, !srcloc !617
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !618
  %add46.i = add i32 %i.094.i, 256
  %35 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fw.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %cmp31.i = icmp ugt i32 %38, %add46.i
  br i1 %cmp31.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end26.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %if.end26.i.for.end.i_crit_edge ], [ %38, %for.body.i.for.end.i_crit_edge ]
  %call48.i = call noalias ptr @vmalloc(i32 noundef %.lcssa.i) #29
  %tobool49.not.i = icmp eq ptr %call48.i, null
  br i1 %tobool49.not.i, label %for.end.i.myri10ge_load_hotplug_firmware.exit.thread119_crit_edge, label %if.end51.i

for.end.i.myri10ge_load_hotplug_firmware.exit.thread119_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_load_hotplug_firmware.exit.thread119

if.end51.i:                                       ; preds = %for.end.i
  %sram52.i = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 8
  %39 = ptrtoint ptr %sram52.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sram52.i, align 4
  %add.ptr53.i = getelementptr i8, ptr %40, i32 1048576
  %41 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fw.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  call void @mmiocpy(ptr noundef nonnull %call48.i, ptr noundef %add.ptr53.i, i32 noundef %44) #24
  %45 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fw.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %call56.i = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %call48.i, i32 noundef %48) #30
  call void @vfree(ptr noundef nonnull %call48.i) #24
  call void @__sanitizer_cov_trace_cmp4(i32 %call29.i, i32 %call56.i)
  %cmp57.not.i = icmp eq i32 %call29.i, %call56.i
  %49 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fw.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  br i1 %cmp57.not.i, label %if.end39, label %do.end61.i

do.end61.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.146, i32 noundef %52, i32 noundef %call56.i, i32 noundef %call29.i) #27
  br label %myri10ge_load_hotplug_firmware.exit.thread119

myri10ge_load_hotplug_firmware.exit.thread119:    ; preds = %do.end61.i, %for.end.i.myri10ge_load_hotplug_firmware.exit.thread119_crit_edge, %if.end20.i.myri10ge_load_hotplug_firmware.exit.thread119_crit_edge, %do.end19.i, %do.end10.i
  %status.0.i.ph = phi i32 [ -12, %for.end.i.myri10ge_load_hotplug_firmware.exit.thread119_crit_edge ], [ -5, %do.end61.i ], [ %call23.i, %if.end20.i.myri10ge_load_hotplug_firmware.exit.thread119_crit_edge ], [ -22, %do.end19.i ], [ -22, %do.end10.i ]
  %53 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %54) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #24
  br label %if.then

if.then:                                          ; preds = %myri10ge_load_hotplug_firmware.exit.thread119, %myri10ge_load_hotplug_firmware.exit.thread
  %status.1.i118 = phi i32 [ -22, %myri10ge_load_hotplug_firmware.exit.thread ], [ %status.0.i.ph, %myri10ge_load_hotplug_firmware.exit.thread119 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adopt)
  %tobool1.not = icmp eq i32 %adopt, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

do.end:                                           ; preds = %if.then
  %55 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.116) #27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %status.1.i118)
  %cmp = icmp eq i32 %status.1.i118, -5
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %call5 = call fastcc i32 @myri10ge_adopt_running_firmware(ptr noundef %mgp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  %57 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev.i, align 4
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  br i1 %cmp6.not, label %do.end16, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.119) #27
  br label %cleanup

do.end16:                                         ; preds = %if.end4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev18, ptr noundef nonnull @.str.122) #27
  %tx_boundary = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 1
  %59 = ptrtoint ptr %tx_boundary to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_boundary, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %60)
  %cmp19 = icmp eq i32 %60, 4096
  br i1 %cmp19, label %do.end23, label %do.end16.if.end36_crit_edge

do.end16.if.end36_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end36

do.end23:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #26
  %61 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev.i, align 4
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev25, ptr noundef nonnull @.str.125) #27
  %63 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdev.i, align 4
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev30, ptr noundef nonnull @.str.128) #27
  %65 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev.i, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev35, ptr noundef nonnull @.str.131) #27
  br label %if.end36

if.end36:                                         ; preds = %do.end23, %do.end16.if.end36_crit_edge
  %fw_name_allocated.i = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 32
  %67 = ptrtoint ptr %fw_name_allocated.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %fw_name_allocated.i, align 4, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i105 = icmp eq i8 %68, 0
  br i1 %tobool.not.i105, label %if.end36.set_fw_name.exit_crit_edge, label %if.then.i

if.end36.set_fw_name.exit_crit_edge:              ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #26
  br label %set_fw_name.exit

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #26
  %69 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fw_name.i, align 4
  call void @kfree(ptr noundef %70) #24
  br label %set_fw_name.exit

set_fw_name.exit:                                 ; preds = %if.then.i, %if.end36.set_fw_name.exit_crit_edge
  %71 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.133, ptr %fw_name.i, align 4
  %72 = ptrtoint ptr %fw_name_allocated.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %fw_name_allocated.i, align 4
  %73 = ptrtoint ptr %tx_boundary to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2048, ptr %tx_boundary, align 4
  call fastcc void @myri10ge_dummy_rdma(ptr noundef %mgp, i32 noundef 1)
  %call38 = call fastcc i32 @myri10ge_get_firmware_capabilities(ptr noundef %mgp)
  br label %cleanup

if.end39:                                         ; preds = %if.end51.i
  %74 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %75) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #24
  %cmd = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 14
  %76 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cmd, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %77, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !619
  call void @arm_heavy_mb() #24
  %cmd_bus = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 15
  %79 = ptrtoint ptr %cmd_bus to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cmd_bus, align 4
  %81 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %buf, align 8
  %arrayidx43 = getelementptr inbounds [16 x i32], ptr %buf, i32 0, i32 1
  %82 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %80, ptr %arrayidx43, align 4
  %arrayidx44 = getelementptr inbounds [16 x i32], ptr %buf, i32 0, i32 2
  %83 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds [16 x i32], ptr %buf, i32 0, i32 3
  %84 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1048584, ptr %arrayidx45, align 4
  %sub = add i32 %52, -8
  %arrayidx46 = getelementptr inbounds [16 x i32], ptr %buf, i32 0, i32 4
  %85 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %sub, ptr %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds [16 x i32], ptr %buf, i32 0, i32 5
  %86 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 8, ptr %arrayidx47, align 4
  %arrayidx48 = getelementptr inbounds [16 x i32], ptr %buf, i32 0, i32 6
  %87 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %arrayidx48, align 8
  %88 = ptrtoint ptr %sram52.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sram52.i, align 4
  %add.ptr = getelementptr i8, ptr %89, i32 16515072
  call void @__iowrite64_copy(ptr noundef %add.ptr, ptr noundef nonnull %buf, i32 noundef 8) #24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !620
  call void @arm_heavy_mb() #24
  call void @msleep(i32 noundef 1) #24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !621
  call void @arm_heavy_mb() #24
  %90 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cmd, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %93)
  %cmp57.not124.not = icmp eq i32 %93, -1
  br i1 %cmp57.not124.not, label %if.end39.if.end68_crit_edge, label %if.end39.while.body_crit_edge

if.end39.while.body_crit_edge:                    ; preds = %if.end39
  br label %while.body

if.end39.if.end68_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end68

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end39.while.body_crit_edge
  %i.0125 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %if.end39.while.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0125
  call void @msleep(i32 noundef %shl) #24
  %inc = add nuw nsw i32 %i.0125, 1
  %94 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cmd, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %cmp57.not = icmp ne i32 %97, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0125)
  %cmp58 = icmp ult i32 %i.0125, 8
  %or.cond = select i1 %cmp57.not, i1 %cmp58, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %phi.cmp = icmp eq i32 %97, -1
  br i1 %phi.cmp, label %while.end.if.end68_crit_edge, label %do.end65

while.end.if.end68_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end68

do.end65:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #26
  %98 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev.i, align 4
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.135) #27
  br label %cleanup

if.end68:                                         ; preds = %while.end.if.end68_crit_edge, %if.end39.if.end68_crit_edge
  call fastcc void @myri10ge_dummy_rdma(ptr noundef %mgp, i32 noundef 1)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i) #24
  %100 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %cmd.i, align 4, !annotation !609
  %101 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd.i, i32 0, i32 1
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %101, align 4, !annotation !609
  %103 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd.i, i32 0, i32 2
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -1, ptr %103, align 4, !annotation !609
  %features.i = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 45
  %105 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 65545, ptr %features.i, align 4
  %call.i108 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef 44, ptr noundef nonnull %cmd.i, i32 noundef 0) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %cmp.i109 = icmp eq i32 %call.i108, 0
  br i1 %cmp.i109, label %if.then.i110, label %if.end68.if.end.i112_crit_edge

if.end68.if.end.i112_crit_edge:                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end.i112

if.then.i110:                                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #26
  %106 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cmd.i, align 4
  %max_tso6.i = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 46
  %108 = ptrtoint ptr %max_tso6.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %max_tso6.i, align 4
  %109 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %features.i, align 4
  %111 = or i32 %110, 1048576
  store i32 %111, ptr %features.i, align 4
  br label %if.end.i112

if.end.i112:                                      ; preds = %if.then.i110, %if.end68.if.end.i112_crit_edge
  %call3.i = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef 12, ptr noundef nonnull %cmd.i, i32 noundef 0) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.not.i111 = icmp eq i32 %call3.i, 0
  br i1 %cmp4.not.i111, label %if.end7.i, label %do.end.i114

do.end.i114:                                      ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #26
  %112 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.162) #27
  br label %myri10ge_get_firmware_capabilities.exit

if.end7.i:                                        ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #26
  %114 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cmd.i, align 4
  %116 = lshr i32 %115, 2
  %mul.i = and i32 %116, 1073741822
  %max_intr_slots.i = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 6
  %117 = ptrtoint ptr %max_intr_slots.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %mul.i, ptr %max_intr_slots.i, align 4
  br label %myri10ge_get_firmware_capabilities.exit

myri10ge_get_firmware_capabilities.exit:          ; preds = %if.end7.i, %do.end.i114
  %retval.0.i = phi i32 [ -6, %do.end.i114 ], [ 0, %if.end7.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #24
  br label %cleanup

cleanup:                                          ; preds = %myri10ge_get_firmware_capabilities.exit, %do.end65, %set_fw_name.exit, %do.end10, %do.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end10 ], [ %call38, %set_fw_name.exit ], [ -6, %do.end65 ], [ %retval.0.i, %myri10ge_get_firmware_capabilities.exit ], [ %status.1.i118, %if.then.cleanup_crit_edge ], [ -5, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #24
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @myri10ge_reset(ptr noundef %mgp) unnamed_addr #3 align 64 {
entry:
  %cmd.i187 = alloca %struct.myri10ge_cmd, align 4
  %cmd.i = alloca %struct.myri10ge_cmd, align 4
  %cmd = alloca %struct.myri10ge_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #24
  %0 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd, i32 0, i32 2
  %2 = call ptr @memset(ptr %cmd, i32 0, i32 12)
  %call = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef 1, ptr noundef nonnull %cmd, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %pdev = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 16
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #27
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @myri10ge_dma_test(ptr noundef %mgp, i32 noundef 25)
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cmd, align 4
  %call2 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef 52, ptr noundef nonnull %cmd, i32 noundef 0)
  %max_intr_slots = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 6
  %6 = ptrtoint ptr %max_intr_slots to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_intr_slots, align 4
  %mul = shl i32 %7, 2
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %cmd, align 4
  %call4 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef 13, ptr noundef nonnull %cmd, i32 noundef 0)
  %num_slices = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 2
  %9 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp5 = icmp sgt i32 %10, 1
  br i1 %cmp5, label %if.then6, label %if.end.if.end44_crit_edge

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end44

if.then6:                                         ; preds = %if.end
  %call7 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef 35, ptr noundef nonnull %cmd, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.then6.if.end15_crit_edge, label %do.end12

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end15

do.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #26
  %pdev13 = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 16
  %11 = ptrtoint ptr %pdev13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev13, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.179) #27
  br label %if.end15

if.end15:                                         ; preds = %do.end12, %if.then6.if.end15_crit_edge
  %13 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_slices, align 4
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cmd, align 4
  %dev18 = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 7
  %16 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev18, align 4
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 105
  %18 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %real_num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp19 = icmp ugt i32 %19, 1
  %spec.store.select = select i1 %cmp19, i32 3, i32 1
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.store.select, ptr %0, align 4
  %call23 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef 36, ptr noundef nonnull %cmd, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.end15.if.end44thread-pre-split_crit_edge, label %land.lhs.true

if.end15.if.end44thread-pre-split_crit_edge:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end44thread-pre-split

land.lhs.true:                                    ; preds = %if.end15
  %21 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev18, align 4
  %real_num_tx_queues26 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 105
  %23 = ptrtoint ptr %real_num_tx_queues26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %real_num_tx_queues26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp27 = icmp ugt i32 %24, 1
  br i1 %cmp27, label %if.end35, label %land.lhs.true.do.end40_crit_edge

land.lhs.true.do.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end40

if.end35:                                         ; preds = %land.lhs.true
  %call30 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %22, i32 noundef 1) #24
  %25 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_slices, align 4
  %27 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %cmd, align 4
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %0, align 4
  %call34 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef 36, ptr noundef nonnull %cmd, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp36.not = icmp eq i32 %call34, 0
  br i1 %cmp36.not, label %if.end35.if.end44thread-pre-split_crit_edge, label %if.end35.do.end40_crit_edge

if.end35.do.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end40

if.end35.if.end44thread-pre-split_crit_edge:      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end44thread-pre-split

do.end40:                                         ; preds = %if.end35.do.end40_crit_edge, %land.lhs.true.do.end40_crit_edge
  %status.0194 = phi i32 [ %call34, %if.end35.do.end40_crit_edge ], [ %call23, %land.lhs.true.do.end40_crit_edge ]
  %pdev41 = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 16
  %29 = ptrtoint ptr %pdev41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev41, align 4
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.182) #27
  br label %cleanup

if.end44thread-pre-split:                         ; preds = %if.end35.if.end44thread-pre-split_crit_edge, %if.end15.if.end44thread-pre-split_crit_edge
  %31 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %num_slices, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end44thread-pre-split, %if.end.if.end44_crit_edge
  %32 = phi i32 [ %.pr, %if.end44thread-pre-split ], [ %10, %if.end.if.end44_crit_edge ]
  %status.1 = phi i32 [ 0, %if.end44thread-pre-split ], [ %call4, %if.end.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp46195 = icmp sgt i32 %32, 0
  br i1 %cmp46195, label %if.end44.for.body_crit_edge, label %if.end44.for.end_crit_edge

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end44.for.body_crit_edge
  %status.2197 = phi i32 [ %or51, %for.body.for.body_crit_edge ], [ %status.1, %if.end44.for.body_crit_edge ]
  %i.0196 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end44.for.body_crit_edge ]
  %33 = ptrtoint ptr %mgp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mgp, align 4
  %bus = getelementptr %struct.myri10ge_slice_state, ptr %34, i32 %i.0196, i32 3, i32 1
  %35 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bus, align 4
  %37 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %cmd, align 4
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %0, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %i.0196, ptr %1, align 4
  %call50 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef 3, ptr noundef nonnull %cmd, i32 noundef 0)
  %or51 = or i32 %call50, %status.2197
  %inc = add nuw nsw i32 %i.0196, 1
  %40 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_slices, align 4
  %cmp46 = icmp slt i32 %inc, %41
  br i1 %cmp46, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end44.for.end_crit_edge
  %status.2.lcssa = phi i32 [ %status.1, %if.end44.for.end_crit_edge ], [ %or51, %for.body.for.end_crit_edge ]
  %call52 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef 9, ptr noundef nonnull %cmd, i32 noundef 0)
  %or53 = or i32 %call52, %status.2.lcssa
  %42 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp56198 = icmp sgt i32 %43, 0
  br i1 %cmp56198, label %for.body57.lr.ph, label %for.end.for.end65_crit_edge

for.end.for.end65_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end65

for.body57.lr.ph:                                 ; preds = %for.end
  %sram = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 8
  br label %for.body57

for.body57:                                       ; preds = %for.body57.for.body57_crit_edge, %for.body57.lr.ph
  %i.1199 = phi i32 [ 0, %for.body57.lr.ph ], [ %inc64, %for.body57.for.body57_crit_edge ]
  %44 = ptrtoint ptr %mgp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mgp, align 4
  %46 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sram, align 4
  %48 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cmd, align 4
  %add.ptr = getelementptr i8, ptr %47, i32 %49
  %mul61 = shl i32 %i.1199, 3
  %add.ptr62 = getelementptr i8, ptr %add.ptr, i32 %mul61
  %irq_claim = getelementptr %struct.myri10ge_slice_state, ptr %45, i32 %i.1199, i32 8
  %50 = ptrtoint ptr %irq_claim to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr62, ptr %irq_claim, align 4
  %inc64 = add nuw nsw i32 %i.1199, 1
  %51 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_slices, align 4
  %cmp56 = icmp slt i32 %inc64, %52
  br i1 %cmp56, label %for.body57.for.body57_crit_edge, label %for.body57.for.end65_crit_edge

for.body57.for.end65_crit_edge:                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end65

for.body57.for.body57_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body57

for.end65:                                        ; preds = %for.body57.for.end65_crit_edge, %for.end.for.end65_crit_edge
  %call66 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef 10, ptr noundef nonnull %cmd, i32 noundef 0)
  %or67 = or i32 %or53, %call66
  %sram68 = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 8
  %53 = ptrtoint ptr %sram68 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sram68, align 4
  %55 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cmd, align 4
  %add.ptr70 = getelementptr i8, ptr %54, i32 %56
  %irq_deassert = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 12
  %57 = ptrtoint ptr %irq_deassert to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr70, ptr %irq_deassert, align 4
  %call71 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef 17, ptr noundef nonnull %cmd, i32 noundef 0)
  %or72 = or i32 %or67, %call71
  %58 = ptrtoint ptr %sram68 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sram68, align 4
  %60 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cmd, align 4
  %add.ptr75 = getelementptr i8, ptr %59, i32 %61
  %intr_coal_delay_ptr = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 23
  %62 = ptrtoint ptr %intr_coal_delay_ptr to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr75, ptr %intr_coal_delay_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or72)
  %cmp76.not = icmp eq i32 %or72, 0
  br i1 %cmp76.not, label %if.end83, label %do.end80

do.end80:                                         ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #26
  %pdev81 = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 16
  %63 = ptrtoint ptr %pdev81 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdev81, align 4
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev82, ptr noundef nonnull @.str.185) #27
  br label %cleanup

if.end83:                                         ; preds = %for.end65
  %intr_coal_delay = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 22
  %65 = ptrtoint ptr %intr_coal_delay to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %intr_coal_delay, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %66) #24, !srcloc !622
  %link_changes = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 50
  %67 = ptrtoint ptr %link_changes to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %link_changes, align 4
  %68 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp87200 = icmp sgt i32 %69, 0
  br i1 %cmp87200, label %if.end83.for.body88_crit_edge, label %if.end83.for.end104_crit_edge

if.end83.for.end104_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end104

if.end83.for.body88_crit_edge:                    ; preds = %if.end83
  br label %for.body88

for.body88:                                       ; preds = %for.body88.for.body88_crit_edge, %if.end83.for.body88_crit_edge
  %i.2201 = phi i32 [ %inc103, %for.body88.for.body88_crit_edge ], [ 0, %if.end83.for.body88_crit_edge ]
  %70 = ptrtoint ptr %mgp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mgp, align 4
  %arrayidx90 = getelementptr %struct.myri10ge_slice_state, ptr %71, i32 %i.2201
  %rx_done91 = getelementptr %struct.myri10ge_slice_state, ptr %71, i32 %i.2201, i32 3
  %72 = ptrtoint ptr %rx_done91 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx_done91, align 8
  %74 = call ptr @memset(ptr %73, i32 0, i32 %mul)
  %req = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx90, i32 0, i32 8
  %75 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %req, align 128
  %done = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx90, i32 0, i32 13
  %76 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %done, align 128
  %pkt_start = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx90, i32 0, i32 9
  %77 = ptrtoint ptr %pkt_start to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %pkt_start, align 4
  %pkt_done = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx90, i32 0, i32 14
  %78 = ptrtoint ptr %pkt_done to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %pkt_done, align 4
  %cnt = getelementptr %struct.myri10ge_slice_state, ptr %71, i32 %i.2201, i32 2, i32 6
  %79 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %cnt, align 4
  %cnt96 = getelementptr %struct.myri10ge_slice_state, ptr %71, i32 %i.2201, i32 1, i32 6
  %80 = ptrtoint ptr %cnt96 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %cnt96, align 8
  %idx = getelementptr %struct.myri10ge_slice_state, ptr %71, i32 %i.2201, i32 3, i32 3
  %81 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %idx, align 4
  %cnt99 = getelementptr %struct.myri10ge_slice_state, ptr %71, i32 %i.2201, i32 3, i32 2
  %82 = ptrtoint ptr %cnt99 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %cnt99, align 8
  %wake_queue = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx90, i32 0, i32 15
  %83 = ptrtoint ptr %wake_queue to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %wake_queue, align 8
  %stop_queue = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx90, i32 0, i32 10
  %84 = ptrtoint ptr %stop_queue to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %stop_queue, align 8
  %inc103 = add nuw nsw i32 %i.2201, 1
  %85 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_slices, align 4
  %cmp87 = icmp slt i32 %inc103, %86
  br i1 %cmp87, label %for.body88.for.body88_crit_edge, label %for.body88.for.end104_crit_edge

for.body88.for.end104_crit_edge:                  ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end104

for.body88.for.body88_crit_edge:                  ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body88

for.end104:                                       ; preds = %for.body88.for.end104_crit_edge, %if.end83.for.end104_crit_edge
  %dev105 = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 7
  %87 = ptrtoint ptr %dev105 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev105, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 86
  %89 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev_addr, align 64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i) #24
  %91 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd.i, i32 0, i32 1
  %92 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd.i, i32 0, i32 2
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %92, align 4, !annotation !609
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %90, align 1
  %conv.i = zext i8 %95 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %90, i32 1
  %96 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %97 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %90, i32 2
  %98 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %99 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %90, i32 3
  %100 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %101 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %102 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or10.i, ptr %cmd.i, align 4
  %arrayidx11.i = getelementptr i8, ptr %90, i32 4
  %103 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %104 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 8
  %arrayidx14.i = getelementptr i8, ptr %90, i32 5
  %105 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %106 to i32
  %or16.i = or i32 %shl13.i, %conv15.i
  %107 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or16.i, ptr %91, align 4
  %call.i = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef 22, ptr noundef nonnull %cmd.i, i32 noundef 0) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #24
  %pause = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 31
  %108 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pause, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i187) #24
  %110 = ptrtoint ptr %cmd.i187 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -1, ptr %cmd.i187, align 4, !annotation !609
  %111 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd.i187, i32 0, i32 1
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %111, align 4, !annotation !609
  %113 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd.i187, i32 0, i32 2
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -1, ptr %113, align 4, !annotation !609
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i = icmp eq i32 %109, 0
  %cond.i = select i1 %tobool.not.i, i32 24, i32 23
  %call.i188 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef %cond.i, ptr noundef nonnull %cmd.i187, i32 noundef 0) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool1.not.i = icmp eq i32 %call.i188, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #26
  %115 = ptrtoint ptr %dev105 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev105, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %116, ptr noundef nonnull @.str.187) #27
  br label %myri10ge_change_pause.exit

if.end.i:                                         ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #26
  %117 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %109, ptr %pause, align 4
  br label %myri10ge_change_pause.exit

myri10ge_change_pause.exit:                       ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i187) #24
  %118 = ptrtoint ptr %dev105 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev105, align 4
  tail call void @myri10ge_set_multicast_list(ptr noundef %119)
  br label %cleanup

cleanup:                                          ; preds = %myri10ge_change_pause.exit, %do.end80, %do.end40, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %status.0194, %do.end40 ], [ %or72, %do.end80 ], [ %call.i, %myri10ge_change_pause.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #24
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @myri10ge_request_irq(ptr nocapture noundef %mgp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 16
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %dev = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %msi_enabled = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 17
  %4 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %msi_enabled, align 4
  %msix_enabled = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 18
  %5 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %msix_enabled, align 4
  %6 = load i32, ptr @myri10ge_msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.else52_crit_edge, label %if.then

entry.if.else52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.else52

if.then:                                          ; preds = %entry
  %num_slices = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 2
  %7 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp sgt i32 %8, 1
  br i1 %cmp, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.then
  %msix_vectors = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 19
  %9 = ptrtoint ptr %msix_vectors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msix_vectors, align 4
  %call = tail call i32 @pci_enable_msix_range(ptr noundef %1, ptr noundef %10, i32 noundef %8, i32 noundef %8) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %do.end, label %if.end9.thread

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #26
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.209, i32 noundef %call) #27
  br label %cleanup

if.end9.thread:                                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #26
  %11 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %msix_enabled, align 4
  br label %for.cond.preheaderthread-pre-split

if.end9:                                          ; preds = %if.then
  %12 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %msix_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp11 = icmp eq i32 %.pr, 0
  br i1 %cmp11, label %if.then12, label %if.end9.for.cond.preheader_crit_edge

if.end9.for.cond.preheader_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.cond.preheader

if.then12:                                        ; preds = %if.end9
  %call13 = tail call i32 @pci_enable_msi(ptr noundef %1) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.else, label %do.end18

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #26
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.212, i32 noundef %call13) #27
  br label %if.end23

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #26
  %13 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %msi_enabled, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %do.end18
  %14 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr125 = load i32, ptr %msix_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr125)
  %tobool25.not = icmp eq i32 %.pr125, 0
  br i1 %tobool25.not, label %if.end23.if.else52_crit_edge, label %if.end23.for.cond.preheaderthread-pre-split_crit_edge

if.end23.for.cond.preheaderthread-pre-split_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.cond.preheaderthread-pre-split

if.end23.if.else52_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.else52

for.cond.preheaderthread-pre-split:               ; preds = %if.end23.for.cond.preheaderthread-pre-split_crit_edge, %if.end9.thread
  %status.1139.ph = phi i32 [ %call, %if.end9.thread ], [ %call13, %if.end23.for.cond.preheaderthread-pre-split_crit_edge ]
  %15 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr140 = load i32, ptr %num_slices, align 4
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheaderthread-pre-split, %if.end9.for.cond.preheader_crit_edge
  %16 = phi i32 [ %.pr140, %for.cond.preheaderthread-pre-split ], [ %8, %if.end9.for.cond.preheader_crit_edge ]
  %status.1139 = phi i32 [ %status.1139.ph, %for.cond.preheaderthread-pre-split ], [ 0, %if.end9.for.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp28130 = icmp sgt i32 %16, 0
  br i1 %cmp28130, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %msix_vectors32 = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0131 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %mgp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mgp, align 4
  %arrayidx = getelementptr %struct.myri10ge_slice_state, ptr %18, i32 %i.0131
  %irq_desc = getelementptr %struct.myri10ge_slice_state, ptr %18, i32 %i.0131, i32 15
  %call31 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_desc, i32 noundef 32, ptr noundef nonnull @.str.214, ptr noundef %3, i32 noundef %i.0131)
  %19 = ptrtoint ptr %msix_vectors32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %msix_vectors32, align 4
  %arrayidx33 = getelementptr %struct.msix_entry, ptr %20, i32 %i.0131
  %21 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx33, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %22, ptr noundef nonnull @myri10ge_intr, ptr noundef null, i32 noundef 0, ptr noundef %irq_desc, ptr noundef %arrayidx) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp37.not = icmp eq i32 %call.i, 0
  br i1 %cmp37.not, label %for.inc, label %do.end41

do.end41:                                         ; preds = %for.body
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.216, i32 noundef %i.0131) #27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0131)
  %cmp43133.not = icmp eq i32 %i.0131, 0
  br i1 %cmp43133.not, label %do.end41.while.end_crit_edge, label %do.end41.while.body_crit_edge

do.end41.while.body_crit_edge:                    ; preds = %do.end41
  br label %while.body

do.end41.while.end_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end41.while.body_crit_edge
  %i.1134.in = phi i32 [ %i.1134, %while.body.while.body_crit_edge ], [ %i.0131, %do.end41.while.body_crit_edge ]
  %i.1134 = add nsw i32 %i.1134.in, -1
  %23 = ptrtoint ptr %msix_vectors32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %msix_vectors32, align 4
  %arrayidx45 = getelementptr %struct.msix_entry, ptr %24, i32 %i.1134
  %25 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx45, align 4
  %27 = ptrtoint ptr %mgp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mgp, align 4
  %arrayidx48 = getelementptr %struct.myri10ge_slice_state, ptr %28, i32 %i.1134
  %call49 = tail call ptr @free_irq(i32 noundef %26, ptr noundef %arrayidx48) #24
  %cmp43 = icmp sgt i32 %i.1134.in, 1
  br i1 %cmp43, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end41.while.end_crit_edge
  tail call void @pci_disable_msix(ptr noundef %1) #24
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0131, 1
  %29 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_slices, align 4
  %cmp28 = icmp slt i32 %inc, %30
  br i1 %cmp28, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

if.else52:                                        ; preds = %if.end23.if.else52_crit_edge, %entry.if.else52_crit_edge
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %mgp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mgp, align 4
  %call.i122 = tail call i32 @request_threaded_irq(i32 noundef %32, ptr noundef nonnull @myri10ge_intr, ptr noundef null, i32 noundef 128, ptr noundef %34, ptr noundef %36) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %cmp59.not = icmp eq i32 %call.i122, 0
  br i1 %cmp59.not, label %if.else52.cleanup_crit_edge, label %do.end63

if.else52.cleanup_crit_edge:                      ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

do.end63:                                         ; preds = %if.else52
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.219) #27
  %37 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msi_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool66.not = icmp eq i32 %38, 0
  br i1 %tobool66.not, label %do.end63.cleanup_crit_edge, label %if.then67

do.end63.cleanup_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then67:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @pci_disable_msi(ptr noundef %1) #24
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %do.end63.cleanup_crit_edge, %if.else52.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %while.end, %for.cond.preheader.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call.i, %while.end ], [ %call.i122, %if.then67 ], [ %call.i122, %do.end63.cleanup_crit_edge ], [ 0, %if.else52.cleanup_crit_edge ], [ %status.1139, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myri10ge_free_irq(ptr nocapture noundef readonly %mgp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 16
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %msix_enabled = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 18
  %2 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msix_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %num_slices = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 2
  %4 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp25 = icmp sgt i32 %5, 0
  br i1 %cmp25, label %for.body.lr.ph, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %msix_vectors = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %msix_vectors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msix_vectors, align 4
  %arrayidx = getelementptr %struct.msix_entry, ptr %7, i32 %i.026
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %mgp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mgp, align 4
  %arrayidx2 = getelementptr %struct.myri10ge_slice_state, ptr %11, i32 %i.026
  %call = tail call ptr @free_irq(i32 noundef %9, ptr noundef %arrayidx2) #24
  %inc = add nuw nsw i32 %i.026, 1
  %12 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_slices, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %16 = ptrtoint ptr %mgp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mgp, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %17) #24
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  %msi_enabled = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 17
  %18 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msi_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool6.not = icmp eq i32 %19, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @pci_disable_msi(ptr noundef %1) #24
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %20 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msix_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not = icmp eq i32 %21, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @pci_disable_msix(ptr noundef %1) #24
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @myri10ge_watchdog_timer(ptr noundef %t) #3 align 64 {
entry:
  %reset_needed = alloca i32, align 4
  %busy_slice_cnt = alloca i32, align 4
  %cmd = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset_needed) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %busy_slice_cnt) #24
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #24
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cmd, align 2, !annotation !609
  %add.ptr = getelementptr i8, ptr %t, i32 -200
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %fw_stats = getelementptr inbounds %struct.myri10ge_slice_state, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %fw_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw_stats, align 16
  %dropped_pause = getelementptr inbounds %struct.mcp_irq_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dropped_pause to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dropped_pause, align 4
  %7 = ptrtoint ptr %busy_slice_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %busy_slice_cnt, align 4
  %8 = ptrtoint ptr %reset_needed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %reset_needed, align 4
  %num_slices = getelementptr i8, ptr %t, i32 -192
  %9 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp66 = icmp sgt i32 %10, 0
  br i1 %cmp66, label %land.rhs.lr.ph, label %entry.if.then29_crit_edge

entry.if.then29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then29

land.rhs.lr.ph:                                   ; preds = %entry
  %small_bytes = getelementptr i8, ptr %t, i32 -184
  %big_bytes = getelementptr i8, ptr %t, i32 -180
  br label %land.rhs

land.rhs:                                         ; preds = %if.end27.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.067 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end27.land.rhs_crit_edge ]
  %11 = ptrtoint ptr %reset_needed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reset_needed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2 = icmp eq i32 %12, 0
  br i1 %cmp2, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %arrayidx4 = getelementptr %struct.myri10ge_slice_state, ptr %14, i32 %i.067
  %watchdog_needed = getelementptr %struct.myri10ge_slice_state, ptr %14, i32 %i.067, i32 1, i32 10
  %15 = ptrtoint ptr %watchdog_needed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %watchdog_needed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %for.body.if.end12_crit_edge, label %if.then

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end12

if.then:                                          ; preds = %for.body
  %rx_small = getelementptr %struct.myri10ge_slice_state, ptr %14, i32 %i.067, i32 1
  %17 = ptrtoint ptr %small_bytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %small_bytes, align 4
  %add = add i32 %18, 2
  tail call fastcc void @myri10ge_alloc_rx_pages(ptr noundef %add.ptr, ptr noundef %rx_small, i32 noundef %add, i32 noundef 1)
  %fill_cnt = getelementptr %struct.myri10ge_slice_state, ptr %14, i32 %i.067, i32 1, i32 7
  %19 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fill_cnt, align 4
  %cnt = getelementptr %struct.myri10ge_slice_state, ptr %14, i32 %i.067, i32 1, i32 6
  %21 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cnt, align 8
  %sub = sub i32 %20, %22
  %23 = load i32, ptr @myri10ge_fill_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %23)
  %cmp8.not = icmp slt i32 %sub, %23
  br i1 %cmp8.not, label %if.then.if.end12_crit_edge, label %if.then9

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end12

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  %24 = ptrtoint ptr %watchdog_needed to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %watchdog_needed, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then.if.end12_crit_edge, %for.body.if.end12_crit_edge
  %watchdog_needed13 = getelementptr %struct.myri10ge_slice_state, ptr %14, i32 %i.067, i32 2, i32 10
  %25 = ptrtoint ptr %watchdog_needed13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %watchdog_needed13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool14.not = icmp eq i32 %26, 0
  br i1 %tobool14.not, label %if.end12.if.end27_crit_edge, label %if.then15

if.end12.if.end27_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end27

if.then15:                                        ; preds = %if.end12
  %rx_big = getelementptr %struct.myri10ge_slice_state, ptr %14, i32 %i.067, i32 2
  %27 = ptrtoint ptr %big_bytes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %big_bytes, align 4
  tail call fastcc void @myri10ge_alloc_rx_pages(ptr noundef %add.ptr, ptr noundef %rx_big, i32 noundef %28, i32 noundef 1)
  %fill_cnt18 = getelementptr %struct.myri10ge_slice_state, ptr %14, i32 %i.067, i32 2, i32 7
  %29 = ptrtoint ptr %fill_cnt18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fill_cnt18, align 4
  %cnt20 = getelementptr %struct.myri10ge_slice_state, ptr %14, i32 %i.067, i32 2, i32 6
  %31 = ptrtoint ptr %cnt20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cnt20, align 4
  %sub21 = sub i32 %30, %32
  %33 = load i32, ptr @myri10ge_fill_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub21, i32 %33)
  %cmp22.not = icmp slt i32 %sub21, %33
  br i1 %cmp22.not, label %if.then15.if.end27_crit_edge, label %if.then23

if.then15.if.end27_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end27

if.then23:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #26
  %34 = ptrtoint ptr %watchdog_needed13 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %watchdog_needed13, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.then15.if.end27_crit_edge, %if.end12.if.end27_crit_edge
  call fastcc void @myri10ge_check_slice(ptr noundef %arrayidx4, ptr noundef nonnull %reset_needed, ptr noundef nonnull %busy_slice_cnt, i32 noundef %6)
  %inc = add nuw nsw i32 %i.067, 1
  %35 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_slices, align 4
  %cmp = icmp slt i32 %inc, %36
  br i1 %cmp, label %if.end27.land.rhs_crit_edge, label %if.end27.for.end_crit_edge

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

if.end27.land.rhs_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.rhs

for.end:                                          ; preds = %if.end27.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %37 = ptrtoint ptr %busy_slice_cnt to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr70 = load i32, ptr %busy_slice_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr70)
  %cmp28 = icmp eq i32 %.pr70, 0
  br i1 %cmp28, label %for.end.if.then29_crit_edge, label %for.end.if.end34_crit_edge

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end34

for.end.if.then29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then29

if.then29:                                        ; preds = %for.end.if.then29_crit_edge, %entry.if.then29_crit_edge
  %pdev = getelementptr i8, ptr %t, i32 -136
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 4
  %call = call i32 @pci_read_config_word(ptr noundef %39, i32 noundef 4, ptr noundef nonnull %cmd) #24
  %40 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %cmd, align 2
  %42 = and i16 %41, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp30 = icmp eq i16 %42, 0
  br i1 %cmp30, label %if.end34.thread, label %if.then29.if.end34_crit_edge

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end34

if.end34.thread:                                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #26
  %watchdog_pause64 = getelementptr i8, ptr %t, i32 52
  %43 = ptrtoint ptr %watchdog_pause64 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %6, ptr %watchdog_pause64, align 4
  br label %if.then36

if.end34:                                         ; preds = %if.then29.if.end34_crit_edge, %for.end.if.end34_crit_edge
  %44 = ptrtoint ptr %reset_needed to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr = load i32, ptr %reset_needed, align 4
  %watchdog_pause = getelementptr i8, ptr %t, i32 52
  %45 = ptrtoint ptr %watchdog_pause to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %6, ptr %watchdog_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool35.not = icmp eq i32 %.pr, 0
  br i1 %tobool35.not, label %if.else, label %if.end34.if.then36_crit_edge

if.end34.if.then36_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then36

if.then36:                                        ; preds = %if.end34.if.then36_crit_edge, %if.end34.thread
  %watchdog_work = getelementptr i8, ptr %t, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %46 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %watchdog_work) #24
  br label %if.end40

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %48 = load i32, ptr @myri10ge_watchdog_timeout, align 4
  %mul = mul i32 %48, 100
  %add38 = add i32 %mul, %47
  %call39 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add38) #24
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then36
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %busy_slice_cnt) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset_needed) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @myri10ge_watchdog(ptr noundef %work) #3 align 64 {
entry:
  %reboot.i = alloca i32, align 4
  %reset_needed = alloca i32, align 4
  %busy_slice_cnt = alloca i32, align 4
  %cmd = alloca i16, align 2
  %vendor = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -156
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset_needed) #24
  %0 = ptrtoint ptr %reset_needed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reset_needed, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %busy_slice_cnt) #24
  %1 = ptrtoint ptr %busy_slice_cnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %busy_slice_cnt, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #24
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %cmd, align 2, !annotation !609
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor) #24
  %3 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %vendor, align 2, !annotation !609
  %watchdog_resets = getelementptr i8, ptr %work, i32 92
  %4 = ptrtoint ptr %watchdog_resets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %watchdog_resets, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %watchdog_resets, align 4
  %pdev = getelementptr i8, ptr %work, i32 -92
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %call = call i32 @pci_read_config_word(ptr noundef %7, i32 noundef 4, ptr noundef nonnull %cmd) #24
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cmd, align 2
  %10 = and i16 %9, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp = icmp eq i16 %10, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %vendor_specific_offset.i = getelementptr i8, ptr %work, i32 528
  %13 = ptrtoint ptr %vendor_specific_offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vendor_specific_offset.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reboot.i) #24
  %15 = ptrtoint ptr %reboot.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %reboot.i, align 4, !annotation !609
  %add.i = add i32 %14, 16
  %call.i = call i32 @pci_write_config_byte(ptr noundef %12, i32 noundef %add.i, i8 noundef zeroext 3) #24
  %add2.i = add i32 %14, 24
  %call3.i = call i32 @pci_write_config_dword(ptr noundef %12, i32 noundef %add2.i, i32 noundef -16) #24
  %add4.i = add i32 %14, 20
  %call5.i = call i32 @pci_read_config_dword(ptr noundef %12, i32 noundef %add4.i, ptr noundef nonnull %reboot.i) #24
  %16 = ptrtoint ptr %reboot.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reboot.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reboot.i) #24
  %dev = getelementptr i8, ptr %work, i32 -128
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = load i32, ptr @myri10ge_reset_recover, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  %cond = select i1 %tobool.not, ptr @.str.237, ptr @.str.236
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.235, i32 noundef %17, ptr noundef nonnull %cond) #27
  %21 = load i32, ptr @myri10ge_reset_recover, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp3 = icmp eq i32 %21, 0
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  call void @rtnl_lock() #24
  %rebooted6 = getelementptr i8, ptr %work, i32 568
  %22 = ptrtoint ptr %rebooted6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %rebooted6, align 4
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %call8 = call i32 @myri10ge_close(ptr noundef %24)
  %25 = load i32, ptr @myri10ge_reset_recover, align 4
  %dec = add i32 %25, -1
  store i32 %dec, ptr @myri10ge_reset_recover, align 4
  %26 = ptrtoint ptr %rebooted6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %rebooted6, align 4
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 4
  call void @pci_restore_state(ptr noundef %28) #24
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 4
  %call12 = call i32 @pci_save_state(ptr noundef %30) #24
  br label %if.end55

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp14 = icmp eq i16 %9, -1
  br i1 %cmp14, label %if.then16, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end25

if.then16:                                        ; preds = %if.else
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 4
  %call18 = call i32 @pci_read_config_word(ptr noundef %32, i32 noundef 0, ptr noundef nonnull %vendor) #24
  %33 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %34)
  %cmp20 = icmp eq i16 %34, -1
  br i1 %cmp20, label %if.then22, label %if.then16.if.end25_crit_edge

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end25

if.then22:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #26
  %dev23 = getelementptr i8, ptr %work, i32 -128
  %35 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev23, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %36, ptr noundef nonnull @.str.238) #27
  br label %cleanup

if.end25:                                         ; preds = %if.then16.if.end25_crit_edge, %if.else.if.end25_crit_edge
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 4
  %fw_stats = getelementptr inbounds %struct.myri10ge_slice_state, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %fw_stats to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fw_stats, align 16
  %dropped_pause = getelementptr inbounds %struct.mcp_irq_data, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %dropped_pause to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dropped_pause, align 4
  %num_slices = getelementptr i8, ptr %work, i32 -148
  %43 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp2798 = icmp sgt i32 %44, 0
  br i1 %cmp2798, label %if.end25.for.body_crit_edge, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end25.for.body_crit_edge
  %i.099 = phi i32 [ %inc34, %for.inc.for.body_crit_edge ], [ 0, %if.end25.for.body_crit_edge ]
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr, align 4
  %stuck = getelementptr inbounds %struct.myri10ge_slice_state, ptr %46, i32 0, i32 14
  %47 = ptrtoint ptr %stuck to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stuck, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool30.not = icmp eq i32 %48, 0
  br i1 %tobool30.not, label %for.body.for.inc_crit_edge, label %if.then31

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.inc

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  call fastcc void @myri10ge_check_slice(ptr noundef %46, ptr noundef nonnull %reset_needed, ptr noundef nonnull %busy_slice_cnt, i32 noundef %42)
  %49 = ptrtoint ptr %stuck to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %stuck, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %for.body.for.inc_crit_edge
  %inc34 = add nuw nsw i32 %i.099, 1
  %50 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_slices, align 4
  %cmp27 = icmp slt i32 %inc34, %51
  br i1 %cmp27, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end25.for.end_crit_edge
  %52 = ptrtoint ptr %reset_needed to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reset_needed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool35.not = icmp eq i32 %53, 0
  br i1 %tobool35.not, label %do.body37, label %if.then52

do.body37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myri10ge_watchdog.__UNIQUE_ID_ddebug642, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myri10ge_watchdog, %if.then43)) #24
          to label %cleanup [label %if.then43], !srcloc !623

if.then43:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #26
  %dev44 = getelementptr i8, ptr %work, i32 -128
  %54 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev44, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @myri10ge_watchdog.__UNIQUE_ID_ddebug642, ptr noundef %55, ptr noundef nonnull @.str.240) #24
  br label %cleanup

if.then52:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #26
  %dev49 = getelementptr i8, ptr %work, i32 -128
  %56 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev49, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %57, ptr noundef nonnull @.str.241) #27
  call void @rtnl_lock() #24
  %58 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev49, align 4
  %call54 = call i32 @myri10ge_close(ptr noundef %59)
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end
  %call56 = call fastcc i32 @myri10ge_load_firmware(ptr noundef %add.ptr, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57.not = icmp eq i32 %call56, 0
  %dev62 = getelementptr i8, ptr %work, i32 -128
  %60 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev62, align 4
  br i1 %cmp57.not, label %if.else61, label %if.then59

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %61, ptr noundef nonnull @.str.27) #27
  br label %if.end64

if.else61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #26
  %call63 = call i32 @myri10ge_open(ptr noundef %61)
  br label %if.end64

if.end64:                                         ; preds = %if.else61, %if.then59
  call void @rtnl_unlock() #24
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then43, %do.body37, %if.then22, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor) #24
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %busy_slice_cnt) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset_needed) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myri10ge_free_slices(ptr nocapture noundef %mgp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 16
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %2 = ptrtoint ptr %mgp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgp, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_slices = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 2
  %4 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp344 = icmp sgt i32 %5, 0
  br i1 %cmp344, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %max_intr_slots = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 6
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end19.for.body_crit_edge ]
  %6 = ptrtoint ptr %mgp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mgp, align 4
  %rx_done = getelementptr %struct.myri10ge_slice_state, ptr %7, i32 %i.045, i32 3
  %8 = ptrtoint ptr %rx_done to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_done, align 8
  %cmp6.not = icmp eq ptr %9, null
  br i1 %cmp6.not, label %for.body.if.end13_crit_edge, label %if.then7

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end13

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  %10 = ptrtoint ptr %max_intr_slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_intr_slots, align 4
  %mul = shl i32 %11, 2
  %bus = getelementptr %struct.myri10ge_slice_state, ptr %7, i32 %i.045, i32 3, i32 1
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef nonnull %9, i32 noundef %13, i32 noundef 0) #24
  %14 = ptrtoint ptr %rx_done to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rx_done, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %for.body.if.end13_crit_edge
  %fw_stats = getelementptr %struct.myri10ge_slice_state, ptr %7, i32 %i.045, i32 9
  %15 = ptrtoint ptr %fw_stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw_stats, align 16
  %cmp14.not = icmp eq ptr %16, null
  br i1 %cmp14.not, label %if.end13.if.end19_crit_edge, label %if.then15

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end19

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #26
  %fw_stats_bus = getelementptr %struct.myri10ge_slice_state, ptr %7, i32 %i.045, i32 10
  %17 = ptrtoint ptr %fw_stats_bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fw_stats_bus, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 64, ptr noundef nonnull %16, i32 noundef %18, i32 noundef 0) #24
  %19 = ptrtoint ptr %fw_stats to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %fw_stats, align 16
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end13.if.end19_crit_edge
  %napi = getelementptr %struct.myri10ge_slice_state, ptr %7, i32 %i.045, i32 5
  tail call void @__netif_napi_del(ptr noundef %napi) #24
  %inc = add nuw nsw i32 %i.045, 1
  %20 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_slices, align 4
  %cmp3 = icmp slt i32 %inc, %21
  br i1 %cmp3, label %if.end19.for.body_crit_edge, label %if.end19.for.end_crit_edge

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

for.end:                                          ; preds = %if.end19.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @synchronize_net() #24
  %22 = ptrtoint ptr %mgp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mgp, align 4
  tail call void @kfree(ptr noundef %23) #24
  %24 = ptrtoint ptr %mgp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %mgp, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myri10ge_dummy_rdma(ptr nocapture noundef readonly %mgp, i32 noundef %enable) unnamed_addr #3 align 64 {
entry:
  %buf = alloca [16 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #24
  %0 = getelementptr inbounds i8, ptr %buf, i32 24
  %1 = call ptr @memset(ptr %0, i32 255, i32 40)
  %cmd = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 14
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !624
  tail call void @arm_heavy_mb() #24
  %cmd_bus = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 15
  %5 = ptrtoint ptr %cmd_bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cmd_bus, align 4
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %buf, align 8
  %arrayidx1 = getelementptr inbounds [16 x i32], ptr %buf, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr %buf, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds [16 x i32], ptr %buf, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds [16 x i32], ptr %buf, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %6, ptr %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds [16 x i32], ptr %buf, i32 0, i32 5
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %enable, ptr %arrayidx5, align 4
  %sram = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 8
  %13 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sram, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 16515520
  call void @__iowrite64_copy(ptr noundef %add.ptr, ptr noundef nonnull %buf, i32 noundef 8) #24
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.not24.not = icmp eq i32 %18, -1
  br i1 %cmp.not24.not, label %entry.if.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @msleep(i32 noundef 1) #24
  %inc = add nuw nsw i32 %i.025, 1
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.not = icmp ne i32 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %i.025)
  %cmp8 = icmp ult i32 %i.025, 19
  %or.cond = select i1 %cmp.not, i1 %cmp8, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %phi.cmp = icmp eq i32 %22, -1
  br i1 %phi.cmp, label %for.end.if.end_crit_edge, label %do.end14

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

do.end14:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #26
  %pdev = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 16
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool.not, ptr @.str.245, ptr @.str.244
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.242, ptr noundef nonnull %cond) #27
  br label %if.end

if.end:                                           ; preds = %do.end14, %for.end.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_param_lock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_param_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_readrq(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @myri10ge_dma_test(ptr nocapture noundef %mgp, i32 noundef %test_type) unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.myri10ge_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #24
  %0 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd, i32 0, i32 2
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #24
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 16
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call1 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef nonnull %call38.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #24
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev3, i32 noundef %call1) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp.i.not = icmp eq i32 %call1, -1
  br i1 %cmp.i.not, label %if.then8, label %if.end9, !prof !614

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #24
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %tx_boundary = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 1
  %6 = ptrtoint ptr %tx_boundary to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_boundary, align 4
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call1, ptr %cmd, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %0, align 4
  %mul = shl i32 %7, 16
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %1, align 4
  %call10 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef %test_type, ptr noundef nonnull %cmd, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %if.end12, label %if.end9.abort_crit_edge

if.end9.abort_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort

if.end12:                                         ; preds = %if.end9
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd, align 4
  %shr = lshr i32 %12, 16
  %mul14 = shl i32 %7, 1
  %mul15 = mul i32 %mul14, %shr
  %and = and i32 %12, 65535
  %div = udiv i32 %mul15, %and
  %read_dma = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 47
  %13 = ptrtoint ptr %read_dma to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div, ptr %read_dma, align 4
  store i32 %call1, ptr %cmd, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %0, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %7, ptr %1, align 4
  %call21 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef %test_type, ptr noundef nonnull %cmd, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end24, label %if.end12.abort_crit_edge

if.end12.abort_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort

if.end24:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmd, align 4
  %shr26 = lshr i32 %17, 16
  %mul28 = mul i32 %mul14, %shr26
  %and30 = and i32 %17, 65535
  %div31 = udiv i32 %mul28, %and30
  %write_dma = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 48
  %18 = ptrtoint ptr %write_dma to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div31, ptr %write_dma, align 4
  store i32 %call1, ptr %cmd, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %0, align 4
  %mul34 = mul i32 %7, 65537
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul34, ptr %1, align 4
  %call36 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef %test_type, ptr noundef nonnull %cmd, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %if.end39, label %if.end24.abort_crit_edge

if.end24.abort_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort

if.end39:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #26
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cmd, align 4
  %shr41 = lshr i32 %22, 16
  %mul42 = shl i32 %7, 2
  %mul44 = mul i32 %mul42, %shr41
  %and46 = and i32 %22, 65535
  %div47 = udiv i32 %mul44, %and46
  %read_write_dma = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 49
  %23 = ptrtoint ptr %read_write_dma to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div47, ptr %read_write_dma, align 4
  br label %abort

abort:                                            ; preds = %if.end39, %if.end24.abort_crit_edge, %if.end12.abort_crit_edge, %if.end9.abort_crit_edge
  %status.0 = phi i32 [ 0, %if.end39 ], [ %call10, %if.end9.abort_crit_edge ], [ %call21, %if.end12.abort_crit_edge ], [ %call36, %if.end24.abort_crit_edge ]
  %test.0 = phi ptr [ @.str.102, %if.end39 ], [ @.str.103, %if.end9.abort_crit_edge ], [ @.str.104, %if.end12.abort_crit_edge ], [ @.str.105, %if.end24.abort_crit_edge ]
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 4
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev49, i32 noundef %call1, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #24
  %26 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !625

if.then.i.i:                                      ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #26
  %sub.i.i = add i32 %28, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #26
  %29 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %29, %if.end.i.i ]
  %30 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #24
  %31 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i.i.i = icmp eq i32 %32, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !614

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.114) #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #24, !srcloc !626
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #24, !srcloc !627
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #24
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #24, !srcloc !628
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #24, !srcloc !629
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@myri10ge_dma_test, %if.then.i.i.i.i.i)) #24
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !623

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %30, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #24
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @__put_page(ptr noundef %30) #24
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %cmp50.not = icmp eq i32 %status.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %test_type)
  %cmp51.not = icmp eq i32 %test_type, 32
  %or.cond = or i1 %cmp51.not, %cmp50.not
  br i1 %or.cond, label %put_page.exit.cleanup_crit_edge, label %do.end

put_page.exit.cleanup_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

do.end:                                           ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #26
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 4
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev54, ptr noundef nonnull @.str.106, ptr noundef nonnull %test.0, i32 noundef %status.0) #27
  br label %cleanup

cleanup:                                          ; preds = %do.end, %put_page.exit.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then8 ], [ -12, %entry.cleanup_crit_edge ], [ %status.0, %do.end ], [ %status.0, %put_page.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #24
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @myri10ge_send_cmd(ptr nocapture noundef readonly %mgp, i32 noundef %cmd, ptr nocapture noundef %data, i32 noundef %atomic) unnamed_addr #3 align 64 {
entry:
  %buf_bytes = alloca [72 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %buf_bytes) #24
  %0 = call ptr @memset(ptr %buf_bytes, i32 255, i32 72)
  %cmd1 = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 14
  %1 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd1, align 4
  %sram = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 8
  %3 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sram, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 16252928
  %5 = ptrtoint ptr %buf_bytes to i32
  %add = add i32 %5, 7
  %and = and i32 %add, -8
  %6 = inttoptr i32 %and to ptr
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  %data02 = getelementptr inbounds %struct.mcp_cmd, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %data02 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %data02, align 4
  %data1 = getelementptr inbounds %struct.myri10ge_cmd, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data1, align 4
  %data13 = getelementptr inbounds %struct.mcp_cmd, ptr %6, i32 0, i32 2
  %12 = ptrtoint ptr %data13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %data13, align 8
  %data2 = getelementptr inbounds %struct.myri10ge_cmd, ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data2, align 4
  %data24 = getelementptr inbounds %struct.mcp_cmd, ptr %6, i32 0, i32 3
  %15 = ptrtoint ptr %data24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %data24, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cmd, ptr %6, align 8
  %cmd_bus = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 15
  %17 = ptrtoint ptr %cmd_bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmd_bus, align 4
  %response_addr = getelementptr inbounds %struct.mcp_cmd, ptr %6, i32 0, i32 4
  %low = getelementptr inbounds %struct.mcp_cmd, ptr %6, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %low to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %low, align 4
  %20 = ptrtoint ptr %response_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %response_addr, align 8
  %result7 = getelementptr inbounds %struct.mcp_cmd_response, ptr %2, i32 0, i32 1
  %21 = ptrtoint ptr %result7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %result7, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !630
  call void @arm_heavy_mb() #24
  call void @__iowrite64_copy(ptr noundef %add.ptr, ptr noundef %6, i32 noundef 8) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %atomic)
  %tobool.not = icmp eq i32 %atomic, 0
  br i1 %tobool.not, label %land.rhs16.preheader, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs16.preheader:                             ; preds = %entry
  %22 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %result7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp18 = icmp eq i32 %23, -1
  br i1 %cmp18, label %for.body20, label %land.rhs16.preheader.if.end_crit_edge

land.rhs16.preheader.if.end_crit_edge:            ; preds = %land.rhs16.preheader
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %sleep_total.096 = phi i32 [ %add13, %for.body.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %24 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %result7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp9 = icmp eq i32 %25, -1
  br i1 %cmp9, label %for.body, label %land.rhs.if.end_crit_edge

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body:                                         ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 2147480) #24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !631
  call void @arm_heavy_mb() #24
  %add13 = add nuw nsw i32 %sleep_total.096, 10
  %cmp = icmp ult i32 %sleep_total.096, 990
  br i1 %cmp, label %for.body.land.rhs_crit_edge, label %for.body.if.endthread-pre-split_crit_edge

for.body.if.endthread-pre-split_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.endthread-pre-split

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %land.rhs

for.body20:                                       ; preds = %land.rhs16.preheader
  call void @msleep(i32 noundef 1) #24
  %27 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %result7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp18.1 = icmp eq i32 %28, -1
  br i1 %cmp18.1, label %for.body20.1, label %for.body20.if.end_crit_edge

for.body20.if.end_crit_edge:                      ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body20.1:                                     ; preds = %for.body20
  call void @msleep(i32 noundef 1) #24
  %29 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %result7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp18.2 = icmp eq i32 %30, -1
  br i1 %cmp18.2, label %for.body20.2, label %for.body20.1.if.end_crit_edge

for.body20.1.if.end_crit_edge:                    ; preds = %for.body20.1
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body20.2:                                     ; preds = %for.body20.1
  call void @msleep(i32 noundef 1) #24
  %31 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %result7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp18.3 = icmp eq i32 %32, -1
  br i1 %cmp18.3, label %for.body20.3, label %for.body20.2.if.end_crit_edge

for.body20.2.if.end_crit_edge:                    ; preds = %for.body20.2
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body20.3:                                     ; preds = %for.body20.2
  call void @msleep(i32 noundef 1) #24
  %33 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %result7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp18.4 = icmp eq i32 %34, -1
  br i1 %cmp18.4, label %for.body20.4, label %for.body20.3.if.end_crit_edge

for.body20.3.if.end_crit_edge:                    ; preds = %for.body20.3
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body20.4:                                     ; preds = %for.body20.3
  call void @msleep(i32 noundef 1) #24
  %35 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %result7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp18.5 = icmp eq i32 %36, -1
  br i1 %cmp18.5, label %for.body20.5, label %for.body20.4.if.end_crit_edge

for.body20.4.if.end_crit_edge:                    ; preds = %for.body20.4
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body20.5:                                     ; preds = %for.body20.4
  call void @msleep(i32 noundef 1) #24
  %37 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %result7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp18.6 = icmp eq i32 %38, -1
  br i1 %cmp18.6, label %for.body20.6, label %for.body20.5.if.end_crit_edge

for.body20.5.if.end_crit_edge:                    ; preds = %for.body20.5
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body20.6:                                     ; preds = %for.body20.5
  call void @msleep(i32 noundef 1) #24
  %39 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %result7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp18.7 = icmp eq i32 %40, -1
  br i1 %cmp18.7, label %for.body20.7, label %for.body20.6.if.end_crit_edge

for.body20.6.if.end_crit_edge:                    ; preds = %for.body20.6
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body20.7:                                     ; preds = %for.body20.6
  call void @msleep(i32 noundef 1) #24
  %41 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %result7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp18.8 = icmp eq i32 %42, -1
  br i1 %cmp18.8, label %for.body20.8, label %for.body20.7.if.end_crit_edge

for.body20.7.if.end_crit_edge:                    ; preds = %for.body20.7
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body20.8:                                     ; preds = %for.body20.7
  call void @msleep(i32 noundef 1) #24
  %43 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %result7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp18.9 = icmp eq i32 %44, -1
  br i1 %cmp18.9, label %for.body20.9, label %for.body20.8.if.end_crit_edge

for.body20.8.if.end_crit_edge:                    ; preds = %for.body20.8
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body20.9:                                     ; preds = %for.body20.8
  call void @msleep(i32 noundef 1) #24
  %45 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %result7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp18.10 = icmp eq i32 %46, -1
  br i1 %cmp18.10, label %for.body20.10, label %for.body20.9.if.end_crit_edge

for.body20.9.if.end_crit_edge:                    ; preds = %for.body20.9
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body20.10:                                    ; preds = %for.body20.9
  call void @msleep(i32 noundef 1) #24
  %47 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %result7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp18.11 = icmp eq i32 %48, -1
  br i1 %cmp18.11, label %for.body20.11, label %for.body20.10.if.end_crit_edge

for.body20.10.if.end_crit_edge:                   ; preds = %for.body20.10
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body20.11:                                    ; preds = %for.body20.10
  call void @msleep(i32 noundef 1) #24
  %49 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %result7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp18.12 = icmp eq i32 %50, -1
  br i1 %cmp18.12, label %for.body20.12, label %for.body20.11.if.end_crit_edge

for.body20.11.if.end_crit_edge:                   ; preds = %for.body20.11
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body20.12:                                    ; preds = %for.body20.11
  call void @msleep(i32 noundef 1) #24
  %51 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %result7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp18.13 = icmp eq i32 %52, -1
  br i1 %cmp18.13, label %for.body20.13, label %for.body20.12.if.end_crit_edge

for.body20.12.if.end_crit_edge:                   ; preds = %for.body20.12
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body20.13:                                    ; preds = %for.body20.12
  call void @msleep(i32 noundef 1) #24
  %53 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %result7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp18.14 = icmp eq i32 %54, -1
  br i1 %cmp18.14, label %for.body20.14, label %for.body20.13.if.end_crit_edge

for.body20.13.if.end_crit_edge:                   ; preds = %for.body20.13
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

for.body20.14:                                    ; preds = %for.body20.13
  call void @__sanitizer_cov_trace_pc() #26
  call void @msleep(i32 noundef 1) #24
  br label %if.endthread-pre-split

if.endthread-pre-split:                           ; preds = %for.body20.14, %for.body.if.endthread-pre-split_crit_edge
  %55 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr = load i32, ptr %result7, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %for.body20.13.if.end_crit_edge, %for.body20.12.if.end_crit_edge, %for.body20.11.if.end_crit_edge, %for.body20.10.if.end_crit_edge, %for.body20.9.if.end_crit_edge, %for.body20.8.if.end_crit_edge, %for.body20.7.if.end_crit_edge, %for.body20.6.if.end_crit_edge, %for.body20.5.if.end_crit_edge, %for.body20.4.if.end_crit_edge, %for.body20.3.if.end_crit_edge, %for.body20.2.if.end_crit_edge, %for.body20.1.if.end_crit_edge, %for.body20.if.end_crit_edge, %land.rhs.if.end_crit_edge, %land.rhs16.preheader.if.end_crit_edge
  %56 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %23, %land.rhs16.preheader.if.end_crit_edge ], [ %28, %for.body20.if.end_crit_edge ], [ %30, %for.body20.1.if.end_crit_edge ], [ %32, %for.body20.2.if.end_crit_edge ], [ %34, %for.body20.3.if.end_crit_edge ], [ %36, %for.body20.4.if.end_crit_edge ], [ %38, %for.body20.5.if.end_crit_edge ], [ %40, %for.body20.6.if.end_crit_edge ], [ %42, %for.body20.7.if.end_crit_edge ], [ %44, %for.body20.8.if.end_crit_edge ], [ %46, %for.body20.9.if.end_crit_edge ], [ %48, %for.body20.10.if.end_crit_edge ], [ %50, %for.body20.11.if.end_crit_edge ], [ %52, %for.body20.12.if.end_crit_edge ], [ %54, %for.body20.13.if.end_crit_edge ], [ %25, %land.rhs.if.end_crit_edge ]
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %56, label %if.end.do.end48_crit_edge [
    i32 -1, label %do.end52
    i32 0, label %if.then29
    i32 1, label %if.end.cleanup_crit_edge
    i32 10, label %if.then36
    i32 2, label %land.lhs.true
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end.do.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end48

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %2, align 4
  %60 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %data, align 4
  br label %cleanup

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %cmd)
  %cmp39 = icmp eq i32 %cmd, 36
  br i1 %cmp39, label %land.lhs.true40, label %land.lhs.true.do.end48_crit_edge

land.lhs.true.do.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end48

land.lhs.true40:                                  ; preds = %land.lhs.true
  %61 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %data1, align 4
  %and42 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %cmp43.not = icmp eq i32 %and42, 0
  br i1 %cmp43.not, label %land.lhs.true40.do.end48_crit_edge, label %land.lhs.true40.cleanup_crit_edge

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

land.lhs.true40.do.end48_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end48

do.end48:                                         ; preds = %land.lhs.true40.do.end48_crit_edge, %land.lhs.true.do.end48_crit_edge, %if.end.do.end48_crit_edge
  %pdev = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 16
  %63 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.109, i32 noundef %cmd, i32 noundef %56) #27
  br label %cleanup

do.end52:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %pdev53 = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 16
  %65 = ptrtoint ptr %pdev53 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev53, align 4
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.112, i32 noundef %cmd, i32 noundef -1) #27
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %do.end48, %land.lhs.true40.cleanup_crit_edge, %if.then36, %if.then29, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then29 ], [ -7, %if.then36 ], [ -6, %do.end48 ], [ -11, %do.end52 ], [ -38, %if.end.cleanup_crit_edge ], [ -34, %land.lhs.true40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %buf_bytes) #24
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iowrite64_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @myri10ge_adopt_running_firmware(ptr noundef %mgp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 16
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %sram = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 8
  %2 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sram, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 60
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #24, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !632
  %and = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %add = add i32 %4, 192
  %sram_size = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 9
  %5 = ptrtoint ptr %sram_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sram_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp = icmp ugt i32 %add, %6
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.157, i32 noundef %4) #27
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 192) #31
  %cmp4 = icmp eq ptr %call7.i, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sram, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 %4
  tail call void @mmiocpy(ptr noundef nonnull %call7.i, ptr noundef %add.ptr8, i32 noundef 192) #24
  %call9 = tail call fastcc i32 @myri10ge_validate_firmware(ptr noundef %mgp, ptr noundef nonnull %call7.i)
  tail call void @kfree(ptr noundef nonnull %call7.i) #24
  %fw_ver_major = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 37
  %10 = ptrtoint ptr %fw_ver_major to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_ver_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp10 = icmp eq i32 %11, 1
  br i1 %cmp10, label %land.lhs.true, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end6
  %fw_ver_minor = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 38
  %12 = ptrtoint ptr %fw_ver_minor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_ver_minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp11 = icmp eq i32 %13, 4
  br i1 %cmp11, label %land.lhs.true12, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

land.lhs.true12:                                  ; preds = %land.lhs.true
  %fw_ver_tiny = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 39
  %14 = ptrtoint ptr %fw_ver_tiny to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_ver_tiny, align 4
  %16 = add i32 %15, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %17 = icmp ult i32 %16, 8
  br i1 %17, label %if.then17, label %land.lhs.true12.cleanup_crit_edge

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #26
  %adopted_rx_filter_bug = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 40
  %18 = ptrtoint ptr %adopted_rx_filter_bug to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %adopted_rx_filter_bug, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.160, i32 noundef 1, i32 noundef 4, i32 noundef %15) #27
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %land.lhs.true12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call9, %if.then17 ], [ %call9, %land.lhs.true12.cleanup_crit_edge ], [ %call9, %land.lhs.true.cleanup_crit_edge ], [ %call9, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @myri10ge_get_firmware_capabilities(ptr nocapture noundef %mgp) unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.myri10ge_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #24
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !609
  %1 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !609
  %3 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !609
  %features = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 45
  %5 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65545, ptr %features, align 4
  %call = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef 44, ptr noundef nonnull %cmd, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd, align 4
  %max_tso6 = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 46
  %8 = ptrtoint ptr %max_tso6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max_tso6, align 4
  %9 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %features, align 4
  %11 = or i32 %10, 1048576
  store i32 %11, ptr %features, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %mgp, i32 noundef 12, ptr noundef nonnull %cmd, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %pdev = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 16
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.162) #27
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmd, align 4
  %16 = lshr i32 %15, 2
  %mul = and i32 %16, 1073741822
  %max_intr_slots = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 6
  %17 = ptrtoint ptr %max_intr_slots to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul, ptr %max_intr_slots, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #24
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @myri10ge_validate_firmware(ptr noundef %mgp, ptr nocapture noundef readonly %hdr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 16
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %mcp_type = getelementptr inbounds %struct.mcp_gen_header, ptr %hdr, i32 0, i32 1
  %2 = ptrtoint ptr %mcp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mcp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1163151392, i32 %3)
  %cmp.not = icmp eq i32 %3, 1163151392
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.148, i32 noundef %3) #27
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_version = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 36
  %version = getelementptr inbounds %struct.mcp_gen_header, ptr %hdr, i32 0, i32 2
  %call = tail call ptr @strncpy(ptr noundef %fw_version, ptr noundef %version, i32 noundef 128)
  %arrayidx = getelementptr %struct.myri10ge_priv, ptr %mgp, i32 0, i32 36, i32 127
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  %fw_ver_major = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 37
  %fw_ver_minor = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 38
  %fw_ver_tiny = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 39
  %call7 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %fw_version, ptr noundef nonnull @.str.150, ptr noundef %fw_ver_major, ptr noundef %fw_ver_minor, ptr noundef %fw_ver_tiny)
  %5 = ptrtoint ptr %fw_ver_major to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_ver_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp9 = icmp eq i32 %6, 1
  br i1 %cmp9, label %land.lhs.true, label %if.end.do.end15_crit_edge

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end15

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %fw_ver_minor to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_ver_minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp11 = icmp eq i32 %8, 4
  br i1 %cmp11, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.end15_crit_edge

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

do.end15:                                         ; preds = %land.lhs.true.do.end15_crit_edge, %if.end.do.end15_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.152, ptr noundef %fw_version) #27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.155, i32 noundef 1, i32 noundef 4) #27
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %land.lhs.true.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end15 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_get_num_default_rss_queues() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myri10ge_poll(ptr noundef %napi, i32 noundef %budget) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -496
  %call = tail call fastcc i32 @myri10ge_clean_rx_done(ptr noundef %add.ptr, i32 noundef %budget)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp slt i32 %call, %budget
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %call1 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call) #24
  %irq_claim = getelementptr i8, ptr %napi, i32 252
  %0 = ptrtoint ptr %irq_claim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_claim, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 3) #24, !srcloc !622
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @myri10ge_clean_rx_done(ptr noundef %ss, i32 noundef %budget) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  %rx_done1 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 3
  %mgp2 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 6
  %0 = ptrtoint ptr %mgp2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mgp2, align 16
  %idx3 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %idx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx3, align 4
  %cnt4 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %cnt4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt4, align 4
  %6 = ptrtoint ptr %rx_done1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_done1, align 4
  %length698 = getelementptr %struct.mcp_slot, ptr %7, i32 %3, i32 1
  %8 = ptrtoint ptr %length698 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %length698, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.not100 = icmp ne i16 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp8101 = icmp sgt i32 %budget, 0
  %or.cond102 = and i1 %cmp.not100, %cmp8101
  br i1 %or.cond102, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rx_small.i = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1
  %rx_big.i = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 2
  %napi.i = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 5
  %sub.ptr.lhs.cast.i = ptrtoint ptr %ss to i32
  %rx_dropped.i = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 7, i32 4
  %max_intr_slots = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %myri10ge_rx_done.exit.while.body_crit_edge, %while.body.lr.ph
  %conv109.in = phi i16 [ %9, %while.body.lr.ph ], [ %151, %myri10ge_rx_done.exit.while.body_crit_edge ]
  %length6108 = phi ptr [ %length698, %while.body.lr.ph ], [ %length6, %myri10ge_rx_done.exit.while.body_crit_edge ]
  %work_done.0107 = phi i32 [ 0, %while.body.lr.ph ], [ %inc23, %myri10ge_rx_done.exit.while.body_crit_edge ]
  %cnt.0106 = phi i32 [ %5, %while.body.lr.ph ], [ %inc, %myri10ge_rx_done.exit.while.body_crit_edge ]
  %idx.0105 = phi i32 [ %3, %while.body.lr.ph ], [ %and, %myri10ge_rx_done.exit.while.body_crit_edge ]
  %rx_packets.0104 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %myri10ge_rx_done.exit.while.body_crit_edge ]
  %rx_bytes.0103 = phi i32 [ 0, %while.body.lr.ph ], [ %add22, %myri10ge_rx_done.exit.while.body_crit_edge ]
  %conv109 = zext i16 %conv109.in to i32
  %10 = ptrtoint ptr %length6108 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %length6108, align 2
  %11 = ptrtoint ptr %rx_done1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_done1, align 4
  %arrayidx17 = getelementptr %struct.mcp_slot, ptr %12, i32 %idx.0105
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx17, align 2
  %conv.i = zext i16 %14 to i32
  %15 = ptrtoint ptr %mgp2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mgp2, align 16
  %pdev2.i = getelementptr inbounds %struct.myri10ge_priv, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev2.i, align 4
  %dev3.i = getelementptr inbounds %struct.myri10ge_priv, ptr %16, i32 0, i32 7
  %19 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev3.i, align 4
  %small_bytes.i = getelementptr inbounds %struct.myri10ge_priv, ptr %16, i32 0, i32 4
  %21 = ptrtoint ptr %small_bytes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %small_bytes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv109)
  %cmp.not.i = icmp slt i32 %22, %conv109
  br i1 %cmp.not.i, label %if.else.i, label %while.body.if.end.i_crit_edge

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end.i

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #26
  %big_bytes.i = getelementptr inbounds %struct.myri10ge_priv, ptr %16, i32 0, i32 5
  %23 = ptrtoint ptr %big_bytes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %big_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %while.body.if.end.i_crit_edge
  %rx.0.i = phi ptr [ %rx_big.i, %if.else.i ], [ %rx_small.i, %while.body.if.end.i_crit_edge ]
  %bytes.0.i = phi i32 [ %24, %if.else.i ], [ %22, %while.body.if.end.i_crit_edge ]
  %add.i = add nuw nsw i32 %conv109, 2
  %cnt.i = getelementptr inbounds %struct.myri10ge_rx_buf, ptr %rx.0.i, i32 0, i32 6
  %25 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cnt.i, align 4
  %mask.i = getelementptr inbounds %struct.myri10ge_rx_buf, ptr %rx.0.i, i32 0, i32 9
  %27 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %28, %26
  %info.i = getelementptr inbounds %struct.myri10ge_rx_buf, ptr %rx.0.i, i32 0, i32 2
  %29 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info.i, align 4
  %arrayidx.i = getelementptr %struct.myri10ge_rx_buffer_state, ptr %30, i32 %and.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %32) #24
  %33 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %info.i, align 4
  %page_offset.i = getelementptr %struct.myri10ge_rx_buffer_state, ptr %34, i32 %and.i, i32 1
  %35 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %page_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %36
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i) #24, !srcloc !633
  %call7.i = tail call ptr @napi_get_frags(ptr noundef %napi.i) #24
  %cmp8.i = icmp eq ptr %call7.i, null
  br i1 %cmp8.i, label %if.then10.i, label %if.end23.i, !prof !614

if.then10.i:                                      ; preds = %if.end.i
  %37 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_dropped.i, align 4
  %inc.i = add i32 %38, 1
  store i32 %inc.i, ptr %rx_dropped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %bytes.0.i)
  %cmp.i = icmp ugt i32 %bytes.0.i, 2047
  %mul.i = shl nuw nsw i32 %bytes.0.i, 1
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  br label %for.body.i

for.body.i:                                       ; preds = %put_page.exit.for.body.i_crit_edge, %if.then10.i
  %remainder.0145.i = phi i32 [ %sub.i, %put_page.exit.for.body.i_crit_edge ], [ %add.i, %if.then10.i ]
  %idx.0144.i = phi i32 [ %and21.i, %put_page.exit.for.body.i_crit_edge ], [ %and.i, %if.then10.i ]
  %39 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %info.i, align 4
  br i1 %cmp.i, label %for.body.i.if.then.i90_crit_edge, label %lor.lhs.false.i

for.body.i.if.then.i90_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then.i90

lor.lhs.false.i:                                  ; preds = %for.body.i
  %page_offset.i87 = getelementptr %struct.myri10ge_rx_buffer_state, ptr %40, i32 %idx.0144.i, i32 1
  %41 = ptrtoint ptr %page_offset.i87 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %page_offset.i87, align 4
  %add.i88 = add i32 %42, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i88)
  %cmp1.i = icmp ugt i32 %add.i88, 4096
  br i1 %cmp1.i, label %lor.lhs.false.i.if.then.i90_crit_edge, label %lor.lhs.false.i.myri10ge_unmap_rx_page.exit_crit_edge

lor.lhs.false.i.myri10ge_unmap_rx_page.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_unmap_rx_page.exit

lor.lhs.false.i.if.then.i90_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then.i90

if.then.i90:                                      ; preds = %lor.lhs.false.i.if.then.i90_crit_edge, %for.body.i.if.then.i90_crit_edge
  %bus.i = getelementptr %struct.myri10ge_rx_buffer_state, ptr %40, i32 %idx.0144.i, i32 2
  %43 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bus.i, align 4
  %and.i89 = and i32 %44, -4096
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %and.i89, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #24
  br label %myri10ge_unmap_rx_page.exit

myri10ge_unmap_rx_page.exit:                      ; preds = %if.then.i90, %lor.lhs.false.i.myri10ge_unmap_rx_page.exit_crit_edge
  %45 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %info.i, align 4
  %arrayidx15.i = getelementptr %struct.myri10ge_rx_buffer_state, ptr %46, i32 %idx.0144.i
  %47 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx15.i, align 4
  %49 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  %and.i.i81 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i81)
  %tobool.not.i.i = icmp eq i32 %and.i.i81, 0
  br i1 %tobool.not.i.i, label %if.end.i.i84, label %if.then.i.i83, !prof !625

if.then.i.i83:                                    ; preds = %myri10ge_unmap_rx_page.exit
  call void @__sanitizer_cov_trace_pc() #26
  %sub.i.i82 = add i32 %51, -1
  br label %_compound_head.exit.i

if.end.i.i84:                                     ; preds = %myri10ge_unmap_rx_page.exit
  call void @__sanitizer_cov_trace_pc() #26
  %52 = ptrtoint ptr %48 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i84, %if.then.i.i83
  %retval.0.i.i = phi i32 [ %sub.i.i82, %if.then.i.i83 ], [ %52, %if.end.i.i84 ]
  %53 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %53, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #24
  %54 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i.i.i.i85 = icmp eq i32 %55, 0
  br i1 %cmp.i.i.i.i85, label %if.then.i.i.i.i86, label %do.end5.i.i.i.i, !prof !614

if.then.i.i.i.i86:                                ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #26
  %56 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %56, ptr noundef nonnull @.str.114) #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #24, !srcloc !626
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #24, !srcloc !627
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #24
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #24, !srcloc !628
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %57, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #24, !srcloc !629
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@myri10ge_clean_rx_done, %if.then.i.i.i.i.i)) #24
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !623

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %53, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #24
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @__put_page(ptr noundef %53) #24
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %58 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cnt.i, align 4
  %inc18.i = add i32 %59, 1
  store i32 %inc18.i, ptr %cnt.i, align 4
  %60 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mask.i, align 4
  %and21.i = and i32 %61, %inc18.i
  %sub.i = add nsw i32 %remainder.0145.i, -4096
  %cmp11.i = icmp ugt i32 %remainder.0145.i, 4096
  br i1 %cmp11.i, label %put_page.exit.for.body.i_crit_edge, label %put_page.exit.myri10ge_rx_done.exit_crit_edge

put_page.exit.myri10ge_rx_done.exit_crit_edge:    ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_rx_done.exit

put_page.exit.for.body.i_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body.i

if.end23.i:                                       ; preds = %if.end.i
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 17
  %62 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %bytes.0.i)
  %cmp.i.i = icmp ugt i32 %bytes.0.i, 2047
  %mul.i.i = shl nuw nsw i32 %bytes.0.i, 1
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %pfmemalloc.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 12
  %64 = add nuw nsw i32 %conv109, 1
  %65 = lshr i32 %64, 12
  br label %for.body27.i

for.body27.i:                                     ; preds = %skb_fill_page_desc.exit.i.for.body27.i_crit_edge, %if.end23.i
  %remainder.1142.i = phi i32 [ %add.i, %if.end23.i ], [ %sub42.i, %skb_fill_page_desc.exit.i.for.body27.i_crit_edge ]
  %idx.1140.i = phi i32 [ %and.i, %if.end23.i ], [ %and41.i, %skb_fill_page_desc.exit.i.for.body27.i_crit_edge ]
  %i.1139.i = phi i32 [ 0, %if.end23.i ], [ %inc44.i, %skb_fill_page_desc.exit.i.for.body27.i_crit_edge ]
  %66 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %info.i, align 4
  br i1 %cmp.i.i, label %for.body27.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

for.body27.i.if.then.i.i_crit_edge:               ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %for.body27.i
  %page_offset.i.i = getelementptr %struct.myri10ge_rx_buffer_state, ptr %67, i32 %idx.1140.i, i32 1
  %68 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %page_offset.i.i, align 4
  %add.i.i = add i32 %69, %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp1.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.myri10ge_unmap_rx_page.exit.i_crit_edge

lor.lhs.false.i.i.myri10ge_unmap_rx_page.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_unmap_rx_page.exit.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %for.body27.i.if.then.i.i_crit_edge
  %bus.i.i = getelementptr %struct.myri10ge_rx_buffer_state, ptr %67, i32 %idx.1140.i, i32 2
  %70 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bus.i.i, align 4
  %and.i.i = and i32 %71, -4096
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %and.i.i, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #24
  br label %myri10ge_unmap_rx_page.exit.i

myri10ge_unmap_rx_page.exit.i:                    ; preds = %if.then.i.i, %lor.lhs.false.i.i.myri10ge_unmap_rx_page.exit.i_crit_edge
  %72 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %info.i, align 4
  %arrayidx31.i = getelementptr %struct.myri10ge_rx_buffer_state, ptr %73, i32 %idx.1140.i
  %74 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx31.i, align 4
  %page_offset35.i = getelementptr %struct.myri10ge_rx_buffer_state, ptr %73, i32 %idx.1140.i, i32 1
  %76 = ptrtoint ptr %page_offset35.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %page_offset35.i, align 4
  %78 = tail call i32 @llvm.umin.i32(i32 %remainder.1142.i, i32 4096) #24
  %79 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %end.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.skb_shared_info, ptr %80, i32 0, i32 12, i32 %i.1139.i
  %81 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %75, ptr %arrayidx.i.i.i, align 4
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %80, i32 0, i32 12, i32 %i.1139.i, i32 2
  %82 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %77, ptr %bv_offset.i.i.i, align 4
  %bv_len.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %80, i32 0, i32 12, i32 %i.1139.i, i32 1
  %83 = ptrtoint ptr %bv_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %78, ptr %bv_len.i.i.i.i, align 4
  %84 = getelementptr inbounds %struct.page, ptr %75, i32 0, i32 1
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %84, align 4
  %and.i.i.i.i = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !625

if.then.i.i.i.i:                                  ; preds = %myri10ge_unmap_rx_page.exit.i
  call void @__sanitizer_cov_trace_pc() #26
  %sub.i.i.i.i = add i32 %86, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %myri10ge_unmap_rx_page.exit.i
  call void @__sanitizer_cov_trace_pc() #26
  %87 = ptrtoint ptr %75 to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %87, %if.end.i.i.i.i ]
  %88 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %89 = getelementptr inbounds %struct.page, ptr %88, i32 0, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %92 = ptrtoint ptr %91 to i32
  %and.i8.i.i.i = and i32 %92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i8.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %_compound_head.exit.i.i.i.skb_fill_page_desc.exit.i_crit_edge, label %if.then.i.i.i

_compound_head.exit.i.i.i.skb_fill_page_desc.exit.i_crit_edge: ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %skb_fill_page_desc.exit.i

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %93 = ptrtoint ptr %pfmemalloc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load.i.i.i = load i8, ptr %pfmemalloc.i.i.i, align 2
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, 2
  store i8 %bf.set.i.i.i, ptr %pfmemalloc.i.i.i, align 2
  br label %skb_fill_page_desc.exit.i

skb_fill_page_desc.exit.i:                        ; preds = %if.then.i.i.i, %_compound_head.exit.i.i.i.skb_fill_page_desc.exit.i_crit_edge
  %94 = trunc i32 %i.1139.i to i8
  %conv.i.i = add i8 %94, 1
  %95 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv.i.i, ptr %nr_frags.i.i, align 2
  %98 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cnt.i, align 4
  %inc38.i = add i32 %99, 1
  store i32 %inc38.i, ptr %cnt.i, align 4
  %100 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mask.i, align 4
  %and41.i = and i32 %101, %inc38.i
  %sub42.i = add nsw i32 %remainder.1142.i, -4096
  %inc44.i = add nuw nsw i32 %i.1139.i, 1
  %exitcond.not = icmp eq i32 %i.1139.i, %65
  br i1 %exitcond.not, label %for.end45.i, label %skb_fill_page_desc.exit.i.for.body27.i_crit_edge

skb_fill_page_desc.exit.i.for.body27.i_crit_edge: ; preds = %skb_fill_page_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body27.i

for.end45.i:                                      ; preds = %skb_fill_page_desc.exit.i
  %bv_offset.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %63, i32 0, i32 12, i32 0, i32 2
  %102 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bv_offset.i.i, align 4
  %add.i129.i = add i32 %103, 2
  store i32 %add.i129.i, ptr %bv_offset.i.i, align 4
  %bv_len.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %63, i32 0, i32 12, i32 0, i32 1
  %104 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bv_len.i.i, align 4
  %sub.i.i = add i32 %105, -2
  store i32 %sub.i.i, ptr %bv_len.i.i, align 4
  %len49.i = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 6
  %106 = ptrtoint ptr %len49.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv109, ptr %len49.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 7
  %107 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %conv109, ptr %data_len.i, align 8
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 20
  %108 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %truesize.i, align 8
  %add50.i = add i32 %109, %conv109
  store i32 %add50.i, ptr %truesize.i, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 23
  %110 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %features.i, align 16
  %and51.i = and i64 %111, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and51.i)
  %tobool52.not.i = icmp eq i64 %and51.i, 0
  br i1 %tobool52.not.i, label %for.end45.i.if.end54.i_crit_edge, label %if.then53.i

for.end45.i.if.end54.i_crit_edge:                 ; preds = %for.end45.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end54.i

if.then53.i:                                      ; preds = %for.end45.i
  call void @__sanitizer_cov_trace_pc() #26
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 15
  %112 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 1024
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  %113 = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 15, i32 0, i32 5
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv.i, ptr %113, align 8
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then53.i, %for.end45.i.if.end54.i_crit_edge
  %115 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev3.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %116, i32 0, i32 23
  %117 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %features.i.i, align 16
  %and.i130.i = and i64 %118, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i130.i)
  %cmp.not.i.i = icmp eq i64 %and.i130.i, 0
  br i1 %cmp.not.i.i, label %if.end54.i.myri10ge_vlan_rx.exit.i_crit_edge, label %land.lhs.true.i.i

if.end54.i.myri10ge_vlan_rx.exit.i_crit_edge:     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_vlan_rx.exit.i

land.lhs.true.i.i:                                ; preds = %if.end54.i
  %h_vlan_proto.i.i = getelementptr i8, ptr %add.ptr.i, i32 14
  %119 = ptrtoint ptr %h_vlan_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %h_vlan_proto.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %120)
  %cmp1.i131.i = icmp eq i16 %120, -32512
  br i1 %cmp1.i131.i, label %if.then.i132.i, label %land.lhs.true.i.i.myri10ge_vlan_rx.exit.i_crit_edge

land.lhs.true.i.i.myri10ge_vlan_rx.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_vlan_rx.exit.i

if.then.i132.i:                                   ; preds = %land.lhs.true.i.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 15
  %121 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %122 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %122)
  %cmp4.i.i = icmp eq i16 %122, 1024
  br i1 %cmp4.i.i, label %if.then6.i.i, label %if.then.i132.i.if.end.i.i_crit_edge

if.then.i132.i.if.end.i.i_crit_edge:              ; preds = %if.then.i132.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end.i.i

if.then6.i.i:                                     ; preds = %if.then.i132.i
  call void @__sanitizer_cov_trace_pc() #26
  %add.ptr7.i.i = getelementptr i8, ptr %add.ptr.i, i32 16
  %call.i.i = tail call i32 @csum_partial(ptr noundef %add.ptr7.i.i, i32 noundef 4, i32 noundef 0) #24
  %123 = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 15, i32 0, i32 5
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 8
  %neg.i.i.i = xor i32 %call.i.i, -1
  %add.i.i.i.i = add i32 %125, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %neg.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %neg.i.i.i
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %conv.i.i.i.i
  %126 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %add1.i.i.i.i, ptr %123, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then6.i.i, %if.then.i132.i.if.end.i.i_crit_edge
  %h_vlan_TCI.i.i = getelementptr i8, ptr %add.ptr.i, i32 16
  %127 = ptrtoint ptr %h_vlan_TCI.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %h_vlan_TCI.i.i, align 2
  %vlan_proto1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 15, i32 0, i32 9
  %129 = ptrtoint ptr %vlan_proto1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 -32512, ptr %vlan_proto1.i.i.i, align 8
  %vlan_tci2.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 15, i32 0, i32 10
  %130 = ptrtoint ptr %vlan_tci2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %128, ptr %vlan_tci2.i.i.i, align 2
  %vlan_present.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 15, i32 0, i32 3
  %131 = ptrtoint ptr %vlan_present.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %bf.load.i.i133.i = load i32, ptr %vlan_present.i.i.i, align 2
  %bf.set.i.i134.i = or i32 %bf.load.i.i133.i, -2147483648
  store i32 %bf.set.i.i134.i, ptr %vlan_present.i.i.i, align 2
  %add.ptr9.i.i = getelementptr i8, ptr %add.ptr.i, i32 6
  %132 = call ptr @memmove(ptr %add.ptr9.i.i, ptr %add.ptr.i.i, i32 12)
  %133 = ptrtoint ptr %len49.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %len49.i, align 4
  %sub.i135.i = add i32 %134, -4
  store i32 %sub.i135.i, ptr %len49.i, align 4
  %135 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %data_len.i, align 8
  %sub10.i.i = add i32 %136, -4
  store i32 %sub10.i.i, ptr %data_len.i, align 8
  %137 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %end.i.i, align 4
  %bv_offset.i.i136.i = getelementptr inbounds %struct.skb_shared_info, ptr %138, i32 0, i32 12, i32 0, i32 2
  %139 = ptrtoint ptr %bv_offset.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %bv_offset.i.i136.i, align 4
  %add.i.i.i = add i32 %140, 4
  store i32 %add.i.i.i, ptr %bv_offset.i.i136.i, align 4
  %bv_len.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %138, i32 0, i32 12, i32 0, i32 1
  %141 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %bv_len.i.i.i, align 4
  %sub.i.i.i = add i32 %142, -4
  store i32 %sub.i.i.i, ptr %bv_len.i.i.i, align 4
  br label %myri10ge_vlan_rx.exit.i

myri10ge_vlan_rx.exit.i:                          ; preds = %if.end.i.i, %land.lhs.true.i.i.myri10ge_vlan_rx.exit.i_crit_edge, %if.end54.i.myri10ge_vlan_rx.exit.i_crit_edge
  %143 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %16, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %144 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 896
  %conv.i80 = trunc i32 %sub.ptr.div.i to i16
  %add.i137.i = add i16 %conv.i80, 1
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 10
  %145 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %add.i137.i, ptr %queue_mapping.i.i, align 8
  %call59.i = tail call i32 @napi_gro_frags(ptr noundef %napi.i) #24
  br label %myri10ge_rx_done.exit

myri10ge_rx_done.exit:                            ; preds = %myri10ge_vlan_rx.exit.i, %put_page.exit.myri10ge_rx_done.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %myri10ge_vlan_rx.exit.i ], [ 0, %put_page.exit.myri10ge_rx_done.exit_crit_edge ]
  %add = add i32 %retval.0.i, %rx_packets.0104
  %mul = mul nuw nsw i32 %retval.0.i, %conv109
  %add22 = add i32 %mul, %rx_bytes.0103
  %inc = add i32 %cnt.0106, 1
  %146 = ptrtoint ptr %max_intr_slots to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %max_intr_slots, align 4
  %sub = add i32 %147, -1
  %and = and i32 %sub, %inc
  %inc23 = add nuw nsw i32 %work_done.0107, 1
  %148 = ptrtoint ptr %rx_done1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rx_done1, align 4
  %length6 = getelementptr %struct.mcp_slot, ptr %149, i32 %and, i32 1
  %150 = ptrtoint ptr %length6 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %length6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %151)
  %cmp.not = icmp ne i16 %151, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc23, i32 %budget)
  %cmp8 = icmp slt i32 %inc23, %budget
  %or.cond = select i1 %cmp.not, i1 %cmp8, i1 false
  br i1 %or.cond, label %myri10ge_rx_done.exit.while.body_crit_edge, label %myri10ge_rx_done.exit.while.end_crit_edge

myri10ge_rx_done.exit.while.end_crit_edge:        ; preds = %myri10ge_rx_done.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.end

myri10ge_rx_done.exit.while.body_crit_edge:       ; preds = %myri10ge_rx_done.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.body

while.end:                                        ; preds = %myri10ge_rx_done.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %rx_bytes.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %add22, %myri10ge_rx_done.exit.while.end_crit_edge ]
  %rx_packets.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %add, %myri10ge_rx_done.exit.while.end_crit_edge ]
  %idx.0.lcssa = phi i32 [ %3, %entry.while.end_crit_edge ], [ %and, %myri10ge_rx_done.exit.while.end_crit_edge ]
  %cnt.0.lcssa = phi i32 [ %5, %entry.while.end_crit_edge ], [ %inc, %myri10ge_rx_done.exit.while.end_crit_edge ]
  %work_done.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %inc23, %myri10ge_rx_done.exit.while.end_crit_edge ]
  %152 = ptrtoint ptr %idx3 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %idx.0.lcssa, ptr %idx3, align 4
  %153 = ptrtoint ptr %cnt4 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %cnt.0.lcssa, ptr %cnt4, align 4
  %stats = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 7
  %154 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %stats, align 4
  %add27 = add i32 %155, %rx_packets.0.lcssa
  store i32 %add27, ptr %stats, align 4
  %rx_bytes29 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 7, i32 2
  %156 = ptrtoint ptr %rx_bytes29 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %rx_bytes29, align 4
  %add30 = add i32 %157, %rx_bytes.0.lcssa
  store i32 %add30, ptr %rx_bytes29, align 4
  %fill_cnt = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1, i32 7
  %158 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %fill_cnt, align 4
  %cnt32 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1, i32 6
  %160 = ptrtoint ptr %cnt32 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %cnt32, align 8
  %sub33 = sub i32 %159, %161
  %162 = load i32, ptr @myri10ge_fill_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub33, i32 %162)
  %cmp34 = icmp slt i32 %sub33, %162
  br i1 %cmp34, label %if.then, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #26
  %rx_small = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1
  %small_bytes = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 4
  %163 = ptrtoint ptr %small_bytes to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %small_bytes, align 4
  %add37 = add i32 %164, 2
  tail call fastcc void @myri10ge_alloc_rx_pages(ptr noundef %1, ptr noundef %rx_small, i32 noundef %add37, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  %fill_cnt38 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 2, i32 7
  %165 = ptrtoint ptr %fill_cnt38 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %fill_cnt38, align 4
  %cnt40 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 2, i32 6
  %167 = ptrtoint ptr %cnt40 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %cnt40, align 4
  %sub41 = sub i32 %166, %168
  %169 = load i32, ptr @myri10ge_fill_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub41, i32 %169)
  %cmp42 = icmp slt i32 %sub41, %169
  br i1 %cmp42, label %if.then44, label %if.end.if.end46_crit_edge

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end46

if.then44:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %rx_big = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 2
  %big_bytes = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 5
  %170 = ptrtoint ptr %big_bytes to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %big_bytes, align 4
  tail call fastcc void @myri10ge_alloc_rx_pages(ptr noundef %1, ptr noundef %rx_big, i32 noundef %171, i32 noundef 0)
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end.if.end46_crit_edge
  ret i32 %work_done.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myri10ge_alloc_rx_pages(ptr nocapture noundef readonly %mgp, ptr nocapture noundef %rx, i32 noundef %bytes, i32 noundef %watchdog) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog_needed = getelementptr inbounds %struct.myri10ge_rx_buf, ptr %rx, i32 0, i32 10
  %0 = ptrtoint ptr %watchdog_needed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %watchdog_needed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %watchdog)
  %tobool1.not = icmp eq i32 %watchdog, 0
  %spec.select = and i1 %tobool1.not, %tobool.not
  br i1 %spec.select, label %entry.cleanup_crit_edge, label %while.cond.preheader, !prof !614

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %fill_cnt = getelementptr inbounds %struct.myri10ge_rx_buf, ptr %rx, i32 0, i32 7
  %cnt = getelementptr inbounds %struct.myri10ge_rx_buf, ptr %rx, i32 0, i32 6
  %mask = getelementptr inbounds %struct.myri10ge_rx_buf, ptr %rx, i32 0, i32 9
  %2 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fill_cnt, align 4
  %4 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt, align 4
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %add134 = add i32 %5, 1
  %add5135 = add i32 %add134, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add5135)
  %cmp.not136 = icmp eq i32 %3, %add5135
  br i1 %cmp.not136, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %page_offset = getelementptr inbounds %struct.myri10ge_rx_buf, ptr %rx, i32 0, i32 5
  %pdev = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 16
  %page47 = getelementptr inbounds %struct.myri10ge_rx_buf, ptr %rx, i32 0, i32 3
  %bus49 = getelementptr inbounds %struct.myri10ge_rx_buf, ptr %rx, i32 0, i32 4
  %info = getelementptr inbounds %struct.myri10ge_rx_buf, ptr %rx, i32 0, i32 2
  %shadow = getelementptr inbounds %struct.myri10ge_rx_buf, ptr %rx, i32 0, i32 1
  %add67 = add i32 %bytes, 127
  %and68 = and i32 %add67, -128
  br label %while.body

while.body:                                       ; preds = %if.end80.while.body_crit_edge, %while.body.lr.ph
  %8 = phi i32 [ %7, %while.body.lr.ph ], [ %73, %if.end80.while.body_crit_edge ]
  %9 = phi i32 [ %3, %while.body.lr.ph ], [ %69, %if.end80.while.body_crit_edge ]
  %and = and i32 %8, %9
  %10 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_offset, align 4
  %add8 = add i32 %11, %bytes
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add8)
  %cmp9 = icmp ult i32 %add8, 4097
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %while.body
  %12 = ptrtoint ptr %page47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page47, align 4
  %14 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !625

if.then.i.i:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #26
  %sub.i.i = add i32 %16, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #26
  %17 = ptrtoint ptr %13 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %17, %if.end.i.i ]
  %18 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #24
  %19 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %20, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !614

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #26
  %21 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.176) #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #24, !srcloc !634
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #26
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #24
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #24
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #24, !srcloc !635
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@myri10ge_alloc_rx_pages, %if.then.i.i.i.i)) #24
          to label %if.end50 [label %if.then.i.i.i.i], !srcloc !623

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @__page_ref_mod(ptr noundef %18, i32 noundef 1) #24
  br label %if.end50

if.else:                                          ; preds = %while.body
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 264736, i32 noundef 0, i32 noundef 0, ptr noundef null) #24
  %cmp12 = icmp eq ptr %call38.i.i.i, null
  br i1 %cmp12, label %if.then19, label %if.end26, !prof !614

if.then19:                                        ; preds = %if.else
  %23 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fill_cnt, align 4
  %25 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cnt, align 4
  %sub = sub i32 %24, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp22 = icmp slt i32 %sub, 16
  br i1 %cmp22, label %if.then19.cleanup.sink.split_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then19.cleanup.sink.split_crit_edge:           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.else
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %call27 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef nonnull %call38.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #24
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 4
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev29, i32 noundef %call27) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27)
  %cmp.i.not = icmp eq i32 %call27, -1
  br i1 %cmp.i.not, label %if.then38, label %if.end46, !prof !614

if.then38:                                        ; preds = %if.end26
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #24
  %31 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fill_cnt, align 4
  %33 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cnt, align 4
  %sub41 = sub i32 %32, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub41)
  %cmp42 = icmp slt i32 %sub41, 16
  br i1 %cmp42, label %if.then38.cleanup.sink.split_crit_edge, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then38.cleanup.sink.split_crit_edge:           ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup.sink.split

if.end46:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #26
  %35 = ptrtoint ptr %page47 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call38.i.i.i, ptr %page47, align 4
  %36 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %page_offset, align 4
  %37 = ptrtoint ptr %bus49 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call27, ptr %bus49, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end46, %if.then.i.i.i.i, %do.end5.i.i
  %38 = ptrtoint ptr %page47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %page47, align 4
  %40 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info, align 4
  %arrayidx = getelementptr %struct.myri10ge_rx_buffer_state, ptr %41, i32 %and
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %arrayidx, align 4
  %43 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %page_offset, align 4
  %45 = load ptr, ptr %info, align 4
  %page_offset56 = getelementptr %struct.myri10ge_rx_buffer_state, ptr %45, i32 %and, i32 1
  %46 = ptrtoint ptr %page_offset56 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %page_offset56, align 4
  %47 = ptrtoint ptr %bus49 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bus49, align 4
  %49 = load ptr, ptr %info, align 4
  %bus60 = getelementptr %struct.myri10ge_rx_buffer_state, ptr %49, i32 %and, i32 2
  %50 = ptrtoint ptr %bus60 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %48, ptr %bus60, align 4
  %51 = load i32, ptr %bus49, align 4
  %52 = load i32, ptr %page_offset, align 4
  %add63 = add i32 %52, %51
  %53 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %shadow, align 4
  %addr_low = getelementptr %struct.mcp_kreq_ether_recv, ptr %54, i32 %and, i32 1
  %55 = ptrtoint ptr %addr_low to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add63, ptr %addr_low, align 4
  %56 = load ptr, ptr %shadow, align 4
  %arrayidx66 = getelementptr %struct.mcp_kreq_ether_recv, ptr %56, i32 %and
  %57 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %arrayidx66, align 4
  %58 = load i32, ptr %page_offset, align 4
  %add70 = add i32 %58, %and68
  store i32 %add70, ptr %page_offset, align 4
  %59 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fill_cnt, align 4
  %inc = add i32 %60, 1
  store i32 %inc, ptr %fill_cnt, align 4
  %and72 = and i32 %and, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and72)
  %cmp73 = icmp eq i32 %and72, 7
  br i1 %cmp73, label %if.then74, label %if.end50.if.end80_crit_edge

if.end50.if.end80_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end80

if.then74:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #26
  %61 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx, align 4
  %sub75 = add i32 %and, -7
  %arrayidx76 = getelementptr %struct.mcp_kreq_ether_recv, ptr %62, i32 %sub75
  %63 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %shadow, align 4
  %arrayidx79 = getelementptr %struct.mcp_kreq_ether_recv, ptr %64, i32 %sub75
  %addr_low.i = getelementptr %struct.mcp_kreq_ether_recv, ptr %64, i32 %sub75, i32 1
  %65 = ptrtoint ptr %addr_low.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %addr_low.i, align 4
  store i32 -1, ptr %addr_low.i, align 4
  tail call void @__iowrite64_copy(ptr noundef %arrayidx76, ptr noundef %arrayidx79, i32 noundef 4) #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !636
  tail call void @arm_heavy_mb() #24
  %add.ptr.i = getelementptr %struct.mcp_kreq_ether_recv, ptr %arrayidx76, i32 4
  %add.ptr2.i = getelementptr %struct.mcp_kreq_ether_recv, ptr %arrayidx79, i32 4
  tail call void @__iowrite64_copy(ptr noundef %add.ptr.i, ptr noundef %add.ptr2.i, i32 noundef 4) #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !637
  tail call void @arm_heavy_mb() #24
  %67 = ptrtoint ptr %addr_low.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %addr_low.i, align 4
  %addr_low7.i = getelementptr %struct.mcp_kreq_ether_recv, ptr %62, i32 %sub75, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr_low7.i, i32 %66) #24, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !638
  tail call void @arm_heavy_mb() #24
  br label %if.end80

if.end80:                                         ; preds = %if.then74, %if.end50.if.end80_crit_edge
  %68 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fill_cnt, align 4
  %70 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cnt, align 4
  %72 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mask, align 4
  %add = add i32 %71, 1
  %add5 = add i32 %add, %73
  %cmp.not = icmp eq i32 %69, %add5
  br i1 %cmp.not, label %if.end80.cleanup_crit_edge, label %if.end80.while.body_crit_edge

if.end80.while.body_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.body

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then38.cleanup.sink.split_crit_edge, %if.then19.cleanup.sink.split_crit_edge
  %74 = ptrtoint ptr %watchdog_needed to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %watchdog_needed, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end80.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @napi_get_frags(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_frags(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @myri10ge_set_multicast_list(ptr noundef %dev) #3 align 64 {
entry:
  %cmd.i = alloca %struct.myri10ge_cmd, align 4
  %cmd = alloca %struct.myri10ge_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #24
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !609
  %1 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !609
  %3 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !609
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 256
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i) #24
  %7 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %cmd.i, align 4, !annotation !609
  %8 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !609
  %10 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd.i, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !609
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  %cond.i = select i1 %tobool.not.i, i32 21, i32 20
  %call.i = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef %cond.i, ptr noundef nonnull %cmd.i, i32 noundef 1) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %entry.myri10ge_change_promisc.exit_crit_edge, label %if.then.i

entry.myri10ge_change_promisc.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_change_promisc.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %dev.i = getelementptr i8, ptr %dev, i32 2332
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.192) #27
  br label %myri10ge_change_promisc.exit

myri10ge_change_promisc.exit:                     ; preds = %if.then.i, %entry.myri10ge_change_promisc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #24
  %fw_multicast_support = getelementptr i8, ptr %dev, i32 2992
  %14 = ptrtoint ptr %fw_multicast_support to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_multicast_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %myri10ge_change_promisc.exit.cleanup_crit_edge, label %if.end

myri10ge_change_promisc.exit.cleanup_crit_edge:   ; preds = %myri10ge_change_promisc.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %myri10ge_change_promisc.exit
  %call1 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 26, ptr noundef nonnull %cmd, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.188, i32 noundef %call1) #27
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 8
  %and5 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %adopted_rx_filter_bug = getelementptr i8, ptr %dev, i32 2972
  %18 = ptrtoint ptr %adopted_rx_filter_bug to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %adopted_rx_filter_bug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool7.not = icmp eq i32 %19, 0
  br i1 %tobool7.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 30, ptr noundef nonnull %cmd, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.189, i32 noundef %call10) #27
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end13
  %data.sroa.5.0 = phi i32 [ 0, %if.end13 ], [ %data.sroa.5.0.insert.insert, %for.body.for.cond_crit_edge ]
  %ha.0.in = phi ptr [ %mc, %if.end13 ], [ %ha.0, %for.body.for.cond_crit_edge ]
  %20 = ptrtoint ptr %ha.0.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %ha.0 = load ptr, ptr %ha.0.in, align 4
  %cmp17.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp17.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0, i32 0, i32 2
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %data.sroa.0.0.copyload = load i32, ptr %addr, align 4
  %data.sroa.5.0.addr.sroa_idx = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %data.sroa.5.0.addr.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %22)
  %data.sroa.5.0.copyload = load i16, ptr %data.sroa.5.0.addr.sroa_idx, align 4
  %data.sroa.5.0.insert.ext = zext i16 %data.sroa.5.0.copyload to i32
  %data.sroa.5.0.insert.shift = shl nuw i32 %data.sroa.5.0.insert.ext, 16
  %data.sroa.5.0.insert.mask = and i32 %data.sroa.5.0, 65535
  %data.sroa.5.0.insert.insert = or i32 %data.sroa.5.0.insert.shift, %data.sroa.5.0.insert.mask
  %23 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %data.sroa.0.0.copyload, ptr %cmd, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %data.sroa.5.0.insert.insert, ptr %1, align 4
  %call19 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 28, ptr noundef nonnull %cmd, i32 noundef 1)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %for.body.for.cond_crit_edge, label %if.then21

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.cond

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.190, i32 noundef %call19, ptr noundef %addr) #27
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %call30 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 27, ptr noundef nonnull %cmd, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %for.end.cleanup_crit_edge, label %if.then32

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.191, i32 noundef %call30) #27
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %for.end.cleanup_crit_edge, %if.then21, %if.then12, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then2, %myri10ge_change_promisc.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #24
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myri10ge_open(ptr noundef %dev) #3 align 64 {
entry:
  %cmd.i240 = alloca %struct.myri10ge_cmd, align 4
  %cmd.i = alloca %struct.myri10ge_cmd, align 4
  %cmd = alloca %struct.myri10ge_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #24
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !609
  %1 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !609
  %3 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !609
  %running = getelementptr i8, ptr %dev, i32 2316
  %5 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %running, align 4
  %call2 = tail call fastcc i32 @myri10ge_reset(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #27
  br label %abort_with_nothing

if.end5:                                          ; preds = %if.end
  %num_slices = getelementptr i8, ptr %dev, i32 2312
  %8 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp6 = icmp sgt i32 %9, 1
  br i1 %cmp6, label %if.then7, label %if.end5.if.end36_crit_edge

if.end5.if.end36_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end36

if.then7:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %cmd, align 4
  %dev9 = getelementptr i8, ptr %dev, i32 2332
  %11 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev9, align 4
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 105
  %13 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %real_num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp10 = icmp ugt i32 %14, 1
  %spec.store.select = select i1 %cmp10, i32 3, i32 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.store.select, ptr %1, align 4
  %call14 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 36, ptr noundef nonnull %cmd, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.182) #27
  br label %abort_with_nothing

if.end17:                                         ; preds = %if.then7
  %16 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_slices, align 4
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %cmd, align 4
  %call20 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 40, ptr noundef nonnull %cmd, i32 noundef 0)
  %call21 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 39, ptr noundef nonnull %cmd, i32 noundef 0)
  %or22 = or i32 %call21, %call20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or22)
  %cmp23.not = icmp eq i32 %or22, 0
  br i1 %cmp23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.193) #27
  br label %abort_with_nothing

if.end25:                                         ; preds = %if.end17
  %sram = getelementptr i8, ptr %dev, i32 2336
  %19 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sram, align 4
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cmd, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %22
  %23 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp28255 = icmp sgt i32 %24, 0
  br i1 %cmp28255, label %if.end25.for.body_crit_edge, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end25.for.body_crit_edge
  %i.0256 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end25.for.body_crit_edge ]
  %conv = trunc i32 %i.0256 to i8
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 %i.0256
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx, i8 %conv) #24, !srcloc !639
  %inc = add nuw nsw i32 %i.0256, 1
  %25 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_slices, align 4
  %cmp28 = icmp slt i32 %inc, %26
  br i1 %cmp28, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end25.for.end_crit_edge
  %27 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %cmd, align 4
  %28 = load i32, ptr @myri10ge_rss_hash, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %1, align 4
  %call31 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 43, ptr noundef nonnull %cmd, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %for.end.if.end36_crit_edge, label %if.then34

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end36

if.then34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.194) #27
  br label %abort_with_nothing

if.end36:                                         ; preds = %for.end.if.end36_crit_edge, %if.end5.if.end36_crit_edge
  %call37 = tail call fastcc i32 @myri10ge_request_irq(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38.not = icmp eq i32 %call37, 0
  br i1 %cmp38.not, label %if.end41, label %if.end36.abort_with_nothing_crit_edge

if.end36.abort_with_nothing_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_nothing

if.end41:                                         ; preds = %if.end36
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %30 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1501, i32 %31)
  %cmp42 = icmp ult i32 %31, 1501
  %spec.select = select i1 %cmp42, i32 126, i32 1518
  %32 = getelementptr i8, ptr %dev, i32 2320
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select, ptr %32, align 4
  %34 = load i32, ptr @myri10ge_small_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp47272 = icmp slt i32 %34, 0
  %spec.store.select271 = select i1 %cmp47272, i32 %spec.select, i32 %34
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %spec.store.select271, ptr %32, align 4
  %add54 = add i32 %31, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add54)
  %cmp55 = icmp ult i32 %add54, 2048
  br i1 %cmp55, label %if.end41.while.cond_crit_edge, label %if.end41.if.end66_crit_edge

if.end41.if.end66_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end66

if.end41.while.cond_crit_edge:                    ; preds = %if.end41
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end41.while.cond_crit_edge
  %big_pow2.0 = phi i32 [ %inc59, %while.cond.while.cond_crit_edge ], [ %add54, %if.end41.while.cond_crit_edge ]
  %36 = tail call i32 @llvm.ctpop.i32(i32 %big_pow2.0) #24, !range !615
  %37 = icmp eq i32 %36, 1
  %inc59 = add i32 %big_pow2.0, 1
  br i1 %37, label %while.cond.if.end66_crit_edge, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.cond

while.cond.if.end66_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end66

if.end66:                                         ; preds = %while.cond.if.end66_crit_edge, %if.end41.if.end66_crit_edge
  %.sink = phi i32 [ 4096, %if.end41.if.end66_crit_edge ], [ %add54, %while.cond.if.end66_crit_edge ]
  %big_pow2.1 = phi i32 [ 4096, %if.end41.if.end66_crit_edge ], [ %big_pow2.0, %while.cond.if.end66_crit_edge ]
  %big_bytes65 = getelementptr i8, ptr %dev, i32 2324
  %38 = ptrtoint ptr %big_bytes65 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink, ptr %big_bytes65, align 4
  %39 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp69257 = icmp sgt i32 %40, 0
  br i1 %cmp69257, label %for.body71.lr.ph, label %if.end66.for.end97_crit_edge

if.end66.for.end97_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end97

for.body71.lr.ph:                                 ; preds = %if.end66
  %41 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd.i, i32 0, i32 1
  %42 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd.i, i32 0, i32 2
  %dev.i = getelementptr i8, ptr %dev, i32 2332
  %sram.i = getelementptr i8, ptr %dev, i32 2336
  %43 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd.i240, i32 0, i32 1
  %44 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd.i240, i32 0, i32 2
  %fw_multicast_support8.i = getelementptr i8, ptr %dev, i32 2992
  br label %for.body71

for.body71:                                       ; preds = %if.end94.for.body71_crit_edge, %for.body71.lr.ph
  %slice.0258 = phi i32 [ 0, %for.body71.lr.ph ], [ %inc96, %if.end94.for.body71_crit_edge ]
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i) #24
  %47 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %41, align 4, !annotation !609
  %48 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %42, align 4, !annotation !609
  %arrayidx.i = getelementptr %struct.myri10ge_slice_state, ptr %46, i32 %slice.0258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slice.0258)
  %cmp.i = icmp eq i32 %slice.0258, 0
  br i1 %cmp.i, label %for.body71.if.then.i_crit_edge, label %lor.lhs.false.i

for.body71.if.then.i_crit_edge:                   ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body71
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  %real_num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 105
  %51 = ptrtoint ptr %real_num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %real_num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp2.i = icmp ugt i32 %52, 1
  br i1 %cmp2.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.myri10ge_get_txrx.exit_crit_edge

lor.lhs.false.i.myri10ge_get_txrx.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_get_txrx.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.body71.if.then.i_crit_edge
  %53 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %slice.0258, ptr %cmd.i, align 4
  %call.i = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 6, ptr noundef nonnull %cmd.i, i32 noundef 0) #24
  %54 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sram.i, align 4
  %56 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cmd.i, align 4
  %add.ptr.i239 = getelementptr i8, ptr %55, i32 %57
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.i239, ptr %arrayidx.i, align 128
  br label %myri10ge_get_txrx.exit

myri10ge_get_txrx.exit:                           ; preds = %if.then.i, %lor.lhs.false.i.myri10ge_get_txrx.exit_crit_edge
  %status.0.i = phi i32 [ %call.i, %if.then.i ], [ 0, %lor.lhs.false.i.myri10ge_get_txrx.exit_crit_edge ]
  %59 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %slice.0258, ptr %cmd.i, align 4
  %call5.i = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 7, ptr noundef nonnull %cmd.i, i32 noundef 0) #24
  %or.i = or i32 %call5.i, %status.0.i
  %60 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sram.i, align 4
  %62 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cmd.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %61, i32 %63
  %rx_small.i = getelementptr %struct.myri10ge_slice_state, ptr %46, i32 %slice.0258, i32 1
  %64 = ptrtoint ptr %rx_small.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr8.i, ptr %rx_small.i, align 128
  store i32 %slice.0258, ptr %cmd.i, align 4
  %call11.i = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 8, ptr noundef nonnull %cmd.i, i32 noundef 0) #24
  %or12.i = or i32 %or.i, %call11.i
  %65 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sram.i, align 4
  %67 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cmd.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %66, i32 %68
  %rx_big.i = getelementptr %struct.myri10ge_slice_state, ptr %46, i32 %slice.0258, i32 2
  %69 = ptrtoint ptr %rx_big.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr15.i, ptr %rx_big.i, align 4
  %70 = load ptr, ptr %sram.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %70, i32 3670016
  %mul.i = shl i32 %slice.0258, 6
  %add.ptr19.i = getelementptr i8, ptr %add.ptr18.i, i32 %mul.i
  %send_go.i = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx.i, i32 0, i32 1
  %71 = ptrtoint ptr %send_go.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr19.i, ptr %send_go.i, align 4
  %72 = load ptr, ptr %sram.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %72, i32 3932160
  %add.ptr24.i = getelementptr i8, ptr %add.ptr22.i, i32 %mul.i
  %send_stop.i = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx.i, i32 0, i32 2
  %73 = ptrtoint ptr %send_stop.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr24.i, ptr %send_stop.i, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or12.i)
  %cmp75.not = icmp eq i32 %or12.i, 0
  br i1 %cmp75.not, label %if.end78, label %myri10ge_get_txrx.exit.abort_with_rings.sink.split_crit_edge

myri10ge_get_txrx.exit.abort_with_rings.sink.split_crit_edge: ; preds = %myri10ge_get_txrx.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_rings.sink.split

if.end78:                                         ; preds = %myri10ge_get_txrx.exit
  %call79 = tail call fastcc i32 @myri10ge_allocate_rings(ptr noundef %arrayidx.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80.not = icmp eq i32 %call79, 0
  br i1 %cmp80.not, label %if.end83, label %if.end78.abort_with_rings_crit_edge

if.end78.abort_with_rings_crit_edge:              ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_rings

if.end83:                                         ; preds = %if.end78
  br i1 %cmp.i, label %if.end83.if.then90_crit_edge, label %lor.lhs.false

if.end83.if.then90_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then90

lor.lhs.false:                                    ; preds = %if.end83
  %74 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i, align 4
  %real_num_tx_queues87 = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 105
  %76 = ptrtoint ptr %real_num_tx_queues87 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %real_num_tx_queues87, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp88 = icmp ugt i32 %77, 1
  br i1 %cmp88, label %lor.lhs.false.if.then90_crit_edge, label %lor.lhs.false.if.end94_crit_edge

lor.lhs.false.if.end94_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end94

lor.lhs.false.if.then90_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then90

if.then90:                                        ; preds = %lor.lhs.false.if.then90_crit_edge, %if.end83.if.then90_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i240) #24
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.i, align 4
  %fw_stats_bus.i = getelementptr %struct.myri10ge_slice_state, ptr %79, i32 %slice.0258, i32 10
  %80 = ptrtoint ptr %fw_stats_bus.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fw_stats_bus.i, align 4
  %82 = ptrtoint ptr %cmd.i240 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %cmd.i240, align 4
  %83 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %43, align 4
  %shl.i = shl i32 %slice.0258, 16
  %or.i241 = or i32 %shl.i, 64
  %84 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or.i241, ptr %44, align 4
  %call.i242 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 31, ptr noundef nonnull %cmd.i240, i32 noundef 0) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call.i242)
  %cmp.i243 = icmp eq i32 %call.i242, -38
  br i1 %cmp.i243, label %if.then.i244, label %if.then90.if.end92.thread248_crit_edge

if.then90.if.end92.thread248_crit_edge:           ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end92.thread248

if.then.i244:                                     ; preds = %if.then90
  br i1 %cmp.i, label %if.end.i, label %if.then93

if.end.i:                                         ; preds = %if.then.i244
  call void @__sanitizer_cov_trace_pc() #26
  %85 = ptrtoint ptr %fw_stats_bus.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fw_stats_bus.i, align 4
  %add.i = add i32 %86, 24
  %87 = ptrtoint ptr %cmd.i240 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add.i, ptr %cmd.i240, align 4
  %88 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %43, align 4
  %call7.i = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 19, ptr noundef nonnull %cmd.i240, i32 noundef 0) #24
  br label %if.end92.thread248

if.end92.thread248:                               ; preds = %if.end.i, %if.then90.if.end92.thread248_crit_edge
  %.sink.i = phi i32 [ 0, %if.end.i ], [ 1, %if.then90.if.end92.thread248_crit_edge ]
  %89 = ptrtoint ptr %fw_multicast_support8.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %.sink.i, ptr %fw_multicast_support8.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i240) #24
  br label %if.end94

if.then93:                                        ; preds = %if.then.i244
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i240) #24
  br label %abort_with_rings.sink.split

if.end94:                                         ; preds = %if.end92.thread248, %lor.lhs.false.if.end94_crit_edge
  %napi = getelementptr %struct.myri10ge_slice_state, ptr %46, i32 %slice.0258, i32 5
  tail call void @napi_enable(ptr noundef %napi) #24
  %inc96 = add nuw nsw i32 %slice.0258, 1
  %90 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_slices, align 4
  %cmp69 = icmp slt i32 %inc96, %91
  br i1 %cmp69, label %if.end94.for.body71_crit_edge, label %if.end94.for.end97_crit_edge

if.end94.for.end97_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end97

if.end94.for.body71_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body71

for.end97:                                        ; preds = %if.end94.for.end97_crit_edge, %if.end66.for.end97_crit_edge
  %slice.0.lcssa = phi i32 [ 0, %if.end66.for.end97_crit_edge ], [ %inc96, %if.end94.for.end97_crit_edge ]
  %92 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mtu, align 4
  %add100 = add i32 %93, 18
  %94 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add100, ptr %cmd, align 4
  %call102 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 16, ptr noundef nonnull %cmd, i32 noundef 0)
  %95 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %32, align 4
  %97 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %cmd, align 4
  %call105 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 5, ptr noundef nonnull %cmd, i32 noundef 0)
  %or106 = or i32 %call105, %call102
  %98 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %big_pow2.1, ptr %cmd, align 4
  %call108 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 4, ptr noundef nonnull %cmd, i32 noundef 0)
  %or109 = or i32 %or106, %call108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or109)
  %tobool110.not = icmp eq i32 %or109, 0
  br i1 %tobool110.not, label %if.end112, label %for.end97.abort_with_rings.sink.split_crit_edge

for.end97.abort_with_rings.sink.split_crit_edge:  ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_rings.sink.split

if.end112:                                        ; preds = %for.end97
  %99 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %cmd, align 4
  %call114 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 45, ptr noundef nonnull %cmd, i32 noundef 0)
  %100 = zext i32 %call114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %call114, label %if.end112.abort_with_rings.sink.split_crit_edge [
    i32 0, label %if.end112.if.end119_crit_edge
    i32 -38, label %if.end112.if.end119_crit_edge282
  ]

if.end112.if.end119_crit_edge282:                 ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end119

if.end112.if.end119_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end119

if.end112.abort_with_rings.sink.split_crit_edge:  ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_rings.sink.split

if.end119:                                        ; preds = %if.end112.if.end119_crit_edge, %if.end112.if.end119_crit_edge282
  %link_state = getelementptr i8, ptr %dev, i32 2384
  %101 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %link_state, align 4
  %rdma_tags_available = getelementptr i8, ptr %dev, i32 2388
  %102 = ptrtoint ptr %rdma_tags_available to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 15, ptr %rdma_tags_available, align 4
  %call120 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 14, ptr noundef nonnull %cmd, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %if.end119.abort_with_rings.sink.split_crit_edge

if.end119.abort_with_rings.sink.split_crit_edge:  ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_rings.sink.split

if.end123:                                        ; preds = %if.end119
  %103 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 3, ptr %running, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %104 = load volatile i32, ptr @jiffies, align 128
  %105 = load i32, ptr @myri10ge_watchdog_timeout, align 4
  %mul = mul i32 %105, 100
  %add125 = add i32 %mul, %104
  %watchdog_timer = getelementptr i8, ptr %dev, i32 2504
  %expires = getelementptr i8, ptr %dev, i32 2512
  %106 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %add125, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %watchdog_timer) #24
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %107 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp4.not.i = icmp eq i32 %108, 0
  br i1 %cmp4.not.i, label %if.end123.cleanup_crit_edge, label %for.body.lr.ph.i

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end123
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %109 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %110, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #24
  %inc.i = add nuw i32 %i.05.i, 1
  %111 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i245 = icmp ult i32 %inc.i, %112
  br i1 %cmp.i245, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body.i

abort_with_rings.sink.split:                      ; preds = %if.end119.abort_with_rings.sink.split_crit_edge, %if.end112.abort_with_rings.sink.split_crit_edge, %for.end97.abort_with_rings.sink.split_crit_edge, %if.then93, %myri10ge_get_txrx.exit.abort_with_rings.sink.split_crit_edge
  %.str.199.sink = phi ptr [ @.str.196, %if.then93 ], [ @.str.197, %for.end97.abort_with_rings.sink.split_crit_edge ], [ @.str.198, %if.end112.abort_with_rings.sink.split_crit_edge ], [ @.str.199, %if.end119.abort_with_rings.sink.split_crit_edge ], [ @.str.195, %myri10ge_get_txrx.exit.abort_with_rings.sink.split_crit_edge ]
  %slice.0254.ph = phi i32 [ %slice.0258, %if.then93 ], [ %slice.0.lcssa, %for.end97.abort_with_rings.sink.split_crit_edge ], [ %slice.0.lcssa, %if.end112.abort_with_rings.sink.split_crit_edge ], [ %slice.0.lcssa, %if.end119.abort_with_rings.sink.split_crit_edge ], [ %slice.0258, %myri10ge_get_txrx.exit.abort_with_rings.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull %.str.199.sink) #27
  br label %abort_with_rings

abort_with_rings:                                 ; preds = %abort_with_rings.sink.split, %if.end78.abort_with_rings_crit_edge
  %slice.0254 = phi i32 [ %slice.0254.ph, %abort_with_rings.sink.split ], [ %slice.0258, %if.end78.abort_with_rings_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slice.0254)
  %tobool128.not261 = icmp eq i32 %slice.0254, 0
  br i1 %tobool128.not261, label %abort_with_rings.for.cond134.preheader_crit_edge, label %abort_with_rings.while.body129_crit_edge

abort_with_rings.while.body129_crit_edge:         ; preds = %abort_with_rings
  br label %while.body129

abort_with_rings.for.cond134.preheader_crit_edge: ; preds = %abort_with_rings
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.cond134.preheader

for.cond134.preheader:                            ; preds = %while.body129.for.cond134.preheader_crit_edge, %abort_with_rings.for.cond134.preheader_crit_edge
  %113 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %num_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp136263 = icmp sgt i32 %114, 0
  br i1 %cmp136263, label %for.cond134.preheader.for.body138_crit_edge, label %for.cond134.preheader.for.end143_crit_edge

for.cond134.preheader.for.end143_crit_edge:       ; preds = %for.cond134.preheader
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end143

for.cond134.preheader.for.body138_crit_edge:      ; preds = %for.cond134.preheader
  br label %for.body138

while.body129:                                    ; preds = %while.body129.while.body129_crit_edge, %abort_with_rings.while.body129_crit_edge
  %slice.1262 = phi i32 [ %dec, %while.body129.while.body129_crit_edge ], [ %slice.0254, %abort_with_rings.while.body129_crit_edge ]
  %dec = add nsw i32 %slice.1262, -1
  %115 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %add.ptr.i, align 4
  %napi132 = getelementptr %struct.myri10ge_slice_state, ptr %116, i32 %dec, i32 5
  tail call void @napi_disable(ptr noundef %napi132) #24
  %tobool128.not = icmp eq i32 %dec, 0
  br i1 %tobool128.not, label %while.body129.for.cond134.preheader_crit_edge, label %while.body129.while.body129_crit_edge

while.body129.while.body129_crit_edge:            ; preds = %while.body129
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.body129

while.body129.for.cond134.preheader_crit_edge:    ; preds = %while.body129
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.cond134.preheader

for.body138:                                      ; preds = %for.body138.for.body138_crit_edge, %for.cond134.preheader.for.body138_crit_edge
  %i.1264 = phi i32 [ %inc142, %for.body138.for.body138_crit_edge ], [ 0, %for.cond134.preheader.for.body138_crit_edge ]
  %117 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx140 = getelementptr %struct.myri10ge_slice_state, ptr %118, i32 %i.1264
  tail call fastcc void @myri10ge_free_rings(ptr noundef %arrayidx140)
  %inc142 = add nuw nsw i32 %i.1264, 1
  %119 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %num_slices, align 4
  %cmp136 = icmp slt i32 %inc142, %120
  br i1 %cmp136, label %for.body138.for.body138_crit_edge, label %for.body138.for.end143_crit_edge

for.body138.for.end143_crit_edge:                 ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end143

for.body138.for.body138_crit_edge:                ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body138

for.end143:                                       ; preds = %for.body138.for.end143_crit_edge, %for.cond134.preheader.for.end143_crit_edge
  tail call fastcc void @myri10ge_free_irq(ptr noundef %add.ptr.i)
  br label %abort_with_nothing

abort_with_nothing:                               ; preds = %for.end143, %if.end36.abort_with_nothing_crit_edge, %if.then34, %if.then24, %if.then16, %if.then4
  %121 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %running, align 4
  br label %cleanup

cleanup:                                          ; preds = %abort_with_nothing, %for.body.i.cleanup_crit_edge, %if.end123.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %abort_with_nothing ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end123.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #24
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myri10ge_close(ptr noundef %dev) #3 align 64 {
entry:
  %cmd = alloca %struct.myri10ge_cmd, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #24
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !609
  %1 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !609
  %3 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !609
  %running = getelementptr i8, ptr %dev, i32 2316
  %5 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.not = icmp eq i32 %6, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup73_crit_edge

entry.cleanup73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup73

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  %req_bytes = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %req_bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req_bytes, align 16
  %cmp1 = icmp eq ptr %10, null
  br i1 %cmp1, label %if.end.cleanup73_crit_edge, label %if.end3

if.end.cleanup73_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup73

if.end3:                                          ; preds = %if.end
  %watchdog_timer = getelementptr i8, ptr %dev, i32 2504
  %call4 = tail call i32 @del_timer_sync(ptr noundef %watchdog_timer) #24
  %11 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %running, align 4
  %num_slices = getelementptr i8, ptr %dev, i32 2312
  %12 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp6118 = icmp sgt i32 %13, 0
  br i1 %cmp6118, label %if.end3.for.body_crit_edge, label %if.end3.for.end_crit_edge

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end3.for.body_crit_edge
  %i.0119 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %napi = getelementptr %struct.myri10ge_slice_state, ptr %15, i32 %i.0119, i32 5
  tail call void @napi_disable(ptr noundef %napi) #24
  %inc = add nuw nsw i32 %i.0119, 1
  %16 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_slices, align 4
  %cmp6 = icmp slt i32 %inc, %17
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end3.for.end_crit_edge
  tail call void @netif_carrier_off(ptr noundef %dev) #24
  tail call void @netif_tx_stop_all_queues(ptr noundef %dev) #24
  %rebooted = getelementptr i8, ptr %dev, i32 3028
  %18 = ptrtoint ptr %rebooted to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rebooted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp9 = icmp eq i32 %19, 0
  br i1 %cmp9, label %if.then10, label %for.end.if.end62_crit_edge

for.end.if.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end62

if.then10:                                        ; preds = %for.end
  %down_cnt = getelementptr i8, ptr %dev, i32 2404
  %20 = ptrtoint ptr %down_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %down_cnt, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !640
  tail call void @arm_heavy_mb() #24
  %call11 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 15, ptr noundef nonnull %cmd, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then10.if.end13_crit_edge, label %if.then12

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end13

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.202) #27
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then10.if.end13_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 2502) #24
  %22 = ptrtoint ptr %down_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %down_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp21.not = icmp eq i32 %21, %23
  br i1 %cmp21.not, label %if.then29, label %if.end13.if.end56_crit_edge

if.end13.if.end56_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end56

if.then29:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #24
  %24 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #24
  %down_wq = getelementptr i8, ptr %dev, i32 2408
  %call32120 = call i32 @prepare_to_wait_event(ptr noundef %down_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #24
  %25 = ptrtoint ptr %down_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %down_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %26)
  %cmp35.not121.not = icmp eq i32 %21, %26
  br i1 %cmp35.not121.not, label %if.then29.cleanup_crit_edge, label %if.then29.for.end53_crit_edge

if.then29.for.end53_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end53

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then29.cleanup_crit_edge
  %__ret30.1123 = phi i32 [ %__ret30.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then29.cleanup_crit_edge ]
  %call52 = call i32 @schedule_timeout(i32 noundef %__ret30.1123) #24
  %call32 = call i32 @prepare_to_wait_event(ptr noundef %down_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #24
  %27 = ptrtoint ptr %down_cnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %down_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %28)
  %cmp35.not = icmp eq i32 %21, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool39.not = icmp eq i32 %call52, 0
  %spec.store.select78 = select i1 %tobool39.not, i32 1, i32 %call52
  %__ret30.1 = select i1 %cmp35.not, i32 %call52, i32 %spec.store.select78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret30.1)
  %tobool45.not = icmp eq i32 %__ret30.1, 0
  %not.cmp35.not = xor i1 %cmp35.not, true
  %29 = select i1 %not.cmp35.not, i1 true, i1 %tobool45.not
  br i1 %29, label %cleanup.for.end53_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

cleanup.for.end53_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end53

for.end53:                                        ; preds = %cleanup.for.end53_crit_edge, %if.then29.for.end53_crit_edge
  call void @finish_wait(ptr noundef %down_wq, ptr noundef nonnull %__wq_entry) #24
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #24
  br label %if.end56

if.end56:                                         ; preds = %for.end53, %if.end13.if.end56_crit_edge
  %30 = ptrtoint ptr %down_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %down_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %31)
  %cmp59 = icmp eq i32 %21, %31
  br i1 %cmp59, label %if.then60, label %if.end56.if.end62_crit_edge

if.end56.if.end62_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end62

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #26
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.203) #27
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end56.if.end62_crit_edge, %for.end.if.end62_crit_edge
  call fastcc void @local_bh_disable() #24
  %32 = call i32 @llvm.read_register.i32(metadata !599) #24
  %and.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 108
  call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #24
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %36 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp13.not.i = icmp eq i32 %37, 0
  br i1 %cmp13.not.i, label %if.end62.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

if.end62.netif_tx_disable.exit_crit_edge:         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #26
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %if.end62
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %38 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %39, i32 %i.014.i, i32 10
  call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #24
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %39, i32 %i.014.i, i32 11
  %40 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 %35, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %39, i32 %i.014.i, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #24
  %41 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #24
  %inc.i = add nuw i32 %i.014.i, 1
  %42 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %43
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %if.end62.netif_tx_disable.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #24
  call fastcc void @local_bh_enable() #24
  call fastcc void @myri10ge_free_irq(ptr noundef %add.ptr.i)
  %44 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp65124 = icmp sgt i32 %45, 0
  br i1 %cmp65124, label %netif_tx_disable.exit.for.body66_crit_edge, label %netif_tx_disable.exit.for.end71_crit_edge

netif_tx_disable.exit.for.end71_crit_edge:        ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end71

netif_tx_disable.exit.for.body66_crit_edge:       ; preds = %netif_tx_disable.exit
  br label %for.body66

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %netif_tx_disable.exit.for.body66_crit_edge
  %i.1125 = phi i32 [ %inc70, %for.body66.for.body66_crit_edge ], [ 0, %netif_tx_disable.exit.for.body66_crit_edge ]
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx68 = getelementptr %struct.myri10ge_slice_state, ptr %47, i32 %i.1125
  call fastcc void @myri10ge_free_rings(ptr noundef %arrayidx68)
  %inc70 = add nuw nsw i32 %i.1125, 1
  %48 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_slices, align 4
  %cmp65 = icmp slt i32 %inc70, %49
  br i1 %cmp65, label %for.body66.for.body66_crit_edge, label %for.body66.for.end71_crit_edge

for.body66.for.end71_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end71

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body66

for.end71:                                        ; preds = %for.body66.for.end71_crit_edge, %netif_tx_disable.exit.for.end71_crit_edge
  %50 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %running, align 4
  br label %cleanup73

cleanup73:                                        ; preds = %for.end71, %if.end.cleanup73_crit_edge, %entry.cleanup73_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myri10ge_xmit(ptr noundef %skb, ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr %struct.myri10ge_slice_state, ptr %3, i32 %idxprom
  %dev3 = getelementptr i8, ptr %dev, i32 2332
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i, align 128
  %req_list = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx, i32 0, i32 3
  %mask = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx, i32 0, i32 6
  %req6 = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx, i32 0, i32 8
  %done = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx, i32 0, i32 13
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 8
  %sub648 = add i32 %9, -1
  %10 = ptrtoint ptr %req6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %req6, align 128
  %12 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %done, align 128
  %sub7.neg649 = sub i32 %13, %11
  %sub8650 = add i32 %sub648, %sub7.neg649
  %14 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i, align 4
  %gso_size.i651 = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %gso_size.i651 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %gso_size.i651, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.i.not652 = icmp eq i16 %17, 0
  %spec.select583654 = select i1 %tobool.i.not652, i32 12, i32 64
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8650, i32 %spec.select583654)
  %cmp655 = icmp slt i32 %sub8650, %spec.select583654
  br i1 %cmp655, label %entry.if.then14_crit_edge, label %if.end15.lr.ph, !prof !614

entry.if.then14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then14

if.end15.lr.ph:                                   ; preds = %entry
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %max_tso6 = getelementptr i8, ptr %dev, i32 3000
  %csum_offset = getelementptr inbounds %struct.anon.60, ptr %18, i32 0, i32 1
  %len78 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %pdev = getelementptr i8, ptr %dev, i32 2368
  %info = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx, i32 0, i32 5
  %tx_boundary = getelementptr i8, ptr %dev, i32 2308
  %linearized = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx, i32 0, i32 11
  br label %if.end15

if.then14:                                        ; preds = %if.end323.if.then14_crit_edge, %entry.if.then14_crit_edge
  %stop_queue = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx, i32 0, i32 10
  %19 = ptrtoint ptr %stop_queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stop_queue, align 8
  %inc = add i32 %20, 1
  store i32 %inc, ptr %stop_queue, align 8
  %state.i = getelementptr %struct.netdev_queue, ptr %7, i32 %idxprom, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #24
  br label %cleanup328

if.end15:                                         ; preds = %if.end323.if.end15_crit_edge, %if.end15.lr.ph
  %spec.select583658 = phi i32 [ %spec.select583654, %if.end15.lr.ph ], [ %spec.select583, %if.end323.if.end15_crit_edge ]
  %21 = phi i16 [ %17, %if.end15.lr.ph ], [ %214, %if.end323.if.end15_crit_edge ]
  %sub8656 = phi i32 [ %sub8650, %if.end15.lr.ph ], [ %sub8, %if.end323.if.end15_crit_edge ]
  %22 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req_list, align 4
  %conv11657 = zext i16 %21 to i32
  %24 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load = load i16, ptr %ip_summed, align 8
  %25 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %25)
  %cmp17 = icmp eq i16 %25, 1536
  br i1 %cmp17, label %if.then25, label %if.end52, !prof !625

if.then25:                                        ; preds = %if.end15
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %18, align 8
  %conv.i = zext i16 %27 to i32
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %30 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %conv.i, %sub.ptr.lhs.cast.i.i
  %sub.i = add i32 %sub.ptr.sub.i.neg.i, %sub.ptr.rhs.cast.i.i
  %conv27 = trunc i32 %sub.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool31.not = icmp eq i16 %21, 0
  br i1 %tobool31.not, label %land.rhs, label %if.then25.if.then54_crit_edge

if.then25.if.then54_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then54

land.rhs:                                         ; preds = %if.then25
  %32 = ptrtoint ptr %csum_offset to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %csum_offset, align 2
  %conv30 = add i16 %33, %conv27
  %conv28 = and i32 %sub.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv28)
  %cmp33.not = icmp ne i32 %conv28, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %conv30)
  %cmp36 = icmp ugt i16 %conv30, 127
  %spec.select = select i1 %cmp33.not, i1 true, i1 %cmp36
  br i1 %spec.select, label %if.then44, label %land.rhs.if.else77_crit_edge, !prof !614

land.rhs.if.else77_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.else77

if.then44:                                        ; preds = %land.rhs
  %call45 = tail call i32 @skb_checksum_help(ptr noundef %skb) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then44.if.else77_crit_edge, label %if.then44.drop_crit_edge

if.then44.drop_crit_edge:                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #26
  br label %drop

if.then44.if.else77_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.else77

if.end52:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool53.not = icmp eq i16 %21, 0
  br i1 %tobool53.not, label %if.end52.if.else77_crit_edge, label %if.end52.if.then54_crit_edge

if.end52.if.then54_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then54

if.end52.if.else77_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.else77

if.then54:                                        ; preds = %if.end52.if.then54_crit_edge, %if.then25.if.then54_crit_edge
  %odd_flag.0565 = phi i32 [ 0, %if.end52.if.then54_crit_edge ], [ 4, %if.then25.if.then54_crit_edge ]
  %cksum_offset.0564 = phi i16 [ 0, %if.end52.if.then54_crit_edge ], [ %conv27, %if.then25.if.then54_crit_edge ]
  %34 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i, align 8
  %36 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %37 to i32
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 %conv.i.i
  %38 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %41 = lshr i16 %bf.load.i.i, 10
  %42 = and i16 %41, 60
  %mul.i.i = zext i16 %42 to i32
  %add57 = add i32 %sub.ptr.sub.i, %mul.i.i
  %sub58 = sub i32 0, %add57
  %43 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i.i, align 4
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %gso_type.i, align 8
  %and.i = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i512.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i512.not, label %if.then54.if.end91_crit_edge, label %if.then60

if.then54.if.end91_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end91

if.then60:                                        ; preds = %if.then54
  %47 = ptrtoint ptr %max_tso6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_tso6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add57, i32 %48)
  %cmp64 = icmp ugt i32 %add57, %48
  br i1 %cmp64, label %if.then72, label %if.then60.if.end91_crit_edge, !prof !614

if.then60.if.end91_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end91

if.then72:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #26
  tail call fastcc void @myri10ge_sw_tso(ptr noundef %skb, ptr noundef %dev)
  br label %cleanup328

if.else77:                                        ; preds = %if.end52.if.else77_crit_edge, %if.then44.if.else77_crit_edge, %land.rhs.if.else77_crit_edge
  %odd_flag.0555 = phi i32 [ 0, %if.end52.if.else77_crit_edge ], [ 4, %land.rhs.if.else77_crit_edge ], [ 0, %if.then44.if.else77_crit_edge ]
  %flags.0553 = phi i8 [ 18, %if.end52.if.else77_crit_edge ], [ 26, %land.rhs.if.else77_crit_edge ], [ 18, %if.then44.if.else77_crit_edge ]
  %cksum_offset.0552 = phi i16 [ 0, %if.end52.if.else77_crit_edge ], [ %conv27, %land.rhs.if.else77_crit_edge ], [ 0, %if.then44.if.else77_crit_edge ]
  %pseudo_hdr_offset.0551 = phi i16 [ 0, %if.end52.if.else77_crit_edge ], [ %conv30, %land.rhs.if.else77_crit_edge ], [ 0, %if.then44.if.else77_crit_edge ]
  %49 = ptrtoint ptr %len78 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1521, i32 %50)
  %cmp79 = icmp ult i32 %50, 1521
  br i1 %cmp79, label %if.then81, label %if.else77.if.end91_crit_edge

if.else77.if.end91_crit_edge:                     ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end91

if.then81:                                        ; preds = %if.else77
  %51 = or i8 %flags.0553, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %50)
  %cmp.i.i.i = icmp ult i32 %50, 60
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then81.if.end91_crit_edge, !prof !614

if.then81.if.end91_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end91

if.then.i.i.i:                                    ; preds = %if.then81
  %sub.i.i.i = sub nuw nsw i32 60, %50
  %call.i.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i.i, i1 noundef zeroext true) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i, label %if.then87

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  %52 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.i.not.i.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool.i.not.i.i.i.i, label %__skb_put.exit.i.i.i, label %do.body3.i.i.i.i, !prof !625

do.body3.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #24, !srcloc !641
  unreachable

__skb_put.exit.i.i.i:                             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %54 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %55, i32 %sub.i.i.i
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %56 = ptrtoint ptr %len78 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len78, align 4
  %add.i.i.i.i = add i32 %57, %sub.i.i.i
  store i32 %add.i.i.i.i, ptr %len78, align 4
  br label %if.end91

if.then87:                                        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %tx_dropped = getelementptr %struct.myri10ge_slice_state, ptr %3, i32 %idxprom, i32 7, i32 5
  %58 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_dropped, align 4
  %add88 = add i32 %59, 1
  store i32 %add88, ptr %tx_dropped, align 4
  br label %cleanup328

if.end91:                                         ; preds = %__skb_put.exit.i.i.i, %if.then81.if.end91_crit_edge, %if.else77.if.end91_crit_edge, %if.then60.if.end91_crit_edge, %if.then54.if.end91_crit_edge
  %tobool53.not556 = phi i1 [ true, %if.else77.if.end91_crit_edge ], [ true, %__skb_put.exit.i.i.i ], [ true, %if.then81.if.end91_crit_edge ], [ false, %if.then60.if.end91_crit_edge ], [ false, %if.then54.if.end91_crit_edge ]
  %odd_flag.0554 = phi i32 [ %odd_flag.0555, %if.else77.if.end91_crit_edge ], [ %odd_flag.0555, %__skb_put.exit.i.i.i ], [ %odd_flag.0555, %if.then81.if.end91_crit_edge ], [ %odd_flag.0565, %if.then60.if.end91_crit_edge ], [ %odd_flag.0565, %if.then54.if.end91_crit_edge ]
  %pseudo_hdr_offset.1 = phi i16 [ %pseudo_hdr_offset.0551, %if.else77.if.end91_crit_edge ], [ %pseudo_hdr_offset.0551, %__skb_put.exit.i.i.i ], [ %pseudo_hdr_offset.0551, %if.then81.if.end91_crit_edge ], [ %21, %if.then60.if.end91_crit_edge ], [ %21, %if.then54.if.end91_crit_edge ]
  %cksum_offset.2 = phi i16 [ %cksum_offset.0552, %if.else77.if.end91_crit_edge ], [ %cksum_offset.0552, %__skb_put.exit.i.i.i ], [ %cksum_offset.0552, %if.then81.if.end91_crit_edge ], [ %42, %if.then60.if.end91_crit_edge ], [ %cksum_offset.0564, %if.then54.if.end91_crit_edge ]
  %cum_len.0 = phi i32 [ 0, %if.else77.if.end91_crit_edge ], [ 0, %__skb_put.exit.i.i.i ], [ 0, %if.then81.if.end91_crit_edge ], [ %sub58, %if.then60.if.end91_crit_edge ], [ %sub58, %if.then54.if.end91_crit_edge ]
  %flags.1 = phi i8 [ %flags.0553, %if.else77.if.end91_crit_edge ], [ %51, %__skb_put.exit.i.i.i ], [ %51, %if.then81.if.end91_crit_edge ], [ 3, %if.then60.if.end91_crit_edge ], [ 3, %if.then54.if.end91_crit_edge ]
  %60 = ptrtoint ptr %len78 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len78, align 4
  %62 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %sub.i520 = sub i32 %61, %63
  %64 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev, align 4
  %dev93 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %66 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %67) #24
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end91
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !625

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev93) #24
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44, i32 3
  %68 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #26
  %70 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev93, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %71, %if.end.i.i ], [ %69, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.205, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.206, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #24
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @debug_dma_map_single(ptr noundef %dev93, ptr noundef %67, i32 noundef %sub.i520) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %72 = load ptr, ptr @mem_map, align 4
  %73 = ptrtoint ptr %67 to i32
  %sub.i521 = add i32 %73, 1073741824
  %shr.i = lshr i32 %sub.i521, 12
  %add.ptr.i522 = getelementptr %struct.page, ptr %72, i32 %shr.i
  %and.i523 = and i32 %73, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev93, ptr noundef %add.ptr.i522, i32 noundef %and.i523, i32 noundef %sub.i520, i32 noundef 1, i32 noundef 0) #24
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %74 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev, align 4
  %dev96 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev96, i32 noundef %retval.0.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.drop_crit_edge, label %if.end106

dma_map_single_attrs.exit.drop_crit_edge:         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %drop

if.end106:                                        ; preds = %dma_map_single_attrs.exit
  %76 = ptrtoint ptr %req6 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %req6, align 128
  %78 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mask, align 8
  %and = and i32 %79, %77
  %80 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %info, align 4
  %arrayidx109 = getelementptr %struct.myri10ge_tx_buffer_state, ptr %81, i32 %and
  %82 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %skb, ptr %arrayidx109, align 4
  %83 = load ptr, ptr %info, align 4
  %bus113 = getelementptr %struct.myri10ge_tx_buffer_state, ptr %83, i32 %and, i32 2
  %84 = ptrtoint ptr %bus113 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %retval.0.i, ptr %bus113, align 4
  %85 = load ptr, ptr %info, align 4
  %len116 = getelementptr %struct.myri10ge_tx_buffer_state, ptr %85, i32 %and, i32 3
  %86 = ptrtoint ptr %len116 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub.i520, ptr %len116, align 4
  %87 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %end.i.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %nr_frags, align 2
  %conv118 = zext i8 %90 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1521, i16 %21)
  %cmp187 = icmp ult i16 %21, 1521
  %conv188 = zext i1 %cmp187 to i8
  %or190 = or i8 %conv188, 34
  br label %while.cond

while.cond:                                       ; preds = %if.end258, %if.end106
  %bus.0 = phi i32 [ %retval.0.i, %if.end106 ], [ %call2.i, %if.end258 ]
  %len.0 = phi i32 [ %sub.i520, %if.end106 ], [ %112, %if.end258 ]
  %idx.0 = phi i32 [ %and, %if.end106 ], [ %and262, %if.end258 ]
  %frag_idx.0 = phi i32 [ 0, %if.end106 ], [ %inc242, %if.end258 ]
  %count.0 = phi i32 [ 0, %if.end106 ], [ %count.1.lcssa, %if.end258 ]
  %cksum_offset.3 = phi i16 [ %cksum_offset.2, %if.end106 ], [ %cksum_offset.4.lcssa, %if.end258 ]
  %req.0 = phi ptr [ %23, %if.end106 ], [ %req.1.lcssa, %if.end258 ]
  %cum_len.1 = phi i32 [ %cum_len.0, %if.end106 ], [ %cum_len.2.lcssa, %if.end258 ]
  %rdma_count.0 = phi i32 [ 0, %if.end106 ], [ %rdma_count.1.lcssa, %if.end258 ]
  %flags.2 = phi i8 [ %flags.1, %if.end106 ], [ %flags.3.lcssa, %if.end258 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %tobool120.not631 = icmp eq i32 %len.0, 0
  br i1 %tobool120.not631, label %while.cond.while.end_crit_edge, label %while.cond.while.body121_crit_edge

while.cond.while.body121_crit_edge:               ; preds = %while.cond
  br label %while.body121

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.end

while.body121:                                    ; preds = %cleanup.while.body121_crit_edge, %while.cond.while.body121_crit_edge
  %flags.3642 = phi i8 [ %flags_next.0, %cleanup.while.body121_crit_edge ], [ %flags.2, %while.cond.while.body121_crit_edge ]
  %rdma_count.1641 = phi i32 [ %inc210, %cleanup.while.body121_crit_edge ], [ %rdma_count.0, %while.cond.while.body121_crit_edge ]
  %cum_len.2639 = phi i32 [ %cum_len_next.0, %cleanup.while.body121_crit_edge ], [ %cum_len.1, %while.cond.while.body121_crit_edge ]
  %req.1637 = phi ptr [ %incdec.ptr, %cleanup.while.body121_crit_edge ], [ %req.0, %while.cond.while.body121_crit_edge ]
  %cksum_offset.4635 = phi i16 [ %cksum_offset.6, %cleanup.while.body121_crit_edge ], [ %cksum_offset.3, %while.cond.while.body121_crit_edge ]
  %count.1634 = phi i32 [ %inc209, %cleanup.while.body121_crit_edge ], [ %count.0, %while.cond.while.body121_crit_edge ]
  %len.1633 = phi i32 [ %sub208, %cleanup.while.body121_crit_edge ], [ %len.0, %while.cond.while.body121_crit_edge ]
  %low.0632 = phi i32 [ %add207, %cleanup.while.body121_crit_edge ], [ %bus.0, %while.cond.while.body121_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1634, i32 %spec.select583658)
  %cmp122 = icmp eq i32 %count.1634, %spec.select583658
  br i1 %cmp122, label %abort_linearize, label %if.end131, !prof !614

if.end131:                                        ; preds = %while.body121
  %91 = ptrtoint ptr %tx_boundary to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx_boundary, align 4
  %add132 = add i32 %92, %low.0632
  %neg = sub i32 0, %92
  %and135 = and i32 %add132, %neg
  %sub136 = sub i32 %and135, %low.0632
  %93 = tail call i32 @llvm.umin.i32(i32 %sub136, i32 %len.1633)
  %and142 = and i8 %flags.3642, -3
  %add144 = add i32 %93, %cum_len.2639
  br i1 %tobool53.not556, label %if.end131.if.end194_crit_edge, label %if.then146

if.end131.if.end194_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end194

if.then146:                                       ; preds = %if.end131
  %94 = trunc i32 %rdma_count.1641 to i8
  %conv148 = add i8 %94, 1
  %idx.neg = sub i32 0, %rdma_count.1641
  %rdma_count149 = getelementptr %struct.mcp_kreq_ether_send, ptr %req.1637, i32 %idx.neg, i32 5
  %95 = ptrtoint ptr %rdma_count149 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv148, ptr %rdma_count149, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cum_len.2639)
  %cmp150 = icmp sgt i32 %cum_len.2639, -1
  br i1 %cmp150, label %if.then158, label %if.else176, !prof !625

if.then158:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #26
  call void @__sanitizer_cov_trace_cmp4(i32 %add144, i32 %conv11657)
  %cmp159 = icmp sgt i32 %add144, %conv11657
  %conv160 = zext i1 %cmp159 to i32
  %rem = srem i32 %add144, %conv11657
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp161 = icmp eq i32 %rem, 0
  %conv162 = zext i1 %cmp161 to i32
  %mul = select i1 %cmp159, i8 16, i8 0
  %or164 = or i8 %mul, %flags.3642
  %mul166 = select i1 %cmp161, i8 2, i8 0
  %or168 = or i8 %mul166, %and142
  %or170506 = or i1 %cmp159, %cmp161
  %or172 = select i1 %or170506, i32 -1, i32 %rdma_count.1641
  %neg173 = xor i32 %conv162, -1
  %and174 = and i32 %neg173, %conv160
  %add175 = add i32 %or172, %and174
  br label %if.end194

if.else176:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add144)
  %cmp177 = icmp sgt i32 %add144, -1
  br i1 %cmp177, label %if.then185, label %if.else176.if.end194_crit_edge, !prof !625

if.else176.if.end194_crit_edge:                   ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end194

if.then185:                                       ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #26
  %sub186 = sub i32 0, %cum_len.2639
  br label %if.end194

if.end194:                                        ; preds = %if.then185, %if.else176.if.end194_crit_edge, %if.then158, %if.end131.if.end194_crit_edge
  %seglen.1 = phi i32 [ %93, %if.then158 ], [ %sub186, %if.then185 ], [ %93, %if.else176.if.end194_crit_edge ], [ %93, %if.end131.if.end194_crit_edge ]
  %rdma_count.2 = phi i32 [ %add175, %if.then158 ], [ -1, %if.then185 ], [ %rdma_count.1641, %if.else176.if.end194_crit_edge ], [ %rdma_count.1641, %if.end131.if.end194_crit_edge ]
  %flags.4 = phi i8 [ %or164, %if.then158 ], [ %flags.3642, %if.then185 ], [ %flags.3642, %if.else176.if.end194_crit_edge ], [ %flags.3642, %if.end131.if.end194_crit_edge ]
  %flags_next.0 = phi i8 [ %or168, %if.then158 ], [ %or190, %if.then185 ], [ %and142, %if.else176.if.end194_crit_edge ], [ %and142, %if.end131.if.end194_crit_edge ]
  %cum_len_next.0 = phi i32 [ %rem, %if.then158 ], [ 0, %if.then185 ], [ %add144, %if.else176.if.end194_crit_edge ], [ %add144, %if.end131.if.end194_crit_edge ]
  %96 = ptrtoint ptr %req.1637 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %req.1637, align 4
  %addr_low = getelementptr inbounds %struct.mcp_kreq_ether_send, ptr %req.1637, i32 0, i32 1
  %97 = ptrtoint ptr %addr_low to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %low.0632, ptr %addr_low, align 4
  %pseudo_hdr_offset195 = getelementptr inbounds %struct.mcp_kreq_ether_send, ptr %req.1637, i32 0, i32 2
  %98 = ptrtoint ptr %pseudo_hdr_offset195 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %pseudo_hdr_offset.1, ptr %pseudo_hdr_offset195, align 4
  %pad = getelementptr inbounds %struct.mcp_kreq_ether_send, ptr %req.1637, i32 0, i32 4
  %99 = ptrtoint ptr %pad to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %pad, align 4
  %rdma_count196 = getelementptr inbounds %struct.mcp_kreq_ether_send, ptr %req.1637, i32 0, i32 5
  %100 = ptrtoint ptr %rdma_count196 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %rdma_count196, align 1
  %conv197 = trunc i32 %seglen.1 to i16
  %length = getelementptr inbounds %struct.mcp_kreq_ether_send, ptr %req.1637, i32 0, i32 3
  %101 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv197, ptr %length, align 2
  %conv198 = trunc i16 %cksum_offset.4635 to i8
  %cksum_offset199 = getelementptr inbounds %struct.mcp_kreq_ether_send, ptr %req.1637, i32 0, i32 6
  %102 = ptrtoint ptr %cksum_offset199 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv198, ptr %cksum_offset199, align 2
  %and201 = and i32 %cum_len.2639, 1
  %mul203 = mul nuw nsw i32 %and201, %odd_flag.0554
  %103 = trunc i32 %mul203 to i8
  %conv205 = or i8 %flags.4, %103
  %flags206 = getelementptr inbounds %struct.mcp_kreq_ether_send, ptr %req.1637, i32 0, i32 7
  %104 = ptrtoint ptr %flags206 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv205, ptr %flags206, align 1
  %add207 = add i32 %seglen.1, %low.0632
  %sub208 = sub i32 %len.1633, %seglen.1
  %incdec.ptr = getelementptr %struct.mcp_kreq_ether_send, ptr %req.1637, i32 1
  %inc209 = add i32 %count.1634, 1
  %inc210 = add i32 %rdma_count.2, 1
  %conv211 = zext i16 %cksum_offset.4635 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cksum_offset.4635)
  %cmp212.not = icmp eq i16 %cksum_offset.4635, 0
  br i1 %cmp212.not, label %if.end194.cleanup_crit_edge, label %land.lhs.true

if.end194.cleanup_crit_edge:                      ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end194
  br i1 %tobool53.not556, label %land.lhs.true.if.then218_crit_edge, label %land.lhs.true215

land.lhs.true.if.then218_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then218

land.lhs.true215:                                 ; preds = %land.lhs.true
  %105 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %end.i.i, align 4
  %gso_type.i526 = getelementptr inbounds %struct.skb_shared_info, ptr %106, i32 0, i32 8
  %107 = ptrtoint ptr %gso_type.i526 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %gso_type.i526, align 8
  %and.i527 = and i32 %108, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i527)
  %tobool.i528.not = icmp eq i32 %and.i527, 0
  br i1 %tobool.i528.not, label %land.lhs.true215.if.then218_crit_edge, label %land.lhs.true215.cleanup_crit_edge

land.lhs.true215.cleanup_crit_edge:               ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

land.lhs.true215.if.then218_crit_edge:            ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then218

if.then218:                                       ; preds = %land.lhs.true215.if.then218_crit_edge, %land.lhs.true.if.then218_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %seglen.1, i32 %conv211)
  %cmp220 = icmp slt i32 %seglen.1, %conv211
  br i1 %cmp220, label %if.then228, label %if.then218.cleanup_crit_edge, !prof !614

if.then218.cleanup_crit_edge:                     ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then228:                                       ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #26
  %conv231 = sub i16 %cksum_offset.4635, %conv197
  br label %cleanup

cleanup:                                          ; preds = %if.then228, %if.then218.cleanup_crit_edge, %land.lhs.true215.cleanup_crit_edge, %if.end194.cleanup_crit_edge
  %cksum_offset.6 = phi i16 [ %cksum_offset.4635, %land.lhs.true215.cleanup_crit_edge ], [ %conv231, %if.then228 ], [ 0, %if.end194.cleanup_crit_edge ], [ 0, %if.then218.cleanup_crit_edge ]
  %tobool120.not = icmp eq i32 %sub208, 0
  br i1 %tobool120.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body121_crit_edge

cleanup.while.body121_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.body121

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.while.end_crit_edge
  %count.1.lcssa = phi i32 [ %count.0, %while.cond.while.end_crit_edge ], [ %inc209, %cleanup.while.end_crit_edge ]
  %cksum_offset.4.lcssa = phi i16 [ %cksum_offset.3, %while.cond.while.end_crit_edge ], [ %cksum_offset.6, %cleanup.while.end_crit_edge ]
  %req.1.lcssa = phi ptr [ %req.0, %while.cond.while.end_crit_edge ], [ %incdec.ptr, %cleanup.while.end_crit_edge ]
  %cum_len.2.lcssa = phi i32 [ %cum_len.1, %while.cond.while.end_crit_edge ], [ %cum_len_next.0, %cleanup.while.end_crit_edge ]
  %rdma_count.1.lcssa = phi i32 [ %rdma_count.0, %while.cond.while.end_crit_edge ], [ %inc210, %cleanup.while.end_crit_edge ]
  %flags.3.lcssa = phi i8 [ %flags.2, %while.cond.while.end_crit_edge ], [ %flags_next.0, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %frag_idx.0, i32 %conv118)
  %cmp236 = icmp eq i32 %frag_idx.0, %conv118
  br i1 %cmp236, label %while.end269, label %if.end239

if.end239:                                        ; preds = %while.end
  %109 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %end.i.i, align 4
  %arrayidx241 = getelementptr %struct.skb_shared_info, ptr %110, i32 0, i32 12, i32 %frag_idx.0
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %110, i32 0, i32 12, i32 %frag_idx.0, i32 1
  %111 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bv_len.i, align 4
  %113 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev, align 4
  %dev245 = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  %115 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx241, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %110, i32 0, i32 12, i32 %frag_idx.0, i32 2
  %117 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev245, ptr noundef %116, i32 noundef %118, i32 noundef %112, i32 noundef 1, i32 noundef 0) #24
  %119 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pdev, align 4
  %dev248 = getelementptr inbounds %struct.pci_dev, ptr %120, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev248, i32 noundef %call2.i) #24
  %cmp.i530.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i530.not, label %if.then257, label %if.end258, !prof !614

if.then257:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #26
  tail call fastcc void @myri10ge_unmap_tx_dma(ptr noundef %add.ptr.i, ptr noundef %arrayidx, i32 noundef %idx.0)
  br label %drop

if.end258:                                        ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #26
  %inc242 = add nuw nsw i32 %frag_idx.0, 1
  %121 = ptrtoint ptr %req6 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %req6, align 128
  %add260 = add i32 %122, %count.1.lcssa
  %123 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %mask, align 8
  %and262 = and i32 %add260, %124
  %125 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %info, align 4
  %bus265 = getelementptr %struct.myri10ge_tx_buffer_state, ptr %126, i32 %and262, i32 2
  %127 = ptrtoint ptr %bus265 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %call2.i, ptr %bus265, align 4
  %128 = load ptr, ptr %info, align 4
  %len268 = getelementptr %struct.myri10ge_tx_buffer_state, ptr %128, i32 %and262, i32 3
  %129 = ptrtoint ptr %len268 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %112, ptr %len268, align 4
  br label %while.cond

while.end269:                                     ; preds = %while.end
  %conv270 = trunc i32 %rdma_count.1.lcssa to i8
  %idx.neg271 = sub i32 0, %rdma_count.1.lcssa
  %rdma_count273 = getelementptr %struct.mcp_kreq_ether_send, ptr %req.1.lcssa, i32 %idx.neg271, i32 5
  %130 = ptrtoint ptr %rdma_count273 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv270, ptr %rdma_count273, align 1
  br i1 %tobool53.not556, label %while.end269.if.end287_crit_edge, label %while.end269.do.body_crit_edge

while.end269.do.body_crit_edge:                   ; preds = %while.end269
  br label %do.body

while.end269.if.end287_crit_edge:                 ; preds = %while.end269
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end287

do.body:                                          ; preds = %do.body.do.body_crit_edge, %while.end269.do.body_crit_edge
  %req.3 = phi ptr [ %incdec.ptr276, %do.body.do.body_crit_edge ], [ %req.1.lcssa, %while.end269.do.body_crit_edge ]
  %incdec.ptr276 = getelementptr %struct.mcp_kreq_ether_send, ptr %req.3, i32 -1
  %flags277 = getelementptr %struct.mcp_kreq_ether_send, ptr %req.3, i32 -1, i32 7
  %131 = ptrtoint ptr %flags277 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %flags277, align 1
  %133 = or i8 %132, 8
  store i8 %133, ptr %flags277, align 1
  %134 = and i8 %132, 18
  %tobool284.not = icmp eq i8 %134, 0
  br i1 %tobool284.not, label %do.body.do.body_crit_edge, label %do.body.if.end287_crit_edge

do.body.if.end287_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end287

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.body

if.end287:                                        ; preds = %do.body.if.end287_crit_edge, %while.end269.if.end287_crit_edge
  %sub288 = add i32 %count.1.lcssa, -1
  %135 = ptrtoint ptr %req6 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %req6, align 128
  %add290 = add i32 %136, %sub288
  %137 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %mask, align 8
  %and292 = and i32 %add290, %138
  %139 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %info, align 4
  %last = getelementptr %struct.myri10ge_tx_buffer_state, ptr %140, i32 %and292, i32 1
  %141 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1, ptr %last, align 4
  %142 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %req_list, align 4
  %144 = load i32, ptr %req6, align 128
  %145 = load i32, ptr %mask, align 8
  %and.i532 = and i32 %145, %144
  %flags.i = getelementptr inbounds %struct.mcp_kreq_ether_send, ptr %143, i32 0, i32 7
  %146 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %flags.i, align 1
  store i8 0, ptr %flags.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !642
  tail call void @arm_heavy_mb() #24
  %148 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx, align 128
  %arrayidx.i533 = getelementptr %struct.mcp_kreq_ether_send, ptr %149, i32 %and.i532
  %add.i = add i32 %and.i532, %count.1.lcssa
  %150 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %mask, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %151)
  %cmp.i534 = icmp slt i32 %add.i, %151
  br i1 %cmp.i534, label %for.cond.preheader.i, label %if.else.i

for.cond.preheader.i:                             ; preds = %if.end287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub288)
  %cmp345.i = icmp sgt i32 %sub288, 0
  br i1 %cmp345.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end.i_crit_edge

for.cond.preheader.i.if.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %srcp.048.i = phi ptr [ %add.ptr.i536, %for.body.i.for.body.i_crit_edge ], [ %143, %for.cond.preheader.i.for.body.i_crit_edge ]
  %dstp.047.i = phi ptr [ %add.ptr7.i, %for.body.i.for.body.i_crit_edge ], [ %arrayidx.i533, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.046.i = phi i32 [ %add8.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  tail call void @__iowrite64_copy(ptr noundef %dstp.047.i, ptr noundef %srcp.048.i, i32 noundef 4) #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !643
  tail call void @arm_heavy_mb() #24
  %add.ptr.i536 = getelementptr %struct.mcp_kreq_ether_send, ptr %srcp.048.i, i32 2
  %add.ptr7.i = getelementptr %struct.mcp_kreq_ether_send, ptr %dstp.047.i, i32 2
  %add8.i = add i32 %i.046.i, 2
  %cmp3.i = icmp slt i32 %add8.i, %sub288
  br i1 %cmp3.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body.i

if.else.i:                                        ; preds = %if.end287
  %152 = ptrtoint ptr %req6 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %req6, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.1.lcssa)
  %cmp7.i.i = icmp sgt i32 %count.1.lcssa, 1
  br i1 %cmp7.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %cnt.addr.08.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %count.1.lcssa, %if.else.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %cnt.addr.08.i.i, -1
  %add.i.i = add i32 %dec.i.i, %153
  %154 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %mask, align 8
  %and.i.i = and i32 %add.i.i, %155
  %156 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx, align 128
  %arrayidx.i.i = getelementptr %struct.mcp_kreq_ether_send, ptr %157, i32 %and.i.i
  %arrayidx1.i.i = getelementptr %struct.mcp_kreq_ether_send, ptr %143, i32 %dec.i.i
  tail call void @__iowrite64_copy(ptr noundef %arrayidx.i.i, ptr noundef %arrayidx1.i.i, i32 noundef 2) #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !644
  tail call void @arm_heavy_mb() #24
  %cmp.i.i = icmp ugt i32 %cnt.addr.08.i.i, 2
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.if.end.i_crit_edge

while.body.i.i.if.end.i_crit_edge:                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.body.i.i

if.end.i:                                         ; preds = %while.body.i.i.if.end.i_crit_edge, %if.else.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge, %for.cond.preheader.i.if.end.i_crit_edge
  %i.1.i = phi i32 [ 0, %if.else.i.if.end.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end.i_crit_edge ], [ %add8.i, %for.body.i.if.end.i_crit_edge ], [ 0, %while.body.i.i.if.end.i_crit_edge ]
  %dstp.1.i = phi ptr [ %arrayidx.i533, %if.else.i.if.end.i_crit_edge ], [ %arrayidx.i533, %for.cond.preheader.i.if.end.i_crit_edge ], [ %add.ptr7.i, %for.body.i.if.end.i_crit_edge ], [ %arrayidx.i533, %while.body.i.i.if.end.i_crit_edge ]
  %srcp.1.i = phi ptr [ %143, %if.else.i.if.end.i_crit_edge ], [ %143, %for.cond.preheader.i.if.end.i_crit_edge ], [ %add.ptr.i536, %for.body.i.if.end.i_crit_edge ], [ %143, %while.body.i.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.i, i32 %count.1.lcssa)
  %cmp9.i = icmp slt i32 %i.1.i, %count.1.lcssa
  br i1 %cmp9.i, label %if.then10.i, label %if.end.i.myri10ge_submit_req.exit_crit_edge

if.end.i.myri10ge_submit_req.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_submit_req.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @__iowrite64_copy(ptr noundef %dstp.1.i, ptr noundef %srcp.1.i, i32 noundef 2) #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !645
  tail call void @arm_heavy_mb() #24
  br label %myri10ge_submit_req.exit

myri10ge_submit_req.exit:                         ; preds = %if.then10.i, %if.end.i.myri10ge_submit_req.exit_crit_edge
  %158 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %147, ptr %flags.i, align 1
  %add.ptr16.i = getelementptr i32, ptr %143, i32 3
  %159 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %add.ptr16.i, align 4
  %add.ptr17.i = getelementptr i32, ptr %arrayidx.i533, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %160) #24, !srcloc !622
  %161 = ptrtoint ptr %req6 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %req6, align 128
  %add19.i = add i32 %162, %count.1.lcssa
  store i32 %add19.i, ptr %req6, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !646
  tail call void @arm_heavy_mb() #24
  %163 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev3, align 4
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %164, i32 0, i32 105
  %165 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %real_num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %166)
  %cmp297 = icmp ugt i32 %166, 1
  br i1 %cmp297, label %land.lhs.true299, label %myri10ge_submit_req.exit.if.end307_crit_edge

myri10ge_submit_req.exit.if.end307_crit_edge:     ; preds = %myri10ge_submit_req.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end307

land.lhs.true299:                                 ; preds = %myri10ge_submit_req.exit
  %queue_active = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx, i32 0, i32 16
  %167 = ptrtoint ptr %queue_active to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %queue_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp300 = icmp eq i32 %168, 0
  br i1 %cmp300, label %if.then302, label %land.lhs.true299.if.end307_crit_edge

land.lhs.true299.if.end307_crit_edge:             ; preds = %land.lhs.true299
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end307

if.then302:                                       ; preds = %land.lhs.true299
  call void @__sanitizer_cov_trace_pc() #26
  %169 = ptrtoint ptr %queue_active to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 1, ptr %queue_active, align 4
  %send_go = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx, i32 0, i32 1
  %170 = ptrtoint ptr %send_go to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %send_go, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 1) #24, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !647
  tail call void @arm_heavy_mb() #24
  br label %if.end307

if.end307:                                        ; preds = %if.then302, %land.lhs.true299.if.end307_crit_edge, %myri10ge_submit_req.exit.if.end307_crit_edge
  %pkt_start = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx, i32 0, i32 9
  %172 = ptrtoint ptr %pkt_start to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %pkt_start, align 4
  %inc308 = add i32 %173, 1
  store i32 %inc308, ptr %pkt_start, align 4
  %sub309 = sub i32 %sub8656, %count.1.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub309)
  %cmp310 = icmp slt i32 %sub309, 12
  br i1 %cmp310, label %if.then312, label %if.end307.cleanup328_crit_edge

if.end307.cleanup328_crit_edge:                   ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup328

if.then312:                                       ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #26
  %stop_queue313 = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx, i32 0, i32 10
  %174 = ptrtoint ptr %stop_queue313 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %stop_queue313, align 8
  %inc314 = add i32 %175, 1
  store i32 %inc314, ptr %stop_queue313, align 8
  %state.i509 = getelementptr %struct.netdev_queue, ptr %7, i32 %idxprom, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i509) #24
  br label %cleanup328

abort_linearize:                                  ; preds = %while.body121
  %add.i537 = add i32 %idx.0, 1
  %176 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %mask, align 8
  %and.i539 = and i32 %177, %add.i537
  %178 = ptrtoint ptr %req6 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %req6, align 128
  %and2.i = and i32 %179, %177
  br label %do.body.i

do.body.i:                                        ; preds = %if.end20.i.do.body.i_crit_edge, %abort_linearize
  %idx.addr.0.i = phi i32 [ %and2.i, %abort_linearize ], [ %and23.i, %if.end20.i.do.body.i_crit_edge ]
  %180 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %info, align 4
  %len3.i = getelementptr %struct.myri10ge_tx_buffer_state, ptr %181, i32 %idx.addr.0.i, i32 3
  %182 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %len3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool.not.i = icmp eq i32 %183, 0
  br i1 %tobool.not.i, label %do.body.i.if.end20.i_crit_edge, label %if.then.i541

do.body.i.if.end20.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end20.i

if.then.i541:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #26
  %184 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pdev, align 4
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %185, i32 0, i32 44
  %bus13.i = getelementptr %struct.myri10ge_tx_buffer_state, ptr %181, i32 %idx.addr.0.i, i32 2
  %186 = ptrtoint ptr %bus13.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %bus13.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev10.i, i32 noundef %187, i32 noundef %183, i32 noundef 1, i32 noundef 0) #24
  %188 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %info, align 4
  %len16.i = getelementptr %struct.myri10ge_tx_buffer_state, ptr %189, i32 %idx.addr.0.i, i32 3
  %190 = ptrtoint ptr %len16.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %len16.i, align 4
  %191 = load ptr, ptr %info, align 4
  %arrayidx18.i = getelementptr %struct.myri10ge_tx_buffer_state, ptr %191, i32 %idx.addr.0.i
  %192 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr null, ptr %arrayidx18.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then.i541, %do.body.i.if.end20.i_crit_edge
  %add21.i = add i32 %idx.addr.0.i, 1
  %193 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %mask, align 8
  %and23.i = and i32 %194, %add21.i
  %cmp24.not.i = icmp eq i32 %and23.i, %and.i539
  br i1 %cmp24.not.i, label %myri10ge_unmap_tx_dma.exit, label %if.end20.i.do.body.i_crit_edge

if.end20.i.do.body.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.body.i

myri10ge_unmap_tx_dma.exit:                       ; preds = %if.end20.i
  %195 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %end.i.i, align 4
  %gso_size.i543 = getelementptr inbounds %struct.skb_shared_info, ptr %196, i32 0, i32 4
  %197 = ptrtoint ptr %gso_size.i543 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %gso_size.i543, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %198)
  %tobool.i544.not = icmp eq i16 %198, 0
  br i1 %tobool.i544.not, label %if.end319, label %if.then317

if.then317:                                       ; preds = %myri10ge_unmap_tx_dma.exit
  call void @__sanitizer_cov_trace_pc() #26
  %199 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %200, ptr noundef nonnull @.str.204) #27
  br label %drop

if.end319:                                        ; preds = %myri10ge_unmap_tx_dma.exit
  %201 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool.i.not.i = icmp eq i32 %202, 0
  br i1 %tobool.i.not.i, label %if.end319.if.end323_crit_edge, label %cond.true.i

if.end319.if.end323_crit_edge:                    ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end323

cond.true.i:                                      ; preds = %if.end319
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %202) #24
  %tobool.not.i.i545 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i545, label %cond.true.i.drop_crit_edge, label %cond.true.i.if.end323_crit_edge

cond.true.i.if.end323_crit_edge:                  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end323

cond.true.i.drop_crit_edge:                       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %drop

if.end323:                                        ; preds = %cond.true.i.if.end323_crit_edge, %if.end319.if.end323_crit_edge
  %203 = ptrtoint ptr %linearized to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %linearized, align 4
  %inc324 = add i32 %204, 1
  store i32 %inc324, ptr %linearized, align 4
  %205 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %mask, align 8
  %sub = add i32 %206, -1
  %207 = ptrtoint ptr %req6 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %req6, align 128
  %209 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %done, align 128
  %sub7.neg = sub i32 %210, %208
  %sub8 = add i32 %sub, %sub7.neg
  %211 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %212, i32 0, i32 4
  %213 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %214)
  %tobool.i.not = icmp eq i16 %214, 0
  %spec.select583 = select i1 %tobool.i.not, i32 12, i32 64
  %cmp = icmp slt i32 %sub8, %spec.select583
  br i1 %cmp, label %if.end323.if.then14_crit_edge, label %if.end323.if.end15_crit_edge, !prof !614

if.end323.if.end15_crit_edge:                     ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end15

if.end323.if.then14_crit_edge:                    ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then14

drop:                                             ; preds = %cond.true.i.drop_crit_edge, %if.then317, %if.then257, %dma_map_single_attrs.exit.drop_crit_edge, %if.then44.drop_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #24
  %tx_dropped326 = getelementptr %struct.myri10ge_slice_state, ptr %3, i32 %idxprom, i32 7, i32 5
  %215 = ptrtoint ptr %tx_dropped326 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %tx_dropped326, align 4
  %add327 = add i32 %216, 1
  store i32 %add327, ptr %tx_dropped326, align 4
  br label %cleanup328

cleanup328:                                       ; preds = %drop, %if.then312, %if.end307.cleanup328_crit_edge, %if.then87, %if.then72, %if.then14
  %retval.0 = phi i32 [ 16, %if.then14 ], [ 0, %drop ], [ 0, %if.then72 ], [ 0, %if.then87 ], [ 0, %if.then312 ], [ 0, %if.end307.cleanup328_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myri10ge_set_mac_address(ptr noundef %dev, ptr noundef %addr) #3 align 64 {
entry:
  %cmd.i = alloca %struct.myri10ge_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i) #24
  %5 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !609
  %8 = ptrtoint ptr %sa_data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sa_data, align 1
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %11 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %13 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %15 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %16 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or10.i, ptr %cmd.i, align 4
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr.i.i, align 1
  %conv12.i = zext i8 %18 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 8
  %arrayidx14.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %20 to i32
  %or16.i = or i32 %shl13.i, %conv15.i
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or16.i, ptr %5, align 4
  %call.i = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef 22, ptr noundef nonnull %cmd.i, i32 noundef 0) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.207, i32 noundef %call.i) #27
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then5 ], [ 0, %if.end6 ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myri10ge_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtu, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.208, i32 noundef %1, i32 noundef %new_mtu) #27
  %running = getelementptr i8, ptr %dev, i32 2316
  %2 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %call1 = tail call i32 @myri10ge_close(ptr noundef %dev)
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %new_mtu, ptr %mtu, align 4
  %call3 = tail call i32 @myri10ge_open(ptr noundef %dev)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %5 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @myri10ge_get_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef %stats) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %num_slices = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp31 = icmp sgt i32 %1, 0
  br i1 %cmp31, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tx_packets4 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %rx_bytes7 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %tx_bytes10 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %rx_dropped13 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %tx_dropped16 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %stats1 = getelementptr %struct.myri10ge_slice_state, ptr %3, i32 %i.032, i32 7
  %4 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats1, align 4
  %conv = zext i32 %5 to i64
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %stats, align 8
  %add = add i64 %7, %conv
  store i64 %add, ptr %stats, align 8
  %tx_packets = getelementptr %struct.myri10ge_slice_state, ptr %3, i32 %i.032, i32 7, i32 1
  %8 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_packets, align 4
  %conv3 = zext i32 %9 to i64
  %10 = ptrtoint ptr %tx_packets4 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tx_packets4, align 8
  %add5 = add i64 %11, %conv3
  store i64 %add5, ptr %tx_packets4, align 8
  %rx_bytes = getelementptr %struct.myri10ge_slice_state, ptr %3, i32 %i.032, i32 7, i32 2
  %12 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_bytes, align 4
  %conv6 = zext i32 %13 to i64
  %14 = ptrtoint ptr %rx_bytes7 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rx_bytes7, align 8
  %add8 = add i64 %15, %conv6
  store i64 %add8, ptr %rx_bytes7, align 8
  %tx_bytes = getelementptr %struct.myri10ge_slice_state, ptr %3, i32 %i.032, i32 7, i32 3
  %16 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_bytes, align 4
  %conv9 = zext i32 %17 to i64
  %18 = ptrtoint ptr %tx_bytes10 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tx_bytes10, align 8
  %add11 = add i64 %19, %conv9
  store i64 %add11, ptr %tx_bytes10, align 8
  %rx_dropped = getelementptr %struct.myri10ge_slice_state, ptr %3, i32 %i.032, i32 7, i32 4
  %20 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_dropped, align 4
  %conv12 = zext i32 %21 to i64
  %22 = ptrtoint ptr %rx_dropped13 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rx_dropped13, align 8
  %add14 = add i64 %23, %conv12
  store i64 %add14, ptr %rx_dropped13, align 8
  %tx_dropped = getelementptr %struct.myri10ge_slice_state, ptr %3, i32 %i.032, i32 7, i32 5
  %24 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_dropped, align 4
  %conv15 = zext i32 %25 to i64
  %26 = ptrtoint ptr %tx_dropped16 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tx_dropped16, align 8
  %add17 = add i64 %27, %conv15
  store i64 %add17, ptr %tx_dropped16, align 8
  %inc = add nuw nsw i32 %i.032, 1
  %28 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_slices, align 4
  %cmp = icmp slt i32 %inc, %29
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @myri10ge_allocate_rings(ptr noundef %ss) unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.myri10ge_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %mgp1 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 6
  %0 = ptrtoint ptr %mgp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mgp1, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #24
  %2 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !609
  %4 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !609
  %dev2 = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %ss to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 896
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.ptr.div, ptr %cmd, align 4
  %call = call fastcc i32 @myri10ge_send_cmd(ptr noundef %1, i32 noundef 11, ptr noundef nonnull %cmd, i32 noundef 0)
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd, align 4
  store i32 %sub.ptr.div, ptr %cmd, align 4
  %call6 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %1, i32 noundef 12, ptr noundef nonnull %cmd, i32 noundef 0)
  %or = or i32 %call6, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp.not = icmp eq i32 %or, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmd, align 4
  %div277 = lshr i32 %12, 4
  %div8278 = lshr i32 %14, 3
  %sub = add nsw i32 %div277, -1
  %mask = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %ss, i32 0, i32 6
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %mask, align 8
  %sub9 = add nsw i32 %div8278, -1
  %rx_big = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 2
  %mask10 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 2, i32 9
  %16 = ptrtoint ptr %mask10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub9, ptr %mask10, align 4
  %rx_small = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1
  %mask11 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1, i32 9
  %17 = ptrtoint ptr %mask11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub9, ptr %mask11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 1096) #31
  %req_bytes = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %ss, i32 0, i32 4
  %19 = ptrtoint ptr %req_bytes to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %req_bytes, align 16
  %cmp16 = icmp eq ptr %call7.i.i, null
  br i1 %cmp16, label %if.end.cleanup_crit_edge, label %if.end18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %req_list = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %ss, i32 0, i32 3
  %20 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %req_list, align 4
  %queue_active = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %ss, i32 0, i32 16
  %21 = ptrtoint ptr %queue_active to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %queue_active, align 4
  %mul = and i32 %14, -8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #29
  %shadow438 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %shadow438 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i.i, ptr %shadow438, align 4
  %cmp27439 = icmp eq ptr %call9.i.i, null
  br i1 %cmp27439, label %if.end18.abort_with_tx_req_bytes_crit_edge, label %if.end8.i.i306

if.end18.abort_with_tx_req_bytes_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_tx_req_bytes

if.end8.i.i306:                                   ; preds = %if.end18
  %call9.i.i305 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #29
  %shadow33 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %shadow33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i.i305, ptr %shadow33, align 4
  %cmp36 = icmp eq ptr %call9.i.i305, null
  br i1 %cmp36, label %if.end8.i.i306.abort_with_rx_small_shadow_crit_edge, label %if.end8.i.i335

if.end8.i.i306.abort_with_rx_small_shadow_crit_edge: ; preds = %if.end8.i.i306
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_rx_small_shadow

if.end8.i.i335:                                   ; preds = %if.end8.i.i306
  %mul39 = and i32 %12, -16
  %call9.i.i334 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul39, i32 noundef 3520) #29
  %info = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %ss, i32 0, i32 5
  %24 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i.i334, ptr %info, align 4
  %cmp44 = icmp eq ptr %call9.i.i334, null
  br i1 %cmp44, label %if.end8.i.i335.abort_with_rx_big_shadow_crit_edge, label %if.end46

if.end8.i.i335.abort_with_rx_big_shadow_crit_edge: ; preds = %if.end8.i.i335
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_rx_big_shadow

if.end46:                                         ; preds = %if.end8.i.i335
  %mul47 = shl i32 %div8278, 4
  %call9.i.i363 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul47, i32 noundef 3520) #29
  %info50469 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %info50469 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9.i.i363, ptr %info50469, align 8
  %cmp53470 = icmp eq ptr %call9.i.i363, null
  br i1 %cmp53470, label %if.end46.abort_with_tx_info_crit_edge, label %if.end8.i.i393

if.end46.abort_with_tx_info_crit_edge:            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_tx_info

if.end8.i.i393:                                   ; preds = %if.end46
  %call9.i.i392 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul47, i32 noundef 3520) #29
  %info59 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %info59 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call9.i.i392, ptr %info59, align 4
  %cmp62 = icmp eq ptr %call9.i.i392, null
  br i1 %cmp62, label %if.end8.i.i393.abort_with_rx_small_info_crit_edge, label %if.end64

if.end8.i.i393.abort_with_rx_small_info_crit_edge: ; preds = %if.end8.i.i393
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_rx_small_info

if.end64:                                         ; preds = %if.end8.i.i393
  %cnt = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 2, i32 6
  %27 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %cnt, align 4
  %cnt67 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1, i32 6
  %28 = ptrtoint ptr %cnt67 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %cnt67, align 8
  %fill_cnt = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 2, i32 7
  %29 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %fill_cnt, align 4
  %fill_cnt70 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1, i32 7
  %30 = ptrtoint ptr %fill_cnt70 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %fill_cnt70, align 4
  %page_offset = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1, i32 5
  %31 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4096, ptr %page_offset, align 4
  %page_offset73 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 2, i32 5
  %32 = ptrtoint ptr %page_offset73 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4096, ptr %page_offset73, align 4
  %watchdog_needed = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1, i32 10
  %33 = ptrtoint ptr %watchdog_needed to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %watchdog_needed, align 8
  %watchdog_needed76 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 2, i32 10
  %34 = ptrtoint ptr %watchdog_needed76 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %watchdog_needed76, align 4
  %small_bytes = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %small_bytes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %small_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp77 = icmp eq i32 %36, 0
  br i1 %cmp77, label %if.then78, label %if.else

if.then78:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #26
  %37 = ptrtoint ptr %mask11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mask11, align 4
  %add81 = add i32 %38, 1
  %39 = ptrtoint ptr %fill_cnt70 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add81, ptr %fill_cnt70, align 4
  br label %if.end87

if.else:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #26
  %add86 = add i32 %36, 2
  tail call fastcc void @myri10ge_alloc_rx_pages(ptr noundef %1, ptr noundef %rx_small, i32 noundef %add86, i32 noundef 0)
  br label %if.end87

if.end87:                                         ; preds = %if.else, %if.then78
  %40 = ptrtoint ptr %fill_cnt70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fill_cnt70, align 4
  %42 = ptrtoint ptr %mask11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mask11, align 4
  %add92 = add i32 %43, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %add92)
  %cmp93 = icmp slt i32 %41, %add92
  br i1 %cmp93, label %if.then94, label %if.end97

if.then94:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.200, i32 noundef %sub.ptr.div, i32 noundef %41) #27
  br label %abort_with_rx_small_ring

if.end97:                                         ; preds = %if.end87
  %big_bytes = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %big_bytes to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %big_bytes, align 4
  tail call fastcc void @myri10ge_alloc_rx_pages(ptr noundef %1, ptr noundef %rx_big, i32 noundef %45, i32 noundef 0)
  %46 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fill_cnt, align 4
  %48 = ptrtoint ptr %mask10 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mask10, align 4
  %add103 = add i32 %49, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %add103)
  %cmp104 = icmp slt i32 %47, %add103
  br i1 %cmp104, label %if.then105, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then105:                                       ; preds = %if.end97
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.201, i32 noundef %sub.ptr.div, i32 noundef %47) #27
  %50 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cnt, align 4
  %52 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fill_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp113487 = icmp slt i32 %51, %53
  br i1 %cmp113487, label %for.body.lr.ph, label %if.then105.abort_with_rx_small_ring_crit_edge

if.then105.abort_with_rx_small_ring_crit_edge:    ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_rx_small_ring

for.body.lr.ph:                                   ; preds = %if.then105
  %pdev = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0488 = phi i32 [ %51, %for.body.lr.ph ], [ %inc, %put_page.exit.for.body_crit_edge ]
  %54 = ptrtoint ptr %mask10 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mask10, align 4
  %and116 = and i32 %55, %i.0488
  %56 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev, align 4
  %58 = ptrtoint ptr %info59 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %info59, align 4
  %60 = ptrtoint ptr %big_bytes to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %big_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %61)
  %cmp.i = icmp ugt i32 %61, 2047
  br i1 %cmp.i, label %for.body.if.then.i_crit_edge, label %lor.lhs.false.i

for.body.if.then.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body
  %page_offset.i = getelementptr %struct.myri10ge_rx_buffer_state, ptr %59, i32 %and116, i32 1
  %62 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %page_offset.i, align 4
  %mul.i = shl nuw nsw i32 %61, 1
  %add.i = add i32 %63, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp1.i = icmp ugt i32 %add.i, 4096
  br i1 %cmp1.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.myri10ge_unmap_rx_page.exit_crit_edge

lor.lhs.false.i.myri10ge_unmap_rx_page.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_unmap_rx_page.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.body.if.then.i_crit_edge
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %bus.i = getelementptr %struct.myri10ge_rx_buffer_state, ptr %59, i32 %and116, i32 2
  %64 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bus.i, align 4
  %and.i = and i32 %65, -4096
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %and.i, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #24
  br label %myri10ge_unmap_rx_page.exit

myri10ge_unmap_rx_page.exit:                      ; preds = %if.then.i, %lor.lhs.false.i.myri10ge_unmap_rx_page.exit_crit_edge
  %66 = ptrtoint ptr %info59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %info59, align 4
  %arrayidx122 = getelementptr %struct.myri10ge_rx_buffer_state, ptr %67, i32 %and116
  %68 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx122, align 4
  %70 = getelementptr inbounds %struct.page, ptr %69, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  %and.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i397, label %if.then.i.i396, !prof !625

if.then.i.i396:                                   ; preds = %myri10ge_unmap_rx_page.exit
  call void @__sanitizer_cov_trace_pc() #26
  %sub.i.i = add i32 %72, -1
  br label %_compound_head.exit.i

if.end.i.i397:                                    ; preds = %myri10ge_unmap_rx_page.exit
  call void @__sanitizer_cov_trace_pc() #26
  %73 = ptrtoint ptr %69 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i397, %if.then.i.i396
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i396 ], [ %73, %if.end.i.i397 ]
  %74 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %74, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #24
  %75 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i.i.i.i = icmp eq i32 %76, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !614

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #26
  %77 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %77, ptr noundef nonnull @.str.114) #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #24, !srcloc !626
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #24, !srcloc !627
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #24
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #24, !srcloc !628
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %78, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #24, !srcloc !629
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@myri10ge_allocate_rings, %if.then.i.i.i.i.i)) #24
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !623

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %74, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #24
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @__put_page(ptr noundef %74) #24
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nsw i32 %i.0488, 1
  %79 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fill_cnt, align 4
  %cmp113 = icmp slt i32 %inc, %80
  br i1 %cmp113, label %put_page.exit.for.body_crit_edge, label %put_page.exit.abort_with_rx_small_ring_crit_edge

put_page.exit.abort_with_rx_small_ring_crit_edge: ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %abort_with_rx_small_ring

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

abort_with_rx_small_ring:                         ; preds = %put_page.exit.abort_with_rx_small_ring_crit_edge, %if.then105.abort_with_rx_small_ring_crit_edge, %if.then94
  %81 = ptrtoint ptr %small_bytes to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %small_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp124 = icmp eq i32 %82, 0
  br i1 %cmp124, label %if.then125, label %abort_with_rx_small_ring.if.end130_crit_edge

abort_with_rx_small_ring.if.end130_crit_edge:     ; preds = %abort_with_rx_small_ring
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end130

if.then125:                                       ; preds = %abort_with_rx_small_ring
  call void @__sanitizer_cov_trace_pc() #26
  %83 = ptrtoint ptr %cnt67 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cnt67, align 8
  %85 = ptrtoint ptr %fill_cnt70 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %fill_cnt70, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then125, %abort_with_rx_small_ring.if.end130_crit_edge
  %86 = ptrtoint ptr %cnt67 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cnt67, align 8
  %88 = ptrtoint ptr %fill_cnt70 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %fill_cnt70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp136489 = icmp slt i32 %87, %89
  br i1 %cmp136489, label %for.body137.lr.ph, label %if.end130.for.end154_crit_edge

if.end130.for.end154_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end154

for.body137.lr.ph:                                ; preds = %if.end130
  %pdev142 = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 16
  br label %for.body137

for.body137:                                      ; preds = %put_page.exit428.for.body137_crit_edge, %for.body137.lr.ph
  %i.1490 = phi i32 [ %87, %for.body137.lr.ph ], [ %inc153, %put_page.exit428.for.body137_crit_edge ]
  %90 = ptrtoint ptr %mask11 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mask11, align 4
  %and141 = and i32 %91, %i.1490
  %92 = ptrtoint ptr %pdev142 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdev142, align 4
  %94 = ptrtoint ptr %info50469 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %info50469, align 8
  %96 = ptrtoint ptr %small_bytes to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %small_bytes, align 4
  %add147 = add i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %add147)
  %cmp.i398 = icmp ugt i32 %add147, 2047
  br i1 %cmp.i398, label %for.body137.if.then.i407_crit_edge, label %lor.lhs.false.i403

for.body137.if.then.i407_crit_edge:               ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then.i407

lor.lhs.false.i403:                               ; preds = %for.body137
  %page_offset.i399 = getelementptr %struct.myri10ge_rx_buffer_state, ptr %95, i32 %and141, i32 1
  %98 = ptrtoint ptr %page_offset.i399 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %page_offset.i399, align 4
  %mul.i400 = shl nuw nsw i32 %add147, 1
  %add.i401 = add i32 %99, %mul.i400
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i401)
  %cmp1.i402 = icmp ugt i32 %add.i401, 4096
  br i1 %cmp1.i402, label %lor.lhs.false.i403.if.then.i407_crit_edge, label %lor.lhs.false.i403.myri10ge_unmap_rx_page.exit408_crit_edge

lor.lhs.false.i403.myri10ge_unmap_rx_page.exit408_crit_edge: ; preds = %lor.lhs.false.i403
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_unmap_rx_page.exit408

lor.lhs.false.i403.if.then.i407_crit_edge:        ; preds = %lor.lhs.false.i403
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then.i407

if.then.i407:                                     ; preds = %lor.lhs.false.i403.if.then.i407_crit_edge, %for.body137.if.then.i407_crit_edge
  %dev.i404 = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  %bus.i405 = getelementptr %struct.myri10ge_rx_buffer_state, ptr %95, i32 %and141, i32 2
  %100 = ptrtoint ptr %bus.i405 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bus.i405, align 4
  %and.i406 = and i32 %101, -4096
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i404, i32 noundef %and.i406, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #24
  br label %myri10ge_unmap_rx_page.exit408

myri10ge_unmap_rx_page.exit408:                   ; preds = %if.then.i407, %lor.lhs.false.i403.myri10ge_unmap_rx_page.exit408_crit_edge
  %102 = ptrtoint ptr %info50469 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %info50469, align 8
  %arrayidx150 = getelementptr %struct.myri10ge_rx_buffer_state, ptr %103, i32 %and141
  %104 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx150, align 4
  %106 = getelementptr inbounds %struct.page, ptr %105, i32 0, i32 1
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %106, align 4
  %and.i.i409 = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i409)
  %tobool.not.i.i410 = icmp eq i32 %and.i.i409, 0
  br i1 %tobool.not.i.i410, label %if.end.i.i413, label %if.then.i.i412, !prof !625

if.then.i.i412:                                   ; preds = %myri10ge_unmap_rx_page.exit408
  call void @__sanitizer_cov_trace_pc() #26
  %sub.i.i411 = add i32 %108, -1
  br label %_compound_head.exit.i418

if.end.i.i413:                                    ; preds = %myri10ge_unmap_rx_page.exit408
  call void @__sanitizer_cov_trace_pc() #26
  %109 = ptrtoint ptr %105 to i32
  br label %_compound_head.exit.i418

_compound_head.exit.i418:                         ; preds = %if.end.i.i413, %if.then.i.i412
  %retval.0.i.i414 = phi i32 [ %sub.i.i411, %if.then.i.i412 ], [ %109, %if.end.i.i413 ]
  %110 = inttoptr i32 %retval.0.i.i414 to ptr
  %_refcount.i.i.i.i.i415 = getelementptr inbounds %struct.page, ptr %110, i32 0, i32 3
  %call.i.i.i.i.i.i.i416 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i415, i32 noundef 4) #24
  %111 = ptrtoint ptr %_refcount.i.i.i.i.i415 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %_refcount.i.i.i.i.i415, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp.i.i.i.i417 = icmp eq i32 %112, 0
  br i1 %cmp.i.i.i.i417, label %if.then.i.i.i.i419, label %do.end5.i.i.i.i423, !prof !614

if.then.i.i.i.i419:                               ; preds = %_compound_head.exit.i418
  call void @__sanitizer_cov_trace_pc() #26
  %113 = inttoptr i32 %retval.0.i.i414 to ptr
  tail call void @dump_page(ptr noundef %113, ptr noundef nonnull @.str.114) #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #24, !srcloc !626
  unreachable

do.end5.i.i.i.i423:                               ; preds = %_compound_head.exit.i418
  %call.i.i.i10.i.i.i.i420 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i415, i32 noundef 4) #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #24, !srcloc !627
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i415, i32 1, i32 3, i32 1) #24
  %114 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i415, ptr %_refcount.i.i.i.i.i415, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i415) #24, !srcloc !628
  %asmresult.i.i.i.i.i.i.i.i.i.i421 = extractvalue { i32, i32 } %114, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #24, !srcloc !629
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i421)
  %cmp.i.i.i.i.i.i.i422 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i421, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@myri10ge_allocate_rings, %if.then.i.i.i.i.i425)) #24
          to label %folio_put_testzero.exit.i.i426 [label %if.then.i.i.i.i.i425], !srcloc !623

if.then.i.i.i.i.i425:                             ; preds = %do.end5.i.i.i.i423
  call void @__sanitizer_cov_trace_pc() #26
  %conv.i.i.i.i.i424 = zext i1 %cmp.i.i.i.i.i.i.i422 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %110, i32 noundef -1, i32 noundef %conv.i.i.i.i.i424) #24
  br label %folio_put_testzero.exit.i.i426

folio_put_testzero.exit.i.i426:                   ; preds = %if.then.i.i.i.i.i425, %do.end5.i.i.i.i423
  br i1 %cmp.i.i.i.i.i.i.i422, label %if.then.i4.i427, label %folio_put_testzero.exit.i.i426.put_page.exit428_crit_edge

folio_put_testzero.exit.i.i426.put_page.exit428_crit_edge: ; preds = %folio_put_testzero.exit.i.i426
  call void @__sanitizer_cov_trace_pc() #26
  br label %put_page.exit428

if.then.i4.i427:                                  ; preds = %folio_put_testzero.exit.i.i426
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @__put_page(ptr noundef %110) #24
  br label %put_page.exit428

put_page.exit428:                                 ; preds = %if.then.i4.i427, %folio_put_testzero.exit.i.i426.put_page.exit428_crit_edge
  %inc153 = add nsw i32 %i.1490, 1
  %115 = ptrtoint ptr %fill_cnt70 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %fill_cnt70, align 4
  %cmp136 = icmp slt i32 %inc153, %116
  br i1 %cmp136, label %put_page.exit428.for.body137_crit_edge, label %put_page.exit428.for.end154_crit_edge

put_page.exit428.for.end154_crit_edge:            ; preds = %put_page.exit428
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end154

put_page.exit428.for.body137_crit_edge:           ; preds = %put_page.exit428
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body137

for.end154:                                       ; preds = %put_page.exit428.for.end154_crit_edge, %if.end130.for.end154_crit_edge
  %117 = ptrtoint ptr %info59 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %info59, align 4
  tail call void @kfree(ptr noundef %118) #24
  br label %abort_with_rx_small_info

abort_with_rx_small_info:                         ; preds = %for.end154, %if.end8.i.i393.abort_with_rx_small_info_crit_edge
  %119 = ptrtoint ptr %info50469 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %info50469, align 8
  tail call void @kfree(ptr noundef %120) #24
  br label %abort_with_tx_info

abort_with_tx_info:                               ; preds = %abort_with_rx_small_info, %if.end46.abort_with_tx_info_crit_edge
  %121 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %info, align 4
  tail call void @kfree(ptr noundef %122) #24
  br label %abort_with_rx_big_shadow

abort_with_rx_big_shadow:                         ; preds = %abort_with_tx_info, %if.end8.i.i335.abort_with_rx_big_shadow_crit_edge
  %123 = ptrtoint ptr %shadow33 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %shadow33, align 4
  tail call void @kfree(ptr noundef %124) #24
  br label %abort_with_rx_small_shadow

abort_with_rx_small_shadow:                       ; preds = %abort_with_rx_big_shadow, %if.end8.i.i306.abort_with_rx_small_shadow_crit_edge
  %125 = ptrtoint ptr %shadow438 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %shadow438, align 4
  tail call void @kfree(ptr noundef %126) #24
  br label %abort_with_tx_req_bytes

abort_with_tx_req_bytes:                          ; preds = %abort_with_rx_small_shadow, %if.end18.abort_with_tx_req_bytes_crit_edge
  %127 = ptrtoint ptr %req_bytes to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %req_bytes, align 16
  tail call void @kfree(ptr noundef %128) #24
  %129 = ptrtoint ptr %req_bytes to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %req_bytes, align 16
  %130 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %req_list, align 4
  br label %cleanup

cleanup:                                          ; preds = %abort_with_tx_req_bytes, %if.end97.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %entry.cleanup_crit_edge ], [ 0, %if.end97.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %abort_with_tx_req_bytes ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #24
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myri10ge_free_rings(ptr noundef %ss) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %mgp1 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 6
  %0 = ptrtoint ptr %mgp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mgp1, align 16
  %req_list = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %ss, i32 0, i32 3
  %2 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req_list, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %cnt = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 2, i32 6
  %4 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt, align 4
  %fill_cnt = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 2, i32 7
  %6 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fill_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp4212 = icmp slt i32 %5, %7
  br i1 %cmp4212, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %mask = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 2, i32 9
  %info = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 2, i32 2
  %pdev = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 16
  %big_bytes = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %for.body.lr.ph
  %8 = phi i32 [ %7, %for.body.lr.ph ], [ %38, %put_page.exit.for.body_crit_edge ]
  %i.0213 = phi i32 [ %5, %for.body.lr.ph ], [ %inc, %put_page.exit.for.body_crit_edge ]
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 4
  %and = and i32 %10, %i.0213
  %sub = add nsw i32 %8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0213, i32 %sub)
  %cmp8 = icmp eq i32 %i.0213, %sub
  br i1 %cmp8, label %if.then9, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end11

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  %page_offset = getelementptr %struct.myri10ge_rx_buffer_state, ptr %12, i32 %and, i32 1
  %13 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4096, ptr %page_offset, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %for.body.if.end11_crit_edge
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %16 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info, align 4
  %18 = ptrtoint ptr %big_bytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %big_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %19)
  %cmp.i = icmp ugt i32 %19, 2047
  br i1 %cmp.i, label %if.end11.if.then.i_crit_edge, label %lor.lhs.false.i

if.end11.if.then.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end11
  %page_offset.i = getelementptr %struct.myri10ge_rx_buffer_state, ptr %17, i32 %and, i32 1
  %20 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page_offset.i, align 4
  %mul.i = shl nuw nsw i32 %19, 1
  %add.i = add i32 %21, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp1.i = icmp ugt i32 %add.i, 4096
  br i1 %cmp1.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.myri10ge_unmap_rx_page.exit_crit_edge

lor.lhs.false.i.myri10ge_unmap_rx_page.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_unmap_rx_page.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end11.if.then.i_crit_edge
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %bus.i = getelementptr %struct.myri10ge_rx_buffer_state, ptr %17, i32 %and, i32 2
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bus.i, align 4
  %and.i = and i32 %23, -4096
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %and.i, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #24
  br label %myri10ge_unmap_rx_page.exit

myri10ge_unmap_rx_page.exit:                      ; preds = %if.then.i, %lor.lhs.false.i.myri10ge_unmap_rx_page.exit_crit_edge
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 4
  %arrayidx17 = getelementptr %struct.myri10ge_rx_buffer_state, ptr %25, i32 %and
  %26 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx17, align 4
  %28 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %and.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !625

if.then.i.i:                                      ; preds = %myri10ge_unmap_rx_page.exit
  call void @__sanitizer_cov_trace_pc() #26
  %sub.i.i = add i32 %30, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %myri10ge_unmap_rx_page.exit
  call void @__sanitizer_cov_trace_pc() #26
  %31 = ptrtoint ptr %27 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %31, %if.end.i.i ]
  %32 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #24
  %33 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !614

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #26
  %35 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.114) #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #24, !srcloc !626
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #24, !srcloc !627
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #24
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #24, !srcloc !628
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #24, !srcloc !629
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@myri10ge_free_rings, %if.then.i.i.i.i.i)) #24
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !623

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #26
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %32, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #24
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @__put_page(ptr noundef %32) #24
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nsw i32 %i.0213, 1
  %37 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fill_cnt, align 4
  %cmp4 = icmp slt i32 %inc, %38
  br i1 %cmp4, label %put_page.exit.for.body_crit_edge, label %put_page.exit.for.end_crit_edge

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %small_bytes = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %small_bytes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %small_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp18 = icmp eq i32 %40, 0
  br i1 %cmp18, label %if.then19, label %for.end.if.end23_crit_edge

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end23

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #26
  %cnt20 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1, i32 6
  %41 = ptrtoint ptr %cnt20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cnt20, align 8
  %fill_cnt22 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1, i32 7
  %43 = ptrtoint ptr %fill_cnt22 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %fill_cnt22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %for.end.if.end23_crit_edge
  %cnt25 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1, i32 6
  %44 = ptrtoint ptr %cnt25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cnt25, align 8
  %fill_cnt28 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1, i32 7
  %46 = ptrtoint ptr %fill_cnt28 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fill_cnt28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp29214 = icmp slt i32 %45, %47
  br i1 %cmp29214, label %for.body30.lr.ph, label %if.end23.while.cond.preheader_crit_edge

if.end23.while.cond.preheader_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.cond.preheader

for.body30.lr.ph:                                 ; preds = %if.end23
  %mask32 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1, i32 9
  %info40 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1, i32 2
  %pdev44 = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 16
  br label %for.body30

while.cond.preheader:                             ; preds = %put_page.exit210.while.cond.preheader_crit_edge, %if.end23.while.cond.preheader_crit_edge
  %done = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %ss, i32 0, i32 13
  %req = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %ss, i32 0, i32 8
  %48 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %done, align 128
  %50 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp57.not216 = icmp eq i32 %49, %51
  br i1 %cmp57.not216, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %mask59 = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %ss, i32 0, i32 6
  %info61 = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %ss, i32 0, i32 5
  %tx_dropped = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 7, i32 5
  %pdev79 = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 16
  br label %while.body

for.body30:                                       ; preds = %put_page.exit210.for.body30_crit_edge, %for.body30.lr.ph
  %52 = phi i32 [ %47, %for.body30.lr.ph ], [ %82, %put_page.exit210.for.body30_crit_edge ]
  %i.1215 = phi i32 [ %45, %for.body30.lr.ph ], [ %inc54, %put_page.exit210.for.body30_crit_edge ]
  %53 = ptrtoint ptr %mask32 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mask32, align 4
  %and33 = and i32 %54, %i.1215
  %sub36 = add nsw i32 %52, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1215, i32 %sub36)
  %cmp37 = icmp eq i32 %i.1215, %sub36
  br i1 %cmp37, label %if.then38, label %for.body30.if.end43_crit_edge

for.body30.if.end43_crit_edge:                    ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end43

if.then38:                                        ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #26
  %55 = ptrtoint ptr %info40 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %info40, align 8
  %page_offset42 = getelementptr %struct.myri10ge_rx_buffer_state, ptr %56, i32 %and33, i32 1
  %57 = ptrtoint ptr %page_offset42 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4096, ptr %page_offset42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %for.body30.if.end43_crit_edge
  %58 = ptrtoint ptr %pdev44 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev44, align 4
  %60 = ptrtoint ptr %info40 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %info40, align 8
  %62 = ptrtoint ptr %small_bytes to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %small_bytes, align 4
  %add = add i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %add)
  %cmp.i180 = icmp ugt i32 %add, 2047
  br i1 %cmp.i180, label %if.end43.if.then.i189_crit_edge, label %lor.lhs.false.i185

if.end43.if.then.i189_crit_edge:                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then.i189

lor.lhs.false.i185:                               ; preds = %if.end43
  %page_offset.i181 = getelementptr %struct.myri10ge_rx_buffer_state, ptr %61, i32 %and33, i32 1
  %64 = ptrtoint ptr %page_offset.i181 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %page_offset.i181, align 4
  %mul.i182 = shl nuw nsw i32 %add, 1
  %add.i183 = add i32 %65, %mul.i182
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i183)
  %cmp1.i184 = icmp ugt i32 %add.i183, 4096
  br i1 %cmp1.i184, label %lor.lhs.false.i185.if.then.i189_crit_edge, label %lor.lhs.false.i185.myri10ge_unmap_rx_page.exit190_crit_edge

lor.lhs.false.i185.myri10ge_unmap_rx_page.exit190_crit_edge: ; preds = %lor.lhs.false.i185
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_unmap_rx_page.exit190

lor.lhs.false.i185.if.then.i189_crit_edge:        ; preds = %lor.lhs.false.i185
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then.i189

if.then.i189:                                     ; preds = %lor.lhs.false.i185.if.then.i189_crit_edge, %if.end43.if.then.i189_crit_edge
  %dev.i186 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %bus.i187 = getelementptr %struct.myri10ge_rx_buffer_state, ptr %61, i32 %and33, i32 2
  %66 = ptrtoint ptr %bus.i187 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bus.i187, align 4
  %and.i188 = and i32 %67, -4096
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i186, i32 noundef %and.i188, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #24
  br label %myri10ge_unmap_rx_page.exit190

myri10ge_unmap_rx_page.exit190:                   ; preds = %if.then.i189, %lor.lhs.false.i185.myri10ge_unmap_rx_page.exit190_crit_edge
  %68 = ptrtoint ptr %info40 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %info40, align 8
  %arrayidx51 = getelementptr %struct.myri10ge_rx_buffer_state, ptr %69, i32 %and33
  %70 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx51, align 4
  %72 = getelementptr inbounds %struct.page, ptr %71, i32 0, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  %and.i.i191 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i191)
  %tobool.not.i.i192 = icmp eq i32 %and.i.i191, 0
  br i1 %tobool.not.i.i192, label %if.end.i.i195, label %if.then.i.i194, !prof !625

if.then.i.i194:                                   ; preds = %myri10ge_unmap_rx_page.exit190
  call void @__sanitizer_cov_trace_pc() #26
  %sub.i.i193 = add i32 %74, -1
  br label %_compound_head.exit.i200

if.end.i.i195:                                    ; preds = %myri10ge_unmap_rx_page.exit190
  call void @__sanitizer_cov_trace_pc() #26
  %75 = ptrtoint ptr %71 to i32
  br label %_compound_head.exit.i200

_compound_head.exit.i200:                         ; preds = %if.end.i.i195, %if.then.i.i194
  %retval.0.i.i196 = phi i32 [ %sub.i.i193, %if.then.i.i194 ], [ %75, %if.end.i.i195 ]
  %76 = inttoptr i32 %retval.0.i.i196 to ptr
  %_refcount.i.i.i.i.i197 = getelementptr inbounds %struct.page, ptr %76, i32 0, i32 3
  %call.i.i.i.i.i.i.i198 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i197, i32 noundef 4) #24
  %77 = ptrtoint ptr %_refcount.i.i.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %_refcount.i.i.i.i.i197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i.i.i.i199 = icmp eq i32 %78, 0
  br i1 %cmp.i.i.i.i199, label %if.then.i.i.i.i201, label %do.end5.i.i.i.i205, !prof !614

if.then.i.i.i.i201:                               ; preds = %_compound_head.exit.i200
  call void @__sanitizer_cov_trace_pc() #26
  %79 = inttoptr i32 %retval.0.i.i196 to ptr
  tail call void @dump_page(ptr noundef %79, ptr noundef nonnull @.str.114) #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #24, !srcloc !626
  unreachable

do.end5.i.i.i.i205:                               ; preds = %_compound_head.exit.i200
  %call.i.i.i10.i.i.i.i202 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i197, i32 noundef 4) #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #24, !srcloc !627
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i197, i32 1, i32 3, i32 1) #24
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i197, ptr %_refcount.i.i.i.i.i197, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i197) #24, !srcloc !628
  %asmresult.i.i.i.i.i.i.i.i.i.i203 = extractvalue { i32, i32 } %80, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #24, !srcloc !629
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i203)
  %cmp.i.i.i.i.i.i.i204 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i203, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@myri10ge_free_rings, %if.then.i.i.i.i.i207)) #24
          to label %folio_put_testzero.exit.i.i208 [label %if.then.i.i.i.i.i207], !srcloc !623

if.then.i.i.i.i.i207:                             ; preds = %do.end5.i.i.i.i205
  call void @__sanitizer_cov_trace_pc() #26
  %conv.i.i.i.i.i206 = zext i1 %cmp.i.i.i.i.i.i.i204 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %76, i32 noundef -1, i32 noundef %conv.i.i.i.i.i206) #24
  br label %folio_put_testzero.exit.i.i208

folio_put_testzero.exit.i.i208:                   ; preds = %if.then.i.i.i.i.i207, %do.end5.i.i.i.i205
  br i1 %cmp.i.i.i.i.i.i.i204, label %if.then.i4.i209, label %folio_put_testzero.exit.i.i208.put_page.exit210_crit_edge

folio_put_testzero.exit.i.i208.put_page.exit210_crit_edge: ; preds = %folio_put_testzero.exit.i.i208
  call void @__sanitizer_cov_trace_pc() #26
  br label %put_page.exit210

if.then.i4.i209:                                  ; preds = %folio_put_testzero.exit.i.i208
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @__put_page(ptr noundef %76) #24
  br label %put_page.exit210

put_page.exit210:                                 ; preds = %if.then.i4.i209, %folio_put_testzero.exit.i.i208.put_page.exit210_crit_edge
  %inc54 = add nsw i32 %i.1215, 1
  %81 = ptrtoint ptr %fill_cnt28 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fill_cnt28, align 4
  %cmp29 = icmp slt i32 %inc54, %82
  br i1 %cmp29, label %put_page.exit210.for.body30_crit_edge, label %put_page.exit210.while.cond.preheader_crit_edge

put_page.exit210.while.cond.preheader_crit_edge:  ; preds = %put_page.exit210
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.cond.preheader

put_page.exit210.for.body30_crit_edge:            ; preds = %put_page.exit210
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body30

while.body:                                       ; preds = %if.end91.while.body_crit_edge, %while.body.lr.ph
  %83 = phi i32 [ %49, %while.body.lr.ph ], [ %104, %if.end91.while.body_crit_edge ]
  %84 = ptrtoint ptr %mask59 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mask59, align 8
  %and60 = and i32 %85, %83
  %86 = ptrtoint ptr %info61 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %info61, align 4
  %arrayidx62 = getelementptr %struct.myri10ge_tx_buffer_state, ptr %87, i32 %and60
  %88 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx62, align 4
  store ptr null, ptr %arrayidx62, align 4
  %90 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %done, align 128
  %inc68 = add i32 %91, 1
  store i32 %inc68, ptr %done, align 128
  %92 = load ptr, ptr %info61, align 4
  %len71 = getelementptr %struct.myri10ge_tx_buffer_state, ptr %92, i32 %and60, i32 3
  %93 = ptrtoint ptr %len71 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len71, align 4
  store i32 0, ptr %len71, align 4
  %tobool.not = icmp eq ptr %89, null
  br i1 %tobool.not, label %if.else, label %if.then75

if.then75:                                        ; preds = %while.body
  %95 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tx_dropped, align 4
  %inc76 = add i32 %96, 1
  store i32 %inc76, ptr %tx_dropped, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %89, i32 noundef 1) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool77.not = icmp eq i32 %94, 0
  br i1 %tobool77.not, label %if.then75.if.end91_crit_edge, label %if.then75.if.end91.sink.split_crit_edge

if.then75.if.end91.sink.split_crit_edge:          ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end91.sink.split

if.then75.if.end91_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end91

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool83.not = icmp eq i32 %94, 0
  br i1 %tobool83.not, label %if.else.if.end91_crit_edge, label %if.else.if.end91.sink.split_crit_edge

if.else.if.end91.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end91.sink.split

if.else.if.end91_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end91

if.end91.sink.split:                              ; preds = %if.else.if.end91.sink.split_crit_edge, %if.then75.if.end91.sink.split_crit_edge
  %97 = ptrtoint ptr %pdev79 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pdev79, align 4
  %dev86 = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  %99 = ptrtoint ptr %info61 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %info61, align 4
  %bus89 = getelementptr %struct.myri10ge_tx_buffer_state, ptr %100, i32 %and60, i32 2
  %101 = ptrtoint ptr %bus89 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bus89, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev86, i32 noundef %102, i32 noundef %94, i32 noundef 1, i32 noundef 0) #24
  br label %if.end91

if.end91:                                         ; preds = %if.end91.sink.split, %if.else.if.end91_crit_edge, %if.then75.if.end91_crit_edge
  %103 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %done, align 128
  %105 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %req, align 128
  %cmp57.not = icmp eq i32 %104, %106
  br i1 %cmp57.not, label %if.end91.while.end_crit_edge, label %if.end91.while.body_crit_edge

if.end91.while.body_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.body

if.end91.while.end_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.end

while.end:                                        ; preds = %if.end91.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %info93 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 2, i32 2
  %107 = ptrtoint ptr %info93 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %info93, align 4
  tail call void @kfree(ptr noundef %108) #24
  %info95 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1, i32 2
  %109 = ptrtoint ptr %info95 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %info95, align 8
  tail call void @kfree(ptr noundef %110) #24
  %info97 = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %ss, i32 0, i32 5
  %111 = ptrtoint ptr %info97 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %info97, align 4
  tail call void @kfree(ptr noundef %112) #24
  %shadow = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 2, i32 1
  %113 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %shadow, align 4
  tail call void @kfree(ptr noundef %114) #24
  %shadow100 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 1, i32 1
  %115 = ptrtoint ptr %shadow100 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %shadow100, align 4
  tail call void @kfree(ptr noundef %116) #24
  %req_bytes = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %ss, i32 0, i32 4
  %117 = ptrtoint ptr %req_bytes to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %req_bytes, align 16
  tail call void @kfree(ptr noundef %118) #24
  %119 = ptrtoint ptr %req_bytes to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %req_bytes, align 16
  %120 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %req_list, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #24
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myri10ge_sw_tso(ptr noundef %skb, ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features, align 16
  %and = and i64 %1, -1048577
  %call.i = tail call ptr @__skb_gso_segment(ptr noundef %skb, i64 noundef %and, i1 noundef zeroext true) #24
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.drop_crit_edge, label %if.end

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %drop

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %next.05.sink = phi ptr [ %3, %for.inc.for.body_crit_edge ], [ %call.i, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %next.05.sink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next.05.sink, align 8
  store ptr null, ptr %next.05.sink, align 8
  %call5 = tail call i32 @myri10ge_xmit(ptr noundef nonnull %next.05.sink, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %for.inc, label %if.then8

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %next.05.sink, i32 noundef 1) #24
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %call.i, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %3, i32 noundef 1) #24
  br label %drop

for.inc:                                          ; preds = %for.body
  %tobool12.not = icmp eq ptr %3, null
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #24
  br label %cleanup

drop:                                             ; preds = %if.then8, %entry.drop_crit_edge
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %7 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %queue_mapping.i, align 8
  %idxprom = zext i16 %8 to i32
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #24
  %tx_dropped = getelementptr %struct.myri10ge_slice_state, ptr %6, i32 %idxprom, i32 7, i32 5
  %9 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_dropped, align 4
  %add = add i32 %10, 1
  store i32 %add, ptr %tx_dropped, align 4
  br label %cleanup

cleanup:                                          ; preds = %drop, %for.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myri10ge_unmap_tx_dma(ptr nocapture noundef readonly %mgp, ptr nocapture noundef readonly %tx, i32 noundef %idx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %idx, 1
  %mask = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %tx, i32 0, i32 6
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 8
  %and = and i32 %1, %add
  %req = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %tx, i32 0, i32 8
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 128
  %and2 = and i32 %3, %1
  %info = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %tx, i32 0, i32 5
  %pdev = getelementptr inbounds %struct.myri10ge_priv, ptr %mgp, i32 0, i32 16
  br label %do.body

do.body:                                          ; preds = %if.end20.do.body_crit_edge, %entry
  %idx.addr.0 = phi i32 [ %and2, %entry ], [ %and23, %if.end20.do.body_crit_edge ]
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %len3 = getelementptr %struct.myri10ge_tx_buffer_state, ptr %5, i32 %idx.addr.0, i32 3
  %6 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.if.end20_crit_edge, label %if.then

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end20

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #26
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %bus13 = getelementptr %struct.myri10ge_tx_buffer_state, ptr %5, i32 %idx.addr.0, i32 2
  %10 = ptrtoint ptr %bus13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bus13, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev10, i32 noundef %11, i32 noundef %7, i32 noundef 1, i32 noundef 0) #24
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  %len16 = getelementptr %struct.myri10ge_tx_buffer_state, ptr %13, i32 %idx.addr.0, i32 3
  %14 = ptrtoint ptr %len16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %len16, align 4
  %15 = load ptr, ptr %info, align 4
  %arrayidx18 = getelementptr %struct.myri10ge_tx_buffer_state, ptr %15, i32 %idx.addr.0
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx18, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then, %do.body.if.end20_crit_edge
  %add21 = add i32 %idx.addr.0, 1
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask, align 8
  %and23 = and i32 %18, %add21
  %cmp24.not = icmp eq i32 %and23, %and
  br i1 %cmp24.not, label %do.end, label %if.end20.do.body_crit_edge

if.end20.do.body_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.body

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myri10ge_intr(i32 noundef %irq, ptr noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %mgp1 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %arg, i32 0, i32 6
  %0 = ptrtoint ptr %mgp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mgp1, align 16
  %fw_stats = getelementptr inbounds %struct.myri10ge_slice_state, ptr %arg, i32 0, i32 9
  %2 = ptrtoint ptr %fw_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_stats, align 16
  %dev = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 105
  %6 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %real_num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %cmp4.not = icmp eq ptr %9, %arg
  br i1 %cmp4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %napi = getelementptr inbounds %struct.myri10ge_slice_state, ptr %arg, i32 0, i32 5
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #24
  br i1 %call.i, label %if.then.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @__napi_schedule(ptr noundef %napi) #24
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %valid = getelementptr inbounds %struct.mcp_irq_data, ptr %3, i32 0, i32 18
  %10 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9, !prof !614

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not = icmp eq i8 %12, 0
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %if.then12

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  %napi13 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %arg, i32 0, i32 5
  %call.i97 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi13) #24
  br i1 %call.i97, label %if.then.i98, label %if.then12.if.end14_crit_edge

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end14

if.then.i98:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #26
  tail call void @__napi_schedule(ptr noundef %napi13) #24
  br label %if.end14

if.end14:                                         ; preds = %if.then.i98, %if.then12.if.end14_crit_edge, %if.end9.if.end14_crit_edge
  %msi_enabled = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msi_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %if.end14.if.else_crit_edge

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.else

land.lhs.true16:                                  ; preds = %if.end14
  %msix_enabled = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 18
  %15 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msix_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool17.not = icmp eq i32 %16, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true16.if.else_crit_edge

land.lhs.true16.if.else_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.else

if.then18:                                        ; preds = %land.lhs.true16
  %irq_deassert = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %irq_deassert to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irq_deassert, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #24, !srcloc !622
  %19 = load i32, ptr @myri10ge_deassert_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool19.not = icmp eq i32 %19, 0
  br i1 %tobool19.not, label %if.then20, label %if.then18.do.body_crit_edge

if.then18.do.body_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.body

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #26
  %20 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %valid, align 1
  br label %do.body

do.body:                                          ; preds = %if.then20, %if.then18.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !648
  tail call void @arm_heavy_mb() #24
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true16.if.else_crit_edge, %if.end14.if.else_crit_edge
  %21 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %valid, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.else, %do.body
  %send_done_count25 = getelementptr inbounds %struct.mcp_irq_data, ptr %3, i32 0, i32 6
  %pkt_done = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arg, i32 0, i32 14
  %done.i = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arg, i32 0, i32 13
  %mask.i = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arg, i32 0, i32 6
  %info.i = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arg, i32 0, i32 5
  %tx_bytes.i = getelementptr inbounds %struct.myri10ge_slice_state, ptr %arg, i32 0, i32 7, i32 3
  %tx_packets.i = getelementptr inbounds %struct.myri10ge_slice_state, ptr %arg, i32 0, i32 7, i32 1
  %dev39.i = getelementptr inbounds %struct.myri10ge_slice_state, ptr %arg, i32 0, i32 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arg to i32
  %req.i = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arg, i32 0, i32 8
  %queue_active.i = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arg, i32 0, i32 16
  %send_stop.i = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arg, i32 0, i32 2
  %wake_queue.i = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arg, i32 0, i32 15
  %watchdog_work = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 27
  br label %while.cond

while.cond:                                       ; preds = %do.end58, %if.end24
  %i.0 = phi i32 [ 0, %if.end24 ], [ %inc, %do.end58 ]
  %inc = add i32 %i.0, 1
  %22 = ptrtoint ptr %send_done_count25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %send_done_count25, align 4
  %24 = ptrtoint ptr %pkt_done to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pkt_done, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp26.not = icmp eq i32 %23, %25
  br i1 %cmp26.not, label %while.cond.if.end29_crit_edge, label %while.body.lr.ph.i

while.cond.if.end29_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end29

while.body.lr.ph.i:                               ; preds = %while.cond
  %26 = ptrtoint ptr %mgp1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mgp1, align 16
  %pdev1.i = getelementptr inbounds %struct.myri10ge_priv, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev1.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  br label %while.body.i

while.body.i:                                     ; preds = %if.end38.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %30 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %done.i, align 128
  %32 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mask.i, align 8
  %and.i = and i32 %33, %31
  %34 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %info.i, align 4
  %arrayidx.i = getelementptr %struct.myri10ge_tx_buffer_state, ptr %35, i32 %and.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  store ptr null, ptr %arrayidx.i, align 4
  %38 = load ptr, ptr %info.i, align 4
  %last.i = getelementptr %struct.myri10ge_tx_buffer_state, ptr %38, i32 %and.i, i32 1
  %39 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %last.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then.i100

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end.i

if.then.i100:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #26
  %41 = ptrtoint ptr %pkt_done to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pkt_done, align 4
  %inc.i = add i32 %42, 1
  store i32 %inc.i, ptr %pkt_done, align 4
  %43 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %last.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i100, %while.body.i.if.end.i_crit_edge
  %44 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %done.i, align 128
  %inc14.i = add i32 %45, 1
  store i32 %inc14.i, ptr %done.i, align 128
  %46 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %info.i, align 4
  %len17.i = getelementptr %struct.myri10ge_tx_buffer_state, ptr %47, i32 %and.i, i32 3
  %48 = ptrtoint ptr %len17.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len17.i, align 4
  store i32 0, ptr %len17.i, align 4
  %tobool21.not.i = icmp eq ptr %37, null
  br i1 %tobool21.not.i, label %if.else.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end.i
  %len23.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 6
  %50 = ptrtoint ptr %len23.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len23.i, align 4
  %52 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %53, %51
  store i32 %add.i, ptr %tx_bytes.i, align 4
  %54 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_packets.i, align 4
  %inc25.i = add i32 %55, 1
  store i32 %inc25.i, ptr %tx_packets.i, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %37, i32 noundef 0) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool26.not.i = icmp eq i32 %49, 0
  br i1 %tobool26.not.i, label %if.then22.i.if.end38.i_crit_edge, label %if.then22.i.if.end38.sink.split.i_crit_edge

if.then22.i.if.end38.sink.split.i_crit_edge:      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end38.sink.split.i

if.then22.i.if.end38.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end38.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool31.not.i = icmp eq i32 %49, 0
  br i1 %tobool31.not.i, label %if.else.i.if.end38.i_crit_edge, label %if.else.i.if.end38.sink.split.i_crit_edge

if.else.i.if.end38.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end38.sink.split.i

if.else.i.if.end38.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end38.i

if.end38.sink.split.i:                            ; preds = %if.else.i.if.end38.sink.split.i_crit_edge, %if.then22.i.if.end38.sink.split.i_crit_edge
  %56 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %info.i, align 4
  %bus36.i = getelementptr %struct.myri10ge_tx_buffer_state, ptr %57, i32 %and.i, i32 2
  %58 = ptrtoint ptr %bus36.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bus36.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %59, i32 noundef %49, i32 noundef 1, i32 noundef 0) #24
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end38.sink.split.i, %if.else.i.if.end38.i_crit_edge, %if.then22.i.if.end38.i_crit_edge
  %60 = ptrtoint ptr %pkt_done to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pkt_done, align 4
  %cmp.not.i = icmp eq i32 %61, %23
  br i1 %cmp.not.i, label %while.end.i, label %if.end38.i.while.body.i_crit_edge

if.end38.i.while.body.i_crit_edge:                ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %while.body.i

while.end.i:                                      ; preds = %if.end38.i
  %62 = ptrtoint ptr %dev39.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev39.i, align 8
  %64 = ptrtoint ptr %mgp1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mgp1, align 16
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %67 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 896
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 103
  %68 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %69, i32 %sub.ptr.div.i
  %dev43.i = getelementptr inbounds %struct.myri10ge_priv, ptr %65, i32 0, i32 7
  %70 = ptrtoint ptr %dev43.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev43.i, align 4
  %real_num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %71, i32 0, i32 105
  %72 = ptrtoint ptr %real_num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %real_num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp44.i = icmp ugt i32 %73, 1
  br i1 %cmp44.i, label %land.lhs.true.i, label %while.end.i.if.end51.i_crit_edge

while.end.i.if.end51.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end51.i

land.lhs.true.i:                                  ; preds = %while.end.i
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %69, i32 %sub.ptr.div.i, i32 10
  %call.i.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %_xmit_lock.i.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.i.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.if.end51.i_crit_edge, label %if.then46.i, !prof !614

land.lhs.true.i.if.end51.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end51.i

if.then46.i:                                      ; preds = %land.lhs.true.i
  %74 = tail call i32 @llvm.read_register.i32(metadata !599) #24
  %and.i.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cpu.i.i, align 4
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %69, i32 %sub.ptr.div.i, i32 11
  %78 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 %77, ptr %xmit_lock_owner.i.i, align 4
  %79 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %req.i, align 128
  %81 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %done.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp48.i = icmp eq i32 %80, %82
  br i1 %cmp48.i, label %if.then49.i, label %if.then46.i.if.end50.i_crit_edge

if.then46.i.if.end50.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end50.i

if.then49.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #26
  %83 = ptrtoint ptr %queue_active.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %queue_active.i, align 4
  %84 = ptrtoint ptr %send_stop.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %send_stop.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 1) #24, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !649
  tail call void @arm_heavy_mb() #24
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then49.i, %if.then46.i.if.end50.i_crit_edge
  %86 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #24
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.end50.i, %land.lhs.true.i.if.end51.i_crit_edge, %while.end.i.if.end51.i_crit_edge
  %state.i.i = getelementptr %struct.netdev_queue, ptr %69, i32 %sub.ptr.div.i, i32 13
  %87 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i111.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i111.not.i, label %if.end51.i.if.end29_crit_edge, label %land.lhs.true53.i

if.end51.i.if.end29_crit_edge:                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end29

land.lhs.true53.i:                                ; preds = %if.end51.i
  %89 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %req.i, align 128
  %91 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %done.i, align 128
  %sub.i = sub i32 %90, %92
  %93 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mask.i, align 8
  %shr.i = ashr i32 %94, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %shr.i)
  %cmp57.i = icmp slt i32 %sub.i, %shr.i
  br i1 %cmp57.i, label %land.lhs.true58.i, label %land.lhs.true53.i.if.end29_crit_edge

land.lhs.true53.i.if.end29_crit_edge:             ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end29

land.lhs.true58.i:                                ; preds = %land.lhs.true53.i
  %95 = ptrtoint ptr %mgp1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mgp1, align 16
  %running.i = getelementptr inbounds %struct.myri10ge_priv, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %98)
  %cmp60.i = icmp eq i32 %98, 3
  br i1 %cmp60.i, label %if.then61.i, label %land.lhs.true58.i.if.end29_crit_edge

land.lhs.true58.i.if.end29_crit_edge:             ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end29

if.then61.i:                                      ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #26
  %99 = ptrtoint ptr %wake_queue.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %wake_queue.i, align 8
  %inc62.i = add i32 %100, 1
  store i32 %inc62.i, ptr %wake_queue.i, align 8
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #24
  br label %if.end29

if.end29:                                         ; preds = %if.then61.i, %land.lhs.true58.i.if.end29_crit_edge, %land.lhs.true53.i.if.end29_crit_edge, %if.end51.i.if.end29_crit_edge, %while.cond.if.end29_crit_edge
  %101 = load i32, ptr @myri10ge_max_irq_loops, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %101)
  %cmp30 = icmp sgt i32 %inc, %101
  br i1 %cmp30, label %if.then38, label %if.end29.if.end41_crit_edge, !prof !614

if.end29.if.end41_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end41

if.then38:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #26
  %102 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %103, ptr noundef nonnull @.str.221) #27
  %104 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %valid, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %105 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %105, ptr noundef %watchdog_work) #24
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end29.if.end41_crit_edge
  %106 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %valid, align 1
  %cmp44 = icmp eq i8 %107, 0
  br i1 %cmp44, label %while.end, label %do.end58, !prof !625

do.end58:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #24, !srcloc !650
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #24, !srcloc !651
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !652
  br label %while.cond

while.end:                                        ; preds = %if.end41
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  %cmp64 = icmp eq ptr %109, %arg
  br i1 %cmp64, label %if.then66, label %while.end.if.end67_crit_edge

while.end.if.end67_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end67

if.then66:                                        ; preds = %while.end
  %110 = ptrtoint ptr %fw_stats to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %fw_stats, align 16
  %stats_updated.i = getelementptr inbounds %struct.mcp_irq_data, ptr %111, i32 0, i32 17
  %112 = ptrtoint ptr %stats_updated.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %stats_updated.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i101 = icmp eq i8 %113, 0
  br i1 %tobool.not.i101, label %if.then66.if.end67_crit_edge, label %if.then.i103, !prof !625

if.then66.if.end67_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end67

if.then.i103:                                     ; preds = %if.then66
  %link_up3.i = getelementptr inbounds %struct.mcp_irq_data, ptr %111, i32 0, i32 7
  %114 = ptrtoint ptr %link_up3.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %link_up3.i, align 4
  %link_state.i = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 20
  %116 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %link_state.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %115)
  %cmp.not.i102 = icmp eq i32 %117, %115
  br i1 %cmp.not.i102, label %if.then.i103.if.end26.i_crit_edge, label %if.then4.i

if.then.i103.if.end26.i_crit_edge:                ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end26.i

if.then4.i:                                       ; preds = %if.then.i103
  %118 = ptrtoint ptr %link_state.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %115, ptr %link_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %115)
  %cmp7.i = icmp eq i32 %115, 1
  %msg_enable.i = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 51
  %119 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %msg_enable.i, align 4
  %and.i104 = and i32 %120, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %tobool9.not.i = icmp eq i32 %and.i104, 0
  br i1 %cmp7.i, label %do.body.i, label %do.body12.i

do.body.i:                                        ; preds = %if.then4.i
  br i1 %tobool9.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then10.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end.i

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #26
  %121 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %122, ptr noundef nonnull @.str.222) #27
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %do.body.i.do.end.i_crit_edge
  %123 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev, align 4
  tail call void @netif_carrier_on(ptr noundef %124) #24
  br label %if.end26.sink.split.i

do.body12.i:                                      ; preds = %if.then4.i
  br i1 %tobool9.not.i, label %do.body12.i.do.end21.i_crit_edge, label %if.then16.i

do.body12.i.do.end21.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end21.i

if.then16.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #26
  %125 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %115)
  %cmp18.i = icmp eq i32 %115, 2
  %cond.i = select i1 %cmp18.i, ptr @.str.224, ptr @.str.225
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %126, ptr noundef nonnull @.str.223, ptr noundef nonnull %cond.i) #27
  br label %do.end21.i

do.end21.i:                                       ; preds = %if.then16.i, %do.body12.i.do.end21.i_crit_edge
  %127 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev, align 4
  tail call void @netif_carrier_off(ptr noundef %128) #24
  br label %if.end26.sink.split.i

if.end26.sink.split.i:                            ; preds = %do.end21.i, %do.end.i
  %link_changes23.i = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 50
  %129 = ptrtoint ptr %link_changes23.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %link_changes23.i, align 4
  %inc.i106 = add i32 %130, 1
  store i32 %inc.i106, ptr %link_changes23.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end26.sink.split.i, %if.then.i103.if.end26.i_crit_edge
  %rdma_tags_available.i = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 21
  %131 = ptrtoint ptr %rdma_tags_available.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rdma_tags_available.i, align 4
  %rdma_tags_available27.i = getelementptr inbounds %struct.mcp_irq_data, ptr %111, i32 0, i32 14
  %133 = ptrtoint ptr %rdma_tags_available27.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rdma_tags_available27.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %134)
  %cmp28.not.i = icmp eq i32 %132, %134
  br i1 %cmp28.not.i, label %if.end26.i.if.end34.i_crit_edge, label %if.then29.i

if.end26.i.if.end34.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end34.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #26
  %135 = ptrtoint ptr %rdma_tags_available.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %rdma_tags_available.i, align 4
  %136 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %137, ptr noundef nonnull @.str.226, i32 noundef %134) #27
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then29.i, %if.end26.i.if.end34.i_crit_edge
  %link_down.i = getelementptr inbounds %struct.mcp_irq_data, ptr %111, i32 0, i32 16
  %138 = ptrtoint ptr %link_down.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %link_down.i, align 1
  %conv.i = zext i8 %139 to i32
  %down_cnt.i = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 25
  %140 = ptrtoint ptr %down_cnt.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %down_cnt.i, align 4
  %add.i107 = add i32 %141, %conv.i
  store i32 %add.i107, ptr %down_cnt.i, align 4
  %142 = load i8, ptr %link_down.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool36.not.i = icmp eq i8 %142, 0
  br i1 %tobool36.not.i, label %if.end34.i.if.end67_crit_edge, label %if.then37.i

if.end34.i.if.end67_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end67

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #26
  %down_wq.i = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %down_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #24
  br label %if.end67

if.end67:                                         ; preds = %if.then37.i, %if.end34.i.if.end67_crit_edge, %if.then66.if.end67_crit_edge, %while.end.if.end67_crit_edge
  %irq_claim = getelementptr inbounds %struct.myri10ge_slice_state, ptr %arg, i32 0, i32 8
  %143 = ptrtoint ptr %irq_claim to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %irq_claim, align 4
  %add.ptr = getelementptr i32, ptr %144, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 3) #24, !srcloc !622
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.end.cleanup_crit_edge, %if.then.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end67 ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myri10ge_check_slice(ptr noundef %ss, ptr nocapture noundef writeonly %reset_needed, ptr nocapture noundef %busy_slice_cnt, i32 noundef %rx_pause_cnt) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %mgp1 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 6
  %0 = ptrtoint ptr %mgp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mgp1, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %ss to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 896
  %req = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %ss, i32 0, i32 8
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req, align 128
  %done = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %ss, i32 0, i32 13
  %6 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %done, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %entry.if.end23_crit_edge, label %land.lhs.true

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end23

land.lhs.true:                                    ; preds = %entry
  %watchdog_tx_done = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 11
  %8 = ptrtoint ptr %watchdog_tx_done to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %watchdog_tx_done, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp6 = icmp eq i32 %7, %9
  br i1 %cmp6, label %land.lhs.true7, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end23

land.lhs.true7:                                   ; preds = %land.lhs.true
  %watchdog_tx_req = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 12
  %10 = ptrtoint ptr %watchdog_tx_req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %watchdog_tx_req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp9.not = icmp eq i32 %11, %7
  br i1 %cmp9.not, label %land.lhs.true7.if.end23_crit_edge, label %if.then

land.lhs.true7.if.end23_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end23

if.then:                                          ; preds = %land.lhs.true7
  %watchdog_pause = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 30
  %12 = ptrtoint ptr %watchdog_pause to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %watchdog_pause, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %rx_pause_cnt)
  %cmp10.not = icmp eq i32 %13, %rx_pause_cnt
  br i1 %cmp10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then
  %call = tail call i32 @net_ratelimit() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then11.if.end23_crit_edge, label %if.then12

if.then11.if.end23_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end23

if.then12:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #26
  %dev = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.227, i32 noundef %sub.ptr.div) #27
  br label %if.end23

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  %dev13 = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev13, align 4
  %queue_active = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %ss, i32 0, i32 16
  %18 = ptrtoint ptr %queue_active to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %queue_active, align 4
  %pkt_start = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %ss, i32 0, i32 9
  %20 = ptrtoint ptr %pkt_start to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pkt_start, align 4
  %pkt_done = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %ss, i32 0, i32 14
  %22 = ptrtoint ptr %pkt_done to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pkt_done, align 4
  %fw_stats = getelementptr %struct.myri10ge_slice_state, ptr %3, i32 %sub.ptr.div, i32 9
  %24 = ptrtoint ptr %fw_stats to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw_stats, align 16
  %send_done_count = getelementptr inbounds %struct.mcp_irq_data, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %send_done_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %send_done_count, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.228, i32 noundef %sub.ptr.div, i32 noundef %19, i32 noundef %5, i32 noundef %7, i32 noundef %21, i32 noundef %23, i32 noundef %27) #27
  %28 = ptrtoint ptr %reset_needed to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %reset_needed, align 4
  %stuck = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 14
  %29 = ptrtoint ptr %stuck to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %stuck, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then12, %if.then11.if.end23_crit_edge, %land.lhs.true7.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %entry.if.end23_crit_edge
  %watchdog_tx_done24 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 11
  %30 = ptrtoint ptr %watchdog_tx_done24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %watchdog_tx_done24, align 8
  %32 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %done, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp27.not = icmp eq i32 %31, %33
  br i1 %cmp27.not, label %lor.lhs.false, label %if.end23.if.then29_crit_edge

if.end23.if.then29_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then29

lor.lhs.false:                                    ; preds = %if.end23
  %watchdog_rx_done = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 13
  %34 = ptrtoint ptr %watchdog_rx_done to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %watchdog_rx_done, align 128
  %cnt = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 3, i32 2
  %36 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp28.not = icmp eq i32 %35, %37
  br i1 %cmp28.not, label %lor.lhs.false.if.end30_crit_edge, label %lor.lhs.false.if.then29_crit_edge

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then29

lor.lhs.false.if.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end30

if.then29:                                        ; preds = %lor.lhs.false.if.then29_crit_edge, %if.end23.if.then29_crit_edge
  %38 = ptrtoint ptr %busy_slice_cnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %busy_slice_cnt, align 4
  %add = add i32 %39, 1
  store i32 %add, ptr %busy_slice_cnt, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %lor.lhs.false.if.end30_crit_edge
  %40 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %done, align 128
  %42 = ptrtoint ptr %watchdog_tx_done24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %watchdog_tx_done24, align 8
  %43 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %req, align 128
  %watchdog_tx_req36 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 12
  %45 = ptrtoint ptr %watchdog_tx_req36 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %watchdog_tx_req36, align 4
  %cnt38 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %cnt38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cnt38, align 8
  %watchdog_rx_done39 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %ss, i32 0, i32 13
  %48 = ptrtoint ptr %watchdog_rx_done39 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %watchdog_rx_done39, align 128
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @myri10ge_get_drvinfo(ptr noundef %netdev, ptr noundef %info) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.1, i32 noundef 32) #24
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.2, i32 noundef 32) #24
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %fw_version5 = getelementptr i8, ptr %netdev, i32 2832
  %call7 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef %fw_version5, i32 noundef 32) #24
  %pdev = getelementptr i8, ptr %netdev, i32 2368
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call10 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #24
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @myri10ge_get_msglevel(ptr nocapture noundef readonly %netdev) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3020
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @myri10ge_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %value) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3020
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #0

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @myri10ge_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %coal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_coal_delay = getelementptr i8, ptr %netdev, i32 2392
  %0 = ptrtoint ptr %intr_coal_delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intr_coal_delay, align 4
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %2 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %rx_coalesce_usecs, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myri10ge_set_coalesce(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %coal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %0 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_coalesce_usecs, align 4
  %intr_coal_delay = getelementptr i8, ptr %netdev, i32 2392
  %2 = ptrtoint ptr %intr_coal_delay to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %intr_coal_delay, align 4
  %intr_coal_delay_ptr = getelementptr i8, ptr %netdev, i32 2396
  %3 = ptrtoint ptr %intr_coal_delay_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intr_coal_delay_ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %1) #24, !srcloc !622
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @myri10ge_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #19 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %mask = getelementptr inbounds %struct.myri10ge_slice_state, ptr %1, i32 0, i32 1, i32 9
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %add = add i32 %3, 1
  %rx_mini_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 2
  %4 = ptrtoint ptr %rx_mini_max_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %rx_mini_max_pending, align 4
  %5 = load ptr, ptr %add.ptr.i, align 4
  %mask3 = getelementptr inbounds %struct.myri10ge_slice_state, ptr %5, i32 0, i32 2, i32 9
  %6 = ptrtoint ptr %mask3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask3, align 4
  %add4 = add i32 %7, 1
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %8 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add4, ptr %rx_max_pending, align 4
  %rx_jumbo_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 3
  %9 = ptrtoint ptr %rx_jumbo_max_pending to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rx_jumbo_max_pending, align 4
  %10 = load ptr, ptr %add.ptr.i, align 4
  %mask7 = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %mask7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask7, align 8
  %add8 = add i32 %12, 1
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %13 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add8, ptr %tx_max_pending, align 4
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %14 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %rx_mini_pending, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %15 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add4, ptr %rx_pending, align 4
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %16 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rx_jumbo_pending, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %17 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add8, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @myri10ge_get_pauseparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pause) #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %autoneg, align 4
  %pause1 = getelementptr i8, ptr %netdev, i32 2560
  %1 = ptrtoint ptr %pause1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pause1, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %3 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rx_pause, align 4
  %4 = load i32, ptr %pause1, align 4
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %5 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tx_pause, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myri10ge_set_pauseparam(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %pause) #3 align 64 {
entry:
  %cmd.i22 = alloca %struct.myri10ge_cmd, align 4
  %cmd.i = alloca %struct.myri10ge_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %0 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_pause, align 4
  %pause1 = getelementptr i8, ptr %netdev, i32 2560
  %2 = ptrtoint ptr %pause1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pause1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i) #24
  %4 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %cmd.i, align 4, !annotation !609
  %5 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !609
  %7 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !609
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %cond.i = select i1 %tobool.not.i, i32 24, i32 23
  %call.i = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef %cond.i, ptr noundef nonnull %cmd.i, i32 noundef 0) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  %dev.i = getelementptr i8, ptr %netdev, i32 2332
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.187) #27
  br label %myri10ge_change_pause.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #26
  %11 = ptrtoint ptr %pause1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %1, ptr %pause1, align 4
  br label %myri10ge_change_pause.exit

myri10ge_change_pause.exit:                       ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %12 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %1)
  %cmp5.not = icmp eq i32 %13, %1
  br i1 %cmp5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i22) #24
  %14 = ptrtoint ptr %cmd.i22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %cmd.i22, align 4, !annotation !609
  %15 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd.i22, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4, !annotation !609
  %17 = getelementptr inbounds %struct.myri10ge_cmd, ptr %cmd.i22, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %17, align 4, !annotation !609
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i23 = icmp eq i32 %13, 0
  %cond.i24 = select i1 %tobool.not.i23, i32 24, i32 23
  %call.i25 = call fastcc i32 @myri10ge_send_cmd(ptr noundef %add.ptr.i, i32 noundef %cond.i24, ptr noundef nonnull %cmd.i22, i32 noundef 0) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool1.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool1.not.i26, label %if.end.i30, label %if.then.i28

if.then.i28:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #26
  %dev.i27 = getelementptr i8, ptr %netdev, i32 2332
  %19 = ptrtoint ptr %dev.i27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i27, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.187) #27
  br label %myri10ge_change_pause.exit31

if.end.i30:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #26
  %21 = ptrtoint ptr %pause1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %13, ptr %pause1, align 4
  br label %myri10ge_change_pause.exit31

myri10ge_change_pause.exit31:                     ; preds = %if.end.i30, %if.then.i28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i22) #24
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %22 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp10.not = icmp eq i32 %23, 0
  %. = select i1 %cmp10.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %myri10ge_change_pause.exit31, %myri10ge_change_pause.exit
  %retval.0 = phi i32 [ %call.i, %myri10ge_change_pause.exit ], [ %call.i25, %myri10ge_change_pause.exit31 ], [ %., %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @myri10ge_get_strings(ptr nocapture noundef readonly %netdev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #20 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %0 = call ptr @memcpy(ptr %data, ptr @myri10ge_gstrings_main_stats, i32 1376)
  %num_slices = getelementptr i8, ptr %netdev, i32 2312
  %1 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_slices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp6 = icmp sgt i32 %2, 0
  br i1 %cmp6, label %for.body.preheader, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

for.body.preheader:                               ; preds = %sw.bb
  %add.ptr = getelementptr i8, ptr %data, i32 1376
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %data.addr.07 = phi ptr [ %add.ptr1, %for.body.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %3 = call ptr @memcpy(ptr %data.addr.07, ptr @myri10ge_gstrings_slice_stats, i32 320)
  %add.ptr1 = getelementptr i8, ptr %data.addr.07, i32 320
  %inc = add nuw nsw i32 %i.08, 1
  %4 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_slices, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body

sw.epilog:                                        ; preds = %for.body.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myri10ge_phys_id(ptr nocapture noundef readonly %netdev, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %pdev.i = getelementptr i8, ptr %netdev, i32 2368
  %1 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %sram.i = getelementptr i8, ptr %netdev, i32 2336
  %3 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sram.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %4, i32 60
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #24, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !653
  %and.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %sw.bb.do.end.i_crit_edge

sw.bb.do.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  %add.i = add i32 %5, 192
  %sram_size.i = getelementptr i8, ptr %netdev, i32 2340
  %6 = ptrtoint ptr %sram_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sram_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %7)
  %cmp.i = icmp ugt i32 %add.i, %7
  br i1 %cmp.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %sw.bb.do.end.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.157, i32 noundef %5) #27
  br label %sw.epilog

if.end.i:                                         ; preds = %lor.lhs.false.i
  %8 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sram.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %9, i32 %5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #24, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !654
  %add11.i = add i32 %5, 184
  %add12.i = add i32 %10, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %add12.i)
  %cmp13.not.i = icmp ult i32 %add11.i, %add12.i
  br i1 %cmp13.not.i, label %if.end18.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.231) #27
  br label %sw.epilog

if.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !655
  tail call void @arm_heavy_mb() #24
  %11 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sram.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %12, i32 %add11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 -2) #24, !srcloc !622
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %pdev.i6 = getelementptr i8, ptr %netdev, i32 2368
  %13 = ptrtoint ptr %pdev.i6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i6, align 4
  %dev1.i7 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %sram.i8 = getelementptr i8, ptr %netdev, i32 2336
  %15 = ptrtoint ptr %sram.i8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sram.i8, align 4
  %add.ptr.i9 = getelementptr i8, ptr %16, i32 60
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #24, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !653
  %and.i10 = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i11 = icmp eq i32 %and.i10, 0
  br i1 %tobool.not.i11, label %lor.lhs.false.i15, label %sw.bb2.do.end.i16_crit_edge

sw.bb2.do.end.i16_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end.i16

lor.lhs.false.i15:                                ; preds = %sw.bb2
  %add.i12 = add i32 %17, 192
  %sram_size.i13 = getelementptr i8, ptr %netdev, i32 2340
  %18 = ptrtoint ptr %sram_size.i13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sram_size.i13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i12, i32 %19)
  %cmp.i14 = icmp ugt i32 %add.i12, %19
  br i1 %cmp.i14, label %lor.lhs.false.i15.do.end.i16_crit_edge, label %if.end.i21

lor.lhs.false.i15.do.end.i16_crit_edge:           ; preds = %lor.lhs.false.i15
  call void @__sanitizer_cov_trace_pc() #26
  br label %do.end.i16

do.end.i16:                                       ; preds = %lor.lhs.false.i15.do.end.i16_crit_edge, %sw.bb2.do.end.i16_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i7, ptr noundef nonnull @.str.157, i32 noundef %17) #27
  br label %sw.epilog

if.end.i21:                                       ; preds = %lor.lhs.false.i15
  %20 = ptrtoint ptr %sram.i8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sram.i8, align 4
  %add.ptr6.i17 = getelementptr i8, ptr %21, i32 %17
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i17) #24, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !654
  %add11.i18 = add i32 %17, 184
  %add12.i19 = add i32 %22, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i18, i32 %add12.i19)
  %cmp13.not.i20 = icmp ult i32 %add11.i18, %add12.i19
  br i1 %cmp13.not.i20, label %if.end18.i23, label %do.end17.i22

do.end17.i22:                                     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i7, ptr noundef nonnull @.str.231) #27
  br label %sw.epilog

if.end18.i23:                                     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #26
  %23 = ptrtoint ptr %sram.i8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sram.i8, align 4
  %add.ptr24.i = getelementptr i8, ptr %24, i32 %add11.i18
  %add.ptr25.i = getelementptr i8, ptr %add.ptr24.i, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #24, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !656
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #24, !srcloc !655
  tail call void @arm_heavy_mb() #24
  %26 = ptrtoint ptr %sram.i8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sram.i8, align 4
  %add.ptr34.i24 = getelementptr i8, ptr %27, i32 %add11.i18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i24, i32 %25) #24, !srcloc !622
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end18.i23, %do.end17.i22, %do.end.i16, %if.end18.i, %do.end17.i, %do.end.i, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ -5, %do.end.i ], [ -22, %do.end17.i ], [ 0, %if.end18.i ], [ -5, %do.end.i16 ], [ -22, %do.end17.i22 ], [ 0, %if.end18.i23 ]
  ret i32 %rc.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @myri10ge_get_ethtool_stats(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readnone %stats, ptr noundef writeonly %data) #20 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %num_slices.i = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_slices.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp31.i = icmp sgt i32 %1, 0
  br i1 %cmp31.i, label %for.body.lr.ph.i, label %entry.myri10ge_get_stats.exit_crit_edge

entry.myri10ge_get_stats.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_get_stats.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %add17.i234 = phi i64 [ 0, %for.body.lr.ph.i ], [ %add17.i, %for.body.i.for.body.i_crit_edge ]
  %add14.i233 = phi i64 [ 0, %for.body.lr.ph.i ], [ %add14.i, %for.body.i.for.body.i_crit_edge ]
  %add11.i232 = phi i64 [ 0, %for.body.lr.ph.i ], [ %add11.i, %for.body.i.for.body.i_crit_edge ]
  %add8.i231 = phi i64 [ 0, %for.body.lr.ph.i ], [ %add8.i, %for.body.i.for.body.i_crit_edge ]
  %add5.i230 = phi i64 [ 0, %for.body.lr.ph.i ], [ %add5.i, %for.body.i.for.body.i_crit_edge ]
  %add.i229 = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %i.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %stats1.i = getelementptr %struct.myri10ge_slice_state, ptr %3, i32 %i.032.i, i32 7
  %4 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats1.i, align 4
  %conv.i = zext i32 %5 to i64
  %add.i = add i64 %add.i229, %conv.i
  %tx_packets.i = getelementptr %struct.myri10ge_slice_state, ptr %3, i32 %i.032.i, i32 7, i32 1
  %6 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_packets.i, align 4
  %conv3.i = zext i32 %7 to i64
  %add5.i = add i64 %add5.i230, %conv3.i
  %rx_bytes.i = getelementptr %struct.myri10ge_slice_state, ptr %3, i32 %i.032.i, i32 7, i32 2
  %8 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_bytes.i, align 4
  %conv6.i = zext i32 %9 to i64
  %add8.i = add i64 %add8.i231, %conv6.i
  %tx_bytes.i = getelementptr %struct.myri10ge_slice_state, ptr %3, i32 %i.032.i, i32 7, i32 3
  %10 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_bytes.i, align 4
  %conv9.i = zext i32 %11 to i64
  %add11.i = add i64 %add11.i232, %conv9.i
  %rx_dropped.i = getelementptr %struct.myri10ge_slice_state, ptr %3, i32 %i.032.i, i32 7, i32 4
  %12 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_dropped.i, align 4
  %conv12.i = zext i32 %13 to i64
  %add14.i = add i64 %add14.i233, %conv12.i
  %tx_dropped.i = getelementptr %struct.myri10ge_slice_state, ptr %3, i32 %i.032.i, i32 7, i32 5
  %14 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_dropped.i, align 4
  %conv15.i = zext i32 %15 to i64
  %add17.i = add i64 %add17.i234, %conv15.i
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not, label %for.body.i.myri10ge_get_stats.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body.i

for.body.i.myri10ge_get_stats.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #26
  br label %myri10ge_get_stats.exit

myri10ge_get_stats.exit:                          ; preds = %for.body.i.myri10ge_get_stats.exit_crit_edge, %entry.myri10ge_get_stats.exit_crit_edge
  %link_stats.sroa.0.0 = phi i64 [ 0, %entry.myri10ge_get_stats.exit_crit_edge ], [ %add.i, %for.body.i.myri10ge_get_stats.exit_crit_edge ]
  %link_stats.sroa.7.0 = phi i64 [ 0, %entry.myri10ge_get_stats.exit_crit_edge ], [ %add5.i, %for.body.i.myri10ge_get_stats.exit_crit_edge ]
  %link_stats.sroa.9.0 = phi i64 [ 0, %entry.myri10ge_get_stats.exit_crit_edge ], [ %add8.i, %for.body.i.myri10ge_get_stats.exit_crit_edge ]
  %link_stats.sroa.11.0 = phi i64 [ 0, %entry.myri10ge_get_stats.exit_crit_edge ], [ %add11.i, %for.body.i.myri10ge_get_stats.exit_crit_edge ]
  %link_stats.sroa.13239.0 = phi i64 [ 0, %entry.myri10ge_get_stats.exit_crit_edge ], [ %add14.i, %for.body.i.myri10ge_get_stats.exit_crit_edge ]
  %link_stats.sroa.15.0 = phi i64 [ 0, %entry.myri10ge_get_stats.exit_crit_edge ], [ %add17.i, %for.body.i.myri10ge_get_stats.exit_crit_edge ]
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %link_stats.sroa.0.0, ptr %data, align 8
  %link_stats.sroa.7.0.data.sroa_idx = getelementptr inbounds i8, ptr %data, i32 8
  %17 = ptrtoint ptr %link_stats.sroa.7.0.data.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %link_stats.sroa.7.0, ptr %link_stats.sroa.7.0.data.sroa_idx, align 8
  %link_stats.sroa.9.0.data.sroa_idx = getelementptr inbounds i8, ptr %data, i32 16
  %18 = ptrtoint ptr %link_stats.sroa.9.0.data.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %link_stats.sroa.9.0, ptr %link_stats.sroa.9.0.data.sroa_idx, align 8
  %link_stats.sroa.11.0.data.sroa_idx = getelementptr inbounds i8, ptr %data, i32 24
  %19 = ptrtoint ptr %link_stats.sroa.11.0.data.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %link_stats.sroa.11.0, ptr %link_stats.sroa.11.0.data.sroa_idx, align 8
  %link_stats.sroa.13.0.data.sroa_idx = getelementptr inbounds i8, ptr %data, i32 32
  %20 = call ptr @memset(ptr %link_stats.sroa.13.0.data.sroa_idx, i32 0, i32 16)
  %link_stats.sroa.13239.0.data.sroa_idx = getelementptr inbounds i8, ptr %data, i32 48
  %21 = ptrtoint ptr %link_stats.sroa.13239.0.data.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %link_stats.sroa.13239.0, ptr %link_stats.sroa.13239.0.data.sroa_idx, align 8
  %link_stats.sroa.15.0.data.sroa_idx = getelementptr inbounds i8, ptr %data, i32 56
  %22 = ptrtoint ptr %link_stats.sroa.15.0.data.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %link_stats.sroa.15.0, ptr %link_stats.sroa.15.0.data.sroa_idx, align 8
  %link_stats.sroa.17.0.data.sroa_idx = getelementptr inbounds i8, ptr %data, i32 64
  %23 = call ptr @memset(ptr %link_stats.sroa.17.0.data.sroa_idx, i32 0, i32 104)
  %tx_boundary = getelementptr i8, ptr %netdev, i32 2308
  %24 = ptrtoint ptr %tx_boundary to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_boundary, align 4
  %conv = zext i32 %25 to i64
  %arrayidx3 = getelementptr i64, ptr %data, i32 21
  %26 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv, ptr %arrayidx3, align 8
  %pdev = getelementptr i8, ptr %netdev, i32 2368
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 46
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %conv4 = zext i32 %30 to i64
  %arrayidx6 = getelementptr i64, ptr %data, i32 22
  %31 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv4, ptr %arrayidx6, align 8
  %msi_enabled = getelementptr i8, ptr %netdev, i32 2372
  %32 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msi_enabled, align 4
  %conv7 = zext i32 %33 to i64
  %arrayidx9 = getelementptr i64, ptr %data, i32 23
  %34 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv7, ptr %arrayidx9, align 8
  %msix_enabled = getelementptr i8, ptr %netdev, i32 2376
  %35 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msix_enabled, align 4
  %conv10 = zext i32 %36 to i64
  %arrayidx12 = getelementptr i64, ptr %data, i32 24
  %37 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv10, ptr %arrayidx12, align 8
  %read_dma = getelementptr i8, ptr %netdev, i32 3004
  %38 = ptrtoint ptr %read_dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %read_dma, align 4
  %conv13 = zext i32 %39 to i64
  %arrayidx15 = getelementptr i64, ptr %data, i32 25
  %40 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv13, ptr %arrayidx15, align 8
  %write_dma = getelementptr i8, ptr %netdev, i32 3008
  %41 = ptrtoint ptr %write_dma to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %write_dma, align 4
  %conv16 = zext i32 %42 to i64
  %arrayidx18 = getelementptr i64, ptr %data, i32 26
  %43 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv16, ptr %arrayidx18, align 8
  %read_write_dma = getelementptr i8, ptr %netdev, i32 3012
  %44 = ptrtoint ptr %read_write_dma to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %read_write_dma, align 4
  %conv19 = zext i32 %45 to i64
  %arrayidx21 = getelementptr i64, ptr %data, i32 27
  %46 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv19, ptr %arrayidx21, align 8
  %serial_number = getelementptr i8, ptr %netdev, i32 2984
  %47 = ptrtoint ptr %serial_number to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %serial_number, align 4
  %conv22 = zext i32 %48 to i64
  %arrayidx24 = getelementptr i64, ptr %data, i32 28
  %49 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv22, ptr %arrayidx24, align 8
  %watchdog_resets = getelementptr i8, ptr %netdev, i32 2552
  %50 = ptrtoint ptr %watchdog_resets to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %watchdog_resets, align 4
  %conv25 = zext i32 %51 to i64
  %arrayidx27 = getelementptr i64, ptr %data, i32 29
  %52 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv25, ptr %arrayidx27, align 8
  %link_changes = getelementptr i8, ptr %netdev, i32 3016
  %53 = ptrtoint ptr %link_changes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %link_changes, align 4
  %conv28 = zext i32 %54 to i64
  %arrayidx30 = getelementptr i64, ptr %data, i32 30
  %55 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv28, ptr %arrayidx30, align 8
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 4
  %fw_stats = getelementptr inbounds %struct.myri10ge_slice_state, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %fw_stats to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fw_stats, align 16
  %link_up = getelementptr inbounds %struct.mcp_irq_data, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %link_up to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %link_up, align 4
  %conv33 = zext i32 %61 to i64
  %arrayidx35 = getelementptr i64, ptr %data, i32 31
  %62 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv33, ptr %arrayidx35, align 8
  %63 = load ptr, ptr %fw_stats, align 16
  %dropped_link_overflow = getelementptr inbounds %struct.mcp_irq_data, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %dropped_link_overflow to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dropped_link_overflow, align 4
  %conv37 = zext i32 %65 to i64
  %arrayidx39 = getelementptr i64, ptr %data, i32 32
  %66 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv37, ptr %arrayidx39, align 8
  %67 = load ptr, ptr %fw_stats, align 16
  %dropped_link_error_or_filtered = getelementptr inbounds %struct.mcp_irq_data, ptr %67, i32 0, i32 9
  %68 = ptrtoint ptr %dropped_link_error_or_filtered to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dropped_link_error_or_filtered, align 4
  %conv41 = zext i32 %69 to i64
  %arrayidx43 = getelementptr i64, ptr %data, i32 33
  %70 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %conv41, ptr %arrayidx43, align 8
  %71 = load ptr, ptr %fw_stats, align 16
  %dropped_pause = getelementptr inbounds %struct.mcp_irq_data, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %dropped_pause to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dropped_pause, align 4
  %conv45 = zext i32 %73 to i64
  %arrayidx47 = getelementptr i64, ptr %data, i32 34
  %74 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv45, ptr %arrayidx47, align 8
  %75 = load ptr, ptr %fw_stats, align 16
  %dropped_bad_phy = getelementptr inbounds %struct.mcp_irq_data, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %dropped_bad_phy to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dropped_bad_phy, align 4
  %conv49 = zext i32 %77 to i64
  %arrayidx51 = getelementptr i64, ptr %data, i32 35
  %78 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv49, ptr %arrayidx51, align 8
  %79 = load ptr, ptr %fw_stats, align 16
  %dropped_bad_crc32 = getelementptr inbounds %struct.mcp_irq_data, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %dropped_bad_crc32 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dropped_bad_crc32, align 4
  %conv53 = zext i32 %81 to i64
  %arrayidx55 = getelementptr i64, ptr %data, i32 36
  %82 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %conv53, ptr %arrayidx55, align 8
  %83 = load ptr, ptr %fw_stats, align 16
  %dropped_unicast_filtered = getelementptr inbounds %struct.mcp_irq_data, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %dropped_unicast_filtered to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dropped_unicast_filtered, align 4
  %conv57 = zext i32 %85 to i64
  %arrayidx59 = getelementptr i64, ptr %data, i32 37
  %86 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %conv57, ptr %arrayidx59, align 8
  %87 = load ptr, ptr %fw_stats, align 16
  %dropped_multicast_filtered = getelementptr inbounds %struct.mcp_irq_data, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %dropped_multicast_filtered to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dropped_multicast_filtered, align 4
  %conv61 = zext i32 %89 to i64
  %arrayidx63 = getelementptr i64, ptr %data, i32 38
  %90 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv61, ptr %arrayidx63, align 8
  %91 = load ptr, ptr %fw_stats, align 16
  %dropped_runt = getelementptr inbounds %struct.mcp_irq_data, ptr %91, i32 0, i32 10
  %92 = ptrtoint ptr %dropped_runt to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dropped_runt, align 4
  %conv65 = zext i32 %93 to i64
  %arrayidx67 = getelementptr i64, ptr %data, i32 39
  %94 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %conv65, ptr %arrayidx67, align 8
  %95 = load ptr, ptr %fw_stats, align 16
  %dropped_overrun = getelementptr inbounds %struct.mcp_irq_data, ptr %95, i32 0, i32 11
  %96 = ptrtoint ptr %dropped_overrun to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dropped_overrun, align 4
  %conv69 = zext i32 %97 to i64
  %arrayidx71 = getelementptr i64, ptr %data, i32 40
  %98 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %conv69, ptr %arrayidx71, align 8
  %99 = load ptr, ptr %fw_stats, align 16
  %dropped_no_small_buffer = getelementptr inbounds %struct.mcp_irq_data, ptr %99, i32 0, i32 12
  %100 = ptrtoint ptr %dropped_no_small_buffer to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dropped_no_small_buffer, align 4
  %conv73 = zext i32 %101 to i64
  %arrayidx75 = getelementptr i64, ptr %data, i32 41
  %102 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %conv73, ptr %arrayidx75, align 8
  %103 = load ptr, ptr %fw_stats, align 16
  %dropped_no_big_buffer = getelementptr inbounds %struct.mcp_irq_data, ptr %103, i32 0, i32 13
  %104 = ptrtoint ptr %dropped_no_big_buffer to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dropped_no_big_buffer, align 4
  %conv77 = zext i32 %105 to i64
  %arrayidx79 = getelementptr i64, ptr %data, i32 42
  %106 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %conv77, ptr %arrayidx79, align 8
  %107 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_slices.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp81236 = icmp sgt i32 %108, 0
  br i1 %cmp81236, label %myri10ge_get_stats.exit.for.body83_crit_edge, label %myri10ge_get_stats.exit.for.end125_crit_edge

myri10ge_get_stats.exit.for.end125_crit_edge:     ; preds = %myri10ge_get_stats.exit
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end125

myri10ge_get_stats.exit.for.body83_crit_edge:     ; preds = %myri10ge_get_stats.exit
  br label %for.body83

for.body83:                                       ; preds = %for.body83.for.body83_crit_edge, %myri10ge_get_stats.exit.for.body83_crit_edge
  %i.1238 = phi i32 [ %inc121, %for.body83.for.body83_crit_edge ], [ 43, %myri10ge_get_stats.exit.for.body83_crit_edge ]
  %slice.0237 = phi i32 [ %inc124, %for.body83.for.body83_crit_edge ], [ 0, %myri10ge_get_stats.exit.for.body83_crit_edge ]
  %109 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx85 = getelementptr %struct.myri10ge_slice_state, ptr %110, i32 %slice.0237
  %conv86 = zext i32 %slice.0237 to i64
  %inc87 = add i32 %i.1238, 1
  %arrayidx88 = getelementptr i64, ptr %data, i32 %i.1238
  %111 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %conv86, ptr %arrayidx88, align 8
  %pkt_start = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx85, i32 0, i32 9
  %112 = ptrtoint ptr %pkt_start to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pkt_start, align 4
  %conv89 = zext i32 %113 to i64
  %inc90 = add i32 %i.1238, 2
  %arrayidx91 = getelementptr i64, ptr %data, i32 %inc87
  %114 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %conv89, ptr %arrayidx91, align 8
  %pkt_done = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx85, i32 0, i32 14
  %115 = ptrtoint ptr %pkt_done to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pkt_done, align 4
  %conv93 = zext i32 %116 to i64
  %inc94 = add i32 %i.1238, 3
  %arrayidx95 = getelementptr i64, ptr %data, i32 %inc90
  %117 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %conv93, ptr %arrayidx95, align 8
  %req = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx85, i32 0, i32 8
  %118 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %req, align 128
  %conv97 = zext i32 %119 to i64
  %inc98 = add i32 %i.1238, 4
  %arrayidx99 = getelementptr i64, ptr %data, i32 %inc94
  %120 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %conv97, ptr %arrayidx99, align 8
  %done = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx85, i32 0, i32 13
  %121 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %done, align 128
  %conv101 = zext i32 %122 to i64
  %inc102 = add i32 %i.1238, 5
  %arrayidx103 = getelementptr i64, ptr %data, i32 %inc98
  %123 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %conv101, ptr %arrayidx103, align 8
  %cnt = getelementptr %struct.myri10ge_slice_state, ptr %110, i32 %slice.0237, i32 1, i32 6
  %124 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cnt, align 8
  %conv104 = zext i32 %125 to i64
  %inc105 = add i32 %i.1238, 6
  %arrayidx106 = getelementptr i64, ptr %data, i32 %inc102
  %126 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %conv104, ptr %arrayidx106, align 8
  %cnt107 = getelementptr %struct.myri10ge_slice_state, ptr %110, i32 %slice.0237, i32 2, i32 6
  %127 = ptrtoint ptr %cnt107 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cnt107, align 4
  %conv108 = zext i32 %128 to i64
  %inc109 = add i32 %i.1238, 7
  %arrayidx110 = getelementptr i64, ptr %data, i32 %inc105
  %129 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %conv108, ptr %arrayidx110, align 8
  %wake_queue = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx85, i32 0, i32 15
  %130 = ptrtoint ptr %wake_queue to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %wake_queue, align 8
  %conv112 = zext i32 %131 to i64
  %inc113 = add i32 %i.1238, 8
  %arrayidx114 = getelementptr i64, ptr %data, i32 %inc109
  %132 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %conv112, ptr %arrayidx114, align 8
  %stop_queue = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx85, i32 0, i32 10
  %133 = ptrtoint ptr %stop_queue to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %stop_queue, align 8
  %conv116 = zext i32 %134 to i64
  %inc117 = add i32 %i.1238, 9
  %arrayidx118 = getelementptr i64, ptr %data, i32 %inc113
  %135 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %conv116, ptr %arrayidx118, align 8
  %linearized = getelementptr inbounds %struct.myri10ge_tx_buf, ptr %arrayidx85, i32 0, i32 11
  %136 = ptrtoint ptr %linearized to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %linearized, align 4
  %conv120 = zext i32 %137 to i64
  %inc121 = add i32 %i.1238, 10
  %arrayidx122 = getelementptr i64, ptr %data, i32 %inc117
  %138 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %conv120, ptr %arrayidx122, align 8
  %inc124 = add nuw nsw i32 %slice.0237, 1
  %139 = ptrtoint ptr %num_slices.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %num_slices.i, align 4
  %cmp81 = icmp slt i32 %inc124, %140
  br i1 %cmp81, label %for.body83.for.body83_crit_edge, label %for.body83.for.end125_crit_edge

for.body83.for.end125_crit_edge:                  ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.end125

for.body83.for.body83_crit_edge:                  ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #26
  br label %for.body83

for.end125:                                       ; preds = %for.body83.for.end125_crit_edge, %myri10ge_get_stats.exit.for.end125_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @myri10ge_get_sset_count(ptr nocapture noundef readonly %netdev, i32 noundef %sset) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  %num_slices = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %num_slices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_slices, align 4
  %mul = mul i32 %1, 10
  %add = add i32 %mul, 43
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myri10ge_get_link_ksettings(ptr noundef %netdev, ptr nocapture noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %autoneg, align 1
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 10000, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %duplex, align 4
  %product_code_string = getelementptr i8, ptr %netdev, i32 2828
  %3 = ptrtoint ptr %product_code_string to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %product_code_string, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %call4 = tail call ptr @strchr(ptr noundef nonnull %4, i32 noundef 45)
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %for.body.preheader.if.then6_crit_edge, label %for.inc

for.body.preheader.if.then6_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.233) #27
  br label %cleanup

if.then6:                                         ; preds = %for.inc.1.if.then6_crit_edge, %for.inc.if.then6_crit_edge, %for.body.preheader.if.then6_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.234, ptr noundef nonnull %4) #27
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %incdec.ptr = getelementptr i8, ptr %call4, i32 1
  %call4.1 = tail call ptr @strchr(ptr noundef %incdec.ptr, i32 noundef 45)
  %cmp5.1 = icmp eq ptr %call4.1, null
  br i1 %cmp5.1, label %for.inc.if.then6_crit_edge, label %for.inc.1

for.inc.if.then6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then6

for.inc.1:                                        ; preds = %for.inc
  %incdec.ptr.1 = getelementptr i8, ptr %call4.1, i32 1
  %call4.2 = tail call ptr @strchr(ptr noundef %incdec.ptr.1, i32 noundef 45)
  %cmp5.2 = icmp eq ptr %call4.2, null
  br i1 %cmp5.2, label %for.inc.1.if.then6_crit_edge, label %for.inc.2

for.inc.1.if.then6_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.then6

for.inc.2:                                        ; preds = %for.inc.1
  %incdec.ptr.2 = getelementptr i8, ptr %call4.2, i32 1
  %5 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %6)
  %cmp9 = icmp eq i8 %6, 50
  %spec.select.idx = zext i1 %cmp9 to i32
  %spec.select = getelementptr i8, ptr %incdec.ptr.2, i32 %spec.select.idx
  %7 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %spec.select, align 1
  %.off = add i8 %8, -81
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  br i1 %switch, label %if.then24, label %if.else

if.then24:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #26
  %9 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %port, align 1
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link_modes, align 4
  %or.i = or i32 %11, 1024
  store i32 %or.i, ptr %link_modes, align 4
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %advertising, align 4
  %or.i51 = or i32 %13, 1024
  store i32 %or.i51, ptr %advertising, align 4
  br label %cleanup

if.else:                                          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #26
  %14 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %port, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then24, %if.then6, %if.then
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #22

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myri10ge_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.myri10ge_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void @netif_device_detach(ptr noundef %3) #24
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.246) #27
  tail call void @rtnl_lock() #24
  %call4 = tail call i32 @myri10ge_close(ptr noundef %3)
  tail call void @rtnl_unlock() #24
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  tail call fastcc void @myri10ge_dummy_rdma(ptr noundef nonnull %1, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myri10ge_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  %vendor = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #26
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor) #24
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %vendor, align 2, !annotation !609
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.myri10ge_priv, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  tail call void @msleep(i32 noundef 5) #24
  %pdev2 = getelementptr inbounds %struct.myri10ge_priv, ptr %2, i32 0, i32 16
  %5 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev2, align 4
  %call3 = call i32 @pci_read_config_word(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %vendor) #24
  %7 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %cmp4 = icmp eq i16 %8, -1
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #26
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.238) #27
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call fastcc i32 @myri10ge_reset(ptr noundef nonnull %2)
  call fastcc void @myri10ge_dummy_rdma(ptr noundef nonnull %2, i32 noundef 1)
  %state.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end8.if.end17_crit_edge, label %if.then11

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end17

if.then11:                                        ; preds = %if.end8
  call void @rtnl_lock() #24
  %call12 = call i32 @myri10ge_open(ptr noundef %4)
  call void @rtnl_unlock() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.then11.if.end17_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #26
  br label %cleanup

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #26
  br label %if.end17

if.end17:                                         ; preds = %if.then11.if.end17_crit_edge, %if.end8.if.end17_crit_edge
  call void @netif_device_attach(ptr noundef %4) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then11.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then6 ], [ 0, %if.end17 ], [ -22, %entry.cleanup_crit_edge ], [ -5, %if.then11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor) #24
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #24

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
define internal void @asan.module_ctor() #25 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 246)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #25 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 246)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #22 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #23 = { argmemonly nofree nounwind readonly willreturn }
attributes #24 = { nounwind }
attributes #25 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #26 = { nomerge }
attributes #27 = { cold nounwind }
attributes #28 = { nobuiltin nounwind }
attributes #29 = { nounwind allocsize(0) }
attributes #30 = { nounwind readonly willreturn }
attributes #31 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !17, !19, !21, !23, !24, !26, !28, !29, !31, !33, !34, !36, !38, !39, !41, !43, !44, !46, !48, !49, !51, !53, !54, !56, !58, !59, !61, !63, !64, !66, !68, !69, !71, !73, !74, !76, !78, !79, !81, !83, !84, !86, !88, !89, !91, !93, !94, !96, !98, !99, !101, !103, !104, !106, !108, !109, !111, !113, !115, !116, !118, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !172, !173, !174, !175, !176, !178, !179, !180, !182, !184, !186, !188, !189, !191, !192, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !229, !230, !232, !233, !234, !236, !237, !238, !239, !240, !241, !243, !244, !245, !246, !247, !249, !250, !251, !253, !255, !257, !259, !260, !261, !262, !264, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !283, !285, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !304, !305, !306, !308, !309, !310, !312, !313, !314, !316, !317, !318, !320, !321, !322, !324, !325, !326, !328, !330, !332, !334, !336, !337, !338, !339, !341, !343, !344, !345, !346, !348, !349, !350, !352, !354, !356, !358, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !377, !379, !380, !381, !383, !385, !386, !387, !389, !390, !391, !392, !394, !395, !396, !398, !399, !400, !402, !403, !404, !406, !407, !408, !409, !411, !413, !414, !415, !417, !418, !419, !421, !422, !423, !424, !426, !427, !428, !430, !431, !432, !433, !435, !436, !437, !438, !440, !441, !442, !444, !445, !447, !448, !449, !451, !453, !455, !457, !459, !461, !462, !463, !465, !466, !467, !469, !470, !471, !473, !474, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !516, !517, !519, !521, !523, !524, !525, !526, !528, !529, !530, !532, !534, !535, !536, !538, !539, !540, !542, !544, !546, !547, !548, !550, !552, !554, !556, !558, !560, !562, !563, !564, !566, !567, !568, !570, !572, !574, !576, !578, !580, !582, !583, !584, !586, !588, !590, !591, !592, !593, !594, !595, !597}
!llvm.named.register.sp = !{!599}
!llvm.module.flags = !{!600, !601, !602, !603, !604, !605, !606, !607}
!llvm.ident = !{!608}

!0 = !{ptr @__UNIQUE_ID_description595, !1, !"__UNIQUE_ID_description595", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 79, i32 1}
!2 = !{ptr @__UNIQUE_ID_author596, !3, !"__UNIQUE_ID_author596", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 80, i32 1}
!4 = !{ptr @__UNIQUE_ID_version597, !5, !"__UNIQUE_ID_version597", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 81, i32 1}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__modver_attr, !5, !"__modver_attr", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_file598, !11, !"__UNIQUE_ID_file598", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 82, i32 1}
!12 = !{ptr @__UNIQUE_ID_license599, !11, !"__UNIQUE_ID_license599", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_firmware600, !14, !"__UNIQUE_ID_firmware600", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 261, i32 1}
!15 = !{ptr @__UNIQUE_ID_firmware601, !16, !"__UNIQUE_ID_firmware601", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 262, i32 1}
!17 = !{ptr @__UNIQUE_ID_firmware602, !18, !"__UNIQUE_ID_firmware602", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 263, i32 1}
!19 = !{ptr @__UNIQUE_ID_firmware603, !20, !"__UNIQUE_ID_firmware603", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 264, i32 1}
!21 = !{ptr @__param_myri10ge_fw_name, !22, !"__param_myri10ge_fw_name", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 268, i32 1}
!23 = !{ptr @__UNIQUE_ID_myri10ge_fw_nametype604, !22, !"__UNIQUE_ID_myri10ge_fw_nametype604", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_myri10ge_fw_name605, !25, !"__UNIQUE_ID_myri10ge_fw_name605", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 269, i32 1}
!26 = !{ptr @__param_myri10ge_fw_names, !27, !"__param_myri10ge_fw_names", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 274, i32 1}
!28 = !{ptr @__UNIQUE_ID_myri10ge_fw_namestype606, !27, !"__UNIQUE_ID_myri10ge_fw_namestype606", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_myri10ge_fw_names607, !30, !"__UNIQUE_ID_myri10ge_fw_names607", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 276, i32 1}
!31 = !{ptr @__param_myri10ge_ecrc_enable, !32, !"__param_myri10ge_ecrc_enable", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 279, i32 1}
!33 = !{ptr @__UNIQUE_ID_myri10ge_ecrc_enabletype608, !32, !"__UNIQUE_ID_myri10ge_ecrc_enabletype608", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_myri10ge_ecrc_enable609, !35, !"__UNIQUE_ID_myri10ge_ecrc_enable609", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 280, i32 1}
!36 = !{ptr @__param_myri10ge_small_bytes, !37, !"__param_myri10ge_small_bytes", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 283, i32 1}
!38 = !{ptr @__UNIQUE_ID_myri10ge_small_bytestype610, !37, !"__UNIQUE_ID_myri10ge_small_bytestype610", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_myri10ge_small_bytes611, !40, !"__UNIQUE_ID_myri10ge_small_bytes611", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 284, i32 1}
!41 = !{ptr @__param_myri10ge_msi, !42, !"__param_myri10ge_msi", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 287, i32 1}
!43 = !{ptr @__UNIQUE_ID_myri10ge_msitype612, !42, !"__UNIQUE_ID_myri10ge_msitype612", i1 false, i1 false}
!44 = !{ptr @__UNIQUE_ID_myri10ge_msi613, !45, !"__UNIQUE_ID_myri10ge_msi613", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 288, i32 1}
!46 = !{ptr @__param_myri10ge_intr_coal_delay, !47, !"__param_myri10ge_intr_coal_delay", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 291, i32 1}
!48 = !{ptr @__UNIQUE_ID_myri10ge_intr_coal_delaytype614, !47, !"__UNIQUE_ID_myri10ge_intr_coal_delaytype614", i1 false, i1 false}
!49 = !{ptr @__UNIQUE_ID_myri10ge_intr_coal_delay615, !50, !"__UNIQUE_ID_myri10ge_intr_coal_delay615", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 292, i32 1}
!51 = !{ptr @__param_myri10ge_flow_control, !52, !"__param_myri10ge_flow_control", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 295, i32 1}
!53 = !{ptr @__UNIQUE_ID_myri10ge_flow_controltype616, !52, !"__UNIQUE_ID_myri10ge_flow_controltype616", i1 false, i1 false}
!54 = !{ptr @__UNIQUE_ID_myri10ge_flow_control617, !55, !"__UNIQUE_ID_myri10ge_flow_control617", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 296, i32 1}
!56 = !{ptr @__param_myri10ge_deassert_wait, !57, !"__param_myri10ge_deassert_wait", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 299, i32 1}
!58 = !{ptr @__UNIQUE_ID_myri10ge_deassert_waittype618, !57, !"__UNIQUE_ID_myri10ge_deassert_waittype618", i1 false, i1 false}
!59 = !{ptr @__UNIQUE_ID_myri10ge_deassert_wait619, !60, !"__UNIQUE_ID_myri10ge_deassert_wait619", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 300, i32 1}
!61 = !{ptr @__param_myri10ge_force_firmware, !62, !"__param_myri10ge_force_firmware", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 304, i32 1}
!63 = !{ptr @__UNIQUE_ID_myri10ge_force_firmwaretype620, !62, !"__UNIQUE_ID_myri10ge_force_firmwaretype620", i1 false, i1 false}
!64 = !{ptr @__UNIQUE_ID_myri10ge_force_firmware621, !65, !"__UNIQUE_ID_myri10ge_force_firmware621", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 305, i32 1}
!66 = !{ptr @__param_myri10ge_initial_mtu, !67, !"__param_myri10ge_initial_mtu", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 309, i32 1}
!68 = !{ptr @__UNIQUE_ID_myri10ge_initial_mtutype622, !67, !"__UNIQUE_ID_myri10ge_initial_mtutype622", i1 false, i1 false}
!69 = !{ptr @__UNIQUE_ID_myri10ge_initial_mtu623, !70, !"__UNIQUE_ID_myri10ge_initial_mtu623", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 310, i32 1}
!71 = !{ptr @__param_myri10ge_napi_weight, !72, !"__param_myri10ge_napi_weight", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 313, i32 1}
!73 = !{ptr @__UNIQUE_ID_myri10ge_napi_weighttype624, !72, !"__UNIQUE_ID_myri10ge_napi_weighttype624", i1 false, i1 false}
!74 = !{ptr @__UNIQUE_ID_myri10ge_napi_weight625, !75, !"__UNIQUE_ID_myri10ge_napi_weight625", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 314, i32 1}
!76 = !{ptr @__param_myri10ge_watchdog_timeout, !77, !"__param_myri10ge_watchdog_timeout", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 317, i32 1}
!78 = !{ptr @__UNIQUE_ID_myri10ge_watchdog_timeouttype626, !77, !"__UNIQUE_ID_myri10ge_watchdog_timeouttype626", i1 false, i1 false}
!79 = !{ptr @__UNIQUE_ID_myri10ge_watchdog_timeout627, !80, !"__UNIQUE_ID_myri10ge_watchdog_timeout627", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 318, i32 1}
!81 = !{ptr @__param_myri10ge_max_irq_loops, !82, !"__param_myri10ge_max_irq_loops", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 321, i32 1}
!83 = !{ptr @__UNIQUE_ID_myri10ge_max_irq_loopstype628, !82, !"__UNIQUE_ID_myri10ge_max_irq_loopstype628", i1 false, i1 false}
!84 = !{ptr @__UNIQUE_ID_myri10ge_max_irq_loops629, !85, !"__UNIQUE_ID_myri10ge_max_irq_loops629", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 322, i32 1}
!86 = !{ptr @__param_myri10ge_debug, !87, !"__param_myri10ge_debug", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 328, i32 1}
!88 = !{ptr @__UNIQUE_ID_myri10ge_debugtype630, !87, !"__UNIQUE_ID_myri10ge_debugtype630", i1 false, i1 false}
!89 = !{ptr @__UNIQUE_ID_myri10ge_debug631, !90, !"__UNIQUE_ID_myri10ge_debug631", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 329, i32 1}
!91 = !{ptr @__param_myri10ge_fill_thresh, !92, !"__param_myri10ge_fill_thresh", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 332, i32 1}
!93 = !{ptr @__UNIQUE_ID_myri10ge_fill_threshtype632, !92, !"__UNIQUE_ID_myri10ge_fill_threshtype632", i1 false, i1 false}
!94 = !{ptr @__UNIQUE_ID_myri10ge_fill_thresh633, !95, !"__UNIQUE_ID_myri10ge_fill_thresh633", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 333, i32 1}
!96 = !{ptr @__param_myri10ge_max_slices, !97, !"__param_myri10ge_max_slices", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 338, i32 1}
!98 = !{ptr @__UNIQUE_ID_myri10ge_max_slicestype634, !97, !"__UNIQUE_ID_myri10ge_max_slicestype634", i1 false, i1 false}
!99 = !{ptr @__UNIQUE_ID_myri10ge_max_slices635, !100, !"__UNIQUE_ID_myri10ge_max_slices635", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 339, i32 1}
!101 = !{ptr @__param_myri10ge_rss_hash, !102, !"__param_myri10ge_rss_hash", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 342, i32 1}
!103 = !{ptr @__UNIQUE_ID_myri10ge_rss_hashtype636, !102, !"__UNIQUE_ID_myri10ge_rss_hashtype636", i1 false, i1 false}
!104 = !{ptr @__UNIQUE_ID_myri10ge_rss_hash637, !105, !"__UNIQUE_ID_myri10ge_rss_hash637", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 343, i32 1}
!106 = !{ptr @__param_myri10ge_dca, !107, !"__param_myri10ge_dca", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 346, i32 1}
!108 = !{ptr @__UNIQUE_ID_myri10ge_dcatype638, !107, !"__UNIQUE_ID_myri10ge_dcatype638", i1 false, i1 false}
!109 = !{ptr @__UNIQUE_ID_myri10ge_dca639, !110, !"__UNIQUE_ID_myri10ge_dca639", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 347, i32 1}
!111 = !{ptr @__initcall__kmod_myri10ge__643_4041_myri10ge_init_module6, !112, !"__initcall__kmod_myri10ge__643_4041_myri10ge_init_module6", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 4041, i32 1}
!113 = !{ptr @__exitcall_myri10ge_cleanup_module, !114, !"__exitcall_myri10ge_cleanup_module", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 4051, i32 1}
!115 = !{ptr @__param_str_myri10ge_fw_name, !22, !"__param_str_myri10ge_fw_name", i1 false, i1 false}
!116 = !{ptr @myri10ge_fw_name, !117, !"myri10ge_fw_name", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 267, i32 14}
!118 = !{ptr @__param_str_myri10ge_fw_names, !27, !"__param_str_myri10ge_fw_names", i1 false, i1 false}
!119 = !{ptr @__param_arr_myri10ge_fw_names, !27, !"__param_arr_myri10ge_fw_names", i1 false, i1 false}
!120 = !{ptr @myri10ge_fw_names, !121, !"myri10ge_fw_names", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 272, i32 14}
!122 = !{ptr @__param_str_myri10ge_ecrc_enable, !32, !"__param_str_myri10ge_ecrc_enable", i1 false, i1 false}
!123 = !{ptr @myri10ge_ecrc_enable, !124, !"myri10ge_ecrc_enable", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 278, i32 12}
!125 = !{ptr @__param_str_myri10ge_small_bytes, !37, !"__param_str_myri10ge_small_bytes", i1 false, i1 false}
!126 = !{ptr @myri10ge_small_bytes, !127, !"myri10ge_small_bytes", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 282, i32 12}
!128 = !{ptr @__param_str_myri10ge_msi, !42, !"__param_str_myri10ge_msi", i1 false, i1 false}
!129 = !{ptr @myri10ge_msi, !130, !"myri10ge_msi", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 286, i32 12}
!131 = !{ptr @__param_str_myri10ge_intr_coal_delay, !47, !"__param_str_myri10ge_intr_coal_delay", i1 false, i1 false}
!132 = !{ptr @myri10ge_intr_coal_delay, !133, !"myri10ge_intr_coal_delay", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 290, i32 12}
!134 = !{ptr @__param_str_myri10ge_flow_control, !52, !"__param_str_myri10ge_flow_control", i1 false, i1 false}
!135 = !{ptr @myri10ge_flow_control, !136, !"myri10ge_flow_control", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 294, i32 12}
!137 = !{ptr @__param_str_myri10ge_deassert_wait, !57, !"__param_str_myri10ge_deassert_wait", i1 false, i1 false}
!138 = !{ptr @myri10ge_deassert_wait, !139, !"myri10ge_deassert_wait", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 298, i32 12}
!140 = !{ptr @__param_str_myri10ge_force_firmware, !62, !"__param_str_myri10ge_force_firmware", i1 false, i1 false}
!141 = !{ptr @myri10ge_force_firmware, !142, !"myri10ge_force_firmware", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 303, i32 12}
!143 = !{ptr @__param_str_myri10ge_initial_mtu, !67, !"__param_str_myri10ge_initial_mtu", i1 false, i1 false}
!144 = !{ptr @myri10ge_initial_mtu, !145, !"myri10ge_initial_mtu", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 308, i32 12}
!146 = !{ptr @__param_str_myri10ge_napi_weight, !72, !"__param_str_myri10ge_napi_weight", i1 false, i1 false}
!147 = !{ptr @myri10ge_napi_weight, !148, !"myri10ge_napi_weight", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 312, i32 12}
!149 = !{ptr @__param_str_myri10ge_watchdog_timeout, !77, !"__param_str_myri10ge_watchdog_timeout", i1 false, i1 false}
!150 = !{ptr @myri10ge_watchdog_timeout, !151, !"myri10ge_watchdog_timeout", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 316, i32 12}
!152 = !{ptr @__param_str_myri10ge_max_irq_loops, !82, !"__param_str_myri10ge_max_irq_loops", i1 false, i1 false}
!153 = !{ptr @myri10ge_max_irq_loops, !154, !"myri10ge_max_irq_loops", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 320, i32 12}
!155 = !{ptr @__param_str_myri10ge_debug, !87, !"__param_str_myri10ge_debug", i1 false, i1 false}
!156 = !{ptr @myri10ge_debug, !157, !"myri10ge_debug", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 327, i32 12}
!158 = !{ptr @__param_str_myri10ge_fill_thresh, !92, !"__param_str_myri10ge_fill_thresh", i1 false, i1 false}
!159 = !{ptr @myri10ge_fill_thresh, !160, !"myri10ge_fill_thresh", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 331, i32 12}
!161 = !{ptr @__param_str_myri10ge_max_slices, !97, !"__param_str_myri10ge_max_slices", i1 false, i1 false}
!162 = !{ptr @myri10ge_max_slices, !163, !"myri10ge_max_slices", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 337, i32 12}
!164 = !{ptr @__param_str_myri10ge_rss_hash, !102, !"__param_str_myri10ge_rss_hash", i1 false, i1 false}
!165 = !{ptr @myri10ge_rss_hash, !166, !"myri10ge_rss_hash", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 341, i32 12}
!167 = !{ptr @__param_str_myri10ge_dca, !107, !"__param_str_myri10ge_dca", i1 false, i1 false}
!168 = !{ptr @myri10ge_dca, !169, !"myri10ge_dca", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 345, i32 12}
!170 = !{ptr @.str.3, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 4025, i32 2}
!172 = !{ptr @.str.4, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.5, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @myri10ge_init_module._entry, !171, !"_entry", i1 false, i1 false}
!175 = !{ptr @myri10ge_init_module._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.7, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 4028, i32 3}
!178 = !{ptr @myri10ge_init_module._entry.6, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @myri10ge_init_module._entry_ptr.8, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @myri10ge_driver, !181, !"myri10ge_driver", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3995, i32 26}
!182 = !{ptr @myri10ge_pci_tbl, !183, !"myri10ge_pci_tbl", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3984, i32 35}
!184 = !{ptr @myri10ge_probe.board_number, !185, !"board_number", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3746, i32 13}
!186 = !{ptr @myri10ge_probe.__key, !187, !"__key", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3761, i32 2}
!188 = !{ptr @.str.9, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.10, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3764, i32 3}
!191 = !{ptr @.str.11, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.12, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.13, !190, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @myri10ge_probe._entry, !190, !"_entry", i1 false, i1 false}
!195 = !{ptr @myri10ge_probe._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.15, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3777, i32 3}
!198 = !{ptr @myri10ge_probe._entry.14, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @myri10ge_probe._entry_ptr.16, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.18, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3786, i32 3}
!202 = !{ptr @myri10ge_probe._entry.17, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @myri10ge_probe._entry_ptr.19, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.21, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3801, i32 3}
!206 = !{ptr @myri10ge_probe._entry.20, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @myri10ge_probe._entry_ptr.22, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.24, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3812, i32 3}
!210 = !{ptr @myri10ge_probe._entry.23, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @myri10ge_probe._entry_ptr.25, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.27, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3831, i32 3}
!214 = !{ptr @myri10ge_probe._entry.26, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @myri10ge_probe._entry_ptr.28, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.30, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3837, i32 3}
!218 = !{ptr @myri10ge_probe._entry.29, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @myri10ge_probe._entry_ptr.31, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.33, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3844, i32 3}
!222 = !{ptr @myri10ge_probe._entry.32, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @myri10ge_probe._entry_ptr.34, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @myri10ge_probe.__key.35, !225, !"__key", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3889, i32 2}
!226 = !{ptr @.str.36, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @myri10ge_probe.__key.37, !228, !"__key", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3892, i32 2}
!229 = !{ptr @.str.38, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.40, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3895, i32 3}
!232 = !{ptr @myri10ge_probe._entry.39, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @myri10ge_probe._entry_ptr.41, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.43, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3899, i32 3}
!236 = !{ptr @.str.44, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @myri10ge_probe._entry.42, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @myri10ge_probe._entry_ptr.45, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.46, !235, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.47, !235, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.49, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3903, i32 3}
!243 = !{ptr @myri10ge_probe._entry.48, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @myri10ge_probe._entry_ptr.50, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.51, !242, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.52, !242, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.54, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3922, i32 3}
!249 = !{ptr @myri10ge_probe._entry.53, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @myri10ge_probe._entry_ptr.55, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.56, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 473, i32 19}
!253 = !{ptr @.str.57, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 484, i32 19}
!255 = !{ptr @.str.58, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 488, i32 33}
!257 = !{ptr @.str.59, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 498, i32 2}
!259 = !{ptr @.str.60, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @myri10ge_read_mac_addr._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @myri10ge_read_mac_addr._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.61, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3206, i32 4}
!264 = !{ptr @.str.62, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @myri10ge_select_firmware._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @myri10ge_select_firmware._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.64, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3215, i32 4}
!269 = !{ptr @myri10ge_select_firmware._entry.63, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @myri10ge_select_firmware._entry_ptr.65, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.67, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3220, i32 4}
!273 = !{ptr @myri10ge_select_firmware._entry.66, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @myri10ge_select_firmware._entry_ptr.68, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.70, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3244, i32 3}
!277 = !{ptr @myri10ge_select_firmware._entry.69, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @myri10ge_select_firmware._entry_ptr.71, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.72, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 258, i32 36}
!281 = distinct !{null, !282, !"myri10ge_fw_aligned", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 258, i32 14}
!283 = !{ptr @.str.73, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3149, i32 3}
!285 = !{ptr @.str.74, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @myri10ge_firmware_probe._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @myri10ge_firmware_probe._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.76, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3153, i32 3}
!290 = !{ptr @.str.77, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @myri10ge_firmware_probe._entry.75, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @myri10ge_firmware_probe._entry_ptr.78, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.80, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3181, i32 3}
!295 = !{ptr @myri10ge_firmware_probe._entry.79, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @myri10ge_firmware_probe._entry_ptr.81, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.83, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3183, i32 3}
!299 = !{ptr @myri10ge_firmware_probe._entry.82, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @myri10ge_firmware_probe._entry_ptr.84, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.85, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3077, i32 6}
!303 = !{ptr @.str.86, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @myri10ge_enable_ecrc._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @myri10ge_enable_ecrc._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.88, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3085, i32 4}
!308 = !{ptr @myri10ge_enable_ecrc._entry.87, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @myri10ge_enable_ecrc._entry_ptr.89, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.91, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3090, i32 4}
!312 = !{ptr @myri10ge_enable_ecrc._entry.90, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @myri10ge_enable_ecrc._entry_ptr.92, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.94, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3103, i32 3}
!316 = !{ptr @myri10ge_enable_ecrc._entry.93, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @myri10ge_enable_ecrc._entry_ptr.95, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.97, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3105, i32 3}
!320 = !{ptr @myri10ge_enable_ecrc._entry.96, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @myri10ge_enable_ecrc._entry_ptr.98, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.100, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3114, i32 2}
!324 = !{ptr @myri10ge_enable_ecrc._entry.99, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @myri10ge_enable_ecrc._entry_ptr.101, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.102, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 849, i32 15}
!328 = !{ptr @.str.103, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 877, i32 10}
!330 = !{ptr @.str.104, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 886, i32 10}
!332 = !{ptr @.str.105, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 896, i32 10}
!334 = !{ptr @.str.106, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 908, i32 3}
!336 = !{ptr @.str.107, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @myri10ge_dma_test._entry, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @myri10ge_dma_test._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!339 = distinct !{null, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!341 = !{ptr @.str.109, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 445, i32 4}
!343 = !{ptr @.str.110, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @myri10ge_send_cmd._entry, !342, !"_entry", i1 false, i1 false}
!345 = !{ptr @myri10ge_send_cmd._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.112, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 452, i32 2}
!348 = !{ptr @myri10ge_send_cmd._entry.111, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @myri10ge_send_cmd._entry_ptr.113, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.114, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../include/linux/mm.h", i32 717, i32 2}
!352 = !{ptr @.str.115, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 257, i32 38}
!354 = distinct !{null, !355, !"myri10ge_fw_unaligned", i1 false, i1 false}
!355 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 257, i32 14}
!356 = !{ptr @.str.116, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 722, i32 3}
!358 = !{ptr @.str.117, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @myri10ge_load_firmware._entry, !357, !"_entry", i1 false, i1 false}
!360 = !{ptr @myri10ge_load_firmware._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.119, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 731, i32 4}
!363 = !{ptr @myri10ge_load_firmware._entry.118, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @myri10ge_load_firmware._entry_ptr.120, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.122, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 735, i32 3}
!367 = !{ptr @myri10ge_load_firmware._entry.121, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @myri10ge_load_firmware._entry_ptr.123, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.125, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 738, i32 4}
!371 = !{ptr @myri10ge_load_firmware._entry.124, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @myri10ge_load_firmware._entry_ptr.126, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.128, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 741, i32 4}
!375 = !{ptr @myri10ge_load_firmware._entry.127, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @myri10ge_load_firmware._entry_ptr.129, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.131, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 744, i32 4}
!379 = !{ptr @myri10ge_load_firmware._entry.130, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @myri10ge_load_firmware._entry_ptr.132, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.133, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 747, i32 20}
!383 = !{ptr @.str.135, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 790, i32 3}
!385 = !{ptr @myri10ge_load_firmware._entry.134, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @myri10ge_load_firmware._entry_ptr.136, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.137, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 583, i32 3}
!389 = !{ptr @.str.138, !388, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @myri10ge_load_hotplug_firmware._entry, !388, !"_entry", i1 false, i1 false}
!391 = !{ptr @myri10ge_load_hotplug_firmware._entry_ptr, !388, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.140, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 593, i32 3}
!394 = !{ptr @myri10ge_load_hotplug_firmware._entry.139, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @myri10ge_load_hotplug_firmware._entry_ptr.141, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.143, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 601, i32 3}
!398 = !{ptr @myri10ge_load_hotplug_firmware._entry.142, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @myri10ge_load_hotplug_firmware._entry_ptr.144, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.146, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 629, i32 3}
!402 = !{ptr @myri10ge_load_hotplug_firmware._entry.145, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @myri10ge_load_hotplug_firmware._entry_ptr.147, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.148, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 550, i32 3}
!406 = !{ptr @.str.149, !405, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @myri10ge_validate_firmware._entry, !405, !"_entry", i1 false, i1 false}
!408 = !{ptr @myri10ge_validate_firmware._entry_ptr, !405, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.150, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 558, i32 26}
!411 = !{ptr @.str.152, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 563, i32 3}
!413 = !{ptr @myri10ge_validate_firmware._entry.151, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @myri10ge_validate_firmware._entry_ptr.153, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.155, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 564, i32 3}
!417 = !{ptr @myri10ge_validate_firmware._entry.154, !416, !"_entry", i1 false, i1 false}
!418 = !{ptr @myri10ge_validate_firmware._entry_ptr.156, !416, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.157, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 655, i32 3}
!421 = !{ptr @.str.158, !420, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @myri10ge_adopt_running_firmware._entry, !420, !"_entry", i1 false, i1 false}
!423 = !{ptr @myri10ge_adopt_running_firmware._entry_ptr, !420, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.160, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 676, i32 3}
!426 = !{ptr @myri10ge_adopt_running_firmware._entry.159, !425, !"_entry", i1 false, i1 false}
!427 = !{ptr @myri10ge_adopt_running_firmware._entry_ptr.161, !425, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.162, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 700, i32 3}
!430 = !{ptr @.str.163, !429, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @myri10ge_get_firmware_capabilities._entry, !429, !"_entry", i1 false, i1 false}
!432 = !{ptr @myri10ge_get_firmware_capabilities._entry_ptr, !429, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.164, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3628, i32 3}
!435 = !{ptr @.str.165, !434, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @myri10ge_probe_slices._entry, !434, !"_entry", i1 false, i1 false}
!437 = !{ptr @myri10ge_probe_slices._entry_ptr, !434, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.167, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3637, i32 3}
!440 = !{ptr @myri10ge_probe_slices._entry.166, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @myri10ge_probe_slices._entry_ptr.168, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @myri10ge_probe_slices._entry.169, !443, !"_entry", i1 false, i1 false}
!443 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3647, i32 3}
!444 = !{ptr @myri10ge_probe_slices._entry_ptr.170, !443, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.172, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3657, i32 3}
!447 = !{ptr @myri10ge_probe_slices._entry.171, !446, !"_entry", i1 false, i1 false}
!448 = !{ptr @myri10ge_probe_slices._entry_ptr.173, !446, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.174, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 260, i32 40}
!451 = distinct !{null, !452, !"myri10ge_fw_rss_aligned", i1 false, i1 false}
!452 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 260, i32 14}
!453 = !{ptr @.str.175, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 259, i32 42}
!455 = distinct !{null, !456, !"myri10ge_fw_rss_unaligned", i1 false, i1 false}
!456 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 259, i32 14}
!457 = !{ptr @.str.176, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!459 = !{ptr @.str.177, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 929, i32 3}
!461 = !{ptr @myri10ge_reset._entry, !460, !"_entry", i1 false, i1 false}
!462 = !{ptr @myri10ge_reset._entry_ptr, !460, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.179, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 966, i32 4}
!465 = !{ptr @myri10ge_reset._entry.178, !464, !"_entry", i1 false, i1 false}
!466 = !{ptr @myri10ge_reset._entry_ptr.180, !464, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.182, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 995, i32 4}
!469 = !{ptr @myri10ge_reset._entry.181, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @myri10ge_reset._entry_ptr.183, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.185, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 1025, i32 3}
!473 = !{ptr @myri10ge_reset._entry.184, !472, !"_entry", i1 false, i1 false}
!474 = !{ptr @myri10ge_reset._entry_ptr.186, !472, !"_entry_ptr", i1 false, i1 false}
!475 = !{ptr @.str.187, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 823, i32 24}
!477 = !{ptr @.str.188, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2963, i32 19}
!479 = !{ptr @.str.189, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2978, i32 19}
!481 = !{ptr @.str.190, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2992, i32 20}
!483 = !{ptr @.str.191, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3000, i32 19}
!485 = !{ptr @.str.192, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 839, i32 24}
!487 = !{ptr @myri10ge_netdev_ops, !488, !"myri10ge_netdev_ops", i1 false, i1 false}
!488 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3728, i32 36}
!489 = !{ptr @.str.193, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2332, i32 20}
!491 = !{ptr @.str.194, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2346, i32 20}
!493 = !{ptr @.str.195, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2394, i32 20}
!495 = !{ptr @.str.196, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2407, i32 20}
!497 = !{ptr @.str.197, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2425, i32 19}
!499 = !{ptr @.str.198, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2437, i32 19}
!501 = !{ptr @.str.199, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2446, i32 19}
!503 = !{ptr @.str.200, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2021, i32 19}
!505 = !{ptr @.str.201, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2028, i32 19}
!507 = !{ptr @.str.202, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2499, i32 20}
!509 = !{ptr @.str.203, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2504, i32 20}
!511 = !{ptr @.str.204, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2872, i32 24}
!513 = distinct !{null, !514, !"__already_done", i1 false, i1 false}
!514 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!515 = !{ptr @.str.205, !514, !"<string literal>", i1 false, i1 false}
!516 = !{ptr @.str.206, !514, !"<string literal>", i1 false, i1 false}
!517 = !{ptr @.str.207, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3022, i32 19}
!519 = !{ptr @.str.208, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3036, i32 19}
!521 = !{ptr @.str.209, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2164, i32 5}
!523 = !{ptr @.str.210, !522, !"<string literal>", i1 false, i1 false}
!524 = !{ptr @myri10ge_request_irq._entry, !522, !"_entry", i1 false, i1 false}
!525 = !{ptr @myri10ge_request_irq._entry_ptr, !522, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @.str.212, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2173, i32 5}
!528 = !{ptr @myri10ge_request_irq._entry.211, !527, !"_entry", i1 false, i1 false}
!529 = !{ptr @myri10ge_request_irq._entry_ptr.213, !527, !"_entry_ptr", i1 false, i1 false}
!530 = !{ptr @.str.214, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2185, i32 6}
!532 = !{ptr @.str.216, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2190, i32 5}
!534 = !{ptr @myri10ge_request_irq._entry.215, !533, !"_entry", i1 false, i1 false}
!535 = !{ptr @myri10ge_request_irq._entry_ptr.217, !533, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.219, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 2206, i32 4}
!538 = !{ptr @myri10ge_request_irq._entry.218, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @myri10ge_request_irq._entry_ptr.220, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.221, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 1582, i32 26}
!542 = !{ptr @.str.222, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 1495, i32 5}
!544 = !{ptr @.str.223, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 1499, i32 5}
!546 = !{ptr @.str.224, !545, !"<string literal>", i1 false, i1 false}
!547 = !{ptr @.str.225, !545, !"<string literal>", i1 false, i1 false}
!548 = !{ptr @.str.226, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 1511, i32 26}
!550 = !{ptr @.str.227, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3356, i32 27}
!552 = !{ptr @.str.228, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3360, i32 9}
!554 = !{ptr @myri10ge_ethtool_ops, !555, !"myri10ge_ethtool_ops", i1 false, i1 false}
!555 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 1918, i32 33}
!556 = !{ptr @myri10ge_gstrings_main_stats, !557, !"myri10ge_gstrings_main_stats", i1 false, i1 false}
!557 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 1723, i32 19}
!558 = !{ptr @myri10ge_gstrings_slice_stats, !559, !"myri10ge_gstrings_slice_stats", i1 false, i1 false}
!559 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 1745, i32 19}
!560 = !{ptr @.str.229, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 1879, i32 3}
!562 = !{ptr @myri10ge_led._entry, !561, !"_entry", i1 false, i1 false}
!563 = !{ptr @myri10ge_led._entry_ptr, !561, !"_entry_ptr", i1 false, i1 false}
!564 = !{ptr @.str.231, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 1887, i32 3}
!566 = !{ptr @myri10ge_led._entry.230, !565, !"_entry", i1 false, i1 false}
!567 = !{ptr @myri10ge_led._entry_ptr.232, !565, !"_entry_ptr", i1 false, i1 false}
!568 = !{ptr @.str.233, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 1620, i32 22}
!570 = !{ptr @.str.234, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 1626, i32 23}
!572 = !{ptr @.str.235, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3403, i32 24}
!574 = !{ptr @.str.236, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3404, i32 40}
!576 = !{ptr @.str.237, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3404, i32 45}
!578 = !{ptr @.str.238, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3432, i32 26}
!580 = !{ptr @.str.239, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3449, i32 4}
!582 = !{ptr @.str.240, !581, !"<string literal>", i1 false, i1 false}
!583 = !{ptr @myri10ge_watchdog.__UNIQUE_ID_ddebug642, !581, !"__UNIQUE_ID_ddebug642", i1 false, i1 false}
!584 = !{ptr @.str.241, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3453, i32 24}
!586 = !{ptr @myri10ge_reset_recover, !587, !"myri10ge_reset_recover", i1 false, i1 false}
!587 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 335, i32 12}
!588 = !{ptr @.str.242, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 538, i32 3}
!590 = !{ptr @.str.243, !589, !"<string literal>", i1 false, i1 false}
!591 = !{ptr @myri10ge_dummy_rdma._entry, !589, !"_entry", i1 false, i1 false}
!592 = !{ptr @myri10ge_dummy_rdma._entry_ptr, !589, !"_entry_ptr", i1 false, i1 false}
!593 = !{ptr @.str.244, !589, !"<string literal>", i1 false, i1 false}
!594 = !{ptr @.str.245, !589, !"<string literal>", i1 false, i1 false}
!595 = !{ptr @myri10ge_pm_ops, !596, !"myri10ge_pm_ops", i1 false, i1 false}
!596 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3993, i32 8}
!597 = !{ptr @.str.246, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/net/ethernet/myricom/myri10ge/myri10ge.c", i32 3280, i32 23}
!599 = !{!"sp"}
!600 = !{i32 1, !"wchar_size", i32 2}
!601 = !{i32 1, !"min_enum_size", i32 4}
!602 = !{i32 8, !"branch-target-enforcement", i32 0}
!603 = !{i32 8, !"sign-return-address", i32 0}
!604 = !{i32 8, !"sign-return-address-all", i32 0}
!605 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!606 = !{i32 7, !"uwtable", i32 1}
!607 = !{i32 7, !"frame-pointer", i32 2}
!608 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!609 = !{!"auto-init"}
!610 = !{i64 6153407}
!611 = !{i64 2159412550}
!612 = !{i64 2159413479}
!613 = !{i8 0, i8 2}
!614 = !{!"branch_weights", i32 1, i32 2000}
!615 = !{i32 0, i32 33}
!616 = !{i64 2159286788}
!617 = !{i64 6153187}
!618 = !{i64 2159287004}
!619 = !{i64 2159306965}
!620 = !{i64 2159307875}
!621 = !{i64 2159308018}
!622 = !{i64 6152989}
!623 = !{i64 2148959453, i64 2148959458, i64 2148959471, i64 2148959515, i64 2148959549, i64 2148959570}
!624 = !{i64 2159271337}
!625 = !{!"branch_weights", i32 2000, i32 1}
!626 = !{i64 2153413591, i64 2153414074, i64 2153413628, i64 2153413684, i64 2153413718, i64 2153413742, i64 2153413783, i64 2153413804, i64 2153413832, i64 2153413866}
!627 = !{i64 2148566090}
!628 = !{i64 2148480823, i64 2148480855, i64 2148480884, i64 2148480918, i64 2148480949, i64 2148480972}
!629 = !{i64 2148566319}
!630 = !{i64 2159264831}
!631 = !{i64 2159265677}
!632 = !{i64 2159289820}
!633 = !{i64 975129}
!634 = !{i64 2153437564, i64 2153438048, i64 2153437601, i64 2153437657, i64 2153437691, i64 2153437715, i64 2153437756, i64 2153437777, i64 2153437805, i64 2153437839}
!635 = !{i64 2148477638, i64 2148477664, i64 2148477693, i64 2148477727, i64 2148477758, i64 2148477781}
!636 = !{i64 2159320035}
!637 = !{i64 2159320244}
!638 = !{i64 2159320387}
!639 = !{i64 6152792}
!640 = !{i64 2159350526}
!641 = !{i64 2154690723, i64 2154691211, i64 2154690760, i64 2154690816, i64 2154690850, i64 2154690874, i64 2154690915, i64 2154690936, i64 2154690964, i64 2154690998}
!642 = !{i64 2159353198}
!643 = !{i64 2159353401}
!644 = !{i64 2159352886}
!645 = !{i64 2159353600}
!646 = !{i64 2159353743}
!647 = !{i64 2159356020}
!648 = !{i64 2159328943}
!649 = !{i64 2159325425}
!650 = !{i64 2159329444}
!651 = !{i64 2159329286}
!652 = !{i64 2159329528}
!653 = !{i64 2159333844}
!654 = !{i64 2159336895}
!655 = !{i64 2159339984}
!656 = !{i64 2159339659}
