; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.crb_128M_2M_sub_block_map_t = type { i32, i32, i32, i32 }
%struct.crb_128M_2M_block_map_t = type { [16 x %struct.crb_128M_2M_sub_block_map_t] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.netxen_adapter = type { %struct.netxen_hardware_context, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, [6 x i8], %struct.netxen_adapter_stats, %struct.netxen_recv_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x %struct.msix_entry], %struct.netxen_dummy_dma, %struct.delayed_work, %struct.work_struct, %struct.nx_nic_intr_coalesce_t, i32, i32, i32, ptr, %struct.netxen_minidump, i32 }
%struct.netxen_hardware_context = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rwlock_t, %struct.spinlock, i8, i8, i8, i8, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.netxen_adapter_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.netxen_recv_context = type { i32, i16, i16, ptr, ptr, ptr, i32 }
%struct.msix_entry = type { i32, i16 }
%struct.netxen_dummy_dma = type { ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.nx_nic_intr_coalesce_t = type { i16, i16, i16, i16, i32, i32, %union.nx_nic_intr_coalesce_data_t, %union.nx_nic_intr_coalesce_data_t, %union.nx_nic_intr_coalesce_data_t, %union.nx_nic_intr_coalesce_data_t }
%union.nx_nic_intr_coalesce_data_t = type { i64 }
%struct.netxen_minidump = type { i32, i8, i8, i8, i8, i32, i32, i32, i32, i64, ptr, ptr }
%struct.nx_nic_req_t = type { i64, i64, [6 x i64] }
%struct.nx_mac_list_s = type { %struct.list_head, [8 x i8] }
%struct.nx_host_tx_ring = type { i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netxen_cmd_buffer = type { ptr, [18 x %struct.netxen_skb_frag], i32 }
%struct.netxen_skb_frag = type { i64, i64 }
%struct.cmd_desc_type0 = type { i8, i8, i16, i32, i64, i16, i16, i8, i8, i16, i64, i64, [4 x i16], i64, i32, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.144, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.144 = type { ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.netxen_minidump_template_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [8 x i32], [0 x i32] }
%struct.netxen_common_entry_hdr = type { i32, i32, i32, %union.anon.151 }
%union.anon.151 = type { i32 }
%struct.anon.152 = type { i8, i8, i8, i8 }
%struct.netxen_minidump_entry_crb = type { %struct.netxen_common_entry_hdr, i32, %union.anon.153, i32, i32, %union.anon.155, i32, i32, i32 }
%union.anon.153 = type { i32 }
%union.anon.155 = type { i32 }
%struct.anon.156 = type { i8, i8, i8, i8 }
%struct.anon.154 = type { i8, i8, i16 }
%struct.netxen_minidump_entry_rdmem = type { %struct.netxen_common_entry_hdr, %union.anon.157, %union.anon.159, %union.anon.161, %union.anon.163, %union.anon.165, %union.anon.167, i32, i32 }
%union.anon.157 = type { %struct.anon.158 }
%struct.anon.158 = type { i32 }
%union.anon.159 = type { i32 }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type { i32 }
%union.anon.163 = type { %struct.anon.164 }
%struct.anon.164 = type { i32 }
%union.anon.165 = type { %struct.anon.166 }
%struct.anon.166 = type { i32 }
%union.anon.167 = type { i32 }
%struct.netxen_minidump_entry_rdrom = type { %struct.netxen_common_entry_hdr, %union.anon.169, %union.anon.171, %union.anon.173, %union.anon.175, %union.anon.177, %union.anon.179, i32, i32 }
%union.anon.169 = type { %struct.anon.170 }
%struct.anon.170 = type { i32 }
%union.anon.171 = type { i32 }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { i32 }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type { i32 }
%union.anon.177 = type { %struct.anon.178 }
%struct.anon.178 = type { i32 }
%union.anon.179 = type { %struct.anon.180 }
%struct.anon.180 = type { i32 }
%struct.netxen_minidump_entry_cache = type { %struct.netxen_common_entry_hdr, i32, %union.anon.181, i32, i32, i32, %union.anon.183, i32, %union.anon.185 }
%union.anon.181 = type { i32 }
%union.anon.183 = type { i32 }
%union.anon.185 = type { i32 }
%struct.anon.186 = type { i8, i8, i16 }
%struct.anon.182 = type { i16, i16 }
%struct.anon.184 = type { i16, i8, i8 }
%struct.netxen_minidump_entry_rdocm = type { %struct.netxen_common_entry_hdr, i32, %union.anon.187, i32, i32, i32, i32, i32, %union.anon.189 }
%union.anon.187 = type { %struct.anon.188 }
%struct.anon.188 = type { i32 }
%union.anon.189 = type { %struct.anon.190 }
%struct.anon.190 = type { i32 }
%struct.netxen_minidump_entry_mux = type { %struct.netxen_common_entry_hdr, i32, %union.anon.191, i32, i32, i32, i32, i32, i32 }
%union.anon.191 = type { %struct.anon.192 }
%struct.anon.192 = type { i32 }
%struct.netxen_minidump_entry_queue = type { %struct.netxen_common_entry_hdr, i32, %union.anon.193, i32, i32, i32, i32, i32, %union.anon.195 }
%union.anon.193 = type { i32 }
%union.anon.195 = type { i32 }
%struct.anon.196 = type { i8, i8, i16 }

@netxen_config_intr_coalesce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013ERROR. Could not send interrupt coalescing parameters\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"netxen_config_intr_coalesce\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c\00", [45 x i8] zeroinitializer }, align 32
@netxen_config_intr_coalesce._entry_ptr = internal global ptr @netxen_config_intr_coalesce._entry, section ".printk_index", align 4
@netxen_config_hw_lro._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013ERROR. Could not send configure hw lro request\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netxen_config_hw_lro\00", [43 x i8] zeroinitializer }, align 32
@netxen_config_hw_lro._entry_ptr = internal global ptr @netxen_config_hw_lro._entry, section ".printk_index", align 4
@netxen_config_bridged_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013ERROR. Could not send configure bridge mode request\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"netxen_config_bridged_mode\00", [37 x i8] zeroinitializer }, align 32
@netxen_config_bridged_mode._entry_ptr = internal global ptr @netxen_config_bridged_mode._entry, section ".printk_index", align 4
@netxen_config_rss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: could not configure RSS\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"netxen_config_rss\00", [46 x i8] zeroinitializer }, align 32
@netxen_config_rss._entry_ptr = internal global ptr @netxen_config_rss._entry, section ".printk_index", align 4
@netxen_config_ipaddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: could not notify %s IP 0x%x request\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netxen_config_ipaddr\00", [43 x i8] zeroinitializer }, align 32
@netxen_config_ipaddr._entry_ptr = internal global ptr @netxen_config_ipaddr._entry, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Add\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Remove\00", [25 x i8] zeroinitializer }, align 32
@netxen_linkevent_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: could not configure link notification\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"netxen_linkevent_request\00", [39 x i8] zeroinitializer }, align 32
@netxen_linkevent_request._entry_ptr = internal global ptr @netxen_linkevent_request._entry, section ".printk_index", align 4
@netxen_send_lro_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: could not cleanup lro flows\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"netxen_send_lro_cleanup\00", [40 x i8] zeroinitializer }, align 32
@netxen_send_lro_cleanup._entry_ptr = internal global ptr @netxen_send_lro_cleanup._entry, section ".printk_index", align 4
@netxen_nic_get_board_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1778, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid board config, magic=%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"netxen_nic_get_board_info\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@netxen_nic_get_board_info._entry_ptr = internal global ptr @netxen_nic_get_board_info._entry, section ".printk_index", align 4
@netxen_nic_get_board_info._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.18, ptr @.str.2, i32 1828, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown board type %x\0A\00", [41 x i8] zeroinitializer }, align 32
@netxen_nic_get_board_info._entry_ptr.23 = internal global ptr @netxen_nic_get_board_info._entry.21, section ".printk_index", align 4
@netxen_dump_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 2514, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid cap sizes for capture_mask=0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"netxen_dump_fw\00", [17 x i8] zeroinitializer }, align 32
@netxen_dump_fw._entry_ptr = internal global ptr @netxen_dump_fw._entry, section ".printk_index", align 4
@netxen_dump_fw._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 2532, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error in collecting firmware minidump.\0A\00", [56 x i8] zeroinitializer }, align 32
@netxen_dump_fw._entry_ptr.28 = internal global ptr @netxen_dump_fw._entry.26, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@netxen_dump_fw._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 2538, ptr @.str.31, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s Successfully collected fw dump.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@netxen_dump_fw._entry_ptr.32 = internal global ptr @netxen_dump_fw._entry.29, section ".printk_index", align 4
@netxen_dump_fw._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.2, i32 2544, ptr @.str.31, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Cannot overwrite previously collected firmware minidump.\0A\00", [38 x i8] zeroinitializer }, align 32
@netxen_dump_fw._entry_ptr.35 = internal global ptr @netxen_dump_fw._entry.33, section ".printk_index", align 4
@crb_128M_2M_map = internal unnamed_addr constant <{ %struct.crb_128M_2M_block_map_t, %struct.crb_128M_2M_block_map_t, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, %struct.crb_128M_2M_block_map_t, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, %struct.crb_128M_2M_block_map_t, %struct.crb_128M_2M_block_map_t, %struct.crb_128M_2M_block_map_t, %struct.crb_128M_2M_block_map_t, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, %struct.crb_128M_2M_block_map_t, %struct.crb_128M_2M_block_map_t, %struct.crb_128M_2M_block_map_t, %struct.crb_128M_2M_block_map_t, %struct.crb_128M_2M_block_map_t, %struct.crb_128M_2M_block_map_t, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, %struct.crb_128M_2M_block_map_t, { <{ [8 x %struct.crb_128M_2M_sub_block_map_t], [8 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, %struct.crb_128M_2M_block_map_t, %struct.crb_128M_2M_block_map_t, %struct.crb_128M_2M_block_map_t, %struct.crb_128M_2M_block_map_t, %struct.crb_128M_2M_block_map_t, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, %struct.crb_128M_2M_block_map_t, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, %struct.crb_128M_2M_block_map_t, %struct.crb_128M_2M_block_map_t, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } }> <{ %struct.crb_128M_2M_block_map_t zeroinitializer, %struct.crb_128M_2M_block_map_t { [16 x %struct.crb_128M_2M_sub_block_map_t] [%struct.crb_128M_2M_sub_block_map_t { i32 1, i32 1048576, i32 1056768, i32 1179648 }, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 1114112, i32 1179648, i32 1245184 }, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 1179648, i32 1187840, i32 1196032 }, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 1245184, i32 1253376, i32 1204224 }, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 1310720, i32 1318912, i32 1212416 }, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 1376256, i32 1384448, i32 1220608 }, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 1441792, i32 1507328, i32 1114112 }, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 1507328, i32 1515520, i32 1236992 }, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 1966080, i32 1968128, i32 1187840 }, %struct.crb_128M_2M_sub_block_map_t zeroinitializer] }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 2097152, i32 2162688, i32 1572864 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, %struct.crb_128M_2M_block_map_t zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 4194304, i32 4198400, i32 1478656 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 5242880, i32 5308416, i32 1310720 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 6291456, i32 6356992, i32 1835008 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 7340032, i32 7356416, i32 1802240 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, %struct.crb_128M_2M_block_map_t { [16 x %struct.crb_128M_2M_sub_block_map_t] [%struct.crb_128M_2M_sub_block_map_t { i32 1, i32 8388608, i32 8396800, i32 1507328 }, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 9371648, i32 9379840, i32 1515520 }] }, %struct.crb_128M_2M_block_map_t { [16 x %struct.crb_128M_2M_sub_block_map_t] [%struct.crb_128M_2M_sub_block_map_t { i32 1, i32 9437184, i32 9445376, i32 1523712 }, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 10420224, i32 10428416, i32 1531904 }] }, %struct.crb_128M_2M_block_map_t { [16 x %struct.crb_128M_2M_sub_block_map_t] [%struct.crb_128M_2M_sub_block_map_t { i32 0, i32 10485760, i32 10493952, i32 1540096 }, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 11468800, i32 11476992, i32 1548288 }] }, %struct.crb_128M_2M_block_map_t { [16 x %struct.crb_128M_2M_sub_block_map_t] [%struct.crb_128M_2M_sub_block_map_t { i32 0, i32 11534336, i32 11542528, i32 1556480 }, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t zeroinitializer, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 12517376, i32 12525568, i32 1564672 }] }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 12582912, i32 12599296, i32 1916928 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 13631488, i32 13647872, i32 1720320 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 14680064, i32 14696448, i32 1703936 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 15728640, i32 15732736, i32 1458176 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 0, i32 16777216, i32 16793600, i32 1736704 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 17825792, i32 17829888, i32 1441792 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 18874368, i32 18878464, i32 1445888 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 19922944, i32 19927040, i32 1449984 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 20971520, i32 20975616, i32 1454080 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 22020096, i32 22024192, i32 1462272 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 23068672, i32 23072768, i32 1466368 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, %struct.crb_128M_2M_block_map_t zeroinitializer, %struct.crb_128M_2M_block_map_t zeroinitializer, %struct.crb_128M_2M_block_map_t zeroinitializer, %struct.crb_128M_2M_block_map_t zeroinitializer, %struct.crb_128M_2M_block_map_t zeroinitializer, %struct.crb_128M_2M_block_map_t zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 30408704, i32 30474240, i32 1638400 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 31457280, i32 31461376, i32 1482752 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 32505856, i32 32571392, i32 1376256 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, %struct.crb_128M_2M_block_map_t zeroinitializer, { <{ [8 x %struct.crb_128M_2M_sub_block_map_t], [8 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ [8 x %struct.crb_128M_2M_sub_block_map_t], [8 x %struct.crb_128M_2M_sub_block_map_t] }> <{ [8 x %struct.crb_128M_2M_sub_block_map_t] [%struct.crb_128M_2M_sub_block_map_t { i32 1, i32 34603008, i32 34611200, i32 1179648 }, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 34668544, i32 34734080, i32 1245184 }, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 34734080, i32 34742272, i32 1196032 }, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 34799616, i32 34807808, i32 1204224 }, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 34865152, i32 34873344, i32 1212416 }, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 34930688, i32 34938880, i32 1220608 }, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 34996224, i32 35061760, i32 1114112 }, %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 35061760, i32 35069952, i32 1236992 }], [8 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 35651584, i32 35667968, i32 1769472 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, %struct.crb_128M_2M_block_map_t zeroinitializer, %struct.crb_128M_2M_block_map_t zeroinitializer, %struct.crb_128M_2M_block_map_t zeroinitializer, %struct.crb_128M_2M_block_map_t zeroinitializer, %struct.crb_128M_2M_block_map_t zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 41943040, i32 41959424, i32 1720320 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 42991616, i32 42995712, i32 1486848 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 44040192, i32 44041216, i32 1754112 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 45088768, i32 45089792, i32 1755136 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 46137344, i32 46138368, i32 1756160 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 47185920, i32 47186944, i32 1757184 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 48234496, i32 48235520, i32 1758208 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 49283072, i32 49284096, i32 1759232 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 50331648, i32 50332672, i32 1760256 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 0, i32 51380224, i32 51396608, i32 1736704 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 52428800, i32 52445184, i32 1916928 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 53477376, i32 53493760, i32 1703936 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, %struct.crb_128M_2M_block_map_t zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 55574528, i32 55575552, i32 1753088 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 56623104, i32 56624128, i32 1761280 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 57671680, i32 57672704, i32 1762304 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 58720256, i32 58736640, i32 1900544 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 59768832, i32 59785216, i32 1785856 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 60817408, i32 60833792, i32 1933312 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, %struct.crb_128M_2M_block_map_t zeroinitializer, %struct.crb_128M_2M_block_map_t zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 63963136, i32 63979520, i32 1933312 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 65011712, i32 65015808, i32 1470464 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> } { <{ %struct.crb_128M_2M_sub_block_map_t, [15 x %struct.crb_128M_2M_sub_block_map_t] }> <{ %struct.crb_128M_2M_sub_block_map_t { i32 1, i32 66060288, i32 66064384, i32 1474560 }, [15 x %struct.crb_128M_2M_sub_block_map_t] zeroinitializer }> } }>, section ".data..cacheline_aligned", align 128
@__func__.netxen_nic_pci_set_crbwindow_128M = private unnamed_addr constant [34 x i8] c"netxen_nic_pci_set_crbwindow_128M\00", align 1
@netxen_nic_pci_set_crbwindow_128M._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @__func__.netxen_nic_pci_set_crbwindow_128M, ptr @.str.2, i32 1067, ptr @.str.38, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set CRB window to %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@netxen_nic_pci_set_crbwindow_128M._entry_ptr = internal global ptr @netxen_nic_pci_set_crbwindow_128M._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__func__.netxen_nic_pci_mem_read_128M = private unnamed_addr constant [29 x i8] c"netxen_nic_pci_mem_read_128M\00", align 1
@netxen_nic_pci_mem_read_128M._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @__func__.netxen_nic_pci_mem_read_128M, ptr @.str.2, i32 1577, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read through agent\0A\00", [34 x i8] zeroinitializer }, align 32
@netxen_nic_pci_mem_read_128M._entry_ptr = internal global ptr @netxen_nic_pci_mem_read_128M._entry, section ".printk_index", align 4
@__func__.netxen_nic_pci_mem_write_128M = private unnamed_addr constant [30 x i8] c"netxen_nic_pci_mem_write_128M\00", align 1
@netxen_nic_pci_mem_write_128M._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.netxen_nic_pci_mem_write_128M, ptr @.str.2, i32 1502, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to write through agent\0A\00", [33 x i8] zeroinitializer }, align 32
@netxen_nic_pci_mem_write_128M._entry_ptr = internal global ptr @netxen_nic_pci_mem_write_128M._entry, section ".printk_index", align 4
@netxen_nic_hw_read_wx_2M._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1275, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: invalid offset: 0x%016lx\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"netxen_nic_hw_read_wx_2M\00", [39 x i8] zeroinitializer }, align 32
@netxen_nic_hw_read_wx_2M._entry_ptr = internal global ptr @netxen_nic_hw_read_wx_2M._entry, section ".printk_index", align 4
@crb_hub_agt = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 0, i32 1907, i32 661, i32 677, i32 0, i32 208, i32 433, i32 230, i32 224, i32 225, i32 226, i32 227, i32 1056, i32 1047, i32 1057, i32 843, i32 1029, i32 832, i32 833, i32 834, i32 835, i32 837, i32 836, i32 960, i32 961, i32 962, i32 963, i32 0, i32 964, i32 1040, i32 0, i32 209, i32 0, i32 1907, i32 1046, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1047, i32 0, i32 137, i32 1802, i32 1803, i32 1804, i32 141, i32 142, i32 1807, i32 1029, i32 1056, i32 1057, i32 0, i32 136, i32 145, i32 1810, i32 1030, i32 0, i32 1816, i32 409, i32 425, i32 0, i32 838, i32 0], [64 x i8] zeroinitializer }, align 32
@__func__.netxen_nic_pci_set_crbwindow_2M = private unnamed_addr constant [32 x i8] c"netxen_nic_pci_set_crbwindow_2M\00", align 1
@netxen_nic_pci_set_crbwindow_2M._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @__func__.netxen_nic_pci_set_crbwindow_2M, ptr @.str.2, i32 1134, ptr @.str.38, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to set CRB window to %d off 0x%lx\0A\00", [54 x i8] zeroinitializer }, align 32
@netxen_nic_pci_set_crbwindow_2M._entry_ptr = internal global ptr @netxen_nic_pci_set_crbwindow_2M._entry, section ".printk_index", align 4
@netxen_nic_hw_write_wx_2M._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.44, ptr @.str.2, i32 1245, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"netxen_nic_hw_write_wx_2M\00", [38 x i8] zeroinitializer }, align 32
@netxen_nic_hw_write_wx_2M._entry_ptr = internal global ptr @netxen_nic_hw_write_wx_2M._entry, section ".printk_index", align 4
@__func__.netxen_nic_pci_mem_read_2M = private unnamed_addr constant [27 x i8] c"netxen_nic_pci_mem_read_2M\00", align 1
@netxen_nic_pci_mem_read_2M._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @__func__.netxen_nic_pci_mem_read_2M, ptr @.str.2, i32 1714, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@netxen_nic_pci_mem_read_2M._entry_ptr = internal global ptr @netxen_nic_pci_mem_read_2M._entry, section ".printk_index", align 4
@__func__.netxen_nic_pci_mem_write_2M = private unnamed_addr constant [28 x i8] c"netxen_nic_pci_mem_write_2M\00", align 1
@netxen_nic_pci_mem_write_2M._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.netxen_nic_pci_mem_write_2M, ptr @.str.2, i32 1651, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@netxen_nic_pci_mem_write_2M._entry_ptr = internal global ptr @netxen_nic_pci_mem_write_2M._entry, section ".printk_index", align 4
@netxen_p3_nic_set_multi.bcast_addr = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@netxen_parse_md_template._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 2343, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Capture mask %02x below minimum needed for valid firmware dump\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"netxen_parse_md_template\00", [39 x i8] zeroinitializer }, align 32
@netxen_parse_md_template._entry_ptr = internal global ptr @netxen_parse_md_template._entry, section ".printk_index", align 4
@netxen_parse_md_template._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 2473, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Firmware minidump template configuration error.\0A\00", [47 x i8] zeroinitializer }, align 32
@netxen_parse_md_template._entry_ptr.49 = internal global ptr @netxen_parse_md_template._entry.47, section ".printk_index", align 4
@netxen_md_cntrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 2002, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s : Timeout in poll_crb control operation.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"netxen_md_cntrl\00", [16 x i8] zeroinitializer }, align 32
@netxen_md_cntrl._entry_ptr = internal global ptr @netxen_md_cntrl._entry, section ".printk_index", align 4
@netxen_md_entry_err_chk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 2324, ptr @.str.31, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalidate dump, Type:%d\09Mask:%d\09Size:%dCap_size:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"netxen_md_entry_err_chk\00", [40 x i8] zeroinitializer }, align 32
@netxen_md_entry_err_chk._entry_ptr = internal global ptr @netxen_md_entry_err_chk._entry, section ".printk_index", align 4
@netxen_md_entry_err_chk._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 2325, ptr @.str.31, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Aborting further dump capture\0A\00", [33 x i8] zeroinitializer }, align 32
@netxen_md_entry_err_chk._entry_ptr.56 = internal global ptr @netxen_md_entry_err_chk._entry.54, section ".printk_index", align 4
@netxen_md_L2Cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 2183, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Timeout in processing L2 Tag poll.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"netxen_md_L2Cache\00", [46 x i8] zeroinitializer }, align 32
@netxen_md_L2Cache._entry_ptr = internal global ptr @netxen_md_L2Cache._entry, section ".printk_index", align 4
@switch.table.netxen_nic_set_link_parameters = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 10, i16 100, i16 1000], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [25 x i64] [i64 23, i64 32, i64 0, i64 1, i64 2, i64 3, i64 10, i64 11, i64 13, i64 14, i64 15, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 49, i64 50, i64 128]
@__sancov_gen_cov_switch_values.59 = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 11, i64 12, i64 21, i64 22, i64 23, i64 24, i64 71, i64 72, i64 73, i64 98, i64 255]
@__sancov_gen_cov_switch_values.60 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 761, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 788, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 816, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 868, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 892, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 914, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 941, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1777, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1828, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 2512, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 2531, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 2537, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 2542, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1065, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1576, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1501, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1274, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [12 x i8] c"crb_hub_agt\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 216, i32 17 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1132, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1244, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1713, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1650, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant [11 x i8] c"bcast_addr\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 651, i32 18 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 2342, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 2472, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 2000, i32 7 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 2321, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 2325, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [54 x i8] c"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 2182, i32 5 }
@___asan_gen_.286 = private unnamed_addr constant [44 x i8] c"switch.table.netxen_nic_set_link_parameters\00", align 1
@llvm.compiler.used = appending global [103 x ptr] [ptr @netxen_config_bridged_mode._entry, ptr @netxen_config_bridged_mode._entry_ptr, ptr @netxen_config_hw_lro._entry, ptr @netxen_config_hw_lro._entry_ptr, ptr @netxen_config_intr_coalesce._entry, ptr @netxen_config_intr_coalesce._entry_ptr, ptr @netxen_config_ipaddr._entry, ptr @netxen_config_ipaddr._entry_ptr, ptr @netxen_config_rss._entry, ptr @netxen_config_rss._entry_ptr, ptr @netxen_dump_fw._entry, ptr @netxen_dump_fw._entry.26, ptr @netxen_dump_fw._entry.29, ptr @netxen_dump_fw._entry.33, ptr @netxen_dump_fw._entry_ptr, ptr @netxen_dump_fw._entry_ptr.28, ptr @netxen_dump_fw._entry_ptr.32, ptr @netxen_dump_fw._entry_ptr.35, ptr @netxen_linkevent_request._entry, ptr @netxen_linkevent_request._entry_ptr, ptr @netxen_md_L2Cache._entry, ptr @netxen_md_L2Cache._entry_ptr, ptr @netxen_md_cntrl._entry, ptr @netxen_md_cntrl._entry_ptr, ptr @netxen_md_entry_err_chk._entry, ptr @netxen_md_entry_err_chk._entry.54, ptr @netxen_md_entry_err_chk._entry_ptr, ptr @netxen_md_entry_err_chk._entry_ptr.56, ptr @netxen_nic_get_board_info._entry, ptr @netxen_nic_get_board_info._entry.21, ptr @netxen_nic_get_board_info._entry_ptr, ptr @netxen_nic_get_board_info._entry_ptr.23, ptr @netxen_nic_hw_read_wx_2M._entry, ptr @netxen_nic_hw_read_wx_2M._entry_ptr, ptr @netxen_nic_hw_write_wx_2M._entry, ptr @netxen_nic_hw_write_wx_2M._entry_ptr, ptr @netxen_nic_pci_mem_read_128M._entry, ptr @netxen_nic_pci_mem_read_128M._entry_ptr, ptr @netxen_nic_pci_mem_read_2M._entry, ptr @netxen_nic_pci_mem_read_2M._entry_ptr, ptr @netxen_nic_pci_mem_write_128M._entry, ptr @netxen_nic_pci_mem_write_128M._entry_ptr, ptr @netxen_nic_pci_mem_write_2M._entry, ptr @netxen_nic_pci_mem_write_2M._entry_ptr, ptr @netxen_nic_pci_set_crbwindow_128M._entry, ptr @netxen_nic_pci_set_crbwindow_128M._entry_ptr, ptr @netxen_nic_pci_set_crbwindow_2M._entry, ptr @netxen_nic_pci_set_crbwindow_2M._entry_ptr, ptr @netxen_parse_md_template._entry, ptr @netxen_parse_md_template._entry.47, ptr @netxen_parse_md_template._entry_ptr, ptr @netxen_parse_md_template._entry_ptr.49, ptr @netxen_send_lro_cleanup._entry, ptr @netxen_send_lro_cleanup._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @crb_hub_agt, ptr @.str.43, ptr @.str.44, ptr @netxen_p3_nic_set_multi.bcast_addr, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @switch.table.netxen_nic_set_link_parameters], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_config_intr_coalesce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_config_hw_lro._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_config_bridged_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_config_rss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_config_ipaddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_linkevent_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_send_lro_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_get_board_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_get_board_info._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_dump_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_dump_fw._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_dump_fw._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_dump_fw._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_pci_set_crbwindow_128M._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_pci_mem_read_128M._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_pci_mem_write_128M._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_hw_read_wx_2M._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crb_hub_agt to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_pci_set_crbwindow_2M._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_hw_write_wx_2M._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_pci_mem_read_2M._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_pci_mem_write_2M._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_p3_nic_set_multi.bcast_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_parse_md_template._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_parse_md_template._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_md_cntrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_md_entry_err_chk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_md_entry_err_chk._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_md_L2Cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.netxen_nic_set_link_parameters to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef %sem, i32 noundef %id_reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %mul = shl i32 %sem, 3
  %add1 = add i32 %mul, 101826560
  br label %while.body

while.body:                                       ; preds = %if.end4.while.body_crit_edge, %entry
  %timeout.016 = phi i32 [ 0, %entry ], [ %inc, %if.end4.while.body_crit_edge ]
  %0 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crb_read, align 4
  %call = tail call i32 %1(ptr noundef %adapter, i32 noundef %add1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %timeout.016)
  %exitcond = icmp eq i32 %timeout.016, 9999
  br i1 %exitcond, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %timeout.016, 1
  tail call void @msleep(i32 noundef 1) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4.while.body_crit_edge, label %if.end4.while.end_crit_edge

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end4.while.body_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end4.while.end_crit_edge, %while.body.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id_reg)
  %tobool5.not = icmp eq i32 %id_reg, 0
  br i1 %tobool5.not, label %while.end.cleanup_crit_edge, label %if.then6

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %2 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crb_write, align 8
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %4 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %portnum, align 2
  %conv = zext i8 %5 to i32
  %call7 = tail call i32 %3(ptr noundef %adapter, i32 noundef %id_reg, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %while.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %while.end.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef %sem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %0 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crb_read, align 4
  %mul = shl i32 %sem, 3
  %add1 = add i32 %mul, 101826564
  %call = tail call i32 %1(ptr noundef %adapter, i32 noundef %add1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netxen_p3_free_mac_list(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca %struct.nx_nic_req_t, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_list = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %mac_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mac_list, align 4
  %cmp.i.not7 = icmp eq ptr %1, %mac_list
  br i1 %cmp.i.not7, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %2 = getelementptr inbounds i8, ptr %req.i, i32 16
  %portnum.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %req_hdr.i = getelementptr inbounds %struct.nx_nic_req_t, ptr %req.i, i32 0, i32 1
  %mac_addr.i = getelementptr inbounds i8, ptr %req.i, i32 18
  br label %while.body

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %while.body.lr.ph
  %3 = phi ptr [ %1, %while.body.lr.ph ], [ %21, %list_del.exit.while.body_crit_edge ]
  %mac_addr = getelementptr inbounds %struct.nx_mac_list_s, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req.i) #10
  %4 = call ptr @memset(ptr %2, i32 0, i32 48)
  %5 = ptrtoint ptr %req.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 42949672960, ptr %req.i, align 8
  %6 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %portnum.i, align 2
  %conv.i6 = zext i8 %7 to i64
  %shl.i = shl nuw nsw i64 %conv.i6, 16
  %or.i = or i64 %shl.i, 1
  %8 = tail call i64 @llvm.bswap.i64(i64 %or.i) #10
  %9 = ptrtoint ptr %req_hdr.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %req_hdr.i, align 8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %2, align 8
  %11 = call ptr @memcpy(ptr %mac_addr.i, ptr %mac_addr, i32 6)
  %call.i = call fastcc i32 @netxen_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req.i) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req.i) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %3) #10
  %20 = ptrtoint ptr %mac_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %mac_list, align 4
  %cmp.i.not = icmp eq ptr %21, %mac_list
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_config_intr_coalesce(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.nx_nic_req_t, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 140776143060992, ptr %req, align 8
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %1 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %portnum, align 2
  %conv = zext i8 %2 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %or = or i64 %shl, 3
  %3 = tail call i64 @llvm.bswap.i64(i64 %or)
  %req_hdr = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %req_hdr, align 8
  %coal = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 69
  %5 = ptrtoint ptr %coal to i32
  call void @__asan_load8_noabort(i32 %5)
  %word.sroa.0.0.copyload = load i64, ptr %coal, align 8
  %word.sroa.8.0.coal.sroa_idx = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 69, i32 4
  %6 = ptrtoint ptr %word.sroa.8.0.coal.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %6)
  %word.sroa.8.0.copyload = load i64, ptr %word.sroa.8.0.coal.sroa_idx, align 8
  %word.sroa.10.0.coal.sroa_idx = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 69, i32 6
  %7 = ptrtoint ptr %word.sroa.10.0.coal.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %7)
  %word.sroa.10.0.copyload = load i64, ptr %word.sroa.10.0.coal.sroa_idx, align 8
  %word.sroa.12.0.coal.sroa_idx = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 69, i32 7
  %8 = ptrtoint ptr %word.sroa.12.0.coal.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %8)
  %word.sroa.12.0.copyload = load i64, ptr %word.sroa.12.0.coal.sroa_idx, align 8
  %word.sroa.14.0.coal.sroa_idx = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 69, i32 8
  %9 = ptrtoint ptr %word.sroa.14.0.coal.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %9)
  %word.sroa.14.0.copyload = load i64, ptr %word.sroa.14.0.coal.sroa_idx, align 8
  %word.sroa.16.0.coal.sroa_idx = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 69, i32 9
  %10 = ptrtoint ptr %word.sroa.16.0.coal.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %10)
  %word.sroa.16.0.copyload = load i64, ptr %word.sroa.16.0.coal.sroa_idx, align 8
  %11 = tail call i64 @llvm.bswap.i64(i64 %word.sroa.0.0.copyload)
  %arrayidx5 = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 2, i32 0
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %arrayidx5, align 8
  %13 = tail call i64 @llvm.bswap.i64(i64 %word.sroa.8.0.copyload)
  %arrayidx5.1 = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx5.1, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %word.sroa.10.0.copyload)
  %arrayidx5.2 = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %arrayidx5.2, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %word.sroa.12.0.copyload)
  %arrayidx5.3 = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %arrayidx5.3, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %word.sroa.14.0.copyload)
  %arrayidx5.4 = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx5.4, align 8
  %21 = tail call i64 @llvm.bswap.i64(i64 %word.sroa.16.0.copyload)
  %arrayidx5.5 = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 2, i32 5
  %22 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %arrayidx5.5, align 8
  %call = call fastcc i32 @netxen_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6.not = icmp eq i32 %call, 0
  br i1 %cmp6.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netxen_send_cmd_descs(ptr noundef %adapter, ptr nocapture noundef readonly %cmd_desc_arr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %is_up = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 30
  %0 = ptrtoint ptr %is_up to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %is_up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %1)
  %cmp.not = icmp eq i16 %1, 777
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_ring2 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 44
  %2 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring2, align 8
  %txq = getelementptr inbounds %struct.nx_host_tx_ring, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txq, align 4
  %_xmit_lock.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %_xmit_lock.i) #10
  %6 = tail call i32 @llvm.read_register.i32(metadata !147) #10
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %xmit_lock_owner.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %9, ptr %xmit_lock_owner.i, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  %sw_consumer.i = getelementptr inbounds %struct.nx_host_tx_ring, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %sw_consumer.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sw_consumer.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp.i = icmp ugt i32 %16, %14
  br i1 %cmp.i, label %if.end.netxen_tx_avail.exit_crit_edge, label %cond.false.i

if.end.netxen_tx_avail.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_tx_avail.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %num_desc.i = getelementptr inbounds %struct.nx_host_tx_ring, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %num_desc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_desc.i, align 4
  %add.i = add i32 %18, %16
  br label %netxen_tx_avail.exit

netxen_tx_avail.exit:                             ; preds = %cond.false.i, %if.end.netxen_tx_avail.exit_crit_edge
  %.pn.i = phi i32 [ %add.i, %cond.false.i ], [ %16, %if.end.netxen_tx_avail.exit_crit_edge ]
  %cond.i = sub i32 %.pn.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond.i)
  %cmp4 = icmp ult i32 %cond.i, 2
  br i1 %cmp4, label %if.then6, label %netxen_tx_avail.exit.do.body24_crit_edge

netxen_tx_avail.exit.do.body24_crit_edge:         ; preds = %netxen_tx_avail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

if.then6:                                         ; preds = %netxen_tx_avail.exit
  %19 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %txq, align 4
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %20, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 4
  %23 = ptrtoint ptr %sw_consumer.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sw_consumer.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp.i2 = icmp ugt i32 %24, %22
  br i1 %cmp.i2, label %if.then6.netxen_tx_avail.exit8_crit_edge, label %cond.false.i5

if.then6.netxen_tx_avail.exit8_crit_edge:         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_tx_avail.exit8

cond.false.i5:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %num_desc.i3 = getelementptr inbounds %struct.nx_host_tx_ring, ptr %3, i32 0, i32 5
  %25 = ptrtoint ptr %num_desc.i3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_desc.i3, align 4
  %add.i4 = add i32 %26, %24
  br label %netxen_tx_avail.exit8

netxen_tx_avail.exit8:                            ; preds = %cond.false.i5, %if.then6.netxen_tx_avail.exit8_crit_edge
  %.pn.i6 = phi i32 [ %add.i4, %cond.false.i5 ], [ %24, %if.then6.netxen_tx_avail.exit8_crit_edge ]
  %cond.i7 = sub i32 %.pn.i6, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i7)
  %cmp12 = icmp ugt i32 %cond.i7, 1
  br i1 %cmp12, label %if.then14, label %netxen_tx_avail.exit8.cleanup.sink.split_crit_edge

netxen_tx_avail.exit8.cleanup.sink.split_crit_edge: ; preds = %netxen_tx_avail.exit8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then14:                                        ; preds = %netxen_tx_avail.exit8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %3, align 4
  %29 = ptrtoint ptr %sw_consumer.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sw_consumer.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %28)
  %cmp.i10 = icmp ugt i32 %30, %28
  br i1 %cmp.i10, label %if.then14.netxen_tx_avail.exit16_crit_edge, label %cond.false.i13

if.then14.netxen_tx_avail.exit16_crit_edge:       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_tx_avail.exit16

cond.false.i13:                                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %num_desc.i11 = getelementptr inbounds %struct.nx_host_tx_ring, ptr %3, i32 0, i32 5
  %31 = ptrtoint ptr %num_desc.i11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_desc.i11, align 4
  %add.i12 = add i32 %32, %30
  br label %netxen_tx_avail.exit16

netxen_tx_avail.exit16:                           ; preds = %cond.false.i13, %if.then14.netxen_tx_avail.exit16_crit_edge
  %.pn.i14 = phi i32 [ %add.i12, %cond.false.i13 ], [ %30, %if.then14.netxen_tx_avail.exit16_crit_edge ]
  %cond.i15 = sub i32 %.pn.i14, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %cond.i15)
  %cmp16 = icmp ugt i32 %cond.i15, 10
  br i1 %cmp16, label %if.then18, label %netxen_tx_avail.exit16.do.body24_crit_edge

