; ModuleID = '/llk/IR_all_yes/drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c_pt.bc'
source_filename = "../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kvaser_usb_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kvaser_usb_dev_cfg = type { %struct.can_clock, i32, ptr, ptr }
%struct.can_clock = type { i32 }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kvaser_cmd = type { %struct.kvaser_cmd_header, %union.anon.147 }
%struct.kvaser_cmd_header = type { i8, i8, i16 }
%union.anon.147 = type { %struct.kvaser_cmd_card_info }
%struct.kvaser_cmd_card_info = type { i32, i32, i32, [2 x i32], i8, i8, i8, i8, i8, [3 x i8] }
%struct.kvaser_cmd_set_busparams = type { i32, i8, i8, i8, i8, [4 x i8], i32, i8, i8, i8, i8, i8, [7 x i8] }
%struct.kvaser_usb = type { ptr, ptr, [5 x ptr], ptr, ptr, ptr, ptr, %struct.usb_anchor, i32, i32, i32, %struct.kvaser_usb_dev_card_data, i8, [4 x ptr], [4 x i32] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.kvaser_usb_dev_card_data = type { i32, i32, %union.anon.145 }
%union.anon.145 = type { %struct.kvaser_usb_dev_card_data_hydra }
%struct.kvaser_usb_dev_card_data_hydra = type { [5 x i8], i8, %struct.spinlock, i16, %struct.spinlock, [128 x i8], i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.kvaser_usb_net_priv = type { %struct.can_priv, %struct.can_berr_counter, ptr, ptr, i32, %struct.completion, %struct.completion, %struct.completion, %struct.usb_anchor, %struct.spinlock, i32, [0 x %struct.kvaser_usb_tx_urb_context] }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_berr_counter = type { i16, i16 }
%struct.kvaser_usb_tx_urb_context = type { ptr, i32 }
%struct.kvaser_cmd_ext = type { %struct.kvaser_cmd_header, i16, i8, i8, %union.anon.149 }
%union.anon.149 = type { %struct.kvaser_cmd_ext_rx_can }
%struct.kvaser_cmd_ext_rx_can = type { i32, i32, i32, i32, i64, %union.anon.150 }
%union.anon.150 = type { [64 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.kvaser_cmd_ext_tx_can = type { i32, i32, i32, i32, i8, i8, [6 x i8], [64 x i8] }
%struct.can_frame = type { i32, %union.anon.151, i8, i8, i8, [8 x i8] }
%union.anon.151 = type { i8 }
%struct.kvaser_cmd_tx_can = type { i32, [8 x i8], i8, i8, i16, i8, [11 x i8] }
%struct.kvaser_cmd_cap_res = type { i16, i16, i32, i32, [16 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.kvaser_cmd_chip_state_event = type { [3 x i16], i8, i8, i8, [19 x i8] }
%struct.kvaser_cmd_error_event = type { [3 x i16], i8, i8, i16, i16 }
%struct.kvaser_cmd_rx_can = type { i8, i8, i8, i8, [3 x i16], i8, i8, i32, %union.anon.148 }
%union.anon.148 = type { [8 x i8] }
%struct.kvaser_err_frame_data = type { i8, i8, i8, i8, [4 x i8] }

@kvaser_usb_hydra_dev_ops = dso_local constant { %struct.kvaser_usb_dev_ops, [60 x i8] } { %struct.kvaser_usb_dev_ops { ptr @kvaser_usb_hydra_set_mode, ptr @kvaser_usb_hydra_set_bittiming, ptr @kvaser_usb_hydra_set_data_bittiming, ptr @kvaser_usb_hydra_get_berr_counter, ptr @kvaser_usb_hydra_setup_endpoints, ptr @kvaser_usb_hydra_init_card, ptr @kvaser_usb_hydra_get_software_info, ptr @kvaser_usb_hydra_get_software_details, ptr @kvaser_usb_hydra_get_card_info, ptr @kvaser_usb_hydra_get_capabilities, ptr @kvaser_usb_hydra_set_opt_mode, ptr @kvaser_usb_hydra_start_chip, ptr @kvaser_usb_hydra_stop_chip, ptr null, ptr @kvaser_usb_hydra_flush_queue, ptr @kvaser_usb_hydra_read_bulk_callback, ptr @kvaser_usb_hydra_frame_to_cmd }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@kvaser_usb_hydra_send_simple_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 548, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"channel (%d) out of range.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"kvaser_usb_hydra_send_simple_cmd\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_send_simple_cmd._entry_ptr = internal global ptr @kvaser_usb_hydra_send_simple_cmd._entry, section ".printk_index", align 4
@kvaser_usb_hydra_init_card.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&card_data->transid_lock\00", [39 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_init_card.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&card_data->usb_rx_leftover_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CAN\00", [28 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_init_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1664, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CMD_MAP_CHANNEL_REQ failed for CAN%u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kvaser_usb_hydra_init_card\00", [37 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_init_card._entry_ptr = internal global ptr @kvaser_usb_hydra_init_card._entry, section ".printk_index", align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SYSDBG\00", [25 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_init_card._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 1673, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CMD_MAP_CHANNEL_REQ failed for SYSDBG\0A\00", [57 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_init_card._entry_ptr.14 = internal global ptr @kvaser_usb_hydra_init_card._entry.12, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kvaser_usb_hydra_wait_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 608, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Wait for CMD_EXTENDED not allowed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kvaser_usb_hydra_wait_cmd\00", [38 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_wait_cmd._entry_ptr = internal global ptr @kvaser_usb_hydra_wait_cmd._entry, section ".printk_index", align 4
@kvaser_usb_hydra_wait_cmd._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_wait_cmd._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.2, i32 633, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Format error\0A\00", [18 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_wait_cmd._entry_ptr.20 = internal global ptr @kvaser_usb_hydra_wait_cmd._entry.18, section ".printk_index", align 4
@kvaser_usb_hydra_map_channel_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 664, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CMD_MAP_CHANNEL_RESP, invalid transid: 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"kvaser_usb_hydra_map_channel_resp\00", [62 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_map_channel_resp._entry_ptr = internal global ptr @kvaser_usb_hydra_map_channel_resp._entry, section ".printk_index", align 4
@kvaser_usb_hydra_map_channel_resp._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 684, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unknown CMD_MAP_CHANNEL_RESP transid=0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_map_channel_resp._entry_ptr.26 = internal global ptr @kvaser_usb_hydra_map_channel_resp._entry.23, section ".printk_index", align 4
@kvaser_usb_hydra_get_software_details._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1734, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Bad firmware, device refuse to run!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"kvaser_usb_hydra_get_software_details\00", [58 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_get_software_details._entry_ptr = internal global ptr @kvaser_usb_hydra_get_software_details._entry, section ".printk_index", align 4
@kvaser_usb_hydra_get_software_details._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 1740, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Beta firmware in use\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_get_software_details._entry_ptr.32 = internal global ptr @kvaser_usb_hydra_get_software_details._entry.29, section ".printk_index", align 4
@kvaser_usb_hydra_dev_cfg_kcan = internal constant { %struct.kvaser_usb_dev_cfg, [16 x i8] } { %struct.kvaser_usb_dev_cfg { %struct.can_clock { i32 80000000 }, i32 80, ptr @kvaser_usb_hydra_kcan_bittiming_c, ptr @kvaser_usb_hydra_kcan_bittiming_c }, [16 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_dev_cfg_rt = internal constant { %struct.kvaser_usb_dev_cfg, [16 x i8] } { %struct.kvaser_usb_dev_cfg { %struct.can_clock { i32 80000000 }, i32 24, ptr @kvaser_usb_hydra_rt_bittiming_c, ptr @kvaser_usb_hydra_rtd_bittiming_c }, [16 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_dev_cfg_flexc = internal constant { %struct.kvaser_usb_dev_cfg, [16 x i8] } { %struct.kvaser_usb_dev_cfg { %struct.can_clock { i32 24000000 }, i32 1, ptr @kvaser_usb_hydra_flexc_bittiming_c, ptr null }, [16 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_kcan_bittiming_c = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"kvaser_usb_kcan\00", i32 1, i32 255, i32 1, i32 32, i32 16, i32 1, i32 8192, i32 1 }, [48 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_rt_bittiming_c = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"kvaser_usb_rt\00\00\00", i32 2, i32 96, i32 2, i32 32, i32 32, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_rtd_bittiming_c = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"kvaser_usb_rt\00\00\00", i32 2, i32 39, i32 2, i32 8, i32 8, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_flexc_bittiming_c = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"kvaser_usb_flex\00", i32 4, i32 16, i32 2, i32 8, i32 4, i32 1, i32 256, i32 1 }, [48 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_get_capabilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1795, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"No extended capability support. Upgrade your device.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"kvaser_usb_hydra_get_capabilities\00", [62 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_get_capabilities._entry_ptr = internal global ptr @kvaser_usb_hydra_get_capabilities._entry, section ".printk_index", align 4
@kvaser_usb_hydra_get_capabilities._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 1808, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"KVASER_USB_HYDRA_CAP_CMD_LISTEN_MODE failed %u\0A\00", [48 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_get_capabilities._entry_ptr.37 = internal global ptr @kvaser_usb_hydra_get_capabilities._entry.35, section ".printk_index", align 4
@kvaser_usb_hydra_get_capabilities._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.2, i32 1819, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"KVASER_USB_HYDRA_CAP_CMD_ERR_REPORT failed %u\0A\00", [49 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_get_capabilities._entry_ptr.40 = internal global ptr @kvaser_usb_hydra_get_capabilities._entry.38, section ".printk_index", align 4
@kvaser_usb_hydra_get_capabilities._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.2, i32 1829, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"KVASER_USB_HYDRA_CAP_CMD_ONE_SHOT failed %u\0A\00", [51 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_get_capabilities._entry_ptr.43 = internal global ptr @kvaser_usb_hydra_get_capabilities._entry.41, section ".printk_index", align 4
@kvaser_usb_hydra_get_single_capability._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 772, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unknown capability command %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"kvaser_usb_hydra_get_single_capability\00", [57 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_get_single_capability._entry_ptr = internal global ptr @kvaser_usb_hydra_get_single_capability._entry, section ".printk_index", align 4
@.str.46 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"CTRLMODE_FD shall be on if CTRLMODE_FD_NON_ISO is on\0A\00", [42 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_read_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.48, ptr @.str.2, i32 1956, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"kvaser_usb_hydra_read_bulk_callback\00", [60 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_read_bulk_callback._entry_ptr = internal global ptr @kvaser_usb_hydra_read_bulk_callback._entry, section ".printk_index", align 4
@kvaser_usb_hydra_read_bulk_callback._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.48, ptr @.str.2, i32 1988, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_read_bulk_callback._entry_ptr.50 = internal global ptr @kvaser_usb_hydra_read_bulk_callback._entry.49, section ".printk_index", align 4
@kvaser_usb_hydra_handle_cmd_ext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 1361, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unhandled extended command (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"kvaser_usb_hydra_handle_cmd_ext\00", [32 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_handle_cmd_ext._entry_ptr = internal global ptr @kvaser_usb_hydra_handle_cmd_ext._entry, section ".printk_index", align 4
@kvaser_usb_hydra_net_priv_from_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 505, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid channel number (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"kvaser_usb_hydra_net_priv_from_cmd\00", [61 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_net_priv_from_cmd._entry_ptr = internal global ptr @kvaser_usb_hydra_net_priv_from_cmd._entry, section ".printk_index", align 4
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No memory left for err_skb\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ERR_ACTIVE but err tx=%u or rx=%u >=128\0A\00", [55 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_handle_cmd_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 1342, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unhandled command (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"kvaser_usb_hydra_handle_cmd_std\00", [32 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_handle_cmd_std._entry_ptr = internal global ptr @kvaser_usb_hydra_handle_cmd_std._entry, section ".printk_index", align 4
@kvaser_usb_hydra_error_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 998, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Received CAN error event for cmd_no (%u)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kvaser_usb_hydra_error_event\00", [35 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_error_event._entry_ptr = internal global ptr @kvaser_usb_hydra_error_event._entry, section ".printk_index", align 4
@kvaser_usb_hydra_error_event._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 1004, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unhandled error event (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_error_event._entry_ptr.63 = internal global ptr @kvaser_usb_hydra_error_event._entry.61, section ".printk_index", align 4
@kvaser_usb_hydra_error_event_parameter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 953, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CMD_START_CHIP_REQ error in parameter\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"kvaser_usb_hydra_error_event_parameter\00", [57 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_error_event_parameter._entry_ptr = internal global ptr @kvaser_usb_hydra_error_event_parameter._entry, section ".printk_index", align 4
@kvaser_usb_hydra_error_event_parameter._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 958, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CMD_STOP_CHIP_REQ error in parameter\0A\00", [58 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_error_event_parameter._entry_ptr.68 = internal global ptr @kvaser_usb_hydra_error_event_parameter._entry.66, section ".printk_index", align 4
@kvaser_usb_hydra_error_event_parameter._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.2, i32 963, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CMD_FLUSH_QUEUE error in parameter\0A\00", [60 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_error_event_parameter._entry_ptr.71 = internal global ptr @kvaser_usb_hydra_error_event_parameter._entry.69, section ".printk_index", align 4
@kvaser_usb_hydra_error_event_parameter._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.2, i32 968, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Set bittiming failed. Error in parameter\0A\00", [54 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_error_event_parameter._entry_ptr.74 = internal global ptr @kvaser_usb_hydra_error_event_parameter._entry.72, section ".printk_index", align 4
@kvaser_usb_hydra_error_event_parameter._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.65, ptr @.str.2, i32 973, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Set data bittiming failed. Error in parameter\0A\00", [49 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_error_event_parameter._entry_ptr.77 = internal global ptr @kvaser_usb_hydra_error_event_parameter._entry.75, section ".printk_index", align 4
@kvaser_usb_hydra_error_event_parameter._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.65, ptr @.str.2, i32 979, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unhandled parameter error event cmd_no (%u)\0A\00", [51 x i8] zeroinitializer }, align 32
@kvaser_usb_hydra_error_event_parameter._entry_ptr.80 = internal global ptr @kvaser_usb_hydra_error_event_parameter._entry.78, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 12, i64 64, i64 65, i64 66, i64 67, i64 68, i64 97]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.83 = internal global [12 x i64] [i64 10, i64 8, i64 20, i64 27, i64 29, i64 45, i64 50, i64 66, i64 70, i64 85, i64 106, i64 255]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 8, i64 225, i64 226]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 9]
@__sancov_gen_cov_switch_values.86 = internal global [7 x i64] [i64 5, i64 16, i64 16, i64 26, i64 28, i64 48, i64 69]
@___asan_gen_.87 = private unnamed_addr constant [25 x i8] c"kvaser_usb_hydra_dev_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2021, i32 33 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 547, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1647, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1651, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1661, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1663, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1670, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1672, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 608, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 632, i32 5 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 662, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 682, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1733, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1740, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [30 x i8] c"kvaser_usb_hydra_dev_cfg_kcan\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2041, i32 40 }
@___asan_gen_.201 = private unnamed_addr constant [28 x i8] c"kvaser_usb_hydra_dev_cfg_rt\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2058, i32 40 }
@___asan_gen_.204 = private unnamed_addr constant [31 x i8] c"kvaser_usb_hydra_dev_cfg_flexc\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2050, i32 40 }
@___asan_gen_.207 = private unnamed_addr constant [34 x i8] c"kvaser_usb_hydra_kcan_bittiming_c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 366, i32 41 }
@___asan_gen_.210 = private unnamed_addr constant [32 x i8] c"kvaser_usb_hydra_rt_bittiming_c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 390, i32 41 }
@___asan_gen_.213 = private unnamed_addr constant [33 x i8] c"kvaser_usb_hydra_rtd_bittiming_c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 402, i32 41 }
@___asan_gen_.216 = private unnamed_addr constant [35 x i8] c"kvaser_usb_hydra_flexc_bittiming_c\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 378, i32 41 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1794, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1806, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1817, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1827, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 771, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1844, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 87, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1956, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1988, i32 5 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1360, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 504, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1093, i32 23 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 856, i32 9 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1341, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 996, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1002, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 952, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 957, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 962, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 967, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 972, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.358 = private constant [53 x i8] c"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 977, i32 3 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @kvaser_usb_hydra_error_event._entry, ptr @kvaser_usb_hydra_error_event._entry.61, ptr @kvaser_usb_hydra_error_event._entry_ptr, ptr @kvaser_usb_hydra_error_event._entry_ptr.63, ptr @kvaser_usb_hydra_error_event_parameter._entry, ptr @kvaser_usb_hydra_error_event_parameter._entry.66, ptr @kvaser_usb_hydra_error_event_parameter._entry.69, ptr @kvaser_usb_hydra_error_event_parameter._entry.72, ptr @kvaser_usb_hydra_error_event_parameter._entry.75, ptr @kvaser_usb_hydra_error_event_parameter._entry.78, ptr @kvaser_usb_hydra_error_event_parameter._entry_ptr, ptr @kvaser_usb_hydra_error_event_parameter._entry_ptr.68, ptr @kvaser_usb_hydra_error_event_parameter._entry_ptr.71, ptr @kvaser_usb_hydra_error_event_parameter._entry_ptr.74, ptr @kvaser_usb_hydra_error_event_parameter._entry_ptr.77, ptr @kvaser_usb_hydra_error_event_parameter._entry_ptr.80, ptr @kvaser_usb_hydra_get_capabilities._entry, ptr @kvaser_usb_hydra_get_capabilities._entry.35, ptr @kvaser_usb_hydra_get_capabilities._entry.38, ptr @kvaser_usb_hydra_get_capabilities._entry.41, ptr @kvaser_usb_hydra_get_capabilities._entry_ptr, ptr @kvaser_usb_hydra_get_capabilities._entry_ptr.37, ptr @kvaser_usb_hydra_get_capabilities._entry_ptr.40, ptr @kvaser_usb_hydra_get_capabilities._entry_ptr.43, ptr @kvaser_usb_hydra_get_single_capability._entry, ptr @kvaser_usb_hydra_get_single_capability._entry_ptr, ptr @kvaser_usb_hydra_get_software_details._entry, ptr @kvaser_usb_hydra_get_software_details._entry.29, ptr @kvaser_usb_hydra_get_software_details._entry_ptr, ptr @kvaser_usb_hydra_get_software_details._entry_ptr.32, ptr @kvaser_usb_hydra_handle_cmd_ext._entry, ptr @kvaser_usb_hydra_handle_cmd_ext._entry_ptr, ptr @kvaser_usb_hydra_handle_cmd_std._entry, ptr @kvaser_usb_hydra_handle_cmd_std._entry_ptr, ptr @kvaser_usb_hydra_init_card._entry, ptr @kvaser_usb_hydra_init_card._entry.12, ptr @kvaser_usb_hydra_init_card._entry_ptr, ptr @kvaser_usb_hydra_init_card._entry_ptr.14, ptr @kvaser_usb_hydra_map_channel_resp._entry, ptr @kvaser_usb_hydra_map_channel_resp._entry.23, ptr @kvaser_usb_hydra_map_channel_resp._entry_ptr, ptr @kvaser_usb_hydra_map_channel_resp._entry_ptr.26, ptr @kvaser_usb_hydra_net_priv_from_cmd._entry, ptr @kvaser_usb_hydra_net_priv_from_cmd._entry_ptr, ptr @kvaser_usb_hydra_read_bulk_callback._entry, ptr @kvaser_usb_hydra_read_bulk_callback._entry.49, ptr @kvaser_usb_hydra_read_bulk_callback._entry_ptr, ptr @kvaser_usb_hydra_read_bulk_callback._entry_ptr.50, ptr @kvaser_usb_hydra_send_simple_cmd._entry, ptr @kvaser_usb_hydra_send_simple_cmd._entry_ptr, ptr @kvaser_usb_hydra_wait_cmd._entry, ptr @kvaser_usb_hydra_wait_cmd._entry.18, ptr @kvaser_usb_hydra_wait_cmd._entry_ptr, ptr @kvaser_usb_hydra_wait_cmd._entry_ptr.20, ptr @kvaser_usb_hydra_dev_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @kvaser_usb_hydra_init_card.__key, ptr @.str.5, ptr @kvaser_usb_hydra_init_card.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @kvaser_usb_hydra_wait_cmd._rs, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @kvaser_usb_hydra_dev_cfg_kcan, ptr @kvaser_usb_hydra_dev_cfg_rt, ptr @kvaser_usb_hydra_dev_cfg_flexc, ptr @kvaser_usb_hydra_kcan_bittiming_c, ptr @kvaser_usb_hydra_rt_bittiming_c, ptr @kvaser_usb_hydra_rtd_bittiming_c, ptr @kvaser_usb_hydra_flexc_bittiming_c, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @init_completion.__key, ptr @.str.47, ptr @.str.48, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_dev_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_send_simple_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_init_card.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_init_card.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_init_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_init_card._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_wait_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_wait_cmd._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_wait_cmd._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_map_channel_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_map_channel_resp._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_get_software_details._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_get_software_details._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_dev_cfg_kcan to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_dev_cfg_rt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_dev_cfg_flexc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_kcan_bittiming_c to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_rt_bittiming_c to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_rtd_bittiming_c to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_flexc_bittiming_c to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_get_capabilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_get_capabilities._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_get_capabilities._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_get_capabilities._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_get_single_capability._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_read_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_read_bulk_callback._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_handle_cmd_ext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_net_priv_from_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_handle_cmd_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_error_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_error_event._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_error_event_parameter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_error_event_parameter._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_error_event_parameter._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_error_event_parameter._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_error_event_parameter._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_hydra_error_event_parameter._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kvaser_usb_hydra_set_mode(ptr nocapture noundef readnone %netdev, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  %spec.store.select = select i1 %cond, i32 0, i32 -95
  ret i32 %spec.store.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_hydra_set_bittiming(ptr nocapture noundef readonly %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %netdev, i32 2620
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %prop_seg = getelementptr i8, ptr %netdev, i32 2352
  %2 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prop_seg, align 4
  %phase_seg1 = getelementptr i8, ptr %netdev, i32 2356
  %4 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phase_seg1, align 4
  %phase_seg2 = getelementptr i8, ptr %netdev, i32 2360
  %6 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phase_seg2, align 4
  %sjw2 = getelementptr i8, ptr %netdev, i32 2364
  %8 = ptrtoint ptr %sjw2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sjw2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 32) #12
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bittiming = getelementptr i8, ptr %netdev, i32 2340
  %add = add i32 %5, %3
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %call7.i.i.i, align 8
  %12 = ptrtoint ptr %bittiming to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bittiming, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %15, align 4
  %conv = trunc i32 %9 to i8
  %sjw5 = getelementptr inbounds %struct.kvaser_cmd_set_busparams, ptr %15, i32 0, i32 3
  %17 = ptrtoint ptr %sjw5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %sjw5, align 2
  %conv6 = trunc i32 %add to i8
  %tseg17 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %tseg17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv6, ptr %tseg17, align 8
  %conv8 = trunc i32 %7 to i8
  %tseg29 = getelementptr inbounds %struct.kvaser_cmd_set_busparams, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %tseg29 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv8, ptr %tseg29, align 1
  %nsamples = getelementptr inbounds %struct.kvaser_cmd_set_busparams, ptr %15, i32 0, i32 4
  %20 = ptrtoint ptr %nsamples to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %nsamples, align 1
  %21 = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 11, i32 2
  %channel = getelementptr i8, ptr %netdev, i32 2628
  %22 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr [5 x i8], ptr %21, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  %he_addr.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %he_addr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %he_addr.i, align 1
  %28 = and i8 %27, -64
  %29 = and i8 %25, 63
  %or7.i = or i8 %28, %29
  store i8 %or7.i, ptr %he_addr.i, align 1
  %transid_lock.i = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 11, i32 2, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %transid_lock.i) #9
  %transid6.i = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 11, i32 2, i32 0, i32 3
  %30 = ptrtoint ptr %transid6.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %transid6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %31)
  %cmp8.i = icmp ugt i16 %31, 254
  %inc.i = add i16 %31, 1
  %transid.0.i = select i1 %cmp8.i, i16 1, i16 %inc.i
  %32 = ptrtoint ptr %transid6.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %transid.0.i, ptr %transid6.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %transid_lock.i, i32 noundef %call3.i) #9
  %33 = tail call i16 @llvm.bswap.i16(i16 %transid.0.i) #9
  %transid2.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %transid2.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %transid2.i, align 2
  %35 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp.i = icmp eq i8 %36, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.kvaser_usb_hydra_cmd_size.exit_crit_edge

if.end.kvaser_usb_hydra_cmd_size.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_cmd_size.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %15, align 4
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #9
  %conv2.i = zext i16 %39 to i32
  br label %kvaser_usb_hydra_cmd_size.exit

kvaser_usb_hydra_cmd_size.exit:                   ; preds = %if.then.i, %if.end.kvaser_usb_hydra_cmd_size.exit_crit_edge
  %ret.0.i = phi i32 [ %conv2.i, %if.then.i ], [ 32, %if.end.kvaser_usb_hydra_cmd_size.exit_crit_edge ]
  %call12 = tail call i32 @kvaser_usb_send_cmd(ptr noundef %1, ptr noundef nonnull %call7.i.i.i, i32 noundef %ret.0.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %kvaser_usb_hydra_cmd_size.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %kvaser_usb_hydra_cmd_size.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_hydra_set_data_bittiming(ptr nocapture noundef readonly %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %netdev, i32 2620
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %prop_seg = getelementptr i8, ptr %netdev, i32 2384
  %2 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prop_seg, align 4
  %phase_seg1 = getelementptr i8, ptr %netdev, i32 2388
  %4 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phase_seg1, align 4
  %phase_seg2 = getelementptr i8, ptr %netdev, i32 2392
  %6 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phase_seg2, align 4
  %sjw2 = getelementptr i8, ptr %netdev, i32 2396
  %8 = ptrtoint ptr %sjw2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sjw2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 32) #12
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_bittiming = getelementptr i8, ptr %netdev, i32 2372
  %add = add i32 %5, %3
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 69, ptr %call7.i.i.i, align 8
  %12 = ptrtoint ptr %data_bittiming to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_bittiming, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 1
  %bitrate_d = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %bitrate_d to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %bitrate_d, align 8
  %conv = trunc i32 %9 to i8
  %sjw_d = getelementptr inbounds %struct.kvaser_cmd_set_busparams, ptr %15, i32 0, i32 9
  %17 = ptrtoint ptr %sjw_d to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %sjw_d, align 2
  %conv4 = trunc i32 %add to i8
  %tseg1_d = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %tseg1_d to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv4, ptr %tseg1_d, align 4
  %conv5 = trunc i32 %7 to i8
  %tseg2_d = getelementptr inbounds %struct.kvaser_cmd_set_busparams, ptr %15, i32 0, i32 8
  %19 = ptrtoint ptr %tseg2_d to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv5, ptr %tseg2_d, align 1
  %nsamples_d = getelementptr inbounds %struct.kvaser_cmd_set_busparams, ptr %15, i32 0, i32 10
  %20 = ptrtoint ptr %nsamples_d to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %nsamples_d, align 1
  %ctrlmode = getelementptr i8, ptr %netdev, i32 2476
  %21 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctrlmode, align 4
  %and = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.if.end16_crit_edge, label %if.then8

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and11 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %canfd_mode14 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 4
  %. = select i1 %tobool12.not, i8 1, i8 2
  %23 = ptrtoint ptr %canfd_mode14 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %., ptr %canfd_mode14, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then8, %if.end.if.end16_crit_edge
  %24 = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 11, i32 2
  %channel = getelementptr i8, ptr %netdev, i32 2628
  %25 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr [5 x i8], ptr %24, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %he_addr.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %he_addr.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %he_addr.i, align 1
  %31 = and i8 %30, -64
  %32 = and i8 %28, 63
  %or7.i = or i8 %31, %32
  store i8 %or7.i, ptr %he_addr.i, align 1
  %transid_lock.i = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 11, i32 2, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %transid_lock.i) #9
  %transid6.i = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 11, i32 2, i32 0, i32 3
  %33 = ptrtoint ptr %transid6.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %transid6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %34)
  %cmp8.i = icmp ugt i16 %34, 254
  %inc.i = add i16 %34, 1
  %transid.0.i = select i1 %cmp8.i, i16 1, i16 %inc.i
  %35 = ptrtoint ptr %transid6.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %transid.0.i, ptr %transid6.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %transid_lock.i, i32 noundef %call3.i) #9
  %36 = tail call i16 @llvm.bswap.i16(i16 %transid.0.i) #9
  %transid2.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %transid2.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %transid2.i, align 2
  %38 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %39)
  %cmp.i = icmp eq i8 %39, -1
  br i1 %cmp.i, label %if.then.i, label %if.end16.kvaser_usb_hydra_cmd_size.exit_crit_edge

if.end16.kvaser_usb_hydra_cmd_size.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_cmd_size.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %15, align 4
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #9
  %conv2.i = zext i16 %42 to i32
  br label %kvaser_usb_hydra_cmd_size.exit

kvaser_usb_hydra_cmd_size.exit:                   ; preds = %if.then.i, %if.end16.kvaser_usb_hydra_cmd_size.exit_crit_edge
  %ret.0.i = phi i32 [ %conv2.i, %if.then.i ], [ 32, %if.end16.kvaser_usb_hydra_cmd_size.exit_crit_edge ]
  %call19 = tail call i32 @kvaser_usb_send_cmd(ptr noundef %1, ptr noundef nonnull %call7.i.i.i, i32 noundef %ret.0.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %kvaser_usb_hydra_cmd_size.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %kvaser_usb_hydra_cmd_size.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_hydra_get_berr_counter(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %bec) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %netdev, i32 2620
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %channel = getelementptr i8, ptr %netdev, i32 2628
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %call1 = tail call fastcc i32 @kvaser_usb_hydra_send_simple_cmd(ptr noundef %1, i8 noundef zeroext 19, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bec2 = getelementptr i8, ptr %netdev, i32 2616
  %4 = ptrtoint ptr %bec2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bec2, align 4
  %6 = ptrtoint ptr %bec to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %bec, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_hydra_setup_endpoints(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp51.not = icmp eq i8 %5, 0
  br i1 %cmp51.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %bulk_in = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 5
  %bulk_out = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %endpoint, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %7, i32 %i.052
  %8 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bulk_in, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %10 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bmAttributes.i.i, align 1
  %12 = and i8 %11, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp.i.not.i = icmp eq i8 %12, 2
  br i1 %cmp.i.not.i, label %usb_endpoint_is_bulk_in.exit, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

usb_endpoint_is_bulk_in.exit:                     ; preds = %land.lhs.true
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %13 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool3.not = icmp sgt i8 %14, -1
  br i1 %tobool3.not, label %usb_endpoint_is_bulk_in.exit.if.end_crit_edge, label %land.lhs.true4

usb_endpoint_is_bulk_in.exit.if.end_crit_edge:    ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true4:                                   ; preds = %usb_endpoint_is_bulk_in.exit
  %15 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %16)
  %cmp6 = icmp eq i8 %16, -126
  br i1 %cmp6, label %if.then, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %bulk_in to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx, ptr %bulk_in, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4.if.end_crit_edge, %usb_endpoint_is_bulk_in.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %18 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bulk_out, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %land.lhs.true10, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true10:                                  ; preds = %if.end
  %bmAttributes.i.i44 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %20 = ptrtoint ptr %bmAttributes.i.i44 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bmAttributes.i.i44, align 1
  %22 = and i8 %21, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp.i.not.i45 = icmp eq i8 %22, 2
  br i1 %cmp.i.not.i45, label %usb_endpoint_is_bulk_out.exit, label %land.lhs.true10.if.end20_crit_edge

land.lhs.true10.if.end20_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

usb_endpoint_is_bulk_out.exit:                    ; preds = %land.lhs.true10
  %bEndpointAddress.i.i46 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %23 = ptrtoint ptr %bEndpointAddress.i.i46 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bEndpointAddress.i.i46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool12.not = icmp slt i8 %24, 0
  br i1 %tobool12.not, label %usb_endpoint_is_bulk_out.exit.if.end20_crit_edge, label %land.lhs.true13

usb_endpoint_is_bulk_out.exit.if.end20_crit_edge: ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true13:                                  ; preds = %usb_endpoint_is_bulk_out.exit
  %25 = ptrtoint ptr %bEndpointAddress.i.i46 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bEndpointAddress.i.i46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp16 = icmp eq i8 %26, 2
  br i1 %cmp16, label %if.then18, label %land.lhs.true13.if.end20_crit_edge

land.lhs.true13.if.end20_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %bulk_out to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx, ptr %bulk_out, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true13.if.end20_crit_edge, %usb_endpoint_is_bulk_out.exit.if.end20_crit_edge, %land.lhs.true10.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %28 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bulk_in, align 4
  %tobool22.not = icmp eq ptr %29, null
  br i1 %tobool22.not, label %if.end20.for.inc_crit_edge, label %land.lhs.true23

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true23:                                  ; preds = %if.end20
  %30 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bulk_out, align 4
  %tobool25.not = icmp eq ptr %31, null
  br i1 %tobool25.not, label %land.lhs.true23.for.inc_crit_edge, label %land.lhs.true23.cleanup_crit_edge

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true23.for.inc_crit_edge, %if.end20.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.052, 1
  %32 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %33 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -19, %for.inc.cleanup_crit_edge ], [ 0, %land.lhs.true23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_hydra_init_card(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2
  %transid = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 3
  %1 = ptrtoint ptr %transid to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %transid, align 4
  %transid_lock = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %transid_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @kvaser_usb_hydra_init_card.__key, i16 noundef signext 3) #9
  %usb_rx_leftover = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 5
  %usb_rx_leftover_lock = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 4
  %2 = call ptr @memset(ptr %usb_rx_leftover, i32 0, i32 129)
  tail call void @__raw_spin_lock_init(ptr noundef %usb_rx_leftover_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @kvaser_usb_hydra_init_card.__key.6, i16 noundef signext 3) #9
  %3 = call ptr @memset(ptr %0, i32 62, i32 5)
  %sysdbg_he = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %sysdbg_he to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %sysdbg_he, align 1
  %call8 = tail call fastcc i32 @kvaser_usb_hydra_map_channel(ptr noundef %dev, i16 noundef zeroext 64, i8 noundef zeroext 0, ptr noundef nonnull @.str.8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %for.inc, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.end11:                                         ; preds = %for.inc.3.do.end11_crit_edge, %for.inc.2.do.end11_crit_edge, %for.inc.1.do.end11_crit_edge, %for.inc.do.end11_crit_edge, %entry.do.end11_crit_edge
  %i.042.lcssa = phi i32 [ 0, %entry.do.end11_crit_edge ], [ 1, %for.inc.do.end11_crit_edge ], [ 2, %for.inc.1.do.end11_crit_edge ], [ 3, %for.inc.2.do.end11_crit_edge ], [ 4, %for.inc.3.do.end11_crit_edge ]
  %call8.lcssa = phi i32 [ %call8, %entry.do.end11_crit_edge ], [ %call8.1, %for.inc.do.end11_crit_edge ], [ %call8.2, %for.inc.1.do.end11_crit_edge ], [ %call8.3, %for.inc.2.do.end11_crit_edge ], [ %call8.4, %for.inc.3.do.end11_crit_edge ]
  %intf = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.9, i32 noundef %i.042.lcssa) #13
  br label %cleanup

for.inc:                                          ; preds = %entry
  %call8.1 = tail call fastcc i32 @kvaser_usb_hydra_map_channel(ptr noundef %dev, i16 noundef zeroext 65, i8 noundef zeroext 1, ptr noundef nonnull @.str.8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %tobool.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.do.end11_crit_edge

for.inc.do.end11_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

for.inc.1:                                        ; preds = %for.inc
  %call8.2 = tail call fastcc i32 @kvaser_usb_hydra_map_channel(ptr noundef %dev, i16 noundef zeroext 66, i8 noundef zeroext 2, ptr noundef nonnull @.str.8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2)
  %tobool.not.2 = icmp eq i32 %call8.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.do.end11_crit_edge

for.inc.1.do.end11_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

for.inc.2:                                        ; preds = %for.inc.1
  %call8.3 = tail call fastcc i32 @kvaser_usb_hydra_map_channel(ptr noundef %dev, i16 noundef zeroext 67, i8 noundef zeroext 3, ptr noundef nonnull @.str.8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.3)
  %tobool.not.3 = icmp eq i32 %call8.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.do.end11_crit_edge

for.inc.2.do.end11_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

for.inc.3:                                        ; preds = %for.inc.2
  %call8.4 = tail call fastcc i32 @kvaser_usb_hydra_map_channel(ptr noundef %dev, i16 noundef zeroext 68, i8 noundef zeroext 4, ptr noundef nonnull @.str.8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.4)
  %tobool.not.4 = icmp eq i32 %call8.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.do.end11_crit_edge

for.inc.3.do.end11_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

for.inc.4:                                        ; preds = %for.inc.3
  %call13 = tail call fastcc i32 @kvaser_usb_hydra_map_channel(ptr noundef %dev, i16 noundef zeroext 97, i8 noundef zeroext 0, ptr noundef nonnull @.str.11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.inc.4.cleanup_crit_edge, label %do.end18

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end18:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  %intf19 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %intf19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf19, align 4
  %dev20 = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.13) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %for.inc.4.cleanup_crit_edge, %do.end11
  %retval.0 = phi i32 [ %call8.lcssa, %do.end11 ], [ %call13, %do.end18 ], [ 0, %for.inc.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_hydra_get_software_info(ptr noundef %dev) #1 align 64 {
entry:
  %cmd = alloca %struct.kvaser_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #9
  %0 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 2
  %call = tail call fastcc i32 @kvaser_usb_hydra_send_simple_cmd(ptr noundef %dev, i8 noundef zeroext 38, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memset(ptr %cmd, i32 0, i32 32)
  %call1 = call fastcc i32 @kvaser_usb_hydra_wait_cmd(ptr noundef %dev, i8 noundef zeroext 39, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %0, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = tail call i16 @llvm.umin.i16(i16 %4, i16 128)
  %cond = zext i16 %5 to i32
  %max_tx_urbs = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %max_tx_urbs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %max_tx_urbs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_hydra_get_software_details(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card_data1 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #12
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %kvaser_usb_hydra_cmd_size.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

kvaser_usb_hydra_cmd_size.exit:                   ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -54, ptr %call7.i.i.i, align 8
  %2 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %2, align 4
  %he_addr.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %he_addr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %he_addr.i, align 1
  %6 = and i8 %5, -64
  %or7.i = or i8 %6, 62
  store i8 %or7.i, ptr %he_addr.i, align 1
  %transid_lock.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %transid_lock.i) #9
  %transid6.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 3
  %7 = ptrtoint ptr %transid6.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %transid6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %8)
  %cmp8.i = icmp ugt i16 %8, 254
  %inc.i = add i16 %8, 1
  %transid.0.i = select i1 %cmp8.i, i16 1, i16 %inc.i
  %9 = ptrtoint ptr %transid6.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %transid.0.i, ptr %transid6.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %transid_lock.i, i32 noundef %call3.i) #9
  %10 = tail call i16 @llvm.bswap.i16(i16 %transid.0.i) #9
  %transid2.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %transid2.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %transid2.i, align 2
  %call4 = tail call i32 @kvaser_usb_send_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %kvaser_usb_hydra_cmd_size.exit.end_crit_edge

kvaser_usb_hydra_cmd_size.exit.end_crit_edge:     ; preds = %kvaser_usb_hydra_cmd_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end7:                                          ; preds = %kvaser_usb_hydra_cmd_size.exit
  %call8 = tail call fastcc i32 @kvaser_usb_hydra_wait_cmd(ptr noundef %dev, i8 noundef zeroext -53, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.end_crit_edge

if.end7.end_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end11:                                         ; preds = %if.end7
  %sw_version = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %sw_version to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sw_version, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %fw_version = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 8
  %15 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %fw_version, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %2, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %and = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %19 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %intf, align 4
  %dev14 = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.27) #13
  br label %end

if.end15:                                         ; preds = %if.end11
  %and16 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end24_crit_edge, label %do.end21

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %intf22 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %21 = ptrtoint ptr %intf22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %intf22, align 4
  %dev23 = getelementptr inbounds %struct.usb_interface, ptr %22, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev23, ptr noundef nonnull @.str.30) #13
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %if.end15.if.end24_crit_edge
  %and25 = and i32 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end28_crit_edge, label %if.then27

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %capabilities = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %capabilities, align 4
  %or = or i32 %24, 2
  store i32 %or, ptr %capabilities, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24.if.end28_crit_edge
  %and29 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end34_crit_edge, label %if.then31

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %capabilities32 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 1
  %25 = ptrtoint ptr %capabilities32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %capabilities32, align 4
  %or33 = or i32 %26, 4
  store i32 %or33, ptr %capabilities32, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end28.if.end34_crit_edge
  %and35 = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end39_crit_edge, label %if.then37

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %card_data1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %card_data1, align 4
  %or38 = or i32 %28, 32
  store i32 %or38, ptr %card_data1, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end34.if.end39_crit_edge
  %and40 = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end45_crit_edge, label %if.then42

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %card_data1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %card_data1, align 4
  %or44 = or i32 %30, 128
  store i32 %or44, ptr %card_data1, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end39.if.end45_crit_edge
  %and46 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %cfg = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 4
  %31 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kvaser_usb_hydra_dev_cfg_kcan, ptr %cfg, align 4
  br label %end

if.else:                                          ; preds = %if.end45
  %and49 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %cfg54 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 4
  br i1 %tobool50.not, label %if.else53, label %if.then51

if.then51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %cfg54 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @kvaser_usb_hydra_dev_cfg_rt, ptr %cfg54, align 4
  br label %end

if.else53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %cfg54 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @kvaser_usb_hydra_dev_cfg_flexc, ptr %cfg54, align 4
  br label %end

end:                                              ; preds = %if.else53, %if.then51, %if.then48, %do.end, %if.end7.end_crit_edge, %kvaser_usb_hydra_cmd_size.exit.end_crit_edge
  %err.0 = phi i32 [ %call4, %kvaser_usb_hydra_cmd_size.exit.end_crit_edge ], [ %call8, %if.end7.end_crit_edge ], [ -22, %do.end ], [ 0, %if.then48 ], [ 0, %if.then51 ], [ 0, %if.else53 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_hydra_get_card_info(ptr noundef %dev) #1 align 64 {
entry:
  %cmd = alloca %struct.kvaser_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #9
  %0 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 8
  %call = tail call fastcc i32 @kvaser_usb_hydra_send_simple_cmd(ptr noundef %dev, i8 noundef zeroext 34, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memset(ptr %cmd, i32 0, i32 32)
  %call1 = call fastcc i32 @kvaser_usb_hydra_wait_cmd(ptr noundef %dev, i8 noundef zeroext 35, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %0, align 1
  %conv = zext i8 %3 to i32
  %nchannels5 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %nchannels5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %nchannels5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp = icmp ugt i8 %3, 5
  %. = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %., %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_hydra_get_capabilities(ptr noundef %dev) #1 align 64 {
entry:
  %status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #9
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %status, align 2, !annotation !170
  %capabilities = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 1
  %1 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %capabilities, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.33) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @kvaser_usb_hydra_get_single_capability(ptr noundef %dev, i16 noundef zeroext 2, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool5.not = icmp eq i16 %6, 0
  br i1 %tobool5.not, label %if.end4.if.end12_crit_edge, label %do.end9

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %intf10 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %intf10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf10, align 4
  %dev11 = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  %conv = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev11, ptr noundef nonnull @.str.36, i32 noundef %conv) #13
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.end4.if.end12_crit_edge
  %call13 = call fastcc i32 @kvaser_usb_hydra_get_single_capability(ptr noundef %dev, i16 noundef zeroext 5, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool17.not = icmp eq i16 %10, 0
  br i1 %tobool17.not, label %if.end16.if.end25_crit_edge, label %do.end21

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %intf22 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %intf22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf22, align 4
  %dev23 = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  %conv24 = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev23, ptr noundef nonnull @.str.39, i32 noundef %conv24) #13
  br label %if.end25

if.end25:                                         ; preds = %do.end21, %if.end16.if.end25_crit_edge
  %call26 = call fastcc i32 @kvaser_usb_hydra_get_single_capability(ptr noundef %dev, i16 noundef zeroext 6, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool30.not = icmp eq i16 %14, 0
  br i1 %tobool30.not, label %if.end29.cleanup_crit_edge, label %do.end34

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %intf35 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %15 = ptrtoint ptr %intf35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %intf35, align 4
  %dev36 = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  %conv37 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev36, ptr noundef nonnull @.str.42, i32 noundef %conv37) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call, %if.end.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ 0, %do.end34 ], [ 0, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_hydra_set_opt_mode(ptr nocapture noundef readonly %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 22
  %2 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrlmode, align 4
  %and = and i32 %3, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and)
  %cmp = icmp eq i32 %and, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 3
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.46) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 32) #12
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 21, ptr %call7.i.i.i, align 8
  %8 = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 11, i32 2
  %channel = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 4
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr [5 x i8], ptr %8, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %he_addr.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %he_addr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %he_addr.i, align 1
  %15 = and i8 %14, -64
  %16 = and i8 %12, 63
  %or7.i = or i8 %15, %16
  store i8 %or7.i, ptr %he_addr.i, align 1
  %transid_lock.i = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 11, i32 2, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %transid_lock.i) #9
  %transid6.i = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 11, i32 2, i32 0, i32 3
  %17 = ptrtoint ptr %transid6.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %transid6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %18)
  %cmp8.i = icmp ugt i16 %18, 254
  %inc.i = add i16 %18, 1
  %transid.0.i = select i1 %cmp8.i, i16 1, i16 %inc.i
  %19 = ptrtoint ptr %transid6.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %transid.0.i, ptr %transid6.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %transid_lock.i, i32 noundef %call3.i) #9
  %20 = tail call i16 @llvm.bswap.i16(i16 %transid.0.i) #9
  %transid2.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %transid2.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %transid2.i, align 2
  %22 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctrlmode, align 4
  %and7 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %spec.select = select i1 %tobool8.not, i8 1, i8 2
  %24 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %spec.select, ptr %24, align 4
  %26 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp.i = icmp eq i8 %27, -1
  br i1 %cmp.i, label %if.then.i, label %if.end3.kvaser_usb_hydra_cmd_size.exit_crit_edge

if.end3.kvaser_usb_hydra_cmd_size.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_cmd_size.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %24, align 4
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #9
  %conv2.i = zext i16 %30 to i32
  br label %kvaser_usb_hydra_cmd_size.exit

kvaser_usb_hydra_cmd_size.exit:                   ; preds = %if.then.i, %if.end3.kvaser_usb_hydra_cmd_size.exit_crit_edge
  %ret.0.i = phi i32 [ %conv2.i, %if.then.i ], [ 32, %if.end3.kvaser_usb_hydra_cmd_size.exit_crit_edge ]
  %call13 = tail call i32 @kvaser_usb_send_cmd(ptr noundef %1, ptr noundef nonnull %call7.i.i.i, i32 noundef %ret.0.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %kvaser_usb_hydra_cmd_size.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call13, %kvaser_usb_hydra_cmd_size.exit ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_hydra_start_chip(ptr noundef %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %start_comp = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %start_comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %start_comp, align 4
  %wait.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @init_completion.__key) #9
  %dev = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %channel = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 4
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %call = tail call fastcc i32 @kvaser_usb_hydra_send_simple_cmd(ptr noundef %2, i8 noundef zeroext 26, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @wait_for_completion_timeout(ptr noundef %start_comp, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool4.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_hydra_stop_chip(ptr noundef %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stop_comp = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %stop_comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %stop_comp, align 4
  %wait.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @init_completion.__key) #9
  %state = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 21
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %state, align 4
  %dev = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %channel = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 4
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %call = tail call fastcc i32 @kvaser_usb_hydra_send_simple_cmd(ptr noundef %3, i8 noundef zeroext 28, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @wait_for_completion_timeout(ptr noundef %stop_comp, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool4.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_hydra_flush_queue(ptr noundef %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flush_comp = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %flush_comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %flush_comp, align 4
  %wait.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @init_completion.__key) #9
  %dev = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %channel = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 4
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %call = tail call fastcc i32 @kvaser_usb_hydra_send_simple_cmd(ptr noundef %2, i8 noundef zeroext 48, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @wait_for_completion_timeout(ptr noundef %flush_comp, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool4.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kvaser_usb_hydra_read_bulk_callback(ptr noundef %dev, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_rx_leftover_lock2 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %usb_rx_leftover_lock2) #9
  %usb_rx_leftover_len7 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 6
  %0 = ptrtoint ptr %usb_rx_leftover_len7 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %usb_rx_leftover_len7, align 4
  %conv8 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then:                                          ; preds = %entry
  %usb_rx_leftover = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 5
  %2 = ptrtoint ptr %usb_rx_leftover to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usb_rx_leftover, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.i = icmp eq i8 %3, -1
  br i1 %cmp.i, label %if.then.i, label %if.then.kvaser_usb_hydra_cmd_size.exit_crit_edge

if.then.kvaser_usb_hydra_cmd_size.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_cmd_size.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %len.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %len.i, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #9
  %conv2.i = zext i16 %6 to i32
  br label %kvaser_usb_hydra_cmd_size.exit

kvaser_usb_hydra_cmd_size.exit:                   ; preds = %if.then.i, %if.then.kvaser_usb_hydra_cmd_size.exit_crit_edge
  %ret.0.i = phi i32 [ %conv2.i, %if.then.i ], [ 32, %if.then.kvaser_usb_hydra_cmd_size.exit_crit_edge ]
  %sub = sub nsw i32 %ret.0.i, %conv8
  %7 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %len)
  %add = add i32 %7, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add)
  %cmp13 = icmp sgt i32 %add, 128
  br i1 %cmp13, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %kvaser_usb_hydra_cmd_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf, align 4
  %dev19 = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.19) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %usb_rx_leftover_lock2, i32 noundef %call4) #9
  br label %cleanup72

if.end:                                           ; preds = %kvaser_usb_hydra_cmd_size.exit
  %add.ptr = getelementptr i8, ptr %usb_rx_leftover, i32 %conv8
  %10 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %7)
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %ret.0.i)
  %cmp24 = icmp eq i32 %add, %ret.0.i
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @kvaser_usb_hydra_handle_cmd(ptr noundef %dev, ptr noundef %usb_rx_leftover)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast = trunc i32 %add to i8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then26
  %usb_rx_leftover_len.0 = phi i8 [ 0, %if.then26 ], [ %phi.cast, %if.else ]
  %11 = ptrtoint ptr %usb_rx_leftover_len7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %usb_rx_leftover_len.0, ptr %usb_rx_leftover_len7, align 4
  br label %if.end31

if.end31:                                         ; preds = %cleanup, %entry.if.end31_crit_edge
  %pos.1 = phi i32 [ %7, %cleanup ], [ 0, %entry.if.end31_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %usb_rx_leftover_lock2, i32 noundef %call4) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.1, i32 %len)
  %cmp32139 = icmp slt i32 %pos.1, %len
  br i1 %cmp32139, label %if.end31.while.body_crit_edge, label %if.end31.cleanup72_crit_edge

if.end31.cleanup72_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup72

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  br label %while.body

while.body:                                       ; preds = %if.end70.while.body_crit_edge, %if.end31.while.body_crit_edge
  %pos.2140 = phi i32 [ %add36, %if.end70.while.body_crit_edge ], [ %pos.1, %if.end31.while.body_crit_edge ]
  %add.ptr34 = getelementptr i8, ptr %buf, i32 %pos.2140
  %12 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp.i131 = icmp eq i8 %13, -1
  br i1 %cmp.i131, label %if.then.i134, label %while.body.kvaser_usb_hydra_cmd_size.exit136_crit_edge

while.body.kvaser_usb_hydra_cmd_size.exit136_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_cmd_size.exit136

if.then.i134:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %len.i132 = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %add.ptr34, i32 0, i32 1
  %14 = ptrtoint ptr %len.i132 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %len.i132, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #9
  %conv2.i133 = zext i16 %16 to i32
  br label %kvaser_usb_hydra_cmd_size.exit136

kvaser_usb_hydra_cmd_size.exit136:                ; preds = %if.then.i134, %while.body.kvaser_usb_hydra_cmd_size.exit136_crit_edge
  %ret.0.i135 = phi i32 [ %conv2.i133, %if.then.i134 ], [ 32, %while.body.kvaser_usb_hydra_cmd_size.exit136_crit_edge ]
  %add36 = add i32 %ret.0.i135, %pos.2140
  call void @__sanitizer_cov_trace_cmp4(i32 %add36, i32 %len)
  %cmp37 = icmp ugt i32 %add36, %len
  br i1 %cmp37, label %if.then39, label %if.end70

if.then39:                                        ; preds = %kvaser_usb_hydra_cmd_size.exit136
  %sub40 = sub i32 %len, %pos.2140
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub40)
  %cmp41 = icmp sgt i32 %sub40, 128
  br i1 %cmp41, label %do.end46, label %do.body51

do.end46:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %intf47 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %17 = ptrtoint ptr %intf47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %intf47, align 4
  %dev48 = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.19) #13
  br label %cleanup72

do.body51:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %usb_rx_leftover_lock2) #9
  %usb_rx_leftover63 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 5
  %19 = call ptr @memcpy(ptr %usb_rx_leftover63, ptr %add.ptr34, i32 %sub40)
  %conv66 = trunc i32 %sub40 to i8
  %20 = ptrtoint ptr %usb_rx_leftover_len7 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv66, ptr %usb_rx_leftover_len7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %usb_rx_leftover_lock2, i32 noundef %call58) #9
  br label %cleanup72

if.end70:                                         ; preds = %kvaser_usb_hydra_cmd_size.exit136
  tail call fastcc void @kvaser_usb_hydra_handle_cmd(ptr noundef %dev, ptr noundef %add.ptr34)
  %cmp32 = icmp slt i32 %add36, %len
  br i1 %cmp32, label %if.end70.while.body_crit_edge, label %if.end70.cleanup72_crit_edge

if.end70.cleanup72_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup72

if.end70.while.body_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup72:                                        ; preds = %if.end70.cleanup72_crit_edge, %do.body51, %do.end46, %if.end31.cleanup72_crit_edge, %cleanup.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @kvaser_usb_hydra_frame_to_cmd(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %cmd_len, i16 noundef zeroext %transid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %capabilities = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capabilities, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %data.i8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i8, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %len.i = getelementptr inbounds %struct.canfd_frame, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len.i, align 4
  %call.i = tail call zeroext i8 @can_fd_len2dlc(i8 noundef zeroext %7) #9
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %len.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 96) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %11 = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 11, i32 2
  %channel.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 4
  %12 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel.i, align 4
  %arrayidx.i = getelementptr [5 x i8], ptr %11, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %he_addr.i.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %he_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %he_addr.i.i, align 1
  %18 = and i8 %17, -64
  %19 = and i8 %15, 63
  %or7.i.i = or i8 %18, %19
  store i8 %or7.i.i, ptr %he_addr.i.i, align 1
  %20 = and i16 %transid, 4095
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #9
  %transid2.i.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %transid2.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %transid2.i.i, align 2
  %23 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %call7.i.i.i.i, align 8
  %cmd_no_ext.i = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %call7.i.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %cmd_no_ext.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -32, ptr %cmd_no_ext.i, align 2
  %conv.i = zext i8 %9 to i32
  %add4.i = add nuw nsw i32 %conv.i, 39
  %and.i = and i32 %add4.i, 504
  %25 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and.i, ptr %cmd_len, align 4
  %conv5.i = trunc i32 %and.i to i16
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv5.i) #9
  %len6.i = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %call7.i.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %len6.i, align 4
  %28 = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %call7.i.i.i.i, i32 0, i32 4
  %databytes.i = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %call7.i.i.i.i, i32 0, i32 4, i32 0, i32 4
  %29 = ptrtoint ptr %databytes.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %9, ptr %databytes.i, align 8
  %dlc7.i = getelementptr inbounds %struct.kvaser_cmd_ext_tx_can, ptr %28, i32 0, i32 5
  %30 = ptrtoint ptr %dlc7.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call.i, ptr %dlc7.i, align 1
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %tobool9.not.i = icmp sgt i32 %32, -1
  %and12.i = and i32 %32, 536870911
  %or15.i = or i32 %and12.i, -1073741824
  %and17.i = and i32 %32, 2047
  %33 = lshr i32 %32, 26
  %34 = and i32 %33, 32
  %id.0.i = select i1 %tobool9.not.i, i32 %and17.i, i32 %and12.i
  %kcan_id.0.i = select i1 %tobool9.not.i, i32 %and17.i, i32 %or15.i
  %and22.i = lshr i32 %32, 29
  %35 = and i32 %and22.i, 1
  %36 = or i32 %35, %34
  %conv27.i = zext i8 %call.i to i32
  %shl.i = shl nuw nsw i32 %conv27.i, 8
  %and28.i = and i32 %shl.i, 3840
  %ctrlmode.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 22
  %37 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ctrlmode.i, align 4
  %and30.i = shl i32 %38, 13
  %39 = and i32 %and30.i, 65536
  %or29.i = or i32 %and28.i, %39
  %or32.i = or i32 %or29.i, -2147483648
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %40 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %41)
  %cmp.i.i = icmp eq i32 %41, 72
  br i1 %cmp.i.i, label %if.then34.i, label %if.else42.i

if.then34.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags35.i = getelementptr inbounds %struct.canfd_frame, ptr %5, i32 0, i32 2
  %42 = ptrtoint ptr %flags35.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %flags35.i, align 1
  %44 = and i8 %43, 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 14
  %or40.i = or i32 %46, %or32.i
  %or41.i = or i32 %or40.i, 32768
  br label %if.end51.i

if.else42.i:                                      ; preds = %if.end.i
  %and44.i = and i32 %32, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.else42.i.if.end51.i_crit_edge, label %if.then46.i

if.else42.i.if.end51.i_crit_edge:                 ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then46.i:                                      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #11
  %or47.i = or i32 %kcan_id.0.i, 536870912
  %47 = ptrtoint ptr %databytes.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %databytes.i, align 8
  %or49.i = or i32 %36, 16
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then46.i, %if.else42.i.if.end51.i_crit_edge, %if.then34.i
  %flags.2.i = phi i32 [ %36, %if.then34.i ], [ %or49.i, %if.then46.i ], [ %36, %if.else42.i.if.end51.i_crit_edge ]
  %kcan_id.1.i = phi i32 [ %kcan_id.0.i, %if.then34.i ], [ %or47.i, %if.then46.i ], [ %kcan_id.0.i, %if.else42.i.if.end51.i_crit_edge ]
  %kcan_header.0.i = phi i32 [ %or41.i, %if.then34.i ], [ %or32.i, %if.then46.i ], [ %or32.i, %if.else42.i.if.end51.i_crit_edge ]
  %48 = tail call i32 @llvm.bswap.i32(i32 %kcan_id.1.i) #9
  %kcan_id52.i = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %call7.i.i.i.i, i32 0, i32 4, i32 0, i32 2
  %49 = ptrtoint ptr %kcan_id52.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %kcan_id52.i, align 8
  %50 = tail call i32 @llvm.bswap.i32(i32 %id.0.i) #9
  %id53.i = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %call7.i.i.i.i, i32 0, i32 4, i32 0, i32 1
  %51 = ptrtoint ptr %id53.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %id53.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %flags.2.i) #9
  %53 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %28, align 8
  %54 = tail call i32 @llvm.bswap.i32(i32 %kcan_header.0.i) #9
  %kcan_header55.i = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %call7.i.i.i.i, i32 0, i32 4, i32 0, i32 3
  %55 = ptrtoint ptr %kcan_header55.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %kcan_header55.i, align 4
  %kcan_payload.i = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %call7.i.i.i.i, i32 0, i32 4, i32 0, i32 5
  %data56.i = getelementptr inbounds %struct.canfd_frame, ptr %5, i32 0, i32 5
  %56 = call ptr @memcpy(ptr %kcan_payload.i, ptr %data56.i, i32 %conv.i)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 2848, i32 noundef 32) #12
  %tobool.not.i10 = icmp eq ptr %call7.i.i.i.i9, null
  br i1 %tobool.not.i10, label %if.else.if.end_crit_edge, label %if.end.i18

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i18:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %58 = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 11, i32 2
  %channel.i11 = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 4
  %59 = ptrtoint ptr %channel.i11 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %channel.i11, align 4
  %arrayidx.i12 = getelementptr [5 x i8], ptr %58, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i12, align 1
  %he_addr.i.i13 = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i.i9, i32 0, i32 1
  %63 = ptrtoint ptr %he_addr.i.i13 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %he_addr.i.i13, align 1
  %65 = and i8 %64, -64
  %66 = and i8 %62, 63
  %or7.i.i14 = or i8 %65, %66
  store i8 %or7.i.i14, ptr %he_addr.i.i13, align 1
  %67 = and i16 %transid, 4095
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #9
  %transid2.i.i15 = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i.i9, i32 0, i32 2
  %69 = ptrtoint ptr %transid2.i.i15 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %transid2.i.i15, align 2
  %70 = ptrtoint ptr %call7.i.i.i.i9 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 33, ptr %call7.i.i.i.i9, align 8
  %71 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 32, ptr %cmd_len, align 4
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %5, align 8
  %and5.i = and i32 %73, 536870911
  %or.i = or i32 %and5.i, -2147483648
  %and7.i = and i32 %73, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool2.not53.i = icmp slt i32 %73, 0
  %id.0.i16 = select i1 %tobool2.not53.i, i32 %or.i, i32 %and7.i
  %74 = getelementptr inbounds %struct.can_frame, ptr %5, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %74, align 4
  %77 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i.i9, i32 0, i32 1
  %dlc.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i.i9, i32 0, i32 1, i32 0, i32 3
  %78 = ptrtoint ptr %dlc.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %76, ptr %dlc.i, align 8
  %79 = lshr i32 %73, 26
  %80 = and i32 %79, 48
  %and19.i = lshr i32 %73, 29
  %and19.lobit.i = and i32 %and19.i, 1
  %or22.i = or i32 %80, %and19.lobit.i
  %81 = tail call i32 @llvm.bswap.i32(i32 %id.0.i16) #9
  %82 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %77, align 4
  %conv.i17 = trunc i32 %or22.i to i8
  %flags24.i = getelementptr inbounds %struct.kvaser_cmd_tx_can, ptr %77, i32 0, i32 3
  %83 = ptrtoint ptr %flags24.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv.i17, ptr %flags24.i, align 1
  %data25.i = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i.i9, i32 0, i32 1, i32 0, i32 1
  %data26.i = getelementptr inbounds %struct.can_frame, ptr %5, i32 0, i32 5
  %conv28.i = zext i8 %76 to i32
  %84 = call ptr @memcpy(ptr %data25.i, ptr %data26.i, i32 %conv28.i)
  br label %if.end

if.end:                                           ; preds = %if.end.i18, %if.else.if.end_crit_edge, %if.end51.i, %if.then.if.end_crit_edge
  %buf.0 = phi ptr [ null, %if.then.if.end_crit_edge ], [ %call7.i.i.i.i, %if.end51.i ], [ null, %if.else.if.end_crit_edge ], [ %call7.i.i.i.i9, %if.end.i18 ]
  ret ptr %buf.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kvaser_usb_send_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kvaser_usb_hydra_send_simple_cmd(ptr noundef %dev, i8 noundef zeroext %cmd_no, i32 noundef %channel) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #12
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %cmd_no, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp = icmp slt i32 %channel, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %he_addr.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %he_addr.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %he_addr.i, align 1
  %4 = and i8 %3, -64
  %or7.i = or i8 %4, 62
  store i8 %or7.i, ptr %he_addr.i, align 1
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %channel)
  %cmp3 = icmp ugt i32 %channel, 4
  br i1 %cmp3, label %do.end, label %if.end6

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str, i32 noundef %channel) #13
  br label %end

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %7 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2
  %arrayidx = getelementptr [5 x i8], ptr %7, i32 0, i32 %channel
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %he_addr.i28 = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %he_addr.i28 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %he_addr.i28, align 1
  %12 = and i8 %11, -64
  %13 = and i8 %9, 63
  %or7.i29 = or i8 %12, %13
  store i8 %or7.i29, ptr %he_addr.i28, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then2
  %transid_lock.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %transid_lock.i) #9
  %transid6.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 3
  %14 = ptrtoint ptr %transid6.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %transid6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %15)
  %cmp8.i = icmp ugt i16 %15, 254
  %inc.i = add i16 %15, 1
  %transid.0.i = select i1 %cmp8.i, i16 1, i16 %inc.i
  %16 = ptrtoint ptr %transid6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %transid.0.i, ptr %transid6.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %transid_lock.i, i32 noundef %call3.i) #9
  %17 = tail call i16 @llvm.bswap.i16(i16 %transid.0.i) #9
  %transid2.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %transid2.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %transid2.i, align 2
  %19 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp.i = icmp eq i8 %20, -1
  br i1 %cmp.i, label %if.then.i, label %if.end7.kvaser_usb_hydra_cmd_size.exit_crit_edge

if.end7.kvaser_usb_hydra_cmd_size.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_cmd_size.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %len.i = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %call7.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %len.i, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #9
  %conv2.i = zext i16 %23 to i32
  br label %kvaser_usb_hydra_cmd_size.exit

kvaser_usb_hydra_cmd_size.exit:                   ; preds = %if.then.i, %if.end7.kvaser_usb_hydra_cmd_size.exit_crit_edge
  %ret.0.i = phi i32 [ %conv2.i, %if.then.i ], [ 32, %if.end7.kvaser_usb_hydra_cmd_size.exit_crit_edge ]
  %call10 = tail call i32 @kvaser_usb_send_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef %ret.0.i) #9
  br label %end

end:                                              ; preds = %kvaser_usb_hydra_cmd_size.exit, %do.end
  %err.0 = phi i32 [ %call10, %kvaser_usb_hydra_cmd_size.exit ], [ -22, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kvaser_usb_hydra_map_channel(ptr noundef %dev, i16 noundef zeroext %transid, i8 noundef zeroext %channel, ptr nocapture noundef readonly %name) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #12
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %kvaser_usb_hydra_cmd_size.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

kvaser_usb_hydra_cmd_size.exit:                   ; preds = %entry
  %1 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 1
  %call2 = tail call ptr @strcpy(ptr noundef %1, ptr noundef %name) #14
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -56, ptr %call7.i.i.i, align 8
  %he_addr.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %he_addr.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %he_addr.i, align 1
  %5 = and i8 %4, -64
  store i8 %5, ptr %he_addr.i, align 1
  %channel3 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %channel3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %channel, ptr %channel3, align 4
  %7 = and i16 %transid, 4095
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #9
  %transid2.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %transid2.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %transid2.i, align 2
  %call5 = tail call i32 @kvaser_usb_send_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %kvaser_usb_hydra_cmd_size.exit.end_crit_edge

kvaser_usb_hydra_cmd_size.exit.end_crit_edge:     ; preds = %kvaser_usb_hydra_cmd_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end8:                                          ; preds = %kvaser_usb_hydra_cmd_size.exit
  %call9 = tail call fastcc i32 @kvaser_usb_hydra_wait_cmd(ptr noundef %dev, i8 noundef zeroext -55, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.end_crit_edge

if.end8.end_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end12:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %transid2.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %transid2.i, align 2
  %12 = and i16 %11, -241
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #9
  %14 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2
  %conv.i = zext i16 %13 to i32
  %15 = and i16 %13, 4032
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %15)
  %.not.i = icmp eq i16 %15, 64
  br i1 %.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %intf.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %16 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intf.i, align 4
  %dev6.i = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.21, i32 noundef %conv.i) #13
  br label %end

if.end.i:                                         ; preds = %if.end12
  %trunc.i = trunc i16 %13 to i12
  %18 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i12 %trunc.i, label %do.end15.i [
    i12 64, label %if.end.i.sw.bb.i_crit_edge
    i12 65, label %if.end.i.sw.bb.i_crit_edge32
    i12 66, label %if.end.i.sw.bb.i_crit_edge33
    i12 67, label %if.end.i.sw.bb.i_crit_edge34
    i12 68, label %if.end.i.sw.bb.i_crit_edge35
    i12 97, label %sw.bb11.i
  ]

if.end.i.sw.bb.i_crit_edge35:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge34:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge33:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge32:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge32, %if.end.i.sw.bb.i_crit_edge33, %if.end.i.sw.bb.i_crit_edge34, %if.end.i.sw.bb.i_crit_edge35
  %19 = and i16 %13, 15
  %conv10.i = zext i16 %19 to i32
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 4
  %arrayidx.i = getelementptr [5 x i8], ptr %14, i32 0, i32 %conv10.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx.i, align 1
  br label %end

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 4
  %sysdbg_he.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %sysdbg_he.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %sysdbg_he.i, align 1
  br label %end

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %intf16.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %26 = ptrtoint ptr %intf16.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %intf16.i, align 4
  %dev17.i = getelementptr inbounds %struct.usb_interface, ptr %27, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev17.i, ptr noundef nonnull @.str.24, i32 noundef %conv.i) #13
  br label %end

end:                                              ; preds = %do.end15.i, %sw.bb11.i, %sw.bb.i, %do.end.i, %if.end8.end_crit_edge, %kvaser_usb_hydra_cmd_size.exit.end_crit_edge
  %err.0 = phi i32 [ %call5, %kvaser_usb_hydra_cmd_size.exit.end_crit_edge ], [ %call9, %if.end8.end_crit_edge ], [ -22, %do.end.i ], [ 0, %do.end15.i ], [ 0, %sw.bb11.i ], [ 0, %sw.bb.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kvaser_usb_hydra_wait_cmd(ptr noundef %dev, i8 noundef zeroext %cmd_no, ptr nocapture noundef %cmd) unnamed_addr #1 align 64 {
entry:
  %actual_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %cmp = icmp eq i8 %2, -1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 4
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.15) #13
  br label %cleanup51

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 3072) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup51_crit_edge, label %do.body7.preheader

if.end.cleanup51_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup51

do.body7.preheader:                               ; preds = %if.end
  %intf27 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %add.neg = sub i32 -100, %0
  br label %do.body7

do.body7:                                         ; preds = %do.cond47.do.body7_crit_edge, %do.body7.preheader
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #9
  %6 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %actual_len, align 4
  %call8 = call i32 @kvaser_usb_recv_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef 3072, ptr noundef nonnull %actual_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.body7.cleanup43_crit_edge, label %while.cond.preheader

do.body7.cleanup43_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup43

while.cond.preheader:                             ; preds = %do.body7
  %7 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end32.while.cond_crit_edge, %while.cond.preheader
  %pos.0 = phi i32 [ %add16, %if.end32.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0, i32 %8)
  %cmp13 = icmp slt i32 %pos.0, %8
  br i1 %cmp13, label %while.body, label %while.cond.do.cond47_crit_edge

while.cond.do.cond47_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond47

while.body:                                       ; preds = %while.cond
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %pos.0
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp.i = icmp eq i8 %10, -1
  br i1 %cmp.i, label %if.then.i, label %while.body.kvaser_usb_hydra_cmd_size.exit_crit_edge

while.body.kvaser_usb_hydra_cmd_size.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_cmd_size.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %len.i = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %add.ptr, i32 0, i32 1
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %len.i, align 1
  %13 = call i16 @llvm.bswap.i16(i16 %12) #9
  %conv2.i = zext i16 %13 to i32
  br label %kvaser_usb_hydra_cmd_size.exit

kvaser_usb_hydra_cmd_size.exit:                   ; preds = %if.then.i, %while.body.kvaser_usb_hydra_cmd_size.exit_crit_edge
  %ret.0.i = phi i32 [ %conv2.i, %if.then.i ], [ 32, %while.body.kvaser_usb_hydra_cmd_size.exit_crit_edge ]
  %add16 = add i32 %ret.0.i, %pos.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add16, i32 %8)
  %cmp17 = icmp ugt i32 %add16, %8
  br i1 %cmp17, label %do.body20, label %if.end32

do.body20:                                        ; preds = %kvaser_usb_hydra_cmd_size.exit
  %call21 = call i32 @___ratelimit(ptr noundef nonnull @kvaser_usb_hydra_wait_cmd._rs, ptr noundef nonnull @.str.16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body20.do.cond47_crit_edge, label %do.end26

do.body20.do.cond47_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond47

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %intf27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf27, align 4
  %dev28 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.19) #13
  br label %do.cond47

if.end32:                                         ; preds = %kvaser_usb_hydra_cmd_size.exit
  %cmp37 = icmp eq i8 %10, %cmd_no
  br i1 %cmp37, label %cleanup.thread71, label %if.end32.while.cond_crit_edge

if.end32.while.cond_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

cleanup.thread71:                                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %16 = call ptr @memcpy(ptr %cmd, ptr %add.ptr, i32 %ret.0.i)
  br label %cleanup43

cleanup43:                                        ; preds = %cleanup.thread71, %do.body7.cleanup43_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len) #9
  br label %end

do.cond47:                                        ; preds = %do.end26, %do.body20.do.cond47_crit_edge, %while.cond.do.cond47_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %17
  %cmp48 = icmp slt i32 %sub, 0
  br i1 %cmp48, label %do.cond47.do.body7_crit_edge, label %do.cond47.end_crit_edge

do.cond47.end_crit_edge:                          ; preds = %do.cond47
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

do.cond47.do.body7_crit_edge:                     ; preds = %do.cond47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

end:                                              ; preds = %do.cond47.end_crit_edge, %cleanup43
  %err.0 = phi i32 [ %call8, %cleanup43 ], [ -22, %do.cond47.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup51

cleanup51:                                        ; preds = %end, %if.end.cleanup51_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.0, %end ], [ -12, %if.end.cleanup51_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kvaser_usb_recv_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kvaser_usb_hydra_get_single_capability(ptr noundef %dev, i16 noundef zeroext %cap_cmd_req, ptr nocapture noundef writeonly %status) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %card_data1 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #12
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %kvaser_usb_hydra_cmd_size.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

kvaser_usb_hydra_cmd_size.exit:                   ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 95, ptr %call7.i.i.i, align 8
  %2 = tail call i16 @llvm.bswap.i16(i16 %cap_cmd_req)
  %3 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %2, ptr %3, align 4
  %sysdbg_he = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %sysdbg_he to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sysdbg_he, align 1
  %he_addr.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %he_addr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %he_addr.i, align 1
  %9 = and i8 %8, -64
  %10 = and i8 %6, 63
  %or7.i = or i8 %9, %10
  store i8 %or7.i, ptr %he_addr.i, align 1
  %transid_lock.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %transid_lock.i) #9
  %transid6.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 3
  %11 = ptrtoint ptr %transid6.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %transid6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %12)
  %cmp8.i = icmp ugt i16 %12, 254
  %inc.i = add i16 %12, 1
  %transid.0.i = select i1 %cmp8.i, i16 1, i16 %inc.i
  %13 = ptrtoint ptr %transid6.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %transid.0.i, ptr %transid6.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %transid_lock.i, i32 noundef %call3.i) #9
  %14 = tail call i16 @llvm.bswap.i16(i16 %transid.0.i) #9
  %transid2.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %transid2.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %transid2.i, align 2
  %call4 = tail call i32 @kvaser_usb_send_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %kvaser_usb_hydra_cmd_size.exit.end_crit_edge

kvaser_usb_hydra_cmd_size.exit.end_crit_edge:     ; preds = %kvaser_usb_hydra_cmd_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end7:                                          ; preds = %kvaser_usb_hydra_cmd_size.exit
  %call8 = tail call fastcc i32 @kvaser_usb_hydra_wait_cmd(ptr noundef %dev, i8 noundef zeroext 96, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.end_crit_edge

if.end7.end_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end11:                                         ; preds = %if.end7
  %status12 = getelementptr inbounds %struct.kvaser_cmd_cap_res, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %status12 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %status12, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp.not = icmp eq i16 %17, 0
  br i1 %cmp.not, label %if.end15, label %if.end11.end_crit_edge

if.end11.end_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end15:                                         ; preds = %if.end11
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %3, align 4
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.81)
  switch i16 %22, label %do.end [
    i16 2, label %if.end15.sw.bb_crit_edge
    i16 5, label %if.end15.sw.bb_crit_edge73
    i16 6, label %if.end15.sw.bb_crit_edge74
  ]

if.end15.sw.bb_crit_edge74:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end15.sw.bb_crit_edge73:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end15.sw.bb_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.end15.sw.bb_crit_edge, %if.end15.sw.bb_crit_edge73, %if.end15.sw.bb_crit_edge74
  %value18 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %value18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value18, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %mask19 = getelementptr inbounds %struct.kvaser_cmd, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %mask19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mask19, align 8
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  br label %sw.epilog

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %conv17 = zext i16 %22 to i32
  %intf = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %30 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %intf, align 4
  %dev20 = getelementptr inbounds %struct.usb_interface, ptr %31, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev20, ptr noundef nonnull @.str.44, i32 noundef %conv17) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  %value.0 = phi i32 [ 0, %do.end ], [ %26, %sw.bb ]
  %mask.0 = phi i32 [ 0, %do.end ], [ %29, %sw.bb ]
  %nchannels = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 9
  %32 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nchannels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp2269.not = icmp eq i32 %33, 0
  br i1 %cmp2269.not, label %sw.epilog.end_crit_edge, label %for.body.lr.ph

