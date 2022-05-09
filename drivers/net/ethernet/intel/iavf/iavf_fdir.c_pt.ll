; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/iavf/iavf_fdir.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/iavf/iavf_fdir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iavf_fdir_fltr = type { i32, %struct.list_head, i32, %struct.iavf_fdir_eth, %struct.iavf_fdir_eth, %struct.iavf_fdir_ip, %struct.iavf_fdir_ip, %struct.iavf_fdir_extra, %struct.iavf_fdir_extra, i32, i8, i8, [2 x %struct.iavf_flex_word], i32, i32, i32, %struct.virtchnl_fdir_add }
%struct.list_head = type { ptr, ptr }
%struct.iavf_fdir_eth = type { i16 }
%struct.iavf_fdir_ip = type { %union.anon.160, i16, i16, i32, i32, %union.anon.161, i8 }
%union.anon.160 = type { %struct.iavf_ipv6_addrs }
%struct.iavf_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%union.anon.161 = type { i8 }
%struct.iavf_fdir_extra = type { [2 x i32] }
%struct.iavf_flex_word = type { i16, i16 }
%struct.virtchnl_fdir_add = type { i16, i16, i32, %struct.virtchnl_fdir_rule, i32 }
%struct.virtchnl_fdir_rule = type { %struct.virtchnl_proto_hdrs, %struct.virtchnl_filter_action_set }
%struct.virtchnl_proto_hdrs = type { i8, [3 x i8], i32, [32 x %struct.virtchnl_proto_hdr] }
%struct.virtchnl_proto_hdr = type { i32, i32, [64 x i8] }
%struct.virtchnl_filter_action_set = type { i32, [8 x %struct.virtchnl_filter_action] }
%struct.virtchnl_filter_action = type { i32, %union.anon.162 }
%union.anon.162 = type { %struct.anon.164, [24 x i8] }
%struct.anon.164 = type { i8, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.sctphdr = type { i16, i16, i32, i32 }
%struct.iavf_adapter = type { %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.wait_queue_head, ptr, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.spinlock, [25 x i8], i32, i32, ptr, i32, i32, ptr, i64, i32, i32, i32, i32, i32, ptr, ptr, i32, i64, ptr, ptr, %struct.iavf_hw, i32, i32, i32, %struct.delayed_work, i8, i8, i32, i32, i32, ptr, ptr, %struct.virtchnl_version_info, %struct.virtchnl_vlan_caps, i16, %struct.iavf_eth_stats, %struct.iavf_vsi, i32, i64, i16, i16, ptr, ptr, %struct.iavf_channel_config, i8, %struct.list_head, %struct.spinlock, i16, i16, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iavf_hw = type { ptr, ptr, %struct.iavf_mac_info, %struct.iavf_bus_info, i16, i16, i16, i16, i8, %struct.iavf_hw_capabilities, %struct.iavf_adminq_info, i32, [16 x i8] }
%struct.iavf_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.iavf_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.iavf_hw_capabilities = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.iavf_adminq_info = type { %struct.iavf_adminq_ring, %struct.iavf_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.iavf_adminq_ring = type { %struct.iavf_virt_mem, %struct.iavf_dma_mem, %struct.iavf_virt_mem, %union.anon.154, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.iavf_dma_mem = type { ptr, i32, i32 }
%struct.iavf_virt_mem = type { ptr, i32 }
%union.anon.154 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.virtchnl_version_info = type { i32, i32 }
%struct.virtchnl_vlan_caps = type { %struct.virtchnl_vlan_filtering_caps, %struct.virtchnl_vlan_offload_caps }
%struct.virtchnl_vlan_filtering_caps = type { %struct.virtchnl_vlan_supported_caps, i32, i16, [2 x i8] }
%struct.virtchnl_vlan_supported_caps = type { i32, i32 }
%struct.virtchnl_vlan_offload_caps = type { %struct.virtchnl_vlan_supported_caps, %struct.virtchnl_vlan_supported_caps, i32, i8, [3 x i8] }
%struct.iavf_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.iavf_vsi = type { ptr, ptr, [128 x i32], [128 x i32], i16, i16, [1 x i32], i32, i16, i16, ptr }
%struct.iavf_channel_config = type { [4 x %struct.virtchnl_channel_info], i32, i8 }
%struct.virtchnl_channel_info = type { i16, i16, i32, i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.153 = type { ptr }

@iavf_print_fdir_fltr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 658, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Rule ID: %u dst_ip: %pI4 src_ip %pI4 %s: dst_port %hu src_port %hu\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iavf_print_fdir_fltr\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/intel/iavf/iavf_fdir.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iavf_print_fdir_fltr._entry_ptr = internal global ptr @iavf_print_fdir_fltr._entry, section ".printk_index", align 4
@iavf_print_fdir_fltr._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 667, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Rule ID: %u dst_ip: %pI4 src_ip %pI4 %s: SPI %u\0A\00", [47 x i8] zeroinitializer }, align 32
@iavf_print_fdir_fltr._entry_ptr.7 = internal global ptr @iavf_print_fdir_fltr._entry.5, section ".printk_index", align 4
@iavf_print_fdir_fltr._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 675, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Rule ID: %u dst_ip: %pI4 src_ip %pI4 proto: %u L4_bytes: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@iavf_print_fdir_fltr._entry_ptr.10 = internal global ptr @iavf_print_fdir_fltr._entry.8, section ".printk_index", align 4
@iavf_print_fdir_fltr._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 686, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Rule ID: %u dst_ip: %pI6 src_ip %pI6 %s: dst_port %hu src_port %hu\0A\00", [60 x i8] zeroinitializer }, align 32
@iavf_print_fdir_fltr._entry_ptr.13 = internal global ptr @iavf_print_fdir_fltr._entry.11, section ".printk_index", align 4
@iavf_print_fdir_fltr._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 695, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Rule ID: %u dst_ip: %pI6 src_ip %pI6 %s: SPI %u\0A\00", [47 x i8] zeroinitializer }, align 32
@iavf_print_fdir_fltr._entry_ptr.16 = internal global ptr @iavf_print_fdir_fltr._entry.14, section ".printk_index", align 4
@iavf_print_fdir_fltr._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 703, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Rule ID: %u dst_ip: %pI6 src_ip %pI6 proto: %u L4_bytes: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@iavf_print_fdir_fltr._entry_ptr.19 = internal global ptr @iavf_print_fdir_fltr._entry.17, section ".printk_index", align 4
@iavf_print_fdir_fltr._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 708, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Rule ID: %u eth_type: 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@iavf_print_fdir_fltr._entry_ptr.22 = internal global ptr @iavf_print_fdir_fltr._entry.20, section ".printk_index", align 4
@ipv6_addr_full_mask = internal constant { { { [16 x i8] } }, [16 x i8] } { { { [16 x i8] } } { { [16 x i8] } { [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" } }, [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TCP\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UDP\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SCTP\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AH\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ESP\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Other\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.31 = internal global [15 x i64] [i64 13, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 16, i64 2152, i64 4500, i64 8805]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 16, i64 4, i64 6, i64 10, i64 13]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [15 x i64] [i64 13, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.36 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 652, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 662, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 670, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 680, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 690, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 698, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 706, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c"ipv6_addr_full_mask\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 12, i32 30 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 611, i32 10 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 614, i32 10 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 617, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 620, i32 10 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 623, i32 10 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [47 x i8] c"../drivers/net/ethernet/intel/iavf/iavf_fdir.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 626, i32 10 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @iavf_print_fdir_fltr._entry, ptr @iavf_print_fdir_fltr._entry.11, ptr @iavf_print_fdir_fltr._entry.14, ptr @iavf_print_fdir_fltr._entry.17, ptr @iavf_print_fdir_fltr._entry.20, ptr @iavf_print_fdir_fltr._entry.5, ptr @iavf_print_fdir_fltr._entry.8, ptr @iavf_print_fdir_fltr._entry_ptr, ptr @iavf_print_fdir_fltr._entry_ptr.10, ptr @iavf_print_fdir_fltr._entry_ptr.13, ptr @iavf_print_fdir_fltr._entry_ptr.16, ptr @iavf_print_fdir_fltr._entry_ptr.19, ptr @iavf_print_fdir_fltr._entry_ptr.22, ptr @iavf_print_fdir_fltr._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @ipv6_addr_full_mask, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_print_fdir_fltr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_print_fdir_fltr._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_print_fdir_fltr._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_print_fdir_fltr._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_print_fdir_fltr._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_print_fdir_fltr._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_print_fdir_fltr._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv6_addr_full_mask to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_fill_fdir_add_msg(ptr nocapture noundef readonly %adapter, ptr noundef %fltr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_add_msg = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 16
  %rule_cfg = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 16, i32 3
  %count.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 16, i32 3, i32 0, i32 2
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr %count.i, align 4
  %arrayidx.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %arrayidx.i, align 4
  %eth_mask.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 4
  %3 = ptrtoint ptr %eth_mask.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %eth_mask.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %cmp.i = icmp eq i16 %4, -1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %entry
  %eth_data.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 3
  %5 = ptrtoint ptr %eth_data.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %eth_data.i, align 4
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %if.end.i [
    i16 2048, label %if.then.i.cleanup_crit_edge
    i16 -31011, label %if.then.i.cleanup_crit_edge448
  ]

if.then.i.cleanup_crit_edge448:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %h_proto.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %1, i32 2, i32 12
  %8 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %6, ptr %h_proto.i, align 1
  %field_selector.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %1, i32 1
  %9 = ptrtoint ptr %field_selector.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %field_selector.i, align 4
  %or.i = or i32 %10, 4
  store i32 %or.i, ptr %field_selector.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i, %entry.if.end_crit_edge
  %flow_type = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 2
  %11 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flow_type, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %12, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb8
    i32 4, label %sw.bb12
    i32 5, label %sw.bb16
    i32 6, label %sw.bb20
    i32 7, label %sw.bb24
    i32 8, label %sw.bb28
    i32 9, label %sw.bb32
    i32 10, label %sw.bb36
    i32 11, label %sw.bb40
    i32 12, label %sw.bb44
    i32 13, label %if.end.if.end50_crit_edge
  ]

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %14 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count.i, align 4
  %inc.i120 = add i32 %15, 1
  store i32 %inc.i120, ptr %count.i, align 4
  %arrayidx.i121 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %15
  %buffer.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %15, i32 2
  %16 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %arrayidx.i121, align 4
  %ip_mask.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6
  %17 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp.i122 = icmp eq i8 %19, -1
  br i1 %cmp.i122, label %if.then.i125, label %sw.bb.if.end.i126_crit_edge

sw.bb.if.end.i126_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i126

if.then.i125:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %20 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 4
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %buffer.i, i32 0, i32 1
  %23 = ptrtoint ptr %tos.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %tos.i, align 1
  %field_selector.i123 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %15, i32 1
  %24 = ptrtoint ptr %field_selector.i123 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %field_selector.i123, align 4
  %or.i124 = or i32 %25, 4
  store i32 %or.i124, ptr %field_selector.i123, align 4
  br label %if.end.i126

if.end.i126:                                      ; preds = %if.then.i125, %sw.bb.if.end.i126_crit_edge
  %proto.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 6
  %26 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp4.i = icmp eq i8 %27, -1
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i126.if.end11.i_crit_edge

if.end.i126.if.end11.i_crit_edge:                 ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #11
  %proto8.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 6
  %28 = ptrtoint ptr %proto8.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %proto8.i, align 1
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %buffer.i, i32 0, i32 6
  %30 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %protocol.i, align 1
  %field_selector9.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %15, i32 1
  %31 = ptrtoint ptr %field_selector9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %field_selector9.i, align 4
  %or10.i = or i32 %32, 16
  store i32 %or10.i, ptr %field_selector9.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i, %if.end.i126.if.end11.i_crit_edge
  %33 = ptrtoint ptr %ip_mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ip_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp13.i = icmp eq i32 %34, -1
  br i1 %cmp13.i, label %if.then15.i, label %if.end11.i.if.end20.i_crit_edge

if.end11.i.if.end20.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %ip_data16.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5
  %35 = ptrtoint ptr %ip_data16.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ip_data16.i, align 4
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %buffer.i, i32 0, i32 8
  %37 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %saddr.i, align 4
  %field_selector18.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %15, i32 1
  %38 = ptrtoint ptr %field_selector18.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %field_selector18.i, align 4
  %or19.i = or i32 %39, 1
  store i32 %or19.i, ptr %field_selector18.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then15.i, %if.end11.i.if.end20.i_crit_edge
  %dst_ip.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %dst_ip.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dst_ip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp22.i = icmp eq i32 %41, -1
  br i1 %cmp22.i, label %if.then24.i, label %if.end20.i.iavf_fill_fdir_ip4_hdr.exit_crit_edge

if.end20.i.iavf_fill_fdir_ip4_hdr.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_fill_fdir_ip4_hdr.exit

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %dst_ip26.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %dst_ip26.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dst_ip26.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %buffer.i, i32 0, i32 9
  %44 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %daddr.i, align 4
  %field_selector27.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %15, i32 1
  %45 = ptrtoint ptr %field_selector27.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %field_selector27.i, align 4
  %or28.i = or i32 %46, 2
  store i32 %or28.i, ptr %field_selector27.i, align 4
  br label %iavf_fill_fdir_ip4_hdr.exit

iavf_fill_fdir_ip4_hdr.exit:                      ; preds = %if.then24.i, %if.end20.i.iavf_fill_fdir_ip4_hdr.exit_crit_edge
  %ip_ver.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 10
  %47 = ptrtoint ptr %ip_ver.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 4, ptr %ip_ver.i, align 4
  %48 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count.i, align 4
  %inc.i128 = add i32 %49, 1
  store i32 %inc.i128, ptr %count.i, align 4
  %arrayidx.i129 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %49
  %buffer.i130 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %49, i32 2
  %50 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 6, ptr %arrayidx.i129, align 4
  %src_port.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 1
  %51 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %src_port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %52)
  %cmp.i131 = icmp eq i16 %52, -1
  br i1 %cmp.i131, label %if.then.i134, label %iavf_fill_fdir_ip4_hdr.exit.if.end.i135_crit_edge

iavf_fill_fdir_ip4_hdr.exit.if.end.i135_crit_edge: ; preds = %iavf_fill_fdir_ip4_hdr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i135

if.then.i134:                                     ; preds = %iavf_fill_fdir_ip4_hdr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %src_port2.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 1
  %53 = ptrtoint ptr %src_port2.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %src_port2.i, align 4
  %55 = ptrtoint ptr %buffer.i130 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %buffer.i130, align 4
  %field_selector.i132 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %49, i32 1
  %56 = ptrtoint ptr %field_selector.i132 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %field_selector.i132, align 4
  %or.i133 = or i32 %57, 1
  store i32 %or.i133, ptr %field_selector.i132, align 4
  br label %if.end.i135

if.end.i135:                                      ; preds = %if.then.i134, %iavf_fill_fdir_ip4_hdr.exit.if.end.i135_crit_edge
  %dst_port.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 2
  %58 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %dst_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %59)
  %cmp5.i = icmp eq i16 %59, -1
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i135.if.end50_crit_edge

if.end.i135.if.end50_crit_edge:                   ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then7.i:                                       ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #11
  %dst_port9.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 2
  %60 = ptrtoint ptr %dst_port9.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %dst_port9.i, align 2
  %dest.i = getelementptr inbounds %struct.tcphdr, ptr %buffer.i130, i32 0, i32 1
  %62 = ptrtoint ptr %dest.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %dest.i, align 2
  %field_selector10.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %49, i32 1
  %63 = ptrtoint ptr %field_selector10.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %field_selector10.i, align 4
  %or11.i = or i32 %64, 2
  store i32 %or11.i, ptr %field_selector10.i, align 4
  br label %if.end50

sw.bb4:                                           ; preds = %if.end
  %65 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count.i, align 4
  %inc.i137 = add i32 %66, 1
  store i32 %inc.i137, ptr %count.i, align 4
  %arrayidx.i138 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %66
  %buffer.i139 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %66, i32 2
  %67 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 4, ptr %arrayidx.i138, align 4
  %ip_mask.i140 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6
  %68 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 5
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %70)
  %cmp.i141 = icmp eq i8 %70, -1
  br i1 %cmp.i141, label %if.then.i145, label %sw.bb4.if.end.i148_crit_edge

sw.bb4.if.end.i148_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i148

if.then.i145:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %71 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 5
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 4
  %tos.i142 = getelementptr inbounds %struct.iphdr, ptr %buffer.i139, i32 0, i32 1
  %74 = ptrtoint ptr %tos.i142 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %tos.i142, align 1
  %field_selector.i143 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %66, i32 1
  %75 = ptrtoint ptr %field_selector.i143 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %field_selector.i143, align 4
  %or.i144 = or i32 %76, 4
  store i32 %or.i144, ptr %field_selector.i143, align 4
  br label %if.end.i148

if.end.i148:                                      ; preds = %if.then.i145, %sw.bb4.if.end.i148_crit_edge
  %proto.i146 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 6
  %77 = ptrtoint ptr %proto.i146 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %proto.i146, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %78)
  %cmp4.i147 = icmp eq i8 %78, -1
  br i1 %cmp4.i147, label %if.then6.i153, label %if.end.i148.if.end11.i155_crit_edge

if.end.i148.if.end11.i155_crit_edge:              ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i155

if.then6.i153:                                    ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #11
  %proto8.i149 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 6
  %79 = ptrtoint ptr %proto8.i149 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %proto8.i149, align 1
  %protocol.i150 = getelementptr inbounds %struct.iphdr, ptr %buffer.i139, i32 0, i32 6
  %81 = ptrtoint ptr %protocol.i150 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %protocol.i150, align 1
  %field_selector9.i151 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %66, i32 1
  %82 = ptrtoint ptr %field_selector9.i151 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %field_selector9.i151, align 4
  %or10.i152 = or i32 %83, 16
  store i32 %or10.i152, ptr %field_selector9.i151, align 4
  br label %if.end11.i155

if.end11.i155:                                    ; preds = %if.then6.i153, %if.end.i148.if.end11.i155_crit_edge
  %84 = ptrtoint ptr %ip_mask.i140 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ip_mask.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %cmp13.i154 = icmp eq i32 %85, -1
  br i1 %cmp13.i154, label %if.then15.i160, label %if.end11.i155.if.end20.i163_crit_edge

if.end11.i155.if.end20.i163_crit_edge:            ; preds = %if.end11.i155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i163

if.then15.i160:                                   ; preds = %if.end11.i155
  call void @__sanitizer_cov_trace_pc() #11
  %ip_data16.i156 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5
  %86 = ptrtoint ptr %ip_data16.i156 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ip_data16.i156, align 4
  %saddr.i157 = getelementptr inbounds %struct.iphdr, ptr %buffer.i139, i32 0, i32 8
  %88 = ptrtoint ptr %saddr.i157 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %saddr.i157, align 4
  %field_selector18.i158 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %66, i32 1
  %89 = ptrtoint ptr %field_selector18.i158 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %field_selector18.i158, align 4
  %or19.i159 = or i32 %90, 1
  store i32 %or19.i159, ptr %field_selector18.i158, align 4
  br label %if.end20.i163

if.end20.i163:                                    ; preds = %if.then15.i160, %if.end11.i155.if.end20.i163_crit_edge
  %dst_ip.i161 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %91 = ptrtoint ptr %dst_ip.i161 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dst_ip.i161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %cmp22.i162 = icmp eq i32 %92, -1
  br i1 %cmp22.i162, label %if.then24.i168, label %if.end20.i163.iavf_fill_fdir_ip4_hdr.exit170_crit_edge

if.end20.i163.iavf_fill_fdir_ip4_hdr.exit170_crit_edge: ; preds = %if.end20.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_fill_fdir_ip4_hdr.exit170

if.then24.i168:                                   ; preds = %if.end20.i163
  call void @__sanitizer_cov_trace_pc() #11
  %dst_ip26.i164 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %93 = ptrtoint ptr %dst_ip26.i164 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dst_ip26.i164, align 4
  %daddr.i165 = getelementptr inbounds %struct.iphdr, ptr %buffer.i139, i32 0, i32 9
  %95 = ptrtoint ptr %daddr.i165 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %daddr.i165, align 4
  %field_selector27.i166 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %66, i32 1
  %96 = ptrtoint ptr %field_selector27.i166 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %field_selector27.i166, align 4
  %or28.i167 = or i32 %97, 2
  store i32 %or28.i167, ptr %field_selector27.i166, align 4
  br label %iavf_fill_fdir_ip4_hdr.exit170

iavf_fill_fdir_ip4_hdr.exit170:                   ; preds = %if.then24.i168, %if.end20.i163.iavf_fill_fdir_ip4_hdr.exit170_crit_edge
  %ip_ver.i169 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 10
  %98 = ptrtoint ptr %ip_ver.i169 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 4, ptr %ip_ver.i169, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %99 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %count.i, align 4
  %inc.i172 = add i32 %100, 1
  store i32 %inc.i172, ptr %count.i, align 4
  %arrayidx.i173 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %100
  %buffer.i174 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %100, i32 2
  %101 = ptrtoint ptr %arrayidx.i173 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 4, ptr %arrayidx.i173, align 4
  %ip_mask.i175 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6
  %102 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 5
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %102, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %104)
  %cmp.i176 = icmp eq i8 %104, -1
  br i1 %cmp.i176, label %if.then.i180, label %sw.bb8.if.end.i183_crit_edge

sw.bb8.if.end.i183_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i183

if.then.i180:                                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  %105 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 5
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %105, align 4
  %tos.i177 = getelementptr inbounds %struct.iphdr, ptr %buffer.i174, i32 0, i32 1
  %108 = ptrtoint ptr %tos.i177 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %tos.i177, align 1
  %field_selector.i178 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %100, i32 1
  %109 = ptrtoint ptr %field_selector.i178 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %field_selector.i178, align 4
  %or.i179 = or i32 %110, 4
  store i32 %or.i179, ptr %field_selector.i178, align 4
  br label %if.end.i183

if.end.i183:                                      ; preds = %if.then.i180, %sw.bb8.if.end.i183_crit_edge
  %proto.i181 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 6
  %111 = ptrtoint ptr %proto.i181 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %proto.i181, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %112)
  %cmp4.i182 = icmp eq i8 %112, -1
  br i1 %cmp4.i182, label %if.then6.i188, label %if.end.i183.if.end11.i190_crit_edge

if.end.i183.if.end11.i190_crit_edge:              ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i190

if.then6.i188:                                    ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #11
  %proto8.i184 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 6
  %113 = ptrtoint ptr %proto8.i184 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %proto8.i184, align 1
  %protocol.i185 = getelementptr inbounds %struct.iphdr, ptr %buffer.i174, i32 0, i32 6
  %115 = ptrtoint ptr %protocol.i185 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %protocol.i185, align 1
  %field_selector9.i186 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %100, i32 1
  %116 = ptrtoint ptr %field_selector9.i186 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %field_selector9.i186, align 4
  %or10.i187 = or i32 %117, 16
  store i32 %or10.i187, ptr %field_selector9.i186, align 4
  br label %if.end11.i190

if.end11.i190:                                    ; preds = %if.then6.i188, %if.end.i183.if.end11.i190_crit_edge
  %118 = ptrtoint ptr %ip_mask.i175 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ip_mask.i175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %119)
  %cmp13.i189 = icmp eq i32 %119, -1
  br i1 %cmp13.i189, label %if.then15.i195, label %if.end11.i190.if.end20.i198_crit_edge

if.end11.i190.if.end20.i198_crit_edge:            ; preds = %if.end11.i190
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i198

if.then15.i195:                                   ; preds = %if.end11.i190
  call void @__sanitizer_cov_trace_pc() #11
  %ip_data16.i191 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5
  %120 = ptrtoint ptr %ip_data16.i191 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ip_data16.i191, align 4
  %saddr.i192 = getelementptr inbounds %struct.iphdr, ptr %buffer.i174, i32 0, i32 8
  %122 = ptrtoint ptr %saddr.i192 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %saddr.i192, align 4
  %field_selector18.i193 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %100, i32 1
  %123 = ptrtoint ptr %field_selector18.i193 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %field_selector18.i193, align 4
  %or19.i194 = or i32 %124, 1
  store i32 %or19.i194, ptr %field_selector18.i193, align 4
  br label %if.end20.i198

if.end20.i198:                                    ; preds = %if.then15.i195, %if.end11.i190.if.end20.i198_crit_edge
  %dst_ip.i196 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %125 = ptrtoint ptr %dst_ip.i196 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dst_ip.i196, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %126)
  %cmp22.i197 = icmp eq i32 %126, -1
  br i1 %cmp22.i197, label %if.then24.i203, label %if.end20.i198.iavf_fill_fdir_ip4_hdr.exit205_crit_edge