netxen_tx_avail.exit16.do.body24_crit_edge:       ; preds = %netxen_tx_avail.exit16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

if.then18:                                        ; preds = %netxen_tx_avail.exit16
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %txq, align 4
  tail call void @netif_tx_wake_queue(ptr noundef %34) #10
  br label %do.body24

do.body24:                                        ; preds = %if.then18, %netxen_tx_avail.exit16.do.body24_crit_edge, %netxen_tx_avail.exit.do.body24_crit_edge
  %cmd_buf_arr = getelementptr inbounds %struct.nx_host_tx_ring, ptr %3, i32 0, i32 7
  %35 = ptrtoint ptr %cmd_buf_arr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cmd_buf_arr, align 4
  %arrayidx = getelementptr %struct.netxen_cmd_buffer, ptr %36, i32 %12
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx, align 8
  %frag_count = getelementptr %struct.netxen_cmd_buffer, ptr %36, i32 %12, i32 2
  %38 = ptrtoint ptr %frag_count to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %frag_count, align 8
  %desc_head = getelementptr inbounds %struct.nx_host_tx_ring, ptr %3, i32 0, i32 8
  %39 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %desc_head, align 4
  %arrayidx25 = getelementptr %struct.cmd_desc_type0, ptr %40, i32 %12
  %41 = call ptr @memcpy(ptr %arrayidx25, ptr %cmd_desc_arr, i32 64)
  %add = add i32 %12, 1
  %num_desc = getelementptr inbounds %struct.nx_host_tx_ring, ptr %3, i32 0, i32 5
  %42 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_desc, align 4
  %sub = add i32 %43, -1
  %and = and i32 %sub, %add
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and, ptr %3, align 4
  tail call void @netxen_nic_update_cmd_producer(ptr noundef %adapter, ptr noundef %3) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body24, %netxen_tx_avail.exit8.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %do.body24 ], [ -16, %netxen_tx_avail.exit8.cleanup.sink.split_crit_edge ]
  %45 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %txq, align 4
  %xmit_lock_owner.i19 = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 11
  %47 = ptrtoint ptr %xmit_lock_owner.i19 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 -1, ptr %xmit_lock_owner.i19, align 4
  %_xmit_lock.i20 = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 10
  tail call void @_raw_spin_unlock_bh(ptr noundef %_xmit_lock.i20) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_config_hw_lro(ptr noundef %adapter, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.nx_nic_req_t, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %state = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 70
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds i8, ptr %req, i32 24
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 140776143060992, ptr %req, align 8
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %5 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %portnum, align 2
  %conv = zext i8 %6 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %or = or i64 %shl, 24
  %7 = tail call i64 @llvm.bswap.i64(i64 %or)
  %req_hdr = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %req_hdr, align 8
  %conv1 = sext i32 %enable to i64
  %9 = tail call i64 @llvm.bswap.i64(i64 %conv1)
  %words = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %words to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %words, align 8
  %call2 = call fastcc i32 @netxen_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_config_bridged_mode(ptr noundef %adapter, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.nx_nic_req_t, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %flags = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 36
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 4
  %and.lobit = and i32 %and, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit, i32 %enable)
  %cmp = icmp eq i32 %and.lobit, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds i8, ptr %req, i32 24
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 140776143060992, ptr %req, align 8
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %5 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %portnum, align 2
  %conv = zext i8 %6 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %or = or i64 %shl, 23
  %7 = tail call i64 @llvm.bswap.i64(i64 %or)
  %req_hdr = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %req_hdr, align 8
  %conv2 = sext i32 %enable to i64
  %9 = tail call i64 @llvm.bswap.i64(i64 %conv2)
  %words = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %words to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %words, align 8
  %call = call fastcc i32 @netxen_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3.not = icmp eq i32 %call, 0
  br i1 %cmp3.not, label %if.end.if.end7_crit_edge, label %do.end

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end.if.end7_crit_edge
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %xor = xor i32 %12, 16
  store i32 %xor, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end7 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_config_rss(ptr noundef %adapter, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.nx_nic_req_t, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 140776143060992, ptr %req, align 8
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %1 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %portnum, align 2
  %conv = zext i8 %2 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %or = or i64 %shl, 1
  %3 = tail call i64 @llvm.bswap.i64(i64 %or)
  %req_hdr = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %req_hdr, align 8
  %and = shl i32 %enable, 8
  %5 = and i32 %and, 256
  %or3 = zext i32 %5 to i64
  %or4 = or i64 %or3, 1970324836974832
  %6 = tail call i64 @llvm.bswap.i64(i64 %or4)
  %words = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %words to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %words, align 8
  %arrayidx8 = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 4302980996204178622, ptr %arrayidx8, align 8
  %arrayidx8.1 = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -6688466159396573056, ptr %arrayidx8.1, align 8
  %arrayidx8.2 = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -3806726062286537810, ptr %arrayidx8.2, align 8
  %arrayidx8.3 = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 4406041342284636995, ptr %arrayidx8.3, align 8
  %arrayidx8.4 = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -2713882297990489307, ptr %arrayidx8.4, align 8
  %call = call fastcc i32 @netxen_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9.not = icmp eq i32 %call, 0
  br i1 %cmp9.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %netdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 1
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %14) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_config_ipaddr(ptr noundef %adapter, i32 noundef %ip, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.nx_nic_req_t, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %0 = getelementptr inbounds i8, ptr %req, i32 24
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 140776143060992, ptr %req, align 8
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %3 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %portnum, align 2
  %conv = zext i8 %4 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %or = or i64 %shl, 18
  %5 = tail call i64 @llvm.bswap.i64(i64 %or)
  %req_hdr = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %req_hdr, align 8
  %conv1 = sext i32 %cmd to i64
  %7 = tail call i64 @llvm.bswap.i64(i64 %conv1)
  %words = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %words to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %words, align 8
  %arrayidx3 = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %ip, ptr %arrayidx3, align 8
  %call = call fastcc i32 @netxen_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %netdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 1
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd)
  %cmp5 = icmp eq i32 %cmd, 2
  %cond = select i1 %cmp5, ptr @.str.11, ptr @.str.12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %11, ptr noundef nonnull %cond, i32 noundef %ip) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_linkevent_request(ptr noundef %adapter, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.nx_nic_req_t, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %0 = getelementptr inbounds i8, ptr %req, i32 24
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 140776143060992, ptr %req, align 8
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %3 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %portnum, align 2
  %conv = zext i8 %4 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %or = or i64 %shl, 21
  %5 = tail call i64 @llvm.bswap.i64(i64 %or)
  %req_hdr = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %req_hdr, align 8
  %shl1 = shl i32 %enable, 8
  %or2 = or i32 %shl1, %enable
  %conv3 = sext i32 %or2 to i64
  %7 = tail call i64 @llvm.bswap.i64(i64 %conv3)
  %words = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %words to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %words, align 8
  %call = call fastcc i32 @netxen_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %netdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 1
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %10) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_send_lro_cleanup(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.nx_nic_req_t, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %state = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 70
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds i8, ptr %req, i32 16
  %3 = call ptr @memset(ptr %2, i32 0, i32 48)
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 140776143060992, ptr %req, align 8
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %5 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %portnum, align 2
  %conv = zext i8 %6 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %or1 = or i64 %shl, 288230376151711751
  %7 = tail call i64 @llvm.bswap.i64(i64 %or1)
  %req_hdr = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %req_hdr, align 8
  %call2 = call fastcc i32 @netxen_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %netdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 1
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %10) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_nic_change_mtu(ptr noundef %netdev, i32 noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %set_mtu = getelementptr i8, ptr %netdev, i32 2680
  %0 = ptrtoint ptr %set_mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_mtu, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then4_crit_edge, label %if.end

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call2 = tail call i32 %1(ptr noundef %add.ptr.i, i32 noundef %mtu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.then4_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %entry.if.then4_crit_edge
  %mtu5 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mtu, ptr %mtu5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %rc.014 = phi i32 [ 0, %if.then4 ], [ %call2, %if.end.if.end6_crit_edge ]
  ret i32 %rc.014
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_get_flash_mac_addr(ptr noundef %adapter, ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  %v.i27 = alloca i32, align 4
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %0 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %portnum, align 2
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %add = add nuw nsw i32 %mul, 4097048
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #10
  %2 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %v.i, align 4, !annotation !159
  %call.i = call i32 @netxen_rom_fast_read(ptr noundef %adapter, i32 noundef %add, ptr noundef nonnull %v.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.netxen_get_flash_block.exit_crit_edge

entry.netxen_get_flash_block.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_get_flash_block.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %v.i, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4) #10
  %6 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mac, align 4
  %add.i = add nuw nsw i32 %mul, 4097052
  %call.1.i = call i32 @netxen_rom_fast_read(ptr noundef %adapter, i32 noundef %add.i, ptr noundef nonnull %v.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %netxen_get_flash_block.exit.thread, label %if.end.i.netxen_get_flash_block.exit_crit_edge

if.end.i.netxen_get_flash_block.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_get_flash_block.exit

netxen_get_flash_block.exit.thread:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i = getelementptr i32, ptr %mac, i32 1
  %7 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v.i, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8) #10
  %10 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %incdec.ptr.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #10
  br label %if.end

netxen_get_flash_block.exit:                      ; preds = %if.end.i.netxen_get_flash_block.exit_crit_edge, %entry.netxen_get_flash_block.exit_crit_edge
  %retval.1.i = phi i32 [ %call.i, %entry.netxen_get_flash_block.exit_crit_edge ], [ %call.1.i, %if.end.i.netxen_get_flash_block.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.1.i)
  %cmp = icmp eq i32 %retval.1.i, -1
  br i1 %cmp, label %netxen_get_flash_block.exit.cleanup_crit_edge, label %netxen_get_flash_block.exit.if.end_crit_edge

netxen_get_flash_block.exit.if.end_crit_edge:     ; preds = %netxen_get_flash_block.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

netxen_get_flash_block.exit.cleanup_crit_edge:    ; preds = %netxen_get_flash_block.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %netxen_get_flash_block.exit.if.end_crit_edge, %netxen_get_flash_block.exit.thread
  %11 = ptrtoint ptr %mac to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %mac, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %12)
  %cmp2 = icmp eq i64 %12, -1
  br i1 %cmp2, label %if.then4, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then4:                                         ; preds = %if.end
  %13 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %portnum, align 2
  %conv6 = zext i8 %14 to i32
  %mul7 = shl nuw nsw i32 %conv6, 3
  %add8 = or i32 %mul7, 4096000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i27) #10
  %15 = ptrtoint ptr %v.i27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %v.i27, align 4, !annotation !159
  %call.i28 = call i32 @netxen_rom_fast_read(ptr noundef %adapter, i32 noundef %add8, ptr noundef nonnull %v.i27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %if.end.i33, label %if.then4.netxen_get_flash_block.exit43_crit_edge

if.then4.netxen_get_flash_block.exit43_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_get_flash_block.exit43

if.end.i33:                                       ; preds = %if.then4
  %16 = ptrtoint ptr %v.i27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %v.i27, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17) #10
  %19 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %mac, align 4
  %add.i30 = or i32 %mul7, 4096004
  %call.1.i31 = call i32 @netxen_rom_fast_read(ptr noundef %adapter, i32 noundef %add.i30, ptr noundef nonnull %v.i27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i31)
  %tobool.not.1.i32 = icmp eq i32 %call.1.i31, 0
  br i1 %tobool.not.1.i32, label %netxen_get_flash_block.exit43.thread, label %if.end.i33.netxen_get_flash_block.exit43_crit_edge

if.end.i33.netxen_get_flash_block.exit43_crit_edge: ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_get_flash_block.exit43

netxen_get_flash_block.exit43.thread:             ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i34 = getelementptr i32, ptr %mac, i32 1
  %20 = ptrtoint ptr %v.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v.i27, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21) #10
  %23 = ptrtoint ptr %incdec.ptr.i34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %incdec.ptr.i34, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i27) #10
  br label %if.end13

netxen_get_flash_block.exit43:                    ; preds = %if.end.i33.netxen_get_flash_block.exit43_crit_edge, %if.then4.netxen_get_flash_block.exit43_crit_edge
  %retval.1.i42 = phi i32 [ %call.i28, %if.then4.netxen_get_flash_block.exit43_crit_edge ], [ %call.1.i31, %if.end.i33.netxen_get_flash_block.exit43_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.1.i42)
  %cmp10 = icmp eq i32 %retval.1.i42, -1
  br i1 %cmp10, label %netxen_get_flash_block.exit43.cleanup_crit_edge, label %netxen_get_flash_block.exit43.if.end13_crit_edge

netxen_get_flash_block.exit43.if.end13_crit_edge: ; preds = %netxen_get_flash_block.exit43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

netxen_get_flash_block.exit43.cleanup_crit_edge:  ; preds = %netxen_get_flash_block.exit43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %netxen_get_flash_block.exit43.if.end13_crit_edge, %netxen_get_flash_block.exit43.thread
  %24 = ptrtoint ptr %mac to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %mac, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %25)
  %cmp14 = icmp eq i64 %25, -1
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end13.if.end18_crit_edge, %if.end.if.end18_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end13.cleanup_crit_edge, %netxen_get_flash_block.exit43.cleanup_crit_edge, %netxen_get_flash_block.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -1, %netxen_get_flash_block.exit.cleanup_crit_edge ], [ -1, %netxen_get_flash_block.exit43.cleanup_crit_edge ], [ -1, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_p3_get_mac_addr(ptr noundef %adapter, ptr nocapture noundef writeonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_func1 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 13
  %0 = ptrtoint ptr %pci_func1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pci_func1, align 2
  %conv = zext i8 %1 to i32
  %div25 = lshr i32 %conv, 1
  %mul2 = mul nuw nsw i32 %div25, 12
  %add = add nuw nsw i32 %mul2, 136323520
  %and = and i32 %conv, 1
  %mul3 = shl nuw nsw i32 %and, 2
  %add4 = add nuw nsw i32 %add, %mul3
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %2 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crb_read, align 4
  %call = tail call i32 %3(ptr noundef %adapter, i32 noundef %add4) #10
  %4 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crb_read, align 4
  %add6 = add nuw nsw i32 %add4, 4
  %call7 = tail call i32 %5(ptr noundef %adapter, i32 noundef %add6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %shr = lshr i32 %call, 16
  %call.sink = select i1 %tobool.not, i32 %call, i32 %shr
  %.sink = select i1 %tobool.not, i64 32, i64 16
  %conv11 = zext i32 %call.sink to i64
  %conv12 = zext i32 %call7 to i64
  %shl13 = shl nuw i64 %conv12, %.sink
  %or14 = or i64 %shl13, %conv11
  %6 = tail call i64 @llvm.bswap.i64(i64 %or14)
  %7 = ptrtoint ptr %mac to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %mac, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @netxen_get_ioaddr(ptr nocapture noundef readonly %adapter, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %1)
  %cmp = icmp ult i8 %1, 38
  br i1 %cmp, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  %2 = add i32 %offset, -100663297
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %2)
  %3 = icmp ult i32 %2, 33554431
  br i1 %3, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pci_base1 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 1
  %4 = ptrtoint ptr %pci_base1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_base1, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %offset
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 -100663296
  br label %if.end32

if.else:                                          ; preds = %if.then
  %add = add i32 %offset, -33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %add)
  %cmp.i = icmp ult i32 %add, 1048576
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  br label %if.end32

if.end.i:                                         ; preds = %if.else
  %8 = add i32 %offset, -134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 9158656, i32 %8)
  %9 = icmp ult i32 %8, 9158656
  br i1 %9, label %if.then5.i, label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pci_base1.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 1
  %10 = ptrtoint ptr %pci_base1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_base1.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %11, i32 %add
  %add.ptr8.i = getelementptr i8, ptr %add.ptr7.i, i32 -100663296
  br label %if.end32

if.end9.i:                                        ; preds = %if.end.i
  %12 = add i32 %offset, -151928832
  call void @__sanitizer_cov_trace_const_cmp4(i32 15843328, i32 %12)
  %13 = icmp ult i32 %12, 15843328
  br i1 %13, label %if.then13.i, label %if.end9.i.if.end32_crit_edge

if.end9.i.if.end32_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %pci_base2.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 2
  %14 = ptrtoint ptr %pci_base2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_base2.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %15, i32 %add
  %add.ptr16.i = getelementptr i8, ptr %add.ptr15.i, i32 -118374400
  br label %if.end32

if.else9:                                         ; preds = %entry
  %16 = add i32 %offset, -167772160
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67108864, i32 %16)
  %17 = icmp ult i32 %16, -67108864
  br i1 %17, label %if.else9.do.end_crit_edge, label %if.end.i41

if.else9.do.end_crit_edge:                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i41:                                       ; preds = %if.else9
  %sub.i = add nsw i32 %offset, -100663296
  %shr.i = lshr i32 %sub.i, 20
  %arrayidx.i = getelementptr [64 x %struct.crb_128M_2M_block_map_t], ptr @crb_128M_2M_map, i32 0, i32 %shr.i
  %shr2.i = lshr i32 %sub.i, 16
  %and3.i = and i32 %shr2.i, 15
  %arrayidx4.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map_t], ptr %arrayidx.i, i32 0, i32 %and3.i
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end.i41.if.end12.i_crit_edge, label %land.lhs.true.i

if.end.i41.if.end12.i_crit_edge:                  ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end.i41
  %start_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map_t], ptr %arrayidx.i, i32 0, i32 %and3.i, i32 1
  %20 = ptrtoint ptr %start_128M.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %start_128M.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %21)
  %cmp5.not.i = icmp ult i32 %sub.i, %21
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end12.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %end_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map_t], ptr %arrayidx.i, i32 0, i32 %and3.i, i32 2
  %22 = ptrtoint ptr %end_128M.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end_128M.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %sub.i)
  %cmp7.i = icmp ugt i32 %23, %sub.i
  br i1 %cmp7.i, label %netxen_nic_pci_get_crb_addr_2M.exit, label %land.lhs.true6.i.if.end12.i_crit_edge

land.lhs.true6.i.if.end12.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.end12.i:                                       ; preds = %land.lhs.true6.i.if.end12.i_crit_edge, %land.lhs.true.i.if.end12.i_crit_edge, %if.end.i41.if.end12.i_crit_edge
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 8
  %add.ptr15.i43 = getelementptr i8, ptr %25, i32 1966080
  %26 = and i32 %offset, 65535
  %add.ptr17.i = getelementptr i8, ptr %add.ptr15.i43, i32 %26
  br label %do.end

netxen_nic_pci_get_crb_addr_2M.exit:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 8
  %start_2M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map_t], ptr %arrayidx.i, i32 0, i32 %and3.i, i32 3
  %29 = ptrtoint ptr %start_2M.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %start_2M.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %28, i32 %30
  %sub10.i = sub i32 %sub.i, %21
  %add.ptr11.i = getelementptr i8, ptr %add.ptr.i42, i32 %sub10.i
  br label %if.end32

do.end:                                           ; preds = %if.end12.i, %if.else9.do.end_crit_edge
  %addr.0.ph = phi ptr [ %add.ptr17.i, %if.end12.i ], [ null, %if.else9.do.end_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1326, i32 noundef 9, ptr noundef null) #10
  br label %if.end32

if.end32:                                         ; preds = %do.end, %netxen_nic_pci_get_crb_addr_2M.exit, %if.then13.i, %if.end9.i.if.end32_crit_edge, %if.then5.i, %if.then.i, %if.then6
  %addr.1 = phi ptr [ %add.ptr8, %if.then6 ], [ %add.ptr11.i, %netxen_nic_pci_get_crb_addr_2M.exit ], [ %addr.0.ph, %do.end ], [ %add.ptr.i, %if.then.i ], [ %add.ptr8.i, %if.then5.i ], [ %add.ptr16.i, %if.then13.i ], [ null, %if.end9.i.if.end32_crit_edge ]
  ret ptr %addr.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netxen_pci_camqm_read_2M(ptr noundef %adapter, i64 noundef %off, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1046528
  %2 = trunc i64 %off to i32
  %idx.ext = add i32 %2, -75497472
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %idx.ext
  %mem_lock = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %mem_lock) #10
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  %add.ptr.i = getelementptr i32, ptr %add.ptr1, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !162
  %5 = zext i32 %4 to i64
  %6 = zext i32 %3 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or i64 %7, %5
  %9 = tail call i64 @llvm.bswap.i64(i64 %8) #10
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %data, align 8
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netxen_pci_camqm_write_2M(ptr noundef %adapter, i64 noundef %off, i64 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1046528
  %2 = trunc i64 %off to i32
  %idx.ext = add i32 %2, -75497472
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %idx.ext
  %mem_lock = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %mem_lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !163
  tail call void @arm_heavy_mb() #10
  %conv.i = trunc i64 %data to i32
  %3 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %3) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %shr.i = lshr i64 %data, 32
  %conv3.i = trunc i64 %shr.i to i32
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #10
  %add.ptr.i = getelementptr i8, ptr %add.ptr1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #10, !srcloc !164
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @netxen_setup_hwops(ptr noundef %adapter) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %init_port = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 51
  %0 = ptrtoint ptr %init_port to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @netxen_niu_xg_init_port, ptr %init_port, align 4
  %stop_port = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 52
  %1 = ptrtoint ptr %stop_port to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @netxen_niu_disable_xg_port, ptr %stop_port, align 8
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %2 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %3)
  %cmp = icmp ult i8 %3, 38
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %crb_read to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @netxen_nic_hw_read_wx_128M, ptr %crb_read, align 4
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %5 = ptrtoint ptr %crb_write to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @netxen_nic_hw_write_wx_128M, ptr %crb_write, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %crb_read to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @netxen_nic_hw_read_wx_2M, ptr %crb_read, align 4
  %crb_write3 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %7 = ptrtoint ptr %crb_write3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @netxen_nic_hw_write_wx_2M, ptr %crb_write3, align 8
  %phy_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 49
  %8 = ptrtoint ptr %phy_read to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nx_fw_cmd_query_phy, ptr %phy_read, align 4
  %phy_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 50
  %9 = ptrtoint ptr %phy_write to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nx_fw_cmd_set_phy, ptr %phy_write, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %netxen_nic_pci_set_window_2M.sink = phi ptr [ @netxen_nic_pci_set_window_128M, %if.then ], [ @netxen_nic_pci_set_window_2M, %if.else ]
  %netxen_nic_pci_mem_read_2M.sink = phi ptr [ @netxen_nic_pci_mem_read_128M, %if.then ], [ @netxen_nic_pci_mem_read_2M, %if.else ]
  %netxen_nic_pci_mem_write_2M.sink = phi ptr [ @netxen_nic_pci_mem_write_128M, %if.then ], [ @netxen_nic_pci_mem_write_2M, %if.else ]
  %netxen_nic_io_read_2M.sink = phi ptr [ @netxen_nic_io_read_128M, %if.then ], [ @netxen_nic_io_read_2M, %if.else ]
  %netxen_nic_io_write_2M.sink = phi ptr [ @netxen_nic_io_write_128M, %if.then ], [ @netxen_nic_io_write_2M, %if.else ]
  %netxen_p3_nic_set_mac_addr.sink = phi ptr [ @netxen_p2_nic_set_mac_addr, %if.then ], [ @netxen_p3_nic_set_mac_addr, %if.else ]
  %netxen_p3_nic_set_multi.sink = phi ptr [ @netxen_p2_nic_set_multi, %if.then ], [ @netxen_p3_nic_set_multi, %if.else ]
  %nx_fw_cmd_set_mtu.sink = phi ptr [ @netxen_nic_set_mtu_xgb, %if.then ], [ @nx_fw_cmd_set_mtu, %if.else ]
  %netxen_p3_nic_set_promisc.sink = phi ptr [ @netxen_p2_nic_set_promisc, %if.then ], [ @netxen_p3_nic_set_promisc, %if.else ]
  %10 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 57
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %netxen_nic_pci_set_window_2M.sink, ptr %10, align 4
  %12 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 55
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %netxen_nic_pci_mem_read_2M.sink, ptr %12, align 4
  %14 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 56
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %netxen_nic_pci_mem_write_2M.sink, ptr %14, align 8
  %16 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 58
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %netxen_nic_io_read_2M.sink, ptr %16, align 8
  %18 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 59
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %netxen_nic_io_write_2M.sink, ptr %18, align 4
  %20 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 45
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %netxen_p3_nic_set_mac_addr.sink, ptr %20, align 4
  %22 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 48
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %netxen_p3_nic_set_multi.sink, ptr %22, align 8
  %24 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 46
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %nx_fw_cmd_set_mtu.sink, ptr %24, align 8
  %26 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 47
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %netxen_p3_nic_set_promisc.sink, ptr %26, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_niu_xg_init_port(ptr noundef %adapter, i32 noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %1)
  %cmp = icmp ult i8 %1, 38
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %2 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crb_write, align 8
  %mul = shl i32 %port, 16
  %add = add i32 %mul, 107413508
  %call = tail call i32 %3(ptr noundef %adapter, i32 noundef %add, i32 noundef 5191) #10
  %4 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crb_write, align 8
  %add4 = add i32 %mul, 107413504
  %call5 = tail call i32 %5(ptr noundef %adapter, i32 noundef %add4, i32 noundef 5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_niu_disable_xg_port(ptr noundef %adapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %physical_port = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %physical_port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %physical_port, align 1
  %conv = zext i8 %1 to i32
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %2 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %3)
  %cmp = icmp ugt i8 %3, 47
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp3 = icmp ugt i8 %1, 1
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %4 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crb_write, align 8
  %mul = shl nuw nsw i32 %conv, 16
  %add = add nuw nsw i32 %mul, 107413504
  %call = tail call i32 %5(ptr noundef %adapter, i32 noundef %add, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %., %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_hw_read_wx_128M(ptr noundef %adapter, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %off, -134217729
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %0)
  %1 = icmp ult i32 %0, 33554431
  %add.i = add i32 %off, -33554432
  %off.0.i = select i1 %1, i32 %add.i, i32 %off
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %off.0.i)
  %cmp.i.i = icmp ult i32 %off.0.i, 1048576
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %off.0.i
  br label %pci_base_offset.exit.i

if.end.i.i:                                       ; preds = %entry
  %4 = add i32 %off.0.i, -100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 9158656, i32 %4)
  %5 = icmp ult i32 %4, 9158656
  br i1 %5, label %if.then5.i.i, label %if.end9.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pci_base1.i.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 1
  %6 = ptrtoint ptr %pci_base1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_base1.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %7, i32 %off.0.i
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr7.i.i, i32 -100663296
  br label %pci_base_offset.exit.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %8 = add i32 %off.0.i, -118374400
  call void @__sanitizer_cov_trace_const_cmp4(i32 15843328, i32 %8)
  %9 = icmp ult i32 %8, 15843328
  br i1 %9, label %if.then13.i.i, label %if.end9.i.i.if.end3.i_crit_edge

if.end9.i.i.if.end3.i_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then13.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pci_base2.i.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 2
  %10 = ptrtoint ptr %pci_base2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_base2.i.i, align 8
  %add.ptr15.i.i = getelementptr i8, ptr %11, i32 %off.0.i
  %add.ptr16.i.i = getelementptr i8, ptr %add.ptr15.i.i, i32 -118374400
  br label %pci_base_offset.exit.i

pci_base_offset.exit.i:                           ; preds = %if.then13.i.i, %if.then5.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %add.ptr8.i.i, %if.then5.i.i ], [ %add.ptr16.i.i, %if.then13.i.i ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %pci_base_offset.exit.if.end3_crit_edge.i, label %pci_base_offset.exit.i.if.end_crit_edge

pci_base_offset.exit.i.if.end_crit_edge:          ; preds = %pci_base_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pci_base_offset.exit.if.end3_crit_edge.i:         ; preds = %pci_base_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %.pre.i = add nsw i32 %off.0.i, -100663296
  br label %if.end3.i

if.end3.i:                                        ; preds = %pci_base_offset.exit.if.end3_crit_edge.i, %if.end9.i.i.if.end3.i_crit_edge
  %sub6.pre-phi.i = phi i32 [ %.pre.i, %pci_base_offset.exit.if.end3_crit_edge.i ], [ %4, %if.end9.i.i.if.end3.i_crit_edge ]
  %pci_len0.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 6
  %12 = ptrtoint ptr %pci_len0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pci_len0.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4.i = icmp eq i32 %13, 0
  %spec.select.i = select i1 %cmp4.i, i32 %sub6.pre-phi.i, i32 %off.0.i
  %pdev.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %14 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i, align 8
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 47
  %16 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resource.i, align 8
  %and.i = and i32 %spec.select.i, -4096
  %add8.i = add i32 %and.i, %17
  %call9.i = tail call ptr @ioremap(i32 noundef %add8.i, i32 noundef 4096) #10
  %tobool10.not.i = icmp eq ptr %call9.i, null
  %and12.i = and i32 %spec.select.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call9.i, i32 %and12.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %or.cond44 = select i1 %tobool10.not.i, i1 true, i1 %tobool.not
  br i1 %or.cond44, label %if.end3.i.cleanup_crit_edge, label %if.end3.i.if.end_crit_edge

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.end3.i.if.end_crit_edge, %pci_base_offset.exit.i.if.end_crit_edge
  %retval.0.i43 = phi ptr [ %retval.0.i.i, %pci_base_offset.exit.i.if.end_crit_edge ], [ %add.ptr.i, %if.end3.i.if.end_crit_edge ]
  %mem_ptr.042 = phi ptr [ null, %pci_base_offset.exit.i.if.end_crit_edge ], [ %call9.i, %if.end3.i.if.end_crit_edge ]
  %crb_lock.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 9
  br i1 %1, label %if.then2, label %do.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_read_lock(ptr noundef %crb_lock.i) #10
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %retval.0.i43) #10, !srcloc !160
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !166
  tail call void @_raw_read_unlock(ptr noundef %crb_lock.i) #10
  br label %if.end19

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %crb_lock.i) #10
  tail call fastcc void @netxen_nic_pci_set_crbwindow_128M(ptr noundef %adapter, i32 noundef 0)
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %retval.0.i43) #10, !srcloc !160
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  tail call fastcc void @netxen_nic_pci_set_crbwindow_128M(ptr noundef %adapter, i32 noundef 33554432)
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %crb_lock.i, i32 noundef %call5) #10
  br label %if.end19

if.end19:                                         ; preds = %do.body, %if.then2
  %data.0 = phi i32 [ %19, %if.then2 ], [ %21, %do.body ]
  %tobool20.not = icmp eq ptr %mem_ptr.042, null
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.then21

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %mem_ptr.042) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end19.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %data.0, %if.then21 ], [ %data.0, %if.end19.cleanup_crit_edge ], [ -5, %if.end3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_hw_write_wx_128M(ptr noundef %adapter, i32 noundef %off, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %off, -134217729
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %0)
  %1 = icmp ult i32 %0, 33554431
  %add.i = add i32 %off, -33554432
  %off.0.i = select i1 %1, i32 %add.i, i32 %off
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %off.0.i)
  %cmp.i.i = icmp ult i32 %off.0.i, 1048576
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %off.0.i
  br label %pci_base_offset.exit.i

if.end.i.i:                                       ; preds = %entry
  %4 = add i32 %off.0.i, -100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 9158656, i32 %4)
  %5 = icmp ult i32 %4, 9158656
  br i1 %5, label %if.then5.i.i, label %if.end9.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pci_base1.i.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 1
  %6 = ptrtoint ptr %pci_base1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_base1.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %7, i32 %off.0.i
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr7.i.i, i32 -100663296
  br label %pci_base_offset.exit.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %8 = add i32 %off.0.i, -118374400
  call void @__sanitizer_cov_trace_const_cmp4(i32 15843328, i32 %8)
  %9 = icmp ult i32 %8, 15843328
  br i1 %9, label %if.then13.i.i, label %if.end9.i.i.if.end3.i_crit_edge

if.end9.i.i.if.end3.i_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then13.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pci_base2.i.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 2
  %10 = ptrtoint ptr %pci_base2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_base2.i.i, align 8
  %add.ptr15.i.i = getelementptr i8, ptr %11, i32 %off.0.i
  %add.ptr16.i.i = getelementptr i8, ptr %add.ptr15.i.i, i32 -118374400
  br label %pci_base_offset.exit.i

pci_base_offset.exit.i:                           ; preds = %if.then13.i.i, %if.then5.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %add.ptr8.i.i, %if.then5.i.i ], [ %add.ptr16.i.i, %if.then13.i.i ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %pci_base_offset.exit.if.end3_crit_edge.i, label %pci_base_offset.exit.i.if.end_crit_edge

pci_base_offset.exit.i.if.end_crit_edge:          ; preds = %pci_base_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pci_base_offset.exit.if.end3_crit_edge.i:         ; preds = %pci_base_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %.pre.i = add nsw i32 %off.0.i, -100663296
  br label %if.end3.i

if.end3.i:                                        ; preds = %pci_base_offset.exit.if.end3_crit_edge.i, %if.end9.i.i.if.end3.i_crit_edge
  %sub6.pre-phi.i = phi i32 [ %.pre.i, %pci_base_offset.exit.if.end3_crit_edge.i ], [ %4, %if.end9.i.i.if.end3.i_crit_edge ]
  %pci_len0.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 6
  %12 = ptrtoint ptr %pci_len0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pci_len0.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4.i = icmp eq i32 %13, 0
  %spec.select.i = select i1 %cmp4.i, i32 %sub6.pre-phi.i, i32 %off.0.i
  %pdev.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %14 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i, align 8
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 47
  %16 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resource.i, align 8
  %and.i = and i32 %spec.select.i, -4096
  %add8.i = add i32 %and.i, %17
  %call9.i = tail call ptr @ioremap(i32 noundef %add8.i, i32 noundef 4096) #10
  %tobool10.not.i = icmp eq ptr %call9.i, null
  %and12.i = and i32 %spec.select.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call9.i, i32 %and12.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %or.cond43 = select i1 %tobool10.not.i, i1 true, i1 %tobool.not
  br i1 %or.cond43, label %if.end3.i.cleanup_crit_edge, label %if.end3.i.if.end_crit_edge

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.end3.i.if.end_crit_edge, %pci_base_offset.exit.i.if.end_crit_edge
  %retval.0.i42 = phi ptr [ %retval.0.i.i, %pci_base_offset.exit.i.if.end_crit_edge ], [ %add.ptr.i, %if.end3.i.if.end_crit_edge ]
  %mem_ptr.041 = phi ptr [ null, %pci_base_offset.exit.i.if.end_crit_edge ], [ %call9.i, %if.end3.i.if.end_crit_edge ]
  %crb_lock.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 9
  br i1 %1, label %if.then2, label %do.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_read_lock(ptr noundef %crb_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  tail call void @arm_heavy_mb() #10
  %18 = tail call i32 @llvm.bswap.i32(i32 %data) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %retval.0.i42, i32 %18) #10, !srcloc !164
  tail call void @_raw_read_unlock(ptr noundef %crb_lock.i) #10
  br label %if.end18

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %crb_lock.i) #10
  tail call fastcc void @netxen_nic_pci_set_crbwindow_128M(ptr noundef %adapter, i32 noundef 0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !169
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %data)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %retval.0.i42, i32 %19) #10, !srcloc !164
  tail call fastcc void @netxen_nic_pci_set_crbwindow_128M(ptr noundef %adapter, i32 noundef 33554432)
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %crb_lock.i, i32 noundef %call4) #10
  br label %if.end18

if.end18:                                         ; preds = %do.body, %if.then2
  %tobool19.not = icmp eq ptr %mem_ptr.041, null
  br i1 %tobool19.not, label %if.end18.cleanup_crit_edge, label %if.then20

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %mem_ptr.041) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end18.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then20 ], [ 0, %if.end18.cleanup_crit_edge ], [ -5, %if.end3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @netxen_nic_pci_set_window_128M(ptr nocapture noundef readnone %adapter, i64 noundef %addr, ptr nocapture noundef writeonly %start) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i64 %addr, -8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048575, i64 %0)
  %1 = icmp ult i64 %0, 1048575
  br i1 %1, label %entry.return.sink.split_crit_edge, label %if.else

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

if.else:                                          ; preds = %entry
  %2 = add i64 %addr, -8594128896
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048575, i64 %2)
  %3 = icmp ult i64 %2, 1048575
  br i1 %3, label %if.else.return.sink.split_crit_edge, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.else.return.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

return.sink.split:                                ; preds = %if.else.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %.sink19 = phi i32 [ 83886080, %entry.return.sink.split_crit_edge ], [ 80740352, %if.else.return.sink.split_crit_edge ]
  %4 = trunc i64 %addr to i32
  %conv10 = add nuw nsw i32 %.sink19, %4
  %5 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv10, ptr %start, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.else.return_crit_edge
  %retval.0 = phi i32 [ -5, %if.else.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_pci_mem_read_128M(ptr noundef %adapter, i64 noundef %off, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %off, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = add i64 %off, -12884901888
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194303, i64 %0)
  %1 = icmp ult i64 %0, 4194303
  br i1 %1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pci_base2.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 2
  %2 = ptrtoint ptr %pci_base2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_base2.i, align 8
  %add.ptr16.i = getelementptr i8, ptr %3, i32 12697696
  br label %correct

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435455, i64 %off)
  %cmp6 = icmp ult i64 %off, 268435455
  br i1 %cmp6, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %pci_base1.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 1
  %4 = ptrtoint ptr %pci_base1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_base1.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %5, i32 2097296
  br label %correct

if.end15:                                         ; preds = %if.end5
  %6 = and i64 %off, -4194305
  %7 = add i64 %6, -8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048575, i64 %7)
  %8 = icmp ult i64 %7, 1048575
  br i1 %8, label %if.then26, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26:                                        ; preds = %if.end15
  %pci_len0 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 6
  %9 = ptrtoint ptr %pci_len0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pci_len0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp27.not = icmp eq i32 %10, 0
  br i1 %cmp27.not, label %if.then26.cleanup_crit_edge, label %if.then29

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call fastcc i32 @netxen_nic_pci_mem_access_direct(ptr noundef %adapter, i64 noundef %off, ptr noundef %data, i32 noundef 0)
  br label %cleanup