sw.epilog.end_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %and = and i32 %mask.0, %value.0
  %capabilities = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.070
  %and24 = and i32 %and, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %for.body.for.inc_crit_edge, label %if.then26

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then26:                                        ; preds = %for.body
  %34 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.82)
  switch i16 %22, label %if.then26.for.inc_crit_edge [
    i16 2, label %if.then26.for.inc.sink.split_crit_edge
    i16 5, label %sw.bb29
    i16 6, label %sw.bb31
  ]

if.then26.for.inc.sink.split_crit_edge:           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.then26.for.inc_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb29:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

sw.bb31:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %sw.bb31, %sw.bb29, %if.then26.for.inc.sink.split_crit_edge
  %card_data1.sink72 = phi ptr [ %card_data1, %sw.bb31 ], [ %capabilities, %sw.bb29 ], [ %card_data1, %if.then26.for.inc.sink.split_crit_edge ]
  %.sink71 = phi i32 [ 8, %sw.bb31 ], [ 1, %sw.bb29 ], [ 2, %if.then26.for.inc.sink.split_crit_edge ]
  %35 = ptrtoint ptr %card_data1.sink72 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %card_data1.sink72, align 4
  %or33 = or i32 %36, %.sink71
  store i32 %or33, ptr %card_data1.sink72, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.then26.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, %33
  br i1 %exitcond.not, label %for.inc.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.end_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