if.end20.i198.iavf_fill_fdir_ip4_hdr.exit205_crit_edge: ; preds = %if.end20.i198
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_fill_fdir_ip4_hdr.exit205

if.then24.i203:                                   ; preds = %if.end20.i198
  call void @__sanitizer_cov_trace_pc() #11
  %dst_ip26.i199 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %127 = ptrtoint ptr %dst_ip26.i199 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dst_ip26.i199, align 4
  %daddr.i200 = getelementptr inbounds %struct.iphdr, ptr %buffer.i174, i32 0, i32 9
  %129 = ptrtoint ptr %daddr.i200 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %daddr.i200, align 4
  %field_selector27.i201 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %100, i32 1
  %130 = ptrtoint ptr %field_selector27.i201 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %field_selector27.i201, align 4
  %or28.i202 = or i32 %131, 2
  store i32 %or28.i202, ptr %field_selector27.i201, align 4
  br label %iavf_fill_fdir_ip4_hdr.exit205

iavf_fill_fdir_ip4_hdr.exit205:                   ; preds = %if.then24.i203, %if.end20.i198.iavf_fill_fdir_ip4_hdr.exit205_crit_edge
  %ip_ver.i204 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 10
  %132 = ptrtoint ptr %ip_ver.i204 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 4, ptr %ip_ver.i204, align 4
  %133 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %count.i, align 4
  %inc.i207 = add i32 %134, 1
  store i32 %inc.i207, ptr %count.i, align 4
  %arrayidx.i208 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %134
  %buffer.i209 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %134, i32 2
  %135 = ptrtoint ptr %arrayidx.i208 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 8, ptr %arrayidx.i208, align 4
  %src_port.i210 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 1
  %136 = ptrtoint ptr %src_port.i210 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %src_port.i210, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %137)
  %cmp.i211 = icmp eq i16 %137, -1
  br i1 %cmp.i211, label %if.then.i215, label %iavf_fill_fdir_ip4_hdr.exit205.if.end.i218_crit_edge