correct:                                          ; preds = %if.then11, %if.then2
  %.sink128 = phi i32 [ -8, %if.then11 ], [ 4194296, %if.then2 ]
  %mem_crb.0 = phi ptr [ %add.ptr8.i, %if.then11 ], [ %add.ptr16.i, %if.then2 ]
  %data_lo.0 = phi i32 [ 24, %if.then11 ], [ 16, %if.then2 ]
  %data_hi.0 = phi i32 [ 28, %if.then11 ], [ 20, %if.then2 ]
  %addr_hi.0 = phi i32 [ 8, %if.then11 ], [ 24, %if.then2 ]
  %off_hi.0 = phi i32 [ 0, %if.then11 ], [ 786432, %if.then2 ]
  %11 = trunc i64 %off to i32
  %conv14 = and i32 %.sink128, %11
  %mem_lock = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %mem_lock) #10
  tail call fastcc void @netxen_nic_pci_set_crbwindow_128M(ptr noundef %adapter, i32 noundef 0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !170
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv14)
  %add.ptr = getelementptr i8, ptr %mem_crb.0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !171
  tail call void @arm_heavy_mb() #10
  %add.ptr37 = getelementptr i8, ptr %mem_crb.0, i32 %addr_hi.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %off_hi.0) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !172
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mem_crb.0, i32 33554432) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mem_crb.0, i32 50331648) #10, !srcloc !164
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %j.0127, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.then58, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %correct
  %j.0127 = phi i32 [ 0, %correct ], [ %inc, %for.cond.for.body_crit_edge ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mem_crb.0) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !174
  %14 = and i32 %13, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp52 = icmp eq i32 %14, 0
  br i1 %cmp52, label %if.else, label %for.cond

if.then58:                                        ; preds = %for.cond
  %call59 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.netxen_nic_pci_mem_read_128M) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then58.if.end80_crit_edge, label %do.end64

if.then58.if.end80_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

do.end64:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #13
  br label %if.end80

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr68 = getelementptr i8, ptr %mem_crb.0, i32 %data_hi.0
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !175
  %add.ptr75 = getelementptr i8, ptr %mem_crb.0, i32 %data_lo.0
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !176
  %19 = zext i32 %17 to i64
  %20 = zext i32 %18 to i64
  %21 = shl nuw i64 %20, 32
  %22 = or i64 %21, %19
  %23 = tail call i64 @llvm.bswap.i64(i64 %22)
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %data, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.else, %do.end64, %if.then58.if.end80_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ -5, %do.end64 ], [ -5, %if.then58.if.end80_crit_edge ]
  tail call fastcc void @netxen_nic_pci_set_crbwindow_128M(ptr noundef %adapter, i32 noundef 33554432)
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.then29, %if.then26.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end80 ], [ %call30, %if.then29 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.then26.cleanup_crit_edge ], [ -5, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_pci_mem_write_128M(ptr noundef %adapter, i64 noundef %off, i64 noundef %data) #0 align 64 {
entry:
  %data.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %data, ptr %data.addr, align 8
  %and = and i64 %off, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = add i64 %off, -12884901888
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194303, i64 %1)
  %2 = icmp ult i64 %1, 4194303
  br i1 %2, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pci_base2.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 2
  %3 = ptrtoint ptr %pci_base2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_base2.i, align 8
  %add.ptr16.i = getelementptr i8, ptr %4, i32 12697696
  br label %correct

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435455, i64 %off)
  %cmp6 = icmp ult i64 %off, 268435455
  br i1 %cmp6, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %pci_base1.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 1
  %5 = ptrtoint ptr %pci_base1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_base1.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %6, i32 2097296
  br label %correct

if.end15:                                         ; preds = %if.end5
  %7 = and i64 %off, -4194305
  %8 = add i64 %7, -8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048575, i64 %8)
  %9 = icmp ult i64 %8, 1048575
  br i1 %9, label %if.then26, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26:                                        ; preds = %if.end15
  %pci_len0 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 6
  %10 = ptrtoint ptr %pci_len0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pci_len0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp27.not = icmp eq i32 %11, 0
  br i1 %cmp27.not, label %if.then26.cleanup_crit_edge, label %if.then29

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = call fastcc i32 @netxen_nic_pci_mem_access_direct(ptr noundef %adapter, i64 noundef %off, ptr noundef nonnull %data.addr, i32 noundef 1)
  br label %cleanup

correct:                                          ; preds = %if.then11, %if.then2
  %.sink123 = phi i32 [ -8, %if.then11 ], [ 4194296, %if.then2 ]
  %off_hi.0 = phi i32 [ 0, %if.then11 ], [ 786432, %if.then2 ]
  %addr_hi.0 = phi i32 [ 8, %if.then11 ], [ 24, %if.then2 ]
  %data_hi.0 = phi i32 [ 20, %if.then11 ], [ 12, %if.then2 ]
  %data_lo.0 = phi i32 [ 16, %if.then11 ], [ 8, %if.then2 ]
  %mem_crb.0 = phi ptr [ %add.ptr8.i, %if.then11 ], [ %add.ptr16.i, %if.then2 ]
  %12 = trunc i64 %off to i32
  %conv14 = and i32 %.sink123, %12
  %mem_lock = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %mem_lock) #10
  tail call fastcc void @netxen_nic_pci_set_crbwindow_128M(ptr noundef %adapter, i32 noundef 0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !177
  tail call void @arm_heavy_mb() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv14)
  %add.ptr = getelementptr i8, ptr %mem_crb.0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !178
  tail call void @arm_heavy_mb() #10
  %add.ptr37 = getelementptr i8, ptr %mem_crb.0, i32 %addr_hi.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %off_hi.0) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !179
  tail call void @arm_heavy_mb() #10
  %conv42 = trunc i64 %data to i32
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv42)
  %add.ptr43 = getelementptr i8, ptr %mem_crb.0, i32 %data_lo.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %14) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
  %shr47 = lshr i64 %data, 32
  %conv49 = trunc i64 %shr47 to i32
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv49)
  %add.ptr50 = getelementptr i8, ptr %mem_crb.0, i32 %data_hi.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %15) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mem_crb.0, i32 100663296) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !182
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mem_crb.0, i32 117440512) #10, !srcloc !164
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %j.0122, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.then71, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %correct
  %j.0122 = phi i32 [ 0, %correct ], [ %inc, %for.cond.for.body_crit_edge ]
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mem_crb.0) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  %17 = and i32 %16, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp65 = icmp eq i32 %17, 0
  br i1 %cmp65, label %for.body.if.end79_crit_edge, label %for.cond

for.body.if.end79_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then71:                                        ; preds = %for.cond
  %call72 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.netxen_nic_pci_mem_write_128M) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then71.if.end79_crit_edge, label %do.end77

if.then71.if.end79_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

do.end77:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #13
  br label %if.end79

if.end79:                                         ; preds = %do.end77, %if.then71.if.end79_crit_edge, %for.body.if.end79_crit_edge
  %ret.0 = phi i32 [ -5, %do.end77 ], [ -5, %if.then71.if.end79_crit_edge ], [ 0, %for.body.if.end79_crit_edge ]
  tail call fastcc void @netxen_nic_pci_set_crbwindow_128M(ptr noundef %adapter, i32 noundef 33554432)
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.then29, %if.then26.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end79 ], [ %call30, %if.then29 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.then26.cleanup_crit_edge ], [ -5, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_io_read_128M(ptr noundef %adapter, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crb_lock = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 9
  tail call void @_raw_read_lock(ptr noundef %crb_lock) #10
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !160
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !166
  tail call void @_raw_read_unlock(ptr noundef %crb_lock) #10
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_nic_io_write_128M(ptr noundef %adapter, ptr noundef %addr, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crb_lock = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 9
  tail call void @_raw_read_lock(ptr noundef %crb_lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  tail call void @arm_heavy_mb() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %data)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !164
  tail call void @_raw_read_unlock(ptr noundef %crb_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_p2_nic_set_mac_addr(ptr noundef %adapter, ptr nocapture noundef readonly %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %physical_port = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %physical_port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %physical_port, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv2, 16
  %arrayidx3 = getelementptr i8, ptr %addr, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw i32 %conv4, 24
  %or = or i32 %shl5, %shl
  %arrayidx6 = getelementptr i8, ptr %addr, i32 2
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %arrayidx8 = getelementptr i8, ptr %addr, i32 3
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %shl10 = shl nuw nsw i32 %conv9, 8
  %or11 = or i32 %shl10, %conv7
  %arrayidx12 = getelementptr i8, ptr %addr, i32 4
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %11 to i32
  %shl14 = shl nuw nsw i32 %conv13, 16
  %or15 = or i32 %or11, %shl14
  %arrayidx16 = getelementptr i8, ptr %addr, i32 5
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %13 to i32
  %shl18 = shl nuw i32 %conv17, 24
  %or19 = or i32 %or15, %shl18
  %mul = shl nuw nsw i32 %conv, 16
  %add = add nuw nsw i32 %mul, 107413520
  %add23 = add nuw nsw i32 %mul, 107413516
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %14 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crb_write, align 8
  %call = tail call i32 %15(ptr noundef %adapter, i32 noundef %add, i32 noundef %or) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %16 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crb_write, align 8
  %call25 = tail call i32 %17(ptr noundef %adapter, i32 noundef %add23, i32 noundef %or19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crb_write, align 8
  %call30 = tail call i32 %19(ptr noundef %adapter, i32 noundef %add, i32 noundef %or) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %lor.lhs.false32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false32:                                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crb_write, align 8
  %call34 = tail call i32 %21(ptr noundef %adapter, i32 noundef %add23, i32 noundef %or19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  %spec.select = select i1 %tobool35.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false32, %if.end28.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.end28.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_p2_nic_set_multi(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %set_promisc = getelementptr i8, ptr %netdev, i32 2684
  %2 = ptrtoint ptr %set_promisc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_promisc, align 4
  %call1 = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef 1) #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %set_promisc4 = getelementptr i8, ptr %netdev, i32 2684
  %6 = ptrtoint ptr %set_promisc4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_promisc4, align 4
  br i1 %cmp, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 %7(ptr noundef %add.ptr.i, i32 noundef 0) #10
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %call9 = tail call i32 %7(ptr noundef %add.ptr.i, i32 noundef 2) #10
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and11 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end7.cleanup.sink.split_crit_edge

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end7
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 8
  %max_mc_count = getelementptr i8, ptr %netdev, i32 2521
  %12 = ptrtoint ptr %max_mc_count to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max_mc_count, align 1
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp15 = icmp sgt i32 %11, %conv
  br i1 %cmp15, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %if.end19

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end19:                                         ; preds = %lor.lhs.false
  %mc_enabled.i = getelementptr i8, ptr %netdev, i32 2520
  %14 = ptrtoint ptr %mc_enabled.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mc_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.netxen_nic_enable_mcast_filter.exit_crit_edge

if.end19.netxen_nic_enable_mcast_filter.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_nic_enable_mcast_filter.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %mac_addr.i = getelementptr i8, ptr %netdev, i32 2568
  %physical_port.i = getelementptr i8, ptr %netdev, i32 2519
  %16 = ptrtoint ptr %physical_port.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %physical_port.i, align 1
  %crb_read.i = getelementptr i8, ptr %netdev, i32 2708
  %18 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crb_read.i, align 4
  %call.i = tail call i32 %19(ptr noundef %add.ptr.i, i32 noundef 106958848) #10
  %conv1.i = zext i8 %17 to i32
  %shl.i = shl i32 268435456, %conv1.i
  %or.i = or i32 %call.i, %shl.i
  %crb_write.i = getelementptr i8, ptr %netdev, i32 2712
  %20 = ptrtoint ptr %crb_write.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crb_write.i, align 8
  %call2.i = tail call i32 %21(ptr noundef %add.ptr.i, i32 noundef 106958848, i32 noundef %or.i) #10
  %22 = ptrtoint ptr %crb_write.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %crb_write.i, align 8
  %mul.i = shl nuw nsw i32 %conv1.i, 5
  %add5.i = add nuw nsw i32 %mul.i, 106958976
  %call7.i = tail call i32 %23(ptr noundef %add.ptr.i, i32 noundef %add5.i, i32 noundef 16777215) #10
  %24 = ptrtoint ptr %crb_write.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crb_write.i, align 8
  %add13.i = add nuw nsw i32 %mul.i, 106958980
  %call14.i = tail call i32 %25(ptr noundef %add.ptr.i, i32 noundef %add13.i, i32 noundef 16777215) #10
  %arrayidx.i = getelementptr i8, ptr %netdev, i32 2570
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %conv15.i = zext i8 %27 to i32
  %shl16.i = shl nuw nsw i32 %conv15.i, 16
  %arrayidx17.i = getelementptr i8, ptr %netdev, i32 2569
  %28 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %29 to i32
  %shl19.i = shl nuw nsw i32 %conv18.i, 8
  %or20.i = or i32 %shl19.i, %shl16.i
  %30 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mac_addr.i, align 1
  %conv22.i = zext i8 %31 to i32
  %or23.i = or i32 %or20.i, %conv22.i
  %32 = ptrtoint ptr %crb_write.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crb_write.i, align 8
  %add28.i = add nuw nsw i32 %mul.i, 106958984
  %call29.i = tail call i32 %33(ptr noundef %add.ptr.i, i32 noundef %add28.i, i32 noundef %or23.i) #10
  %arrayidx30.i = getelementptr i8, ptr %netdev, i32 2573
  %34 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %35 to i32
  %shl32.i = shl nuw nsw i32 %conv31.i, 16
  %arrayidx33.i = getelementptr i8, ptr %netdev, i32 2572
  %36 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %37 to i32
  %shl35.i = shl nuw nsw i32 %conv34.i, 8
  %or36.i = or i32 %shl35.i, %shl32.i
  %arrayidx37.i = getelementptr i8, ptr %netdev, i32 2571
  %38 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx37.i, align 1
  %conv38.i = zext i8 %39 to i32
  %or39.i = or i32 %or36.i, %conv38.i
  %40 = ptrtoint ptr %crb_write.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %crb_write.i, align 8
  %add45.i = add nuw nsw i32 %mul.i, 106958988
  %call46.i = tail call i32 %41(ptr noundef %add.ptr.i, i32 noundef %add45.i, i32 noundef %or39.i) #10
  %42 = ptrtoint ptr %mc_enabled.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %mc_enabled.i, align 8
  br label %netxen_nic_enable_mcast_filter.exit

netxen_nic_enable_mcast_filter.exit:              ; preds = %if.end.i, %if.end19.netxen_nic_enable_mcast_filter.exit_crit_edge
  %43 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %43)
  %ha.0105 = load ptr, ptr %mc, align 4
  %cmp25.not106 = icmp eq ptr %ha.0105, %mc
  br i1 %cmp25.not106, label %netxen_nic_enable_mcast_filter.exit.while.cond.preheader_crit_edge, label %for.body.lr.ph

netxen_nic_enable_mcast_filter.exit.while.cond.preheader_crit_edge: ; preds = %netxen_nic_enable_mcast_filter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

for.body.lr.ph:                                   ; preds = %netxen_nic_enable_mcast_filter.exit
  %physical_port.i67 = getelementptr i8, ptr %netdev, i32 2519
  %crb_write.i72 = getelementptr i8, ptr %netdev, i32 2712
  br label %for.body

while.cond.preheader:                             ; preds = %for.body.while.cond.preheader_crit_edge, %netxen_nic_enable_mcast_filter.exit.while.cond.preheader_crit_edge
  %i.0.lcssa = phi i32 [ 0, %netxen_nic_enable_mcast_filter.exit.while.cond.preheader_crit_edge ], [ %inc, %for.body.while.cond.preheader_crit_edge ]
  %44 = ptrtoint ptr %max_mc_count to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %max_mc_count, align 1
  %conv35109 = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %conv35109)
  %cmp36110 = icmp slt i32 %i.0.lcssa, %conv35109
  br i1 %cmp36110, label %while.body.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %physical_port.i76 = getelementptr i8, ptr %netdev, i32 2519
  %crb_write.i96 = getelementptr i8, ptr %netdev, i32 2712
  br label %while.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ha.0108 = phi ptr [ %ha.0105, %for.body.lr.ph ], [ %ha.0, %for.body.for.body_crit_edge ]
  %i.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %inc = add i32 %i.0107, 1
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0108, i32 0, i32 2
  %46 = ptrtoint ptr %physical_port.i67 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %physical_port.i67, align 1
  %arrayidx.i68 = getelementptr %struct.netdev_hw_addr, ptr %ha.0108, i32 0, i32 2, i32 5
  %48 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i68, align 1
  %conv1.i69 = zext i8 %49 to i32
  %shl.i70 = shl nuw nsw i32 %conv1.i69, 16
  %arrayidx2.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0108, i32 0, i32 2, i32 4
  %50 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %51 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 8
  %or.i71 = or i32 %shl4.i, %shl.i70
  %arrayidx5.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0108, i32 0, i32 2, i32 3
  %52 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %53 to i32
  %or7.i = or i32 %or.i71, %conv6.i
  %arrayidx8.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0108, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %55 to i32
  %shl10.i = shl nuw nsw i32 %conv9.i, 16
  %arrayidx11.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0108, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %57 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 8
  %or14.i = or i32 %shl13.i, %shl10.i
  %58 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %addr, align 1
  %conv16.i = zext i8 %59 to i32
  %or17.i = or i32 %or14.i, %conv16.i
  %60 = ptrtoint ptr %crb_write.i72 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %crb_write.i72, align 8
  %conv18.i73 = zext i8 %47 to i32
  %mul.i74 = shl nuw nsw i32 %conv18.i73, 7
  %mul19.i = shl i32 %i.0107, 3
  %add.i = add i32 %mul19.i, 106959104
  %add20.i = add i32 %add.i, %mul.i74
  %call.i75 = tail call i32 %61(ptr noundef %add.ptr.i, i32 noundef %add20.i, i32 noundef %or17.i) #10
  %62 = ptrtoint ptr %crb_write.i72 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %crb_write.i72, align 8
  %add27.i = or i32 %add20.i, 4
  %call28.i = tail call i32 %63(ptr noundef %add.ptr.i, i32 noundef %add27.i, i32 noundef %or7.i) #10
  %64 = ptrtoint ptr %ha.0108 to i32
  call void @__asan_load4_noabort(i32 %64)
  %ha.0 = load ptr, ptr %ha.0108, align 4
  %cmp25.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp25.not, label %for.body.while.cond.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.while.cond.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %i.1111 = phi i32 [ %i.0.lcssa, %while.body.lr.ph ], [ %inc38, %while.body.while.body_crit_edge ]
  %inc38 = add nsw i32 %i.1111, 1
  %65 = ptrtoint ptr %physical_port.i76 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %physical_port.i76, align 1
  %67 = ptrtoint ptr %crb_write.i96 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %crb_write.i96, align 8
  %conv18.i97 = zext i8 %66 to i32
  %mul.i98 = shl nuw nsw i32 %conv18.i97, 7
  %mul19.i99 = shl i32 %i.1111, 3
  %add.i100 = add i32 %mul19.i99, 106959104
  %add20.i101 = add i32 %add.i100, %mul.i98
  %call.i102 = tail call i32 %68(ptr noundef %add.ptr.i, i32 noundef %add20.i101, i32 noundef 0) #10
  %69 = ptrtoint ptr %crb_write.i96 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %crb_write.i96, align 8
  %add27.i103 = or i32 %add20.i101, 4
  %call28.i104 = tail call i32 %70(ptr noundef %add.ptr.i, i32 noundef %add27.i103, i32 noundef 0) #10
  %71 = ptrtoint ptr %max_mc_count to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %max_mc_count, align 1
  %conv35 = zext i8 %72 to i32
  %cmp36 = icmp slt i32 %inc38, %conv35
  br i1 %cmp36, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.sink.split:                               ; preds = %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge, %if.then3, %if.then
  tail call fastcc void @netxen_nic_disable_mcast_filter(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_set_mtu_xgb(ptr noundef %adapter, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %new_mtu, 100
  %physical_port = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %physical_port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %physical_port, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %2 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crb_write, align 8
  %. = select i1 %cmp, i32 107413532, i32 107479068
  %call3 = tail call i32 %3(ptr noundef %adapter, i32 noundef %., i32 noundef %add) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_p2_nic_set_promisc(ptr noundef %adapter, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %physical_port = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %physical_port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %physical_port, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %1 to i32
  %board_type1 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 16
  %2 = ptrtoint ptr %board_type1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %board_type1, align 2
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %4 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crb_read, align 4
  %mul = shl nuw nsw i32 %conv, 16
  %add = add nuw nsw i32 %mul, 107413504
  %call = tail call i32 %5(ptr noundef %adapter, i32 noundef %add) #10
  %and = and i32 %call, -5
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %6 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crb_write, align 8
  %call5 = tail call i32 %7(ptr noundef %adapter, i32 noundef %add, i32 noundef %and) #10
  %.off = add i16 %3, -13
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  %shl = shl nuw nsw i32 32, %conv
  %spec.select = select i1 %switch, i32 %shl, i32 512
  %8 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crb_write, align 8
  %call15 = tail call i32 %9(ptr noundef %adapter, i32 noundef 106954924, i32 noundef %spec.select) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #10
  %20 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crb_read, align 4
  %call18101 = tail call i32 %21(ptr noundef %adapter, i32 noundef 106954928) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18101)
  %tobool19.not102 = icmp eq i32 %call18101, 0
  br i1 %tobool19.not102, label %if.end.if.then32_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.if.then32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

land.rhs:                                         ; preds = %while.body27.preheader.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %cnt.0103 = phi i32 [ %inc, %while.body27.preheader.land.rhs_crit_edge ], [ 0, %if.end.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %cnt.0103)
  %exitcond.not = icmp eq i32 %cnt.0103, 19
  br i1 %exitcond.not, label %land.rhs.if.end53_crit_edge, label %while.body27.preheader

land.rhs.if.end53_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

while.body27.preheader:                           ; preds = %land.rhs
  %inc = add nuw nsw i32 %cnt.0103, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #10
  %32 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crb_read, align 4
  %call18 = tail call i32 %33(ptr noundef %adapter, i32 noundef 106954928) #10
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %while.end29, label %while.body27.preheader.land.rhs_crit_edge

while.body27.preheader.land.rhs_crit_edge:        ; preds = %while.body27.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.end29:                                      ; preds = %while.body27.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %cnt.0103)
  %phi.cmp = icmp ult i32 %cnt.0103, 19
  br i1 %phi.cmp, label %while.end29.if.then32_crit_edge, label %while.end29.if.end53_crit_edge

while.end29.if.end53_crit_edge:                   ; preds = %while.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

while.end29.if.then32_crit_edge:                  ; preds = %while.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

if.then32:                                        ; preds = %while.end29.if.then32_crit_edge, %if.end.if.then32_crit_edge
  %34 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %crb_read, align 4
  %add35 = add nuw nsw i32 %mul, 107413508
  %call36 = tail call i32 %35(ptr noundef %adapter, i32 noundef %add35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp37 = icmp eq i32 %mode, 1
  %and40 = and i32 %call36, -12289
  %masksel = select i1 %cmp37, i32 8192, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp42 = icmp eq i32 %mode, 2
  %masksel97 = select i1 %cmp42, i32 4096, i32 0
  %reg.1 = or i32 %masksel97, %masksel
  %reg.2 = or i32 %reg.1, %and40
  %36 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %crb_write, align 8
  %call52 = tail call i32 %37(ptr noundef %adapter, i32 noundef %add35, i32 noundef %reg.2) #10
  br label %if.end53

if.end53:                                         ; preds = %if.then32, %while.end29.if.end53_crit_edge, %land.rhs.if.end53_crit_edge
  %or54 = or i32 %call, 4
  %38 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %crb_write, align 8
  %call58 = tail call i32 %39(ptr noundef %adapter, i32 noundef %add, i32 noundef %or54) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end53 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_hw_read_wx_2M(ptr noundef %adapter, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %off, -167772160
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67108864, i32 %0)
  %1 = icmp ult i32 %0, -67108864
  br i1 %1, label %do.end27, label %if.end.i

if.end.i:                                         ; preds = %entry
  %sub.i = add nsw i32 %off, -100663296
  %shr.i = lshr i32 %sub.i, 20
  %arrayidx.i = getelementptr [64 x %struct.crb_128M_2M_block_map_t], ptr @crb_128M_2M_map, i32 0, i32 %shr.i
  %shr2.i = lshr i32 %sub.i, 16
  %and3.i = and i32 %shr2.i, 15
  %arrayidx4.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map_t], ptr %arrayidx.i, i32 0, i32 %and3.i
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i.do.body_crit_edge, label %land.lhs.true.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true.i:                                  ; preds = %if.end.i
  %start_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map_t], ptr %arrayidx.i, i32 0, i32 %and3.i, i32 1
  %4 = ptrtoint ptr %start_128M.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_128M.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %5)
  %cmp5.not.i = icmp ult i32 %sub.i, %5
  br i1 %cmp5.not.i, label %land.lhs.true.i.do.body_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %end_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map_t], ptr %arrayidx.i, i32 0, i32 %and3.i, i32 2
  %6 = ptrtoint ptr %end_128M.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end_128M.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub.i)
  %cmp7.i = icmp ugt i32 %7, %sub.i
  br i1 %cmp7.i, label %if.then, label %land.lhs.true6.i.do.body_crit_edge

land.lhs.true6.i.do.body_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %start_2M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map_t], ptr %arrayidx.i, i32 0, i32 %and3.i, i32 3
  %10 = ptrtoint ptr %start_2M.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start_2M.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %11
  %sub10.i = sub i32 %sub.i, %5
  %add.ptr11.i = getelementptr i8, ptr %add.ptr.i, i32 %sub10.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #10, !srcloc !160
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !184
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true6.i.do.body_crit_edge, %land.lhs.true.i.do.body_crit_edge, %if.end.i.do.body_crit_edge
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  %add.ptr15.i = getelementptr i8, ptr %15, i32 1966080
  %16 = and i32 %off, 65535
  %add.ptr17.i = getelementptr i8, ptr %add.ptr15.i, i32 %16
  %crb_lock = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 9
  %call7 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %crb_lock) #10
  %crb_read.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %do.body
  %timeout.016.i = phi i32 [ 0, %do.body ], [ %inc.i, %if.end4.i.while.body.i_crit_edge ]
  %17 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %crb_read.i, align 4
  %call.i = tail call i32 %18(ptr noundef %adapter, i32 noundef 101826616) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %while.body.i.while.end.i_crit_edge, label %if.end.i40

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end.i40:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %timeout.016.i)
  %exitcond.i = icmp eq i32 %timeout.016.i, 9999
  br i1 %exitcond.i, label %if.end.i40.netxen_pcie_sem_lock.exit_crit_edge, label %if.end4.i

if.end.i40.netxen_pcie_sem_lock.exit_crit_edge:   ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_pcie_sem_lock.exit

if.end4.i:                                        ; preds = %if.end.i40
  %inc.i = add nuw nsw i32 %timeout.016.i, 1
  tail call void @msleep(i32 noundef 1) #10
  %tobool.not.i41 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i41, label %if.end4.i.while.body.i_crit_edge, label %if.end4.i.while.end.i_crit_edge

if.end4.i.while.end.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %if.end4.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %crb_write.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %19 = ptrtoint ptr %crb_write.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %crb_write.i, align 8
  %portnum.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %21 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %portnum.i, align 2
  %conv.i = zext i8 %22 to i32
  %call7.i = tail call i32 %20(ptr noundef %adapter, i32 noundef 136323364, i32 noundef %conv.i) #10
  br label %netxen_pcie_sem_lock.exit

netxen_pcie_sem_lock.exit:                        ; preds = %while.end.i, %if.end.i40.netxen_pcie_sem_lock.exit_crit_edge
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 8
  %add.ptr.i43 = getelementptr i8, ptr %24, i32 1245280
  %and.i = and i32 %shr.i, 63
  %arrayidx.i46 = getelementptr [64 x i32], ptr @crb_hub_agt, i32 0, i32 %and.i
  %25 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i46, align 4
  %shl.i = shl i32 %26, 20
  %and1.i = and i32 %off, 983040
  %or.i = or i32 %shl.i, %and1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %27) #10, !srcloc !164
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #10, !srcloc !160
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !186
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %or.i)
  %cmp.not.i = icmp eq i32 %29, %or.i
  br i1 %cmp.not.i, label %netxen_pcie_sem_lock.exit.netxen_nic_pci_set_crbwindow_2M.exit_crit_edge, label %if.then.i

netxen_pcie_sem_lock.exit.netxen_nic_pci_set_crbwindow_2M.exit_crit_edge: ; preds = %netxen_pcie_sem_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_nic_pci_set_crbwindow_2M.exit

if.then.i:                                        ; preds = %netxen_pcie_sem_lock.exit
  %call3.i = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.netxen_nic_pci_set_crbwindow_2M) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i47 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i47, label %if.then.i.netxen_nic_pci_set_crbwindow_2M.exit_crit_edge, label %do.end7.i

if.then.i.netxen_nic_pci_set_crbwindow_2M.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_nic_pci_set_crbwindow_2M.exit

do.end7.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %30 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.43, i32 noundef %or.i, i32 noundef %sub.i) #13
  br label %netxen_nic_pci_set_crbwindow_2M.exit

netxen_nic_pci_set_crbwindow_2M.exit:             ; preds = %do.end7.i, %if.then.i.netxen_nic_pci_set_crbwindow_2M.exit_crit_edge, %netxen_pcie_sem_lock.exit.netxen_nic_pci_set_crbwindow_2M.exit_crit_edge
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #10, !srcloc !160
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %34 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %crb_read.i, align 4
  %call.i49 = tail call i32 %35(ptr noundef %adapter, i32 noundef 101826620) #10
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %crb_lock, i32 noundef %call7) #10
  br label %cleanup

do.end27:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %off) #13
  tail call void @dump_stack() #13
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %netxen_nic_pci_set_crbwindow_2M.exit, %if.then
  %retval.0 = phi i32 [ %13, %if.then ], [ %33, %netxen_nic_pci_set_crbwindow_2M.exit ], [ -1, %do.end27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_hw_write_wx_2M(ptr noundef %adapter, i32 noundef %off, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %off, -167772160
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67108864, i32 %0)
  %1 = icmp ult i32 %0, -67108864
  br i1 %1, label %do.end25, label %if.end.i

if.end.i:                                         ; preds = %entry
  %sub.i = add nsw i32 %off, -100663296
  %shr.i = lshr i32 %sub.i, 20
  %arrayidx.i = getelementptr [64 x %struct.crb_128M_2M_block_map_t], ptr @crb_128M_2M_map, i32 0, i32 %shr.i
  %shr2.i = lshr i32 %sub.i, 16
  %and3.i = and i32 %shr2.i, 15
  %arrayidx4.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map_t], ptr %arrayidx.i, i32 0, i32 %and3.i
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i.do.body3_crit_edge, label %land.lhs.true.i

if.end.i.do.body3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3

land.lhs.true.i:                                  ; preds = %if.end.i
  %start_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map_t], ptr %arrayidx.i, i32 0, i32 %and3.i, i32 1
  %4 = ptrtoint ptr %start_128M.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_128M.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %5)
  %cmp5.not.i = icmp ult i32 %sub.i, %5
  br i1 %cmp5.not.i, label %land.lhs.true.i.do.body3_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.body3_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %end_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map_t], ptr %arrayidx.i, i32 0, i32 %and3.i, i32 2
  %6 = ptrtoint ptr %end_128M.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end_128M.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub.i)
  %cmp7.i = icmp ugt i32 %7, %sub.i
  br i1 %cmp7.i, label %do.body, label %land.lhs.true6.i.do.body3_crit_edge

land.lhs.true6.i.do.body3_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3

do.body:                                          ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %start_2M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map_t], ptr %arrayidx.i, i32 0, i32 %and3.i, i32 3
  %10 = ptrtoint ptr %start_2M.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start_2M.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %11
  %sub10.i = sub i32 %sub.i, %5
  %add.ptr11.i = getelementptr i8, ptr %add.ptr.i, i32 %sub10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %data)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %12) #10, !srcloc !164
  br label %cleanup

do.body3:                                         ; preds = %land.lhs.true6.i.do.body3_crit_edge, %land.lhs.true.i.do.body3_crit_edge, %if.end.i.do.body3_crit_edge
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %add.ptr15.i = getelementptr i8, ptr %14, i32 1966080
  %15 = and i32 %off, 65535
  %add.ptr17.i = getelementptr i8, ptr %add.ptr15.i, i32 %15
  %crb_lock = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 9
  %call5 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %crb_lock) #10
  %crb_read.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %do.body3
  %timeout.016.i = phi i32 [ 0, %do.body3 ], [ %inc.i, %if.end4.i.while.body.i_crit_edge ]
  %16 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crb_read.i, align 4
  %call.i = tail call i32 %17(ptr noundef %adapter, i32 noundef 101826616) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %while.body.i.while.end.i_crit_edge, label %if.end.i38

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end.i38:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %timeout.016.i)
  %exitcond.i = icmp eq i32 %timeout.016.i, 9999
  br i1 %exitcond.i, label %if.end.i38.netxen_pcie_sem_lock.exit_crit_edge, label %if.end4.i

if.end.i38.netxen_pcie_sem_lock.exit_crit_edge:   ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_pcie_sem_lock.exit

if.end4.i:                                        ; preds = %if.end.i38
  %inc.i = add nuw nsw i32 %timeout.016.i, 1
  tail call void @msleep(i32 noundef 1) #10
  %tobool.not.i39 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i39, label %if.end4.i.while.body.i_crit_edge, label %if.end4.i.while.end.i_crit_edge

if.end4.i.while.end.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %if.end4.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %crb_write.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %18 = ptrtoint ptr %crb_write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crb_write.i, align 8
  %portnum.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %20 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %portnum.i, align 2
  %conv.i = zext i8 %21 to i32
  %call7.i = tail call i32 %19(ptr noundef %adapter, i32 noundef 136323364, i32 noundef %conv.i) #10
  br label %netxen_pcie_sem_lock.exit

netxen_pcie_sem_lock.exit:                        ; preds = %while.end.i, %if.end.i38.netxen_pcie_sem_lock.exit_crit_edge
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %add.ptr.i41 = getelementptr i8, ptr %23, i32 1245280
  %and.i = and i32 %shr.i, 63
  %arrayidx.i44 = getelementptr [64 x i32], ptr @crb_hub_agt, i32 0, i32 %and.i
  %24 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i44, align 4
  %shl.i = shl i32 %25, 20
  %and1.i = and i32 %off, 983040
  %or.i = or i32 %shl.i, %and1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %26) #10, !srcloc !164
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #10, !srcloc !160
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !186
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %or.i)
  %cmp.not.i = icmp eq i32 %28, %or.i
  br i1 %cmp.not.i, label %netxen_pcie_sem_lock.exit.netxen_nic_pci_set_crbwindow_2M.exit_crit_edge, label %if.then.i

netxen_pcie_sem_lock.exit.netxen_nic_pci_set_crbwindow_2M.exit_crit_edge: ; preds = %netxen_pcie_sem_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_nic_pci_set_crbwindow_2M.exit

if.then.i:                                        ; preds = %netxen_pcie_sem_lock.exit
  %call3.i = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.netxen_nic_pci_set_crbwindow_2M) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i45 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i45, label %if.then.i.netxen_nic_pci_set_crbwindow_2M.exit_crit_edge, label %do.end7.i

if.then.i.netxen_nic_pci_set_crbwindow_2M.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_nic_pci_set_crbwindow_2M.exit

do.end7.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %29 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.43, i32 noundef %or.i, i32 noundef %sub.i) #13
  br label %netxen_nic_pci_set_crbwindow_2M.exit

netxen_nic_pci_set_crbwindow_2M.exit:             ; preds = %do.end7.i, %if.then.i.netxen_nic_pci_set_crbwindow_2M.exit_crit_edge, %netxen_pcie_sem_lock.exit.netxen_nic_pci_set_crbwindow_2M.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !189
  tail call void @arm_heavy_mb() #10
  %31 = tail call i32 @llvm.bswap.i32(i32 %data)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %31) #10, !srcloc !164
  %32 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crb_read.i, align 4
  %call.i47 = tail call i32 %33(ptr noundef %adapter, i32 noundef 101826620) #10
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %crb_lock, i32 noundef %call5) #10
  br label %cleanup

do.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.44, i32 noundef %off) #13
  tail call void @dump_stack() #13
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %netxen_nic_pci_set_crbwindow_2M.exit, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ 0, %netxen_nic_pci_set_crbwindow_2M.exit ], [ -5, %do.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_pci_set_window_2M(ptr nocapture noundef %adapter, i64 noundef %addr, ptr nocapture noundef writeonly %start) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i64 %addr, 1
  %shr = and i64 %and, 16744448
  %shr1 = lshr i64 %addr, 25
  %and2 = and i64 %shr1, 1023
  %or = or i64 %shr, %and2
  %conv = trunc i64 %or to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !190
  tail call void @arm_heavy_mb() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %ocm_win_crb = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 4
  %1 = ptrtoint ptr %ocm_win_crb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ocm_win_crb, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %0) #10, !srcloc !164
  %3 = ptrtoint ptr %ocm_win_crb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ocm_win_crb, align 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %ocm_win = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 7
  %6 = ptrtoint ptr %ocm_win to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %ocm_win, align 4
  %7 = trunc i64 %addr to i32
  %8 = and i32 %7, 262143
  %conv8 = or i32 %8, 786432
  %9 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv8, ptr %start, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_pci_mem_read_2M(ptr noundef %adapter, i64 noundef %off, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %off, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = add i64 %off, -12884901888
  call void @__sanitizer_cov_trace_const_cmp8(i64 67108863, i64 %0)
  %1 = icmp ult i64 %0, 67108863
  br i1 %1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %revision_id.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %2 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %3)
  %cmp.i = icmp ult i8 %3, 38
  br i1 %cmp.i, label %if.then.i, label %if.else9.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %pci_base1.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 1
  %4 = ptrtoint ptr %pci_base1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_base1.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %5, i32 30408848
  br label %correct