end:                                              ; preds = %for.inc.end_crit_edge, %sw.epilog.end_crit_edge, %if.end11.end_crit_edge, %if.end7.end_crit_edge, %kvaser_usb_hydra_cmd_size.exit.end_crit_edge
  %err.0 = phi i32 [ %call4, %kvaser_usb_hydra_cmd_size.exit.end_crit_edge ], [ %call8, %if.end7.end_crit_edge ], [ 0, %if.end11.end_crit_edge ], [ 0, %sw.epilog.end_crit_edge ], [ 0, %for.inc.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kvaser_usb_hydra_handle_cmd(ptr noundef readonly %dev, ptr noundef readonly %cmd) unnamed_addr #1 align 64 {
entry:
  %cf.i.i5 = alloca ptr, align 4
  %cf.i.i.i = alloca ptr, align 4
  %cf.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %1, label %do.end.i180 [
    i8 -1, label %if.then
    i8 27, label %sw.bb.i10
    i8 29, label %sw.bb1.i37
    i8 66, label %sw.bb2.i
    i8 20, label %sw.bb3.i
    i8 45, label %sw.bb4.i
    i8 50, label %sw.bb5.i
    i8 106, label %sw.bb6.i
    i8 85, label %entry.if.end_crit_edge
    i8 70, label %entry.if.end_crit_edge181
  ]

entry.if.end_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %cmd_no_ext.i = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %cmd, i32 0, i32 2
  %3 = ptrtoint ptr %cmd_no_ext.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cmd_no_ext.i, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %4, label %do.end.i [
    i8 -31, label %sw.bb.i
    i8 -30, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @kvaser_usb_hydra_tx_acknowledge(ptr noundef %dev, ptr noundef %cmd) #9
  br label %if.end

sw.bb1.i:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i.i) #9
  %6 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i.i, align 4, !annotation !170
  %he_addr.i.i.i.i.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %he_addr.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %he_addr.i.i.i.i.i, align 1
  %9 = lshr i8 %8, 2
  %10 = and i8 %9, 48
  %transid.i.i.i.i.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %cmd, i32 0, i32 2
  %11 = ptrtoint ptr %transid.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %transid.i.i.i.i.i, align 1
  %13 = trunc i16 %12 to i8
  %14 = lshr i8 %13, 4
  %or.i.i.i.i.i = or i8 %14, %10
  %15 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %or.i.i.i.i.i)
  %cmp2.i.i.i.i = icmp eq i8 %17, %or.i.i.i.i.i
  br i1 %cmp2.i.i.i.i, label %sw.bb1.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i_crit_edge, label %for.inc.i.i.i.i