iavf_fill_fdir_ip4_hdr.exit205.if.end.i218_crit_edge: ; preds = %iavf_fill_fdir_ip4_hdr.exit205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i218

if.then.i215:                                     ; preds = %iavf_fill_fdir_ip4_hdr.exit205
  call void @__sanitizer_cov_trace_pc() #11
  %src_port2.i212 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 1
  %138 = ptrtoint ptr %src_port2.i212 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %src_port2.i212, align 4
  %140 = ptrtoint ptr %buffer.i209 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %139, ptr %buffer.i209, align 4
  %field_selector.i213 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %134, i32 1
  %141 = ptrtoint ptr %field_selector.i213 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %field_selector.i213, align 4
  %or.i214 = or i32 %142, 1
  store i32 %or.i214, ptr %field_selector.i213, align 4
  br label %if.end.i218

if.end.i218:                                      ; preds = %if.then.i215, %iavf_fill_fdir_ip4_hdr.exit205.if.end.i218_crit_edge
  %dst_port.i216 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 2
  %143 = ptrtoint ptr %dst_port.i216 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %dst_port.i216, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %144)
  %cmp5.i217 = icmp eq i16 %144, -1
  br i1 %cmp5.i217, label %if.then7.i223, label %if.end.i218.if.end50_crit_edge

if.end.i218.if.end50_crit_edge:                   ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then7.i223:                                    ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #11
  %dst_port9.i219 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 2
  %145 = ptrtoint ptr %dst_port9.i219 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %dst_port9.i219, align 2
  %dest.i220 = getelementptr inbounds %struct.sctphdr, ptr %buffer.i209, i32 0, i32 1
  %147 = ptrtoint ptr %dest.i220 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %dest.i220, align 2
  %field_selector10.i221 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %134, i32 1
  %148 = ptrtoint ptr %field_selector10.i221 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %field_selector10.i221, align 4
  %or11.i222 = or i32 %149, 2
  store i32 %or11.i222, ptr %field_selector10.i221, align 4
  br label %if.end50

sw.bb12:                                          ; preds = %if.end
  %150 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %count.i, align 4
  %inc.i225 = add i32 %151, 1
  store i32 %inc.i225, ptr %count.i, align 4
  %arrayidx.i226 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %151
  %buffer.i227 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %151, i32 2
  %152 = ptrtoint ptr %arrayidx.i226 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 4, ptr %arrayidx.i226, align 4
  %ip_mask.i228 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6
  %153 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 5
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %153, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %155)
  %cmp.i229 = icmp eq i8 %155, -1
  br i1 %cmp.i229, label %if.then.i233, label %sw.bb12.if.end.i236_crit_edge

sw.bb12.if.end.i236_crit_edge:                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i236

if.then.i233:                                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  %156 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 5
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %156, align 4
  %tos.i230 = getelementptr inbounds %struct.iphdr, ptr %buffer.i227, i32 0, i32 1
  %159 = ptrtoint ptr %tos.i230 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %tos.i230, align 1
  %field_selector.i231 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %151, i32 1
  %160 = ptrtoint ptr %field_selector.i231 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %field_selector.i231, align 4
  %or.i232 = or i32 %161, 4
  store i32 %or.i232, ptr %field_selector.i231, align 4
  br label %if.end.i236

if.end.i236:                                      ; preds = %if.then.i233, %sw.bb12.if.end.i236_crit_edge
  %proto.i234 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 6
  %162 = ptrtoint ptr %proto.i234 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %proto.i234, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %163)
  %cmp4.i235 = icmp eq i8 %163, -1
  br i1 %cmp4.i235, label %if.then6.i241, label %if.end.i236.if.end11.i243_crit_edge

if.end.i236.if.end11.i243_crit_edge:              ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i243

if.then6.i241:                                    ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #11
  %proto8.i237 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 6
  %164 = ptrtoint ptr %proto8.i237 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %proto8.i237, align 1
  %protocol.i238 = getelementptr inbounds %struct.iphdr, ptr %buffer.i227, i32 0, i32 6
  %166 = ptrtoint ptr %protocol.i238 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %protocol.i238, align 1
  %field_selector9.i239 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %151, i32 1
  %167 = ptrtoint ptr %field_selector9.i239 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %field_selector9.i239, align 4
  %or10.i240 = or i32 %168, 16
  store i32 %or10.i240, ptr %field_selector9.i239, align 4
  br label %if.end11.i243

if.end11.i243:                                    ; preds = %if.then6.i241, %if.end.i236.if.end11.i243_crit_edge
  %169 = ptrtoint ptr %ip_mask.i228 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %ip_mask.i228, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %170)
  %cmp13.i242 = icmp eq i32 %170, -1
  br i1 %cmp13.i242, label %if.then15.i248, label %if.end11.i243.if.end20.i251_crit_edge

if.end11.i243.if.end20.i251_crit_edge:            ; preds = %if.end11.i243
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i251

if.then15.i248:                                   ; preds = %if.end11.i243
  call void @__sanitizer_cov_trace_pc() #11
  %ip_data16.i244 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5
  %171 = ptrtoint ptr %ip_data16.i244 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %ip_data16.i244, align 4
  %saddr.i245 = getelementptr inbounds %struct.iphdr, ptr %buffer.i227, i32 0, i32 8
  %173 = ptrtoint ptr %saddr.i245 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %saddr.i245, align 4
  %field_selector18.i246 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %151, i32 1
  %174 = ptrtoint ptr %field_selector18.i246 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %field_selector18.i246, align 4
  %or19.i247 = or i32 %175, 1
  store i32 %or19.i247, ptr %field_selector18.i246, align 4
  br label %if.end20.i251

if.end20.i251:                                    ; preds = %if.then15.i248, %if.end11.i243.if.end20.i251_crit_edge
  %dst_ip.i249 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %176 = ptrtoint ptr %dst_ip.i249 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %dst_ip.i249, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %177)
  %cmp22.i250 = icmp eq i32 %177, -1
  br i1 %cmp22.i250, label %if.then24.i256, label %if.end20.i251.iavf_fill_fdir_ip4_hdr.exit258_crit_edge

if.end20.i251.iavf_fill_fdir_ip4_hdr.exit258_crit_edge: ; preds = %if.end20.i251
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_fill_fdir_ip4_hdr.exit258

if.then24.i256:                                   ; preds = %if.end20.i251
  call void @__sanitizer_cov_trace_pc() #11
  %dst_ip26.i252 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %178 = ptrtoint ptr %dst_ip26.i252 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %dst_ip26.i252, align 4
  %daddr.i253 = getelementptr inbounds %struct.iphdr, ptr %buffer.i227, i32 0, i32 9
  %180 = ptrtoint ptr %daddr.i253 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %daddr.i253, align 4
  %field_selector27.i254 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %151, i32 1
  %181 = ptrtoint ptr %field_selector27.i254 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %field_selector27.i254, align 4
  %or28.i255 = or i32 %182, 2
  store i32 %or28.i255, ptr %field_selector27.i254, align 4
  br label %iavf_fill_fdir_ip4_hdr.exit258

iavf_fill_fdir_ip4_hdr.exit258:                   ; preds = %if.then24.i256, %if.end20.i251.iavf_fill_fdir_ip4_hdr.exit258_crit_edge
  %ip_ver.i257 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 10
  %183 = ptrtoint ptr %ip_ver.i257 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 4, ptr %ip_ver.i257, align 4
  %184 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %count.i, align 4
  %inc.i260 = add i32 %185, 1
  store i32 %inc.i260, ptr %count.i, align 4
  %arrayidx.i261 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %185
  %186 = ptrtoint ptr %arrayidx.i261 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 16, ptr %arrayidx.i261, align 4
  %spi.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 4
  %187 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %spi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %188)
  %cmp.i262 = icmp eq i32 %188, -1
  br i1 %cmp.i262, label %if.then.i265, label %iavf_fill_fdir_ip4_hdr.exit258.if.end50_crit_edge

iavf_fill_fdir_ip4_hdr.exit258.if.end50_crit_edge: ; preds = %iavf_fill_fdir_ip4_hdr.exit258
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then.i265:                                     ; preds = %iavf_fill_fdir_ip4_hdr.exit258
  call void @__sanitizer_cov_trace_pc() #11
  %spi1.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 4
  %189 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %spi1.i, align 4
  %spi2.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %185, i32 2, i32 4
  %191 = ptrtoint ptr %spi2.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %spi2.i, align 4
  %field_selector.i263 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %185, i32 1
  %192 = ptrtoint ptr %field_selector.i263 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %field_selector.i263, align 4
  %or.i264 = or i32 %193, 1
  store i32 %or.i264, ptr %field_selector.i263, align 4
  br label %if.end50

sw.bb16:                                          ; preds = %if.end
  %194 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %count.i, align 4
  %inc.i268 = add i32 %195, 1
  store i32 %inc.i268, ptr %count.i, align 4
  %arrayidx.i269 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %195
  %buffer.i270 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %195, i32 2
  %196 = ptrtoint ptr %arrayidx.i269 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 4, ptr %arrayidx.i269, align 4
  %ip_mask.i271 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6
  %197 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 5
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %197, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %199)
  %cmp.i272 = icmp eq i8 %199, -1
  br i1 %cmp.i272, label %if.then.i276, label %sw.bb16.if.end.i279_crit_edge

sw.bb16.if.end.i279_crit_edge:                    ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i279

if.then.i276:                                     ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  %200 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 5
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %200, align 4
  %tos.i273 = getelementptr inbounds %struct.iphdr, ptr %buffer.i270, i32 0, i32 1
  %203 = ptrtoint ptr %tos.i273 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %202, ptr %tos.i273, align 1
  %field_selector.i274 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %195, i32 1
  %204 = ptrtoint ptr %field_selector.i274 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %field_selector.i274, align 4
  %or.i275 = or i32 %205, 4
  store i32 %or.i275, ptr %field_selector.i274, align 4
  br label %if.end.i279

if.end.i279:                                      ; preds = %if.then.i276, %sw.bb16.if.end.i279_crit_edge
  %proto.i277 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 6
  %206 = ptrtoint ptr %proto.i277 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %proto.i277, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %207)
  %cmp4.i278 = icmp eq i8 %207, -1
  br i1 %cmp4.i278, label %if.then6.i284, label %if.end.i279.if.end11.i286_crit_edge

if.end.i279.if.end11.i286_crit_edge:              ; preds = %if.end.i279
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i286

if.then6.i284:                                    ; preds = %if.end.i279
  call void @__sanitizer_cov_trace_pc() #11
  %proto8.i280 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 6
  %208 = ptrtoint ptr %proto8.i280 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %proto8.i280, align 1
  %protocol.i281 = getelementptr inbounds %struct.iphdr, ptr %buffer.i270, i32 0, i32 6
  %210 = ptrtoint ptr %protocol.i281 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %209, ptr %protocol.i281, align 1
  %field_selector9.i282 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %195, i32 1
  %211 = ptrtoint ptr %field_selector9.i282 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %field_selector9.i282, align 4
  %or10.i283 = or i32 %212, 16
  store i32 %or10.i283, ptr %field_selector9.i282, align 4
  br label %if.end11.i286