if.else9.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %add.ptr11.i.i = getelementptr i8, ptr %7, i32 1638544
  br label %correct

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435455, i64 %off)
  %cmp4 = icmp ult i64 %off, 268435455
  br i1 %cmp4, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end3
  %revision_id.i95 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %8 = ptrtoint ptr %revision_id.i95 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %revision_id.i95, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %9)
  %cmp.i96 = icmp ult i8 %9, 38
  br i1 %cmp.i96, label %if.then.i97, label %if.else9.i101

if.then.i97:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %pci_base1.i98 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 1
  %10 = ptrtoint ptr %pci_base1.i98 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_base1.i98, align 4
  %add.ptr8.i100 = getelementptr i8, ptr %11, i32 2097296
  br label %correct

if.else9.i101:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %add.ptr11.i.i103 = getelementptr i8, ptr %13, i32 1573008
  br label %correct

if.end9:                                          ; preds = %if.end3
  %14 = add i64 %off, -8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048575, i64 %14)
  %15 = icmp ult i64 %14, 1048575
  br i1 %15, label %if.then13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call fastcc i32 @netxen_nic_pci_mem_access_direct(ptr noundef %adapter, i64 noundef %off, ptr noundef %data, i32 noundef 0)
  br label %cleanup

correct:                                          ; preds = %if.else9.i101, %if.then.i97, %if.else9.i, %if.then.i
  %mem_crb.0 = phi ptr [ %add.ptr8.i, %if.then.i ], [ %add.ptr11.i.i, %if.else9.i ], [ %add.ptr8.i100, %if.then.i97 ], [ %add.ptr11.i.i103, %if.else9.i101 ]
  %16 = trunc i64 %off to i32
  %conv = and i32 %16, -8
  %mem_lock = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %mem_lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %add.ptr = getelementptr i8, ptr %mem_crb.0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !193
  tail call void @arm_heavy_mb() #10
  %add.ptr20 = getelementptr i8, ptr %mem_crb.0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mem_crb.0, i32 33554432) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mem_crb.0, i32 50331648) #10, !srcloc !164
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %j.0107, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.then41, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %correct
  %j.0107 = phi i32 [ 0, %correct ], [ %inc, %for.cond.for.body_crit_edge ]
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mem_crb.0) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  %19 = and i32 %18, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp35 = icmp eq i32 %19, 0
  br i1 %cmp35, label %if.else, label %for.cond

if.then41:                                        ; preds = %for.cond
  %call42 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.netxen_nic_pci_mem_read_2M) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then41.if.end63_crit_edge, label %do.end47

if.then41.if.end63_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

do.end47:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #13
  br label %if.end63

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr51 = getelementptr i8, ptr %mem_crb.0, i32 28
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  %add.ptr58 = getelementptr i8, ptr %mem_crb.0, i32 24
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %24 = zext i32 %22 to i64
  %25 = zext i32 %23 to i64
  %26 = shl nuw i64 %25, 32
  %27 = or i64 %26, %24
  %28 = tail call i64 @llvm.bswap.i64(i64 %27)
  %29 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %data, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.else, %do.end47, %if.then41.if.end63_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ -5, %do.end47 ], [ -5, %if.then41.if.end63_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then13, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end63 ], [ %call14, %if.then13 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_pci_mem_write_2M(ptr noundef %adapter, i64 noundef %off, i64 noundef %data) #0 align 64 {
entry:
  %data.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %data, ptr %data.addr, align 8
  %and = and i64 %off, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = add i64 %off, -12884901888
  call void @__sanitizer_cov_trace_const_cmp8(i64 67108863, i64 %1)
  %2 = icmp ult i64 %1, 67108863
  br i1 %2, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %revision_id.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %3 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %4)
  %cmp.i = icmp ult i8 %4, 38
  br i1 %cmp.i, label %if.then.i, label %if.else9.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %pci_base1.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 1
  %5 = ptrtoint ptr %pci_base1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_base1.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %6, i32 30408848
  br label %correct

if.else9.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %add.ptr11.i.i = getelementptr i8, ptr %8, i32 1638544
  br label %correct

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435455, i64 %off)
  %cmp4 = icmp ult i64 %off, 268435455
  br i1 %cmp4, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end3
  %revision_id.i90 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %9 = ptrtoint ptr %revision_id.i90 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %revision_id.i90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %10)
  %cmp.i91 = icmp ult i8 %10, 38
  br i1 %cmp.i91, label %if.then.i92, label %if.else9.i96

if.then.i92:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %pci_base1.i93 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 1
  %11 = ptrtoint ptr %pci_base1.i93 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_base1.i93, align 4
  %add.ptr8.i95 = getelementptr i8, ptr %12, i32 2097296
  br label %correct

if.else9.i96:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %add.ptr11.i.i98 = getelementptr i8, ptr %14, i32 1573008
  br label %correct

if.end9:                                          ; preds = %if.end3
  %15 = add i64 %off, -8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048575, i64 %15)
  %16 = icmp ult i64 %15, 1048575
  br i1 %16, label %if.then13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = call fastcc i32 @netxen_nic_pci_mem_access_direct(ptr noundef %adapter, i64 noundef %off, ptr noundef nonnull %data.addr, i32 noundef 1)
  br label %cleanup

correct:                                          ; preds = %if.else9.i96, %if.then.i92, %if.else9.i, %if.then.i
  %mem_crb.0 = phi ptr [ %add.ptr8.i, %if.then.i ], [ %add.ptr11.i.i, %if.else9.i ], [ %add.ptr8.i95, %if.then.i92 ], [ %add.ptr11.i.i98, %if.else9.i96 ]
  %17 = trunc i64 %off to i32
  %conv = and i32 %17, -8
  %mem_lock = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %mem_lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %add.ptr = getelementptr i8, ptr %mem_crb.0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !200
  tail call void @arm_heavy_mb() #10
  %add.ptr20 = getelementptr i8, ptr %mem_crb.0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !201
  tail call void @arm_heavy_mb() #10
  %conv25 = trunc i64 %data to i32
  %19 = tail call i32 @llvm.bswap.i32(i32 %conv25)
  %add.ptr26 = getelementptr i8, ptr %mem_crb.0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %19) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !202
  tail call void @arm_heavy_mb() #10
  %shr = lshr i64 %data, 32
  %conv31 = trunc i64 %shr to i32
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv31)
  %add.ptr32 = getelementptr i8, ptr %mem_crb.0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %20) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !203
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mem_crb.0, i32 100663296) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mem_crb.0, i32 117440512) #10, !srcloc !164
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %j.0102, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.then53, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %correct
  %j.0102 = phi i32 [ 0, %correct ], [ %inc, %for.cond.for.body_crit_edge ]
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mem_crb.0) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !205
  %22 = and i32 %21, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp47 = icmp eq i32 %22, 0
  br i1 %cmp47, label %for.body.if.end61_crit_edge, label %for.cond

for.body.if.end61_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then53:                                        ; preds = %for.cond
  %call54 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.netxen_nic_pci_mem_write_2M) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then53.if.end61_crit_edge, label %do.end59

if.then53.if.end61_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

do.end59:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #13
  br label %if.end61

if.end61:                                         ; preds = %do.end59, %if.then53.if.end61_crit_edge, %for.body.if.end61_crit_edge
  %ret.0 = phi i32 [ -5, %do.end59 ], [ -5, %if.then53.if.end61_crit_edge ], [ 0, %for.body.if.end61_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then13, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end61 ], [ %call14, %if.then13 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_io_read_2M(ptr nocapture noundef readnone %adapter, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !160
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_nic_io_write_2M(ptr nocapture noundef readnone %adapter, ptr noundef %addr, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  tail call void @arm_heavy_mb() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %data)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !164
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nx_fw_cmd_set_mtu(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_p3_nic_set_promisc(ptr noundef %adapter, i32 noundef %mode) #0 align 64 {
entry:
  %req = alloca %struct.nx_nic_req_t, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %0 = getelementptr inbounds i8, ptr %req, i32 24
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 140776143060992, ptr %req, align 8
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %3 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %portnum, align 2
  %conv = zext i8 %4 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %or = or i64 %shl, 12
  %5 = tail call i64 @llvm.bswap.i64(i64 %or)
  %req_hdr = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %req_hdr, align 8
  %conv1 = zext i32 %mode to i64
  %7 = tail call i64 @llvm.bswap.i64(i64 %conv1)
  %words = getelementptr inbounds %struct.nx_nic_req_t, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %words to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %words, align 8
  %call = call fastcc i32 @netxen_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_p3_nic_set_mac_addr(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readnone %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  tail call void @netxen_p3_nic_set_multi(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_p3_nic_set_multi(ptr noundef %netdev) #0 align 64 {
entry:
  %req.i = alloca %struct.nx_nic_req_t, align 8
  %del_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %del_list) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %del_list, i32 0, i32 1
  %1 = ptrtoint ptr %del_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %del_list, ptr %del_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %del_list, ptr %0, align 4
  %is_up = getelementptr i8, ptr %netdev, i32 2534
  %3 = ptrtoint ptr %is_up to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %is_up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %4)
  %cmp.not = icmp eq i16 %4, 777
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_list = getelementptr i8, ptr %netdev, i32 2444
  %5 = ptrtoint ptr %mac_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %mac_list, align 4
  %cmp.i.not.i = icmp eq ptr %6, %mac_list
  br i1 %cmp.i.not.i, label %if.end.list_splice_tail_init.exit_crit_edge, label %if.then.i

if.end.list_splice_tail_init.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev2.i.i = getelementptr i8, ptr %netdev, i32 2448
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %del_list, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %del_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %del_list, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %del_list, ptr %8, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %8, ptr %0, align 4
  %13 = ptrtoint ptr %mac_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %mac_list, ptr %mac_list, align 4
  store ptr %mac_list, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %if.end.list_splice_tail_init.exit_crit_edge
  %mac_addr = getelementptr i8, ptr %netdev, i32 2568
  call fastcc void @nx_p3_nic_add_mac(ptr noundef %add.ptr.i, ptr noundef %mac_addr, ptr noundef nonnull %del_list)
  call fastcc void @nx_p3_nic_add_mac(ptr noundef %add.ptr.i, ptr noundef nonnull @netxen_p3_nic_set_multi.bcast_addr, ptr noundef nonnull %del_list)
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %and = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %list_splice_tail_init.exit.send_fw_cmd_crit_edge

list_splice_tail_init.exit.send_fw_cmd_crit_edge: ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_fw_cmd

if.end5:                                          ; preds = %list_splice_tail_init.exit
  %and7 = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end5.send_fw_cmd_crit_edge

if.end5.send_fw_cmd_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_fw_cmd

lor.lhs.false:                                    ; preds = %if.end5
  %mc = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 8
  %max_mc_count = getelementptr i8, ptr %netdev, i32 2521
  %18 = ptrtoint ptr %max_mc_count to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %max_mc_count, align 1
  %conv9 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv9)
  %cmp10 = icmp sgt i32 %17, %conv9
  br i1 %cmp10, label %lor.lhs.false.send_fw_cmd_crit_edge, label %if.end13

lor.lhs.false.send_fw_cmd_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_fw_cmd

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp16 = icmp eq i32 %17, 0
  br i1 %cmp16, label %if.end13.send_fw_cmd_crit_edge, label %for.cond.preheader

if.end13.send_fw_cmd_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_fw_cmd

for.cond.preheader:                               ; preds = %if.end13
  %20 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %20)
  %ha.073 = load ptr, ptr %mc, align 4
  %cmp24.not74 = icmp eq ptr %ha.073, %mc
  br i1 %cmp24.not74, label %for.cond.preheader.send_fw_cmd_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.send_fw_cmd_crit_edge:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_fw_cmd

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ha.075 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.073, %for.cond.preheader.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.075, i32 0, i32 2
  call fastcc void @nx_p3_nic_add_mac(ptr noundef %add.ptr.i, ptr noundef %addr, ptr noundef nonnull %del_list)
  %21 = ptrtoint ptr %ha.075 to i32
  call void @__asan_load4_noabort(i32 %21)
  %ha.0 = load ptr, ptr %ha.075, align 4
  %cmp24.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp24.not, label %for.body.send_fw_cmd_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.send_fw_cmd_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_fw_cmd

send_fw_cmd:                                      ; preds = %for.body.send_fw_cmd_crit_edge, %for.cond.preheader.send_fw_cmd_crit_edge, %if.end13.send_fw_cmd_crit_edge, %lor.lhs.false.send_fw_cmd_crit_edge, %if.end5.send_fw_cmd_crit_edge, %list_splice_tail_init.exit.send_fw_cmd_crit_edge
  %mode.0 = phi i32 [ 0, %if.end13.send_fw_cmd_crit_edge ], [ 1, %list_splice_tail_init.exit.send_fw_cmd_crit_edge ], [ 2, %lor.lhs.false.send_fw_cmd_crit_edge ], [ 2, %if.end5.send_fw_cmd_crit_edge ], [ 0, %for.cond.preheader.send_fw_cmd_crit_edge ], [ 0, %for.body.send_fw_cmd_crit_edge ]
  %set_promisc = getelementptr i8, ptr %netdev, i32 2684
  %22 = ptrtoint ptr %set_promisc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_promisc, align 4
  %call34 = call i32 %23(ptr noundef %add.ptr.i, i32 noundef %mode.0) #10
  %24 = ptrtoint ptr %del_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %del_list, align 4
  %cmp.i.not76 = icmp eq ptr %25, %del_list
  br i1 %cmp.i.not76, label %send_fw_cmd.cleanup_crit_edge, label %while.body.lr.ph

send_fw_cmd.cleanup_crit_edge:                    ; preds = %send_fw_cmd
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %send_fw_cmd
  %26 = getelementptr inbounds i8, ptr %req.i, i32 16
  %portnum.i = getelementptr i8, ptr %netdev, i32 2518
  %req_hdr.i = getelementptr inbounds %struct.nx_nic_req_t, ptr %req.i, i32 0, i32 1
  %mac_addr.i = getelementptr inbounds i8, ptr %req.i, i32 18
  br label %while.body

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %while.body.lr.ph
  %27 = phi ptr [ %25, %while.body.lr.ph ], [ %45, %list_del.exit.while.body_crit_edge ]
  %mac_addr42 = getelementptr inbounds %struct.nx_mac_list_s, ptr %27, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req.i) #10
  %28 = call ptr @memset(ptr %26, i32 0, i32 48)
  %29 = ptrtoint ptr %req.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 42949672960, ptr %req.i, align 8
  %30 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %portnum.i, align 2
  %conv.i71 = zext i8 %31 to i64
  %shl.i = shl nuw nsw i64 %conv.i71, 16
  %or.i = or i64 %shl.i, 1
  %32 = call i64 @llvm.bswap.i64(i64 %or.i) #10
  %33 = ptrtoint ptr %req_hdr.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %req_hdr.i, align 8
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %26, align 8
  %35 = call ptr @memcpy(ptr %mac_addr.i, ptr %mac_addr42, i32 6)
  %call.i = call fastcc i32 @netxen_send_cmd_descs(ptr noundef %add.ptr.i, ptr noundef nonnull %req.i) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req.i) #10
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %27) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %27, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %42 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %27, align 4
  %prev.i72 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i72 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i72, align 4
  call void @kfree(ptr noundef %27) #10
  %44 = ptrtoint ptr %del_list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %del_list, align 4
  %cmp.i.not = icmp eq ptr %45, %del_list
  br i1 %cmp.i.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %send_fw_cmd.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %del_list) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nx_fw_cmd_query_phy(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nx_fw_cmd_set_phy(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_nic_get_board_info(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %board_type = alloca i32, align 4
  %magic = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %board_type) #10
  %0 = ptrtoint ptr %board_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %board_type, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %magic) #10
  %1 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %magic, align 4, !annotation !159
  %pdev1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 8
  %call = call i32 @netxen_rom_fast_read(ptr noundef %adapter, i32 noundef 16680, ptr noundef nonnull %magic) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 305419896, i32 %5)
  %cmp.not = icmp eq i32 %5, 305419896
  br i1 %cmp.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %5) #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @netxen_rom_fast_read(ptr noundef %adapter, i32 noundef 16392, ptr noundef nonnull %board_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %6 = ptrtoint ptr %board_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %board_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %7)
  %cmp8 = icmp eq i32 %7, 41
  br i1 %cmp8, label %if.then9, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then9:                                         ; preds = %if.end7
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %8 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crb_read, align 4
  %call10 = call i32 %9(ptr noundef %adapter, i32 noundef 154140684) #10
  %and = and i32 %call10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11 = icmp eq i32 %and, 0
  br i1 %cmp11, label %if.end14.thread, label %if.end14thread-pre-split

if.end14.thread:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %board_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 128, ptr %board_type, align 4
  %board_type1553 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 16
  %11 = ptrtoint ptr %board_type1553 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 128, ptr %board_type1553, align 2
  br label %sw.bb23

if.end14thread-pre-split:                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %board_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %board_type, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14thread-pre-split, %if.end7.if.end14_crit_edge
  %13 = phi i32 [ %.pr, %if.end14thread-pre-split ], [ %7, %if.end7.if.end14_crit_edge ]
  %conv = trunc i32 %13 to i16
  %board_type15 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 16
  %14 = ptrtoint ptr %board_type15 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %board_type15, align 2
  %15 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end32 [
    i32 10, label %sw.bb
    i32 11, label %if.end14.sw.bb17_crit_edge
    i32 13, label %if.end14.sw.bb17_crit_edge54
    i32 14, label %if.end14.sw.bb17_crit_edge55
    i32 15, label %if.end14.sw.bb17_crit_edge56
    i32 34, label %if.end14.sw.bb17_crit_edge57
    i32 40, label %if.end14.sw.bb17_crit_edge58
    i32 49, label %if.end14.sw.bb17_crit_edge59
    i32 35, label %if.end14.sw.bb17_crit_edge60
    i32 37, label %if.end14.sw.bb17_crit_edge61
    i32 38, label %if.end14.sw.bb17_crit_edge62
    i32 42, label %if.end14.sw.bb17_crit_edge63
    i32 43, label %if.end14.sw.bb17_crit_edge64
    i32 50, label %if.end14.sw.bb17_crit_edge65
    i32 39, label %if.end14.sw.bb17_crit_edge66
    i32 0, label %if.end14.sw.bb20_crit_edge
    i32 1, label %if.end14.sw.bb20_crit_edge67
    i32 2, label %if.end14.sw.bb20_crit_edge68
    i32 3, label %if.end14.sw.bb20_crit_edge69
    i32 33, label %if.end14.sw.bb20_crit_edge70
    i32 36, label %if.end14.sw.bb20_crit_edge71
    i32 41, label %if.end14.sw.bb20_crit_edge72
    i32 128, label %if.end14.sw.bb23_crit_edge
  ]

if.end14.sw.bb23_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.end14.sw.bb20_crit_edge72:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

if.end14.sw.bb20_crit_edge71:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

if.end14.sw.bb20_crit_edge70:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

if.end14.sw.bb20_crit_edge69:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

if.end14.sw.bb20_crit_edge68:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

if.end14.sw.bb20_crit_edge67:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

if.end14.sw.bb20_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

if.end14.sw.bb17_crit_edge66:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

if.end14.sw.bb17_crit_edge65:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

if.end14.sw.bb17_crit_edge64:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

if.end14.sw.bb17_crit_edge63:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

if.end14.sw.bb17_crit_edge62:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

if.end14.sw.bb17_crit_edge61:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

if.end14.sw.bb17_crit_edge60:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

if.end14.sw.bb17_crit_edge59:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

if.end14.sw.bb17_crit_edge58:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

if.end14.sw.bb17_crit_edge57:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

if.end14.sw.bb17_crit_edge56:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

if.end14.sw.bb17_crit_edge55:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

if.end14.sw.bb17_crit_edge54:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

if.end14.sw.bb17_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

sw.bb:                                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %port_type = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 15
  %16 = ptrtoint ptr %port_type to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %port_type, align 8
  br label %cleanup

sw.bb17:                                          ; preds = %if.end14.sw.bb17_crit_edge, %if.end14.sw.bb17_crit_edge54, %if.end14.sw.bb17_crit_edge55, %if.end14.sw.bb17_crit_edge56, %if.end14.sw.bb17_crit_edge57, %if.end14.sw.bb17_crit_edge58, %if.end14.sw.bb17_crit_edge59, %if.end14.sw.bb17_crit_edge60, %if.end14.sw.bb17_crit_edge61, %if.end14.sw.bb17_crit_edge62, %if.end14.sw.bb17_crit_edge63, %if.end14.sw.bb17_crit_edge64, %if.end14.sw.bb17_crit_edge65, %if.end14.sw.bb17_crit_edge66
  %port_type19 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 15
  %17 = ptrtoint ptr %port_type19 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %port_type19, align 8
  br label %cleanup

sw.bb20:                                          ; preds = %if.end14.sw.bb20_crit_edge, %if.end14.sw.bb20_crit_edge67, %if.end14.sw.bb20_crit_edge68, %if.end14.sw.bb20_crit_edge69, %if.end14.sw.bb20_crit_edge70, %if.end14.sw.bb20_crit_edge71, %if.end14.sw.bb20_crit_edge72
  %port_type22 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 15
  %18 = ptrtoint ptr %port_type22 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %port_type22, align 8
  br label %cleanup

sw.bb23:                                          ; preds = %if.end14.sw.bb23_crit_edge, %if.end14.thread
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %19 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %portnum, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp25 = icmp ult i8 %20, 2
  %conv27 = select i1 %cmp25, i16 2, i16 1
  %port_type29 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 15
  %21 = ptrtoint ptr %port_type29 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv27, ptr %port_type29, align 8
  br label %cleanup

do.end32:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.22, i32 noundef %13) #13
  %port_type35 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 15
  %22 = ptrtoint ptr %port_type35 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 2, ptr %port_type35, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %sw.bb23, %sw.bb20, %sw.bb17, %sw.bb, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end3.cleanup_crit_edge ], [ 0, %do.end32 ], [ 0, %sw.bb23 ], [ 0, %sw.bb20 ], [ 0, %sw.bb17 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %magic) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %board_type) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_rom_fast_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netxen_nic_set_link_parameters(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  %autoneg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %autoneg) #10
  %1 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %autoneg, align 4, !annotation !159
  %netdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 1
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %link_speed = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 31
  %7 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %link_speed, align 8
  %link_duplex = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 32
  %8 = ptrtoint ptr %link_duplex to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %link_duplex, align 2
  %link_autoneg = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 33
  %9 = ptrtoint ptr %link_autoneg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %link_autoneg, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_type = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 15
  %10 = ptrtoint ptr %port_type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %port_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp = icmp eq i16 %11, 1
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %12 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crb_read, align 4
  %call3 = tail call i32 %13(ptr noundef %adapter, i32 noundef 136323108) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 3
  br i1 %cmp4, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %link_speed7 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 31
  %14 = ptrtoint ptr %link_speed7 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1000, ptr %link_speed7, align 8
  %link_duplex8 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 32
  %15 = ptrtoint ptr %link_duplex8 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %link_duplex8, align 2
  %link_autoneg9 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 33
  %16 = ptrtoint ptr %link_autoneg9 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %link_autoneg9, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.then2
  %phy_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 49
  %17 = ptrtoint ptr %phy_read to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_read, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end10.link_down_crit_edge, label %land.lhs.true

if.end10.link_down_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %link_down

land.lhs.true:                                    ; preds = %if.end10
  %call12 = call i32 %18(ptr noundef %adapter, i32 noundef 17, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %land.lhs.true.link_down_crit_edge

land.lhs.true.link_down_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %link_down

if.then15:                                        ; preds = %land.lhs.true
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  %21 = and i32 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool16.not = icmp eq i32 %21, 0
  br i1 %tobool16.not, label %if.then15.link_down_crit_edge, label %if.then17

if.then15.link_down_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %link_down

if.then17:                                        ; preds = %if.then15
  %shr18 = lshr i32 %20, 14
  %and19 = and i32 %shr18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and19)
  %.not = icmp eq i32 %and19, 3
  br i1 %.not, label %if.then17.sw.epilog_crit_edge, label %switch.lookup

if.then17.sw.epilog_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.netxen_nic_set_link_parameters, i32 0, i32 %and19
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %22)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.then17.sw.epilog_crit_edge
  %.sink80 = phi i16 [ %switch.load, %switch.lookup ], [ 0, %if.then17.sw.epilog_crit_edge ]
  %link_speed25 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 31
  %23 = ptrtoint ptr %link_speed25 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %.sink80, ptr %link_speed25, align 8
  %24 = trunc i32 %20 to i16
  %25 = lshr i16 %24, 13
  %26 = and i16 %25, 1
  %27 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 32
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %26, ptr %27, align 2
  %29 = ptrtoint ptr %phy_read to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy_read, align 4
  %tobool36.not = icmp eq ptr %30, null
  br i1 %tobool36.not, label %sw.epilog.cleanup_crit_edge, label %land.lhs.true37

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true37:                                  ; preds = %sw.epilog
  %call39 = call i32 %30(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull %autoneg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %land.lhs.true37.cleanup_crit_edge

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then42:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %autoneg, align 4
  %conv43 = trunc i32 %32 to i16
  %link_autoneg44 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 33
  %33 = ptrtoint ptr %link_autoneg44 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv43, ptr %link_autoneg44, align 4
  br label %cleanup

link_down:                                        ; preds = %if.then15.link_down_crit_edge, %land.lhs.true.link_down_crit_edge, %if.end10.link_down_crit_edge
  %link_speed48 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 31
  %34 = ptrtoint ptr %link_speed48 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %link_speed48, align 8
  %link_duplex49 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 32
  %35 = ptrtoint ptr %link_duplex49 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %link_duplex49, align 2
  br label %cleanup

cleanup:                                          ; preds = %link_down, %if.then42, %land.lhs.true37.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then6, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %autoneg) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_nic_wol_supported(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %1)
  %cmp = icmp ult i8 %1, 38
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %2 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crb_read, align 4
  %call = tail call i32 %3(ptr noundef %adapter, i32 noundef 136323460) #10
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %4 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %portnum, align 2
  %conv2 = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv2
  %and = and i32 %shl, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then3:                                         ; preds = %if.end
  %6 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crb_read, align 4
  %call5 = tail call i32 %7(ptr noundef %adapter, i32 noundef 136323464) #10
  %8 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %portnum, align 2
  %conv7 = zext i8 %9 to i32
  %shl8 = shl nuw i32 1, %conv7
  %and9 = and i32 %shl8, %call5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then3.if.end13_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.if.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end13:                                         ; preds = %if.then3.if.end13_crit_edge, %if.end.if.end13_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netxen_dump_fw(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %value.i.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %md_template = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 74, i32 10
  %0 = ptrtoint ptr %md_template to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %md_template, align 8
  %md_capture_mask = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 74, i32 3
  %2 = ptrtoint ptr %md_capture_mask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %md_capture_mask, align 2
  %conv = zext i8 %3 to i32
  %and2 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.netxen_minidump_template_hdr, ptr %1, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %data_size.1 = phi i32 [ %5, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %and2.1 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.1)
  %tobool3.not.1 = icmp eq i32 %and2.1, 0
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.1 = getelementptr %struct.netxen_minidump_template_hdr, ptr %1, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1, align 4
  %add.1 = add i32 %7, %data_size.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %data_size.1.1 = phi i32 [ %add.1, %if.then.1 ], [ %data_size.1, %for.inc.for.inc.1_crit_edge ]
  %and2.2 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.2)
  %tobool3.not.2 = icmp eq i32 %and2.2, 0
  br i1 %tobool3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.2 = getelementptr %struct.netxen_minidump_template_hdr, ptr %1, i32 0, i32 13, i32 3
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  %add.2 = add i32 %9, %data_size.1.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %data_size.1.2 = phi i32 [ %add.2, %if.then.2 ], [ %data_size.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %and2.3 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.3)
  %tobool3.not.3 = icmp eq i32 %and2.3, 0
  br i1 %tobool3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.3 = getelementptr %struct.netxen_minidump_template_hdr, ptr %1, i32 0, i32 13, i32 4
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.3, align 4
  %add.3 = add i32 %11, %data_size.1.2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %data_size.1.3 = phi i32 [ %add.3, %if.then.3 ], [ %data_size.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %and2.4 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.4)
  %tobool3.not.4 = icmp eq i32 %and2.4, 0
  br i1 %tobool3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.4 = getelementptr %struct.netxen_minidump_template_hdr, ptr %1, i32 0, i32 13, i32 5
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.4, align 4
  %add.4 = add i32 %13, %data_size.1.3
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %data_size.1.4 = phi i32 [ %add.4, %if.then.4 ], [ %data_size.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %and2.5 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.5)
  %tobool3.not.5 = icmp eq i32 %and2.5, 0
  br i1 %tobool3.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.5 = getelementptr %struct.netxen_minidump_template_hdr, ptr %1, i32 0, i32 13, i32 6
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.5, align 4
  %add.5 = add i32 %15, %data_size.1.4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %data_size.1.5 = phi i32 [ %add.5, %if.then.5 ], [ %data_size.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %and2.6 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.6)
  %tobool3.not.6 = icmp eq i32 %and2.6, 0
  br i1 %tobool3.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.6 = getelementptr %struct.netxen_minidump_template_hdr, ptr %1, i32 0, i32 13, i32 7
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.6, align 4
  %add.6 = add i32 %17, %data_size.1.5
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %data_size.1.6 = phi i32 [ %add.6, %if.then.6 ], [ %data_size.1.5, %for.inc.5.for.inc.6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_size.1.6)
  %tobool4.not = icmp eq i32 %data_size.1.6, 0
  br i1 %tobool4.not, label %do.end, label %if.end9

do.end:                                           ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %conv) #13
  br label %cleanup

if.end9:                                          ; preds = %for.inc.6
  %md_capture_size = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 74, i32 6
  %20 = ptrtoint ptr %md_capture_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %data_size.1.6, ptr %md_capture_size, align 4
  %md_template_size = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 74, i32 7
  %21 = ptrtoint ptr %md_template_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %md_template_size, align 8
  %add14 = add i32 %22, %data_size.1.6
  %md_dump_size = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 74, i32 5
  %23 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add14, ptr %md_dump_size, align 8
  %md_capture_buff = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 74, i32 11
  %24 = ptrtoint ptr %md_capture_buff to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %md_capture_buff, align 4
  %tobool17.not = icmp eq ptr %25, null
  br i1 %tobool17.not, label %if.then18, label %do.end56

if.then18:                                        ; preds = %if.end9
  %call = tail call noalias ptr @vzalloc(i32 noundef %add14) #14
  %26 = ptrtoint ptr %md_capture_buff to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call, ptr %md_capture_buff, align 4
  %tobool25.not = icmp eq ptr %call, null
  br i1 %tobool25.not, label %if.then18.cleanup_crit_edge, label %if.end27

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.then18
  %27 = ptrtoint ptr %md_template to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %md_template, align 8
  %29 = ptrtoint ptr %md_capture_mask to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %md_capture_mask, align 2
  %conv.i = zext i8 %30 to i32
  %driver_capture_mask.i = getelementptr inbounds %struct.netxen_minidump_template_hdr, ptr %28, i32 0, i32 8
  %31 = ptrtoint ptr %driver_capture_mask.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.i, ptr %driver_capture_mask.i, align 4
  %call.i = tail call i64 @ktime_get_seconds() #10
  %conv2.i = trunc i64 %call.i to i32
  %driver_timestamp.i = getelementptr inbounds %struct.netxen_minidump_template_hdr, ptr %28, i32 0, i32 6
  %32 = ptrtoint ptr %driver_timestamp.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv2.i, ptr %driver_timestamp.i, align 4
  %fw_version.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 72
  %33 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw_version.i, align 8
  %driver_info_word2.i = getelementptr inbounds %struct.netxen_minidump_template_hdr, ptr %28, i32 0, i32 9
  %35 = ptrtoint ptr %driver_info_word2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %driver_info_word2.i, align 4
  %crb_read.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %36 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %crb_read.i, align 4
  %call3.i = tail call i32 %37(ptr noundef %adapter, i32 noundef 136324256) #10
  %driver_info_word3.i = getelementptr inbounds %struct.netxen_minidump_template_hdr, ptr %28, i32 0, i32 10
  %38 = ptrtoint ptr %driver_info_word3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call3.i, ptr %driver_info_word3.i, align 4
  %39 = ptrtoint ptr %md_template to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %md_template, align 8
  %41 = ptrtoint ptr %md_capture_mask to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %md_capture_mask, align 2
  %conv.i.i = zext i8 %42 to i32
  %and.i.i = and i32 %conv.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then30

if.end.i.i:                                       ; preds = %if.end27
  %43 = ptrtoint ptr %md_capture_buff to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %md_capture_buff, align 4
  %num_of_entries5.i.i = getelementptr inbounds %struct.netxen_minidump_template_hdr, ptr %40, i32 0, i32 4
  %45 = ptrtoint ptr %num_of_entries5.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_of_entries5.i.i, align 4
  %first_entry_offset.i.i = getelementptr inbounds %struct.netxen_minidump_template_hdr, ptr %40, i32 0, i32 1
  %47 = ptrtoint ptr %first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %first_entry_offset.i.i, align 4
  %49 = ptrtoint ptr %md_template_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %md_template_size, align 8
  %51 = call ptr @memcpy(ptr %44, ptr %40, i32 %50)
  %52 = load i32, ptr %md_template_size, align 8
  %add.ptr9.i.i = getelementptr i8, ptr %44, i32 %52
  %53 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %54)
  %cmp10.i.i = icmp ne i32 %54, 99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp14569.i.i = icmp sgt i32 %46, 0
  br i1 %cmp14569.i.i, label %for.body.lr.ph.i.i, label %if.end.i.i.for.end.i.i_crit_edge

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 %48
  %pdev.i506.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %pci_func.i.i.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 13
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %entry3.0580.i.i = phi ptr [ %add.ptr.i.i, %for.body.lr.ph.i.i ], [ %entry3.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %sane_end.0577.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %sane_end.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %e_cnt.0576.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %buff_level.0570.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %buff_level.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %55 = getelementptr inbounds %struct.netxen_common_entry_hdr, ptr %entry3.0580.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 4
  %and17262.i.i = and i8 %57, %42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and17262.i.i)
  %tobool.not.i.i = icmp eq i8 %and17262.i.i, 0
  br i1 %tobool.not.i.i, label %if.then18.i.i, label %if.end24.i.i

if.then18.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_flags.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %58 = ptrtoint ptr %driver_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %driver_flags.i.i, align 1
  %60 = or i8 %59, -128
  store i8 %60, ptr %driver_flags.i.i, align 1
  br label %for.inc.i.i

if.end24.i.i:                                     ; preds = %for.body.i.i
  %61 = ptrtoint ptr %entry3.0580.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %entry3.0580.i.i, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %62, label %sw.default.i.i [
    i32 0, label %sw.bb.i.i
    i32 255, label %sw.bb32.i.i
    i32 98, label %sw.bb38.i.i
    i32 1, label %sw.bb47.i.i
    i32 73, label %if.end24.i.i.sw.bb56.i.i_crit_edge
    i32 72, label %if.end24.i.i.sw.bb56.i.i_crit_edge101
    i32 4, label %if.end24.i.i.sw.bb65.i.i_crit_edge
    i32 71, label %if.end24.i.i.sw.bb65.i.i_crit_edge102
    i32 22, label %if.end24.i.i.sw.bb74.i.i_crit_edge
    i32 21, label %if.end24.i.i.sw.bb74.i.i_crit_edge103
    i32 23, label %if.end24.i.i.sw.bb74.i.i_crit_edge104
    i32 24, label %if.end24.i.i.sw.bb74.i.i_crit_edge105
    i32 11, label %if.end24.i.i.sw.bb83.i.i_crit_edge
    i32 12, label %if.end24.i.i.sw.bb83.i.i_crit_edge106
    i32 6, label %sw.bb92.i.i
    i32 2, label %sw.bb101.i.i
    i32 3, label %sw.bb110.i.i
  ]

if.end24.i.i.sw.bb83.i.i_crit_edge106:            ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb83.i.i

if.end24.i.i.sw.bb83.i.i_crit_edge:               ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb83.i.i

if.end24.i.i.sw.bb74.i.i_crit_edge105:            ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb74.i.i

if.end24.i.i.sw.bb74.i.i_crit_edge104:            ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb74.i.i

if.end24.i.i.sw.bb74.i.i_crit_edge103:            ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb74.i.i

if.end24.i.i.sw.bb74.i.i_crit_edge:               ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb74.i.i

if.end24.i.i.sw.bb65.i.i_crit_edge102:            ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb65.i.i

if.end24.i.i.sw.bb65.i.i_crit_edge:               ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb65.i.i

if.end24.i.i.sw.bb56.i.i_crit_edge101:            ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb56.i.i

if.end24.i.i.sw.bb56.i.i_crit_edge:               ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb56.i.i

sw.bb.i.i:                                        ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_flags28.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %64 = ptrtoint ptr %driver_flags28.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %driver_flags28.i.i, align 1
  %66 = or i8 %65, -128
  store i8 %66, ptr %driver_flags28.i.i, align 1
  br label %for.inc.i.i

sw.bb32.i.i:                                      ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_flags34.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %67 = ptrtoint ptr %driver_flags34.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %driver_flags34.i.i, align 1
  %69 = or i8 %68, -128
  store i8 %69, ptr %driver_flags34.i.i, align 1
  %add.i.i = add i32 %sane_end.0577.i.i, 1
  br label %for.inc.i.i

sw.bb38.i.i:                                      ; preds = %if.end24.i.i
  %op_count2.i.i.i = getelementptr inbounds %struct.netxen_minidump_entry_crb, ptr %entry3.0580.i.i, i32 0, i32 4
  %70 = ptrtoint ptr %op_count2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %op_count2.i.i.i, align 4
  %72 = getelementptr inbounds %struct.netxen_minidump_entry_crb, ptr %entry3.0580.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 4
  %conv.i.i.i = zext i8 %74 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp578.not.i.i.i = icmp eq i32 %71, 0
  br i1 %cmp578.not.i.i.i, label %sw.bb38.i.i.for.inc.i.i_crit_edge, label %for.cond4.preheader.lr.ph.i.i.i