sw.bb1.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i_crit_edge: ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i.i

for.inc.i.i.i.i:                                  ; preds = %sw.bb1.i
  %arrayidx.1.i.i.i.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.1.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %or.i.i.i.i.i)
  %cmp2.1.i.i.i.i = icmp eq i8 %19, %or.i.i.i.i.i
  br i1 %cmp2.1.i.i.i.i, label %for.inc.i.i.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i_crit_edge, label %for.inc.1.i.i.i.i

for.inc.i.i.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i.i

for.inc.1.i.i.i.i:                                ; preds = %for.inc.i.i.i.i
  %arrayidx.2.i.i.i.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx.2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.2.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %or.i.i.i.i.i)
  %cmp2.2.i.i.i.i = icmp eq i8 %21, %or.i.i.i.i.i
  br i1 %cmp2.2.i.i.i.i, label %for.inc.1.i.i.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i_crit_edge, label %for.inc.2.i.i.i.i

for.inc.1.i.i.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i_crit_edge: ; preds = %for.inc.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i.i

for.inc.2.i.i.i.i:                                ; preds = %for.inc.1.i.i.i.i
  %arrayidx.3.i.i.i.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx.3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.3.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %or.i.i.i.i.i)
  %cmp2.3.i.i.i.i = icmp eq i8 %23, %or.i.i.i.i.i
  br i1 %cmp2.3.i.i.i.i, label %for.inc.2.i.i.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i_crit_edge, label %for.inc.3.i.i.i.i

for.inc.2.i.i.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i_crit_edge: ; preds = %for.inc.2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i.i

for.inc.3.i.i.i.i:                                ; preds = %for.inc.2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.4.i.i.i.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx.4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.4.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %or.i.i.i.i.i)
  %cmp2.4.i.i.i.i = icmp eq i8 %25, %or.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %cmp2.4.i.i.i.i, i32 4, i32 255
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i.i

kvaser_usb_hydra_channel_from_cmd.exit.i.i.i:     ; preds = %for.inc.3.i.i.i.i, %for.inc.2.i.i.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i_crit_edge, %for.inc.1.i.i.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i_crit_edge, %for.inc.i.i.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i_crit_edge, %sw.bb1.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i_crit_edge
  %channel.0.i.i.i.i = phi i32 [ 0, %sw.bb1.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i_crit_edge ], [ 1, %for.inc.i.i.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i_crit_edge ], [ 2, %for.inc.1.i.i.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i_crit_edge ], [ 3, %for.inc.2.i.i.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i_crit_edge ], [ %spec.select.i.i.i.i, %for.inc.3.i.i.i.i ]
  %nchannels.i.i.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 9
  %26 = ptrtoint ptr %nchannels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nchannels.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %channel.0.i.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %27, %channel.0.i.i.i.i
  br i1 %cmp.not.i.i.i, label %kvaser_usb_hydra_net_priv_from_cmd.exit.i.i, label %kvaser_usb_hydra_net_priv_from_cmd.exit.thread.i.i

kvaser_usb_hydra_net_priv_from_cmd.exit.thread.i.i: ; preds = %kvaser_usb_hydra_channel_from_cmd.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %intf.i.i.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %28 = ptrtoint ptr %intf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %intf.i.i.i, align 4
  %dev2.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %29, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i.i, ptr noundef nonnull @.str.53, i32 noundef %channel.0.i.i.i.i) #13
  br label %kvaser_usb_hydra_rx_msg_ext.exit.i

kvaser_usb_hydra_net_priv_from_cmd.exit.i.i:      ; preds = %kvaser_usb_hydra_channel_from_cmd.exit.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 %channel.0.i.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %kvaser_usb_hydra_net_priv_from_cmd.exit.i.i.kvaser_usb_hydra_rx_msg_ext.exit.i_crit_edge, label %if.end.i.i.i

kvaser_usb_hydra_net_priv_from_cmd.exit.i.i.kvaser_usb_hydra_rx_msg_ext.exit.i_crit_edge: ; preds = %kvaser_usb_hydra_net_priv_from_cmd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_rx_msg_ext.exit.i

if.end.i.i.i:                                     ; preds = %kvaser_usb_hydra_net_priv_from_cmd.exit.i.i
  %netdev.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev.i.i, align 4
  %stats1.i.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 36
  %34 = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %cmd, i32 0, i32 4
  %kcan_header2.i.i = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %35 = ptrtoint ptr %kcan_header2.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %kcan_header2.i.i, align 1
  %37 = lshr i32 %36, 16
  %38 = trunc i32 %37 to i8
  %conv.i.i = and i8 %38, 15
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %34, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  %cfg.i.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 4
  %42 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg.i.i, align 4
  %timestamp.i.i.i = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %cmd, i32 0, i32 4, i32 0, i32 4
  %44 = ptrtoint ptr %timestamp.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %timestamp.i.i.i, align 1
  %46 = tail call i64 @llvm.bswap.i64(i64 %45) #9
  %mul.i.i.i = mul i64 %46, 1000
  %timestamp_freq.i.i.i = getelementptr inbounds %struct.kvaser_usb_dev_cfg, ptr %43, i32 0, i32 1
  %47 = ptrtoint ptr %timestamp_freq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %timestamp_freq.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i.i)
  %cmp164.i.i.i.i.i = icmp ult i64 %mul.i.i.i, 4294967296
  br i1 %cmp164.i.i.i.i.i, label %if.then168.i.i.i.i.i, label %if.else174.i.i.i.i.i, !prof !171

if.then168.i.i.i.i.i:                             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i.i.i.i = trunc i64 %mul.i.i.i to i32
  %div172.i.i.i.i.i = udiv i32 %conv169.i.i.i.i.i, %48
  %conv173.i.i.i.i.i = zext i32 %div172.i.i.i.i.i to i64
  br label %kvaser_usb_hydra_ktime_from_rx_cmd.exit.i.i

if.else174.i.i.i.i.i:                             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %48, i64 %mul.i.i.i) #15, !srcloc !172
  %asmresult1.i.i.i.i.i.i = extractvalue { i64, i64 } %49, 1
  br label %kvaser_usb_hydra_ktime_from_rx_cmd.exit.i.i

kvaser_usb_hydra_ktime_from_rx_cmd.exit.i.i:      ; preds = %if.else174.i.i.i.i.i, %if.then168.i.i.i.i.i
  %dividend.addr.0.i.i.i.i.i = phi i64 [ %conv173.i.i.i.i.i, %if.then168.i.i.i.i.i ], [ %asmresult1.i.i.i.i.i.i, %if.else174.i.i.i.i.i ]
  %and5.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %kvaser_usb_hydra_ktime_from_rx_cmd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %cmd, i32 0, i32 4, i32 0, i32 5
  tail call fastcc void @kvaser_usb_hydra_error_frame(ptr noundef nonnull %31, ptr noundef %50, i64 noundef %dividend.addr.0.i.i.i.i.i) #9
  br label %kvaser_usb_hydra_rx_msg_ext.exit.i

if.end8.i.i:                                      ; preds = %kvaser_usb_hydra_ktime_from_rx_cmd.exit.i.i
  %and9.i.i = and i32 %41, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.else.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i.i = call ptr @alloc_canfd_skb(ptr noundef %33, ptr noundef nonnull %cf.i.i) #9
  br label %if.end16.i.i

if.else.i.i:                                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i.i = call ptr @alloc_can_skb(ptr noundef %33, ptr noundef nonnull %cf.i.i) #9
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.else.i.i, %if.then11.i.i
  %skb.0.i.i = phi ptr [ %call13.i.i, %if.then11.i.i ], [ %call15.i.i, %if.else.i.i ]
  %tobool17.not.i.i = icmp eq ptr %skb.0.i.i, null
  br i1 %tobool17.not.i.i, label %if.then18.i.i, label %if.end19.i.i

if.then18.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 36, i32 6
  %51 = ptrtoint ptr %rx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_dropped.i.i, align 4
  %inc.i.i = add i32 %52, 1
  store i32 %inc.i.i, ptr %rx_dropped.i.i, align 4
  br label %kvaser_usb_hydra_rx_msg_ext.exit.i

if.end19.i.i:                                     ; preds = %if.end16.i.i
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.i, i32 0, i32 17
  %53 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %end.i.i.i.i, align 4
  %hwtstamps.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %hwtstamps.i.i.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %dividend.addr.0.i.i.i.i.i, ptr %hwtstamps.i.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %56 = ptrtoint ptr %id.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %id.i.i, align 1
  %58 = call i32 @llvm.bswap.i32(i32 %57) #9
  %59 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cf.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %58, ptr %60, align 8
  %and22.i.i = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  %62 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cf.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  br i1 %tobool23.not.i.i, label %if.else28.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and26.i.i = and i32 %65, 536870911
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and26.i.i, ptr %63, align 8
  %67 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cf.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 8
  %or.i.i = or i32 %70, -2147483648
  store i32 %or.i.i, ptr %68, align 8
  br label %if.end31.i.i