if.end11.i286:                                    ; preds = %if.then6.i284, %if.end.i279.if.end11.i286_crit_edge
  %213 = ptrtoint ptr %ip_mask.i271 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %ip_mask.i271, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %214)
  %cmp13.i285 = icmp eq i32 %214, -1
  br i1 %cmp13.i285, label %if.then15.i291, label %if.end11.i286.if.end20.i294_crit_edge

if.end11.i286.if.end20.i294_crit_edge:            ; preds = %if.end11.i286
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i294

if.then15.i291:                                   ; preds = %if.end11.i286
  call void @__sanitizer_cov_trace_pc() #11
  %ip_data16.i287 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5
  %215 = ptrtoint ptr %ip_data16.i287 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %ip_data16.i287, align 4
  %saddr.i288 = getelementptr inbounds %struct.iphdr, ptr %buffer.i270, i32 0, i32 8
  %217 = ptrtoint ptr %saddr.i288 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %saddr.i288, align 4
  %field_selector18.i289 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %195, i32 1
  %218 = ptrtoint ptr %field_selector18.i289 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %field_selector18.i289, align 4
  %or19.i290 = or i32 %219, 1
  store i32 %or19.i290, ptr %field_selector18.i289, align 4
  br label %if.end20.i294

if.end20.i294:                                    ; preds = %if.then15.i291, %if.end11.i286.if.end20.i294_crit_edge
  %dst_ip.i292 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %220 = ptrtoint ptr %dst_ip.i292 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %dst_ip.i292, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %221)
  %cmp22.i293 = icmp eq i32 %221, -1
  br i1 %cmp22.i293, label %if.then24.i299, label %if.end20.i294.iavf_fill_fdir_ip4_hdr.exit301_crit_edge

if.end20.i294.iavf_fill_fdir_ip4_hdr.exit301_crit_edge: ; preds = %if.end20.i294
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_fill_fdir_ip4_hdr.exit301

if.then24.i299:                                   ; preds = %if.end20.i294
  call void @__sanitizer_cov_trace_pc() #11
  %dst_ip26.i295 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %222 = ptrtoint ptr %dst_ip26.i295 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %dst_ip26.i295, align 4
  %daddr.i296 = getelementptr inbounds %struct.iphdr, ptr %buffer.i270, i32 0, i32 9
  %224 = ptrtoint ptr %daddr.i296 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %daddr.i296, align 4
  %field_selector27.i297 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %195, i32 1
  %225 = ptrtoint ptr %field_selector27.i297 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %field_selector27.i297, align 4
  %or28.i298 = or i32 %226, 2
  store i32 %or28.i298, ptr %field_selector27.i297, align 4
  br label %iavf_fill_fdir_ip4_hdr.exit301

iavf_fill_fdir_ip4_hdr.exit301:                   ; preds = %if.then24.i299, %if.end20.i294.iavf_fill_fdir_ip4_hdr.exit301_crit_edge
  %ip_ver.i300 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 10
  %227 = ptrtoint ptr %ip_ver.i300 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 4, ptr %ip_ver.i300, align 4
  %228 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %count.i, align 4
  %inc.i303 = add i32 %229, 1
  store i32 %inc.i303, ptr %count.i, align 4
  %arrayidx.i304 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %229
  %230 = ptrtoint ptr %arrayidx.i304 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 15, ptr %arrayidx.i304, align 4
  %spi.i305 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 4
  %231 = ptrtoint ptr %spi.i305 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %spi.i305, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %232)
  %cmp.i306 = icmp eq i32 %232, -1
  br i1 %cmp.i306, label %if.then.i311, label %iavf_fill_fdir_ip4_hdr.exit301.if.end50_crit_edge

iavf_fill_fdir_ip4_hdr.exit301.if.end50_crit_edge: ; preds = %iavf_fill_fdir_ip4_hdr.exit301
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then.i311:                                     ; preds = %iavf_fill_fdir_ip4_hdr.exit301
  call void @__sanitizer_cov_trace_pc() #11
  %buffer.i307 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %229, i32 2
  %spi1.i308 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 4
  %233 = ptrtoint ptr %spi1.i308 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %spi1.i308, align 4
  %235 = ptrtoint ptr %buffer.i307 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %234, ptr %buffer.i307, align 4
  %field_selector.i309 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %229, i32 1
  %236 = ptrtoint ptr %field_selector.i309 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %field_selector.i309, align 4
  %or.i310 = or i32 %237, 1
  store i32 %or.i310, ptr %field_selector.i309, align 4
  br label %if.end50

sw.bb20:                                          ; preds = %if.end
  %238 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %count.i, align 4
  %inc.i314 = add i32 %239, 1
  store i32 %inc.i314, ptr %count.i, align 4
  %arrayidx.i315 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %239
  %buffer.i316 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %239, i32 2
  %240 = ptrtoint ptr %arrayidx.i315 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 4, ptr %arrayidx.i315, align 4
  %ip_mask.i317 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6
  %241 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 5
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %241, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %243)
  %cmp.i318 = icmp eq i8 %243, -1
  br i1 %cmp.i318, label %if.then.i322, label %sw.bb20.if.end.i325_crit_edge

sw.bb20.if.end.i325_crit_edge:                    ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i325

if.then.i322:                                     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  %244 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 5
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %244, align 4
  %tos.i319 = getelementptr inbounds %struct.iphdr, ptr %buffer.i316, i32 0, i32 1
  %247 = ptrtoint ptr %tos.i319 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %246, ptr %tos.i319, align 1
  %field_selector.i320 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %239, i32 1
  %248 = ptrtoint ptr %field_selector.i320 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %field_selector.i320, align 4
  %or.i321 = or i32 %249, 4
  store i32 %or.i321, ptr %field_selector.i320, align 4
  br label %if.end.i325

if.end.i325:                                      ; preds = %if.then.i322, %sw.bb20.if.end.i325_crit_edge
  %proto.i323 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 6
  %250 = ptrtoint ptr %proto.i323 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %proto.i323, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %251)
  %cmp4.i324 = icmp eq i8 %251, -1
  br i1 %cmp4.i324, label %if.then6.i330, label %if.end.i325.if.end11.i332_crit_edge

if.end.i325.if.end11.i332_crit_edge:              ; preds = %if.end.i325
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i332

if.then6.i330:                                    ; preds = %if.end.i325
  call void @__sanitizer_cov_trace_pc() #11
  %proto8.i326 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 6
  %252 = ptrtoint ptr %proto8.i326 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %proto8.i326, align 1
  %protocol.i327 = getelementptr inbounds %struct.iphdr, ptr %buffer.i316, i32 0, i32 6
  %254 = ptrtoint ptr %protocol.i327 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %253, ptr %protocol.i327, align 1
  %field_selector9.i328 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %239, i32 1
  %255 = ptrtoint ptr %field_selector9.i328 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %field_selector9.i328, align 4
  %or10.i329 = or i32 %256, 16
  store i32 %or10.i329, ptr %field_selector9.i328, align 4
  br label %if.end11.i332

if.end11.i332:                                    ; preds = %if.then6.i330, %if.end.i325.if.end11.i332_crit_edge
  %257 = ptrtoint ptr %ip_mask.i317 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %ip_mask.i317, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %258)
  %cmp13.i331 = icmp eq i32 %258, -1
  br i1 %cmp13.i331, label %if.then15.i337, label %if.end11.i332.if.end20.i340_crit_edge

if.end11.i332.if.end20.i340_crit_edge:            ; preds = %if.end11.i332
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i340

if.then15.i337:                                   ; preds = %if.end11.i332
  call void @__sanitizer_cov_trace_pc() #11
  %ip_data16.i333 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5
  %259 = ptrtoint ptr %ip_data16.i333 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %ip_data16.i333, align 4
  %saddr.i334 = getelementptr inbounds %struct.iphdr, ptr %buffer.i316, i32 0, i32 8
  %261 = ptrtoint ptr %saddr.i334 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %260, ptr %saddr.i334, align 4
  %field_selector18.i335 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %239, i32 1
  %262 = ptrtoint ptr %field_selector18.i335 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %field_selector18.i335, align 4
  %or19.i336 = or i32 %263, 1
  store i32 %or19.i336, ptr %field_selector18.i335, align 4
  br label %if.end20.i340

if.end20.i340:                                    ; preds = %if.then15.i337, %if.end11.i332.if.end20.i340_crit_edge
  %dst_ip.i338 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %264 = ptrtoint ptr %dst_ip.i338 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %dst_ip.i338, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %265)
  %cmp22.i339 = icmp eq i32 %265, -1
  br i1 %cmp22.i339, label %if.then24.i345, label %if.end20.i340.iavf_fill_fdir_ip4_hdr.exit347_crit_edge

if.end20.i340.iavf_fill_fdir_ip4_hdr.exit347_crit_edge: ; preds = %if.end20.i340
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_fill_fdir_ip4_hdr.exit347

if.then24.i345:                                   ; preds = %if.end20.i340
  call void @__sanitizer_cov_trace_pc() #11
  %dst_ip26.i341 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %266 = ptrtoint ptr %dst_ip26.i341 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %dst_ip26.i341, align 4
  %daddr.i342 = getelementptr inbounds %struct.iphdr, ptr %buffer.i316, i32 0, i32 9
  %268 = ptrtoint ptr %daddr.i342 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %267, ptr %daddr.i342, align 4
  %field_selector27.i343 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %239, i32 1
  %269 = ptrtoint ptr %field_selector27.i343 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %field_selector27.i343, align 4
  %or28.i344 = or i32 %270, 2
  store i32 %or28.i344, ptr %field_selector27.i343, align 4
  br label %iavf_fill_fdir_ip4_hdr.exit347

iavf_fill_fdir_ip4_hdr.exit347:                   ; preds = %if.then24.i345, %if.end20.i340.iavf_fill_fdir_ip4_hdr.exit347_crit_edge
  %ip_ver.i346 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 10
  %271 = ptrtoint ptr %ip_ver.i346 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 4, ptr %ip_ver.i346, align 4
  %272 = ptrtoint ptr %proto.i323 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %proto.i323, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %273)
  %tobool.not.i = icmp eq i8 %273, 0
  br i1 %tobool.not.i, label %iavf_fill_fdir_ip4_hdr.exit347.if.end50_crit_edge, label %if.end.i354

iavf_fill_fdir_ip4_hdr.exit347.if.end50_crit_edge: ; preds = %iavf_fill_fdir_ip4_hdr.exit347
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.end.i354:                                      ; preds = %iavf_fill_fdir_ip4_hdr.exit347
  %274 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %count.i, align 4
  %inc.i350 = add i32 %275, 1
  store i32 %inc.i350, ptr %count.i, align 4
  %arrayidx.i351 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %275
  %buffer.i352 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %275, i32 2
  %proto1.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 6
  %276 = ptrtoint ptr %proto1.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %proto1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %277)
  %cmp.i353 = icmp eq i8 %277, 115
  br i1 %cmp.i353, label %land.lhs.true.i, label %if.end.i354.cleanup_crit_edge

if.end.i354.cleanup_crit_edge:                    ; preds = %if.end.i354
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i354
  %l4_header.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 3
  %278 = ptrtoint ptr %l4_header.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %l4_header.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %279)
  %cmp4.i355 = icmp eq i32 %279, -1
  br i1 %cmp4.i355, label %if.then6.i358, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6.i358:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %280 = ptrtoint ptr %arrayidx.i351 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 14, ptr %arrayidx.i351, align 4
  %field_selector.i356 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %275, i32 1
  %281 = ptrtoint ptr %field_selector.i356 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %field_selector.i356, align 4
  %or.i357 = or i32 %282, 1
  store i32 %or.i357, ptr %field_selector.i356, align 4
  %l4_header8.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 3
  %283 = ptrtoint ptr %l4_header8.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %l4_header8.i, align 4
  %285 = ptrtoint ptr %buffer.i352 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %284, ptr %buffer.i352, align 4
  br label %if.end50