sw.bb38.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.cond4.preheader.lr.ph.i.i.i:                  ; preds = %sw.bb38.i.i
  %addr1.i.i.i = getelementptr inbounds %struct.netxen_minidump_entry_crb, ptr %entry3.0580.i.i, i32 0, i32 1
  %75 = ptrtoint ptr %addr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %addr1.i.i.i, align 4
  %77 = getelementptr inbounds %struct.netxen_minidump_entry_crb, ptr %entry3.0580.i.i, i32 0, i32 5
  %state_index_v416.i.i.i = getelementptr inbounds %struct.anon.156, ptr %77, i32 0, i32 1
  %shl419.i.i.i = getelementptr inbounds %struct.anon.156, ptr %77, i32 0, i32 2
  %shr.i.i.i = getelementptr inbounds %struct.anon.156, ptr %77, i32 0, i32 3
  %value_2424.i.i.i = getelementptr inbounds %struct.netxen_minidump_entry_crb, ptr %entry3.0580.i.i, i32 0, i32 7
  %value_3430.i.i.i = getelementptr inbounds %struct.netxen_minidump_entry_crb, ptr %entry3.0580.i.i, i32 0, i32 8
  %value_1432.i.i.i = getelementptr inbounds %struct.netxen_minidump_entry_crb, ptr %entry3.0580.i.i, i32 0, i32 6
  %state_index_a368.i.i.i = getelementptr inbounds %struct.anon.154, ptr %72, i32 0, i32 1
  %poll_timeout.i.i.i = getelementptr inbounds %struct.anon.154, ptr %72, i32 0, i32 2
  br label %for.cond4.preheader.i.i.i

for.cond4.preheader.i.i.i:                        ; preds = %for.end439.i.i.i.for.cond4.preheader.i.i.i_crit_edge, %for.cond4.preheader.lr.ph.i.i.i
  %loop_cnt.0581.i.i.i = phi i32 [ 0, %for.cond4.preheader.lr.ph.i.i.i ], [ %inc442.i.i.i, %for.end439.i.i.i.for.cond4.preheader.i.i.i_crit_edge ]
  %rv.0580.i.i.i = phi i32 [ 0, %for.cond4.preheader.lr.ph.i.i.i ], [ %rv.2.i.i.i, %for.end439.i.i.i.for.cond4.preheader.i.i.i_crit_edge ]
  %addr.0579.i.i.i = phi i32 [ %76, %for.cond4.preheader.lr.ph.i.i.i ], [ %add440.i.i.i, %for.end439.i.i.i.for.cond4.preheader.i.i.i_crit_edge ]
  br label %for.body7.i.i.i

for.body7.i.i.i:                                  ; preds = %for.inc.i.i.i.for.body7.i.i.i_crit_edge, %for.cond4.preheader.i.i.i
  %i.0577.i.i.i = phi i32 [ 0, %for.cond4.preheader.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body7.i.i.i_crit_edge ]
  %rv.1576.i.i.i = phi i32 [ %rv.0580.i.i.i, %for.cond4.preheader.i.i.i ], [ %rv.2.i.i.i, %for.inc.i.i.i.for.body7.i.i.i_crit_edge ]
  %addr.1575.i.i.i = phi i32 [ %addr.0579.i.i.i, %for.cond4.preheader.i.i.i ], [ %addr.4.i.i.i, %for.inc.i.i.i.for.body7.i.i.i_crit_edge ]
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %77, align 4
  %conv9.i.i.i = zext i8 %79 to i32
  %shl.i.i.i = shl nuw nsw i32 1, %i.0577.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, %conv9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body7.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

for.body7.i.i.i.for.inc.i.i.i_crit_edge:          ; preds = %for.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body7.i.i.i
  %trunc.i.i.i = trunc i32 %and.i.i.i to i8
  %80 = zext i8 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %trunc.i.i.i, label %if.then.i.i.i.for.inc.i.i.i_crit_edge [
    i8 1, label %do.body10.i.i.i
    i8 2, label %do.body40.i.i.i
    i8 4, label %do.body108.i.i.i
    i8 8, label %do.body177.i.i.i
    i8 16, label %sw.bb243.i.i.i
    i8 32, label %sw.bb321.i.i.i
    i8 64, label %sw.bb358.i.i.i
    i8 -128, label %sw.bb414.i.i.i
  ]

if.then.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  tail call void @arm_heavy_mb() #10
  %and11.i.i.i = and i32 %addr.1575.i.i.i, -65536
  %81 = tail call i32 @llvm.bswap.i32(i32 %and11.i.i.i) #10
  %82 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %adapter, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %83, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %81) #10, !srcloc !164
  %84 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %adapter, align 8
  %add.ptr14.i.i.i = getelementptr i8, ptr %85, i32 1245280
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  tail call void @arm_heavy_mb() #10
  %87 = ptrtoint ptr %value_1432.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %value_1432.i.i.i, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #10
  %90 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %adapter, align 8
  %add.ptr21.i.i.i = getelementptr i8, ptr %91, i32 1966080
  %conv23.i.i.i = and i32 %addr.1575.i.i.i, 65535
  %add.ptr24.i.i.i = getelementptr i8, ptr %add.ptr21.i.i.i, i32 %conv23.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i.i.i, i32 %89) #10, !srcloc !164
  %92 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adapter, align 8
  %add.ptr29.i.i.i = getelementptr i8, ptr %93, i32 1966080
  %add.ptr32.i.i.i = getelementptr i8, ptr %add.ptr29.i.i.i, i32 %conv23.i.i.i
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  br label %for.inc.i.i.i

do.body40.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  tail call void @arm_heavy_mb() #10
  %and43.i.i.i = and i32 %addr.1575.i.i.i, -65536
  %95 = tail call i32 @llvm.bswap.i32(i32 %and43.i.i.i) #10
  %96 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %adapter, align 8
  %add.ptr46.i.i.i = getelementptr i8, ptr %97, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i.i.i, i32 %95) #10, !srcloc !164
  %98 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %adapter, align 8
  %add.ptr51.i.i.i = getelementptr i8, ptr %99, i32 1245280
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  %101 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %adapter, align 8
  %add.ptr59.i.i.i = getelementptr i8, ptr %102, i32 1966080
  %conv61.i.i.i = and i32 %addr.1575.i.i.i, 65535
  %add.ptr62.i.i.i = getelementptr i8, ptr %add.ptr59.i.i.i, i32 %conv61.i.i.i
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %104 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %adapter, align 8
  %add.ptr75.i.i.i = getelementptr i8, ptr %105, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75.i.i.i, i32 %95) #10, !srcloc !164
  %106 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %adapter, align 8
  %add.ptr80.i.i.i = getelementptr i8, ptr %107, i32 1245280
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @arm_heavy_mb() #10
  %109 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %adapter, align 8
  %add.ptr89.i.i.i = getelementptr i8, ptr %110, i32 1966080
  %add.ptr92.i.i.i = getelementptr i8, ptr %add.ptr89.i.i.i, i32 %conv61.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.i.i.i, i32 %103) #10, !srcloc !164
  %111 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %adapter, align 8
  %add.ptr97.i.i.i = getelementptr i8, ptr %112, i32 1966080
  %add.ptr100.i.i.i = getelementptr i8, ptr %add.ptr97.i.i.i, i32 %conv61.i.i.i
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  br label %for.inc.i.i.i

do.body108.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %and111.i.i.i = and i32 %addr.1575.i.i.i, -65536
  %114 = tail call i32 @llvm.bswap.i32(i32 %and111.i.i.i) #10
  %115 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %adapter, align 8
  %add.ptr114.i.i.i = getelementptr i8, ptr %116, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114.i.i.i, i32 %114) #10, !srcloc !164
  %117 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %adapter, align 8
  %add.ptr119.i.i.i = getelementptr i8, ptr %118, i32 1245280
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !220
  %120 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %adapter, align 8
  %add.ptr127.i.i.i = getelementptr i8, ptr %121, i32 1966080
  %conv129.i.i.i = and i32 %addr.1575.i.i.i, 65535
  %add.ptr130.i.i.i = getelementptr i8, ptr %add.ptr127.i.i.i, i32 %conv129.i.i.i
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130.i.i.i) #10, !srcloc !160
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  %124 = ptrtoint ptr %value_2424.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %value_2424.i.i.i, align 4
  %and136.i.i.i = and i32 %125, %123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  tail call void @arm_heavy_mb() #10
  %126 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %adapter, align 8
  %add.ptr144.i.i.i = getelementptr i8, ptr %127, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144.i.i.i, i32 %114) #10, !srcloc !164
  %128 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %adapter, align 8
  %add.ptr149.i.i.i = getelementptr i8, ptr %129, i32 1245280
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr149.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !224
  tail call void @arm_heavy_mb() #10
  %131 = tail call i32 @llvm.bswap.i32(i32 %and136.i.i.i) #10
  %132 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %adapter, align 8
  %add.ptr158.i.i.i = getelementptr i8, ptr %133, i32 1966080
  %add.ptr161.i.i.i = getelementptr i8, ptr %add.ptr158.i.i.i, i32 %conv129.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161.i.i.i, i32 %131) #10, !srcloc !164
  %134 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %adapter, align 8
  %add.ptr166.i.i.i = getelementptr i8, ptr %135, i32 1966080
  %add.ptr169.i.i.i = getelementptr i8, ptr %add.ptr166.i.i.i, i32 %conv129.i.i.i
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr169.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  br label %for.inc.i.i.i

do.body177.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !226
  tail call void @arm_heavy_mb() #10
  %and180.i.i.i = and i32 %addr.1575.i.i.i, -65536
  %137 = tail call i32 @llvm.bswap.i32(i32 %and180.i.i.i) #10
  %138 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %adapter, align 8
  %add.ptr183.i.i.i = getelementptr i8, ptr %139, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183.i.i.i, i32 %137) #10, !srcloc !164
  %140 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %adapter, align 8
  %add.ptr188.i.i.i = getelementptr i8, ptr %141, i32 1245280
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  %143 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %adapter, align 8
  %add.ptr196.i.i.i = getelementptr i8, ptr %144, i32 1966080
  %conv198.i.i.i = and i32 %addr.1575.i.i.i, 65535
  %add.ptr199.i.i.i = getelementptr i8, ptr %add.ptr196.i.i.i, i32 %conv198.i.i.i
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr199.i.i.i) #10, !srcloc !160
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  %147 = ptrtoint ptr %value_3430.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %value_3430.i.i.i, align 4
  %or.i.i.i = or i32 %148, %146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void @arm_heavy_mb() #10
  %149 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %adapter, align 8
  %add.ptr212.i.i.i = getelementptr i8, ptr %150, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr212.i.i.i, i32 %137) #10, !srcloc !164
  %151 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %adapter, align 8
  %add.ptr217.i.i.i = getelementptr i8, ptr %152, i32 1245280
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr217.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  tail call void @arm_heavy_mb() #10
  %154 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #10
  %155 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %adapter, align 8
  %add.ptr226.i.i.i = getelementptr i8, ptr %156, i32 1966080
  %add.ptr229.i.i.i = getelementptr i8, ptr %add.ptr226.i.i.i, i32 %conv198.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr229.i.i.i, i32 %154) #10, !srcloc !164
  %157 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %adapter, align 8
  %add.ptr234.i.i.i = getelementptr i8, ptr %158, i32 1966080
  %add.ptr237.i.i.i = getelementptr i8, ptr %add.ptr234.i.i.i, i32 %conv198.i.i.i
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr237.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  br label %for.inc.i.i.i

sw.bb243.i.i.i:                                   ; preds = %if.then.i.i.i
  %160 = ptrtoint ptr %poll_timeout.i.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %poll_timeout.i.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  tail call void @arm_heavy_mb() #10
  %and249.i.i.i = and i32 %addr.1575.i.i.i, -65536
  %162 = tail call i32 @llvm.bswap.i32(i32 %and249.i.i.i) #10
  %163 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %adapter, align 8
  %add.ptr252.i.i.i = getelementptr i8, ptr %164, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr252.i.i.i, i32 %162) #10, !srcloc !164
  %165 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %adapter, align 8
  %add.ptr257.i.i.i = getelementptr i8, ptr %166, i32 1245280
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr257.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  %168 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %adapter, align 8
  %add.ptr265.i.i.i = getelementptr i8, ptr %169, i32 1966080
  %conv267.i.i.i = and i32 %addr.1575.i.i.i, 65535
  %add.ptr268.i.i.i = getelementptr i8, ptr %add.ptr265.i.i.i, i32 %conv267.i.i.i
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr268.i.i.i) #10, !srcloc !160
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  %conv244.i.i.i = zext i16 %161 to i32
  %call2.i.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv244.i.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %172 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %172, %call2.i.i.i.i
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %for.body282.i.i.i.land.rhs.i.i.i_crit_edge, %sw.bb243.i.i.i
  %read_value.0574.i.i.i = phi i32 [ %171, %sw.bb243.i.i.i ], [ %186, %for.body282.i.i.i.land.rhs.i.i.i_crit_edge ]
  %173 = ptrtoint ptr %value_2424.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %value_2424.i.i.i, align 4
  %and278.i.i.i = and i32 %174, %read_value.0574.i.i.i
  %175 = ptrtoint ptr %value_1432.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %value_1432.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and278.i.i.i, i32 %176)
  %cmp280.not.i.i.i = icmp eq i32 %and278.i.i.i, %176
  br i1 %cmp280.not.i.i.i, label %land.rhs.i.i.i.for.inc.i.i.i_crit_edge, label %for.body282.i.i.i

land.rhs.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

for.body282.i.i.i:                                ; preds = %land.rhs.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %177 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i.i.i, %177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  %178 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %adapter, align 8
  %add.ptr293.i.i.i = getelementptr i8, ptr %179, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr293.i.i.i, i32 %162) #10, !srcloc !164
  %180 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %adapter, align 8
  %add.ptr298.i.i.i = getelementptr i8, ptr %181, i32 1245280
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr298.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  %183 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %adapter, align 8
  %add.ptr306.i.i.i = getelementptr i8, ptr %184, i32 1966080
  %add.ptr309.i.i.i = getelementptr i8, ptr %add.ptr306.i.i.i, i32 %conv267.i.i.i
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr309.i.i.i) #10, !srcloc !160
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  %tobool276.not.i.i.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %tobool276.not.i.i.i, label %for.body282.i.i.i.land.rhs.i.i.i_crit_edge, label %netxen_md_cntrl.exit.thread515.i.i

for.body282.i.i.i.land.rhs.i.i.i_crit_edge:       ; preds = %for.body282.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i.i

netxen_md_cntrl.exit.thread515.i.i:               ; preds = %for.body282.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %187 = ptrtoint ptr %pdev.i506.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pdev.i506.i.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %188, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #13
  br label %if.then40.i.i

sw.bb321.i.i.i:                                   ; preds = %if.then.i.i.i
  %189 = ptrtoint ptr %state_index_a368.i.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %state_index_a368.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool322.not.i.i.i = icmp eq i8 %190, 0
  br i1 %tobool322.not.i.i.i, label %sw.bb321.i.i.i.do.body327.i.i.i_crit_edge, label %if.then323.i.i.i

sw.bb321.i.i.i.do.body327.i.i.i_crit_edge:        ; preds = %sw.bb321.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body327.i.i.i

if.then323.i.i.i:                                 ; preds = %sw.bb321.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %idxprom.i.i.i = zext i8 %190 to i32
  %arrayidx.i.i.i = getelementptr %struct.netxen_minidump_template_hdr, ptr %40, i32 0, i32 12, i32 %idxprom.i.i.i
  %191 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx.i.i.i, align 4
  br label %do.body327.i.i.i

do.body327.i.i.i:                                 ; preds = %if.then323.i.i.i, %sw.bb321.i.i.i.do.body327.i.i.i_crit_edge
  %addr.2.i.i.i = phi i32 [ %192, %if.then323.i.i.i ], [ %addr.1575.i.i.i, %sw.bb321.i.i.i.do.body327.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  tail call void @arm_heavy_mb() #10
  %and330.i.i.i = and i32 %addr.2.i.i.i, -65536
  %193 = tail call i32 @llvm.bswap.i32(i32 %and330.i.i.i) #10
  %194 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %adapter, align 8
  %add.ptr333.i.i.i = getelementptr i8, ptr %195, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr333.i.i.i, i32 %193) #10, !srcloc !164
  %196 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %adapter, align 8
  %add.ptr338.i.i.i = getelementptr i8, ptr %197, i32 1245280
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr338.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  %199 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %adapter, align 8
  %add.ptr346.i.i.i = getelementptr i8, ptr %200, i32 1966080
  %conv348.i.i.i = and i32 %addr.2.i.i.i, 65535
  %add.ptr349.i.i.i = getelementptr i8, ptr %add.ptr346.i.i.i, i32 %conv348.i.i.i
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr349.i.i.i) #10, !srcloc !160
  %202 = tail call i32 @llvm.bswap.i32(i32 %201) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  %203 = ptrtoint ptr %state_index_v416.i.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %state_index_v416.i.i.i, align 1
  %idxprom356.i.i.i = zext i8 %204 to i32
  %arrayidx357.i.i.i = getelementptr %struct.netxen_minidump_template_hdr, ptr %40, i32 0, i32 12, i32 %idxprom356.i.i.i
  %205 = ptrtoint ptr %arrayidx357.i.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %202, ptr %arrayidx357.i.i.i, align 4
  br label %for.inc.i.i.i

sw.bb358.i.i.i:                                   ; preds = %if.then.i.i.i
  %206 = ptrtoint ptr %state_index_v416.i.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %state_index_v416.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool360.not.i.i.i = icmp eq i8 %207, 0
  %idxprom364.i.i.i = zext i8 %207 to i32
  %arrayidx365.i.i.i = getelementptr %struct.netxen_minidump_template_hdr, ptr %40, i32 0, i32 12, i32 %idxprom364.i.i.i
  %read_value.1.in.i.i.i = select i1 %tobool360.not.i.i.i, ptr %value_1432.i.i.i, ptr %arrayidx365.i.i.i
  %208 = ptrtoint ptr %read_value.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %read_value.1.i.i.i = load i32, ptr %read_value.1.in.i.i.i, align 4
  %209 = ptrtoint ptr %state_index_a368.i.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %state_index_a368.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool369.not.i.i.i = icmp eq i8 %210, 0
  br i1 %tobool369.not.i.i.i, label %sw.bb358.i.i.i.do.body377.i.i.i_crit_edge, label %if.then370.i.i.i

sw.bb358.i.i.i.do.body377.i.i.i_crit_edge:        ; preds = %sw.bb358.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body377.i.i.i

if.then370.i.i.i:                                 ; preds = %sw.bb358.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %idxprom373.i.i.i = zext i8 %210 to i32
  %arrayidx374.i.i.i = getelementptr %struct.netxen_minidump_template_hdr, ptr %40, i32 0, i32 12, i32 %idxprom373.i.i.i
  %211 = ptrtoint ptr %arrayidx374.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx374.i.i.i, align 4
  br label %do.body377.i.i.i

do.body377.i.i.i:                                 ; preds = %if.then370.i.i.i, %sw.bb358.i.i.i.do.body377.i.i.i_crit_edge
  %addr.3.i.i.i = phi i32 [ %212, %if.then370.i.i.i ], [ %addr.1575.i.i.i, %sw.bb358.i.i.i.do.body377.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %and380.i.i.i = and i32 %addr.3.i.i.i, -65536
  %213 = tail call i32 @llvm.bswap.i32(i32 %and380.i.i.i) #10
  %214 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %adapter, align 8
  %add.ptr383.i.i.i = getelementptr i8, ptr %215, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr383.i.i.i, i32 %213) #10, !srcloc !164
  %216 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %adapter, align 8
  %add.ptr388.i.i.i = getelementptr i8, ptr %217, i32 1245280
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr388.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @arm_heavy_mb() #10
  %219 = tail call i32 @llvm.bswap.i32(i32 %read_value.1.i.i.i) #10
  %220 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %adapter, align 8
  %add.ptr397.i.i.i = getelementptr i8, ptr %221, i32 1966080
  %conv399.i.i.i = and i32 %addr.3.i.i.i, 65535
  %add.ptr400.i.i.i = getelementptr i8, ptr %add.ptr397.i.i.i, i32 %conv399.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr400.i.i.i, i32 %219) #10, !srcloc !164
  %222 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %adapter, align 8
  %add.ptr405.i.i.i = getelementptr i8, ptr %223, i32 1966080
  %add.ptr408.i.i.i = getelementptr i8, ptr %add.ptr405.i.i.i, i32 %conv399.i.i.i
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr408.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  br label %for.inc.i.i.i

sw.bb414.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %225 = ptrtoint ptr %state_index_v416.i.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %state_index_v416.i.i.i, align 1
  %idxprom417.i.i.i = zext i8 %226 to i32
  %arrayidx418.i.i.i = getelementptr %struct.netxen_minidump_template_hdr, ptr %40, i32 0, i32 12, i32 %idxprom417.i.i.i
  %227 = ptrtoint ptr %arrayidx418.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx418.i.i.i, align 4
  %229 = ptrtoint ptr %shl419.i.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %shl419.i.i.i, align 2
  %conv420.i.i.i = zext i8 %230 to i32
  %shl421.i.i.i = shl i32 %228, %conv420.i.i.i
  %231 = ptrtoint ptr %shr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %shr.i.i.i, align 1
  %conv422.i.i.i = zext i8 %232 to i32
  %shr423.i.i.i = lshr i32 %shl421.i.i.i, %conv422.i.i.i
  %233 = ptrtoint ptr %value_2424.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %value_2424.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool425.not.i.i.i = icmp eq i32 %234, 0
  %and428.i.i.i = select i1 %tobool425.not.i.i.i, i32 -1, i32 %234
  %spec.select570.i.i.i = and i32 %and428.i.i.i, %shr423.i.i.i
  %235 = ptrtoint ptr %value_3430.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %value_3430.i.i.i, align 4
  %or431.i.i.i = or i32 %spec.select570.i.i.i, %236
  %237 = ptrtoint ptr %value_1432.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %value_1432.i.i.i, align 4
  %add433.i.i.i = add i32 %or431.i.i.i, %238
  %239 = ptrtoint ptr %arrayidx418.i.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %add433.i.i.i, ptr %arrayidx418.i.i.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %sw.bb414.i.i.i, %do.body377.i.i.i, %do.body327.i.i.i, %land.rhs.i.i.i.for.inc.i.i.i_crit_edge, %do.body177.i.i.i, %do.body108.i.i.i, %do.body40.i.i.i, %do.body10.i.i.i, %if.then.i.i.i.for.inc.i.i.i_crit_edge, %for.body7.i.i.i.for.inc.i.i.i_crit_edge
  %addr.4.i.i.i = phi i32 [ %addr.1575.i.i.i, %sw.bb414.i.i.i ], [ %addr.3.i.i.i, %do.body377.i.i.i ], [ %addr.2.i.i.i, %do.body327.i.i.i ], [ %addr.1575.i.i.i, %do.body177.i.i.i ], [ %addr.1575.i.i.i, %do.body108.i.i.i ], [ %addr.1575.i.i.i, %do.body40.i.i.i ], [ %addr.1575.i.i.i, %do.body10.i.i.i ], [ %addr.1575.i.i.i, %for.body7.i.i.i.for.inc.i.i.i_crit_edge ], [ %addr.1575.i.i.i, %if.then.i.i.i.for.inc.i.i.i_crit_edge ], [ %addr.1575.i.i.i, %land.rhs.i.i.i.for.inc.i.i.i_crit_edge ]
  %rv.2.i.i.i = phi i32 [ %rv.1576.i.i.i, %sw.bb414.i.i.i ], [ %rv.1576.i.i.i, %do.body377.i.i.i ], [ %rv.1576.i.i.i, %do.body327.i.i.i ], [ %rv.1576.i.i.i, %do.body177.i.i.i ], [ %rv.1576.i.i.i, %do.body108.i.i.i ], [ %rv.1576.i.i.i, %do.body40.i.i.i ], [ %rv.1576.i.i.i, %do.body10.i.i.i ], [ %rv.1576.i.i.i, %for.body7.i.i.i.for.inc.i.i.i_crit_edge ], [ 1, %if.then.i.i.i.for.inc.i.i.i_crit_edge ], [ %rv.1576.i.i.i, %land.rhs.i.i.i.for.inc.i.i.i_crit_edge ]
  %inc.i.i.i = add nuw nsw i32 %i.0577.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 8
  br i1 %exitcond.not.i.i.i, label %for.end439.i.i.i, label %for.inc.i.i.i.for.body7.i.i.i_crit_edge

for.inc.i.i.i.for.body7.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i.i.i

for.end439.i.i.i:                                 ; preds = %for.inc.i.i.i
  %add440.i.i.i = add i32 %addr.4.i.i.i, %conv.i.i.i
  %inc442.i.i.i = add nuw i32 %loop_cnt.0581.i.i.i, 1
  %exitcond582.not.i.i.i = icmp eq i32 %inc442.i.i.i, %71
  br i1 %exitcond582.not.i.i.i, label %netxen_md_cntrl.exit.i.i, label %for.end439.i.i.i.for.cond4.preheader.i.i.i_crit_edge

for.end439.i.i.i.for.cond4.preheader.i.i.i_crit_edge: ; preds = %for.end439.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.preheader.i.i.i

netxen_md_cntrl.exit.i.i:                         ; preds = %for.end439.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rv.2.i.i.i)
  %tobool39.not.i.i = icmp eq i32 %rv.2.i.i.i, 0
  br i1 %tobool39.not.i.i, label %netxen_md_cntrl.exit.i.i.for.inc.i.i_crit_edge, label %netxen_md_cntrl.exit.i.i.if.then40.i.i_crit_edge

netxen_md_cntrl.exit.i.i.if.then40.i.i_crit_edge: ; preds = %netxen_md_cntrl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40.i.i

netxen_md_cntrl.exit.i.i.for.inc.i.i_crit_edge:   ; preds = %netxen_md_cntrl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then40.i.i:                                    ; preds = %netxen_md_cntrl.exit.i.i.if.then40.i.i_crit_edge, %netxen_md_cntrl.exit.thread515.i.i
  %driver_flags42.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %240 = ptrtoint ptr %driver_flags42.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %driver_flags42.i.i, align 1
  %242 = or i8 %241, -128
  store i8 %242, ptr %driver_flags42.i.i, align 1
  br label %for.inc.i.i

sw.bb47.i.i:                                      ; preds = %if.end24.i.i
  %op_count2.i270.i.i = getelementptr inbounds %struct.netxen_minidump_entry_crb, ptr %entry3.0580.i.i, i32 0, i32 4
  %243 = ptrtoint ptr %op_count2.i270.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %op_count2.i270.i.i, align 4
  %245 = getelementptr inbounds %struct.netxen_minidump_entry_crb, ptr %entry3.0580.i.i, i32 0, i32 2
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %245, align 4
  %conv.i271.i.i = zext i8 %247 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %cmp33.not.i.i.i = icmp eq i32 %244, 0
  br i1 %cmp33.not.i.i.i, label %sw.bb47.i.i.if.end.i.i.i_crit_edge, label %do.body4.preheader.i.i.i

sw.bb47.i.i.if.end.i.i.i_crit_edge:               ; preds = %sw.bb47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

do.body4.preheader.i.i.i:                         ; preds = %sw.bb47.i.i
  %add.ptr48.i.i = getelementptr i8, ptr %add.ptr9.i.i, i32 %buff_level.0570.i.i
  %addr1.i272.i.i = getelementptr inbounds %struct.netxen_minidump_entry_crb, ptr %entry3.0580.i.i, i32 0, i32 1
  %248 = ptrtoint ptr %addr1.i272.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %addr1.i272.i.i, align 4
  br label %do.body4.i.i.i

do.body4.i.i.i:                                   ; preds = %do.body4.i.i.i.do.body4.i.i.i_crit_edge, %do.body4.preheader.i.i.i
  %data_buff.addr.036.i.i.i = phi ptr [ %incdec.ptr22.i.i.i, %do.body4.i.i.i.do.body4.i.i.i_crit_edge ], [ %add.ptr48.i.i, %do.body4.preheader.i.i.i ]
  %loop_cnt.035.i.i.i = phi i32 [ %inc.i276.i.i, %do.body4.i.i.i.do.body4.i.i.i_crit_edge ], [ 0, %do.body4.preheader.i.i.i ]
  %addr.034.i.i.i = phi i32 [ %add.i275.i.i, %do.body4.i.i.i.do.body4.i.i.i_crit_edge ], [ %249, %do.body4.preheader.i.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  %and.i273.i.i = and i32 %addr.034.i.i.i, -65536
  %250 = tail call i32 @llvm.bswap.i32(i32 %and.i273.i.i) #10
  %251 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %adapter, align 8
  %add.ptr.i274.i.i = getelementptr i8, ptr %252, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274.i.i, i32 %250) #10, !srcloc !164
  %253 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %adapter, align 8
  %add.ptr7.i.i.i = getelementptr i8, ptr %254, i32 1245280
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  %256 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %adapter, align 8
  %add.ptr13.i.i.i = getelementptr i8, ptr %257, i32 1966080
  %conv15.i.i.i = and i32 %addr.034.i.i.i, 65535
  %add.ptr16.i.i.i = getelementptr i8, ptr %add.ptr13.i.i.i, i32 %conv15.i.i.i
  %258 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i.i.i) #10, !srcloc !160
  %259 = tail call i32 @llvm.bswap.i32(i32 %258) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  %incdec.ptr.i.i.i = getelementptr i32, ptr %data_buff.addr.036.i.i.i, i32 1
  %260 = ptrtoint ptr %data_buff.addr.036.i.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %addr.034.i.i.i, ptr %data_buff.addr.036.i.i.i, align 4
  %incdec.ptr22.i.i.i = getelementptr i32, ptr %data_buff.addr.036.i.i.i, i32 2
  %261 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %259, ptr %incdec.ptr.i.i.i, align 4
  %add.i275.i.i = add i32 %addr.034.i.i.i, %conv.i271.i.i
  %inc.i276.i.i = add nuw i32 %loop_cnt.035.i.i.i, 1
  %exitcond.not.i277.i.i = icmp eq i32 %inc.i276.i.i, %244
  br i1 %exitcond.not.i277.i.i, label %netxen_md_rd_crb.exit.i.i, label %do.body4.i.i.i.do.body4.i.i.i_crit_edge

do.body4.i.i.i.do.body4.i.i.i_crit_edge:          ; preds = %do.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i.i.i

netxen_md_rd_crb.exit.i.i:                        ; preds = %do.body4.i.i.i
  %phi.bo.i.i.i = shl i32 %244, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo.i.i.i)
  %cmp.i.i.i = icmp slt i32 %phi.bo.i.i.i, 0
  br i1 %cmp.i.i.i, label %276, label %netxen_md_rd_crb.exit.i.i.if.end.i.i.i_crit_edge

netxen_md_rd_crb.exit.i.i.if.end.i.i.i_crit_edge: ; preds = %netxen_md_rd_crb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %netxen_md_rd_crb.exit.i.i.if.end.i.i.i_crit_edge, %sw.bb47.i.i.if.end.i.i.i_crit_edge
  %loop_cnt.0.lcssa.i521.i.i = phi i32 [ %phi.bo.i.i.i, %netxen_md_rd_crb.exit.i.i.if.end.i.i.i_crit_edge ], [ 0, %sw.bb47.i.i.if.end.i.i.i_crit_edge ]
  %entry_capture_size.i.i.i = getelementptr inbounds %struct.netxen_common_entry_hdr, ptr %entry3.0580.i.i, i32 0, i32 2
  %262 = ptrtoint ptr %entry_capture_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %entry_capture_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %263, i32 %loop_cnt.0.lcssa.i521.i.i)
  %cmp4.not.i.i.i = icmp eq i32 %263, %loop_cnt.0.lcssa.i521.i.i
  br i1 %cmp4.not.i.i.i, label %if.end.i.i.i.netxen_md_entry_err_chk.exit.thread.i.i_crit_edge, label %if.then6.i.i.i

if.end.i.i.i.netxen_md_entry_err_chk.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_md_entry_err_chk.exit.thread.i.i

if.then6.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %264 = ptrtoint ptr %entry_capture_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %loop_cnt.0.lcssa.i521.i.i, ptr %entry_capture_size.i.i.i, align 4
  %driver_flags10.i.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %265 = ptrtoint ptr %driver_flags10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %driver_flags10.i.i.i, align 1
  %267 = or i8 %266, 64
  store i8 %267, ptr %driver_flags10.i.i.i, align 1
  %268 = ptrtoint ptr %pdev.i506.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %pdev.i506.i.i, align 8
  %dev.i280.i.i = getelementptr inbounds %struct.pci_dev, ptr %269, i32 0, i32 44
  %270 = ptrtoint ptr %entry3.0580.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %entry3.0580.i.i, align 4
  %272 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %55, align 4
  %conv16.i.i.i = zext i8 %273 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i280.i.i, ptr noundef nonnull @.str.52, i32 noundef %271, i32 noundef %conv16.i.i.i, i32 noundef %loop_cnt.0.lcssa.i521.i.i, i32 noundef %loop_cnt.0.lcssa.i521.i.i) #13
  %274 = ptrtoint ptr %pdev.i506.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %pdev.i506.i.i, align 8
  %dev22.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %275, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22.i.i.i, ptr noundef nonnull @.str.55) #13
  br label %netxen_md_entry_err_chk.exit.thread.i.i

netxen_md_entry_err_chk.exit.thread.i.i:          ; preds = %if.then6.i.i.i, %if.end.i.i.i.netxen_md_entry_err_chk.exit.thread.i.i_crit_edge
  %add55525.i.i = add i32 %loop_cnt.0.lcssa.i521.i.i, %buff_level.0570.i.i
  br label %for.inc.i.i

276:                                              ; preds = %netxen_md_rd_crb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_flags.i.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %277 = ptrtoint ptr %driver_flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %driver_flags.i.i.i, align 1
  %279 = or i8 %278, -128
  store i8 %279, ptr %driver_flags.i.i.i, align 1
  br label %for.inc.i.i

sw.bb56.i.i:                                      ; preds = %if.end24.i.i.sw.bb56.i.i_crit_edge, %if.end24.i.i.sw.bb56.i.i_crit_edge101
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i.i.i) #10
  %280 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_store8_noabort(i32 %280)
  store i64 0, ptr %value.i.i.i, align 8
  %read_data_size.i.i.i = getelementptr inbounds %struct.netxen_minidump_entry_rdmem, ptr %entry3.0580.i.i, i32 0, i32 8
  %281 = ptrtoint ptr %read_data_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %read_data_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %282)
  %cmp8.not.i.i.i = icmp ult i32 %282, 8
  br i1 %cmp8.not.i.i.i, label %netxen_md_rdmem.exit.thread.i.i, label %for.body.preheader.i.i.i

netxen_md_rdmem.exit.thread.i.i:                  ; preds = %sw.bb56.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i.i.i) #10
  br label %if.end.i294.i.i

for.body.preheader.i.i.i:                         ; preds = %sw.bb56.i.i
  %add.ptr57.i.i = getelementptr i8, ptr %add.ptr9.i.i, i32 %buff_level.0570.i.i
  %div7.i.i.i = lshr i32 %282, 3
  %read_addr.i.i.i = getelementptr inbounds %struct.netxen_minidump_entry_rdmem, ptr %entry3.0580.i.i, i32 0, i32 7
  %283 = ptrtoint ptr %read_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %read_addr.i.i.i, align 4
  %conv.i282.i.i = zext i32 %284 to i64
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i288.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %i.011.i.i.i = phi i32 [ %inc.i286.i.i, %if.end.i288.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %addr.010.i.i.i = phi i64 [ %add.i285.i.i, %if.end.i288.i.i.for.body.i.i.i_crit_edge ], [ %conv.i282.i.i, %for.body.preheader.i.i.i ]
  %data_buff.addr.09.i.i.i = phi ptr [ %incdec.ptr.i284.i.i, %if.end.i288.i.i.for.body.i.i.i_crit_edge ], [ %add.ptr57.i.i, %for.body.preheader.i.i.i ]
  %call.i.i.i = call i32 @netxen_nic_pci_mem_read_2M(ptr noundef %adapter, i64 noundef %addr.010.i.i.i, ptr noundef nonnull %value.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i283.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i283.i.i, label %if.end.i288.i.i, label %for.body.i.i.i.netxen_md_rdmem.exit.i.i_crit_edge

for.body.i.i.i.netxen_md_rdmem.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_md_rdmem.exit.i.i

if.end.i288.i.i:                                  ; preds = %for.body.i.i.i
  %285 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_load8_noabort(i32 %285)
  %286 = load i64, ptr %value.i.i.i, align 8
  %incdec.ptr.i284.i.i = getelementptr i64, ptr %data_buff.addr.09.i.i.i, i32 1
  %287 = ptrtoint ptr %data_buff.addr.09.i.i.i to i32
  call void @__asan_store8_noabort(i32 %287)
  store i64 %286, ptr %data_buff.addr.09.i.i.i, align 8
  %add.i285.i.i = add nuw nsw i64 %addr.010.i.i.i, 8
  %inc.i286.i.i = add nuw nsw i32 %i.011.i.i.i, 1
  %exitcond.not.i287.i.i = icmp eq i32 %inc.i286.i.i, %div7.i.i.i
  br i1 %exitcond.not.i287.i.i, label %if.end.i288.i.i.netxen_md_rdmem.exit.i.i_crit_edge, label %if.end.i288.i.i.for.body.i.i.i_crit_edge

if.end.i288.i.i.for.body.i.i.i_crit_edge:         ; preds = %if.end.i288.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

if.end.i288.i.i.netxen_md_rdmem.exit.i.i_crit_edge: ; preds = %if.end.i288.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_md_rdmem.exit.i.i

netxen_md_rdmem.exit.i.i:                         ; preds = %if.end.i288.i.i.netxen_md_rdmem.exit.i.i_crit_edge, %for.body.i.i.i.netxen_md_rdmem.exit.i.i_crit_edge
  %i.0.lcssa.i.i.i = phi i32 [ %div7.i.i.i, %if.end.i288.i.i.netxen_md_rdmem.exit.i.i_crit_edge ], [ %i.011.i.i.i, %for.body.i.i.i.netxen_md_rdmem.exit.i.i_crit_edge ]
  %mul.i.i.i = shl i32 %i.0.lcssa.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i.i)
  %cmp.i289.i.i = icmp slt i32 %mul.i.i.i, 0
  br i1 %cmp.i289.i.i, label %302, label %netxen_md_rdmem.exit.i.i.if.end.i294.i.i_crit_edge

netxen_md_rdmem.exit.i.i.if.end.i294.i.i_crit_edge: ; preds = %netxen_md_rdmem.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i294.i.i

if.end.i294.i.i:                                  ; preds = %netxen_md_rdmem.exit.i.i.if.end.i294.i.i_crit_edge, %netxen_md_rdmem.exit.thread.i.i
  %mul.i530.i.i = phi i32 [ 0, %netxen_md_rdmem.exit.thread.i.i ], [ %mul.i.i.i, %netxen_md_rdmem.exit.i.i.if.end.i294.i.i_crit_edge ]
  %entry_capture_size.i292.i.i = getelementptr inbounds %struct.netxen_common_entry_hdr, ptr %entry3.0580.i.i, i32 0, i32 2
  %288 = ptrtoint ptr %entry_capture_size.i292.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %entry_capture_size.i292.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %289, i32 %mul.i530.i.i)
  %cmp4.not.i293.i.i = icmp eq i32 %289, %mul.i530.i.i
  br i1 %cmp4.not.i293.i.i, label %if.end.i294.i.i.netxen_md_entry_err_chk.exit302.thread.i.i_crit_edge, label %if.then6.i300.i.i