if.else28.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and30.i.i = and i32 %65, 2047
  %71 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and30.i.i, ptr %63, align 8
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.else28.i.i, %if.then24.i.i
  %and32.i.i = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i.i)
  %tobool33.not.i.i = icmp eq i32 %and32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.end31.i.i.if.end37.i.i_crit_edge, label %if.then34.i.i

if.end31.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i.i

if.then34.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %netdev.i.i, align 4
  %call36.i.i = call i32 @kvaser_usb_can_rx_over_error(ptr noundef %73) #9
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then34.i.i, %if.end31.i.i.if.end37.i.i_crit_edge
  br i1 %tobool10.not.i.i, label %if.else58.i.i, label %if.then40.i.i

if.then40.i.i:                                    ; preds = %if.end37.i.i
  %call41.i.i = call zeroext i8 @can_fd_dlc2len(i8 noundef zeroext %conv.i.i) #9
  %74 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cf.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.canfd_frame, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %call41.i.i, ptr %len.i.i, align 4
  %and42.i.i = and i32 %41, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i.i)
  %tobool43.not.i.i = icmp eq i32 %and42.i.i, 0
  br i1 %tobool43.not.i.i, label %if.then40.i.i.if.end49.i.i_crit_edge, label %if.then44.i.i

if.then40.i.i.if.end49.i.i_crit_edge:             ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i.i

if.then44.i.i:                                    ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags45.i.i = getelementptr inbounds %struct.canfd_frame, ptr %75, i32 0, i32 2
  %77 = ptrtoint ptr %flags45.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %flags45.i.i, align 1
  %79 = or i8 %78, 1
  store i8 %79, ptr %flags45.i.i, align 1
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.then44.i.i, %if.then40.i.i.if.end49.i.i_crit_edge
  %and50.i.i = and i32 %41, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i.i)
  %tobool51.not.i.i = icmp eq i32 %and50.i.i, 0
  br i1 %tobool51.not.i.i, label %if.end49.i.i.if.end66.i.i_crit_edge, label %if.then52.i.i

if.end49.i.i.if.end66.i.i_crit_edge:              ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i.i

if.then52.i.i:                                    ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags53.i.i = getelementptr inbounds %struct.canfd_frame, ptr %75, i32 0, i32 2
  %80 = ptrtoint ptr %flags53.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %flags53.i.i, align 1
  %82 = or i8 %81, 2
  store i8 %82, ptr %flags53.i.i, align 1
  br label %if.end66.i.i

if.else58.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = call i8 @llvm.umin.i8(i8 %conv.i.i, i8 8) #9
  %84 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cf.i.i, align 4
  %len65.i.i = getelementptr inbounds %struct.canfd_frame, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %len65.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %83, ptr %len65.i.i, align 4
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.else58.i.i, %if.then52.i.i, %if.end49.i.i.if.end66.i.i_crit_edge
  %and67.i.i = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i.i)
  %tobool68.not.i.i = icmp eq i32 %and67.i.i, 0
  %87 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cf.i.i, align 4
  br i1 %tobool68.not.i.i, label %if.else72.i.i, label %if.then69.i.i

if.then69.i.i:                                    ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 8
  %or71.i.i = or i32 %90, 1073741824
  store i32 %or71.i.i, ptr %88, align 8
  br label %if.end78.i.i

if.else72.i.i:                                    ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i = getelementptr inbounds %struct.canfd_frame, ptr %88, i32 0, i32 5
  %91 = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %cmd, i32 0, i32 4, i32 0, i32 5
  %len74.i.i = getelementptr inbounds %struct.canfd_frame, ptr %88, i32 0, i32 1
  %92 = ptrtoint ptr %len74.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %len74.i.i, align 4
  %conv75.i.i = zext i8 %93 to i32
  %94 = call ptr @memcpy(ptr %data.i.i, ptr %91, i32 %conv75.i.i)
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 36, i32 2
  %95 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_bytes.i.i, align 4
  %add.i.i = add i32 %96, %conv75.i.i
  store i32 %add.i.i, ptr %rx_bytes.i.i, align 4
  br label %if.end78.i.i

if.end78.i.i:                                     ; preds = %if.else72.i.i, %if.then69.i.i
  %97 = ptrtoint ptr %stats1.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %stats1.i.i, align 4
  %inc79.i.i = add i32 %98, 1
  store i32 %inc79.i.i, ptr %stats1.i.i, align 4
  %call80.i.i = call i32 @netif_rx(ptr noundef nonnull %skb.0.i.i) #9
  br label %kvaser_usb_hydra_rx_msg_ext.exit.i

kvaser_usb_hydra_rx_msg_ext.exit.i:               ; preds = %if.end78.i.i, %if.then18.i.i, %if.then7.i.i, %kvaser_usb_hydra_net_priv_from_cmd.exit.i.i.kvaser_usb_hydra_rx_msg_ext.exit.i_crit_edge, %kvaser_usb_hydra_net_priv_from_cmd.exit.thread.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i.i) #9
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %intf.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %99 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %intf.i, align 4
  %dev2.i = getelementptr inbounds %struct.usb_interface, ptr %100, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2.i, ptr noundef nonnull @.str.51, i32 noundef 255) #13
  br label %if.end

sw.bb.i10:                                        ; preds = %entry
  %he_addr.i.i.i.i.i6 = getelementptr inbounds %struct.kvaser_cmd_header, ptr %cmd, i32 0, i32 1
  %101 = ptrtoint ptr %he_addr.i.i.i.i.i6 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %he_addr.i.i.i.i.i6, align 1
  %103 = lshr i8 %102, 2
  %104 = and i8 %103, 48
  %transid.i.i.i.i.i7 = getelementptr inbounds %struct.kvaser_cmd_header, ptr %cmd, i32 0, i32 2
  %105 = ptrtoint ptr %transid.i.i.i.i.i7 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %106 = load i16, ptr %transid.i.i.i.i.i7, align 1
  %107 = trunc i16 %106 to i8
  %108 = lshr i8 %107, 4
  %or.i.i.i.i.i8 = or i8 %108, %104
  %109 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %109, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %111, i8 %or.i.i.i.i.i8)
  %cmp2.i.i.i.i9 = icmp eq i8 %111, %or.i.i.i.i.i8
  br i1 %cmp2.i.i.i.i9, label %sw.bb.i10.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27_crit_edge, label %for.inc.i.i.i.i13

sw.bb.i10.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27_crit_edge: ; preds = %sw.bb.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27

for.inc.i.i.i.i13:                                ; preds = %sw.bb.i10
  %arrayidx.1.i.i.i.i11 = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 1
  %112 = ptrtoint ptr %arrayidx.1.i.i.i.i11 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx.1.i.i.i.i11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %113, i8 %or.i.i.i.i.i8)
  %cmp2.1.i.i.i.i12 = icmp eq i8 %113, %or.i.i.i.i.i8
  br i1 %cmp2.1.i.i.i.i12, label %for.inc.i.i.i.i13.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27_crit_edge, label %for.inc.1.i.i.i.i16

for.inc.i.i.i.i13.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27_crit_edge: ; preds = %for.inc.i.i.i.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27

for.inc.1.i.i.i.i16:                              ; preds = %for.inc.i.i.i.i13
  %arrayidx.2.i.i.i.i14 = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 2
  %114 = ptrtoint ptr %arrayidx.2.i.i.i.i14 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.2.i.i.i.i14, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %115, i8 %or.i.i.i.i.i8)
  %cmp2.2.i.i.i.i15 = icmp eq i8 %115, %or.i.i.i.i.i8
  br i1 %cmp2.2.i.i.i.i15, label %for.inc.1.i.i.i.i16.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27_crit_edge, label %for.inc.2.i.i.i.i19

for.inc.1.i.i.i.i16.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27_crit_edge: ; preds = %for.inc.1.i.i.i.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27

for.inc.2.i.i.i.i19:                              ; preds = %for.inc.1.i.i.i.i16
  %arrayidx.3.i.i.i.i17 = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 3
  %116 = ptrtoint ptr %arrayidx.3.i.i.i.i17 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.3.i.i.i.i17, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %117, i8 %or.i.i.i.i.i8)
  %cmp2.3.i.i.i.i18 = icmp eq i8 %117, %or.i.i.i.i.i8
  br i1 %cmp2.3.i.i.i.i18, label %for.inc.2.i.i.i.i19.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27_crit_edge, label %for.inc.3.i.i.i.i23

for.inc.2.i.i.i.i19.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27_crit_edge: ; preds = %for.inc.2.i.i.i.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27

for.inc.3.i.i.i.i23:                              ; preds = %for.inc.2.i.i.i.i19
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.4.i.i.i.i20 = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 4
  %118 = ptrtoint ptr %arrayidx.4.i.i.i.i20 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx.4.i.i.i.i20, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %119, i8 %or.i.i.i.i.i8)
  %cmp2.4.i.i.i.i21 = icmp eq i8 %119, %or.i.i.i.i.i8
  %spec.select.i.i.i.i22 = select i1 %cmp2.4.i.i.i.i21, i32 4, i32 255
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27

kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27:   ; preds = %for.inc.3.i.i.i.i23, %for.inc.2.i.i.i.i19.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27_crit_edge, %for.inc.1.i.i.i.i16.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27_crit_edge, %for.inc.i.i.i.i13.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27_crit_edge, %sw.bb.i10.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27_crit_edge
  %channel.0.i.i.i.i24 = phi i32 [ 0, %sw.bb.i10.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27_crit_edge ], [ 1, %for.inc.i.i.i.i13.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27_crit_edge ], [ 2, %for.inc.1.i.i.i.i16.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27_crit_edge ], [ 3, %for.inc.2.i.i.i.i19.kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27_crit_edge ], [ %spec.select.i.i.i.i22, %for.inc.3.i.i.i.i23 ]
  %nchannels.i.i.i25 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 9
  %120 = ptrtoint ptr %nchannels.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %nchannels.i.i.i25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %channel.0.i.i.i.i24)
  %cmp.not.i.i.i26 = icmp ugt i32 %121, %channel.0.i.i.i.i24
  br i1 %cmp.not.i.i.i26, label %kvaser_usb_hydra_net_priv_from_cmd.exit.i.i33, label %kvaser_usb_hydra_net_priv_from_cmd.exit.thread.i.i30

kvaser_usb_hydra_net_priv_from_cmd.exit.thread.i.i30: ; preds = %kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27
  call void @__sanitizer_cov_trace_pc() #11
  %intf.i.i.i28 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %122 = ptrtoint ptr %intf.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %intf.i.i.i28, align 4
  %dev2.i.i.i29 = getelementptr inbounds %struct.usb_interface, ptr %123, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i.i29, ptr noundef nonnull @.str.53, i32 noundef %channel.0.i.i.i.i24) #13
  br label %if.end

kvaser_usb_hydra_net_priv_from_cmd.exit.i.i33:    ; preds = %kvaser_usb_hydra_channel_from_cmd.exit.i.i.i27
  %arrayidx.i.i.i31 = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 %channel.0.i.i.i.i24
  %124 = ptrtoint ptr %arrayidx.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i.i.i31, align 4
  %tobool.not.i.i32 = icmp eq ptr %125, null
  br i1 %tobool.not.i.i32, label %kvaser_usb_hydra_net_priv_from_cmd.exit.i.i33.if.end_crit_edge, label %if.end.i.i34

kvaser_usb_hydra_net_priv_from_cmd.exit.i.i33.if.end_crit_edge: ; preds = %kvaser_usb_hydra_net_priv_from_cmd.exit.i.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i34:                                     ; preds = %kvaser_usb_hydra_net_priv_from_cmd.exit.i.i33
  %start_comp.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %125, i32 0, i32 5
  %call1.i.i = tail call zeroext i1 @completion_done(ptr noundef %start_comp.i.i) #9
  br i1 %call1.i.i, label %land.lhs.true.i.i, label %if.end.i.i34.if.else.i.i36_crit_edge

if.end.i.i34.if.else.i.i36_crit_edge:             ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i36

land.lhs.true.i.i:                                ; preds = %if.end.i.i34
  %netdev.i.i35 = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %netdev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %netdev.i.i35, align 4
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %127, i32 0, i32 103
  %128 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %_tx.i.i.i.i, align 128
  %state.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %129, i32 0, i32 13
  %130 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %land.lhs.true.i.i.if.else.i.i36_crit_edge, label %if.then3.i.i

land.lhs.true.i.i.if.else.i.i36_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i36

if.then3.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_tx_wake_queue(ptr noundef %129) #9
  br label %if.end

if.else.i.i36:                                    ; preds = %land.lhs.true.i.i.if.else.i.i36_crit_edge, %if.end.i.i34.if.else.i.i36_crit_edge
  %netdev5.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %125, i32 0, i32 3
  %132 = ptrtoint ptr %netdev5.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %netdev5.i.i, align 4
  %_tx.i.i14.i.i = getelementptr inbounds %struct.net_device, ptr %133, i32 0, i32 103
  %134 = ptrtoint ptr %_tx.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %_tx.i.i14.i.i, align 128
  %state.i.i15.i.i = getelementptr inbounds %struct.netdev_queue, ptr %135, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i15.i.i) #9
  tail call void @complete(ptr noundef %start_comp.i.i) #9
  br label %if.end

sw.bb1.i37:                                       ; preds = %entry
  %he_addr.i.i.i.i27.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %cmd, i32 0, i32 1
  %136 = ptrtoint ptr %he_addr.i.i.i.i27.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %he_addr.i.i.i.i27.i, align 1
  %138 = lshr i8 %137, 2
  %139 = and i8 %138, 48
  %transid.i.i.i.i28.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %cmd, i32 0, i32 2
  %140 = ptrtoint ptr %transid.i.i.i.i28.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %141 = load i16, ptr %transid.i.i.i.i28.i, align 1
  %142 = trunc i16 %141 to i8
  %143 = lshr i8 %142, 4
  %or.i.i.i.i29.i = or i8 %143, %139
  %144 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %144, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %146, i8 %or.i.i.i.i29.i)
  %cmp2.i.i.i30.i = icmp eq i8 %146, %or.i.i.i.i29.i
  br i1 %cmp2.i.i.i30.i, label %sw.bb1.i37.kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i_crit_edge, label %for.inc.i.i.i33.i

sw.bb1.i37.kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i_crit_edge: ; preds = %sw.bb1.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i

for.inc.i.i.i33.i:                                ; preds = %sw.bb1.i37
  %arrayidx.1.i.i.i31.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 1
  %147 = ptrtoint ptr %arrayidx.1.i.i.i31.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx.1.i.i.i31.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %148, i8 %or.i.i.i.i29.i)
  %cmp2.1.i.i.i32.i = icmp eq i8 %148, %or.i.i.i.i29.i
  br i1 %cmp2.1.i.i.i32.i, label %for.inc.i.i.i33.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i_crit_edge, label %for.inc.1.i.i.i36.i

for.inc.i.i.i33.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i_crit_edge: ; preds = %for.inc.i.i.i33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i

for.inc.1.i.i.i36.i:                              ; preds = %for.inc.i.i.i33.i
  %arrayidx.2.i.i.i34.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 2
  %149 = ptrtoint ptr %arrayidx.2.i.i.i34.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx.2.i.i.i34.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %150, i8 %or.i.i.i.i29.i)
  %cmp2.2.i.i.i35.i = icmp eq i8 %150, %or.i.i.i.i29.i
  br i1 %cmp2.2.i.i.i35.i, label %for.inc.1.i.i.i36.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i_crit_edge, label %for.inc.2.i.i.i39.i

for.inc.1.i.i.i36.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i_crit_edge: ; preds = %for.inc.1.i.i.i36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i

for.inc.2.i.i.i39.i:                              ; preds = %for.inc.1.i.i.i36.i
  %arrayidx.3.i.i.i37.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 3
  %151 = ptrtoint ptr %arrayidx.3.i.i.i37.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx.3.i.i.i37.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %152, i8 %or.i.i.i.i29.i)
  %cmp2.3.i.i.i38.i = icmp eq i8 %152, %or.i.i.i.i29.i
  br i1 %cmp2.3.i.i.i38.i, label %for.inc.2.i.i.i39.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i_crit_edge, label %for.inc.3.i.i.i43.i

for.inc.2.i.i.i39.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i_crit_edge: ; preds = %for.inc.2.i.i.i39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i

for.inc.3.i.i.i43.i:                              ; preds = %for.inc.2.i.i.i39.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.4.i.i.i40.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 4
  %153 = ptrtoint ptr %arrayidx.4.i.i.i40.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx.4.i.i.i40.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %154, i8 %or.i.i.i.i29.i)
  %cmp2.4.i.i.i41.i = icmp eq i8 %154, %or.i.i.i.i29.i
  %spec.select.i.i.i42.i = select i1 %cmp2.4.i.i.i41.i, i32 4, i32 255
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i

kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i:   ; preds = %for.inc.3.i.i.i43.i, %for.inc.2.i.i.i39.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i_crit_edge, %for.inc.1.i.i.i36.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i_crit_edge, %for.inc.i.i.i33.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i_crit_edge, %sw.bb1.i37.kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i_crit_edge
  %channel.0.i.i.i44.i = phi i32 [ 0, %sw.bb1.i37.kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i_crit_edge ], [ 1, %for.inc.i.i.i33.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i_crit_edge ], [ 2, %for.inc.1.i.i.i36.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i_crit_edge ], [ 3, %for.inc.2.i.i.i39.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i_crit_edge ], [ %spec.select.i.i.i42.i, %for.inc.3.i.i.i43.i ]
  %nchannels.i.i45.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 9
  %155 = ptrtoint ptr %nchannels.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %nchannels.i.i45.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %channel.0.i.i.i44.i)
  %cmp.not.i.i46.i = icmp ugt i32 %156, %channel.0.i.i.i44.i
  br i1 %cmp.not.i.i46.i, label %kvaser_usb_hydra_net_priv_from_cmd.exit.i53.i, label %kvaser_usb_hydra_net_priv_from_cmd.exit.thread.i50.i

kvaser_usb_hydra_net_priv_from_cmd.exit.thread.i50.i: ; preds = %kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i
  call void @__sanitizer_cov_trace_pc() #11
  %intf.i.i48.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %157 = ptrtoint ptr %intf.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %intf.i.i48.i, align 4
  %dev2.i.i49.i = getelementptr inbounds %struct.usb_interface, ptr %158, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i49.i, ptr noundef nonnull @.str.53, i32 noundef %channel.0.i.i.i44.i) #13
  br label %if.end

kvaser_usb_hydra_net_priv_from_cmd.exit.i53.i:    ; preds = %kvaser_usb_hydra_channel_from_cmd.exit.i.i47.i
  %arrayidx.i.i51.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 %channel.0.i.i.i44.i
  %159 = ptrtoint ptr %arrayidx.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i.i51.i, align 4
  %tobool.not.i52.i = icmp eq ptr %160, null
  br i1 %tobool.not.i52.i, label %kvaser_usb_hydra_net_priv_from_cmd.exit.i53.i.if.end_crit_edge, label %if.end.i54.i

kvaser_usb_hydra_net_priv_from_cmd.exit.i53.i.if.end_crit_edge: ; preds = %kvaser_usb_hydra_net_priv_from_cmd.exit.i53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i54.i:                                     ; preds = %kvaser_usb_hydra_net_priv_from_cmd.exit.i53.i
  call void @__sanitizer_cov_trace_pc() #11
  %stop_comp.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %160, i32 0, i32 6
  tail call void @complete(ptr noundef %stop_comp.i.i) #9
  br label %if.end

sw.bb2.i:                                         ; preds = %entry
  %he_addr.i.i.i.i55.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %cmd, i32 0, i32 1
  %161 = ptrtoint ptr %he_addr.i.i.i.i55.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %he_addr.i.i.i.i55.i, align 1
  %163 = lshr i8 %162, 2
  %164 = and i8 %163, 48
  %transid.i.i.i.i56.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %cmd, i32 0, i32 2
  %165 = ptrtoint ptr %transid.i.i.i.i56.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 2)
  %166 = load i16, ptr %transid.i.i.i.i56.i, align 1
  %167 = trunc i16 %166 to i8
  %168 = lshr i8 %167, 4
  %or.i.i.i.i57.i = or i8 %168, %164
  %169 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %169, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %171, i8 %or.i.i.i.i57.i)
  %cmp2.i.i.i58.i = icmp eq i8 %171, %or.i.i.i.i57.i
  br i1 %cmp2.i.i.i58.i, label %sw.bb2.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i_crit_edge, label %for.inc.i.i.i61.i

sw.bb2.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i

for.inc.i.i.i61.i:                                ; preds = %sw.bb2.i
  %arrayidx.1.i.i.i59.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 1
  %172 = ptrtoint ptr %arrayidx.1.i.i.i59.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx.1.i.i.i59.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %173, i8 %or.i.i.i.i57.i)
  %cmp2.1.i.i.i60.i = icmp eq i8 %173, %or.i.i.i.i57.i
  br i1 %cmp2.1.i.i.i60.i, label %for.inc.i.i.i61.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i_crit_edge, label %for.inc.1.i.i.i64.i

for.inc.i.i.i61.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i_crit_edge: ; preds = %for.inc.i.i.i61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i

for.inc.1.i.i.i64.i:                              ; preds = %for.inc.i.i.i61.i
  %arrayidx.2.i.i.i62.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 2
  %174 = ptrtoint ptr %arrayidx.2.i.i.i62.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx.2.i.i.i62.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %175, i8 %or.i.i.i.i57.i)
  %cmp2.2.i.i.i63.i = icmp eq i8 %175, %or.i.i.i.i57.i
  br i1 %cmp2.2.i.i.i63.i, label %for.inc.1.i.i.i64.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i_crit_edge, label %for.inc.2.i.i.i67.i

for.inc.1.i.i.i64.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i_crit_edge: ; preds = %for.inc.1.i.i.i64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i

for.inc.2.i.i.i67.i:                              ; preds = %for.inc.1.i.i.i64.i
  %arrayidx.3.i.i.i65.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 3
  %176 = ptrtoint ptr %arrayidx.3.i.i.i65.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx.3.i.i.i65.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %177, i8 %or.i.i.i.i57.i)
  %cmp2.3.i.i.i66.i = icmp eq i8 %177, %or.i.i.i.i57.i
  br i1 %cmp2.3.i.i.i66.i, label %for.inc.2.i.i.i67.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i_crit_edge, label %for.inc.3.i.i.i71.i