sw.bb24:                                          ; preds = %if.end
  tail call fastcc void @iavf_fill_fdir_ip6_hdr(ptr noundef %fltr, ptr noundef %rule_cfg)
  %286 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %count.i, align 4
  %inc.i361 = add i32 %287, 1
  store i32 %inc.i361, ptr %count.i, align 4
  %arrayidx.i362 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %287
  %buffer.i363 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %287, i32 2
  %288 = ptrtoint ptr %arrayidx.i362 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 6, ptr %arrayidx.i362, align 4
  %src_port.i364 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 1
  %289 = ptrtoint ptr %src_port.i364 to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %src_port.i364, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %290)
  %cmp.i365 = icmp eq i16 %290, -1
  br i1 %cmp.i365, label %if.then.i369, label %sw.bb24.if.end.i372_crit_edge

sw.bb24.if.end.i372_crit_edge:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i372

if.then.i369:                                     ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  %src_port2.i366 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 1
  %291 = ptrtoint ptr %src_port2.i366 to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %src_port2.i366, align 4
  %293 = ptrtoint ptr %buffer.i363 to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 %292, ptr %buffer.i363, align 4
  %field_selector.i367 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %287, i32 1
  %294 = ptrtoint ptr %field_selector.i367 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %field_selector.i367, align 4
  %or.i368 = or i32 %295, 1
  store i32 %or.i368, ptr %field_selector.i367, align 4
  br label %if.end.i372

if.end.i372:                                      ; preds = %if.then.i369, %sw.bb24.if.end.i372_crit_edge
  %dst_port.i370 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 2
  %296 = ptrtoint ptr %dst_port.i370 to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %dst_port.i370, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %297)
  %cmp5.i371 = icmp eq i16 %297, -1
  br i1 %cmp5.i371, label %if.then7.i377, label %if.end.i372.if.end50_crit_edge

if.end.i372.if.end50_crit_edge:                   ; preds = %if.end.i372
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then7.i377:                                    ; preds = %if.end.i372
  call void @__sanitizer_cov_trace_pc() #11
  %dst_port9.i373 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 2
  %298 = ptrtoint ptr %dst_port9.i373 to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %dst_port9.i373, align 2
  %dest.i374 = getelementptr inbounds %struct.tcphdr, ptr %buffer.i363, i32 0, i32 1
  %300 = ptrtoint ptr %dest.i374 to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 %299, ptr %dest.i374, align 2
  %field_selector10.i375 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %287, i32 1
  %301 = ptrtoint ptr %field_selector10.i375 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %field_selector10.i375, align 4
  %or11.i376 = or i32 %302, 2
  store i32 %or11.i376, ptr %field_selector10.i375, align 4
  br label %if.end50

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @iavf_fill_fdir_ip6_hdr(ptr noundef %fltr, ptr noundef %rule_cfg)
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end
  tail call fastcc void @iavf_fill_fdir_ip6_hdr(ptr noundef %fltr, ptr noundef %rule_cfg)
  %303 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %count.i, align 4
  %inc.i380 = add i32 %304, 1
  store i32 %inc.i380, ptr %count.i, align 4
  %arrayidx.i381 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %304
  %buffer.i382 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %304, i32 2
  %305 = ptrtoint ptr %arrayidx.i381 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 8, ptr %arrayidx.i381, align 4
  %src_port.i383 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 1
  %306 = ptrtoint ptr %src_port.i383 to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %src_port.i383, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %307)
  %cmp.i384 = icmp eq i16 %307, -1
  br i1 %cmp.i384, label %if.then.i388, label %sw.bb32.if.end.i391_crit_edge

sw.bb32.if.end.i391_crit_edge:                    ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i391

if.then.i388:                                     ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  %src_port2.i385 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 1
  %308 = ptrtoint ptr %src_port2.i385 to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %src_port2.i385, align 4
  %310 = ptrtoint ptr %buffer.i382 to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 %309, ptr %buffer.i382, align 4
  %field_selector.i386 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %304, i32 1
  %311 = ptrtoint ptr %field_selector.i386 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %field_selector.i386, align 4
  %or.i387 = or i32 %312, 1
  store i32 %or.i387, ptr %field_selector.i386, align 4
  br label %if.end.i391

if.end.i391:                                      ; preds = %if.then.i388, %sw.bb32.if.end.i391_crit_edge
  %dst_port.i389 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 2
  %313 = ptrtoint ptr %dst_port.i389 to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %dst_port.i389, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %314)
  %cmp5.i390 = icmp eq i16 %314, -1
  br i1 %cmp5.i390, label %if.then7.i396, label %if.end.i391.if.end50_crit_edge

if.end.i391.if.end50_crit_edge:                   ; preds = %if.end.i391
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then7.i396:                                    ; preds = %if.end.i391
  call void @__sanitizer_cov_trace_pc() #11
  %dst_port9.i392 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 2
  %315 = ptrtoint ptr %dst_port9.i392 to i32
  call void @__asan_load2_noabort(i32 %315)
  %316 = load i16, ptr %dst_port9.i392, align 2
  %dest.i393 = getelementptr inbounds %struct.sctphdr, ptr %buffer.i382, i32 0, i32 1
  %317 = ptrtoint ptr %dest.i393 to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 %316, ptr %dest.i393, align 2
  %field_selector10.i394 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %304, i32 1
  %318 = ptrtoint ptr %field_selector10.i394 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %field_selector10.i394, align 4
  %or11.i395 = or i32 %319, 2
  store i32 %or11.i395, ptr %field_selector10.i394, align 4
  br label %if.end50

sw.bb36:                                          ; preds = %if.end
  tail call fastcc void @iavf_fill_fdir_ip6_hdr(ptr noundef %fltr, ptr noundef %rule_cfg)
  %320 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %count.i, align 4
  %inc.i399 = add i32 %321, 1
  store i32 %inc.i399, ptr %count.i, align 4
  %arrayidx.i400 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %321
  %322 = ptrtoint ptr %arrayidx.i400 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 16, ptr %arrayidx.i400, align 4
  %spi.i401 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 4
  %323 = ptrtoint ptr %spi.i401 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %spi.i401, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %324)
  %cmp.i402 = icmp eq i32 %324, -1
  br i1 %cmp.i402, label %if.then.i407, label %sw.bb36.if.end50_crit_edge

sw.bb36.if.end50_crit_edge:                       ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then.i407:                                     ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  %spi1.i403 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 4
  %325 = ptrtoint ptr %spi1.i403 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %spi1.i403, align 4
  %spi2.i404 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %321, i32 2, i32 4
  %327 = ptrtoint ptr %spi2.i404 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %326, ptr %spi2.i404, align 4
  %field_selector.i405 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %321, i32 1
  %328 = ptrtoint ptr %field_selector.i405 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %field_selector.i405, align 4
  %or.i406 = or i32 %329, 1
  store i32 %or.i406, ptr %field_selector.i405, align 4
  br label %if.end50

sw.bb40:                                          ; preds = %if.end
  tail call fastcc void @iavf_fill_fdir_ip6_hdr(ptr noundef %fltr, ptr noundef %rule_cfg)
  %330 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %count.i, align 4
  %inc.i411 = add i32 %331, 1
  store i32 %inc.i411, ptr %count.i, align 4
  %arrayidx.i412 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %331
  %332 = ptrtoint ptr %arrayidx.i412 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 15, ptr %arrayidx.i412, align 4
  %spi.i413 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 4
  %333 = ptrtoint ptr %spi.i413 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %spi.i413, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %334)
  %cmp.i414 = icmp eq i32 %334, -1
  br i1 %cmp.i414, label %if.then.i419, label %sw.bb40.if.end50_crit_edge

sw.bb40.if.end50_crit_edge:                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then.i419:                                     ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #11
  %buffer.i415 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %331, i32 2
  %spi1.i416 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 4
  %335 = ptrtoint ptr %spi1.i416 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %spi1.i416, align 4
  %337 = ptrtoint ptr %buffer.i415 to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %336, ptr %buffer.i415, align 4
  %field_selector.i417 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %331, i32 1
  %338 = ptrtoint ptr %field_selector.i417 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %field_selector.i417, align 4
  %or.i418 = or i32 %339, 1
  store i32 %or.i418, ptr %field_selector.i417, align 4
  br label %if.end50

sw.bb44:                                          ; preds = %if.end
  tail call fastcc void @iavf_fill_fdir_ip6_hdr(ptr noundef %fltr, ptr noundef %rule_cfg)
  %proto.i422 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 6
  %340 = ptrtoint ptr %proto.i422 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %proto.i422, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %341)
  %tobool.not.i423 = icmp eq i8 %341, 0
  br i1 %tobool.not.i423, label %sw.bb44.if.end50_crit_edge, label %if.end.i430

sw.bb44.if.end50_crit_edge:                       ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.end.i430:                                      ; preds = %sw.bb44
  %342 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %count.i, align 4
  %inc.i425 = add i32 %343, 1
  store i32 %inc.i425, ptr %count.i, align 4
  %arrayidx.i426 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %343
  %buffer.i427 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %343, i32 2
  %proto1.i428 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 6
  %344 = ptrtoint ptr %proto1.i428 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %proto1.i428, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %345)
  %cmp.i429 = icmp eq i8 %345, 115
  br i1 %cmp.i429, label %land.lhs.true.i433, label %if.end.i430.cleanup_crit_edge

if.end.i430.cleanup_crit_edge:                    ; preds = %if.end.i430
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i433:                               ; preds = %if.end.i430
  %l4_header.i431 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 3
  %346 = ptrtoint ptr %l4_header.i431 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %l4_header.i431, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %347)
  %cmp4.i432 = icmp eq i32 %347, -1
  br i1 %cmp4.i432, label %if.then6.i437, label %land.lhs.true.i433.cleanup_crit_edge

land.lhs.true.i433.cleanup_crit_edge:             ; preds = %land.lhs.true.i433
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6.i437:                                    ; preds = %land.lhs.true.i433
  call void @__sanitizer_cov_trace_pc() #11
  %348 = ptrtoint ptr %arrayidx.i426 to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 14, ptr %arrayidx.i426, align 4
  %field_selector.i434 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rule_cfg, i32 0, i32 3, i32 %343, i32 1
  %349 = ptrtoint ptr %field_selector.i434 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %field_selector.i434, align 4
  %or.i435 = or i32 %350, 1
  store i32 %or.i435, ptr %field_selector.i434, align 4
  %l4_header8.i436 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 3
  %351 = ptrtoint ptr %l4_header8.i436 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %l4_header8.i436, align 4
  %353 = ptrtoint ptr %buffer.i427 to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %352, ptr %buffer.i427, align 4
  br label %if.end50