if.end.i294.i.i.netxen_md_entry_err_chk.exit302.thread.i.i_crit_edge: ; preds = %if.end.i294.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_md_entry_err_chk.exit302.thread.i.i

if.then6.i300.i.i:                                ; preds = %if.end.i294.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %290 = ptrtoint ptr %entry_capture_size.i292.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %mul.i530.i.i, ptr %entry_capture_size.i292.i.i, align 4
  %driver_flags10.i295.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %291 = ptrtoint ptr %driver_flags10.i295.i.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %driver_flags10.i295.i.i, align 1
  %293 = or i8 %292, 64
  store i8 %293, ptr %driver_flags10.i295.i.i, align 1
  %294 = ptrtoint ptr %pdev.i506.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %pdev.i506.i.i, align 8
  %dev.i297.i.i = getelementptr inbounds %struct.pci_dev, ptr %295, i32 0, i32 44
  %296 = ptrtoint ptr %entry3.0580.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %entry3.0580.i.i, align 4
  %298 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %55, align 4
  %conv16.i298.i.i = zext i8 %299 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i297.i.i, ptr noundef nonnull @.str.52, i32 noundef %297, i32 noundef %conv16.i298.i.i, i32 noundef %mul.i530.i.i, i32 noundef %mul.i530.i.i) #13
  %300 = ptrtoint ptr %pdev.i506.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %pdev.i506.i.i, align 8
  %dev22.i299.i.i = getelementptr inbounds %struct.pci_dev, ptr %301, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22.i299.i.i, ptr noundef nonnull @.str.55) #13
  br label %netxen_md_entry_err_chk.exit302.thread.i.i

netxen_md_entry_err_chk.exit302.thread.i.i:       ; preds = %if.then6.i300.i.i, %if.end.i294.i.i.netxen_md_entry_err_chk.exit302.thread.i.i_crit_edge
  %add64534.i.i = add i32 %mul.i530.i.i, %buff_level.0570.i.i
  br label %for.inc.i.i

302:                                              ; preds = %netxen_md_rdmem.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_flags.i290.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %303 = ptrtoint ptr %driver_flags.i290.i.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %driver_flags.i290.i.i, align 1
  %305 = or i8 %304, -128
  store i8 %305, ptr %driver_flags.i290.i.i, align 1
  br label %for.inc.i.i

sw.bb65.i.i:                                      ; preds = %if.end24.i.i.sw.bb65.i.i_crit_edge, %if.end24.i.i.sw.bb65.i.i_crit_edge102
  %add.ptr66.i.i = getelementptr i8, ptr %add.ptr9.i.i, i32 %buff_level.0570.i.i
  %read_addr.i303.i.i = getelementptr inbounds %struct.netxen_minidump_entry_rdrom, ptr %entry3.0580.i.i, i32 0, i32 7
  %306 = ptrtoint ptr %read_addr.i303.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %read_addr.i303.i.i, align 4
  %read_data_size.i304.i.i = getelementptr inbounds %struct.netxen_minidump_entry_rdrom, ptr %entry3.0580.i.i, i32 0, i32 8
  %308 = ptrtoint ptr %read_data_size.i304.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %read_data_size.i304.i.i, align 4
  %div99.i.i.i = lshr i32 %309, 2
  %310 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %adapter, align 8
  %add.ptr100.i305.i.i = getelementptr i8, ptr %311, i32 1294352
  %312 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100.i305.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %tobool.not101.i.i.i = icmp eq i32 %312, 0
  br i1 %tobool.not101.i.i.i, label %sw.bb65.i.i.if.then.i310.i.i_crit_edge, label %sw.bb65.i.i.do.body.i.i.i_crit_edge

sw.bb65.i.i.do.body.i.i.i_crit_edge:              ; preds = %sw.bb65.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

sw.bb65.i.i.if.then.i310.i.i_crit_edge:           ; preds = %sw.bb65.i.i
  br label %if.then.i310.i.i

if.then.i310.i.i:                                 ; preds = %if.then.i310.i.i.if.then.i310.i.i_crit_edge, %sw.bb65.i.i.if.then.i310.i.i_crit_edge
  %count.0102.i.i.i = phi i32 [ %inc.i306.i.i, %if.then.i310.i.i.if.then.i310.i.i_crit_edge ], [ 0, %sw.bb65.i.i.if.then.i310.i.i_crit_edge ]
  tail call void @msleep(i32 noundef 20) #10
  %inc.i306.i.i = add nuw nsw i32 %count.0102.i.i.i, 1
  %313 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %adapter, align 8
  %add.ptr.i307.i.i = getelementptr i8, ptr %314, i32 1294352
  %315 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i307.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %315)
  %tobool.not.i308.i.i = icmp eq i32 %315, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %count.0102.i.i.i)
  %cmp.i309.i.i = icmp ult i32 %count.0102.i.i.i, 999
  %or.cond.i.i.i = select i1 %tobool.not.i308.i.i, i1 %cmp.i309.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.then.i310.i.i.if.then.i310.i.i_crit_edge, label %if.then.i310.i.i.do.body.i.i.i_crit_edge

if.then.i310.i.i.do.body.i.i.i_crit_edge:         ; preds = %if.then.i310.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

if.then.i310.i.i.if.then.i310.i.i_crit_edge:      ; preds = %if.then.i310.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i310.i.i

do.body.i.i.i:                                    ; preds = %if.then.i310.i.i.do.body.i.i.i_crit_edge, %sw.bb65.i.i.do.body.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  tail call void @arm_heavy_mb() #10
  %316 = ptrtoint ptr %pci_func.i.i.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %pci_func.i.i.i, align 2
  %conv.i311.i.i = zext i8 %317 to i32
  %318 = shl nuw i32 %conv.i311.i.i, 24
  %319 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %adapter, align 8
  %add.ptr5.i.i.i = getelementptr i8, ptr %320, i32 1777920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i, i32 %318) #10, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %309)
  %cmp6103.not.i.i.i = icmp ult i32 %309, 4
  br i1 %cmp6103.not.i.i.i, label %do.body.i.i.i.netxen_md_rdrom.exit.i.i_crit_edge, label %for.body.preheader.i312.i.i

do.body.i.i.i.netxen_md_rdrom.exit.i.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_md_rdrom.exit.i.i

for.body.preheader.i312.i.i:                      ; preds = %do.body.i.i.i
  %umax.i.i.i = tail call i32 @llvm.umax.i32(i32 %div99.i.i.i, i32 1) #10
  br label %for.body.i319.i.i

for.body.i319.i.i:                                ; preds = %for.body.i319.i.i.for.body.i319.i.i_crit_edge, %for.body.preheader.i312.i.i
  %data_buff.addr.0106.i.i.i = phi ptr [ %incdec.ptr.i317.i.i, %for.body.i319.i.i.for.body.i319.i.i_crit_edge ], [ %add.ptr66.i.i, %for.body.preheader.i312.i.i ]
  %i.0105.i.i.i = phi i32 [ %inc72.i.i.i, %for.body.i319.i.i.for.body.i319.i.i_crit_edge ], [ 0, %for.body.preheader.i312.i.i ]
  %fl_addr.0104.i.i.i = phi i32 [ %add71.i.i.i, %for.body.i319.i.i.for.body.i319.i.i_crit_edge ], [ %307, %for.body.preheader.i312.i.i ]
  %and.i313.i.i = and i32 %fl_addr.0104.i.i.i, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %321 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %adapter, align 8
  %add.ptr14.i314.i.i = getelementptr i8, ptr %322, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i314.i.i, i32 4418) #10, !srcloc !164
  %323 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %adapter, align 8
  %add.ptr19.i.i.i = getelementptr i8, ptr %324, i32 1245280
  %325 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  tail call void @arm_heavy_mb() #10
  %326 = tail call i32 @llvm.bswap.i32(i32 %and.i313.i.i) #10
  %327 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %adapter, align 8
  %add.ptr29.i315.i.i = getelementptr i8, ptr %328, i32 1966128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i315.i.i, i32 %326) #10, !srcloc !164
  %329 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %adapter, align 8
  %add.ptr35.i.i.i = getelementptr i8, ptr %330, i32 1966128
  %331 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  tail call void @arm_heavy_mb() #10
  %332 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %adapter, align 8
  %add.ptr49.i.i.i = getelementptr i8, ptr %333, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i.i.i, i32 5442) #10, !srcloc !164
  %334 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %adapter, align 8
  %add.ptr54.i.i.i = getelementptr i8, ptr %335, i32 1245280
  %336 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  %337 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %adapter, align 8
  %add.ptr62.i316.i.i = getelementptr i8, ptr %338, i32 1966080
  %conv64.i.i.i = and i32 %fl_addr.0104.i.i.i, 65535
  %add.ptr65.i.i.i = getelementptr i8, ptr %add.ptr62.i316.i.i, i32 %conv64.i.i.i
  %339 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  %incdec.ptr.i317.i.i = getelementptr i32, ptr %data_buff.addr.0106.i.i.i, i32 1
  %340 = ptrtoint ptr %data_buff.addr.0106.i.i.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %339, ptr %data_buff.addr.0106.i.i.i, align 4
  %add71.i.i.i = add i32 %fl_addr.0104.i.i.i, 4
  %inc72.i.i.i = add nuw nsw i32 %i.0105.i.i.i, 1
  %exitcond.not.i318.i.i = icmp eq i32 %inc72.i.i.i, %umax.i.i.i
  br i1 %exitcond.not.i318.i.i, label %for.body.i319.i.i.netxen_md_rdrom.exit.i.i_crit_edge, label %for.body.i319.i.i.for.body.i319.i.i_crit_edge

for.body.i319.i.i.for.body.i319.i.i_crit_edge:    ; preds = %for.body.i319.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i319.i.i

for.body.i319.i.i.netxen_md_rdrom.exit.i.i_crit_edge: ; preds = %for.body.i319.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_md_rdrom.exit.i.i

netxen_md_rdrom.exit.i.i:                         ; preds = %for.body.i319.i.i.netxen_md_rdrom.exit.i.i_crit_edge, %do.body.i.i.i.netxen_md_rdrom.exit.i.i_crit_edge
  %341 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %adapter, align 8
  %add.ptr77.i.i.i = getelementptr i8, ptr %342, i32 1294356
  %343 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  %344 = ptrtoint ptr %read_data_size.i304.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %read_data_size.i304.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %345)
  %cmp.i320.i.i = icmp slt i32 %345, 0
  br i1 %cmp.i320.i.i, label %360, label %if.end.i325.i.i

if.end.i325.i.i:                                  ; preds = %netxen_md_rdrom.exit.i.i
  %entry_capture_size.i323.i.i = getelementptr inbounds %struct.netxen_common_entry_hdr, ptr %entry3.0580.i.i, i32 0, i32 2
  %346 = ptrtoint ptr %entry_capture_size.i323.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %entry_capture_size.i323.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %347, i32 %345)
  %cmp4.not.i324.i.i = icmp eq i32 %347, %345
  br i1 %cmp4.not.i324.i.i, label %if.end.i325.i.i.netxen_md_entry_err_chk.exit333.thread.i.i_crit_edge, label %if.then6.i331.i.i

if.end.i325.i.i.netxen_md_entry_err_chk.exit333.thread.i.i_crit_edge: ; preds = %if.end.i325.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_md_entry_err_chk.exit333.thread.i.i

if.then6.i331.i.i:                                ; preds = %if.end.i325.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %348 = ptrtoint ptr %entry_capture_size.i323.i.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %345, ptr %entry_capture_size.i323.i.i, align 4
  %driver_flags10.i326.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %349 = ptrtoint ptr %driver_flags10.i326.i.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %driver_flags10.i326.i.i, align 1
  %351 = or i8 %350, 64
  store i8 %351, ptr %driver_flags10.i326.i.i, align 1
  %352 = ptrtoint ptr %pdev.i506.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %pdev.i506.i.i, align 8
  %dev.i328.i.i = getelementptr inbounds %struct.pci_dev, ptr %353, i32 0, i32 44
  %354 = ptrtoint ptr %entry3.0580.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %entry3.0580.i.i, align 4
  %356 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %55, align 4
  %conv16.i329.i.i = zext i8 %357 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i328.i.i, ptr noundef nonnull @.str.52, i32 noundef %355, i32 noundef %conv16.i329.i.i, i32 noundef %345, i32 noundef %345) #13
  %358 = ptrtoint ptr %pdev.i506.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %pdev.i506.i.i, align 8
  %dev22.i330.i.i = getelementptr inbounds %struct.pci_dev, ptr %359, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22.i330.i.i, ptr noundef nonnull @.str.55) #13
  br label %netxen_md_entry_err_chk.exit333.thread.i.i

netxen_md_entry_err_chk.exit333.thread.i.i:       ; preds = %if.then6.i331.i.i, %if.end.i325.i.i.netxen_md_entry_err_chk.exit333.thread.i.i_crit_edge
  %add73537.i.i = add i32 %345, %buff_level.0570.i.i
  br label %for.inc.i.i

360:                                              ; preds = %netxen_md_rdrom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_flags.i321.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %361 = ptrtoint ptr %driver_flags.i321.i.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %driver_flags.i321.i.i, align 1
  %363 = or i8 %362, -128
  store i8 %363, ptr %driver_flags.i321.i.i, align 1
  br label %for.inc.i.i

sw.bb74.i.i:                                      ; preds = %if.end24.i.i.sw.bb74.i.i_crit_edge, %if.end24.i.i.sw.bb74.i.i_crit_edge103, %if.end24.i.i.sw.bb74.i.i_crit_edge104, %if.end24.i.i.sw.bb74.i.i_crit_edge105
  %op_count.i.i.i = getelementptr inbounds %struct.netxen_minidump_entry_cache, ptr %entry3.0580.i.i, i32 0, i32 4
  %364 = ptrtoint ptr %op_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %op_count.i.i.i, align 4
  %read_addr1.i.i.i = getelementptr inbounds %struct.netxen_minidump_entry_cache, ptr %entry3.0580.i.i, i32 0, i32 7
  %366 = ptrtoint ptr %read_addr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %read_addr1.i.i.i, align 4
  %368 = getelementptr inbounds %struct.netxen_minidump_entry_cache, ptr %entry3.0580.i.i, i32 0, i32 2
  %369 = getelementptr inbounds %struct.netxen_minidump_entry_cache, ptr %entry3.0580.i.i, i32 0, i32 8
  %read_addr_cnt.i.i.i = getelementptr inbounds %struct.anon.186, ptr %369, i32 0, i32 1
  %370 = ptrtoint ptr %read_addr_cnt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %read_addr_cnt.i.i.i, align 1
  %conv5.i.i.i = zext i8 %371 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %365)
  %cmp264.i.i.i = icmp sgt i32 %365, 0
  br i1 %cmp264.i.i.i, label %do.body7.lr.ph.i.i.i, label %sw.bb74.i.i.netxen_md_L2Cache.exit.i.i_crit_edge

sw.bb74.i.i.netxen_md_L2Cache.exit.i.i_crit_edge: ; preds = %sw.bb74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_md_L2Cache.exit.i.i

do.body7.lr.ph.i.i.i:                             ; preds = %sw.bb74.i.i
  %add.ptr75.i.i = getelementptr i8, ptr %add.ptr9.i.i, i32 %buff_level.0570.i.i
  %init_tag_value.i.i.i = getelementptr inbounds %struct.anon.182, ptr %368, i32 0, i32 1
  %372 = ptrtoint ptr %init_tag_value.i.i.i to i32
  call void @__asan_load2_noabort(i32 %372)
  %373 = load i16, ptr %init_tag_value.i.i.i, align 2
  %conv4.i.i.i = zext i16 %373 to i32
  %tag_reg_addr3.i.i.i = getelementptr inbounds %struct.netxen_minidump_entry_cache, ptr %entry3.0580.i.i, i32 0, i32 1
  %374 = ptrtoint ptr %tag_reg_addr3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %tag_reg_addr3.i.i.i, align 4
  %376 = getelementptr inbounds %struct.netxen_minidump_entry_cache, ptr %entry3.0580.i.i, i32 0, i32 6
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_load2_noabort(i32 %377)
  %378 = load i16, ptr %376, align 4
  %conv2.i.i.i = trunc i16 %378 to i8
  %control_addr.i.i.i = getelementptr inbounds %struct.netxen_minidump_entry_cache, ptr %entry3.0580.i.i, i32 0, i32 5
  %379 = ptrtoint ptr %control_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %control_addr.i.i.i, align 4
  %and.i334.i.i = and i32 %375, -65536
  %381 = tail call i32 @llvm.bswap.i32(i32 %and.i334.i.i) #10
  %conv19.i.i.i = and i32 %375, 65535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2.i.i.i)
  %tobool.not.i335.i.i = icmp eq i8 %conv2.i.i.i, 0
  %and38.i.i.i = and i32 %380, -65536
  %382 = tail call i32 @llvm.bswap.i32(i32 %and38.i.i.i) #10
  %conv2.mask.i.i.i = and i16 %378, 255
  %conv53.i.i.i = zext i16 %conv2.mask.i.i.i to i32
  %383 = shl nuw i32 %conv53.i.i.i, 24
  %conv58.i.i.i = and i32 %380, 65535
  %poll_mask.i.i.i = getelementptr inbounds %struct.anon.184, ptr %376, i32 0, i32 1
  %poll_wait.i.i.i = getelementptr inbounds %struct.anon.184, ptr %376, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %371)
  %cmp158260.not.i.i.i = icmp eq i8 %371, 0
  br label %do.body7.i.i.i

do.body7.i.i.i:                                   ; preds = %for.end192.i.i.i.do.body7.i.i.i_crit_edge, %do.body7.lr.ph.i.i.i
  %data_buff.addr.0267.i.i.i = phi ptr [ %add.ptr75.i.i, %do.body7.lr.ph.i.i.i ], [ %data_buff.addr.1.lcssa.i.i.i, %for.end192.i.i.i.do.body7.i.i.i_crit_edge ]
  %i.0266.i.i.i = phi i32 [ 0, %do.body7.lr.ph.i.i.i ], [ %inc196.i.i.i, %for.end192.i.i.i.do.body7.i.i.i_crit_edge ]
  %tag_value.0265.i.i.i = phi i32 [ %conv4.i.i.i, %do.body7.lr.ph.i.i.i ], [ %add194.i.i.i, %for.end192.i.i.i.do.body7.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  tail call void @arm_heavy_mb() #10
  %384 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %adapter, align 8
  %add.ptr.i336.i.i = getelementptr i8, ptr %385, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i336.i.i, i32 %381) #10, !srcloc !164
  %386 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %adapter, align 8
  %add.ptr10.i.i.i = getelementptr i8, ptr %387, i32 1245280
  %388 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %389 = tail call i32 @llvm.bswap.i32(i32 %tag_value.0265.i.i.i) #10
  %390 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %adapter, align 8
  %add.ptr17.i.i.i = getelementptr i8, ptr %391, i32 1966080
  %add.ptr20.i.i.i = getelementptr i8, ptr %add.ptr17.i.i.i, i32 %conv19.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i.i, i32 %389) #10, !srcloc !164
  %392 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %adapter, align 8
  %add.ptr25.i.i.i = getelementptr i8, ptr %393, i32 1966080
  %add.ptr28.i.i.i = getelementptr i8, ptr %add.ptr25.i.i.i, i32 %conv19.i.i.i
  %394 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !262
  br i1 %tobool.not.i335.i.i, label %do.body7.i.i.i.if.end.i339.i.i_crit_edge, label %do.body35.i.i.i

do.body7.i.i.i.if.end.i339.i.i_crit_edge:         ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i339.i.i

do.body35.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !263
  tail call void @arm_heavy_mb() #10
  %395 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %adapter, align 8
  %add.ptr41.i.i.i = getelementptr i8, ptr %396, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i.i.i, i32 %382) #10, !srcloc !164
  %397 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %adapter, align 8
  %add.ptr46.i337.i.i = getelementptr i8, ptr %398, i32 1245280
  %399 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i337.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !265
  tail call void @arm_heavy_mb() #10
  %400 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %adapter, align 8
  %add.ptr56.i.i.i = getelementptr i8, ptr %401, i32 1966080
  %add.ptr59.i338.i.i = getelementptr i8, ptr %add.ptr56.i.i.i, i32 %conv58.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i338.i.i, i32 %383) #10, !srcloc !164
  %402 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %adapter, align 8
  %add.ptr64.i.i.i = getelementptr i8, ptr %403, i32 1966080
  %add.ptr67.i.i.i = getelementptr i8, ptr %add.ptr64.i.i.i, i32 %conv58.i.i.i
  %404 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !266
  br label %if.end.i339.i.i

if.end.i339.i.i:                                  ; preds = %do.body35.i.i.i, %do.body7.i.i.i.if.end.i339.i.i_crit_edge
  %405 = ptrtoint ptr %poll_mask.i.i.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %poll_mask.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %406)
  %tobool73.not.i.i.i = icmp eq i8 %406, 0
  br i1 %tobool73.not.i.i.i, label %if.end.i339.i.i.if.end156.i.i.i_crit_edge, label %if.then74.i.i.i

if.end.i339.i.i.if.end156.i.i.i_crit_edge:        ; preds = %if.end.i339.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end156.i.i.i

if.then74.i.i.i:                                  ; preds = %if.end.i339.i.i
  %407 = ptrtoint ptr %poll_wait.i.i.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %poll_wait.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !267
  tail call void @arm_heavy_mb() #10
  %409 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %adapter, align 8
  %add.ptr83.i.i.i = getelementptr i8, ptr %410, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83.i.i.i, i32 %382) #10, !srcloc !164
  %411 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %adapter, align 8
  %add.ptr88.i.i.i = getelementptr i8, ptr %412, i32 1245280
  %413 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  %414 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %adapter, align 8
  %add.ptr96.i.i.i = getelementptr i8, ptr %415, i32 1966080
  %add.ptr99.i.i.i = getelementptr i8, ptr %add.ptr96.i.i.i, i32 %conv58.i.i.i
  %416 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99.i.i.i) #10, !srcloc !160
  %417 = lshr i32 %416, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !269
  %conv75.i.i.i = zext i8 %408 to i32
  %call2.i.i341.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv75.i.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %418 = load volatile i32, ptr @jiffies, align 128
  %add.i344.i.i = add i32 %418, %call2.i.i341.i.i
  br label %land.rhs.i346.i.i

land.rhs.i346.i.i:                                ; preds = %for.body115.i.i.i.land.rhs.i346.i.i_crit_edge, %if.then74.i.i.i
  %cntl_value_r.0.in259.i.i.i = phi i32 [ %417, %if.then74.i.i.i ], [ %430, %for.body115.i.i.i.land.rhs.i346.i.i_crit_edge ]
  %419 = ptrtoint ptr %poll_mask.i.i.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %poll_mask.i.i.i, align 2
  %conv111.i.i.i = zext i8 %420 to i32
  %and112.i.i.i = and i32 %cntl_value_r.0.in259.i.i.i, %conv111.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i.i.i)
  %cmp113.not.i.i.i = icmp eq i32 %and112.i.i.i, 0
  br i1 %cmp113.not.i.i.i, label %land.rhs.i346.i.i.if.end156.i.i.i_crit_edge, label %for.body115.i.i.i

land.rhs.i346.i.i.if.end156.i.i.i_crit_edge:      ; preds = %land.rhs.i346.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end156.i.i.i

for.body115.i.i.i:                                ; preds = %land.rhs.i346.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %421 = load volatile i32, ptr @jiffies, align 128
  %sub.i347.i.i = sub i32 %add.i344.i.i, %421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  tail call void @arm_heavy_mb() #10
  %422 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %adapter, align 8
  %add.ptr127.i348.i.i = getelementptr i8, ptr %423, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127.i348.i.i, i32 %382) #10, !srcloc !164
  %424 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %adapter, align 8
  %add.ptr132.i.i.i = getelementptr i8, ptr %425, i32 1245280
  %426 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !271
  %427 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %adapter, align 8
  %add.ptr140.i.i.i = getelementptr i8, ptr %428, i32 1966080
  %add.ptr143.i.i.i = getelementptr i8, ptr %add.ptr140.i.i.i, i32 %conv58.i.i.i
  %429 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr143.i.i.i) #10, !srcloc !160
  %430 = tail call i32 @llvm.bswap.i32(i32 %429) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !272
  %tobool108.not.i.i.i = icmp sgt i32 %sub.i347.i.i, -1
  br i1 %tobool108.not.i.i.i, label %for.body115.i.i.i.land.rhs.i346.i.i_crit_edge, label %netxen_md_L2Cache.exit.thread.i.i

for.body115.i.i.i.land.rhs.i346.i.i_crit_edge:    ; preds = %for.body115.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i346.i.i

netxen_md_L2Cache.exit.thread.i.i:                ; preds = %for.body115.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %431 = ptrtoint ptr %pdev.i506.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %pdev.i506.i.i, align 8
  %dev.i350.i.i = getelementptr inbounds %struct.pci_dev, ptr %432, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i350.i.i, ptr noundef nonnull @.str.57) #13
  br label %462

if.end156.i.i.i:                                  ; preds = %land.rhs.i346.i.i.if.end156.i.i.i_crit_edge, %if.end.i339.i.i.if.end156.i.i.i_crit_edge
  br i1 %cmp158260.not.i.i.i, label %if.end156.i.i.i.for.end192.i.i.i_crit_edge, label %if.end156.i.i.i.do.body162.i.i.i_crit_edge

if.end156.i.i.i.do.body162.i.i.i_crit_edge:       ; preds = %if.end156.i.i.i
  br label %do.body162.i.i.i

if.end156.i.i.i.for.end192.i.i.i_crit_edge:       ; preds = %if.end156.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end192.i.i.i

do.body162.i.i.i:                                 ; preds = %do.body162.i.i.i.do.body162.i.i.i_crit_edge, %if.end156.i.i.i.do.body162.i.i.i_crit_edge
  %data_buff.addr.1263.i.i.i = phi ptr [ %incdec.ptr.i351.i.i, %do.body162.i.i.i.do.body162.i.i.i_crit_edge ], [ %data_buff.addr.0267.i.i.i, %if.end156.i.i.i.do.body162.i.i.i_crit_edge ]
  %k.0262.i.i.i = phi i32 [ %inc.i352.i.i, %do.body162.i.i.i.do.body162.i.i.i_crit_edge ], [ 0, %if.end156.i.i.i.do.body162.i.i.i_crit_edge ]
  %addr.0261.i.i.i = phi i32 [ %add191.i.i.i, %do.body162.i.i.i.do.body162.i.i.i_crit_edge ], [ %367, %if.end156.i.i.i.do.body162.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !273
  tail call void @arm_heavy_mb() #10
  %and165.i.i.i = and i32 %addr.0261.i.i.i, -65536
  %433 = tail call i32 @llvm.bswap.i32(i32 %and165.i.i.i) #10
  %434 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %adapter, align 8
  %add.ptr168.i.i.i = getelementptr i8, ptr %435, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.i.i.i, i32 %433) #10, !srcloc !164
  %436 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %adapter, align 8
  %add.ptr173.i.i.i = getelementptr i8, ptr %437, i32 1245280
  %438 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr173.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !274
  %439 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %adapter, align 8
  %add.ptr181.i.i.i = getelementptr i8, ptr %440, i32 1966080
  %conv183.i.i.i = and i32 %addr.0261.i.i.i, 65535
  %add.ptr184.i.i.i = getelementptr i8, ptr %add.ptr181.i.i.i, i32 %conv183.i.i.i
  %441 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr184.i.i.i) #10, !srcloc !160
  %442 = tail call i32 @llvm.bswap.i32(i32 %441) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !275
  %incdec.ptr.i351.i.i = getelementptr i32, ptr %data_buff.addr.1263.i.i.i, i32 1
  %443 = ptrtoint ptr %data_buff.addr.1263.i.i.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 %442, ptr %data_buff.addr.1263.i.i.i, align 4
  %444 = ptrtoint ptr %369 to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %369, align 4
  %conv190.i.i.i = zext i8 %445 to i32
  %add191.i.i.i = add i32 %addr.0261.i.i.i, %conv190.i.i.i
  %inc.i352.i.i = add nuw nsw i32 %k.0262.i.i.i, 1
  %exitcond.not.i353.i.i = icmp eq i32 %inc.i352.i.i, %conv5.i.i.i
  br i1 %exitcond.not.i353.i.i, label %do.body162.i.i.i.for.end192.i.i.i_crit_edge, label %do.body162.i.i.i.do.body162.i.i.i_crit_edge

do.body162.i.i.i.do.body162.i.i.i_crit_edge:      ; preds = %do.body162.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body162.i.i.i

do.body162.i.i.i.for.end192.i.i.i_crit_edge:      ; preds = %do.body162.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end192.i.i.i

for.end192.i.i.i:                                 ; preds = %do.body162.i.i.i.for.end192.i.i.i_crit_edge, %if.end156.i.i.i.for.end192.i.i.i_crit_edge
  %data_buff.addr.1.lcssa.i.i.i = phi ptr [ %data_buff.addr.0267.i.i.i, %if.end156.i.i.i.for.end192.i.i.i_crit_edge ], [ %incdec.ptr.i351.i.i, %do.body162.i.i.i.for.end192.i.i.i_crit_edge ]
  %446 = ptrtoint ptr %368 to i32
  call void @__asan_load2_noabort(i32 %446)
  %447 = load i16, ptr %368, align 4
  %conv193.i.i.i = zext i16 %447 to i32
  %add194.i.i.i = add i32 %tag_value.0265.i.i.i, %conv193.i.i.i
  %inc196.i.i.i = add nuw nsw i32 %i.0266.i.i.i, 1
  %exitcond268.not.i.i.i = icmp eq i32 %inc196.i.i.i, %365
  br i1 %exitcond268.not.i.i.i, label %for.end192.i.i.i.netxen_md_L2Cache.exit.i.i_crit_edge, label %for.end192.i.i.i.do.body7.i.i.i_crit_edge

for.end192.i.i.i.do.body7.i.i.i_crit_edge:        ; preds = %for.end192.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7.i.i.i

for.end192.i.i.i.netxen_md_L2Cache.exit.i.i_crit_edge: ; preds = %for.end192.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_md_L2Cache.exit.i.i

netxen_md_L2Cache.exit.i.i:                       ; preds = %for.end192.i.i.i.netxen_md_L2Cache.exit.i.i_crit_edge, %sw.bb74.i.i.netxen_md_L2Cache.exit.i.i_crit_edge
  %mul.i354.i.i = shl i32 %365, 2
  %mul198.i.i.i = mul i32 %mul.i354.i.i, %conv5.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul198.i.i.i)
  %cmp.i356.i.i = icmp slt i32 %mul198.i.i.i, 0
  br i1 %cmp.i356.i.i, label %netxen_md_L2Cache.exit.i.i._crit_edge, label %if.end.i361.i.i

netxen_md_L2Cache.exit.i.i._crit_edge:            ; preds = %netxen_md_L2Cache.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %462

if.end.i361.i.i:                                  ; preds = %netxen_md_L2Cache.exit.i.i
  %entry_capture_size.i359.i.i = getelementptr inbounds %struct.netxen_common_entry_hdr, ptr %entry3.0580.i.i, i32 0, i32 2
  %448 = ptrtoint ptr %entry_capture_size.i359.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %entry_capture_size.i359.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %449, i32 %mul198.i.i.i)
  %cmp4.not.i360.i.i = icmp eq i32 %449, %mul198.i.i.i
  br i1 %cmp4.not.i360.i.i, label %if.end.i361.i.i.netxen_md_entry_err_chk.exit369.thread.i.i_crit_edge, label %if.then6.i367.i.i

if.end.i361.i.i.netxen_md_entry_err_chk.exit369.thread.i.i_crit_edge: ; preds = %if.end.i361.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_md_entry_err_chk.exit369.thread.i.i

if.then6.i367.i.i:                                ; preds = %if.end.i361.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %450 = ptrtoint ptr %entry_capture_size.i359.i.i to i32
  call void @__asan_store4_noabort(i32 %450)
  store i32 %mul198.i.i.i, ptr %entry_capture_size.i359.i.i, align 4
  %driver_flags10.i362.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %451 = ptrtoint ptr %driver_flags10.i362.i.i to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %driver_flags10.i362.i.i, align 1
  %453 = or i8 %452, 64
  store i8 %453, ptr %driver_flags10.i362.i.i, align 1
  %454 = ptrtoint ptr %pdev.i506.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %pdev.i506.i.i, align 8
  %dev.i364.i.i = getelementptr inbounds %struct.pci_dev, ptr %455, i32 0, i32 44
  %456 = ptrtoint ptr %entry3.0580.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %entry3.0580.i.i, align 4
  %458 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %55, align 4
  %conv16.i365.i.i = zext i8 %459 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i364.i.i, ptr noundef nonnull @.str.52, i32 noundef %457, i32 noundef %conv16.i365.i.i, i32 noundef %mul198.i.i.i, i32 noundef %mul198.i.i.i) #13
  %460 = ptrtoint ptr %pdev.i506.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %pdev.i506.i.i, align 8
  %dev22.i366.i.i = getelementptr inbounds %struct.pci_dev, ptr %461, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22.i366.i.i, ptr noundef nonnull @.str.55) #13
  br label %netxen_md_entry_err_chk.exit369.thread.i.i

netxen_md_entry_err_chk.exit369.thread.i.i:       ; preds = %if.then6.i367.i.i, %if.end.i361.i.i.netxen_md_entry_err_chk.exit369.thread.i.i_crit_edge
  %add82545.i.i = add i32 %mul198.i.i.i, %buff_level.0570.i.i
  br label %for.inc.i.i

462:                                              ; preds = %netxen_md_L2Cache.exit.i.i._crit_edge, %netxen_md_L2Cache.exit.thread.i.i
  %driver_flags.i357.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %463 = ptrtoint ptr %driver_flags.i357.i.i to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %driver_flags.i357.i.i, align 1
  %465 = or i8 %464, -128
  store i8 %465, ptr %driver_flags.i357.i.i, align 1
  br label %for.inc.i.i

sw.bb83.i.i:                                      ; preds = %if.end24.i.i.sw.bb83.i.i_crit_edge, %if.end24.i.i.sw.bb83.i.i_crit_edge106
  %op_count.i370.i.i = getelementptr inbounds %struct.netxen_minidump_entry_cache, ptr %entry3.0580.i.i, i32 0, i32 4
  %466 = ptrtoint ptr %op_count.i370.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %op_count.i370.i.i, align 4
  %read_addr1.i371.i.i = getelementptr inbounds %struct.netxen_minidump_entry_cache, ptr %entry3.0580.i.i, i32 0, i32 7
  %468 = ptrtoint ptr %read_addr1.i371.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %read_addr1.i371.i.i, align 4
  %470 = getelementptr inbounds %struct.netxen_minidump_entry_cache, ptr %entry3.0580.i.i, i32 0, i32 2
  %471 = getelementptr inbounds %struct.netxen_minidump_entry_cache, ptr %entry3.0580.i.i, i32 0, i32 8
  %read_addr_cnt.i372.i.i = getelementptr inbounds %struct.anon.186, ptr %471, i32 0, i32 1
  %472 = ptrtoint ptr %read_addr_cnt.i372.i.i to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %read_addr_cnt.i372.i.i, align 1
  %conv5.i373.i.i = zext i8 %473 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %467)
  %cmp146.i.i.i = icmp sgt i32 %467, 0
  br i1 %cmp146.i.i.i, label %do.body7.lr.ph.i383.i.i, label %sw.bb83.i.i.netxen_md_L1Cache.exit.i.i_crit_edge

sw.bb83.i.i.netxen_md_L1Cache.exit.i.i_crit_edge: ; preds = %sw.bb83.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_md_L1Cache.exit.i.i