for.inc.2.i.i.i67.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i_crit_edge: ; preds = %for.inc.2.i.i.i67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i

for.inc.3.i.i.i71.i:                              ; preds = %for.inc.2.i.i.i67.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.4.i.i.i68.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 4
  %178 = ptrtoint ptr %arrayidx.4.i.i.i68.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx.4.i.i.i68.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %179, i8 %or.i.i.i.i57.i)
  %cmp2.4.i.i.i69.i = icmp eq i8 %179, %or.i.i.i.i57.i
  %spec.select.i.i.i70.i = select i1 %cmp2.4.i.i.i69.i, i32 4, i32 255
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i

kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i:   ; preds = %for.inc.3.i.i.i71.i, %for.inc.2.i.i.i67.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i_crit_edge, %for.inc.1.i.i.i64.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i_crit_edge, %for.inc.i.i.i61.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i_crit_edge, %sw.bb2.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i_crit_edge
  %channel.0.i.i.i72.i = phi i32 [ 0, %sw.bb2.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i_crit_edge ], [ 1, %for.inc.i.i.i61.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i_crit_edge ], [ 2, %for.inc.1.i.i.i64.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i_crit_edge ], [ 3, %for.inc.2.i.i.i67.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i_crit_edge ], [ %spec.select.i.i.i70.i, %for.inc.3.i.i.i71.i ]
  %nchannels.i.i73.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 9
  %180 = ptrtoint ptr %nchannels.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %nchannels.i.i73.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %181, i32 %channel.0.i.i.i72.i)
  %cmp.not.i.i74.i = icmp ugt i32 %181, %channel.0.i.i.i72.i
  br i1 %cmp.not.i.i74.i, label %kvaser_usb_hydra_net_priv_from_cmd.exit.i81.i, label %kvaser_usb_hydra_net_priv_from_cmd.exit.thread.i78.i

kvaser_usb_hydra_net_priv_from_cmd.exit.thread.i78.i: ; preds = %kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i
  call void @__sanitizer_cov_trace_pc() #11
  %intf.i.i76.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %182 = ptrtoint ptr %intf.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %intf.i.i76.i, align 4
  %dev2.i.i77.i = getelementptr inbounds %struct.usb_interface, ptr %183, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i77.i, ptr noundef nonnull @.str.53, i32 noundef %channel.0.i.i.i72.i) #13
  br label %if.end

kvaser_usb_hydra_net_priv_from_cmd.exit.i81.i:    ; preds = %kvaser_usb_hydra_channel_from_cmd.exit.i.i75.i
  %arrayidx.i.i79.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 %channel.0.i.i.i72.i
  %184 = ptrtoint ptr %arrayidx.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx.i.i79.i, align 4
  %tobool.not.i80.i = icmp eq ptr %185, null
  br i1 %tobool.not.i80.i, label %kvaser_usb_hydra_net_priv_from_cmd.exit.i81.i.if.end_crit_edge, label %if.end.i82.i

kvaser_usb_hydra_net_priv_from_cmd.exit.i81.i.if.end_crit_edge: ; preds = %kvaser_usb_hydra_net_priv_from_cmd.exit.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i82.i:                                     ; preds = %kvaser_usb_hydra_net_priv_from_cmd.exit.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  %flush_comp.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %185, i32 0, i32 7
  tail call void @complete(ptr noundef %flush_comp.i.i) #9
  br label %if.end

sw.bb3.i:                                         ; preds = %entry
  %he_addr.i.i.i.i83.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %cmd, i32 0, i32 1
  %186 = ptrtoint ptr %he_addr.i.i.i.i83.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %he_addr.i.i.i.i83.i, align 1
  %188 = lshr i8 %187, 2
  %189 = and i8 %188, 48
  %transid.i.i.i.i84.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %cmd, i32 0, i32 2
  %190 = ptrtoint ptr %transid.i.i.i.i84.i to i32
  call void @__asan_loadN_noabort(i32 %190, i32 2)
  %191 = load i16, ptr %transid.i.i.i.i84.i, align 1
  %192 = trunc i16 %191 to i8
  %193 = lshr i8 %192, 4
  %or.i.i.i.i85.i = or i8 %193, %189
  %194 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %194, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %196, i8 %or.i.i.i.i85.i)
  %cmp2.i.i.i86.i = icmp eq i8 %196, %or.i.i.i.i85.i
  br i1 %cmp2.i.i.i86.i, label %sw.bb3.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i_crit_edge, label %for.inc.i.i.i89.i

sw.bb3.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i_crit_edge: ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i

for.inc.i.i.i89.i:                                ; preds = %sw.bb3.i
  %arrayidx.1.i.i.i87.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 1
  %197 = ptrtoint ptr %arrayidx.1.i.i.i87.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx.1.i.i.i87.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %198, i8 %or.i.i.i.i85.i)
  %cmp2.1.i.i.i88.i = icmp eq i8 %198, %or.i.i.i.i85.i
  br i1 %cmp2.1.i.i.i88.i, label %for.inc.i.i.i89.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i_crit_edge, label %for.inc.1.i.i.i92.i

for.inc.i.i.i89.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i_crit_edge: ; preds = %for.inc.i.i.i89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i

for.inc.1.i.i.i92.i:                              ; preds = %for.inc.i.i.i89.i
  %arrayidx.2.i.i.i90.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 2
  %199 = ptrtoint ptr %arrayidx.2.i.i.i90.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx.2.i.i.i90.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %200, i8 %or.i.i.i.i85.i)
  %cmp2.2.i.i.i91.i = icmp eq i8 %200, %or.i.i.i.i85.i
  br i1 %cmp2.2.i.i.i91.i, label %for.inc.1.i.i.i92.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i_crit_edge, label %for.inc.2.i.i.i95.i

for.inc.1.i.i.i92.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i_crit_edge: ; preds = %for.inc.1.i.i.i92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i

for.inc.2.i.i.i95.i:                              ; preds = %for.inc.1.i.i.i92.i
  %arrayidx.3.i.i.i93.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 3
  %201 = ptrtoint ptr %arrayidx.3.i.i.i93.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx.3.i.i.i93.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %202, i8 %or.i.i.i.i85.i)
  %cmp2.3.i.i.i94.i = icmp eq i8 %202, %or.i.i.i.i85.i
  br i1 %cmp2.3.i.i.i94.i, label %for.inc.2.i.i.i95.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i_crit_edge, label %for.inc.3.i.i.i99.i

for.inc.2.i.i.i95.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i_crit_edge: ; preds = %for.inc.2.i.i.i95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i

for.inc.3.i.i.i99.i:                              ; preds = %for.inc.2.i.i.i95.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.4.i.i.i96.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 4
  %203 = ptrtoint ptr %arrayidx.4.i.i.i96.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx.4.i.i.i96.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %204, i8 %or.i.i.i.i85.i)
  %cmp2.4.i.i.i97.i = icmp eq i8 %204, %or.i.i.i.i85.i
  %spec.select.i.i.i98.i = select i1 %cmp2.4.i.i.i97.i, i32 4, i32 255
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i

kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i:  ; preds = %for.inc.3.i.i.i99.i, %for.inc.2.i.i.i95.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i_crit_edge, %for.inc.1.i.i.i92.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i_crit_edge, %for.inc.i.i.i89.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i_crit_edge, %sw.bb3.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i_crit_edge
  %channel.0.i.i.i100.i = phi i32 [ 0, %sw.bb3.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i_crit_edge ], [ 1, %for.inc.i.i.i89.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i_crit_edge ], [ 2, %for.inc.1.i.i.i92.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i_crit_edge ], [ 3, %for.inc.2.i.i.i95.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i_crit_edge ], [ %spec.select.i.i.i98.i, %for.inc.3.i.i.i99.i ]
  %nchannels.i.i101.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 9
  %205 = ptrtoint ptr %nchannels.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %nchannels.i.i101.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %channel.0.i.i.i100.i)
  %cmp.not.i.i102.i = icmp ugt i32 %206, %channel.0.i.i.i100.i
  br i1 %cmp.not.i.i102.i, label %kvaser_usb_hydra_net_priv_from_cmd.exit.i109.i, label %kvaser_usb_hydra_net_priv_from_cmd.exit.thread.i106.i

kvaser_usb_hydra_net_priv_from_cmd.exit.thread.i106.i: ; preds = %kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i
  call void @__sanitizer_cov_trace_pc() #11
  %intf.i.i104.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %207 = ptrtoint ptr %intf.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %intf.i.i104.i, align 4
  %dev2.i.i105.i = getelementptr inbounds %struct.usb_interface, ptr %208, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i105.i, ptr noundef nonnull @.str.53, i32 noundef %channel.0.i.i.i100.i) #13
  br label %if.end

kvaser_usb_hydra_net_priv_from_cmd.exit.i109.i:   ; preds = %kvaser_usb_hydra_channel_from_cmd.exit.i.i103.i
  %arrayidx.i.i107.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 %channel.0.i.i.i100.i
  %209 = ptrtoint ptr %arrayidx.i.i107.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %arrayidx.i.i107.i, align 4
  %tobool.not.i108.i = icmp eq ptr %210, null
  br i1 %tobool.not.i108.i, label %kvaser_usb_hydra_net_priv_from_cmd.exit.i109.i.if.end_crit_edge, label %if.end.i110.i

kvaser_usb_hydra_net_priv_from_cmd.exit.i109.i.if.end_crit_edge: ; preds = %kvaser_usb_hydra_net_priv_from_cmd.exit.i109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i110.i:                                    ; preds = %kvaser_usb_hydra_net_priv_from_cmd.exit.i109.i
  %211 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 1
  %bus_status1.i.i = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 2
  %212 = ptrtoint ptr %bus_status1.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %bus_status1.i.i, align 1
  %tx_err_counter.i.i = getelementptr inbounds %struct.kvaser_cmd_chip_state_event, ptr %211, i32 0, i32 1
  %214 = ptrtoint ptr %tx_err_counter.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %tx_err_counter.i.i, align 1
  %conv.i.i38 = zext i8 %215 to i16
  %rx_err_counter.i.i = getelementptr inbounds %struct.kvaser_cmd_chip_state_event, ptr %211, i32 0, i32 2
  %216 = ptrtoint ptr %rx_err_counter.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %rx_err_counter.i.i, align 1
  %conv2.i.i = zext i8 %217 to i16
  %netdev1.i.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %210, i32 0, i32 3
  %218 = ptrtoint ptr %netdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %netdev1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i.i.i) #9
  %220 = ptrtoint ptr %cf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i.i.i, align 4, !annotation !170
  %state.i.i.i = getelementptr inbounds %struct.can_priv, ptr %210, i32 0, i32 21
  %221 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %state.i.i.i, align 4
  %conv.i.i.i.i = zext i8 %213 to i32
  %and.i.i.i.i = and i32 %conv.i.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %if.end.i110.i.kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i_crit_edge

if.end.i110.i.kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i_crit_edge: ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i110.i
  %and2.i.i.i.i = and i32 %conv.i.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.else5.i.i.i.i, label %if.else.i.i.i.i.kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i_crit_edge

if.else.i.i.i.i.kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i

if.else5.i.i.i.i:                                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %cmp.i.i.i.i = icmp eq i8 %213, 0
  br i1 %cmp.i.i.i.i, label %if.then8.i.i.i.i, label %if.else5.i.i.i.i.kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i_crit_edge

if.else5.i.i.i.i.kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i_crit_edge: ; preds = %if.else5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i

if.then8.i.i.i.i:                                 ; preds = %if.else5.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %cmp10.i.i.i.i = icmp slt i8 %215, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %cmp13.i.i.i.i = icmp slt i8 %217, 0
  %or.cond.i.i = select i1 %cmp10.i.i.i.i, i1 true, i1 %cmp13.i.i.i.i
  br i1 %or.cond.i.i, label %if.then15.i.i.i.i, label %if.else20.i.i.i.i

if.then15.i.i.i.i:                                ; preds = %if.then8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv17.i.i.i.i = zext i8 %215 to i32
  %conv19.i.i.i.i = zext i8 %217 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %219, ptr noundef nonnull @.str.56, i32 noundef %conv17.i.i.i.i, i32 noundef %conv19.i.i.i.i) #13
  br label %kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i

if.else20.i.i.i.i:                                ; preds = %if.then8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %215)
  %cmp23.i.i.i.i = icmp ugt i8 %215, 95
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %217)
  %cmp28.i.i.i.i = icmp ugt i8 %217, 95
  %or.cond.i.i.i.i = select i1 %cmp23.i.i.i.i, i1 true, i1 %cmp28.i.i.i.i
  %..i.i.i.i = zext i1 %or.cond.i.i.i.i to i32
  br label %kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i

kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i: ; preds = %if.else20.i.i.i.i, %if.then15.i.i.i.i, %if.else5.i.i.i.i.kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i_crit_edge, %if.else.i.i.i.i.kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i_crit_edge, %if.end.i110.i.kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i_crit_edge
  %new_state.0.i.i.i = phi i32 [ -1, %if.else5.i.i.i.i.kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i_crit_edge ], [ 2, %if.then15.i.i.i.i ], [ 3, %if.end.i110.i.kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i_crit_edge ], [ 2, %if.else.i.i.i.i.kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i_crit_edge ], [ %..i.i.i.i, %if.else20.i.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %new_state.0.i.i.i, i32 %222)
  %cmp.i.i.i39 = icmp eq i32 %new_state.0.i.i.i, %222
  br i1 %cmp.i.i.i39, label %kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i.kvaser_usb_hydra_update_state.exit.i.i_crit_edge, label %if.end.i.i.i40

kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i.kvaser_usb_hydra_update_state.exit.i.i_crit_edge: ; preds = %kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_update_state.exit.i.i

if.end.i.i.i40:                                   ; preds = %kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %222)
  %cmp2.i.i.i = icmp eq i32 %222, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %new_state.0.i.i.i)
  %cmp3.i.i.i = icmp eq i32 %new_state.0.i.i.i, 3
  %or.cond.i.i.i = select i1 %cmp2.i.i.i, i1 %cmp3.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.end.i.i.i40.kvaser_usb_hydra_update_state.exit.i.i_crit_edge, label %if.end5.i.i.i

if.end.i.i.i40.kvaser_usb_hydra_update_state.exit.i.i_crit_edge: ; preds = %if.end.i.i.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_update_state.exit.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i40
  %call.i.i.i = call ptr @alloc_can_err_skb(ptr noundef %219, ptr noundef nonnull %cf.i.i.i) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end5.i.i.i.if.end20.i.i.i_crit_edge, label %if.then6.i.i.i

if.end5.i.i.i.if.end20.i.i.i_crit_edge:           ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp1(i8 %215, i8 %217)
  %cmp8.not.i.i.i = icmp ult i8 %215, %217
  %spec.select.i.i.i = select i1 %cmp8.not.i.i.i, i32 0, i32 %new_state.0.i.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %215, i8 %217)
  %cmp14.not.i.i.i = icmp ugt i8 %215, %217
  %cond19.i.i.i = select i1 %cmp14.not.i.i.i, i32 0, i32 %new_state.0.i.i.i
  %223 = ptrtoint ptr %cf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %cf.i.i.i, align 4
  call void @can_change_state(ptr noundef %219, ptr noundef %224, i32 noundef %spec.select.i.i.i, i32 noundef %cond19.i.i.i) #9
  br label %if.end20.i.i.i

if.end20.i.i.i:                                   ; preds = %if.then6.i.i.i, %if.end5.i.i.i.if.end20.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %222)
  %cmp24.i.i.i = icmp ult i32 %222, 3
  %or.cond80.i.i.i = select i1 %cmp3.i.i.i, i1 %cmp24.i.i.i, i1 false
  br i1 %or.cond80.i.i.i, label %if.then26.i.i.i, label %if.end20.i.i.i.if.end32.i.i.i_crit_edge

if.end20.i.i.i.if.end32.i.i.i_crit_edge:          ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i.i.i

if.then26.i.i.i:                                  ; preds = %if.end20.i.i.i
  %restart_ms.i.i.i = getelementptr inbounds %struct.can_priv, ptr %210, i32 0, i32 24
  %225 = ptrtoint ptr %restart_ms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %restart_ms.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool28.not.i.i.i = icmp eq i32 %226, 0
  br i1 %tobool28.not.i.i.i, label %if.then29.i.i.i, label %if.then26.i.i.i.if.end31.i.i.i_crit_edge

if.then26.i.i.i.if.end31.i.i.i_crit_edge:         ; preds = %if.then26.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i.i.i

if.then29.i.i.i:                                  ; preds = %if.then26.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @kvaser_usb_hydra_send_simple_cmd_async(ptr noundef nonnull %210) #9
  br label %if.end31.i.i.i

if.end31.i.i.i:                                   ; preds = %if.then29.i.i.i, %if.then26.i.i.i.if.end31.i.i.i_crit_edge
  call void @can_bus_off(ptr noundef %219) #9
  br label %if.end32.i.i.i

if.end32.i.i.i:                                   ; preds = %if.end31.i.i.i, %if.end20.i.i.i.if.end32.i.i.i_crit_edge
  br i1 %tobool.not.i.i.i, label %if.then34.i.i.i, label %if.end35.i.i.i

if.then34.i.i.i:                                  ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %219, ptr noundef nonnull @.str.55) #13
  br label %kvaser_usb_hydra_update_state.exit.i.i

if.end35.i.i.i:                                   ; preds = %if.end32.i.i.i
  %restart_ms37.i.i.i = getelementptr inbounds %struct.can_priv, ptr %210, i32 0, i32 24
  %227 = ptrtoint ptr %restart_ms37.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %restart_ms37.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool38.not.i.i.i = icmp ne i32 %228, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %222)
  %cmp40.i.i.i = icmp ugt i32 %222, 2
  %or.cond81.i.i.i = select i1 %tobool38.not.i.i.i, i1 %cmp40.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %new_state.0.i.i.i)
  %cmp43.i.i.i = icmp ult i32 %new_state.0.i.i.i, 3
  %or.cond86.i.i.i = select i1 %or.cond81.i.i.i, i1 %cmp43.i.i.i, i1 false
  br i1 %or.cond86.i.i.i, label %if.then45.i.i.i, label %if.end35.i.i.i.if.end47.i.i.i_crit_edge

if.end35.i.i.i.if.end47.i.i.i_crit_edge:          ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i.i.i

if.then45.i.i.i:                                  ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %restarts.i.i.i = getelementptr inbounds %struct.can_priv, ptr %210, i32 0, i32 1, i32 5
  %229 = ptrtoint ptr %restarts.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %restarts.i.i.i, align 4
  %inc.i.i.i = add i32 %230, 1
  store i32 %inc.i.i.i, ptr %restarts.i.i.i, align 4
  br label %if.end47.i.i.i

if.end47.i.i.i:                                   ; preds = %if.then45.i.i.i, %if.end35.i.i.i.if.end47.i.i.i_crit_edge
  %231 = ptrtoint ptr %cf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %cf.i.i.i, align 4
  %arrayidx.i17.i.i = getelementptr %struct.can_frame, ptr %232, i32 0, i32 5, i32 6
  %233 = ptrtoint ptr %arrayidx.i17.i.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %215, ptr %arrayidx.i17.i.i, align 2
  %234 = load ptr, ptr %cf.i.i.i, align 4
  %arrayidx53.i.i.i = getelementptr %struct.can_frame, ptr %234, i32 0, i32 5, i32 7
  %235 = ptrtoint ptr %arrayidx53.i.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %217, ptr %arrayidx53.i.i.i, align 1
  %call54.i.i.i = call i32 @netif_rx(ptr noundef nonnull %call.i.i.i) #9
  br label %kvaser_usb_hydra_update_state.exit.i.i

kvaser_usb_hydra_update_state.exit.i.i:           ; preds = %if.end47.i.i.i, %if.then34.i.i.i, %if.end.i.i.i40.kvaser_usb_hydra_update_state.exit.i.i_crit_edge, %kvaser_usb_hydra_bus_status_to_can_state.exit.i.i.i.kvaser_usb_hydra_update_state.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i.i.i) #9
  %bec4.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %210, i32 0, i32 1
  %236 = ptrtoint ptr %bec4.i.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %conv.i.i38, ptr %bec4.i.i, align 4
  %rxerr8.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %210, i32 0, i32 1, i32 1
  %237 = ptrtoint ptr %rxerr8.i.i to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 %conv2.i.i, ptr %rxerr8.i.i, align 2
  br label %if.end

sw.bb4.i:                                         ; preds = %entry
  %238 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 1
  %error_code.i.i = getelementptr inbounds %struct.kvaser_cmd_error_event, ptr %238, i32 0, i32 2
  %239 = ptrtoint ptr %error_code.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %error_code.i.i, align 1
  %241 = zext i8 %240 to i64
  call void @__sanitizer_cov_trace_switch(i64 %241, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %240, label %do.end5.i.i [
    i8 9, label %sw.bb.i.i
    i8 1, label %do.end.i.i
  ]

sw.bb.i.i:                                        ; preds = %sw.bb4.i
  %info1.i.i.i = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 2
  %242 = ptrtoint ptr %info1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %242, i32 2)
  %243 = load i16, ptr %info1.i.i.i, align 1
  %244 = tail call i16 @llvm.bswap.i16(i16 %243) #9
  %245 = zext i16 %244 to i64
  call void @__sanitizer_cov_trace_switch(i64 %245, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %244, label %do.end23.i.i.i [
    i16 26, label %do.end.i.i.i
    i16 28, label %do.end4.i.i.i
    i16 48, label %do.end9.i.i.i
    i16 16, label %do.end14.i.i.i
    i16 69, label %do.end19.i.i.i
  ]

do.end.i.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %intf.i.i111.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %246 = ptrtoint ptr %intf.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %intf.i.i111.i, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %247, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i.i.i, ptr noundef nonnull @.str.64) #13
  br label %if.end

do.end4.i.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %intf5.i.i.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %248 = ptrtoint ptr %intf5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %intf5.i.i.i, align 4
  %dev6.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %249, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6.i.i.i, ptr noundef nonnull @.str.67) #13
  br label %if.end

do.end9.i.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %intf10.i.i.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %250 = ptrtoint ptr %intf10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %intf10.i.i.i, align 4
  %dev11.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %251, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11.i.i.i, ptr noundef nonnull @.str.70) #13
  br label %if.end

do.end14.i.i.i:                                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %intf15.i.i.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %252 = ptrtoint ptr %intf15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %intf15.i.i.i, align 4
  %dev16.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %253, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev16.i.i.i, ptr noundef nonnull @.str.73) #13
  br label %if.end