sw.epilog:                                        ; preds = %sw.bb28, %iavf_fill_fdir_ip4_hdr.exit170
  %call30 = tail call fastcc i32 @iavf_fill_fdir_udp_hdr(ptr noundef %fltr, ptr noundef %rule_cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool48.not = icmp eq i32 %call30, 0
  br i1 %tobool48.not, label %sw.epilog.if.end50_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog.if.end50_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.end50:                                         ; preds = %sw.epilog.if.end50_crit_edge, %if.then6.i437, %sw.bb44.if.end50_crit_edge, %if.then.i419, %sw.bb40.if.end50_crit_edge, %if.then.i407, %sw.bb36.if.end50_crit_edge, %if.then7.i396, %if.end.i391.if.end50_crit_edge, %if.then7.i377, %if.end.i372.if.end50_crit_edge, %if.then6.i358, %iavf_fill_fdir_ip4_hdr.exit347.if.end50_crit_edge, %if.then.i311, %iavf_fill_fdir_ip4_hdr.exit301.if.end50_crit_edge, %if.then.i265, %iavf_fill_fdir_ip4_hdr.exit258.if.end50_crit_edge, %if.then7.i223, %if.end.i218.if.end50_crit_edge, %if.then7.i, %if.end.i135.if.end50_crit_edge, %if.end.if.end50_crit_edge
  %id = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 45, i32 5
  %354 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %354)
  %355 = load i16, ptr %id, align 2
  %356 = ptrtoint ptr %vc_add_msg to i32
  call void @__asan_store2_noabort(i32 %356)
  store i16 %355, ptr %vc_add_msg, align 4
  %action_set = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 16, i32 3, i32 1
  %357 = ptrtoint ptr %action_set to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 1, ptr %action_set, align 4
  %action = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 9
  %358 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %action, align 4
  %actions = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 16, i32 3, i32 1, i32 1
  %360 = ptrtoint ptr %actions to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %359, ptr %actions, align 4
  %q_index = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 15
  %361 = ptrtoint ptr %q_index to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %q_index, align 4
  %conv = trunc i32 %362 to i16
  %act_conf = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 16, i32 3, i32 1, i32 1, i32 0, i32 1
  %363 = ptrtoint ptr %act_conf to i32
  call void @__asan_store2_noabort(i32 %363)
  store i16 %conv, ptr %act_conf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %sw.epilog.cleanup_crit_edge, %land.lhs.true.i433.cleanup_crit_edge, %if.end.i430.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i354.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge448
  %retval.0 = phi i32 [ 0, %if.end50 ], [ %call30, %sw.epilog.cleanup_crit_edge ], [ -95, %if.then.i.cleanup_crit_edge ], [ -95, %if.then.i.cleanup_crit_edge448 ], [ -95, %if.end.i430.cleanup_crit_edge ], [ -95, %land.lhs.true.i433.cleanup_crit_edge ], [ -95, %if.end.i354.cleanup_crit_edge ], [ -95, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iavf_fill_fdir_udp_hdr(ptr noundef readonly %fltr, ptr noundef %proto_hdrs) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 2
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %count, align 4
  %arrayidx = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %1
  %buffer = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %1, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %arrayidx, align 4
  %src_port = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %src_port, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %cmp = icmp eq i16 %4, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %src_port2 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %src_port2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %src_port2, align 4
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %buffer, align 2
  %field_selector = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %1, i32 1
  %8 = ptrtoint ptr %field_selector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %field_selector, align 4
  %or = or i32 %9, 1
  store i32 %or, ptr %field_selector, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dst_port = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dst_port, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp5 = icmp eq i16 %11, -1
  br i1 %cmp5, label %if.then7, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dst_port9 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %dst_port9 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dst_port9, align 2
  %dest = getelementptr inbounds %struct.udphdr, ptr %buffer, i32 0, i32 1
  %14 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %dest, align 2
  %field_selector10 = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %1, i32 1
  %15 = ptrtoint ptr %field_selector10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %field_selector10, align 4
  %or11 = or i32 %16, 2
  store i32 %or11, ptr %field_selector10, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %flex_cnt = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 11
  %17 = ptrtoint ptr %flex_cnt to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flex_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %if.end14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end12
  %dst_port.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 2
  %19 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dst_port.i, align 2
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %20, label %if.end14.cleanup_crit_edge [
    i16 2152, label %sw.bb.i
    i16 4500, label %sw.bb1.i
    i16 8805, label %sw.bb3.i
  ]

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end14
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count, align 4
  %inc.i.i = add i32 %23, 1
  store i32 %inc.i.i, ptr %count, align 4
  %arrayidx3.i.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %23
  %24 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 9, ptr %arrayidx3.i.i, align 4
  %ip_ver.i.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 10
  %25 = ptrtoint ptr %ip_ver.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ip_ver.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %cmp.i.i.i = icmp eq i8 %26, 4
  %conv3.i.i.i = select i1 %cmp.i.i.i, i16 42, i16 62
  %27 = ptrtoint ptr %flex_cnt to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flex_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp85.not.i.i = icmp eq i8 %28, 0
  br i1 %cmp85.not.i.i, label %sw.bb.i.sw.epilog.sink.split.i_crit_edge, label %for.body.lr.ph.i.i

sw.bb.i.sw.epilog.sink.split.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

for.body.lr.ph.i.i:                               ; preds = %sw.bb.i
  %buffer.i.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %23, i32 2
  %field_selector.i.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %23, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.087.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc52.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %ehdr.086.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %ehdr.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx5.i.i = getelementptr %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 12, i32 %i.087.i.i
  %29 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx5.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %conv3.i.i.i)
  %cmp8.i.i = icmp ult i16 %30, %conv3.i.i.i
  br i1 %cmp8.i.i, label %for.body.i.i.cleanup_crit_edge, label %if.end.i.i

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %for.body.i.i
  %sub15.i.i = sub i16 %30, %conv3.i.i.i
  %31 = zext i16 %sub15.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %sub15.i.i, label %if.end.i.i.cleanup_crit_edge [
    i16 4, label %if.end.i.i.sw.bb.i.i_crit_edge
    i16 6, label %if.end.i.i.sw.bb.i.i_crit_edge42
    i16 10, label %sw.bb22.i.i
    i16 13, label %sw.bb38.i.i
  ]

if.end.i.i.sw.bb.i.i_crit_edge42:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

if.end.i.i.sw.bb.i.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i.i:                                        ; preds = %if.end.i.i.sw.bb.i.i_crit_edge, %if.end.i.i.sw.bb.i.i_crit_edge42
  %word.i.i = getelementptr %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 12, i32 %i.087.i.i, i32 1
  %32 = ptrtoint ptr %word.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %word.i.i, align 2
  %34 = lshr i16 %sub15.i.i, 1
  %35 = zext i16 %34 to i32
  %arrayidx21.i.i = getelementptr i16, ptr %buffer.i.i, i32 %35
  %36 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %33, ptr %arrayidx21.i.i, align 2
  %37 = ptrtoint ptr %field_selector.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %field_selector.i.i, align 4
  %or.i.i = or i32 %38, 1
  store i32 %or.i.i, ptr %field_selector.i.i, align 4
  br label %for.inc.i.i

sw.bb22.i.i:                                      ; preds = %if.end.i.i
  %word25.i.i = getelementptr %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 12, i32 %i.087.i.i, i32 1
  %39 = ptrtoint ptr %word25.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %word25.i.i, align 2
  %41 = and i16 %40, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 133, i16 %41)
  %cmp27.not.i.i = icmp eq i16 %41, 133
  br i1 %cmp27.not.i.i, label %if.end30.i.i, label %sw.bb22.i.i.cleanup_crit_edge

sw.bb22.i.i.cleanup_crit_edge:                    ; preds = %sw.bb22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30.i.i:                                     ; preds = %sw.bb22.i.i
  %tobool.not.i.i = icmp eq ptr %ehdr.086.i.i, null
  br i1 %tobool.not.i.i, label %if.then31.i.i, label %if.end30.i.i.if.end36.i.i_crit_edge

if.end30.i.i.if.end36.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i.i

if.then31.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %count, align 4
  %inc34.i.i = add i32 %43, 1
  store i32 %inc34.i.i, ptr %count, align 4
  %arrayidx35.i.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %43
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.then31.i.i, %if.end30.i.i.if.end36.i.i_crit_edge
  %ehdr.1.i.i = phi ptr [ %ehdr.086.i.i, %if.end30.i.i.if.end36.i.i_crit_edge ], [ %arrayidx35.i.i, %if.then31.i.i ]
  %44 = ptrtoint ptr %ehdr.1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 10, ptr %ehdr.1.i.i, align 4
  br label %for.inc.i.i

sw.bb38.i.i:                                      ; preds = %if.end.i.i
  %tobool39.not.i.i = icmp eq ptr %ehdr.086.i.i, null
  br i1 %tobool39.not.i.i, label %sw.bb38.i.i.cleanup_crit_edge, label %if.end41.i.i

sw.bb38.i.i.cleanup_crit_edge:                    ; preds = %sw.bb38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41.i.i:                                     ; preds = %sw.bb38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %word44.i.i = getelementptr %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 12, i32 %i.087.i.i, i32 1
  %45 = ptrtoint ptr %word44.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %word44.i.i, align 2
  %47 = trunc i16 %46 to i8
  %conv47.i.i = and i8 %47, 63
  %arrayidx49.i.i = getelementptr %struct.virtchnl_proto_hdr, ptr %ehdr.086.i.i, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv47.i.i, ptr %arrayidx49.i.i, align 1
  %field_selector50.i.i = getelementptr inbounds %struct.virtchnl_proto_hdr, ptr %ehdr.086.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %field_selector50.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %field_selector50.i.i, align 4
  %or51.i.i = or i32 %50, 2
  store i32 %or51.i.i, ptr %field_selector50.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end41.i.i, %if.end36.i.i, %sw.bb.i.i
  %ehdr.2.i.i = phi ptr [ %ehdr.086.i.i, %if.end41.i.i ], [ %ehdr.1.i.i, %if.end36.i.i ], [ %ehdr.086.i.i, %sw.bb.i.i ]
  %inc52.i.i = add nuw nsw i32 %i.087.i.i, 1
  %51 = ptrtoint ptr %flex_cnt to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %flex_cnt, align 1
  %conv.i.i = zext i8 %52 to i32
  %cmp.i.i = icmp ult i32 %inc52.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.sw.epilog.sink.split.i_crit_edge

for.inc.i.i.sw.epilog.sink.split.i_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

sw.bb1.i:                                         ; preds = %if.end14
  %53 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count, align 4
  %inc.i12.i = add i32 %54, 1
  store i32 %inc.i12.i, ptr %count, align 4
  %arrayidx3.i13.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %54
  %55 = ptrtoint ptr %arrayidx3.i13.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 15, ptr %arrayidx3.i13.i, align 4
  %ip_ver.i.i14.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 10
  %56 = ptrtoint ptr %ip_ver.i.i14.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ip_ver.i.i14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %57)
  %cmp.i.i15.i = icmp eq i8 %57, 4
  %conv3.i.i16.i = select i1 %cmp.i.i15.i, i16 42, i16 62
  %58 = ptrtoint ptr %flex_cnt to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %flex_cnt, align 1
  %conv.i18.i = zext i8 %59 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp57.not.i.i = icmp eq i8 %59, 0
  br i1 %cmp57.not.i.i, label %sw.bb1.i.cleanup_crit_edge, label %sw.bb1.i.for.body.i21.i_crit_edge

sw.bb1.i.for.body.i21.i_crit_edge:                ; preds = %sw.bb1.i
  br label %for.body.i21.i

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i21.i:                                   ; preds = %for.inc.i26.i.for.body.i21.i_crit_edge, %sw.bb1.i.for.body.i21.i_crit_edge
  %i.059.i.i = phi i32 [ %inc27.i.i, %for.inc.i26.i.for.body.i21.i_crit_edge ], [ 0, %sw.bb1.i.for.body.i21.i_crit_edge ]
  %spi.058.i.i = phi i32 [ %spi.1.i.i, %for.inc.i26.i.for.body.i21.i_crit_edge ], [ 0, %sw.bb1.i.for.body.i21.i_crit_edge ]
  %arrayidx5.i19.i = getelementptr %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 12, i32 %i.059.i.i
  %60 = ptrtoint ptr %arrayidx5.i19.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx5.i19.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %61, i16 %conv3.i.i16.i)
  %cmp8.i20.i = icmp ult i16 %61, %conv3.i.i16.i
  br i1 %cmp8.i20.i, label %for.body.i21.i.cleanup_crit_edge, label %if.end.i23.i

for.body.i21.i.cleanup_crit_edge:                 ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i23.i:                                     ; preds = %for.body.i21.i
  %sub15.i22.i = sub i16 %61, %conv3.i.i16.i
  %62 = zext i16 %sub15.i22.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %sub15.i22.i, label %if.end.i23.i.cleanup_crit_edge [
    i16 0, label %sw.bb.i25.i
    i16 2, label %sw.bb21.i.i
  ]

if.end.i23.i.cleanup_crit_edge:                   ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i25.i:                                      ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  %word.i24.i = getelementptr %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 12, i32 %i.059.i.i, i32 1
  %63 = ptrtoint ptr %word.i24.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %word.i24.i, align 2
  %conv20.i.i = zext i16 %64 to i32
  %shl.i.i = shl nuw i32 %conv20.i.i, 16
  br label %for.inc.i26.i

sw.bb21.i.i:                                      ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  %word24.i.i = getelementptr %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 12, i32 %i.059.i.i, i32 1
  %65 = ptrtoint ptr %word24.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %word24.i.i, align 2
  %conv25.i.i = zext i16 %66 to i32
  br label %for.inc.i26.i

for.inc.i26.i:                                    ; preds = %sw.bb21.i.i, %sw.bb.i25.i
  %conv25.pn.i.i = phi i32 [ %conv25.i.i, %sw.bb21.i.i ], [ %shl.i.i, %sw.bb.i25.i ]
  %spi.1.i.i = or i32 %conv25.pn.i.i, %spi.058.i.i
  %inc27.i.i = add nuw nsw i32 %i.059.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc27.i.i, %conv.i18.i
  br i1 %exitcond.not.i.i, label %for.end.i28.i, label %for.inc.i26.i.for.body.i21.i_crit_edge

for.inc.i26.i.for.body.i21.i_crit_edge:           ; preds = %for.inc.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i21.i

for.end.i28.i:                                    ; preds = %for.inc.i26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spi.1.i.i)
  %tobool.not.i27.i = icmp eq i32 %spi.1.i.i, 0
  br i1 %tobool.not.i27.i, label %for.end.i28.i.cleanup_crit_edge, label %if.end29.i.i