do.body7.lr.ph.i383.i.i:                          ; preds = %sw.bb83.i.i
  %add.ptr84.i.i = getelementptr i8, ptr %add.ptr9.i.i, i32 %buff_level.0570.i.i
  %init_tag_value.i374.i.i = getelementptr inbounds %struct.anon.182, ptr %470, i32 0, i32 1
  %474 = ptrtoint ptr %init_tag_value.i374.i.i to i32
  call void @__asan_load2_noabort(i32 %474)
  %475 = load i16, ptr %init_tag_value.i374.i.i, align 2
  %conv4.i375.i.i = zext i16 %475 to i32
  %tag_reg_addr3.i376.i.i = getelementptr inbounds %struct.netxen_minidump_entry_cache, ptr %entry3.0580.i.i, i32 0, i32 1
  %476 = ptrtoint ptr %tag_reg_addr3.i376.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %tag_reg_addr3.i376.i.i, align 4
  %478 = getelementptr inbounds %struct.netxen_minidump_entry_cache, ptr %entry3.0580.i.i, i32 0, i32 6
  %479 = ptrtoint ptr %478 to i32
  call void @__asan_load2_noabort(i32 %479)
  %480 = load i16, ptr %478, align 4
  %control_addr.i377.i.i = getelementptr inbounds %struct.netxen_minidump_entry_cache, ptr %entry3.0580.i.i, i32 0, i32 5
  %481 = ptrtoint ptr %control_addr.i377.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %control_addr.i377.i.i, align 4
  %and.i378.i.i = and i32 %477, -65536
  %483 = tail call i32 @llvm.bswap.i32(i32 %and.i378.i.i) #10
  %conv19.i379.i.i = and i32 %477, 65535
  %and38.i380.i.i = and i32 %482, -65536
  %484 = tail call i32 @llvm.bswap.i32(i32 %and38.i380.i.i) #10
  %485 = and i16 %480, 255
  %conv53.i381.i.i = zext i16 %485 to i32
  %486 = shl nuw i32 %conv53.i381.i.i, 24
  %conv58.i382.i.i = and i32 %482, 65535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %473)
  %cmp74142.not.i.i.i = icmp eq i8 %473, 0
  br label %do.body7.i396.i.i

do.body7.i396.i.i:                                ; preds = %for.end.i.i.i.do.body7.i396.i.i_crit_edge, %do.body7.lr.ph.i383.i.i
  %data_buff.addr.0149.i.i.i = phi ptr [ %add.ptr84.i.i, %do.body7.lr.ph.i383.i.i ], [ %data_buff.addr.1.lcssa.i404.i.i, %for.end.i.i.i.do.body7.i396.i.i_crit_edge ]
  %i.0148.i.i.i = phi i32 [ 0, %do.body7.lr.ph.i383.i.i ], [ %inc110.i.i.i, %for.end.i.i.i.do.body7.i396.i.i_crit_edge ]
  %tag_value.0147.i.i.i = phi i32 [ %conv4.i375.i.i, %do.body7.lr.ph.i383.i.i ], [ %add108.i.i.i, %for.end.i.i.i.do.body7.i396.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !276
  tail call void @arm_heavy_mb() #10
  %487 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %adapter, align 8
  %add.ptr.i384.i.i = getelementptr i8, ptr %488, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i384.i.i, i32 %483) #10, !srcloc !164
  %489 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %adapter, align 8
  %add.ptr10.i385.i.i = getelementptr i8, ptr %490, i32 1245280
  %491 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i385.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  tail call void @arm_heavy_mb() #10
  %492 = tail call i32 @llvm.bswap.i32(i32 %tag_value.0147.i.i.i) #10
  %493 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %adapter, align 8
  %add.ptr17.i386.i.i = getelementptr i8, ptr %494, i32 1966080
  %add.ptr20.i387.i.i = getelementptr i8, ptr %add.ptr17.i386.i.i, i32 %conv19.i379.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i387.i.i, i32 %492) #10, !srcloc !164
  %495 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %adapter, align 8
  %add.ptr25.i388.i.i = getelementptr i8, ptr %496, i32 1966080
  %add.ptr28.i389.i.i = getelementptr i8, ptr %add.ptr25.i388.i.i, i32 %conv19.i379.i.i
  %497 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i389.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @arm_heavy_mb() #10
  %498 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %adapter, align 8
  %add.ptr41.i390.i.i = getelementptr i8, ptr %499, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i390.i.i, i32 %484) #10, !srcloc !164
  %500 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %adapter, align 8
  %add.ptr46.i391.i.i = getelementptr i8, ptr %501, i32 1245280
  %502 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i391.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !282
  tail call void @arm_heavy_mb() #10
  %503 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %adapter, align 8
  %add.ptr56.i392.i.i = getelementptr i8, ptr %504, i32 1966080
  %add.ptr59.i393.i.i = getelementptr i8, ptr %add.ptr56.i392.i.i, i32 %conv58.i382.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i393.i.i, i32 %486) #10, !srcloc !164
  %505 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %adapter, align 8
  %add.ptr64.i394.i.i = getelementptr i8, ptr %506, i32 1966080
  %add.ptr67.i395.i.i = getelementptr i8, ptr %add.ptr64.i394.i.i, i32 %conv58.i382.i.i
  %507 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67.i395.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  br i1 %cmp74142.not.i.i.i, label %do.body7.i396.i.i.for.end.i.i.i_crit_edge, label %do.body7.i396.i.i.do.body78.i.i.i_crit_edge

do.body7.i396.i.i.do.body78.i.i.i_crit_edge:      ; preds = %do.body7.i396.i.i
  br label %do.body78.i.i.i

do.body7.i396.i.i.for.end.i.i.i_crit_edge:        ; preds = %do.body7.i396.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

do.body78.i.i.i:                                  ; preds = %do.body78.i.i.i.do.body78.i.i.i_crit_edge, %do.body7.i396.i.i.do.body78.i.i.i_crit_edge
  %data_buff.addr.1145.i.i.i = phi ptr [ %incdec.ptr.i400.i.i, %do.body78.i.i.i.do.body78.i.i.i_crit_edge ], [ %data_buff.addr.0149.i.i.i, %do.body7.i396.i.i.do.body78.i.i.i_crit_edge ]
  %k.0144.i.i.i = phi i32 [ %inc.i402.i.i, %do.body78.i.i.i.do.body78.i.i.i_crit_edge ], [ 0, %do.body7.i396.i.i.do.body78.i.i.i_crit_edge ]
  %addr.0143.i.i.i = phi i32 [ %add.i401.i.i, %do.body78.i.i.i.do.body78.i.i.i_crit_edge ], [ %469, %do.body7.i396.i.i.do.body78.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !284
  tail call void @arm_heavy_mb() #10
  %and81.i.i.i = and i32 %addr.0143.i.i.i, -65536
  %508 = tail call i32 @llvm.bswap.i32(i32 %and81.i.i.i) #10
  %509 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %adapter, align 8
  %add.ptr84.i.i.i = getelementptr i8, ptr %510, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i.i, i32 %508) #10, !srcloc !164
  %511 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %adapter, align 8
  %add.ptr89.i397.i.i = getelementptr i8, ptr %512, i32 1245280
  %513 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89.i397.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %514 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %adapter, align 8
  %add.ptr97.i398.i.i = getelementptr i8, ptr %515, i32 1966080
  %conv99.i.i.i = and i32 %addr.0143.i.i.i, 65535
  %add.ptr100.i399.i.i = getelementptr i8, ptr %add.ptr97.i398.i.i, i32 %conv99.i.i.i
  %516 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100.i399.i.i) #10, !srcloc !160
  %517 = tail call i32 @llvm.bswap.i32(i32 %516) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  %incdec.ptr.i400.i.i = getelementptr i32, ptr %data_buff.addr.1145.i.i.i, i32 1
  %518 = ptrtoint ptr %data_buff.addr.1145.i.i.i to i32
  call void @__asan_store4_noabort(i32 %518)
  store i32 %517, ptr %data_buff.addr.1145.i.i.i, align 4
  %519 = ptrtoint ptr %471 to i32
  call void @__asan_load1_noabort(i32 %519)
  %520 = load i8, ptr %471, align 4
  %conv106.i.i.i = zext i8 %520 to i32
  %add.i401.i.i = add i32 %addr.0143.i.i.i, %conv106.i.i.i
  %inc.i402.i.i = add nuw nsw i32 %k.0144.i.i.i, 1
  %exitcond.not.i403.i.i = icmp eq i32 %inc.i402.i.i, %conv5.i373.i.i
  br i1 %exitcond.not.i403.i.i, label %do.body78.i.i.i.for.end.i.i.i_crit_edge, label %do.body78.i.i.i.do.body78.i.i.i_crit_edge

do.body78.i.i.i.do.body78.i.i.i_crit_edge:        ; preds = %do.body78.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body78.i.i.i

do.body78.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %do.body78.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %do.body78.i.i.i.for.end.i.i.i_crit_edge, %do.body7.i396.i.i.for.end.i.i.i_crit_edge
  %data_buff.addr.1.lcssa.i404.i.i = phi ptr [ %data_buff.addr.0149.i.i.i, %do.body7.i396.i.i.for.end.i.i.i_crit_edge ], [ %incdec.ptr.i400.i.i, %do.body78.i.i.i.for.end.i.i.i_crit_edge ]
  %521 = ptrtoint ptr %470 to i32
  call void @__asan_load2_noabort(i32 %521)
  %522 = load i16, ptr %470, align 4
  %conv107.i.i.i = zext i16 %522 to i32
  %add108.i.i.i = add i32 %tag_value.0147.i.i.i, %conv107.i.i.i
  %inc110.i.i.i = add nuw nsw i32 %i.0148.i.i.i, 1
  %exitcond150.not.i.i.i = icmp eq i32 %inc110.i.i.i, %467
  br i1 %exitcond150.not.i.i.i, label %for.end.i.i.i.netxen_md_L1Cache.exit.i.i_crit_edge, label %for.end.i.i.i.do.body7.i396.i.i_crit_edge

for.end.i.i.i.do.body7.i396.i.i_crit_edge:        ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7.i396.i.i

for.end.i.i.i.netxen_md_L1Cache.exit.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_md_L1Cache.exit.i.i

netxen_md_L1Cache.exit.i.i:                       ; preds = %for.end.i.i.i.netxen_md_L1Cache.exit.i.i_crit_edge, %sw.bb83.i.i.netxen_md_L1Cache.exit.i.i_crit_edge
  %mul.i405.i.i = shl i32 %467, 2
  %mul112.i.i.i = mul i32 %mul.i405.i.i, %conv5.i373.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul112.i.i.i)
  %cmp.i406.i.i = icmp slt i32 %mul112.i.i.i, 0
  br i1 %cmp.i406.i.i, label %537, label %if.end.i411.i.i

if.end.i411.i.i:                                  ; preds = %netxen_md_L1Cache.exit.i.i
  %entry_capture_size.i409.i.i = getelementptr inbounds %struct.netxen_common_entry_hdr, ptr %entry3.0580.i.i, i32 0, i32 2
  %523 = ptrtoint ptr %entry_capture_size.i409.i.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %entry_capture_size.i409.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %524, i32 %mul112.i.i.i)
  %cmp4.not.i410.i.i = icmp eq i32 %524, %mul112.i.i.i
  br i1 %cmp4.not.i410.i.i, label %if.end.i411.i.i.netxen_md_entry_err_chk.exit419.thread.i.i_crit_edge, label %if.then6.i417.i.i

if.end.i411.i.i.netxen_md_entry_err_chk.exit419.thread.i.i_crit_edge: ; preds = %if.end.i411.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_md_entry_err_chk.exit419.thread.i.i

if.then6.i417.i.i:                                ; preds = %if.end.i411.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %525 = ptrtoint ptr %entry_capture_size.i409.i.i to i32
  call void @__asan_store4_noabort(i32 %525)
  store i32 %mul112.i.i.i, ptr %entry_capture_size.i409.i.i, align 4
  %driver_flags10.i412.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %526 = ptrtoint ptr %driver_flags10.i412.i.i to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %driver_flags10.i412.i.i, align 1
  %528 = or i8 %527, 64
  store i8 %528, ptr %driver_flags10.i412.i.i, align 1
  %529 = ptrtoint ptr %pdev.i506.i.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %pdev.i506.i.i, align 8
  %dev.i414.i.i = getelementptr inbounds %struct.pci_dev, ptr %530, i32 0, i32 44
  %531 = ptrtoint ptr %entry3.0580.i.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %entry3.0580.i.i, align 4
  %533 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %533)
  %534 = load i8, ptr %55, align 4
  %conv16.i415.i.i = zext i8 %534 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i414.i.i, ptr noundef nonnull @.str.52, i32 noundef %532, i32 noundef %conv16.i415.i.i, i32 noundef %mul112.i.i.i, i32 noundef %mul112.i.i.i) #13
  %535 = ptrtoint ptr %pdev.i506.i.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %pdev.i506.i.i, align 8
  %dev22.i416.i.i = getelementptr inbounds %struct.pci_dev, ptr %536, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22.i416.i.i, ptr noundef nonnull @.str.55) #13
  br label %netxen_md_entry_err_chk.exit419.thread.i.i

netxen_md_entry_err_chk.exit419.thread.i.i:       ; preds = %if.then6.i417.i.i, %if.end.i411.i.i.netxen_md_entry_err_chk.exit419.thread.i.i_crit_edge
  %add91548.i.i = add i32 %mul112.i.i.i, %buff_level.0570.i.i
  br label %for.inc.i.i

537:                                              ; preds = %netxen_md_L1Cache.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_flags.i407.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %538 = ptrtoint ptr %driver_flags.i407.i.i to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %driver_flags.i407.i.i, align 1
  %540 = or i8 %539, -128
  store i8 %540, ptr %driver_flags.i407.i.i, align 1
  br label %for.inc.i.i

sw.bb92.i.i:                                      ; preds = %if.end24.i.i
  %op_count.i420.i.i = getelementptr inbounds %struct.netxen_minidump_entry_rdocm, ptr %entry3.0580.i.i, i32 0, i32 4
  %541 = ptrtoint ptr %op_count.i420.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %op_count.i420.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %542)
  %cmp8.i.i.i = icmp sgt i32 %542, 0
  br i1 %cmp8.i.i.i, label %for.body.lr.ph.i.i.i, label %sw.bb92.i.i.if.end.i436.i.i_crit_edge

sw.bb92.i.i.if.end.i436.i.i_crit_edge:            ; preds = %sw.bb92.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i436.i.i

for.body.lr.ph.i.i.i:                             ; preds = %sw.bb92.i.i
  %add.ptr93.i.i = getelementptr i8, ptr %add.ptr9.i.i, i32 %buff_level.0570.i.i
  %543 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %adapter, align 8
  %read_addr.i421.i.i = getelementptr inbounds %struct.netxen_minidump_entry_rdocm, ptr %entry3.0580.i.i, i32 0, i32 7
  %545 = ptrtoint ptr %read_addr.i421.i.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %read_addr.i421.i.i, align 4
  %add.ptr.i422.i.i = getelementptr i8, ptr %544, i32 %546
  %547 = getelementptr inbounds %struct.netxen_minidump_entry_rdocm, ptr %entry3.0580.i.i, i32 0, i32 8
  br label %for.body.i426.i.i

for.body.i426.i.i:                                ; preds = %for.body.i426.i.i.for.body.i426.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %data_buff.addr.011.i.i.i = phi ptr [ %add.ptr93.i.i, %for.body.lr.ph.i.i.i ], [ %incdec.ptr.i423.i.i, %for.body.i426.i.i.for.body.i426.i.i_crit_edge ]
  %i.010.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i424.i.i, %for.body.i426.i.i.for.body.i426.i.i_crit_edge ]
  %addr.09.i.i.i = phi ptr [ %add.ptr.i422.i.i, %for.body.lr.ph.i.i.i ], [ %add.ptr2.i.i.i, %for.body.i426.i.i.for.body.i426.i.i_crit_edge ]
  %548 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr.09.i.i.i) #10, !srcloc !160
  %549 = tail call i32 @llvm.bswap.i32(i32 %548) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  %incdec.ptr.i423.i.i = getelementptr i32, ptr %data_buff.addr.011.i.i.i, i32 1
  %550 = ptrtoint ptr %data_buff.addr.011.i.i.i to i32
  call void @__asan_store4_noabort(i32 %550)
  store i32 %549, ptr %data_buff.addr.011.i.i.i, align 4
  %551 = ptrtoint ptr %547 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %547, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %addr.09.i.i.i, i32 %552
  %inc.i424.i.i = add nuw nsw i32 %i.010.i.i.i, 1
  %exitcond.not.i425.i.i = icmp eq i32 %inc.i424.i.i, %542
  br i1 %exitcond.not.i425.i.i, label %netxen_md_rdocm.exit.i.i, label %for.body.i426.i.i.for.body.i426.i.i_crit_edge

for.body.i426.i.i.for.body.i426.i.i_crit_edge:    ; preds = %for.body.i426.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i426.i.i

netxen_md_rdocm.exit.i.i:                         ; preds = %for.body.i426.i.i
  %phi.bo.i427.i.i = shl i32 %542, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo.i427.i.i)
  %cmp.i431.i.i = icmp slt i32 %phi.bo.i427.i.i, 0
  br i1 %cmp.i431.i.i, label %567, label %netxen_md_rdocm.exit.i.i.if.end.i436.i.i_crit_edge

netxen_md_rdocm.exit.i.i.if.end.i436.i.i_crit_edge: ; preds = %netxen_md_rdocm.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i436.i.i

if.end.i436.i.i:                                  ; preds = %netxen_md_rdocm.exit.i.i.if.end.i436.i.i_crit_edge, %sw.bb92.i.i.if.end.i436.i.i_crit_edge
  %i.0.lcssa.i429552.i.i = phi i32 [ %phi.bo.i427.i.i, %netxen_md_rdocm.exit.i.i.if.end.i436.i.i_crit_edge ], [ 0, %sw.bb92.i.i.if.end.i436.i.i_crit_edge ]
  %entry_capture_size.i434.i.i = getelementptr inbounds %struct.netxen_common_entry_hdr, ptr %entry3.0580.i.i, i32 0, i32 2
  %553 = ptrtoint ptr %entry_capture_size.i434.i.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %entry_capture_size.i434.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %554, i32 %i.0.lcssa.i429552.i.i)
  %cmp4.not.i435.i.i = icmp eq i32 %554, %i.0.lcssa.i429552.i.i
  br i1 %cmp4.not.i435.i.i, label %if.end.i436.i.i.netxen_md_entry_err_chk.exit444.thread.i.i_crit_edge, label %if.then6.i442.i.i

if.end.i436.i.i.netxen_md_entry_err_chk.exit444.thread.i.i_crit_edge: ; preds = %if.end.i436.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_md_entry_err_chk.exit444.thread.i.i

if.then6.i442.i.i:                                ; preds = %if.end.i436.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %555 = ptrtoint ptr %entry_capture_size.i434.i.i to i32
  call void @__asan_store4_noabort(i32 %555)
  store i32 %i.0.lcssa.i429552.i.i, ptr %entry_capture_size.i434.i.i, align 4
  %driver_flags10.i437.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %556 = ptrtoint ptr %driver_flags10.i437.i.i to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %driver_flags10.i437.i.i, align 1
  %558 = or i8 %557, 64
  store i8 %558, ptr %driver_flags10.i437.i.i, align 1
  %559 = ptrtoint ptr %pdev.i506.i.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %pdev.i506.i.i, align 8
  %dev.i439.i.i = getelementptr inbounds %struct.pci_dev, ptr %560, i32 0, i32 44
  %561 = ptrtoint ptr %entry3.0580.i.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %entry3.0580.i.i, align 4
  %563 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %563)
  %564 = load i8, ptr %55, align 4
  %conv16.i440.i.i = zext i8 %564 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i439.i.i, ptr noundef nonnull @.str.52, i32 noundef %562, i32 noundef %conv16.i440.i.i, i32 noundef %i.0.lcssa.i429552.i.i, i32 noundef %i.0.lcssa.i429552.i.i) #13
  %565 = ptrtoint ptr %pdev.i506.i.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %pdev.i506.i.i, align 8
  %dev22.i441.i.i = getelementptr inbounds %struct.pci_dev, ptr %566, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22.i441.i.i, ptr noundef nonnull @.str.55) #13
  br label %netxen_md_entry_err_chk.exit444.thread.i.i

netxen_md_entry_err_chk.exit444.thread.i.i:       ; preds = %if.then6.i442.i.i, %if.end.i436.i.i.netxen_md_entry_err_chk.exit444.thread.i.i_crit_edge
  %add100556.i.i = add i32 %i.0.lcssa.i429552.i.i, %buff_level.0570.i.i
  br label %for.inc.i.i

567:                                              ; preds = %netxen_md_rdocm.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_flags.i432.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %568 = ptrtoint ptr %driver_flags.i432.i.i to i32
  call void @__asan_load1_noabort(i32 %568)
  %569 = load i8, ptr %driver_flags.i432.i.i, align 1
  %570 = or i8 %569, -128
  store i8 %570, ptr %driver_flags.i432.i.i, align 1
  br label %for.inc.i.i

sw.bb101.i.i:                                     ; preds = %if.end24.i.i
  %op_count.i445.i.i = getelementptr inbounds %struct.netxen_minidump_entry_mux, ptr %entry3.0580.i.i, i32 0, i32 4
  %571 = ptrtoint ptr %op_count.i445.i.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %op_count.i445.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %572)
  %cmp77.not.i.i.i = icmp eq i32 %572, 0
  br i1 %cmp77.not.i.i.i, label %sw.bb101.i.i.if.end.i466.i.i_crit_edge, label %do.body3.lr.ph.i.i.i

sw.bb101.i.i.if.end.i466.i.i_crit_edge:           ; preds = %sw.bb101.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i466.i.i

do.body3.lr.ph.i.i.i:                             ; preds = %sw.bb101.i.i
  %add.ptr102.i.i = getelementptr i8, ptr %add.ptr9.i.i, i32 %buff_level.0570.i.i
  %select_addr2.i.i.i = getelementptr inbounds %struct.netxen_minidump_entry_mux, ptr %entry3.0580.i.i, i32 0, i32 1
  %573 = ptrtoint ptr %select_addr2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %select_addr2.i.i.i, align 4
  %select_value.i.i.i = getelementptr inbounds %struct.netxen_minidump_entry_mux, ptr %entry3.0580.i.i, i32 0, i32 5
  %575 = ptrtoint ptr %select_value.i.i.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %select_value.i.i.i, align 4
  %read_addr1.i446.i.i = getelementptr inbounds %struct.netxen_minidump_entry_mux, ptr %entry3.0580.i.i, i32 0, i32 7
  %577 = ptrtoint ptr %read_addr1.i446.i.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %read_addr1.i446.i.i, align 4
  %and.i447.i.i = and i32 %574, -65536
  %579 = tail call i32 @llvm.bswap.i32(i32 %and.i447.i.i) #10
  %conv14.i.i.i = and i32 %574, 65535
  %and33.i.i.i = and i32 %578, -65536
  %580 = tail call i32 @llvm.bswap.i32(i32 %and33.i.i.i) #10
  %conv51.i.i.i = and i32 %578, 65535
  %select_value_stride.i.i.i = getelementptr inbounds %struct.netxen_minidump_entry_mux, ptr %entry3.0580.i.i, i32 0, i32 6
  br label %do.body3.i.i.i

do.body3.i.i.i:                                   ; preds = %do.body3.i.i.i.do.body3.i.i.i_crit_edge, %do.body3.lr.ph.i.i.i
  %data_buff.addr.080.i.i.i = phi ptr [ %add.ptr102.i.i, %do.body3.lr.ph.i.i.i ], [ %incdec.ptr58.i.i.i, %do.body3.i.i.i.do.body3.i.i.i_crit_edge ]
  %loop_cnt.079.i.i.i = phi i32 [ 0, %do.body3.lr.ph.i.i.i ], [ %inc.i455.i.i, %do.body3.i.i.i.do.body3.i.i.i_crit_edge ]
  %sel_value.078.i.i.i = phi i32 [ %576, %do.body3.lr.ph.i.i.i ], [ %add.i454.i.i, %do.body3.i.i.i.do.body3.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !288
  tail call void @arm_heavy_mb() #10
  %581 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %adapter, align 8
  %add.ptr.i448.i.i = getelementptr i8, ptr %582, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i448.i.i, i32 %579) #10, !srcloc !164
  %583 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %adapter, align 8
  %add.ptr6.i.i.i = getelementptr i8, ptr %584, i32 1245280
  %585 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !290
  tail call void @arm_heavy_mb() #10
  %586 = tail call i32 @llvm.bswap.i32(i32 %sel_value.078.i.i.i) #10
  %587 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %adapter, align 8
  %add.ptr13.i449.i.i = getelementptr i8, ptr %588, i32 1966080
  %add.ptr15.i.i.i = getelementptr i8, ptr %add.ptr13.i449.i.i, i32 %conv14.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i.i, i32 %586) #10, !srcloc !164
  %589 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %adapter, align 8
  %add.ptr20.i450.i.i = getelementptr i8, ptr %590, i32 1966080
  %add.ptr23.i.i.i = getelementptr i8, ptr %add.ptr20.i450.i.i, i32 %conv14.i.i.i
  %591 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @arm_heavy_mb() #10
  %592 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %adapter, align 8
  %add.ptr36.i.i.i = getelementptr i8, ptr %593, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i.i, i32 %580) #10, !srcloc !164
  %594 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %adapter, align 8
  %add.ptr41.i451.i.i = getelementptr i8, ptr %595, i32 1245280
  %596 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i451.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  %597 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %adapter, align 8
  %add.ptr49.i452.i.i = getelementptr i8, ptr %598, i32 1966080
  %add.ptr52.i.i.i = getelementptr i8, ptr %add.ptr49.i452.i.i, i32 %conv51.i.i.i
  %599 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52.i.i.i) #10, !srcloc !160
  %600 = tail call i32 @llvm.bswap.i32(i32 %599) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  %incdec.ptr.i453.i.i = getelementptr i32, ptr %data_buff.addr.080.i.i.i, i32 1
  %601 = ptrtoint ptr %data_buff.addr.080.i.i.i to i32
  call void @__asan_store4_noabort(i32 %601)
  store i32 %sel_value.078.i.i.i, ptr %data_buff.addr.080.i.i.i, align 4
  %incdec.ptr58.i.i.i = getelementptr i32, ptr %data_buff.addr.080.i.i.i, i32 2
  %602 = ptrtoint ptr %incdec.ptr.i453.i.i to i32
  call void @__asan_store4_noabort(i32 %602)
  store i32 %600, ptr %incdec.ptr.i453.i.i, align 4
  %603 = ptrtoint ptr %select_value_stride.i.i.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %select_value_stride.i.i.i, align 4
  %add.i454.i.i = add i32 %604, %sel_value.078.i.i.i
  %inc.i455.i.i = add nuw i32 %loop_cnt.079.i.i.i, 1
  %605 = ptrtoint ptr %op_count.i445.i.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %op_count.i445.i.i, align 4
  %cmp.i456.i.i = icmp ult i32 %inc.i455.i.i, %606
  br i1 %cmp.i456.i.i, label %do.body3.i.i.i.do.body3.i.i.i_crit_edge, label %netxen_md_rdmux.exit.i.i

do.body3.i.i.i.do.body3.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i

netxen_md_rdmux.exit.i.i:                         ; preds = %do.body3.i.i.i
  %phi.bo.i457.i.i = shl i32 %inc.i455.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo.i457.i.i)
  %cmp.i461.i.i = icmp slt i32 %phi.bo.i457.i.i, 0
  br i1 %cmp.i461.i.i, label %621, label %netxen_md_rdmux.exit.i.i.if.end.i466.i.i_crit_edge

netxen_md_rdmux.exit.i.i.if.end.i466.i.i_crit_edge: ; preds = %netxen_md_rdmux.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i466.i.i

if.end.i466.i.i:                                  ; preds = %netxen_md_rdmux.exit.i.i.if.end.i466.i.i_crit_edge, %sw.bb101.i.i.if.end.i466.i.i_crit_edge
  %loop_cnt.0.lcssa.i459560.i.i = phi i32 [ %phi.bo.i457.i.i, %netxen_md_rdmux.exit.i.i.if.end.i466.i.i_crit_edge ], [ 0, %sw.bb101.i.i.if.end.i466.i.i_crit_edge ]
  %entry_capture_size.i464.i.i = getelementptr inbounds %struct.netxen_common_entry_hdr, ptr %entry3.0580.i.i, i32 0, i32 2
  %607 = ptrtoint ptr %entry_capture_size.i464.i.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load i32, ptr %entry_capture_size.i464.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %608, i32 %loop_cnt.0.lcssa.i459560.i.i)
  %cmp4.not.i465.i.i = icmp eq i32 %608, %loop_cnt.0.lcssa.i459560.i.i
  br i1 %cmp4.not.i465.i.i, label %if.end.i466.i.i.netxen_md_entry_err_chk.exit474.thread.i.i_crit_edge, label %if.then6.i472.i.i

if.end.i466.i.i.netxen_md_entry_err_chk.exit474.thread.i.i_crit_edge: ; preds = %if.end.i466.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_md_entry_err_chk.exit474.thread.i.i

if.then6.i472.i.i:                                ; preds = %if.end.i466.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %609 = ptrtoint ptr %entry_capture_size.i464.i.i to i32
  call void @__asan_store4_noabort(i32 %609)
  store i32 %loop_cnt.0.lcssa.i459560.i.i, ptr %entry_capture_size.i464.i.i, align 4
  %driver_flags10.i467.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %610 = ptrtoint ptr %driver_flags10.i467.i.i to i32
  call void @__asan_load1_noabort(i32 %610)
  %611 = load i8, ptr %driver_flags10.i467.i.i, align 1
  %612 = or i8 %611, 64
  store i8 %612, ptr %driver_flags10.i467.i.i, align 1
  %613 = ptrtoint ptr %pdev.i506.i.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %pdev.i506.i.i, align 8
  %dev.i469.i.i = getelementptr inbounds %struct.pci_dev, ptr %614, i32 0, i32 44
  %615 = ptrtoint ptr %entry3.0580.i.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %entry3.0580.i.i, align 4
  %617 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %617)
  %618 = load i8, ptr %55, align 4
  %conv16.i470.i.i = zext i8 %618 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i469.i.i, ptr noundef nonnull @.str.52, i32 noundef %616, i32 noundef %conv16.i470.i.i, i32 noundef %loop_cnt.0.lcssa.i459560.i.i, i32 noundef %loop_cnt.0.lcssa.i459560.i.i) #13
  %619 = ptrtoint ptr %pdev.i506.i.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %pdev.i506.i.i, align 8
  %dev22.i471.i.i = getelementptr inbounds %struct.pci_dev, ptr %620, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22.i471.i.i, ptr noundef nonnull @.str.55) #13
  br label %netxen_md_entry_err_chk.exit474.thread.i.i

netxen_md_entry_err_chk.exit474.thread.i.i:       ; preds = %if.then6.i472.i.i, %if.end.i466.i.i.netxen_md_entry_err_chk.exit474.thread.i.i_crit_edge
  %add109564.i.i = add i32 %loop_cnt.0.lcssa.i459560.i.i, %buff_level.0570.i.i
  br label %for.inc.i.i

621:                                              ; preds = %netxen_md_rdmux.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_flags.i462.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %622 = ptrtoint ptr %driver_flags.i462.i.i to i32
  call void @__asan_load1_noabort(i32 %622)
  %623 = load i8, ptr %driver_flags.i462.i.i, align 1
  %624 = or i8 %623, -128
  store i8 %624, ptr %driver_flags.i462.i.i, align 1
  br label %for.inc.i.i

sw.bb110.i.i:                                     ; preds = %if.end24.i.i
  %625 = getelementptr inbounds %struct.netxen_minidump_entry_queue, ptr %entry3.0580.i.i, i32 0, i32 8
  %read_addr_cnt.i475.i.i = getelementptr inbounds %struct.anon.196, ptr %625, i32 0, i32 1
  %626 = ptrtoint ptr %read_addr_cnt.i475.i.i to i32
  call void @__asan_load1_noabort(i32 %626)
  %627 = load i8, ptr %read_addr_cnt.i475.i.i, align 1
  %conv.i476.i.i = zext i8 %627 to i32
  %628 = ptrtoint ptr %625 to i32
  call void @__asan_load1_noabort(i32 %628)
  %629 = load i8, ptr %625, align 4
  %conv1.i.i.i = zext i8 %629 to i32
  %op_count.i477.i.i = getelementptr inbounds %struct.netxen_minidump_entry_queue, ptr %entry3.0580.i.i, i32 0, i32 4
  %630 = ptrtoint ptr %op_count.i477.i.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load i32, ptr %op_count.i477.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %631)
  %cmp95.not.i.i.i = icmp eq i32 %631, 0
  br i1 %cmp95.not.i.i.i, label %sw.bb110.i.i.netxen_md_rdqueue.exit.i.i_crit_edge, label %do.body4.lr.ph.i.i.i

sw.bb110.i.i.netxen_md_rdqueue.exit.i.i_crit_edge: ; preds = %sw.bb110.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_md_rdqueue.exit.i.i

do.body4.lr.ph.i.i.i:                             ; preds = %sw.bb110.i.i
  %add.ptr111.i.i = getelementptr i8, ptr %add.ptr9.i.i, i32 %buff_level.0570.i.i
  %select_addr2.i478.i.i = getelementptr inbounds %struct.netxen_minidump_entry_queue, ptr %entry3.0580.i.i, i32 0, i32 1
  %632 = ptrtoint ptr %select_addr2.i478.i.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %select_addr2.i478.i.i, align 4
  %and.i479.i.i = and i32 %633, -65536
  %634 = tail call i32 @llvm.bswap.i32(i32 %and.i479.i.i) #10
  %conv16.i480.i.i = and i32 %633, 65535
  %read_addr31.i.i.i = getelementptr inbounds %struct.netxen_minidump_entry_queue, ptr %entry3.0580.i.i, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %627)
  %cmp3391.not.i.i.i = icmp eq i8 %627, 0
  %635 = getelementptr inbounds %struct.netxen_minidump_entry_queue, ptr %entry3.0580.i.i, i32 0, i32 2
  br label %do.body4.i486.i.i

do.body4.i486.i.i:                                ; preds = %for.end.i496.i.i.do.body4.i486.i.i_crit_edge, %do.body4.lr.ph.i.i.i
  %data_buff.addr.098.i.i.i = phi ptr [ %add.ptr111.i.i, %do.body4.lr.ph.i.i.i ], [ %data_buff.addr.1.lcssa.i494.i.i, %for.end.i496.i.i.do.body4.i486.i.i_crit_edge ]
  %loop_cnt.097.i.i.i = phi i32 [ 0, %do.body4.lr.ph.i.i.i ], [ %inc68.i.i.i, %for.end.i496.i.i.do.body4.i486.i.i_crit_edge ]
  %queue_id.096.i.i.i = phi i32 [ 0, %do.body4.lr.ph.i.i.i ], [ %add66.i.i.i, %for.end.i496.i.i.do.body4.i486.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !295
  tail call void @arm_heavy_mb() #10
  %636 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %adapter, align 8
  %add.ptr.i481.i.i = getelementptr i8, ptr %637, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i481.i.i, i32 %634) #10, !srcloc !164
  %638 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %adapter, align 8
  %add.ptr7.i482.i.i = getelementptr i8, ptr %639, i32 1245280
  %640 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i482.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !297
  tail call void @arm_heavy_mb() #10
  %641 = tail call i32 @llvm.bswap.i32(i32 %queue_id.096.i.i.i) #10
  %642 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %adapter, align 8
  %add.ptr14.i483.i.i = getelementptr i8, ptr %643, i32 1966080
  %add.ptr17.i484.i.i = getelementptr i8, ptr %add.ptr14.i483.i.i, i32 %conv16.i480.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i484.i.i, i32 %641) #10, !srcloc !164
  %644 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %adapter, align 8
  %add.ptr22.i.i.i = getelementptr i8, ptr %645, i32 1966080
  %add.ptr25.i485.i.i = getelementptr i8, ptr %add.ptr22.i.i.i, i32 %conv16.i480.i.i
  %646 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i485.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  br i1 %cmp3391.not.i.i.i, label %do.body4.i486.i.i.for.end.i496.i.i_crit_edge, label %do.body37.preheader.i.i.i

do.body4.i486.i.i.for.end.i496.i.i_crit_edge:     ; preds = %do.body4.i486.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i496.i.i

do.body37.preheader.i.i.i:                        ; preds = %do.body4.i486.i.i
  %647 = ptrtoint ptr %read_addr31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load i32, ptr %read_addr31.i.i.i, align 4
  br label %do.body37.i.i.i

do.body37.i.i.i:                                  ; preds = %do.body37.i.i.i.do.body37.i.i.i_crit_edge, %do.body37.preheader.i.i.i
  %data_buff.addr.194.i.i.i = phi ptr [ %incdec.ptr.i490.i.i, %do.body37.i.i.i.do.body37.i.i.i_crit_edge ], [ %data_buff.addr.098.i.i.i, %do.body37.preheader.i.i.i ]
  %k.093.i.i.i = phi i32 [ %inc.i492.i.i, %do.body37.i.i.i.do.body37.i.i.i_crit_edge ], [ 0, %do.body37.preheader.i.i.i ]
  %read_addr.092.i.i.i = phi i32 [ %add.i491.i.i, %do.body37.i.i.i.do.body37.i.i.i_crit_edge ], [ %648, %do.body37.preheader.i.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !299
  tail call void @arm_heavy_mb() #10
  %and40.i.i.i = and i32 %read_addr.092.i.i.i, -65536
  %649 = tail call i32 @llvm.bswap.i32(i32 %and40.i.i.i) #10
  %650 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %adapter, align 8
  %add.ptr43.i.i.i = getelementptr i8, ptr %651, i32 1245280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i.i.i, i32 %649) #10, !srcloc !164
  %652 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %adapter, align 8
  %add.ptr48.i.i.i = getelementptr i8, ptr %653, i32 1245280
  %654 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48.i.i.i) #10, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !300
  %655 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %adapter, align 8
  %add.ptr56.i487.i.i = getelementptr i8, ptr %656, i32 1966080
  %conv58.i488.i.i = and i32 %read_addr.092.i.i.i, 65535
  %add.ptr59.i489.i.i = getelementptr i8, ptr %add.ptr56.i487.i.i, i32 %conv58.i488.i.i
  %657 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i489.i.i) #10, !srcloc !160
  %658 = tail call i32 @llvm.bswap.i32(i32 %657) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !301
  %incdec.ptr.i490.i.i = getelementptr i32, ptr %data_buff.addr.194.i.i.i, i32 1
  %659 = ptrtoint ptr %data_buff.addr.194.i.i.i to i32
  call void @__asan_store4_noabort(i32 %659)
  store i32 %658, ptr %data_buff.addr.194.i.i.i, align 4
  %add.i491.i.i = add i32 %read_addr.092.i.i.i, %conv1.i.i.i
  %inc.i492.i.i = add nuw nsw i32 %k.093.i.i.i, 1
  %exitcond.not.i493.i.i = icmp eq i32 %inc.i492.i.i, %conv.i476.i.i
  br i1 %exitcond.not.i493.i.i, label %do.body37.i.i.i.for.end.i496.i.i_crit_edge, label %do.body37.i.i.i.do.body37.i.i.i_crit_edge