do.end19.i.i.i:                                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %intf20.i.i.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %254 = ptrtoint ptr %intf20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %intf20.i.i.i, align 4
  %dev21.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %255, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev21.i.i.i, ptr noundef nonnull @.str.76) #13
  br label %if.end

do.end23.i.i.i:                                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i = zext i16 %244 to i32
  %intf24.i.i.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %256 = ptrtoint ptr %intf24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %intf24.i.i.i, align 4
  %dev25.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %257, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev25.i.i.i, ptr noundef nonnull @.str.79, i32 noundef %conv.i.i.i) #13
  br label %if.end

do.end.i.i:                                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #11
  %intf.i.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %258 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %intf.i.i, align 4
  %dev2.i.i = getelementptr inbounds %struct.usb_interface, ptr %259, i32 0, i32 7
  %info1.i.i = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 2
  %260 = ptrtoint ptr %info1.i.i to i32
  call void @__asan_loadN_noabort(i32 %260, i32 2)
  %261 = load i16, ptr %info1.i.i, align 1
  %262 = tail call i16 @llvm.bswap.i16(i16 %261) #9
  %conv3.i.i = zext i16 %262 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.59, i32 noundef %conv3.i.i) #13
  br label %if.end

do.end5.i.i:                                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i112.i = zext i8 %240 to i32
  %intf6.i.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %263 = ptrtoint ptr %intf6.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %intf6.i.i, align 4
  %dev7.i.i = getelementptr inbounds %struct.usb_interface, ptr %264, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7.i.i, ptr noundef nonnull @.str.62, i32 noundef %conv.i112.i) #13
  br label %if.end

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @kvaser_usb_hydra_tx_acknowledge(ptr noundef %dev, ptr noundef %cmd) #9
  br label %if.end

sw.bb6.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i.i5) #9
  %265 = ptrtoint ptr %cf.i.i5 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i.i5, align 4, !annotation !170
  %he_addr.i.i.i.i113.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %cmd, i32 0, i32 1
  %266 = ptrtoint ptr %he_addr.i.i.i.i113.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %he_addr.i.i.i.i113.i, align 1
  %268 = lshr i8 %267, 2
  %269 = and i8 %268, 48
  %transid.i.i.i.i114.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %cmd, i32 0, i32 2
  %270 = ptrtoint ptr %transid.i.i.i.i114.i to i32
  call void @__asan_loadN_noabort(i32 %270, i32 2)
  %271 = load i16, ptr %transid.i.i.i.i114.i, align 1
  %272 = trunc i16 %271 to i8
  %273 = lshr i8 %272, 4
  %or.i.i.i.i115.i = or i8 %273, %269
  %274 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %274, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %276, i8 %or.i.i.i.i115.i)
  %cmp2.i.i.i116.i = icmp eq i8 %276, %or.i.i.i.i115.i
  br i1 %cmp2.i.i.i116.i, label %sw.bb6.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i_crit_edge, label %for.inc.i.i.i119.i

sw.bb6.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i_crit_edge: ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i

for.inc.i.i.i119.i:                               ; preds = %sw.bb6.i
  %arrayidx.1.i.i.i117.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 1
  %277 = ptrtoint ptr %arrayidx.1.i.i.i117.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx.1.i.i.i117.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %278, i8 %or.i.i.i.i115.i)
  %cmp2.1.i.i.i118.i = icmp eq i8 %278, %or.i.i.i.i115.i
  br i1 %cmp2.1.i.i.i118.i, label %for.inc.i.i.i119.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i_crit_edge, label %for.inc.1.i.i.i122.i

for.inc.i.i.i119.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i_crit_edge: ; preds = %for.inc.i.i.i119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i

for.inc.1.i.i.i122.i:                             ; preds = %for.inc.i.i.i119.i
  %arrayidx.2.i.i.i120.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 2
  %279 = ptrtoint ptr %arrayidx.2.i.i.i120.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %arrayidx.2.i.i.i120.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %280, i8 %or.i.i.i.i115.i)
  %cmp2.2.i.i.i121.i = icmp eq i8 %280, %or.i.i.i.i115.i
  br i1 %cmp2.2.i.i.i121.i, label %for.inc.1.i.i.i122.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i_crit_edge, label %for.inc.2.i.i.i125.i

for.inc.1.i.i.i122.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i_crit_edge: ; preds = %for.inc.1.i.i.i122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i

for.inc.2.i.i.i125.i:                             ; preds = %for.inc.1.i.i.i122.i
  %arrayidx.3.i.i.i123.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 3
  %281 = ptrtoint ptr %arrayidx.3.i.i.i123.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx.3.i.i.i123.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %282, i8 %or.i.i.i.i115.i)
  %cmp2.3.i.i.i124.i = icmp eq i8 %282, %or.i.i.i.i115.i
  br i1 %cmp2.3.i.i.i124.i, label %for.inc.2.i.i.i125.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i_crit_edge, label %for.inc.3.i.i.i129.i

for.inc.2.i.i.i125.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i_crit_edge: ; preds = %for.inc.2.i.i.i125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i

for.inc.3.i.i.i129.i:                             ; preds = %for.inc.2.i.i.i125.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.4.i.i.i126.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 4
  %283 = ptrtoint ptr %arrayidx.4.i.i.i126.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %arrayidx.4.i.i.i126.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %284, i8 %or.i.i.i.i115.i)
  %cmp2.4.i.i.i127.i = icmp eq i8 %284, %or.i.i.i.i115.i
  %spec.select.i.i.i128.i = select i1 %cmp2.4.i.i.i127.i, i32 4, i32 255
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i

kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i:  ; preds = %for.inc.3.i.i.i129.i, %for.inc.2.i.i.i125.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i_crit_edge, %for.inc.1.i.i.i122.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i_crit_edge, %for.inc.i.i.i119.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i_crit_edge, %sw.bb6.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i_crit_edge
  %channel.0.i.i.i130.i = phi i32 [ 0, %sw.bb6.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i_crit_edge ], [ 1, %for.inc.i.i.i119.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i_crit_edge ], [ 2, %for.inc.1.i.i.i122.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i_crit_edge ], [ 3, %for.inc.2.i.i.i125.i.kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i_crit_edge ], [ %spec.select.i.i.i128.i, %for.inc.3.i.i.i129.i ]
  %nchannels.i.i131.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 9
  %285 = ptrtoint ptr %nchannels.i.i131.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %nchannels.i.i131.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %286, i32 %channel.0.i.i.i130.i)
  %cmp.not.i.i132.i = icmp ugt i32 %286, %channel.0.i.i.i130.i
  br i1 %cmp.not.i.i132.i, label %kvaser_usb_hydra_net_priv_from_cmd.exit.i139.i, label %kvaser_usb_hydra_net_priv_from_cmd.exit.thread.i136.i

kvaser_usb_hydra_net_priv_from_cmd.exit.thread.i136.i: ; preds = %kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i
  call void @__sanitizer_cov_trace_pc() #11
  %intf.i.i134.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %287 = ptrtoint ptr %intf.i.i134.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %intf.i.i134.i, align 4
  %dev2.i.i135.i = getelementptr inbounds %struct.usb_interface, ptr %288, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i135.i, ptr noundef nonnull @.str.53, i32 noundef %channel.0.i.i.i130.i) #13
  br label %kvaser_usb_hydra_rx_msg_std.exit.i

kvaser_usb_hydra_net_priv_from_cmd.exit.i139.i:   ; preds = %kvaser_usb_hydra_channel_from_cmd.exit.i.i133.i
  %arrayidx.i.i137.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 %channel.0.i.i.i130.i
  %289 = ptrtoint ptr %arrayidx.i.i137.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %arrayidx.i.i137.i, align 4
  %tobool.not.i138.i = icmp eq ptr %290, null
  br i1 %tobool.not.i138.i, label %kvaser_usb_hydra_net_priv_from_cmd.exit.i139.i.kvaser_usb_hydra_rx_msg_std.exit.i_crit_edge, label %if.end.i.i143.i

kvaser_usb_hydra_net_priv_from_cmd.exit.i139.i.kvaser_usb_hydra_rx_msg_std.exit.i_crit_edge: ; preds = %kvaser_usb_hydra_net_priv_from_cmd.exit.i139.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_rx_msg_std.exit.i

if.end.i.i143.i:                                  ; preds = %kvaser_usb_hydra_net_priv_from_cmd.exit.i139.i
  %netdev.i140.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %290, i32 0, i32 3
  %291 = ptrtoint ptr %netdev.i140.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %netdev.i140.i, align 4
  %stats1.i.i41 = getelementptr inbounds %struct.net_device, ptr %292, i32 0, i32 36
  %293 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 1
  %flags2.i.i = getelementptr inbounds %struct.kvaser_cmd_rx_can, ptr %293, i32 0, i32 3
  %294 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %flags2.i.i, align 1
  %cfg.i.i42 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 4
  %296 = ptrtoint ptr %cfg.i.i42 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %cfg.i.i42, align 4
  %timestamp2.i.i.i = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %298 = ptrtoint ptr %timestamp2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %298, i32 2)
  %299 = load i16, ptr %timestamp2.i.i.i, align 1
  %300 = tail call i16 @llvm.bswap.i16(i16 %299) #9
  %conv3.i.i.i43 = zext i16 %300 to i64
  %arrayidx5.i.i.i44 = getelementptr [3 x i16], ptr %timestamp2.i.i.i, i32 0, i32 1
  %301 = ptrtoint ptr %arrayidx5.i.i.i44 to i32
  call void @__asan_loadN_noabort(i32 %301, i32 2)
  %302 = load i16, ptr %arrayidx5.i.i.i44, align 1
  %303 = tail call i16 @llvm.bswap.i16(i16 %302) #9
  %conv6.i.i.i45 = zext i16 %303 to i64
  %shl.i.i.i46 = shl nuw nsw i64 %conv6.i.i.i45, 16
  %add.i.i.i47 = or i64 %shl.i.i.i46, %conv3.i.i.i43
  %arrayidx8.i.i.i48 = getelementptr %struct.kvaser_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 2
  %304 = ptrtoint ptr %arrayidx8.i.i.i48 to i32
  call void @__asan_loadN_noabort(i32 %304, i32 2)
  %305 = load i16, ptr %arrayidx8.i.i.i48, align 1
  %306 = tail call i16 @llvm.bswap.i16(i16 %305) #9
  %conv9.i.i.i49 = zext i16 %306 to i64
  %shl10.i.i.i50 = shl nuw nsw i64 %conv9.i.i.i49, 32
  %add11.i.i.i51 = or i64 %add.i.i.i47, %shl10.i.i.i50
  %mul.i.i.i52 = mul nuw nsw i64 %add11.i.i.i51, 1000
  %timestamp_freq.i.i.i53 = getelementptr inbounds %struct.kvaser_usb_dev_cfg, ptr %297, i32 0, i32 1
  %307 = ptrtoint ptr %timestamp_freq.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %timestamp_freq.i.i.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i.i52)
  %cmp164.i.i.i.i.i158 = icmp ult i64 %mul.i.i.i52, 4294967296
  br i1 %cmp164.i.i.i.i.i158, label %if.then168.i.i.i.i.i163, label %if.else174.i.i.i.i.i165, !prof !171

if.then168.i.i.i.i.i163:                          ; preds = %if.end.i.i143.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i.i.i.i160 = trunc i64 %mul.i.i.i52 to i32
  %div172.i.i.i.i.i161 = udiv i32 %conv169.i.i.i.i.i160, %308
  %conv173.i.i.i.i.i162 = zext i32 %div172.i.i.i.i.i161 to i64
  br label %kvaser_usb_hydra_ktime_from_rx_cmd.exit.i.i167

if.else174.i.i.i.i.i165:                          ; preds = %if.end.i.i143.i
  call void @__sanitizer_cov_trace_pc() #11
  %309 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %308, i64 %mul.i.i.i52) #15, !srcloc !172
  %asmresult1.i.i.i.i.i.i164 = extractvalue { i64, i64 } %309, 1
  br label %kvaser_usb_hydra_ktime_from_rx_cmd.exit.i.i167

kvaser_usb_hydra_ktime_from_rx_cmd.exit.i.i167:   ; preds = %if.else174.i.i.i.i.i165, %if.then168.i.i.i.i.i163
  %dividend.addr.0.i.i.i.i.i166 = phi i64 [ %conv173.i.i.i.i.i162, %if.then168.i.i.i.i.i163 ], [ %asmresult1.i.i.i.i.i.i164, %if.else174.i.i.i.i.i165 ]
  %conv.i144.i = zext i8 %295 to i32
  %and.i.i = and i32 %conv.i144.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %kvaser_usb_hydra_ktime_from_rx_cmd.exit.i.i167
  call void @__sanitizer_cov_trace_pc() #11
  %310 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 3, i32 1
  tail call fastcc void @kvaser_usb_hydra_error_frame(ptr noundef nonnull %290, ptr noundef %310, i64 noundef %dividend.addr.0.i.i.i.i.i166) #9
  br label %kvaser_usb_hydra_rx_msg_std.exit.i

if.end6.i.i:                                      ; preds = %kvaser_usb_hydra_ktime_from_rx_cmd.exit.i.i167
  %call8.i.i = call ptr @alloc_can_skb(ptr noundef %292, ptr noundef nonnull %cf.i.i5) #9
  %tobool9.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %if.end11.i.i

if.then10.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_dropped.i.i168 = getelementptr inbounds %struct.net_device, ptr %292, i32 0, i32 36, i32 6
  %311 = ptrtoint ptr %rx_dropped.i.i168 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %rx_dropped.i.i168, align 4
  %inc.i.i169 = add i32 %312, 1
  store i32 %inc.i.i169, ptr %rx_dropped.i.i168, align 4
  br label %kvaser_usb_hydra_rx_msg_std.exit.i

if.end11.i.i:                                     ; preds = %if.end6.i.i
  %end.i.i.i.i170 = getelementptr inbounds %struct.sk_buff, ptr %call8.i.i, i32 0, i32 17
  %313 = ptrtoint ptr %end.i.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %end.i.i.i.i170, align 4
  %hwtstamps.i.i.i171 = getelementptr inbounds %struct.skb_shared_info, ptr %314, i32 0, i32 7
  %315 = ptrtoint ptr %hwtstamps.i.i.i171 to i32
  call void @__asan_store8_noabort(i32 %315)
  store i64 %dividend.addr.0.i.i.i.i.i166, ptr %hwtstamps.i.i.i171, align 8
  %id.i.i172 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 3
  %316 = ptrtoint ptr %id.i.i172 to i32
  call void @__asan_loadN_noabort(i32 %316, i32 4)
  %317 = load i32, ptr %id.i.i172, align 1
  %318 = call i32 @llvm.bswap.i32(i32 %317) #9
  %319 = ptrtoint ptr %cf.i.i5 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %cf.i.i5, align 4
  %321 = ptrtoint ptr %320 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %318, ptr %320, align 8
  %322 = load ptr, ptr %cf.i.i5, align 4
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %322, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %324)
  %tobool16.not.i.i = icmp sgt i32 %324, -1
  br i1 %tobool16.not.i.i, label %if.else.i145.i, label %if.then17.i.i

if.then17.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and19.i.i = and i32 %324, 536870911
  %325 = ptrtoint ptr %322 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %and19.i.i, ptr %322, align 8
  %326 = ptrtoint ptr %cf.i.i5 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %cf.i.i5, align 4
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %327, align 8
  %or.i.i173 = or i32 %329, -2147483648
  store i32 %or.i.i173, ptr %327, align 8
  br label %if.end23.i.i

if.else.i145.i:                                   ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and22.i.i174 = and i32 %324, 2047
  %330 = ptrtoint ptr %322 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %and22.i.i174, ptr %322, align 8
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.else.i145.i, %if.then17.i.i
  %and25.i.i = and i32 %conv.i144.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end23.i.i.if.end30.i.i_crit_edge, label %if.then27.i.i

if.end23.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i.i

if.then27.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %331 = ptrtoint ptr %netdev.i140.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %netdev.i140.i, align 4
  %call29.i.i = call i32 @kvaser_usb_can_rx_over_error(ptr noundef %332) #9
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then27.i.i, %if.end23.i.i.if.end30.i.i_crit_edge
  %dlc.i.i = getelementptr inbounds %struct.kvaser_cmd_rx_can, ptr %293, i32 0, i32 5
  %333 = ptrtoint ptr %dlc.i.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %dlc.i.i, align 1
  %335 = call i8 @llvm.umin.i8(i8 %334, i8 8) #9
  %336 = ptrtoint ptr %cf.i.i5 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %cf.i.i5, align 4
  %338 = getelementptr inbounds %struct.can_frame, ptr %337, i32 0, i32 1
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %335, ptr %338, align 4
  %and38.i.i = and i32 %conv.i144.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i.i)
  %tobool39.not.i.i = icmp eq i32 %and38.i.i, 0
  br i1 %tobool39.not.i.i, label %if.else43.i.i, label %if.then40.i.i175

if.then40.i.i175:                                 ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %340 = ptrtoint ptr %337 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %337, align 8
  %or42.i.i = or i32 %341, 1073741824
  store i32 %or42.i.i, ptr %337, align 8
  br label %if.end47.i.i

if.else43.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i176 = getelementptr inbounds %struct.can_frame, ptr %337, i32 0, i32 5
  %342 = getelementptr inbounds %struct.kvaser_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 3, i32 1
  %conv45.i.i = zext i8 %335 to i32
  %343 = call ptr @memcpy(ptr %data.i.i176, ptr %342, i32 %conv45.i.i)
  %rx_bytes.i.i177 = getelementptr inbounds %struct.net_device, ptr %292, i32 0, i32 36, i32 2
  %344 = ptrtoint ptr %rx_bytes.i.i177 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %rx_bytes.i.i177, align 4
  %add.i.i178 = add i32 %345, %conv45.i.i
  store i32 %add.i.i178, ptr %rx_bytes.i.i177, align 4
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.else43.i.i, %if.then40.i.i175
  %346 = ptrtoint ptr %stats1.i.i41 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %stats1.i.i41, align 4
  %inc48.i.i = add i32 %347, 1
  store i32 %inc48.i.i, ptr %stats1.i.i41, align 4
  %call49.i.i = call i32 @netif_rx(ptr noundef nonnull %call8.i.i) #9
  br label %kvaser_usb_hydra_rx_msg_std.exit.i

kvaser_usb_hydra_rx_msg_std.exit.i:               ; preds = %if.end47.i.i, %if.then10.i.i, %if.then5.i.i, %kvaser_usb_hydra_net_priv_from_cmd.exit.i139.i.kvaser_usb_hydra_rx_msg_std.exit.i_crit_edge, %kvaser_usb_hydra_net_priv_from_cmd.exit.thread.i136.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i.i5) #9
  br label %if.end

do.end.i180:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %1 to i32
  %intf.i179 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %348 = ptrtoint ptr %intf.i179 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %intf.i179, align 4
  %dev8.i = getelementptr inbounds %struct.usb_interface, ptr %349, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i, ptr noundef nonnull @.str.57, i32 noundef %conv.i) #13
  br label %if.end

if.end:                                           ; preds = %do.end.i180, %kvaser_usb_hydra_rx_msg_std.exit.i, %sw.bb5.i, %do.end5.i.i, %do.end.i.i, %do.end23.i.i.i, %do.end19.i.i.i, %do.end14.i.i.i, %do.end9.i.i.i, %do.end4.i.i.i, %do.end.i.i.i, %kvaser_usb_hydra_update_state.exit.i.i, %kvaser_usb_hydra_net_priv_from_cmd.exit.i109.i.if.end_crit_edge, %kvaser_usb_hydra_net_priv_from_cmd.exit.thread.i106.i, %if.end.i82.i, %kvaser_usb_hydra_net_priv_from_cmd.exit.i81.i.if.end_crit_edge, %kvaser_usb_hydra_net_priv_from_cmd.exit.thread.i78.i, %if.end.i54.i, %kvaser_usb_hydra_net_priv_from_cmd.exit.i53.i.if.end_crit_edge, %kvaser_usb_hydra_net_priv_from_cmd.exit.thread.i50.i, %if.else.i.i36, %if.then3.i.i, %kvaser_usb_hydra_net_priv_from_cmd.exit.i.i33.if.end_crit_edge, %kvaser_usb_hydra_net_priv_from_cmd.exit.thread.i.i30, %do.end.i, %kvaser_usb_hydra_rx_msg_ext.exit.i, %sw.bb.i, %entry.if.end_crit_edge, %entry.if.end_crit_edge181
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kvaser_usb_hydra_tx_acknowledge(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %cmd) unnamed_addr #1 align 64 {
entry:
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transid.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %transid.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %transid.i, align 1
  %2 = and i16 %1, -241
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #9
  %he_addr.i.i.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %he_addr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %he_addr.i.i.i, align 1
  %6 = lshr i8 %5, 2
  %7 = and i8 %6, 48
  %8 = trunc i16 %1 to i8
  %9 = lshr i8 %8, 4
  %or.i.i.i = or i8 %7, %9
  %10 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %or.i.i.i)
  %cmp2.i.i = icmp eq i8 %12, %or.i.i.i
  br i1 %cmp2.i.i, label %entry.kvaser_usb_hydra_channel_from_cmd.exit.i_crit_edge, label %for.inc.i.i

entry.kvaser_usb_hydra_channel_from_cmd.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %or.i.i.i)
  %cmp2.1.i.i = icmp eq i8 %14, %or.i.i.i
  br i1 %cmp2.1.i.i, label %for.inc.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %arrayidx.2.i.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %or.i.i.i)
  %cmp2.2.i.i = icmp eq i8 %16, %or.i.i.i
  br i1 %cmp2.2.i.i, label %for.inc.1.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %arrayidx.3.i.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.3.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %or.i.i.i)
  %cmp2.3.i.i = icmp eq i8 %18, %or.i.i.i
  br i1 %cmp2.3.i.i, label %for.inc.2.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i_crit_edge, label %for.inc.3.i.i

for.inc.2.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.4.i.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 11, i32 2, i32 0, i32 0, i32 4
  %19 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.4.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %or.i.i.i)
  %cmp2.4.i.i = icmp eq i8 %20, %or.i.i.i
  %spec.select.i.i = select i1 %cmp2.4.i.i, i32 4, i32 255
  br label %kvaser_usb_hydra_channel_from_cmd.exit.i