for.end.i28.i.cleanup_crit_edge:                  ; preds = %for.end.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29.i.i:                                     ; preds = %for.end.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  %buffer.i29.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %54, i32 2
  %67 = ptrtoint ptr %buffer.i29.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %spi.1.i.i, ptr %buffer.i29.i, align 4
  %field_selector.i30.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %54, i32 1
  %68 = ptrtoint ptr %field_selector.i30.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %field_selector.i30.i, align 4
  %or30.i.i = or i32 %69, 1
  store i32 %or30.i.i, ptr %field_selector.i30.i, align 4
  br label %sw.epilog.sink.split.i

sw.bb3.i:                                         ; preds = %if.end14
  %70 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %count, align 4
  %inc.i34.i = add i32 %71, 1
  store i32 %inc.i34.i, ptr %count, align 4
  %arrayidx3.i35.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %71
  %72 = ptrtoint ptr %arrayidx3.i35.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 17, ptr %arrayidx3.i35.i, align 4
  %ip_ver.i.i36.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 10
  %73 = ptrtoint ptr %ip_ver.i.i36.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ip_ver.i.i36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %74)
  %cmp.i.i37.i = icmp eq i8 %74, 4
  %conv3.i.i38.i = select i1 %cmp.i.i37.i, i16 42, i16 62
  %75 = ptrtoint ptr %flex_cnt to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %flex_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp44.not.i.i = icmp eq i8 %76, 0
  br i1 %cmp44.not.i.i, label %sw.bb3.i.sw.epilog.sink.split.i_crit_edge, label %for.body.lr.ph.i42.i

sw.bb3.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

for.body.lr.ph.i42.i:                             ; preds = %sw.bb3.i
  %buffer.i40.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %71, i32 2
  %field_selector.i41.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %71, i32 1
  br label %for.body.i44.i

for.body.i44.i:                                   ; preds = %sw.bb.i49.i.for.body.i44.i_crit_edge, %for.body.lr.ph.i42.i
  %i.045.i.i = phi i32 [ 0, %for.body.lr.ph.i42.i ], [ %inc23.i.i, %sw.bb.i49.i.for.body.i44.i_crit_edge ]
  %arrayidx5.i43.i = getelementptr %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 12, i32 %i.045.i.i
  %77 = ptrtoint ptr %arrayidx5.i43.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx5.i43.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %78, i16 %conv3.i.i38.i)
  %cond.i.i = icmp eq i16 %78, %conv3.i.i38.i
  br i1 %cond.i.i, label %sw.bb.i49.i, label %for.body.i44.i.cleanup_crit_edge

for.body.i44.i.cleanup_crit_edge:                 ; preds = %for.body.i44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i49.i:                                      ; preds = %for.body.i44.i
  %word.i45.i = getelementptr %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 12, i32 %i.045.i.i, i32 1
  %79 = ptrtoint ptr %word.i45.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %word.i45.i, align 2
  %81 = lshr i16 %80, 8
  %conv21.i.i = trunc i16 %81 to i8
  %82 = ptrtoint ptr %buffer.i40.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv21.i.i, ptr %buffer.i40.i, align 4
  %83 = ptrtoint ptr %field_selector.i41.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %field_selector.i41.i, align 4
  %or.i46.i = or i32 %84, 1
  store i32 %or.i46.i, ptr %field_selector.i41.i, align 4
  %inc23.i.i = add nuw nsw i32 %i.045.i.i, 1
  %85 = ptrtoint ptr %flex_cnt to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %flex_cnt, align 1
  %conv.i47.i = zext i8 %86 to i32
  %cmp.i48.i = icmp ult i32 %inc23.i.i, %conv.i47.i
  br i1 %cmp.i48.i, label %sw.bb.i49.i.for.body.i44.i_crit_edge, label %sw.bb.i49.i.sw.epilog.sink.split.i_crit_edge

sw.bb.i49.i.sw.epilog.sink.split.i_crit_edge:     ; preds = %sw.bb.i49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.bb.i49.i.for.body.i44.i_crit_edge:             ; preds = %sw.bb.i49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i44.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb.i49.i.sw.epilog.sink.split.i_crit_edge, %sw.bb3.i.sw.epilog.sink.split.i_crit_edge, %if.end29.i.i, %for.inc.i.i.sw.epilog.sink.split.i_crit_edge, %sw.bb.i.sw.epilog.sink.split.i_crit_edge
  %sub.i33.sink.in.i = phi i32 [ %54, %if.end29.i.i ], [ %23, %sw.bb.i.sw.epilog.sink.split.i_crit_edge ], [ %71, %sw.bb3.i.sw.epilog.sink.split.i_crit_edge ], [ %23, %for.inc.i.i.sw.epilog.sink.split.i_crit_edge ], [ %71, %sw.bb.i49.i.sw.epilog.sink.split.i_crit_edge ]
  %sub.i33.sink.i = add i32 %sub.i33.sink.in.i, -1
  %field_selector24.i.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %sub.i33.sink.i, i32 1
  %87 = ptrtoint ptr %field_selector24.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %field_selector24.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.sink.split.i, %for.body.i44.i.cleanup_crit_edge, %for.end.i28.i.cleanup_crit_edge, %if.end.i23.i.cleanup_crit_edge, %for.body.i21.i.cleanup_crit_edge, %sw.bb1.i.cleanup_crit_edge, %sw.bb38.i.i.cleanup_crit_edge, %sw.bb22.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %for.body.i.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12.cleanup_crit_edge ], [ -95, %if.end14.cleanup_crit_edge ], [ -95, %for.end.i28.i.cleanup_crit_edge ], [ -95, %sw.bb1.i.cleanup_crit_edge ], [ 0, %sw.epilog.sink.split.i ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %sw.bb38.i.i.cleanup_crit_edge ], [ -95, %sw.bb22.i.i.cleanup_crit_edge ], [ -22, %for.body.i.i.cleanup_crit_edge ], [ -22, %for.body.i21.i.cleanup_crit_edge ], [ -22, %if.end.i23.i.cleanup_crit_edge ], [ -22, %for.body.i44.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @iavf_fill_fdir_ip6_hdr(ptr nocapture noundef %fltr, ptr nocapture noundef %proto_hdrs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 2
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %count, align 4
  %arrayidx = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %1
  %buffer = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %1, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %arrayidx, align 4
  %ip_mask = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6
  %3 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp = icmp eq i8 %5, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  %9 = lshr i8 %8, 4
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %buffer, align 4
  %bf.clear = and i8 %bf.load, -16
  %bf.set = or i8 %bf.clear, %9
  store i8 %bf.set, ptr %buffer, align 4
  %11 = load i8, ptr %6, align 4
  %shl = shl i8 %11, 4
  %flow_lbl = getelementptr inbounds %struct.ipv6hdr, ptr %buffer, i32 0, i32 1
  %12 = ptrtoint ptr %flow_lbl to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %shl, ptr %flow_lbl, align 1
  %field_selector = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %1, i32 1
  %13 = ptrtoint ptr %field_selector to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %field_selector, align 4
  %or = or i32 %14, 4
  store i32 %or, ptr %field_selector, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %proto = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 6
  %15 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp11 = icmp eq i8 %16, -1
  br i1 %cmp11, label %if.then13, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %proto15 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 6
  %17 = ptrtoint ptr %proto15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %proto15, align 1
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %buffer, i32 0, i32 3
  %19 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %nexthdr, align 2
  %field_selector16 = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %1, i32 1
  %20 = ptrtoint ptr %field_selector16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %field_selector16, align 4
  %or17 = or i32 %21, 16
  store i32 %or17, ptr %field_selector16, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end.if.end18_crit_edge
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %ip_mask, ptr noundef nonnull dereferenceable(16) @ipv6_addr_full_mask, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then20, label %if.end18.if.end25_crit_edge

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %buffer, i32 0, i32 5
  %ip_data21 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5
  %22 = call ptr @memcpy(ptr %saddr, ptr %ip_data21, i32 16)
  %field_selector23 = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %1, i32 1
  %23 = ptrtoint ptr %field_selector23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %field_selector23, align 4
  %or24 = or i32 %24, 1
  store i32 %or24, ptr %field_selector23, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end18.if.end25_crit_edge
  %dst_ip = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 6, i32 0, i32 0, i32 1
  %bcmp1 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %dst_ip, ptr noundef nonnull dereferenceable(16) @ipv6_addr_full_mask, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1)
  %tobool28.not = icmp eq i32 %bcmp1, 0
  br i1 %tobool28.not, label %if.then29, label %if.end25.if.end34_crit_edge

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %buffer, i32 0, i32 6
  %dst_ip31 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 0, i32 0, i32 1
  %25 = call ptr @memcpy(ptr %daddr, ptr %dst_ip31, i32 16)
  %field_selector32 = getelementptr %struct.virtchnl_proto_hdrs, ptr %proto_hdrs, i32 0, i32 3, i32 %1, i32 1
  %26 = ptrtoint ptr %field_selector32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %field_selector32, align 4
  %or33 = or i32 %27, 2
  store i32 %or33, ptr %field_selector32, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end25.if.end34_crit_edge
  %ip_ver = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 10
  %28 = ptrtoint ptr %ip_ver to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 6, ptr %ip_ver, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_print_fdir_fltr(ptr nocapture noundef readonly %adapter, ptr noundef %fltr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flow_type = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 2
  %0 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flow_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 7, label %entry.if.end_crit_edge132
    i32 2, label %entry.sw.bb1.i_crit_edge
    i32 8, label %entry.sw.bb1.i_crit_edge133
    i32 3, label %entry.sw.bb2.i_crit_edge
    i32 9, label %entry.sw.bb2.i_crit_edge134
    i32 4, label %entry.sw.bb3.i_crit_edge
    i32 10, label %entry.sw.bb3.i_crit_edge135
    i32 5, label %entry.sw.bb4.i_crit_edge
    i32 11, label %entry.sw.bb4.i_crit_edge136
    i32 6, label %entry.sw.bb5.i_crit_edge
    i32 12, label %entry.sw.bb5.i_crit_edge137
    i32 13, label %do.end82
  ]

entry.sw.bb5.i_crit_edge137:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i

entry.sw.bb5.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i

entry.sw.bb4.i_crit_edge136:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4.i

entry.sw.bb4.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4.i

entry.sw.bb3.i_crit_edge135:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

entry.sw.bb2.i_crit_edge134:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

entry.sw.bb1.i_crit_edge133:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

entry.if.end_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge133
  br label %if.end

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge134
  br label %if.end

sw.bb3.i:                                         ; preds = %entry.sw.bb3.i_crit_edge, %entry.sw.bb3.i_crit_edge135
  br label %if.end

sw.bb4.i:                                         ; preds = %entry.sw.bb4.i_crit_edge, %entry.sw.bb4.i_crit_edge136
  br label %if.end

sw.bb5.i:                                         ; preds = %entry.sw.bb5.i_crit_edge, %entry.sw.bb5.i_crit_edge137
  br label %if.end

if.end:                                           ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.if.end_crit_edge, %entry.if.end_crit_edge132
  %retval.0.i.ph = phi ptr [ @.str.24, %entry.if.end_crit_edge ], [ @.str.24, %entry.if.end_crit_edge132 ], [ @.str.25, %sw.bb1.i ], [ @.str.26, %sw.bb2.i ], [ @.str.27, %sw.bb3.i ], [ @.str.28, %sw.bb4.i ], [ @.str.29, %sw.bb5.i ]
  %3 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.do.end_crit_edge
    i32 2, label %if.end.do.end_crit_edge138
    i32 3, label %if.end.do.end_crit_edge139
    i32 4, label %if.end.do.end9_crit_edge
    i32 5, label %if.end.do.end9_crit_edge140
    i32 6, label %do.end21
    i32 7, label %if.end.do.end36_crit_edge
    i32 8, label %if.end.do.end36_crit_edge141
    i32 9, label %if.end.do.end36_crit_edge142
    i32 10, label %if.end.do.end53_crit_edge
    i32 11, label %if.end.do.end53_crit_edge143
    i32 12, label %do.end66
  ]

if.end.do.end53_crit_edge143:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53

if.end.do.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53

if.end.do.end36_crit_edge142:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

if.end.do.end36_crit_edge141:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

if.end.do.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

if.end.do.end9_crit_edge140:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

if.end.do.end_crit_edge139:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.do.end_crit_edge138:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end.do.end_crit_edge138, %if.end.do.end_crit_edge139
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %loc = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 14
  %6 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %loc, align 4
  %ip_data = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5
  %dst_ip = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %dst_port = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dst_port, align 2
  %conv = zext i16 %9 to i32
  %src_port = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %src_port, align 4
  %conv5 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %7, ptr noundef %dst_ip, ptr noundef %ip_data, ptr noundef nonnull %retval.0.i.ph, i32 noundef %conv, i32 noundef %conv5) #13
  br label %cleanup