do.body37.i.i.i.do.body37.i.i.i_crit_edge:        ; preds = %do.body37.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37.i.i.i

do.body37.i.i.i.for.end.i496.i.i_crit_edge:       ; preds = %do.body37.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i496.i.i

for.end.i496.i.i:                                 ; preds = %do.body37.i.i.i.for.end.i496.i.i_crit_edge, %do.body4.i486.i.i.for.end.i496.i.i_crit_edge
  %data_buff.addr.1.lcssa.i494.i.i = phi ptr [ %data_buff.addr.098.i.i.i, %do.body4.i486.i.i.for.end.i496.i.i_crit_edge ], [ %incdec.ptr.i490.i.i, %do.body37.i.i.i.for.end.i496.i.i_crit_edge ]
  %660 = ptrtoint ptr %635 to i32
  call void @__asan_load2_noabort(i32 %660)
  %661 = load i16, ptr %635, align 4
  %conv65.i.i.i = zext i16 %661 to i32
  %add66.i.i.i = add i32 %queue_id.096.i.i.i, %conv65.i.i.i
  %inc68.i.i.i = add nuw i32 %loop_cnt.097.i.i.i, 1
  %662 = ptrtoint ptr %op_count.i477.i.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load i32, ptr %op_count.i477.i.i, align 4
  %cmp.i495.i.i = icmp ult i32 %inc68.i.i.i, %663
  br i1 %cmp.i495.i.i, label %for.end.i496.i.i.do.body4.i486.i.i_crit_edge, label %for.end.i496.i.i.netxen_md_rdqueue.exit.i.i_crit_edge

for.end.i496.i.i.netxen_md_rdqueue.exit.i.i_crit_edge: ; preds = %for.end.i496.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_md_rdqueue.exit.i.i

for.end.i496.i.i.do.body4.i486.i.i_crit_edge:     ; preds = %for.end.i496.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i486.i.i

netxen_md_rdqueue.exit.i.i:                       ; preds = %for.end.i496.i.i.netxen_md_rdqueue.exit.i.i_crit_edge, %sw.bb110.i.i.netxen_md_rdqueue.exit.i.i_crit_edge
  %loop_cnt.0.lcssa.i497.i.i = phi i32 [ 0, %sw.bb110.i.i.netxen_md_rdqueue.exit.i.i_crit_edge ], [ %inc68.i.i.i, %for.end.i496.i.i.netxen_md_rdqueue.exit.i.i_crit_edge ]
  %mul.i498.i.i = shl nuw nsw i32 %conv.i476.i.i, 2
  %mul70.i.i.i = mul i32 %loop_cnt.0.lcssa.i497.i.i, %mul.i498.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul70.i.i.i)
  %cmp.i499.i.i = icmp slt i32 %mul70.i.i.i, 0
  br i1 %cmp.i499.i.i, label %678, label %if.end.i504.i.i

if.end.i504.i.i:                                  ; preds = %netxen_md_rdqueue.exit.i.i
  %entry_capture_size.i502.i.i = getelementptr inbounds %struct.netxen_common_entry_hdr, ptr %entry3.0580.i.i, i32 0, i32 2
  %664 = ptrtoint ptr %entry_capture_size.i502.i.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load i32, ptr %entry_capture_size.i502.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %665, i32 %mul70.i.i.i)
  %cmp4.not.i503.i.i = icmp eq i32 %665, %mul70.i.i.i
  br i1 %cmp4.not.i503.i.i, label %if.end.i504.i.i.netxen_md_entry_err_chk.exit512.thread.i.i_crit_edge, label %if.then6.i510.i.i

if.end.i504.i.i.netxen_md_entry_err_chk.exit512.thread.i.i_crit_edge: ; preds = %if.end.i504.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_md_entry_err_chk.exit512.thread.i.i

if.then6.i510.i.i:                                ; preds = %if.end.i504.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %666 = ptrtoint ptr %entry_capture_size.i502.i.i to i32
  call void @__asan_store4_noabort(i32 %666)
  store i32 %mul70.i.i.i, ptr %entry_capture_size.i502.i.i, align 4
  %driver_flags10.i505.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %667 = ptrtoint ptr %driver_flags10.i505.i.i to i32
  call void @__asan_load1_noabort(i32 %667)
  %668 = load i8, ptr %driver_flags10.i505.i.i, align 1
  %669 = or i8 %668, 64
  store i8 %669, ptr %driver_flags10.i505.i.i, align 1
  %670 = ptrtoint ptr %pdev.i506.i.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %pdev.i506.i.i, align 8
  %dev.i507.i.i = getelementptr inbounds %struct.pci_dev, ptr %671, i32 0, i32 44
  %672 = ptrtoint ptr %entry3.0580.i.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load i32, ptr %entry3.0580.i.i, align 4
  %674 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %674)
  %675 = load i8, ptr %55, align 4
  %conv16.i508.i.i = zext i8 %675 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i507.i.i, ptr noundef nonnull @.str.52, i32 noundef %673, i32 noundef %conv16.i508.i.i, i32 noundef %mul70.i.i.i, i32 noundef %mul70.i.i.i) #13
  %676 = ptrtoint ptr %pdev.i506.i.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %pdev.i506.i.i, align 8
  %dev22.i509.i.i = getelementptr inbounds %struct.pci_dev, ptr %677, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22.i509.i.i, ptr noundef nonnull @.str.55) #13
  br label %netxen_md_entry_err_chk.exit512.thread.i.i

netxen_md_entry_err_chk.exit512.thread.i.i:       ; preds = %if.then6.i510.i.i, %if.end.i504.i.i.netxen_md_entry_err_chk.exit512.thread.i.i_crit_edge
  %add118567.i.i = add i32 %mul70.i.i.i, %buff_level.0570.i.i
  br label %for.inc.i.i

678:                                              ; preds = %netxen_md_rdqueue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_flags.i500.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %679 = ptrtoint ptr %driver_flags.i500.i.i to i32
  call void @__asan_load1_noabort(i32 %679)
  %680 = load i8, ptr %driver_flags.i500.i.i, align 1
  %681 = or i8 %680, -128
  store i8 %681, ptr %driver_flags.i500.i.i, align 1
  br label %for.inc.i.i

sw.default.i.i:                                   ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_flags120.i.i = getelementptr inbounds %struct.anon.152, ptr %55, i32 0, i32 3
  %682 = ptrtoint ptr %driver_flags120.i.i to i32
  call void @__asan_load1_noabort(i32 %682)
  %683 = load i8, ptr %driver_flags120.i.i, align 1
  %684 = or i8 %683, -128
  store i8 %684, ptr %driver_flags120.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %sw.default.i.i, %678, %netxen_md_entry_err_chk.exit512.thread.i.i, %621, %netxen_md_entry_err_chk.exit474.thread.i.i, %567, %netxen_md_entry_err_chk.exit444.thread.i.i, %537, %netxen_md_entry_err_chk.exit419.thread.i.i, %462, %netxen_md_entry_err_chk.exit369.thread.i.i, %360, %netxen_md_entry_err_chk.exit333.thread.i.i, %302, %netxen_md_entry_err_chk.exit302.thread.i.i, %276, %netxen_md_entry_err_chk.exit.thread.i.i, %if.then40.i.i, %netxen_md_cntrl.exit.i.i.for.inc.i.i_crit_edge, %sw.bb38.i.i.for.inc.i.i_crit_edge, %sw.bb32.i.i, %sw.bb.i.i, %if.then18.i.i
  %buff_level.2.i.i = phi i32 [ %buff_level.0570.i.i, %if.then18.i.i ], [ %buff_level.0570.i.i, %sw.default.i.i ], [ %buff_level.0570.i.i, %if.then40.i.i ], [ %buff_level.0570.i.i, %netxen_md_cntrl.exit.i.i.for.inc.i.i_crit_edge ], [ %buff_level.0570.i.i, %sw.bb32.i.i ], [ %buff_level.0570.i.i, %sw.bb.i.i ], [ %buff_level.0570.i.i, %276 ], [ %add55525.i.i, %netxen_md_entry_err_chk.exit.thread.i.i ], [ %buff_level.0570.i.i, %302 ], [ %add64534.i.i, %netxen_md_entry_err_chk.exit302.thread.i.i ], [ %buff_level.0570.i.i, %360 ], [ %add73537.i.i, %netxen_md_entry_err_chk.exit333.thread.i.i ], [ %buff_level.0570.i.i, %462 ], [ %add82545.i.i, %netxen_md_entry_err_chk.exit369.thread.i.i ], [ %buff_level.0570.i.i, %537 ], [ %add91548.i.i, %netxen_md_entry_err_chk.exit419.thread.i.i ], [ %buff_level.0570.i.i, %567 ], [ %add100556.i.i, %netxen_md_entry_err_chk.exit444.thread.i.i ], [ %buff_level.0570.i.i, %621 ], [ %add109564.i.i, %netxen_md_entry_err_chk.exit474.thread.i.i ], [ %buff_level.0570.i.i, %678 ], [ %add118567.i.i, %netxen_md_entry_err_chk.exit512.thread.i.i ], [ %buff_level.0570.i.i, %sw.bb38.i.i.for.inc.i.i_crit_edge ]
  %sane_end.2.i.i = phi i32 [ %sane_end.0577.i.i, %if.then18.i.i ], [ %sane_end.0577.i.i, %sw.default.i.i ], [ %sane_end.0577.i.i, %if.then40.i.i ], [ %sane_end.0577.i.i, %netxen_md_cntrl.exit.i.i.for.inc.i.i_crit_edge ], [ %add.i.i, %sw.bb32.i.i ], [ %sane_end.0577.i.i, %sw.bb.i.i ], [ %sane_end.0577.i.i, %276 ], [ %sane_end.0577.i.i, %netxen_md_entry_err_chk.exit.thread.i.i ], [ %sane_end.0577.i.i, %302 ], [ %sane_end.0577.i.i, %netxen_md_entry_err_chk.exit302.thread.i.i ], [ %sane_end.0577.i.i, %360 ], [ %sane_end.0577.i.i, %netxen_md_entry_err_chk.exit333.thread.i.i ], [ %sane_end.0577.i.i, %462 ], [ %sane_end.0577.i.i, %netxen_md_entry_err_chk.exit369.thread.i.i ], [ %sane_end.0577.i.i, %537 ], [ %sane_end.0577.i.i, %netxen_md_entry_err_chk.exit419.thread.i.i ], [ %sane_end.0577.i.i, %567 ], [ %sane_end.0577.i.i, %netxen_md_entry_err_chk.exit444.thread.i.i ], [ %sane_end.0577.i.i, %621 ], [ %sane_end.0577.i.i, %netxen_md_entry_err_chk.exit474.thread.i.i ], [ %sane_end.0577.i.i, %678 ], [ %sane_end.0577.i.i, %netxen_md_entry_err_chk.exit512.thread.i.i ], [ %sane_end.0577.i.i, %sw.bb38.i.i.for.inc.i.i_crit_edge ]
  %.pn.in.i.i = getelementptr inbounds %struct.netxen_common_entry_hdr, ptr %entry3.0580.i.i, i32 0, i32 1
  %685 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %.pn.i.i = load i32, ptr %.pn.in.i.i, align 4
  %entry3.1.i.i = getelementptr i8, ptr %entry3.0580.i.i, i32 %.pn.i.i
  %inc.i.i = add nuw nsw i32 %e_cnt.0576.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %46
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %sane_end.0.lcssa.i.i = phi i32 [ 0, %if.end.i.i.for.end.i.i_crit_edge ], [ %sane_end.2.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sane_end.0.lcssa.i.i)
  %cmp128.i.i = icmp sgt i32 %sane_end.0.lcssa.i.i, 1
  %or.cond.i.i = select i1 %cmp10.i.i, i1 true, i1 %cmp128.i.i
  br i1 %or.cond.i.i, label %do.end133.i.i, label %for.end.i.i.if.else_crit_edge

for.end.i.i.if.else_crit_edge:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.end133.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev134.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %686 = ptrtoint ptr %pdev134.i.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %pdev134.i.i, align 8
  %dev135.i.i = getelementptr inbounds %struct.pci_dev, ptr %687, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev135.i.i, ptr noundef nonnull @.str.48) #13
  br label %if.else

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %688 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %689, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.45, i32 noundef %conv.i.i) #13
  %has_valid_dump = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 74, i32 2
  %690 = ptrtoint ptr %has_valid_dump to i32
  call void @__asan_store1_noabort(i32 %690)
  store i8 0, ptr %has_valid_dump, align 1
  %691 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_store4_noabort(i32 %691)
  store i32 0, ptr %md_dump_size, align 8
  %692 = ptrtoint ptr %md_capture_buff to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %md_capture_buff, align 4
  tail call void @vfree(ptr noundef %693) #10
  %694 = ptrtoint ptr %md_capture_buff to i32
  call void @__asan_store4_noabort(i32 %694)
  store ptr null, ptr %md_capture_buff, align 4
  %695 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %pdev.i.i, align 8
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %696, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.27) #13
  br label %cleanup

if.else:                                          ; preds = %do.end133.i.i, %for.end.i.i.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %697 = load volatile i32, ptr @jiffies, align 128
  %conv43 = zext i32 %697 to i64
  %md_timestamp = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 74, i32 9
  %698 = ptrtoint ptr %md_timestamp to i32
  call void @__asan_store8_noabort(i32 %698)
  store i64 %conv43, ptr %md_timestamp, align 8
  %has_valid_dump46 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 74, i32 2
  %699 = ptrtoint ptr %has_valid_dump46 to i32
  call void @__asan_store1_noabort(i32 %699)
  store i8 1, ptr %has_valid_dump46, align 1
  %fw_mdump_rdy = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 75
  %700 = ptrtoint ptr %fw_mdump_rdy to i32
  call void @__asan_store4_noabort(i32 %700)
  store i32 1, ptr %fw_mdump_rdy, align 8
  %pdev50 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %701 = ptrtoint ptr %pdev50 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %pdev50, align 8
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %702, i32 0, i32 44
  %netdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 1
  %703 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev51, ptr noundef nonnull @.str.30, ptr noundef %704) #13
  br label %cleanup

do.end56:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %pdev57 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %705 = ptrtoint ptr %pdev57 to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %pdev57, align 8
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %706, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev58, ptr noundef nonnull @.str.34) #13
  %fw_mdump_rdy59 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 75
  %707 = ptrtoint ptr %fw_mdump_rdy59 to i32
  call void @__asan_store4_noabort(i32 %707)
  store i32 1, ptr %fw_mdump_rdy59, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %if.else, %if.then30, %if.then18.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_nic_update_cmd_producer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netxen_nic_pci_set_crbwindow_128M(ptr nocapture noundef %adapter, i32 noundef %window) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crb_win = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 8
  %0 = ptrtoint ptr %crb_win to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crb_win, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %window)
  %cmp = icmp eq i32 %1, %window
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pci_func = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 13
  %2 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pci_func, align 2
  %pci_base1 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 1
  %4 = ptrtoint ptr %pci_base1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_base1, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp3 = icmp ult i8 %3, 4
  %mul = shl nuw nsw i32 %conv, 5
  %add = add nuw nsw i32 %mul, 66064
  %sub = shl nuw nsw i32 %conv, 4
  %add8 = add nuw nsw i32 %sub, 66156
  %cond = select i1 %cmp3, i32 %add, i32 %add8
  %add9 = or i32 %cond, 101711872
  %add.ptr = getelementptr i8, ptr %5, i32 %add9
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i32 -100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !302
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %window)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %6) #10, !srcloc !164
  %pdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %window)
  %cmp22 = icmp eq i32 %window, 33554432
  %conv23 = zext i1 %cmp22 to i32
  br label %do.body11

do.body11:                                        ; preds = %if.end24.do.body11_crit_edge, %if.end
  %count.0 = phi i32 [ 10, %if.end ], [ %dec, %if.end24.do.body11_crit_edge ]
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #10, !srcloc !160
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %window)
  %cmp13 = icmp eq i32 %8, %window
  br i1 %cmp13, label %if.then31, label %if.end16

if.end16:                                         ; preds = %do.body11
  %call17 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.netxen_nic_pci_set_crbwindow_128M) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.end16.if.end24_crit_edge, label %do.end21

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %conv23) #13
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %if.end16.if.end24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #10
  %dec = add nsw i32 %count.0, -1
  %cmp26.not = icmp eq i32 %dec, 0
  br i1 %cmp26.not, label %if.end24.cleanup_crit_edge, label %if.end24.do.body11_crit_edge

if.end24.do.body11_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then31:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %crb_win to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %window, ptr %crb_win, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netxen_nic_pci_mem_access_direct(ptr noundef %adapter, i64 noundef %off, ptr nocapture noundef %data, i32 noundef %op) unnamed_addr #0 align 64 {
entry:
  %start = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #10
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %start, align 4, !annotation !159
  %mem_lock = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %mem_lock) #10
  %pci_set_window = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 57
  %1 = ptrtoint ptr %pci_set_window to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci_set_window, align 4
  %call = call i32 %2(ptr noundef %adapter, i64 noundef %off, ptr noundef nonnull %start) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.unlock.thread_crit_edge

entry.unlock.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.thread

if.end:                                           ; preds = %entry
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %3 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %4)
  %cmp2 = icmp ugt i8 %4, 47
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  %7 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %start, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %8
  br label %noremap

if.else:                                          ; preds = %if.end
  %9 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %10)
  %cmp.i = icmp ult i32 %10, 1048576
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 %10
  br label %pci_base_offset.exit

if.end.i:                                         ; preds = %if.else
  %13 = add i32 %10, -100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 9158656, i32 %13)
  %14 = icmp ult i32 %13, 9158656
  br i1 %14, label %if.then5.i, label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pci_base1.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 1
  %15 = ptrtoint ptr %pci_base1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_base1.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %16, i32 %10
  %add.ptr8.i = getelementptr i8, ptr %add.ptr7.i, i32 -100663296
  br label %pci_base_offset.exit

if.end9.i:                                        ; preds = %if.end.i
  %17 = add i32 %10, -118374400
  call void @__sanitizer_cov_trace_const_cmp4(i32 15843328, i32 %17)
  %18 = icmp ult i32 %17, 15843328
  br i1 %18, label %if.then13.i, label %if.end9.i.if.end8_crit_edge

if.end9.i.if.end8_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %pci_base2.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 2
  %19 = ptrtoint ptr %pci_base2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_base2.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %20, i32 %10
  %add.ptr16.i = getelementptr i8, ptr %add.ptr15.i, i32 -118374400
  br label %pci_base_offset.exit

pci_base_offset.exit:                             ; preds = %if.then13.i, %if.then5.i, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr8.i, %if.then5.i ], [ %add.ptr16.i, %if.then13.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %pci_base_offset.exit.if.end8_crit_edge, label %pci_base_offset.exit.noremap_crit_edge

pci_base_offset.exit.noremap_crit_edge:           ; preds = %pci_base_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %noremap

pci_base_offset.exit.if.end8_crit_edge:           ; preds = %pci_base_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %pci_base_offset.exit.if.end8_crit_edge, %if.end9.i.if.end8_crit_edge
  %pdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 47
  %23 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resource, align 8
  %and = and i32 %10, -4096
  %add = add i32 %24, %and
  %call10 = call ptr @ioremap(i32 noundef %add, i32 noundef 4096) #10
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.end8.unlock.thread_crit_edge, label %if.end14

if.end8.unlock.thread_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.thread

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %start, align 4
  %and15 = and i32 %26, 4095
  %add.ptr16 = getelementptr i8, ptr %call10, i32 %and15
  br label %noremap

noremap:                                          ; preds = %if.end14, %pci_base_offset.exit.noremap_crit_edge, %if.then4
  %addr.0 = phi ptr [ %add.ptr, %if.then4 ], [ %retval.0.i, %pci_base_offset.exit.noremap_crit_edge ], [ %add.ptr16, %if.end14 ]
  %mem_ptr.0 = phi ptr [ null, %if.then4 ], [ null, %pci_base_offset.exit.noremap_crit_edge ], [ %call10, %if.end14 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op)
  %cmp18 = icmp eq i32 %op, 0
  br i1 %cmp18, label %if.then20, label %if.else22

if.then20:                                        ; preds = %noremap
  call void @__sanitizer_cov_trace_pc() #12
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr.0) #10, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  %add.ptr.i43 = getelementptr i32, ptr %addr.0, i32 1
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #10, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !162
  %29 = zext i32 %28 to i64
  %30 = zext i32 %27 to i64
  %31 = shl nuw i64 %30, 32
  %32 = or i64 %31, %29
  %33 = call i64 @llvm.bswap.i64(i64 %32) #10
  %34 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %data, align 8
  br label %unlock

if.else22:                                        ; preds = %noremap
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %data, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !163
  call void @arm_heavy_mb() #10
  %conv.i = trunc i64 %36 to i32
  %37 = call i32 @llvm.bswap.i32(i32 %conv.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr.0, i32 %37) #10, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  call void @arm_heavy_mb() #10
  %shr.i = lshr i64 %36, 32
  %conv3.i = trunc i64 %shr.i to i32
  %38 = call i32 @llvm.bswap.i32(i32 %conv3.i) #10
  %add.ptr.i44 = getelementptr i8, ptr %addr.0, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %38) #10, !srcloc !164
  br label %unlock

unlock.thread:                                    ; preds = %if.end8.unlock.thread_crit_edge, %entry.unlock.thread_crit_edge
  %ret.0.ph = phi i32 [ -5, %if.end8.unlock.thread_crit_edge ], [ %call, %entry.unlock.thread_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %mem_lock) #10
  br label %if.end28

unlock:                                           ; preds = %if.else22, %if.then20
  call void @_raw_spin_unlock(ptr noundef %mem_lock) #10
  %tobool26.not = icmp eq ptr %mem_ptr.0, null
  br i1 %tobool26.not, label %unlock.if.end28_crit_edge, label %if.then27

unlock.if.end28_crit_edge:                        ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then27:                                        ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #12
  call void @iounmap(ptr noundef nonnull %mem_ptr.0) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %unlock.if.end28_crit_edge, %unlock.thread
  %ret.050 = phi i32 [ %ret.0.ph, %unlock.thread ], [ 0, %if.then27 ], [ 0, %unlock.if.end28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #10
  ret i32 %ret.050
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netxen_nic_disable_mcast_filter(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_enabled = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 18
  %0 = ptrtoint ptr %mc_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mc_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mac_addr = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 41
  %physical_port = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 17
  %2 = ptrtoint ptr %physical_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %physical_port, align 1
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %4 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crb_read, align 4
  %call = tail call i32 %5(ptr noundef %adapter, i32 noundef 106958848) #10
  %conv1 = zext i8 %3 to i32
  %shl = shl i32 268435456, %conv1
  %neg = xor i32 %shl, -1
  %and = and i32 %call, %neg
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %6 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crb_write, align 8
  %call2 = tail call i32 %7(ptr noundef %adapter, i32 noundef 106958848, i32 noundef %and) #10
  %arrayidx = getelementptr %struct.netxen_adapter, ptr %adapter, i32 0, i32 41, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %9 to i32
  %shl4 = shl nuw nsw i32 %conv3, 16
  %arrayidx5 = getelementptr %struct.netxen_adapter, ptr %adapter, i32 0, i32 41, i32 1
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %11 to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %or = or i32 %shl7, %shl4
  %12 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mac_addr, align 1
  %conv9 = zext i8 %13 to i32
  %or10 = or i32 %or, %conv9
  %14 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crb_write, align 8
  %mul = shl nuw nsw i32 %conv1, 5
  %add13 = add nuw nsw i32 %mul, 106958976
  %call15 = tail call i32 %15(ptr noundef %adapter, i32 noundef %add13, i32 noundef %or10) #10
  %arrayidx16 = getelementptr %struct.netxen_adapter, ptr %adapter, i32 0, i32 41, i32 5
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %17 to i32
  %shl18 = shl nuw nsw i32 %conv17, 16
  %arrayidx19 = getelementptr %struct.netxen_adapter, ptr %adapter, i32 0, i32 41, i32 4
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %19 to i32
  %shl21 = shl nuw nsw i32 %conv20, 8
  %or22 = or i32 %shl21, %shl18
  %arrayidx23 = getelementptr %struct.netxen_adapter, ptr %adapter, i32 0, i32 41, i32 3
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %21 to i32
  %or25 = or i32 %or22, %conv24
  %22 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %crb_write, align 8
  %add31 = add nuw nsw i32 %mul, 106958980
  %call32 = tail call i32 %23(ptr noundef %adapter, i32 noundef %add31, i32 noundef %or25) #10
  %24 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crb_write, align 8
  %add37 = add nuw nsw i32 %mul, 106958984
  %call38 = tail call i32 %25(ptr noundef %adapter, i32 noundef %add37, i32 noundef 0) #10
  %26 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %crb_write, align 8
  %add44 = add nuw nsw i32 %mul, 106958988
  %call45 = tail call i32 %27(ptr noundef %adapter, i32 noundef %add44, i32 noundef 0) #10
  %28 = ptrtoint ptr %mc_enabled to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %mc_enabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nx_p3_nic_add_mac(ptr noundef %adapter, ptr nocapture noundef readonly %addr, ptr noundef readonly %del_list) unnamed_addr #0 align 64 {
entry:
  %req.i = alloca %struct.nx_nic_req_t, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %head.0.in = phi ptr [ %del_list, %entry ], [ %head.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %head.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %head.0 = load ptr, ptr %head.0.in, align 4
  %cmp.i.not = icmp eq ptr %head.0, %del_list
  br i1 %cmp.i.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %mac_addr = getelementptr inbounds %struct.nx_mac_list_s, ptr %head.0, i32 0, i32 1
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr, align 4
  %3 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac_addr, align 4
  %xor.i = xor i32 %4, %2
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.nx_mac_list_s, ptr %head.0, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %8, %6
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  %cmp.i1 = icmp eq i32 %or.i, 0
  br i1 %cmp.i1, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  %mac_list = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head.0) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %head.0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head.0, ptr noundef %16, ptr noundef %mac_list) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.cleanup_crit_edge

__list_del_entry.exit.i.cleanup_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %head.0, ptr %prev.i2.i, align 4
  %18 = ptrtoint ptr %head.0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %mac_list, ptr %head.0, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %head.0, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %head.0, ptr %16, align 4
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 2848, i32 noundef 16) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %for.end.cleanup_crit_edge, label %if.end5

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %for.end
  %mac_addr6 = getelementptr inbounds %struct.nx_mac_list_s, ptr %call7.i.i, i32 0, i32 1
  %22 = call ptr @memcpy(ptr %mac_addr6, ptr %addr, i32 6)
  %mac_list8 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  %call.i.i2 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %24, ptr noundef %mac_list8) #10
  br i1 %call.i.i2, label %if.end.i.i3, label %if.end5.list_add_tail.exit_crit_edge

if.end5.list_add_tail.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i3:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %mac_list8, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call7.i.i, ptr %24, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i3, %if.end5.list_add_tail.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req.i) #10
  %29 = getelementptr inbounds i8, ptr %req.i, i32 16
  %30 = call ptr @memset(ptr %29, i32 0, i32 48)
  %31 = ptrtoint ptr %req.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 42949672960, ptr %req.i, align 8
  %portnum.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %32 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %portnum.i, align 2
  %conv.i4 = zext i8 %33 to i64
  %shl.i = shl nuw nsw i64 %conv.i4, 16
  %or.i5 = or i64 %shl.i, 1
  %34 = tail call i64 @llvm.bswap.i64(i64 %or.i5) #10
  %req_hdr.i = getelementptr inbounds %struct.nx_nic_req_t, ptr %req.i, i32 0, i32 1
  %35 = ptrtoint ptr %req_hdr.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %req_hdr.i, align 8
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %29, align 8
  %mac_addr.i = getelementptr inbounds i8, ptr %req.i, i32 18
  %37 = call ptr @memcpy(ptr %mac_addr.i, ptr %mac_addr6, i32 6)
  %call.i = call fastcc i32 @netxen_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req.i) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req.i) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %for.end.cleanup_crit_edge, %if.end.i.i.i, %__list_del_entry.exit.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !20, !21, !22, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !73, !75, !76, !77, !78, !80, !82, !83, !84, !86, !88, !89, !90, !92, !93, !94, !95, !97, !99, !100, !101, !103, !105, !106, !107, !109, !111, !112, !114, !116, !117, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146}
!llvm.named.register.sp = !{!147}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 761, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @netxen_config_intr_coalesce._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @netxen_config_intr_coalesce._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 788, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @netxen_config_hw_lro._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @netxen_config_hw_lro._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 816, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @netxen_config_bridged_mode._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @netxen_config_bridged_mode._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"key", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 834, i32 19}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 868, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @netxen_config_rss._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @netxen_config_rss._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 892, i32 3}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @netxen_config_ipaddr._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @netxen_config_ipaddr._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 914, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @netxen_linkevent_request._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @netxen_linkevent_request._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 941, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @netxen_send_lro_cleanup._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @netxen_send_lro_cleanup._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 1777, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @netxen_nic_get_board_info._entry, !41, !"_entry", i1 false, i1 false}
!46 = !{ptr @netxen_nic_get_board_info._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 1828, i32 3}
!49 = !{ptr @netxen_nic_get_board_info._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @netxen_nic_get_board_info._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 2512, i32 3}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @netxen_dump_fw._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @netxen_dump_fw._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 2531, i32 4}
!58 = !{ptr @netxen_dump_fw._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @netxen_dump_fw._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 2537, i32 4}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @netxen_dump_fw._entry.29, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @netxen_dump_fw._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 2542, i32 3}
!67 = !{ptr @netxen_dump_fw._entry.33, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @netxen_dump_fw._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @crb_128M_2M_map, !70, !"crb_128M_2M_map", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 56, i32 1}
!71 = !{ptr @__func__.netxen_nic_pci_set_crbwindow_128M, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 1064, i32 7}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 1065, i32 4}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @netxen_nic_pci_set_crbwindow_128M._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @netxen_nic_pci_set_crbwindow_128M._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @__func__.netxen_nic_pci_mem_read_128M, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 1575, i32 7}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 1576, i32 4}
!82 = !{ptr @netxen_nic_pci_mem_read_128M._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @netxen_nic_pci_mem_read_128M._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @__func__.netxen_nic_pci_mem_write_128M, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 1500, i32 7}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 1501, i32 4}
!88 = !{ptr @netxen_nic_pci_mem_write_128M._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @netxen_nic_pci_mem_write_128M._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 1274, i32 2}
!92 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @netxen_nic_hw_read_wx_2M._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @netxen_nic_hw_read_wx_2M._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @__func__.netxen_nic_pci_set_crbwindow_2M, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 1131, i32 7}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 1132, i32 4}
!99 = !{ptr @netxen_nic_pci_set_crbwindow_2M._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @netxen_nic_pci_set_crbwindow_2M._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @crb_hub_agt, !102, !"crb_hub_agt", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 216, i32 17}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 1244, i32 2}
!105 = !{ptr @netxen_nic_hw_write_wx_2M._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @netxen_nic_hw_write_wx_2M._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @__func__.netxen_nic_pci_mem_read_2M, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 1712, i32 7}
!109 = !{ptr @netxen_nic_pci_mem_read_2M._entry, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 1713, i32 4}
!111 = !{ptr @netxen_nic_pci_mem_read_2M._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @__func__.netxen_nic_pci_mem_write_2M, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 1649, i32 7}
!114 = !{ptr @netxen_nic_pci_mem_write_2M._entry, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 1650, i32 4}
!116 = !{ptr @netxen_nic_pci_mem_write_2M._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @netxen_p3_nic_set_multi.bcast_addr, !118, !"bcast_addr", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 651, i32 18}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 2342, i32 3}
!121 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @netxen_parse_md_template._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @netxen_parse_md_template._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.48, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 2472, i32 3}
!126 = !{ptr @netxen_parse_md_template._entry.47, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @netxen_parse_md_template._entry_ptr.49, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 2000, i32 7}
!130 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @netxen_md_cntrl._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @netxen_md_cntrl._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 2321, i32 3}
!135 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @netxen_md_entry_err_chk._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @netxen_md_entry_err_chk._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 2325, i32 3}
!140 = !{ptr @netxen_md_entry_err_chk._entry.54, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @netxen_md_entry_err_chk._entry_ptr.56, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", i32 2182, i32 5}
!144 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @netxen_md_L2Cache._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @netxen_md_L2Cache._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{!"sp"}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{i64 2157733436}
!158 = !{i64 2158023589}
!159 = !{!"auto-init"}
!160 = !{i64 753231}
!161 = !{i64 2149417852}
!162 = !{i64 2149418290}
!163 = !{i64 2149418660}
!164 = !{i64 752813}
!165 = !{i64 2149419033}
!166 = !{i64 2158069004}
!167 = !{i64 2158061058}
!168 = !{i64 2158068315}
!169 = !{i64 2158059593}
!170 = !{i64 2158080192}
!171 = !{i64 2158080597}
!172 = !{i64 2158081006}
!173 = !{i64 2158081410}
!174 = !{i64 2158082099}
!175 = !{i64 2158084314}
!176 = !{i64 2158084800}
!177 = !{i64 2158074339}
!178 = !{i64 2158074744}
!179 = !{i64 2158075160}
!180 = !{i64 2158075617}
!181 = !{i64 2158076093}
!182 = !{i64 2158076527}
!183 = !{i64 2158077240}
!184 = !{i64 2158065078}
!185 = !{i64 2158055400}
!186 = !{i64 2158056005}
!187 = !{i64 2158066060}
!188 = !{i64 2158061541}
!189 = !{i64 2158062456}
!190 = !{i64 2158071971}
!191 = !{i64 2158072676}
!192 = !{i64 2158091378}
!193 = !{i64 2158091779}
!194 = !{i64 2158092173}
!195 = !{i64 2158092577}
!196 = !{i64 2158093266}
!197 = !{i64 2158095484}
!198 = !{i64 2158095973}
!199 = !{i64 2158085789}
!200 = !{i64 2158086190}
!201 = !{i64 2158086595}
!202 = !{i64 2158087053}
!203 = !{i64 2158087526}
!204 = !{i64 2158087960}
!205 = !{i64 2158088661}
!206 = !{i64 2158069851}
!207 = !{i64 2158069252}
!208 = !{i64 2158102886}
!209 = !{i64 2158103804}
!210 = !{i64 2158104126}
!211 = !{i64 2158105171}
!212 = !{i64 2158105906}
!213 = !{i64 2158106824}
!214 = !{i64 2158107590}
!215 = !{i64 2158108358}
!216 = !{i64 2158109276}
!217 = !{i64 2158109591}
!218 = !{i64 2158110615}
!219 = !{i64 2158111350}
!220 = !{i64 2158112268}
!221 = !{i64 2158113034}
!222 = !{i64 2158113802}
!223 = !{i64 2158114720}
!224 = !{i64 2158115035}
!225 = !{i64 2158116059}
!226 = !{i64 2158116794}
!227 = !{i64 2158117712}
!228 = !{i64 2158118478}
!229 = !{i64 2158119246}
!230 = !{i64 2158120164}
!231 = !{i64 2158120479}
!232 = !{i64 2158121503}
!233 = !{i64 2158122238}
!234 = !{i64 2158123156}
!235 = !{i64 2158123922}
!236 = !{i64 2158125022}
!237 = !{i64 2158125940}
!238 = !{i64 2158126706}
!239 = !{i64 2158129375}
!240 = !{i64 2158130293}
!241 = !{i64 2158131059}
!242 = !{i64 2158131832}
!243 = !{i64 2158132750}
!244 = !{i64 2158133065}
!245 = !{i64 2158134089}
!246 = !{i64 2158134819}
!247 = !{i64 2158135737}
!248 = !{i64 2158136503}
!249 = !{i64 2158137148}
!250 = !{i64 2158137433}
!251 = !{i64 2158138497}
!252 = !{i64 2158139433}
!253 = !{i64 2158139755}
!254 = !{i64 2158140800}
!255 = !{i64 2158141537}
!256 = !{i64 2158142458}
!257 = !{i64 2158143229}
!258 = !{i64 2158143969}
!259 = !{i64 2158144768}
!260 = !{i64 2158145710}
!261 = !{i64 2158146040}
!262 = !{i64 2158147109}
!263 = !{i64 2158147908}
!264 = !{i64 2158148844}
!265 = !{i64 2158149178}
!266 = !{i64 2158150259}
!267 = !{i64 2158151009}
!268 = !{i64 2158151945}
!269 = !{i64 2158152741}
!270 = !{i64 2158153861}
!271 = !{i64 2158154797}
!272 = !{i64 2158155593}
!273 = !{i64 2158158068}
!274 = !{i64 2158158986}
!275 = !{i64 2158159752}
!276 = !{i64 2158160551}
!277 = !{i64 2158161493}
!278 = !{i64 2158161823}
!279 = !{i64 2158162892}
!280 = !{i64 2158163692}
!281 = !{i64 2158164628}
!282 = !{i64 2158164963}
!283 = !{i64 2158166047}
!284 = !{i64 2158166777}
!285 = !{i64 2158167695}
!286 = !{i64 2158168461}
!287 = !{i64 2158168895}
!288 = !{i64 2158169690}
!289 = !{i64 2158170629}
!290 = !{i64 2158170957}
!291 = !{i64 2158172020}
!292 = !{i64 2158172765}
!293 = !{i64 2158173698}
!294 = !{i64 2158174489}
!295 = !{i64 2158175283}
!296 = !{i64 2158176222}
!297 = !{i64 2158176549}
!298 = !{i64 2158177609}
!299 = !{i64 2158178354}
!300 = !{i64 2158179287}
!301 = !{i64 2158180078}
!302 = !{i64 2158051893}
!303 = !{i64 2158052508}