kvaser_usb_hydra_channel_from_cmd.exit.i:         ; preds = %for.inc.3.i.i, %for.inc.2.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i_crit_edge, %for.inc.1.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i_crit_edge, %for.inc.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i_crit_edge, %entry.kvaser_usb_hydra_channel_from_cmd.exit.i_crit_edge
  %channel.0.i.i = phi i32 [ 0, %entry.kvaser_usb_hydra_channel_from_cmd.exit.i_crit_edge ], [ 1, %for.inc.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i_crit_edge ], [ 2, %for.inc.1.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i_crit_edge ], [ 3, %for.inc.2.i.i.kvaser_usb_hydra_channel_from_cmd.exit.i_crit_edge ], [ %spec.select.i.i, %for.inc.3.i.i ]
  %nchannels.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 9
  %21 = ptrtoint ptr %nchannels.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nchannels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %channel.0.i.i)
  %cmp.not.i = icmp ugt i32 %22, %channel.0.i.i
  br i1 %cmp.not.i, label %kvaser_usb_hydra_net_priv_from_cmd.exit, label %kvaser_usb_hydra_net_priv_from_cmd.exit.thread

kvaser_usb_hydra_net_priv_from_cmd.exit.thread:   ; preds = %kvaser_usb_hydra_channel_from_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %intf.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %23 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %intf.i, align 4
  %dev2.i = getelementptr inbounds %struct.usb_interface, ptr %24, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.53, i32 noundef %channel.0.i.i) #13
  br label %cleanup

kvaser_usb_hydra_net_priv_from_cmd.exit:          ; preds = %kvaser_usb_hydra_channel_from_cmd.exit.i
  %arrayidx.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 %channel.0.i.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %kvaser_usb_hydra_net_priv_from_cmd.exit.cleanup_crit_edge, label %if.end

kvaser_usb_hydra_net_priv_from_cmd.exit.cleanup_crit_edge: ; preds = %kvaser_usb_hydra_net_priv_from_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %kvaser_usb_hydra_net_priv_from_cmd.exit
  %netdev = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i, align 4
  %31 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not = icmp eq i32 %31, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp = icmp eq i8 %33, -1
  br i1 %cmp, label %if.then6, label %if.end4.if.end15_crit_edge

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then6:                                         ; preds = %if.end4
  %34 = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %cmd, i32 0, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %34, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %and = and i32 %37, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then9, label %if.then6.if.end10_crit_edge

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #9
  %38 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !170
  %call.i = call ptr @alloc_can_err_skb(ptr noundef %28, ptr noundef nonnull %cf.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 36, i32 6
  %39 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_dropped.i, align 4
  %inc.i = add i32 %40, 1
  store i32 %inc.i, ptr %rx_dropped.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %28, ptr noundef nonnull @.str.55) #13
  br label %kvaser_usb_hydra_one_shot_fail.exit

if.end.i:                                         ; preds = %if.then9
  %41 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cf.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %or.i = or i32 %44, 128
  store i32 %or.i, ptr %42, align 8
  %45 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %34, align 1
  %47 = call i32 @llvm.bswap.i32(i32 %46) #9
  %and.i = and i32 %47, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then5.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cf.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %or7.i = or i32 %51, 32
  store i32 %or7.i, ptr %49, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %and9.i = and i32 %47, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end15.i_crit_edge, label %if.then11.i

if.end8.i.if.end15.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cf.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %or13.i = or i32 %55, 2
  store i32 %or13.i, ptr %53, align 8
  %arbitration_lost.i = getelementptr inbounds %struct.can_priv, ptr %26, i32 0, i32 1, i32 4
  %56 = ptrtoint ptr %arbitration_lost.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arbitration_lost.i, align 4
  %inc14.i = add i32 %57, 1
  store i32 %inc14.i, ptr %arbitration_lost.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end15.i_crit_edge
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 36, i32 5
  %58 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_errors.i, align 4
  %inc16.i = add i32 %59, 1
  store i32 %inc16.i, ptr %tx_errors.i, align 4
  %call17.i = call i32 @netif_rx(ptr noundef nonnull %call.i) #9
  br label %kvaser_usb_hydra_one_shot_fail.exit

kvaser_usb_hydra_one_shot_fail.exit:              ; preds = %if.end15.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #9
  br label %if.end10

if.end10:                                         ; preds = %kvaser_usb_hydra_one_shot_fail.exit, %if.then6.if.end10_crit_edge
  %60 = and i32 %37, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %60)
  %61 = icmp eq i32 %60, 65
  %phi.sel = or i1 %tobool8, %61
  br label %if.end15

if.end15:                                         ; preds = %if.end10, %if.end4.if.end15_crit_edge
  %one_shot_fail.1.off0 = phi i1 [ %phi.sel, %if.end10 ], [ false, %if.end4.if.end15_crit_edge ]
  %conv16 = zext i16 %3 to i32
  %max_tx_urbs = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 10
  %62 = ptrtoint ptr %max_tx_urbs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_tx_urbs, align 4
  %rem = urem i32 %conv16, %63
  %tx_contexts_lock = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %26, i32 0, i32 9
  %call21 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_contexts_lock) #9
  %64 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %netdev, align 4
  %echo_index = getelementptr %struct.kvaser_usb_net_priv, ptr %26, i32 0, i32 11, i32 %rem, i32 1
  %66 = ptrtoint ptr %echo_index to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %echo_index, align 4
  %call25 = call i32 @can_get_echo_skb(ptr noundef %65, i32 noundef %67, ptr noundef null) #9
  %68 = ptrtoint ptr %max_tx_urbs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_tx_urbs, align 4
  %70 = ptrtoint ptr %echo_index to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %echo_index, align 4
  %active_tx_contexts = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %26, i32 0, i32 10
  %71 = ptrtoint ptr %active_tx_contexts to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %active_tx_contexts, align 4
  %dec = add i32 %72, -1
  store i32 %dec, ptr %active_tx_contexts, align 4
  %73 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 103
  %75 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %_tx.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %76) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_contexts_lock, i32 noundef %call21) #9
  br i1 %one_shot_fail.1.off0, label %if.end15.cleanup_crit_edge, label %if.then32

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then32:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %netdev, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 36, i32 1
  %79 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %80, 1
  store i32 %inc, ptr %tx_packets, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 36, i32 3
  %81 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %82, %call25
  store i32 %add, ptr %tx_bytes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %kvaser_usb_hydra_net_priv_from_cmd.exit.cleanup_crit_edge, %kvaser_usb_hydra_net_priv_from_cmd.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kvaser_usb_hydra_error_frame(ptr noundef %priv, ptr nocapture noundef readonly %err_frame_data, i64 noundef %hwtstamp) unnamed_addr #1 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #9
  %2 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !170
  %can_stats = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %can_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %can_stats, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %can_stats, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %5 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_errors, align 4
  %inc3 = add i32 %6, 1
  store i32 %inc3, ptr %rx_errors, align 4
  %7 = ptrtoint ptr %err_frame_data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %err_frame_data, align 1
  %tx_err_counter = getelementptr inbounds %struct.kvaser_err_frame_data, ptr %err_frame_data, i32 0, i32 2
  %9 = ptrtoint ptr %tx_err_counter to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tx_err_counter, align 1
  %conv = zext i8 %10 to i16
  %rx_err_counter = getelementptr inbounds %struct.kvaser_err_frame_data, ptr %err_frame_data, i32 0, i32 3
  %11 = ptrtoint ptr %rx_err_counter to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rx_err_counter, align 1
  %conv5 = zext i8 %12 to i16
  %state = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 21
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  %conv.i = zext i8 %8 to i32
  %and.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.kvaser_usb_hydra_bus_status_to_can_state.exit_crit_edge

entry.kvaser_usb_hydra_bus_status_to_can_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_bus_status_to_can_state.exit

if.else.i:                                        ; preds = %entry
  %and2.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else5.i, label %if.else.i.kvaser_usb_hydra_bus_status_to_can_state.exit_crit_edge

if.else.i.kvaser_usb_hydra_bus_status_to_can_state.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_bus_status_to_can_state.exit

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i = icmp eq i8 %8, 0
  br i1 %cmp.i, label %if.then8.i, label %if.else5.i.kvaser_usb_hydra_bus_status_to_can_state.exit_crit_edge

if.else5.i.kvaser_usb_hydra_bus_status_to_can_state.exit_crit_edge: ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_bus_status_to_can_state.exit

if.then8.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp10.i = icmp slt i8 %10, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp13.i = icmp slt i8 %12, 0
  %or.cond108 = select i1 %cmp10.i, i1 true, i1 %cmp13.i
  br i1 %or.cond108, label %if.then15.i, label %if.else20.i

if.then15.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev1, align 4
  %conv17.i = zext i8 %10 to i32
  %conv19.i = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.56, i32 noundef %conv17.i, i32 noundef %conv19.i) #13
  br label %kvaser_usb_hydra_bus_status_to_can_state.exit

if.else20.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %10)
  %cmp23.i = icmp ugt i8 %10, 95
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %12)
  %cmp28.i = icmp ugt i8 %12, 95
  %or.cond.i = select i1 %cmp23.i, i1 true, i1 %cmp28.i
  %..i = zext i1 %or.cond.i to i32
  br label %kvaser_usb_hydra_bus_status_to_can_state.exit

kvaser_usb_hydra_bus_status_to_can_state.exit:    ; preds = %if.else20.i, %if.then15.i, %if.else5.i.kvaser_usb_hydra_bus_status_to_can_state.exit_crit_edge, %if.else.i.kvaser_usb_hydra_bus_status_to_can_state.exit_crit_edge, %entry.kvaser_usb_hydra_bus_status_to_can_state.exit_crit_edge
  %new_state.0 = phi i32 [ -1, %if.else5.i.kvaser_usb_hydra_bus_status_to_can_state.exit_crit_edge ], [ 2, %if.then15.i ], [ 3, %entry.kvaser_usb_hydra_bus_status_to_can_state.exit_crit_edge ], [ 2, %if.else.i.kvaser_usb_hydra_bus_status_to_can_state.exit_crit_edge ], [ %..i, %if.else20.i ]
  %call = call ptr @alloc_can_err_skb(ptr noundef %1, ptr noundef nonnull %cf) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %new_state.0, i32 %14)
  %cmp.not = icmp eq i32 %new_state.0, %14
  br i1 %cmp.not, label %kvaser_usb_hydra_bus_status_to_can_state.exit.if.end44_crit_edge, label %if.then

kvaser_usb_hydra_bus_status_to_can_state.exit.if.end44_crit_edge: ; preds = %kvaser_usb_hydra_bus_status_to_can_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then:                                          ; preds = %kvaser_usb_hydra_bus_status_to_can_state.exit
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.if.end33_crit_edge, label %if.then8

if.then.if.end33_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp13.not = icmp ult i8 %10, %12
  %spec.select = select i1 %cmp13.not, i32 0, i32 %new_state.0
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp19.not = icmp ugt i8 %10, %12
  %spec.select109 = select i1 %cmp19.not, i32 0, i32 %new_state.0
  %17 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cf, align 4
  call void @can_change_state(ptr noundef %1, ptr noundef %18, i32 noundef %spec.select, i32 noundef %spec.select109) #9
  %restart_ms = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 24
  %19 = ptrtoint ptr %restart_ms to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %restart_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool26.not = icmp ne i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp27 = icmp ugt i32 %14, 2
  %or.cond = select i1 %tobool26.not, i1 %cmp27, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %new_state.0)
  %cmp30 = icmp ult i32 %new_state.0, 3
  %or.cond110 = select i1 %or.cond, i1 %cmp30, i1 false
  br i1 %or.cond110, label %if.end44.thread, label %if.then8.if.end33_crit_edge

if.then8.if.end33_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end44.thread:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cf, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %or = or i32 %24, 256
  store i32 %or, ptr %22, align 8
  br label %if.end48

if.end33:                                         ; preds = %if.then8.if.end33_crit_edge, %if.then.if.end33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %new_state.0)
  %cmp34 = icmp eq i32 %new_state.0, 3
  br i1 %cmp34, label %if.then36, label %if.end33.if.end44_crit_edge

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then36:                                        ; preds = %if.end33
  %restart_ms38 = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 24
  %25 = ptrtoint ptr %restart_ms38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %restart_ms38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool39.not = icmp eq i32 %26, 0
  br i1 %tobool39.not, label %if.then40, label %if.then36.if.end42_crit_edge

if.then36.if.end42_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then40:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @kvaser_usb_hydra_send_simple_cmd_async(ptr noundef %priv)
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.then36.if.end42_crit_edge
  call void @can_bus_off(ptr noundef %1) #9
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %if.end33.if.end44_crit_edge, %kvaser_usb_hydra_bus_status_to_can_state.exit.if.end44_crit_edge
  %tobool45.not = icmp eq ptr %call, null
  br i1 %tobool45.not, label %if.then46, label %if.end44.if.end48_crit_edge

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %27 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_dropped, align 4
  %inc47 = add i32 %28, 1
  store i32 %inc47, ptr %rx_dropped, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.55) #13
  br label %cleanup

if.end48:                                         ; preds = %if.end44.if.end48_crit_edge, %if.end44.thread
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 17
  %29 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %hwtstamp, ptr %hwtstamps.i, align 8
  %32 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cf, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %or52 = or i32 %35, 128
  store i32 %or52, ptr %33, align 8
  %36 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %36, i32 0, i32 5, i32 6
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %10, ptr %arrayidx, align 2
  %38 = load ptr, ptr %cf, align 4
  %arrayidx58 = getelementptr %struct.can_frame, ptr %38, i32 0, i32 5, i32 7
  %39 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %12, ptr %arrayidx58, align 1
  %call59 = call i32 @netif_rx(ptr noundef nonnull %call) #9
  %bec61 = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 1
  %40 = ptrtoint ptr %bec61 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv, ptr %bec61, align 4
  %rxerr65 = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %rxerr65 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv5, ptr %rxerr65, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_canfd_skb(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kvaser_usb_can_rx_over_error(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_dlc2len(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_change_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kvaser_usb_hydra_send_simple_cmd_async(ptr noundef %priv) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 32) #12
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 28, ptr %call7.i.i.i, align 8
  %4 = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 11, i32 2
  %channel = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 4
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr [5 x i8], ptr %4, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %he_addr.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %he_addr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %he_addr.i, align 1
  %11 = and i8 %10, -64
  %12 = and i8 %8, 63
  %or7.i = or i8 %11, %12
  store i8 %or7.i, ptr %he_addr.i, align 1
  %transid_lock.i = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 11, i32 2, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %transid_lock.i) #9
  %transid6.i = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 11, i32 2, i32 0, i32 3
  %13 = ptrtoint ptr %transid6.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %transid6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %14)
  %cmp8.i = icmp ugt i16 %14, 254
  %inc.i = add i16 %14, 1
  %transid.0.i = select i1 %cmp8.i, i16 1, i16 %inc.i
  %15 = ptrtoint ptr %transid6.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %transid.0.i, ptr %transid6.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %transid_lock.i, i32 noundef %call3.i) #9
  %16 = tail call i16 @llvm.bswap.i16(i16 %transid.0.i) #9
  %transid2.i = getelementptr inbounds %struct.kvaser_cmd_header, ptr %call7.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %transid2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %transid2.i, align 2
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp.i = icmp eq i8 %19, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.kvaser_usb_hydra_cmd_size.exit_crit_edge

if.end.kvaser_usb_hydra_cmd_size.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_usb_hydra_cmd_size.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %len.i = getelementptr inbounds %struct.kvaser_cmd_ext, ptr %call7.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %len.i, align 4
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #9
  %conv2.i = zext i16 %22 to i32
  br label %kvaser_usb_hydra_cmd_size.exit

kvaser_usb_hydra_cmd_size.exit:                   ; preds = %if.then.i, %if.end.kvaser_usb_hydra_cmd_size.exit_crit_edge
  %ret.0.i = phi i32 [ %conv2.i, %if.then.i ], [ 32, %if.end.kvaser_usb_hydra_cmd_size.exit_crit_edge ]
  %call5 = tail call i32 @kvaser_usb_send_cmd_async(ptr noundef %priv, ptr noundef nonnull %call7.i.i.i, i32 noundef %ret.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %kvaser_usb_hydra_cmd_size.exit.cleanup_crit_edge, label %if.then7

kvaser_usb_hydra_cmd_size.exit.cleanup_crit_edge: ; preds = %kvaser_usb_hydra_cmd_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %kvaser_usb_hydra_cmd_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %kvaser_usb_hydra_cmd_size.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kvaser_usb_send_cmd_async(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_len2dlc(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !20, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !100, !101, !103, !104, !105, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @kvaser_usb_hydra_dev_ops, !1, !"kvaser_usb_hydra_dev_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 2021, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 547, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @kvaser_usb_hydra_send_simple_cmd._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @kvaser_usb_hydra_send_simple_cmd._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @kvaser_usb_hydra_init_card.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1647, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @kvaser_usb_hydra_init_card.__key.6, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1651, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1661, i32 10}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1663, i32 4}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @kvaser_usb_hydra_init_card._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @kvaser_usb_hydra_init_card._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1670, i32 12}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1672, i32 3}
!27 = !{ptr @kvaser_usb_hydra_init_card._entry.12, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @kvaser_usb_hydra_init_card._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 608, i32 3}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @kvaser_usb_hydra_wait_cmd._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @kvaser_usb_hydra_wait_cmd._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 632, i32 5}
!36 = !{ptr @kvaser_usb_hydra_wait_cmd._rs, !35, !"_rs", i1 false, i1 false}
!37 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @kvaser_usb_hydra_wait_cmd._entry.18, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @kvaser_usb_hydra_wait_cmd._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 662, i32 3}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @kvaser_usb_hydra_map_channel_resp._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @kvaser_usb_hydra_map_channel_resp._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 682, i32 3}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @kvaser_usb_hydra_map_channel_resp._entry.23, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @kvaser_usb_hydra_map_channel_resp._entry_ptr.26, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1733, i32 3}
!52 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @kvaser_usb_hydra_get_software_details._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @kvaser_usb_hydra_get_software_details._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1740, i32 3}
!57 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @kvaser_usb_hydra_get_software_details._entry.29, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @kvaser_usb_hydra_get_software_details._entry_ptr.32, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @kvaser_usb_hydra_dev_cfg_kcan, !61, !"kvaser_usb_hydra_dev_cfg_kcan", i1 false, i1 false}
!61 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 2041, i32 40}
!62 = !{ptr @kvaser_usb_hydra_kcan_bittiming_c, !63, !"kvaser_usb_hydra_kcan_bittiming_c", i1 false, i1 false}
!63 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 366, i32 41}
!64 = !{ptr @kvaser_usb_hydra_dev_cfg_rt, !65, !"kvaser_usb_hydra_dev_cfg_rt", i1 false, i1 false}
!65 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 2058, i32 40}
!66 = !{ptr @kvaser_usb_hydra_rt_bittiming_c, !67, !"kvaser_usb_hydra_rt_bittiming_c", i1 false, i1 false}
!67 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 390, i32 41}
!68 = !{ptr @kvaser_usb_hydra_rtd_bittiming_c, !69, !"kvaser_usb_hydra_rtd_bittiming_c", i1 false, i1 false}
!69 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 402, i32 41}
!70 = !{ptr @kvaser_usb_hydra_dev_cfg_flexc, !71, !"kvaser_usb_hydra_dev_cfg_flexc", i1 false, i1 false}
!71 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 2050, i32 40}
!72 = !{ptr @kvaser_usb_hydra_flexc_bittiming_c, !73, !"kvaser_usb_hydra_flexc_bittiming_c", i1 false, i1 false}
!73 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 378, i32 41}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1794, i32 3}
!76 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @kvaser_usb_hydra_get_capabilities._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @kvaser_usb_hydra_get_capabilities._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1806, i32 3}
!81 = !{ptr @kvaser_usb_hydra_get_capabilities._entry.35, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @kvaser_usb_hydra_get_capabilities._entry_ptr.37, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1817, i32 3}
!85 = !{ptr @kvaser_usb_hydra_get_capabilities._entry.38, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @kvaser_usb_hydra_get_capabilities._entry_ptr.40, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1827, i32 3}
!89 = !{ptr @kvaser_usb_hydra_get_capabilities._entry.41, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @kvaser_usb_hydra_get_capabilities._entry_ptr.43, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 771, i32 3}
!93 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @kvaser_usb_hydra_get_single_capability._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @kvaser_usb_hydra_get_single_capability._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1844, i32 8}
!98 = !{ptr @init_completion.__key, !99, !"__key", i1 false, i1 false}
!99 = !{!"../include/linux/completion.h", i32 87, i32 2}
!100 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1956, i32 4}
!103 = !{ptr @kvaser_usb_hydra_read_bulk_callback._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @kvaser_usb_hydra_read_bulk_callback._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @kvaser_usb_hydra_read_bulk_callback._entry.49, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1988, i32 5}
!107 = !{ptr @kvaser_usb_hydra_read_bulk_callback._entry_ptr.50, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1360, i32 3}
!110 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @kvaser_usb_hydra_handle_cmd_ext._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @kvaser_usb_hydra_handle_cmd_ext._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 504, i32 3}
!115 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @kvaser_usb_hydra_net_priv_from_cmd._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @kvaser_usb_hydra_net_priv_from_cmd._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1093, i32 23}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 856, i32 9}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1341, i32 3}
!124 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @kvaser_usb_hydra_handle_cmd_std._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @kvaser_usb_hydra_handle_cmd_std._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 996, i32 3}
!129 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @kvaser_usb_hydra_error_event._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @kvaser_usb_hydra_error_event._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 1002, i32 3}
!134 = !{ptr @kvaser_usb_hydra_error_event._entry.61, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @kvaser_usb_hydra_error_event._entry_ptr.63, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 952, i32 3}
!138 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @kvaser_usb_hydra_error_event_parameter._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @kvaser_usb_hydra_error_event_parameter._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 957, i32 3}
!143 = !{ptr @kvaser_usb_hydra_error_event_parameter._entry.66, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @kvaser_usb_hydra_error_event_parameter._entry_ptr.68, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 962, i32 3}
!147 = !{ptr @kvaser_usb_hydra_error_event_parameter._entry.69, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @kvaser_usb_hydra_error_event_parameter._entry_ptr.71, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 967, i32 3}
!151 = !{ptr @kvaser_usb_hydra_error_event_parameter._entry.72, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @kvaser_usb_hydra_error_event_parameter._entry_ptr.74, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 972, i32 3}
!155 = !{ptr @kvaser_usb_hydra_error_event_parameter._entry.75, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @kvaser_usb_hydra_error_event_parameter._entry_ptr.77, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.79, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_hydra.c", i32 977, i32 3}
!159 = !{ptr @kvaser_usb_hydra_error_event_parameter._entry.78, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @kvaser_usb_hydra_error_event_parameter._entry_ptr.80, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{!"auto-init"}
!171 = !{!"branch_weights", i32 2000, i32 1}
!172 = !{i64 2148391980, i64 2148392260, i64 2148392594, i64 2148392928}