do.end9:                                          ; preds = %if.end.do.end9_crit_edge, %if.end.do.end9_crit_edge140
  %pdev10 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %12 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %loc12 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 14
  %14 = ptrtoint ptr %loc12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %loc12, align 4
  %ip_data13 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5
  %dst_ip14 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %spi = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 4
  %16 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %spi, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev11, ptr noundef nonnull @.str.6, i32 noundef %15, ptr noundef %dst_ip14, ptr noundef %ip_data13, ptr noundef nonnull %retval.0.i.ph, i32 noundef %17) #13
  br label %cleanup

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pdev22 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %18 = ptrtoint ptr %pdev22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev22, align 4
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %loc24 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 14
  %20 = ptrtoint ptr %loc24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %loc24, align 4
  %ip_data25 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5
  %dst_ip26 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %proto30 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 6
  %22 = ptrtoint ptr %proto30 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %proto30, align 1
  %conv31 = zext i8 %23 to i32
  %l4_header = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 3
  %24 = ptrtoint ptr %l4_header to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %l4_header, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev23, ptr noundef nonnull @.str.9, i32 noundef %21, ptr noundef %dst_ip26, ptr noundef %ip_data25, i32 noundef %conv31, i32 noundef %25) #13
  br label %cleanup

do.end36:                                         ; preds = %if.end.do.end36_crit_edge, %if.end.do.end36_crit_edge141, %if.end.do.end36_crit_edge142
  %pdev37 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %26 = ptrtoint ptr %pdev37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev37, align 4
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %loc39 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 14
  %28 = ptrtoint ptr %loc39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %loc39, align 4
  %ip_data40 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5
  %dst_ip41 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 0, i32 0, i32 1
  %dst_port45 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 2
  %30 = ptrtoint ptr %dst_port45 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %dst_port45, align 2
  %conv46 = zext i16 %31 to i32
  %src_port48 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %src_port48 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %src_port48, align 4
  %conv49 = zext i16 %33 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev38, ptr noundef nonnull @.str.12, i32 noundef %29, ptr noundef %dst_ip41, ptr noundef %ip_data40, ptr noundef nonnull %retval.0.i.ph, i32 noundef %conv46, i32 noundef %conv49) #13
  br label %cleanup

do.end53:                                         ; preds = %if.end.do.end53_crit_edge, %if.end.do.end53_crit_edge143
  %pdev54 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %34 = ptrtoint ptr %pdev54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev54, align 4
  %dev55 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %loc56 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 14
  %36 = ptrtoint ptr %loc56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %loc56, align 4
  %ip_data57 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5
  %dst_ip58 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 0, i32 0, i32 1
  %spi62 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 4
  %38 = ptrtoint ptr %spi62 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %spi62, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev55, ptr noundef nonnull @.str.15, i32 noundef %37, ptr noundef %dst_ip58, ptr noundef %ip_data57, ptr noundef nonnull %retval.0.i.ph, i32 noundef %39) #13
  br label %cleanup

do.end66:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pdev67 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %40 = ptrtoint ptr %pdev67 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev67, align 4
  %dev68 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %loc69 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 14
  %42 = ptrtoint ptr %loc69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %loc69, align 4
  %ip_data70 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5
  %dst_ip71 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 0, i32 0, i32 1
  %proto75 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 6
  %44 = ptrtoint ptr %proto75 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %proto75, align 1
  %conv76 = zext i8 %45 to i32
  %l4_header78 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5, i32 3
  %46 = ptrtoint ptr %l4_header78 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %l4_header78, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev68, ptr noundef nonnull @.str.18, i32 noundef %43, ptr noundef %dst_ip71, ptr noundef %ip_data70, i32 noundef %conv76, i32 noundef %47) #13
  br label %cleanup

do.end82:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev83 = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %48 = ptrtoint ptr %pdev83 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev83, align 4
  %dev84 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %loc85 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 14
  %50 = ptrtoint ptr %loc85 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %loc85, align 4
  %eth_data = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 3
  %52 = ptrtoint ptr %eth_data to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %eth_data, align 4
  %conv86 = zext i16 %53 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev84, ptr noundef nonnull @.str.21, i32 noundef %51, i32 noundef %conv86) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end82, %do.end66, %do.end53, %do.end36, %do.end21, %do.end9, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @iavf_fdir_is_dup_fltr(ptr noundef readonly %adapter, ptr nocapture noundef readonly %fltr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fdir_list_head = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 58
  %0 = ptrtoint ptr %fdir_list_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn31 = load ptr, ptr %fdir_list_head, align 4
  %cmp.not32 = icmp eq ptr %.pn31, %fdir_list_head
  br i1 %cmp.not32, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %flow_type3 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 2
  %1 = ptrtoint ptr %flow_type3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flow_type3, align 4
  %eth_data5 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 3
  %ip_data6 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 5
  %ext_data10 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn33 = phi ptr [ %.pn31, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %flow_type = getelementptr i8, ptr %.pn33, i32 8
  %3 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flow_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp4.not = icmp eq i32 %4, %2
  br i1 %cmp4.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %eth_data = getelementptr i8, ptr %.pn33, i32 12
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(2) %eth_data, ptr noundef dereferenceable(2) %eth_data5, i32 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %ip_data = getelementptr i8, ptr %.pn33, i32 16
  %bcmp29 = tail call i32 @bcmp(ptr noundef dereferenceable(48) %ip_data, ptr noundef dereferenceable(48) %ip_data6, i32 48) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp29)
  %tobool8.not = icmp eq i32 %bcmp29, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true9:                                   ; preds = %land.lhs.true
  %ext_data = getelementptr i8, ptr %.pn33, i32 112
  %bcmp30 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %ext_data, ptr noundef dereferenceable(8) %ext_data10, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp30)
  %tobool12.not = icmp eq i32 %bcmp30, 0
  br i1 %tobool12.not, label %land.lhs.true9.cleanup_crit_edge, label %land.lhs.true9.for.inc_crit_edge

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true9.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn33 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn33, align 4
  %cmp.not = icmp eq ptr %.pn, %fdir_list_head
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.not.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %for.inc.cleanup_crit_edge ], [ true, %land.lhs.true9.cleanup_crit_edge ]
  ret i1 %cmp.not.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iavf_find_fdir_fltr_by_loc(ptr noundef readonly %adapter, i32 noundef %loc) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fdir_list_head = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 58
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %fdir_list_head, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %fdir_list_head
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %loc2 = getelementptr i8, ptr %.pn, i32 148
  %1 = ptrtoint ptr %loc2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %loc2, align 4
  %cmp3 = icmp eq i32 %2, %loc
  br i1 %cmp3, label %cleanup.split.loop.exit13, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

cleanup.split.loop.exit13:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %rule.0.le = getelementptr i8, ptr %.pn, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit13, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %rule.0.le, %cleanup.split.loop.exit13 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_fdir_list_add_fltr(ptr noundef %adapter, ptr noundef %fltr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fdir_list_head = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 58
  %0 = ptrtoint ptr %fdir_list_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn28 = load ptr, ptr %fdir_list_head, align 4
  %cmp.not29 = icmp eq ptr %.pn28, %fdir_list_head
  br i1 %cmp.not29, label %entry.if.else_crit_edge, label %for.body.lr.ph

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.body.lr.ph:                                   ; preds = %entry
  %loc2 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 14
  %1 = ptrtoint ptr %loc2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %loc2, align 4
  %loc35 = getelementptr i8, ptr %.pn28, i32 148
  %3 = ptrtoint ptr %loc35 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %loc35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp3.not36 = icmp ult i32 %4, %2
  br i1 %cmp3.not36, label %for.body.lr.ph.for.cond_crit_edge, label %for.body.lr.ph.for.end_crit_edge

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph.for.cond_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.lr.ph.for.cond_crit_edge
  %.pn3137 = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ %.pn28, %for.body.lr.ph.for.cond_crit_edge ]
  %5 = ptrtoint ptr %.pn3137 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn3137, align 4
  %cmp.not = icmp eq ptr %.pn, %fdir_list_head
  br i1 %cmp.not, label %for.cond.for.end.loopexit_crit_edge, label %for.body

for.cond.for.end.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.loopexit

for.body:                                         ; preds = %for.cond
  %loc = getelementptr i8, ptr %.pn, i32 148
  %6 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %loc, align 4
  %cmp3.not = icmp ult i32 %7, %2
  br i1 %cmp3.not, label %for.body.for.cond_crit_edge, label %for.body.for.end.loopexit_crit_edge

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.loopexit

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end.loopexit:                                 ; preds = %for.body.for.end.loopexit_crit_edge, %for.cond.for.end.loopexit_crit_edge
  %rule.0.le = getelementptr i8, ptr %.pn3137, i32 -4
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body.lr.ph.for.end_crit_edge
  %parent.0.lcssa = phi ptr [ null, %for.body.lr.ph.for.end_crit_edge ], [ %rule.0.le, %for.end.loopexit ]
  %tobool.not = icmp eq ptr %parent.0.lcssa, null
  br i1 %tobool.not, label %for.end.if.else_crit_edge, label %if.then9

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then9:                                         ; preds = %for.end
  %list10 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 1
  %list11 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %parent.0.lcssa, i32 0, i32 1
  %8 = ptrtoint ptr %list11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list11, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list10, ptr noundef %list11, ptr noundef %9) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then9.if.end14_crit_edge

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list10, ptr %prev1.i.i, align 4
  %11 = ptrtoint ptr %list10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %list10, align 4
  %prev3.i.i = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list11, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %list11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list10, ptr %list11, align 4
  br label %if.end14

if.else:                                          ; preds = %for.end.if.else_crit_edge, %entry.if.else_crit_edge
  %list12 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 1
  %14 = ptrtoint ptr %fdir_list_head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fdir_list_head, align 4
  %call.i.i23 = tail call zeroext i1 @__list_add_valid(ptr noundef %list12, ptr noundef %fdir_list_head, ptr noundef %15) #9
  br i1 %call.i.i23, label %if.end.i.i26, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end.i.i26:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i24 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list12, ptr %prev1.i.i24, align 4
  %17 = ptrtoint ptr %list12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %list12, align 4
  %prev3.i.i25 = getelementptr inbounds %struct.iavf_fdir_fltr, ptr %fltr, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev3.i.i25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %fdir_list_head, ptr %prev3.i.i25, align 4
  %19 = ptrtoint ptr %fdir_list_head to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list12, ptr %fdir_list_head, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end.i.i26, %if.else.if.end14_crit_edge, %if.end.i.i, %if.then9.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/iavf/iavf_fdir.c", i32 652, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @iavf_print_fdir_fltr._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @iavf_print_fdir_fltr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/iavf/iavf_fdir.c", i32 662, i32 3}
!10 = !{ptr @iavf_print_fdir_fltr._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @iavf_print_fdir_fltr._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/iavf/iavf_fdir.c", i32 670, i32 3}
!14 = !{ptr @iavf_print_fdir_fltr._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @iavf_print_fdir_fltr._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/iavf/iavf_fdir.c", i32 680, i32 3}
!18 = !{ptr @iavf_print_fdir_fltr._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @iavf_print_fdir_fltr._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/iavf/iavf_fdir.c", i32 690, i32 3}
!22 = !{ptr @iavf_print_fdir_fltr._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @iavf_print_fdir_fltr._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/iavf/iavf_fdir.c", i32 698, i32 3}
!26 = !{ptr @iavf_print_fdir_fltr._entry.17, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @iavf_print_fdir_fltr._entry_ptr.19, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.21, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/iavf/iavf_fdir.c", i32 706, i32 3}
!30 = !{ptr @iavf_print_fdir_fltr._entry.20, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @iavf_print_fdir_fltr._entry_ptr.22, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @ipv6_addr_full_mask, !33, !"ipv6_addr_full_mask", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/iavf/iavf_fdir.c", i32 12, i32 30}
!34 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/iavf/iavf_fdir.c", i32 611, i32 10}
!36 = !{ptr @.str.25, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/iavf/iavf_fdir.c", i32 614, i32 10}
!38 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/iavf/iavf_fdir.c", i32 617, i32 10}
!40 = !{ptr @.str.27, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/iavf/iavf_fdir.c", i32 620, i32 10}
!42 = !{ptr @.str.28, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/iavf/iavf_fdir.c", i32 623, i32 10}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/iavf/iavf_fdir.c", i32 626, i32 10}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/iavf/iavf_fdir.c", i32 628, i32 10}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
